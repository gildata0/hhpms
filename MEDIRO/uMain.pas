unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvCombo, ColCombo,
  dateutils, Uni, DB,
  JSON, FireDAC.Stan.Intf,
  Vcl.StdCtrls, AdvOfficeButtons, AdvGlowButton, System.ImageList, Vcl.ImgList,
  AdvEdit, AdvProgressBar, AdvTabSet, AdvShapeButton, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Planner,
  AdvPanel, Vcl.Menus, AdvSmoothStatusIndicator, Vcl.Mask, AdvSpin,
  IdHTTP, IDGlobal, IdException, IdURI, jpeg, Vcl.Samples.Gauges,
  iniFiles, AdvMenus, tmsAdvGridExcel,
  gogekAlretFrame, uPromiseFrame, FormSize, Vcl.OleServer,
  SMSCALLLib_TLB,
  ShellAPI, uDaegiFrame, AdvSplitter, Vcl.ExtDlgs,
  FireDAC.Stan.StorageJSON,
  FireDAC.Stan.StorageBin, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBGrids, Datasnap.DBClient,
  frxClass,
  bsHL7Object, ZPI_Z01MsgUnit, bsUtils,
  BSHL7251, BSHL7Grp251, BSHL7DT251,
  AdvUtil,
  TlHelp32, Vcl.CheckLst, ZipMstr;


type
  TDownloadThread = class(TThread)
  private
    HTTP    : TIdHTTP;
    URL, savepath: String;
    iCnt    : Integer;
    FRot    : Integer;
    FId     : Integer;
    FListBox: TListBox;

    procedure DisplayFatalException;

  protected
    procedure Execute; override;
    procedure Display;
    procedure DoTerminate; override;
  public
    constructor Create(const AID: Integer; AURL, Asavepath: String;
      Aindex: Integer; ARot: Integer = 0); reintroduce;
    destructor Destroy; override;

  end;

type
  Tmain_f = class(TForm)
    pnlMain: TPanel;
    pnlLeft: TPanel;
    ImageList5: TImageList;
    PopupMenu5: TPopupMenu;
    N82: TMenuItem;
    PopupMenu3: TPopupMenu;
    N86: TMenuItem;
    N87: TMenuItem;
    N85: TMenuItem;
    N84: TMenuItem;
    N81: TMenuItem;
    N83: TMenuItem;
    tmrIssue: TTimer;
    ImageList3: TImageList;
    ImageList1: TImageList;
    ImageList2: TImageList;
    AdvPopupMenu6: TAdvPopupMenu;
    N39: TMenuItem;
    N38: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N79: TMenuItem;
    N88: TMenuItem;
    N95: TMenuItem;
    N23: TMenuItem;
    N37: TMenuItem;
    N25: TMenuItem;
    N1: TMenuItem;
    N75: TMenuItem;
    N40: TMenuItem;
    N22: TMenuItem;
    N20: TMenuItem;
    N2: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    mnuJinDaegi: TMenuItem;
    mnuJinJung: TMenuItem;
    mnuSunapDaegi: TMenuItem;
    mnuSunapEnd: TMenuItem;
    N34: TMenuItem;
    N6: TMenuItem;
    MenuItem1: TMenuItem;
    AdvPopupMenu2: TAdvPopupMenu;
    N68: TMenuItem;
    N69: TMenuItem;
    mnuPrev: TMenuItem;
    mnuNext: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    AdvPopupMenu1: TAdvPopupMenu;
    N36: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N67: TMenuItem;
    N66: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    PopupMenu8: TPopupMenu;
    N901: TMenuItem;
    N1801: TMenuItem;
    N2701: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    pnljikjang: TAdvPanel;
    Label16: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cbJikGubun: TComboBox;
    edtJikname: TEdit;
    edtJikwi: TEdit;
    btnJikjangSave: TButton;
    btnJikjangClose: TButton;
    Panel1: TPanel;
    Shape10: TShape;
    Shape15: TShape;
    Shape14: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    pnlSoge: TAdvPanel;
    ProgressBarSoge: TAdvProgressBar;
    edtSoge: TAdvEdit;
    edtSogeNeyuk: TAdvEdit;
    lblSogeChart: TAdvEdit;
    memSoge: TMemo;
    btnSogeSave: TButton;
    btnSogeCancel: TButton;
    AdvSplitter1: TAdvSplitter;
    pnlJakyuk: TAdvPanel;
    grdjakyuk: TAdvStringGrid;
    opd: TOpenPictureDialog;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    ClientDataSet1: TClientDataSet;
    pnlEngName: TAdvPanel;
    grdEngName: TAdvStringGrid;
    Panel3: TPanel;
    Button26: TButton;
    Button27: TButton;
    pnlIcons: TAdvPanel;
    SpeedButton6: TSpeedButton;
    btnDentroViewer: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    imgArtTeeth: TImage;
    imgImple: TImage;
    imgScal: TImage;
    SpeedButton2: TSpeedButton;
    pnlTeamColor: TPanel;
    frxReport1: TfrxReport;
    pnlGajok: TAdvPanel;
    wLabel21: TLabel;
    Shape1: TShape;
    Label11: TLabel;
    edtSunapChongEk: TLabel;
    wLabel7: TLabel;
    wLabel16: TLabel;
    Label13: TLabel;
    edtEtc: TAdvEdit;
    cbSkind: TAdvComboBox;
    ColumnComboBox1: TColumnComboBox;
    btnSave: TButton;
    btnHwanbul: TButton;
    btnReceipt: TButton;
    btnClose: TButton;
    grdGajok: TAdvStringGrid;
    edtGajok: TAdvEdit;
    Button14: TButton;
    pnlRIS: TAdvPanel;
    Memo2: TMemo;
    chkAsXML: TCheckBox;
    grdJx2: TAdvStringGrid;
    pnlJinryo: TAdvPanel;
    grdDetailCost: TAdvStringGrid;
    grdCost: TAdvStringGrid;
    Panel8: TPanel;
    pnlTop2: TPanel;
    pnlPatInfo: TAdvPanel;
    wLabel39: TLabel;
    wLabel38: TLabel;
    progressbar: TAdvProgressBar;
    lblPatImagename: TLabel;
    lblName: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    edtname: TAdvEdit;
    pnlImg: TPanel;
    imgPic: TImage;
    pnlCamTool: TPanel;
    btnDeleteFacePic: TAdvGlowButton;
    btnFaceCam: TAdvGlowButton;
    btnFacePicLarge: TAdvGlowButton;
    btnFacePicLoad: TAdvGlowButton;
    edtSanjung: TEdit;
    edtJumin2: TAdvEdit;
    edtJumin: TAdvEdit;
    edtFirst: TAdvEdit;
    edtEngName: TAdvEdit;
    edtChart: TAdvEdit;
    cbChoje: TComboBox;
    chkPregnan: TCheckBox;
    cbSanCode3: TComboBox;
    cbJong: TComboBox;
    cbTreatRoom: TColumnComboBox;
    cbJange: TCheckBox;
    cbinfoSave: TCheckBox;
    cbDoc: TColumnComboBox;
    Button3: TButton;
    Button1: TButton;
    btnModChart: TButton;
    btnJakyukJohoi: TButton;
    Button6: TButton;
    edtTeakryeRegNo: TEdit;
    cbIO: TComboBox;
    AdvSplitter4: TAdvSplitter;
    pnlMedicalHx: TAdvPanel;
    btnMedicalHx: TButton;
    btnArtTeethJohoi: TAdvGlowButton;
    btnImplant: TAdvGlowButton;
    btnScaling: TAdvGlowButton;
    btnMh1: TAdvGlowButton;
    btnMh2: TAdvGlowButton;
    btnMh4: TAdvGlowButton;
    btnMh3: TAdvGlowButton;
    btnMh6: TAdvGlowButton;
    btnMh5: TAdvGlowButton;
    btnMh8: TAdvGlowButton;
    btnMh7: TAdvGlowButton;
    btnMh0: TAdvGlowButton;
    btnSmsSend: TButton;
    btnEEcp: TButton;
    btnChartPrint: TButton;
    pnlChamgo: TAdvPanel;
    lblOldChart: TLabel;
    SpeedButton1: TSpeedButton;
    memChamgo: TMemo;
    btnDetailView: TButton;
    btnChamgoMod: TButton;
    btnCancel: TButton;
    pnlDetailNDongGi: TPanel;
    pnlBohum: TAdvPanel;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    pnlPatinfo3: TPanel;
    lbladdid: TLabel;
    lblPiboid: TLabel;
    lblHphoneid: TLabel;
    lblCphoneid: TLabel;
    lblPPhoneid: TLabel;
    lblPPhoneid2: TLabel;
    lblSogeIdn: TLabel;
    lblSogeid: TLabel;
    lblidn: TLabel;
    lblSogePhone: TLabel;
    lstPatPhoneList: TListBox;
    edtCphone: TAdvEdit;
    edtHphone: TAdvEdit;
    edtPPhone: TAdvEdit;
    edtPphone2: TAdvEdit;
    edtemail: TAdvEdit;
    edtZip: TAdvEdit;
    cbEmail: TComboBox;
    memAdd: TMemo;
    cbAdd: TComboBox;
    edtJikJang: TAdvEdit;
    cbSms2: TCheckBox;
    cbSms3: TCheckBox;
    cbChartSaveOk: TCheckBox;
    edtPname1: TAdvEdit;
    edtPname2: TAdvEdit;
    cbSMS: TCheckBox;
    btnSMS2: TButton;
    btnSms3: TButton;
    CheckBox1: TCheckBox;
    Button8: TButton;
    Button10: TButton;
    tabBohum: TTabSheet;
    PageControl1: TPageControl;
    tbBohum: TTabSheet;
    Panel7: TPanel;
    lblChaSangNo: TLabel;
    edtPatriotNo: TAdvEdit;
    edtOwnDay: TAdvEdit;
    edtEndDay: TAdvEdit;
    edtSisulKiho: TAdvEdit;
    edtCancelRegNo: TAdvEdit;
    edtJungNo: TAdvEdit;
    edtsaupname: TAdvEdit;
    cbRel: TComboBox;
    edtGiho: TAdvEdit;
    edtgaip: TAdvEdit;
    edthandicapNo: TAdvEdit;
    tbBoho: TTabSheet;
    edtArtYoyang1: TEdit;
    edtArtYoyang2: TEdit;
    edtimplYoyang1: TEdit;
    edtimplYoyang2: TEdit;
    Panel9: TPanel;
    edtspKiho: TAdvEdit;
    edtSpecial: TAdvEdit;
    edtimplTeeth1: TAdvEdit;
    edtBudam: TAdvEdit;
    edtjanek: TAdvEdit;
    edtbonNO: TAdvEdit;
    edtartTeeth1: TAdvEdit;
    edtartTeeth2: TAdvEdit;
    edtimplTeeth2: TAdvEdit;
    edtSangsil: TEdit;
    edtjunek: TAdvEdit;
    cbBudam: TComboBox;
    JSunkihoEdit1: TAdvEdit;
    JSunkihoEdit3: TAdvEdit;
    JSunkihoEdit2: TAdvEdit;
    JSunkihoEdit4: TAdvEdit;
    edtRestrict: TEdit;
    edtTeakRyeCodeAll: TEdit;
    tbJabo: TTabSheet;
    Panel10: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    edtJaboSagoJubsuNo2: TEdit;
    edtJaboJigubBojungNo2: TEdit;
    cbJabosaCode2: TComboBox;
    grdCarInfo: TAdvStringGrid;
    tbSanje: TTabSheet;
    TabSheet3: TTabSheet;
    lblGroup2: TLabel;
    lblGroup: TLabel;
    memGogekGubun: TMemo;
    scGroup: TScrollBox;
    spSkinButton3: TButton;
    TabSheet2: TTabSheet;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    edtModelNo: TAdvEdit;
    edtBirth: TAdvEdit;
    cbMoon: TCheckBox;
    cbHyg: TComboBox;
    edtJeju43: TAdvEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    AdvEdit1: TAdvEdit;
    AdvComboBox1: TAdvComboBox;
    ColumnComboBox2: TColumnComboBox;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Panel4: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btnTxView: TButton;
    pnlVitalinfo: TAdvPanel;
    edtChkList: TRichEdit;
    btnStar: TButton;
    AdvSplitter6: TAdvSplitter;
    pnlTop1: TPanel;
    pnlNewonDongGi: TAdvPanel;
    Button25: TButton;
    scNewonDongGi: TScrollBox;
    FlowPanel1: TFlowPanel;
    spSkinButton4: TButton;
    pnlChamgo1: TPanel;
    AdvSplitter2: TAdvSplitter;
    pnlDr: TAdvPanel;
    edtDr: TRichEdit;
    btninit: TButton;
    lblChart: TLabel;
    btnRecall2: TAdvGlowButton;
    btnRemark: TAdvGlowButton;
    btnDetailInfo: TAdvGlowButton;
    btnChartInfo: TAdvGlowButton;
    btnFolder: TAdvGlowButton;
    btnPpt: TAdvGlowButton;
    btnChamgoDetailInfo: TAdvGlowButton;
    edtLast: TAdvEdit;
    Button33: TButton;
    Button15: TButton;
    btnSearchPatient: TButton;
    lblMhxInfo: TLabel;
    EllipsLabel6: TLabel;
    EllipsLabel9: TLabel;
    EllipsLabel32: TLabel;
    EllipsLabel36: TLabel;
    EllipsLabel7: TLabel;
    EllipsLabel8: TLabel;
    EllipsLabel11: TLabel;
    EllipsLabel35: TLabel;
    lblJikjang: TLabel;
    EllipsLabel25: TLabel;
    EllipsLabel29: TLabel;
    EllipsLabel30: TLabel;
    EllipsLabel33: TLabel;
    EllipsLabel37: TLabel;
    EllipsLabel5: TLabel;
    EllipsLabel4: TLabel;
    EllipsLabel14: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel38: TLabel;
    EllipsLabel41: TLabel;
    EllipsLabel42: TLabel;
    EllipsLabel16: TLabel;
    EllipsLabel19: TLabel;
    EllipsLabel27: TLabel;
    EllipsLabel31: TLabel;
    EllipsLabel34: TLabel;
    EllipsLabel39: TLabel;
    EllipsLabel40: TLabel;
    EllipsLabel28: TLabel;
    EllipsLabel43: TLabel;
    EllipsLabel26: TLabel;
    EllipsLabel10: TLabel;
    EllipsLabel20: TLabel;
    EllipsLabel45: TLabel;
    lblGenderAge: TLabel;
    EllipsLabel24: TLabel;
    EllipsLabel22: TLabel;
    EllipsLabel1: TLabel;
    EllipsLabel47: TLabel;
    EllipsLabel12: TLabel;
    EllipsLabel13: TLabel;
    EllipsLabel17: TLabel;
    EllipsLabel18: TLabel;
    lblNewonInfo: TLabel;
    lblNewonInfo2: TLabel;
    lblNextPromiseDay: TLabel;
    lblNextRecallDay: TLabel;
    lblPromiseJubsuDay: TLabel;
    lblChongInsu: TLabel;
    lblJubsuCount: TLabel;
    EllipsLabel48: TLabel;
    EllipsLabel49: TLabel;
    EllipsLabel21: TLabel;
    FormSize1: TFormSize;
    lblCarID: TLabel;
    btnMisuSunap: TButton;
    MainMenu1: TMainMenu;
    N24: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N30: TMenuItem;
    N35: TMenuItem;
    N62: TMenuItem;
    N29: TMenuItem;
    N63: TMenuItem;
    N70: TMenuItem;
    N9: TMenuItem;
    N13: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N15: TMenuItem;
    N19: TMenuItem;
    N10: TMenuItem;
    N80: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N18: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    N121: TMenuItem;
    EECP1: TMenuItem;
    N122: TMenuItem;
    N123: TMenuItem;
    N124: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N132: TMenuItem;
    N133: TMenuItem;
    N134: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    lblpaName: TLabel;
    N138: TMenuItem;
    N139: TMenuItem;
    N140: TMenuItem;
    SMSCALLMSG1: TSMSCALLMSG;
    N141: TMenuItem;
    N142: TMenuItem;
    scrAll: TScrollBox;
    Button2: TButton;
    lblMisugeum: TLabel;
    pnlMisuAlret: TAdvPanel;
    lblMisualret: TLabel;
    N143: TMenuItem;
    N144: TMenuItem;
    Label12: TLabel;
    scrLeft: TScrollBox;
    N145: TMenuItem;
    AdvSplitter3: TAdvSplitter;
    pnlRefer: TAdvPanel;
    Label14: TLabel;
    edtJiwon: TEdit;
    pnlInfoHead: TAdvPanel;
    pnlMidBody: TAdvPanel;
    pnlHeader: TAdvPanel;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    pnlDaegi: TAdvPanel;
    pnlWaitingList: TPanel;
    DaegiFrame_fr1: TDaegiFrame_fr;
    TabSheet5: TTabSheet;
    pnlPromiseList: TPanel;
    pnlStatusbar: TAdvPanel;
    pgLoading: TGauge;
    Label10: TLabel;
    lblVersion: TLabel;
    lblAutoRefresh: TLabel;
    lbluser: TLabel;
    pnlInfo2: TPanel;
    pnlStatus: TPanel;
    AdvSplitter5: TAdvSplitter;
    AdvSplitter8: TAdvSplitter;
    btnCphoneCall: TAdvShapeButton;
    btnSms1: TAdvShapeButton;
    Button9: TAdvShapeButton;
    Button11: TAdvShapeButton;
    Button5: TAdvShapeButton;
    btnChkListInput: TAdvShapeButton;
    btnNewPat: TAdvShapeButton;
    btnDelete: TAdvShapeButton;
    btnPatSave: TAdvShapeButton;
    btnJubsu: TAdvShapeButton;
    btnReferHosp: TAdvShapeButton;
    btnInPatient: TAdvShapeButton;
    N146: TMenuItem;
    N147: TMenuItem;
    N148: TMenuItem;
    lblStatus: TLabel;
    TrayIcon1: TTrayIcon;
    Button4: TAdvShapeButton;
    cbBohum100: TCheckBox;
    N149: TMenuItem;
    CID1: TMenuItem;
    Button7: TButton;
    btnInfoUse: TButton;
    lblTime: TLabel;
    CheckBox2: TCheckBox;
    N150: TMenuItem;
    mnuLink1: TMenuItem;
    mnuLink2: TMenuItem;
    N151: TMenuItem;
    btnUpdate: TAdvShapeButton;
    btnWhisper: TAdvShapeButton;
    pnlSogeJa: TAdvPanel;
    btnReferHospEdit: TAdvShapeButton;
    Panel2: TPanel;
    EllipsLabel44: TLabel;
    EllipsLabel46: TLabel;
    edtReferHospCode: TAdvEdit;
    edtreferHospName: TAdvEdit;
    edtRHosp: TEdit;
    edtRHospID: TEdit;
    cbReferHospDoc: TComboBox;
    Edit1: TEdit;
    btnReferHospDelete: TAdvShapeButton;
    Panel5: TPanel;
    EllipsLabel15: TLabel;
    donggiMemo1: TAdvEdit;
    edtSoge2: TAdvEdit;
    btnSogeDelete: TAdvShapeButton;
    N152: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure edtnameKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnJubsuClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure imgPicMouseEnter(Sender: TObject);
    procedure imgPicMouseLeave(Sender: TObject);
    procedure btnNewPatClick(Sender: TObject);
    procedure btnPatSaveClick(Sender: TObject);
    procedure edtChartClick(Sender: TObject);
    procedure edtChartKeyPress(Sender: TObject; var Key: Char);
    procedure edtJuminExit(Sender: TObject);
    procedure edtJuminChange(Sender: TObject);
    procedure edtJuminKeyPress(Sender: TObject; var Key: Char);
    procedure edtJumin2Change(Sender: TObject);
    procedure edtJumin2Exit(Sender: TObject);
    procedure btnModChartClick(Sender: TObject);
    procedure btnChamgoModClick(Sender: TObject);
    procedure btnJakyukJohoiClick(Sender: TObject);
    procedure lblJikjangMouseEnter(Sender: TObject);
    procedure lblJikjangMouseLeave(Sender: TObject);
    procedure edtCphoneChange(Sender: TObject);
    procedure lblJikjangClick(Sender: TObject);
    procedure btnJikjangSaveClick(Sender: TObject);
    procedure btnJikjangCloseClick(Sender: TObject);
    procedure btnWhisperClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure edtCphoneMouseLeave(Sender: TObject);
    procedure edtCphoneMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnSms1Click(Sender: TObject);
    procedure btnCphoneCallClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtSoge2RightButtonClick(Sender: TObject);
    procedure btnSogeSaveClick(Sender: TObject);
    procedure btnSogeCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSmsSendClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure memAddKeyPress(Sender: TObject; var Key: Char);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure btnFaceCamClick(Sender: TObject);
    procedure btnFacePicLoadClick(Sender: TObject);
    procedure btnFacePicLargeClick(Sender: TObject);
    procedure btnDeleteFacePicClick(Sender: TObject);
    procedure btnMedicalHxClick(Sender: TObject);
    procedure edtSoge2KeyPress(Sender: TObject; var Key: Char);
    procedure Button27Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure grdEngNameDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure edtnameClick(Sender: TObject);
    procedure imgPicDblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure pnlIconsDblClick(Sender: TObject);
    procedure btnEEcpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnInPatientClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtreferHospNameKeyPress(Sender: TObject; var Key: Char);
    procedure btnReferHospClick(Sender: TObject);
    procedure btnTxViewClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnChkListInputClick(Sender: TObject);
    procedure btnStarClick(Sender: TObject);
    procedure btninitClick(Sender: TObject);
    procedure btnReferHospEditClick(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure cbJongCloseUp(Sender: TObject);
    procedure btnMisuSunapClick(Sender: TObject);
    procedure btnSearchPatientClick(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure N94Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N98Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure N107Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure N109Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure EECP1Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure grdCarInfoClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure N121Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N144Click(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure lblMisugeumDblClick(Sender: TObject);
    procedure scrLeftResize(Sender: TObject);
    procedure N132Click(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure grdCarInfoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure N146Click(Sender: TObject);
    procedure N147Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DaegiFrame_fr1Timer1Timer(Sender: TObject);
    procedure btnNewPatMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnNewPatMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdJx2GetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure grdJx2GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdJx2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure grdJx2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure CID1Click(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnInfoUseClick(Sender: TObject);
    procedure mnuLink1Click(Sender: TObject);
    procedure mnuLink2Click(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnSogeDeleteClick(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure btnReferHospDeleteClick(Sender: TObject);
  private
    { Private declarations }


    varpidn  : string;

    wCanClose: boolean;

    varJiwon : string;
    isAdvtiseShowed: Boolean;

    isChartEditMode: Boolean;

    varTopRow: Integer;
    // varLoadOrderKind: string;
    // EasyMode: integer;
    ImageDbSaveMode: Integer;

    BtnArray: array of TAdvGlowButton;

    cidFormCount: Integer;
    cidKind: Integer;

    procedure findgogek(varName: string; varGubun: Integer = 0);
    // procedure LoadPatientFace(chartNo: string; imgaePic : Timage);
    function LoadMedHx(varChart: string): string;
    procedure LoadGajok(varGajokCode: Integer);
    procedure LoadSogeja(varChart: string);
    procedure LoadDocSet(varChart, varDay: string);
    procedure LoadNewoninfo(varChart: string);
    function isWhisperList: Boolean;
    procedure loadCelPhoneList(varChart: string);
    procedure SaveRecentList(varChartNo, varName: string);
    procedure LoadPatFacePic(AID: Integer; Imagename: string;
      ARot: Integer = 0);
    procedure LoadGajoklistPanel;
    procedure LoadSogelist;
    // procedure DaegiSelect;
    // procedure PromiseSelect(daegidate, gubun, team: string);
    // procedure JPSelect(varGrid: TadvStringGrid; daegidate, gubun, team:string; remark: string='');

    procedure ClearBtnArray;
    procedure SetBtnArray;
    // function LoadNewPatientCount(varTeam: string): integer;
    // function LoadYeyakCount(varTeam: string): integer;
    // function convStat(varGubun: string): string;
    function DayJubsu(varDate: Tdate;
       varChart: string;
       varDay: string;
       varTime: TDateTime;
       varKind: string;
       varFirst: string;
       varTeam: string;
      varJumin: string;
      varArea: string;
      varDocName: string;
      varHygname: string;
      varName: string;
      varPhone: string;
      jongbyul: Integer;
      chojae: Integer;
      sanjung: string;
      teakryeCode: string;
      health: Integer;
      pregnan: string;
      chasangno: string;
      bontype: string;
      yujikum: string;
       kwamok: string;
      treatRoom: string;
      doc_code:string;
      isJiwon : string;
      isBohum100 : string;
      artteeth1: string = '';
      artteeth2: string = '';
      implteeth1: string = '';
      implteeth2: string = '';
      JaboID:integer =0;
      varJubsuKind: Integer = 0
     ): Integer;
    // procedure checkPromiseRecall(varChart: string);
    // procedure updateDaegiStat(varStat:integer; varGridKind:integer = 0);
    // function LoadRecallNPromise(varChart: string): integer;
    procedure ViewAllSet(varStat: Boolean = False);
    procedure LoadDefaultValue;
    // procedure cbJubsuStatusChange_Emergency(varKind: integer; status: boolean);
    procedure LoadInfoFrame;
    procedure LoadPromiseFrame;
    procedure setArrayPanel;
    procedure SaveGogek;
    function gogekSave: Boolean;
    procedure DisplayPatientGroup(groupRemark: string);
    procedure LoadPatientGroup(varCode: string; scrollbox: TScrollBox);
    procedure SavePatientGroup(varCode, varChart: string);
    procedure SaveNewonDongGiGroup(varCode, varChart: string);
    function LoadGajok_famid(varJungNo, varHomeTel, varJuso,
      varChart: string): Integer;
    procedure Savegajok(famcode: Integer);
    procedure LoadGajok_first(varGajokCode: Integer;
      varJungNo, varHomeTel, varCellTel, varJuso, varChart: string);
    procedure LoadSMSAutosend(varHpNo: string);
    function CheckReservedSmsEmpty(varChart: string): Boolean;
    function isNameChanged: Boolean;
    procedure UpdatePromiseNJubsuName(varChart: string);
    procedure DeleteTempChart(chartNo : string);
    procedure LoadJinryo;
    procedure LoadDaegiFrame;
    procedure ParseJson;
    procedure Jubsu;
    procedure CaptureCam;
    procedure PatPicEnlarge;
    procedure LoadEngName(pName: string; kind: Integer);
    procedure TodayLoad;
    function BoninBudamIndex(varCode: string): Integer;
//     procedure RisSave(risKind : integer ;AMemo: TMemo; aCheckbox: TcheckBox;
//     nowTime:TdateTime);

//    procedure CalcBonin3;
    function LoadHealthSet(varChart, varDay: string): Integer;
    procedure fieldClear_var;
//    function UpdateLogFileDown: Boolean;
    function CurrText(varRichText: TRichEdit): TTextAttributes;
    procedure LoadSunapMemo(varChart: string; jin_day: Tdate);
    function saveJaboInfo(varID, varChart, varJinday, varInsCode, varInsJubsu,
      varInsJigub: string): string;
    procedure loadJaboInfoList(chart: string);
    function loadBohumsaCode(jaboCode: string): string;
    procedure loadJaboInfo(jaboCode: Integer);
    procedure UpdateTempChart(chartNo: string);
    procedure ViewReferHospPatList(chart: string);

  public
    { Public declarations }


    // �������� ȯ�ںҷ��ö� �ѹ��� �ڵ����� �ҷ�����.
    isInitial: Boolean; // �ʱ�ȭ ��ư�� ������ true
    V_UserID, V_UserName, V_UserPass, V_POWER, V_Version: string;


    DownloadThread: TDownloadThread;



    procedure fieldSet(varJinDay: string = '');
    procedure FieldClear;

    function JakyukJohoi(strJuminNo, strPaitName: string; sDate:string;
      shMessage: Boolean = true): Boolean;

    procedure CidView(sCaller, sCallee, sResult, sClSeqno,
      sMiSeqno: WideString);
    procedure showGogekAlret(varChart, varName: string; varKind: Integer = 0);

    procedure MessReturnProc(var Msg: TMessage); message WM_USER + 1;

    // procedure SetJinSO(sChart, sJin_day: string; sJin_day2:string='');
    procedure SearChname(varName: string);
//    function  checkClientProxynRun: Boolean;
    procedure LoadJinChalCode(loadKind:integer=1);

  protected
    procedure WMCtlColorScrollbar(var Message: TWMCtlColorScrollbar);
      message WM_CTLCOLORSCROLLBAR;
  end;

var
  main_f: Tmain_f;
  gogekalretFrame_fr: TgogekalretFrame_fr;
  // ���� ������ �����ϴ� �� ���ٴ� class�� ��� ������ �����ϴ� ����
  // ���� �� �մϴ�.
  promiseFrame_fr: TpromiseFrame_fr;
  // DaegiFrame_fr  : TDaegiFrame_fr;

implementation

uses uConfig, uDM, uRest, uFormInit, uFunctions, usysInfo, uGogekData,
  uGogekData_find,
  uUpdateCheck, uTeeth, uJinryoCalc,
  flatSB,  commctrl,
  uPromiseData, promiseJohoi, wait2, choiceChair, uKtCid, Cid, Chamgo,
  jinryo, uMigration, optionset, smsone, Caller, uTxList, TelList,
  uWebservice, uRisSave,
  sms, recall, regiSchedure, sawon, LoadJusoFind, snapCapture, largeview, saveChamgo,
  TreeEdit, personalinfo,
  DataSetConverter4D, DataSetConverter4D.Impl, regSogeNeyuk, uOrderInfo,
  Rschedule, uLabOrder, mapSend, sugaUpdate, yearsan, sunap, uEecp, jumgum,
  passInput, Jungsan_day, sebusunap, uInPatient, uNurseActing, uReferHosp,
  uReferHospPatList, wonwe, uchklistSave, umisuSunap, uHxJiinryo_p, gogekFind,
  uNimsGuibBogo, uJinryoBiList, SugaProp, uCorpHospStat , gogekAlret,
  uDailyAmount, statTerm, ibchuReg, uWebgMap, addPhone, stat_Sangbyung ,
  uPharmInfo, yearAcc;
{$R *.dfm}

const
  ScreenWidth: Longint = 1440;
  ScreenHeight: Longint = 960;

var
  DKind: array [0 .. 10] of string = (
    '0',
    '3',
    '2',
    '1',
    '',
    '',
    '',
    '',
    '',
    '3',
    '0'
  );

constructor TDownloadThread.Create(const AID: Integer; AURL, Asavepath: String;
  Aindex: Integer; ARot: Integer = 0);
begin
  inherited Create(False);

  FreeOnTerminate := true;
  URL := TIdURI.URLEncode(AURL);

  // URL := AURL;
  iCnt := Aindex;
  savepath := Asavepath;
  FRot := ARot;
  FId := AID;

end;

destructor TDownloadThread.Destroy;
begin

  inherited;
end;

procedure TDownloadThread.Display;
begin
  main_f.LoadPatFacePic(FId, savepath, FRot);

end;

procedure TDownloadThread.Execute;
var
  mStream: TMemoryStream;
  jpgImage: TJpegImage;
begin
  mStream := TMemoryStream.Create;
  HTTP := TIdHTTP.Create(nil);
  HTTP.HandleRedirects := true;

  try
    if not fileexists(savepath) then
    begin
      HTTP.Get(URL, mStream);
      mStream.SaveToFile(savepath);
    end;

    Synchronize(Display);

  finally

    HTTP.Free;
    FreeAndNil(mStream);

  end;
end;

procedure TDownloadThread.DoTerminate;
begin
  if FatalException <> nil then
  begin
    Synchronize(DisplayFatalException);

  end;
  inherited;
end;

procedure TDownloadThread.DisplayFatalException;
begin
  // imagesView_f.Memo1.Lines.Add(Exception(FatalException).Message);
end;

 procedure Tmain_f.WMCtlColorScrollbar(var Message: TWMCtlColorScrollbar);
begin
  if Message.ChildWnd = scrLeft.Handle then
    Message.Result := CreateSolidBrush(RGB(255, 255, 0));
end;

procedure Tmain_f.MessReturnProc(var Msg: TMessage);
begin
  showmessage('�޽��� �޾�');
end;


procedure Tmain_f.mnuLink1Click(Sender: TObject);
var
  Path: string;
begin
  Path :=  configValue.varLink1;
  ShellExecute(GetDeskTopWindow, 'open', pchar('IEXPLORE.EXE'), pchar(Path),
    nil, SW_SHOWNORMAL);

end;


procedure Tmain_f.mnuLink2Click(Sender: TObject);
var
  Path: string;
begin
  Path :=  configValue.varLink2;
  ShellExecute(GetDeskTopWindow, 'open', pchar('IEXPLORE.EXE'), pchar(Path),
    nil, SW_SHOWNORMAL);

end;

procedure Tmain_f.edtChartClick(Sender: TObject);
begin
  if isLoading = true then // ȯ�ڸ� �ѹ� �ҷ������� �׻� false��.
  begin
    FieldClear;
    // main_f.fieldclear;
  end;

end;

procedure Tmain_f.edtChartKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin



    if loadresult <> 6 then
    begin

      if trim(edtChart.Text) = '' then
        exit;

      if LoadGogekData_chart(edtChart.Text, progressbar, varViewAll) = true then
      begin
        fieldSet(formatDatetime('YYYY-MM-DD', now));
      end
      else
      begin
        FieldClear;
        edtname.SetFocus;
      end;

    end
    else  //��ȯ�� �Է��Ѵ�.
    begin


      edtJumin.SetFocus;


    end;

  end;
end;

procedure Tmain_f.edtCphoneChange(Sender: TObject);
begin
  (Sender as TAdvEdit).Text := call_tel_type((Sender as TAdvEdit).Text);
  (Sender as TAdvEdit).SelStart := length((Sender as TAdvEdit).Text);

end;

procedure Tmain_f.edtCphoneMouseLeave(Sender: TObject);
begin
  // btnSMS1.Visible := false;
  // btncPhoneCall.Visible := false;

end;

procedure Tmain_f.edtCphoneMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  // btncPhoneCall.Visible := true;
  // btnSMS1.Visible := true;
end;

procedure Tmain_f.edtJumin2Change(Sender: TObject);
var
  imsijumin: string;
begin
  if (isLoading = False) and (length(edtJumin2.Text) = 7) then
    if (length(edtJumin2.Text) = 7) then
    begin
      // **************  2011.7
      imsijumin := edtJumin.Text + edtJumin2.Text;

      if isDate(JuminToBirthDash(ma_jumin)) = true then
      begin
        lblGenderAge.Font.Color := clNavy;

        lblGenderAge.Caption := jumintogender(ma_jumin) + ' / ' +
          inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin)))
          div 12) + 'y ' +
          inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin)))
          mod 12) + 'm'; // + jumintonai(ma_jumin);
      end
      else
      begin
        lblGenderAge.Font.Color := clNavy;
        lblGenderAge.Caption := jumintogender(ma_jumin) + ' / ' + 'unknown';
      end;

      edtJumin2.Hint := edtJumin2.Text;
      SelectNext(Sender as TWinControl, true, true);
      // Key := #0;

    end;

end;

procedure Tmain_f.edtJumin2Exit(Sender: TObject);
begin



  if edtName.text='' then
  exit;

  // ToDo : EngName Make
  if trim(edtEngName.Text) = '' then
    LoadEngName(edtname.Text, 1);






  if not((edtJumin2.Text = '0000000') or
     (edtJumin2.Text = '2000000') or
     (edtJumin2.Text = '1000000')) then
  begin

    if ChkJumin(edtJumin.Text + edtJumin2.Text) = False then
    begin
      edtJumin.Font.Color := clred;

    end
    else
    begin
      edtJumin.Font.Color := clBlack;
    end;
    edtBirth.Text := jumintoBirth(edtJumin.Text + edtJumin2.Text);



    //exit;



  end
  else
  begin
    exit;
  end;




  if LoadGogekData_jumin(edtJumin.Text + edtJumin2.Text, progressbar) = true
  then
  begin
    if isLoading = False then
    begin


      //  showmessage('���� �ֹε�Ϲ�ȣ�� ȯ�ڰ� �����մϴ�.');
      if application.MessageBox(pchar('���� �ֹε�Ϲ�ȣ�� ȯ�ڰ� �����մϴ�.' +#10+
          ' ��� ��� �Ͻðڽ��ϱ�?'), '���� �ֹε�Ϲ�ȣ�� ȯ�� Ȯ��', MB_YESNO)
         = 6 then // yes : 6 No : 7
        begin

           //   edtJumin.SetFocus;

        end
        else
        begin

              fieldSet(formatDatetime('YYYY-MM-DD', now));
              edtname.SetFocus;

        end;
    end;
  end;

end;

procedure Tmain_f.edtJuminChange(Sender: TObject);
begin

  if (isLoading = False) and (length(edtJumin.Text) = 6) then
  // if (length(edtJumin.text) = 6) then
  begin
    SelectNext(Sender as TWinControl, true, true);
    // Key := #0;

  end;

end;

procedure Tmain_f.edtJuminExit(Sender: TObject);
begin
  if isChartEditMode = true then
  begin
    isChartEditMode := False;
    exit;
  end;

  if (configvalue.varChartRule = '13') or (configvalue.varChartRule = '14') or
    (configvalue.varChartRule = '15') or (configvalue.varChartRule = '17') or
    (configvalue.varChartRule = '19') or (configvalue.varChartRule = '20') then
    edtChart.Text := ChartNoCreate('1', edtname.Text, edtJumin.Text);

end;

procedure Tmain_f.edtJuminKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SelectNext(Sender as TWinControl, true, true);
    Key := #0;
  end;
end;

procedure Tmain_f.edtnameClick(Sender: TObject);
begin
  if isLoading = true then
  begin
    FieldClear;
  end;
end;

procedure Tmain_f.edtnameKeyPress(Sender: TObject; var Key: Char);
var
  ReceiveData: string;

  Path: string;
  FormInit: Tinifile;
  varChartRule: string;
  tempName: string;
begin

  // if (key = #13 ) and (Length(edtname.Text) <> 0) then
  // begin
  //
  //
  // //  searchName(trim(edtname.text));
  //
  // if isLoading = true then
  // begin
  //
  // tempName := edtname.Text;
  //
  // Path := GetConfigDir + 'db.ini';
  // FormInit := TIniFile.Create(Path);
  // varChartRule := FormInit.ReadString('��Ÿ����',
  // 'íƮ��ȣ��Ģ', '0');
  //
  // FormInit.Free;
  //
  // fieldClear;
  // main_f.fieldclear;
  // edtname.text := tempName;
  //
  // loadResult := LoadGogekData_name(edtname.text, progressbar, 0, varViewAll);
  //
  // case loadResult of
  // 1: //mrOk�����ִ� ���
  // begin
  // loadResult := 1;
  // Fieldset;
  // main_f.fieldSet();
  // {TODO 1 -oha -cMake Function:ġ���ߴ� �ȳ���, �ߴ��� ������������� �˷��ش�.}
  // {TODO 1 -oha -cMake Function: �Ұ� ����, ��������}
  // end;
  // 2: //mrCancel����Ѱ��
  // begin
  // loadResult := 2;
  // edtname.SetFocus;
  // end;
  // 6: //mrYes���� �Է��Ѱ��
  // begin
  // loadResult := 6;
  // // edtchart.SetFocus;
  // // if varChartRule = '6' then
  // isLoading := false;
  // if configvalue.varChartRule = '6' then
  // begin
  // edtChart.SetFocus;
  // end
  // else
  // begin
  // edtchart.text :=
  // ChartNoCreate('1');
  //
  // edtJumin.SetFocus;
  // end;
  // end;
  // end;
  //
  // end
  // else
  // begin //�����Է¹����� ������ ������ ���
  // loadResult := 6;
  //
  // if configvalue.varChartRule = '6' then
  // begin
  // edtChart.SetFocus;
  // end
  // else
  // begin
  // edtchart.text := ChartNoCreate('1');
  //
  // edtJumin.SetFocus;
  // end;
  // end;
  //
  // end;

  if (Key = #13) then
  begin


    isReferer        := false;
    varpidn          := '';





    SearChname(trim(edtname.Text));
    { try
      if trim(edtname.text) = '' then exit;

      //  main_f.varedtName:= trim(edtName.text);

      edtName.enabled := false;
      application.ProcessMessages;
      if checkInt(edtname.text) = true then
      findgogek(edtname.text, 1)
      else
      if copy(edtName.text, 1, 1) = '$' then //��ȣ��
      findgogek(copy(edtName.text, 2, length(edtName.text) - 1), 4)
      else
      if copy(edtName.text, 1, 1) = '@' then // �ֹ�
      findgogek(copy(edtName.text, 2, length(edtName.text) - 1), 2)
      else
      if copy(edtName.text, 1, 1) = '#' then //�ڵ���
      findgogek(copy(edtName.text, 2, length(edtName.text) - 1), 3)
      else
      findgogek(edtname.text, 0);

      edtName.enabled := true;
      except

      edtName.enabled := true;
      end; }
  end;
end;

procedure Tmain_f.edtreferHospNameKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (length(edtreferHospName.Text) <> 0) then
  begin
    // ShowMessage(edtSoge.text);

    LoadResultReferHosp := LoadReferHosp(edtreferHospName.Text, ProgressBarSoge);

    case LoadResultReferHosp of
      1: // mrOk�����ִ� ���
        begin

    //    lblReferHospID        :=
          edtreferHospName.Text := ma_referHospName;
          edtReferHospCode.Text := ma_ReferHospCode;
          edtRHosp.Text         := ma_RHosp;
          edtRHospID.Text       := ma_RHospID;


         if ma_ReferHospCode <> ''then
            cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(ma_ReferHospCode) )
         else
            cbReferHospDoc.Clear;

         cbReferHospDoc.ItemIndex := 0;

        end;
      2: // mrCancel����Ѱ��
        begin
          edtreferHospName.Text := '';
          edtReferHospCode.Text := '';
          edtRHosp.Text         := '';
          edtRHospID.Text       := '';
           cbReferHospDoc.Clear;
        end;
      6: // mrYes���� �Է��Ѱ��
        begin

          // edtSoge2.SetFocus;
          if not Assigned(referHosp_f) then
          begin
            referHosp_f := TreferHosp_f.Create(application);
            referHosp_f.varmode := 0;

            // regSogeNeyuk_f.edtsogeja.Text :=
            // edtSoge.Text;
            ma_referHospName := edtreferHospName.Text;
            referHosp_f.lblid.Caption := '';
            // regSogeNeyuk_f.FieldSetting;
            referHosp_f.FieldSetting(true) ;
            referHosp_f.Show;
          end;







        end;
    end;

  end;
end;

procedure Tmain_f.SearChname(varName: string);
begin
  try
    if varName = '' then
      exit;

    // main_f.varedtName:= varName;
    vFindname := varName;

    edtname.enabled := False;

    application.ProcessMessages;

    if checkInt(varName) = true then
      findgogek(varName, 1)
    else if copy(varName, 1, 1) = '$' then // ��ȣ��
      findgogek(copy(varName, 2, length(varName) - 1), 4)
    else if copy(varName, 1, 1) = '@' then // �ֹ�
      findgogek(copy(varName, 2, length(varName) - 1), 2)
    else if copy(varName, 1, 1) = '#' then // �ڵ���
      findgogek(copy(varName, 2, length(varName) - 1), 3)
    else if copy(varName, 1, 1) = '!' then // �ּ�
      findgogek(copy(varName, 2, length(varName) - 1), 5)
    else
      findgogek(varName, 0);

    edtname.enabled := true;
  except

    edtname.enabled := true;
  end;
end;

procedure Tmain_f.fieldSet(varJinDay: string = '');
const
  selectqry = 'select idn, team, ptime, remark, pmemo, jubsuday, rpPk, rHospDocName, rHospCode from ma_promise' +
    #13#10 + 'where chart=:chart and pday=:pday' + #10#13 + 'and name <> '''' '
    + #10#13 +
  // 'and pos <> '' '' ' + #10#13 +
    'and cancel <> ''Y'' ' + #10#13 + 'and pos <> ''8'' ';

var
  varPlanIndex: string;
  stime: Integer;

  varpTime,  varpmemo, varpremark, varPJubsuDay, varPDay: string;
  SelectResult: Integer;

  iimgCount: Integer;
  imageCount: Integer;
  BarcodeCount: Integer;

  varGroupList: TStringList;

  mCount: Integer;
  medicalHxinfo: string;
    filePath : string;
begin

  stime := GetTickCount;

  try

    FieldClear;

//    isReferer := False;

    isInitial := False; // FieldClear �ڿ� ���;� �Ѵ�.cbchoje �� �ʱ�ȭ �ؾ� �Ѵ�.
    main_f.enabled := False;

//������ �Ƿں��� ���� ��������
//ToDO : �׳� �׻� ���̰� �ش޶��... . 2019-08-28
//    loadReferHospInfo(ma_Chart,
//          formatdatetime('YYYY-MM-DD', DaegiFrame_fr1.dtDate.datetime));



    lblidn.Caption := inttostr(ma_idn);
    lblPiboid.Caption := ma_piboid;
    lblSogeChart.Text := ma_SogeChart; // �߰�

    edtname.Text      := ma_Paname;
    edtEngName.Text   := ma_PaEngName;


    edtJumin.Text     := copy(ma_jumin, 1, 6);
    edtJumin2.Text    := copy(ma_jumin, 7, 7);
    edtJumin2.Hint    := copy(ma_jumin, 7, 7);

    // edtName.Hint := ma_Paname;

    edtEngName.Hint     := ma_PaEngName;


    edtChart.Text       := ma_Chart;

    edtChart.Hint       := ma_Chart;

    edtPname1.Text      := ma_pname1;
    edtPname2.Text      := ma_pname2;

    lblOldChart.Caption := ma_oldchart;
    if trim(ma_oldchart) <> '' then
      lblOldChart.visible := true
    else
      lblOldChart.visible := False;

    if ChkJumin(edtJumin.Text + edtJumin2.Text) = False then
    begin
      edtJumin.Font.Color := clred;

    end
    else
    begin
      edtJumin.Font.Color := clBlack;
    end;

    edtgaip.Text := ma_PiboName;
    edtGiho.Text := ma_Kiho;
    edtsaupname.Text := ma_Kiho;
    edtJungNo.Text      := ma_K_Number;

    edthandicapNo.Text  := '';
    edtPatriotNo.Text   := '';
    edtOwnDay.Text      := ma_apply_Day; // '';
    edtEndDay.Text      := ma_cancelDay; // '';
    edtSisulKiho.Text   := '';
    edtCancelRegNo.Text := '';



    // edtDr.text := ma_team;

    // edtChart.text := ma_Chart;
    // edtChart.hint := ma_Chart;

    main_f.Caption := ma_Paname + '(' + ma_Chart + ')';

    edtZip.Text := ma_h_zip;

    // ��ȭ��ȣ�� �ҷ��;� �ϴµ�...���� ��ȣ�� �Է��ϵ��� �Ϸ���, ���� �Է�â����
    // ������ ��� �ߺ� ����� ����� �־, phone�� ���̵��� �����;� �Ѵ�.
    // �׷��� �۷ι� �������� ���� �������� �ʱ�� �Ѵ�.
    // 2009-10-21 �ϱ���
    // edtCphone.text := ma_c_Phone;
    // edtHphone.text := ma_h_phone;

    edtHphone.Text := substr(LoadGogekPhone(ma_Chart, '1'), 2, ':');
    lblHphoneid.Caption := substr(LoadGogekPhone(ma_Chart, '1'), 1, ':');
    edtCphone.Text := substr(LoadGogekPhone(ma_Chart, '2'), 2, ':');
    lblCphoneid.Caption := substr(LoadGogekPhone(ma_Chart, '2'), 1, ':');

    edtEmail.text := substr( ma_mail, 1,'@');

 //   cbEMail.itemindex :=  cbEMail.Items.IndexOf(substr( ma_mail, 2,'@'));
    cbEMail.text :=substr(  ma_mail, 2,'@');

    if ma_special = '1' then
      cbJange.Checked := true
    else
      cbJange.Checked := False;

    if ma_Pregnan = '1' then
      chkPregnan.Checked := true
    else
      chkPregnan.Checked := False;



    memAdd.Text := ma_h_juso;
    lblAddid.Caption := ma_h_id;

    edtBudam.Text := ma_budam; // bonType
    edtbonNO.Text := ma_sanjung; // 2011.11.9
    edtjanek.Text := ma_janek;

    edtartTeeth1.Text := ma_artTeeth1;
    edtartTeeth2.Text := ma_artTeeth2;




//ToDo : ������ �������� ����....
//    if checkInt(ma_jongbeul) = true then
//    begin
//      cbJong.ItemIndex := strtoint(ma_jongbeul) - 1
//    end
//    else
//    begin
//      cbJong.ItemIndex := 3;
//
//    end;





     // ���� ������ �ڵ����� ��������. ȯ�ڸ� ó�� �ҷ��ö���.
     //���� �����Ҷ��� ����ڰ� ���Ƿ� �ٲ۰�쵵 �ִ�.
    if isLoading = true then
      cbChoje.ItemIndex := loadChojae(main_f.edtChart.Text, now);


    // �������� 2:������ 3:�Ϲݰ���  4:������ȯ��  5:�ϰ���

    if isLoading = true then
      cbSanCode3.ItemIndex := LoadHealthSet(main_f.edtChart.Text,
        formatdatetime('YYYY-MM-DD', now));

    if checkInt(ma_kwan) = true then
      cbRel.ItemIndex := strtoint(ma_kwan) - 1
    else
      cbRel.ItemIndex := 0;

    if isDate(JuminToBirthDash(ma_jumin)) = true then
    begin

      lblGenderAge.Font.Color := clNavy;

      lblGenderAge.Caption := jumintogender(ma_jumin) + ' / ' +
        inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin)))
        div 12) + 'y ' + inttostr(MonthsBetween(now,
        strtodate(JuminToBirthDash(ma_jumin))) mod 12) + 'm';
      // + jumintonai(ma_jumin);
    end
    else
    begin
      lblGenderAge.Font.Color := clNavy;

      lblGenderAge.Caption := jumintogender(ma_jumin) + ' / ' + 'unknown';
    end;

    edtFirst.Text   := ma_first;
    edtlast.Text    := ma_last;

    edtSanjung.Text := ma_teakRye; // teakRye
    edtTeakryeRegNo.Text := ma_teakryeCode; // teakryeCode

    edtCancelRegNo.Text  := ma_teakryeCode;

    edtJiwon.text        := varJiwon;//'';//copy(trim(nhicInfo[22]),1,1) ;//= 'H'


    memChamgo.Text := ma_chamgo;

    if configvalue.varLoadChamgo = '1' then
    begin
      if trim(ma_chamgo) <> '' then
      begin
        tmrIssue.enabled := true;
      end
      else
      begin
        tmrIssue.enabled := False;
      end;
    end;

    // if ma_famid <> '' then
    // famCode := strtoint(ma_famid)
    // else
    // famCode := 0;

    edtSoge.Text := ma_refer;
    edtSoge2.Text := ma_refer;

    edtReferHospCode.Text := ma_ReferHospCode;
    edtreferHospName.Text := ma_referHospName;


    edtRHosp.Text         := ma_RHosp;
    edtRHospID.Text       := ma_RHospID;
    if ma_ReferHospCode <> ''then
        cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(ma_ReferHospCode))
     else
        cbReferHospDoc.clear;


    cbReferHospDoc.ItemIndex :=  cbReferHospDoc.Items.IndexOf(ma_ReferHospDoc);

    lblSogeid.Caption := ma_referid;
    lblSogeChart.Text := ma_SogeChart;

    lblSogeIdn.Caption := ma_referid;
    if checkInt(ma_famid) then
      famcode := strtoint(ma_famid)
    else
      famcode := 0;

    // donggimemo1.text:= LoadNewonDongGiData(scNewonDongGi, ma_Chart);
    donggiMemo1.Text := LoadNewonDongGiData2(FlowPanel1, ma_Chart);

    lblChaSangNo.Caption := ma_chaSangNo;

    lblChaSangNo.Caption := ma_chaSangNo;

    lblPPhoneid.Caption := substr(LoadGogekPhone(ma_Chart, '3'), 1, ':');
    edtPPhone.Text := substr(LoadGogekPhone(ma_Chart, '3'), 2, ':');

    lblPPhoneid2.Caption := substr(LoadGogekPhone(ma_Chart, '4'), 1, ':');
    edtPphone2.Text := substr(LoadGogekPhone(ma_Chart, '4'), 2, ':');

    if ma_birth <> '' then
      edtBirth.Text := ma_birth
    else
      edtBirth.Text := jumintobirth2(ma_jumin);

    if ma_moon = '1' then
      cbMoon.Checked := true
    else
      cbMoon.Checked := False;

    if ma_sms = '0' then
      cbSMS.Checked := true
    else
      cbSMS.Checked := False;

    if ma_sms2 = '0' then // Father
      cbSms2.Checked := true
    else
      cbSms2.Checked := False; // 2012.2.7

    if ma_sms3 = '0' then // Mother
      cbSms3.Checked := true
    else
      cbSms3.Checked := False;

    if ma_special = '1' then
      cbJange.Checked := true
    else
      cbJange.Checked := False;

    if ma_Pregnan = '1' then
      chkPregnan.Checked := true
    else
      chkPregnan.Checked := False;

    LoadPatientFace(ma_Chart, imgPic);

    medicalHxinfo := LoadMedHx(ma_Chart);

    if trim(medicalHxinfo) <> '' then
      lblMhxInfo.Caption := medicalHxinfo
    else
      lblMhxInfo.Caption := 'Medical History';

    if configvalue.varfamilyView <> '0' then
    begin
      if ma_famid <> '' then
        LoadGajok(strtoint(ma_famid));
    end;

    LoadSogeja(ma_Chart);

    // ������ ������ Ȯ���Ͽ� ������ �����´�.
    LoadDocSet(main_f.edtChart.Text, formatdatetime('YYYY-MM-DD', now));
    // cbDoc

    varGroupList := TStringList.Create;
    varGroupList.Assign(LoadPatientGroupData(edtChart.Text));
    lblGroup.Caption := varGroupList.Text;

//    if isWhisperList = true then
//      btnWhisper.ImageIndex := 99
//    else
//      btnWhisper.ImageIndex := 60;






    // ToDo : ���⼭ ���Ѿ�� ���� ���������ϱ�?
    LoadNewoninfo(ma_Chart);

    // PrIdn�˻� ==> ����â�� ���������� �����ֱ� �����̴�.
    // varPDay := formatdatetime('YYYY-MM-DD', now);


  // ���೻�� �˻�
  // ToDO : ������ �ٸ�����Ƿ� 2�� �̻� ���� �� �ִ�.
  //        �´� �ϳ��� ������Ʈ �ľ� �Ѵ�.
//    with dm_f.sqlwork do
//    begin
//      close;
//      sql.Clear;
//      sql.Text := selectqry;
//      parambyname('chart').asString := ma_Chart;
//      parambyname('team').asString  := ma_team;
//      parambyname('pday').asString  := formatdatetime('YYYY-MM-DD', varDate);
//      open;
//      if not isEmpty then
//      begin
//        varpTime := fieldbyname('ptime').asString;
//        varpremark := fieldbyname('remark').asString;
//        varpmemo := fieldbyname('pmemo').asString;
//        varpidn := fieldbyname('idn').asString;
//        // varpidn2 := fieldbyname('idn').asString;
//
//  //      if isReferer =false then
//  //             ma_rp_RequestPK :=   fieldbyname('rpPK').asInteger;
//      end
//      else
//      begin
//        varpTime := '';
//        varpremark := '';
//        varpmemo := '';
//        varpidn := '';
//  //      if isReferer =false then
//  //           ma_rp_RequestPK := 0;
//      end;
//    end;



    //ToDo : edtReferHospCode.text= '' �̸� ���࿡�� �˻��ؼ� �Ƿں��� ������ �����´�.
    if (varJinDay <> '')  then
       // and  ( trim(edtReferHospCode.text)= '')  then
    begin
      with dm_f.sqlwork do
      begin
        close;
        sql.Clear;
        sql.Text := selectqry;
        parambyname('chart').asString := ma_Chart;
        parambyname('pday').asString := varJinDay;
        open;
        if not isEmpty then
        begin
          // varptime := fieldbyname('ptime').asString;
          // varpremark := fieldbyname('remark').asString;
          // varpmemo := fieldbyname('pmemo').asString;
          // varpidn := fieldbyname('idn').asString;
          varpidn2 := fieldbyname('idn').asString;
          varPJubsuDay := fieldbyname('jubsuDay').asString;
          lblPromiseJubsuDay.Caption := '���� ���� ����� : ' + varPJubsuDay;


          varpTime := fieldbyname('ptime').asString;
          varpremark := fieldbyname('remark').asString;
          varpmemo := fieldbyname('pmemo').asString;
          varpidn := fieldbyname('idn').asString;



//ToDo : �Ƿں��� ���� �������� ����
//          if isReferer =false then
//             ma_rp_RequestPK :=   fieldbyname('rpPK').asInteger;
//
//          varrHospCode    :=  trim(fieldByName('rHospCode').asString);
//          varrHospDocName :=  trim(fieldByName('rHospDocName').asString);
//
//         //���� �Ҷ� �Ƿں��� ���� ��������.
//         //============================================================================
//           main_f.edtreferHospName.Text:= '';
//           main_f.edtReferHospCode.text:= '';
//
//           main_f.edtreferHospName.Text:= LoadReferHospName(varrHospCode);
//           main_f.edtReferHospCode.text:= varrHospCode;
//
//           if varrHospCode <> ''then
//               main_f.cbReferHospDoc.Items.SetStrings(LoadReferHosp_Doc(varrHospCode) )
//           else
//               main_f.cbReferHospDoc.Clear;
//
//
//           main_f.cbReferHospDoc.ItemIndex :=
//                 main_f.cbReferHospDoc.Items.IndexOf(varrHospCode) ;
//         //============================================================================


        end
        else
        begin
          // varptime := '';
          // varpremark := '';
          // varpmemo := '';
          varpidn2 := '';
          varPJubsuDay := '';
          lblPromiseJubsuDay.Caption := '���� ���� ����� : ' + varPJubsuDay;
//ToDo : �Ƿں��� ���� �������� ����
//          varrHospCode    :=  '';
//          varrHospDocName :=  '';

        end;
      end;

    end;
    // ���� ������ �˻�
    { varPDay := formatdatetime('YYYY-MM-DD', promiseMain_f.PlannerCalendarGroup1.Date);
      with dm_f.sqlwork do
      begin
      close;
      sql.Clear;
      sql.text := selectQry;
      parambyname('chart').asString := edtchart.Text;
      parambyname('pday').asString := varPday;
      open;
      if not isEmpty then
      begin
      // varptime := fieldbyname('ptime').asString;
      // varpremark := fieldbyname('remark').asString;
      // varpmemo := fieldbyname('pmemo').asString;
      // varpidn := fieldbyname('idn').asString;
      varPJubsuDay:= fieldbyname('jubsuDay').asString;

      end
      else
      begin
      // varptime := '';
      // varpremark := '';
      // varpmemo := '';
      varPJubsuDay:= '���õ� ���� ����';

      end;
      end;

      //    edtyeyakJubsuDay.text :=   varPJubsuDay;
      lblPromiseJubsuDay.caption:='���� ���� ����� : '+   varPJubsuDay;


    }
//
//    if isWhisperList = true then
//      btnWhisper.ImageIndex := 99
//    else
//      btnWhisper.ImageIndex := 60;

    filePath := extractFilePath(paramStr(0)) + 'icons\whisper\';


     if isWhisperList = true then //�ͼӸ��� �ִ°��
     begin
         main_f.btnWhisper.Picture.LoadFromFile( filePath  + 'alret\megaphone_normal.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureDown.LoadFromFile( filePath  + 'alret\megaphone_click.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureHot.LoadFromFile( filePath  + 'alret\megaphone_hover.jpg' );// . ImageIndex := 99 ;
     end
     else
     begin
         main_f.btnWhisper.Picture.LoadFromFile( filePath  + 'normal\megaphone_normal.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureDown.LoadFromFile( filePath  + 'normal\megaphone_click.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureHot.LoadFromFile( filePath  + 'normal\megaphone_hover.jpg' );// . ImageIndex := 99 ;
      //   main_f.btnWhisper.ImageIndex := 60;
     end;



    // if configvalue.DetailLoadInfo = '1' then
    // begin
    // showGogekAlret(edtChart.text, edtname.text);
    // end;

    if Assigned(Jinryo_f) then
    begin
      Jinryo_f.Preshow;
      Jinryo_f.pnlCostClear;

      Jinryo_f.dMain.Date := now;

      Jinryo_f.FieldSetJin(ma_Chart, FormatDateTime('YYYY-MM-DD', Jinryo_f.dMain.Date) );
      Jinryo_f.JinryoHistoryView(ma_Chart);
      Jinryo_f.SyncJa;
    end;

    main_f.enabled := true;

    edtJikJang.Text := LoadOffice(main_f.edtChart.Text).OfficeRemark;

    edtModelNo.Text := LoadModelNo(main_f.edtChart.Text);

    loadCelPhoneList(main_f.edtChart.Text);

    if loadStopState(main_f.edtChart.Text) = true then
    begin

      SpeedButton1.Glyph.LoadFromFile(extractFilePath(paramStr(0)) +
        'icons\stop_red.bmp');

    end
    else

    begin

      SpeedButton1.Glyph.LoadFromFile(extractFilePath(paramStr(0)) +
        'icons\stop.bmp');

    end;





//    if chongMisuCalc2(ma_Chart) > 0 then
//    begin
//      lblMisugeum.Color := clred;
//    end
//    else if chongMisuCalc2(ma_Chart) < 0 then
//    begin
//      lblMisugeum.Color := clBlue;
//    end;

    // ��������ǥ��
    // LoadNewonDongGiData(scNewonDongGi,ma_chart);
    LoadNewonDongGiData2(FlowPanel1, ma_Chart);

    LoadChkList(edtChkList, edtChart.Text);
    LoadSunapMemo(ma_Chart, DaegiFrame_fr1.dtDate.date);
    loadJaboInfoList(ma_Chart);

    // �̼��� ǥ��

    lblMisugeum.caption:= '��'+ formatFloat('#,0',  chongMisuCalc2(ma_Chart));
    if lblMisugeum.caption <> '��'+ '0' then
    begin

     //  showmessage('�̼����� Ȯ���ϼ���.' +#13#10 + lblMisugeum.caption)    ;
       pnlMisuAlret.Visible := true;

       lblMisualret.Caption := '�̼����� Ȯ���ϼ���.' +#13#10 + lblMisugeum.caption ;


       lblMisugeum.Font.Color := clred;
    end;


     if ma_infosave = '1' then
          cbinfoSave.Checked := true
     else
     begin
          cbinfoSave.Checked := false;
//          //ToDo :  ���⼭ perSonalInfo�� �������.
//
//          personalinfo_f := Tpersonalinfo_f.Create(application);
//          personalinfo_f.varSignChart := edtChart.Text;
//
//          if personalinfo_f.ShowModal = mrOK then
//          begin
//             cbInfoSave.Checked := true;
//          end;


     end;

  finally

    main_f.enabled := true;
    isLoading := False;

    SaveRecentList(main_f.edtChart.Text, main_f.edtname.Text);

    // main_f.edtname.enabled:=true;
    // main_f.edtname.setfocus;
    // main_f.edtChart.setfocus;
    pnlStatus.Caption := inttostr(GetTickCount - stime) + 'ms';

  end;


end;

function Tmain_f.CurrText(varRichText: TRichEdit): TTextAttributes;
begin
  if varRichText.SelLength > 0 then
    Result := varRichText.SelAttributes
  else
    Result := varRichText.DefAttributes;
end;

procedure Tmain_f.findgogek(varName: string; varGubun: Integer = 0);
var

  tempName: string;
  tempChart: string;
  tempcPhone: string;
  tempreferHospName: string;
  tempReferHospCode: string;
  Temp_rp_RequestPK : integer;

begin
    tempreferHospName := edtreferHospName.Text;
    tempReferHospCode := edtReferHospCode.Text;

  loadresult := LoadGogekData_name(varName, progressbar, varGubun, varViewAll);

  case loadresult of
    1: // mrOk�����ִ� ���
      begin
        isLoading := true; // ȯ�ڸ� �˻��ؼ� �ҷ����� ���̴�.
        isInitial := true ;

        fieldSet(formatDatetime('YYYY-MM-DD', now));
        { TODO 1 -oha -cMake Function:ġ���ߴ� �ȳ���, �ߴ��� ������������� �˷��ش�. }
        { TODO 1 -oha -cMake Function: �Ұ� ����, �������� }

        if isReferer = true then
        begin
        //  tempName := edtname.Text;

        //  tempChart := edtChart.Text;
        //  tempcPhone := edtCphone.Text;

        //  edtChart.Text := tempChart;
        //  edtCphone.Text := tempcPhone;
          edtreferHospName.Text := tempreferHospName;
          edtReferHospCode.Text := tempReferHospCode;



        end;

      end;
    2: // mrCancel����Ѱ��
      begin
        edtname.enabled := true;
        edtname.SetFocus;
        isInitial := true ;
      end;
    6: // mrYes���� �Է��Ѱ��
      begin

        // if not assigned(gogek_f) then
        // gogek_f := Tgogek_f.Create(application);
        // //gogek_f.windowstate := wsMaximized;
        // gogek_f.Show;
        // gogek_f.windowstate := wsMaximized;
        // gogek_f.FieldClear;
        // gogek_f.isLoading := false;
        // gogek_f.loadResult := loadResult;
        //
        // gogek_f.edtname.Text := edtname.text;
        // gogek_f.edtfirst.Text :=  formatdatetime('YYYY-MM-DD', now);
        // gogek_f.edtlast.Text := formatdatetime('YYYY-MM-DD', now);
        // if configvalue.varChartRule = '6' then
        // begin
        // gogek_f.edtChart.SetFocus;
        // end
        // else
        // begin
        // gogek_f.edtchart.text := ChartNoCreate('1');
        //
        // gogek_f.edtJumin.SetFocus;
        // end;
        tempName := edtname.Text;

        tempChart := edtChart.Text;
        tempcPhone := edtCphone.Text;
        tempreferHospName := edtreferHospName.Text;
        tempReferHospCode := edtReferHospCode.Text;
        Temp_rp_RequestPK :=  ma_rp_RequestPK;


        FieldClear;

        isInitial := true;
        // edtname.Text := edtname.text;

        if isReferer = true then
        begin


          edtChart.Text := tempChart;
          edtCphone.Text := tempcPhone;
          edtreferHospName.Text := tempreferHospName;
          edtReferHospCode.Text := tempReferHospCode;
          ma_rp_RequestPK       := Temp_rp_RequestPK;

          edit1.text:= inttostr( ma_rp_RequestPK );


        end
        else
        begin
            edit1.text:= '';
        end;

    //


        edtname.Text := tempName;
        edtFirst.Text := formatdatetime('YYYY-MM-DD', now);
        edtlast.Text := formatdatetime('YYYY-MM-DD', now);

        loadresult := 6;
        // edtchart.SetFocus;
        // if varChartRule = '6' then
        isLoading := False;

        if configvalue.varChartRule = '6' then
        begin
          edtChart.SetFocus;
        end
        else
        begin
          edtChart.Text := ChartNoCreate('1');

          edtJumin.SetFocus;
        end;

        // ToDo : EngName Make
        LoadEngName(edtname.Text, 1);
      end;
  end;
   //   isReferer := False;
end;

procedure Tmain_f.FieldClear;
var
  varKind: string;
  filePath : string;
begin

  main_f.Caption := 'HealthHub PMS';

//  fieldClear_var;


  ma_rp_active := False;
  loadresult := 0; // ���� �ҷ����� �� �ʱ�ȭ

  // ClearGogekValue;

  isChartEditMode := False;

  cbHyg.Text := '';
  cbHyg.ItemIndex := 0;

  cbIO.ItemIndex := 0;


  varpidn          := '';

  edtSogeNeyuk.Text := '';
  donggiMemo1.Text := '';


//  isReferer := False;

  if isReferer = False then
  begin
    ma_rp_RequestPK := 0;
    nRpPk            := 0;
    ma_rp_RequestPK  := 0;
  end;

  if isInitial = true then
  begin

    cbChoje.ItemIndex := 0;
    cbJong.ItemIndex := 0;
    cbSanCode3.ItemIndex := 0;
    cbDoc.ItemIndex := 0;

    cbBohum100.checked := false;
  end;

  // ClearNewonDongGiGroup(scNewonDongGi,'096');
  // ClearNewonDongGiGroup2(flowpanel1,'096');
  LoadNewonDongGiGroup2(FlowPanel1, '096');

  lbladdid.visible   := False;

  cbInfoSave.Checked := false;

  memChamgo.lines.Clear;
  memChamgo.lines.Clear;

  pnlMisuAlret.Visible := false;
  lblMisugeum.font.Color := clBlue;

  lblMisugeum.Caption := '';
  edtDr.lines.Clear;

  lblSogeChart.Text := '';
  lblSogePhone.Caption := '';

  lblidn.Caption := '';
  lblSogeIdn.Caption := '';
  // lblGender.Caption := '';
  // lblNai.Caption := '';

  lblPiboid.Caption := '0';
  lbladdid.Caption := '0';
  lblCphoneid.Caption := '0';
  lblHphoneid.Caption := '0';
  lblCarID.Caption := '0';

  cbJabosaCode2.itemindex := -1;

  edtPname1.Text := '';
  edtPname2.Text := '';

  lblPPhoneid.Caption := '0';
  edtPPhone.Text := '';
  lblPPhoneid.visible := False;

  lblPPhoneid2.Caption := '0';
  edtPphone2.Text := '';
  lblPPhoneid2.visible := False;

  lblSogeChart.Text := '';
  lblOldChart.Caption := '';
  lbladdid.Caption := '0';

  edtPPhone.Text := '';
  edtPphone2.Text := '';
  cbMoon.Checked := False;

  lblMhxInfo.Caption := 'Medical History';

  lblGenderAge.Font.Color := clSilver;
  lblGenderAge.Caption := 'Gender / Age';

  edtChart.Text := '';
  edtname.Text := '';
  edtEngName.Text := '';

  edtJumin.Text := '';
  edtJumin2.Text := '';
  edtJumin2.Hint := '';
  edtJumin.Font.Color := clBlack;
  edtgaip.Text := '';
  edtGiho.Text := '';
  edtSoge.Text := '';
  edtSoge2.Text := '';

  edtRestrict.Text := '';

  edtReferHospCode.Text := '';
  edtreferHospName.Text := '';
  cbReferHospDoc.clear;

  edtRHosp.Text         := '';
  edtRHospID.Text       := '';


  edtModelNo.Text := '';

  edtsaupname.Text := '';
  // edtJong.text     :='';
  edtJungNo.Text := '';
  // edtDr.text       :='';
  edtjanek.Text := '';

  edtTeakryeRegNo.Text := ''; // teakryeCode
  edtSanjung.Text := ''; // teakRye

  edtJiwon.Text := ''; // ����Ư�� ������ ����(H)

  edtTeakRyeCodeAll.Text := '';

  edtSpecial.Text := '';
  edtspKiho.Text := '';
  edtjunek.Text := '';
  edtSangsil.Text := '';

  JSunkihoEdit1.Text := '';
  JSunkihoEdit2.Text := '';
  JSunkihoEdit3.Text := '';
  JSunkihoEdit4.Text := '';

  edtJaboSagoJubsuNo2.Text := '';
  edtJaboJigubBojungNo2.Text := '';

  lblChaSangNo.Caption := '';

  edthandicapNo.Text := '';
  edtPatriotNo.Text := '';
  edtOwnDay.Text := '';
  edtEndDay.Text := '';
  edtSisulKiho.Text := '';
  edtCancelRegNo.Text := '';

//  btnWhisper.ImageIndex := 60;

    filePath := extractFilePath(paramStr(0)) + 'icons\whisper\';


//     if isWhisperList = true then //�ͼӸ��� �ִ°��
//     begin
//         main_f.btnWhisper.Picture.LoadFromFile( filePath  + 'alret\megaphone_normal.jpg' );// . ImageIndex := 99 ;
//         main_f.btnWhisper.PictureDown.LoadFromFile( filePath  + 'alret\megaphone_click.jpg' );// . ImageIndex := 99 ;
//         main_f.btnWhisper.PictureHot.LoadFromFile( filePath  + 'alret\megaphone_hover.jpg' );// . ImageIndex := 99 ;
//     end
//     else
//     begin
         main_f.btnWhisper.Picture.LoadFromFile( filePath  + 'normal\megaphone_normal.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureDown.LoadFromFile( filePath  + 'normal\megaphone_click.jpg' );// . ImageIndex := 99 ;
         main_f.btnWhisper.PictureHot.LoadFromFile( filePath  + 'normal\megaphone_hover.jpg' );// . ImageIndex := 99 ;
//      //   main_f.btnWhisper.ImageIndex := 60;
//     end;




  // Chamgo Mod Btton
  btnChamgoMod.Caption := '����';
  // memChamgo.readonly  := true;
  btnCancel.visible := False;

  edtCphone.Text := '';
  edtHphone.Text := '';
  edtBirth.Text := '';
  edtemail.Text := '';
  edtZip.Text := '';
  memAdd.Text := '';
  // edtHyg.text     :='';
  edtBudam.Text := '';
  edtbonNO.Text := '';
  edtartTeeth1.Text := ''; // 2012.7.1
  edtartTeeth2.Text := ''; // 2012.7.1

  edtimplTeeth1.Text := ''; // 2012.7.1
  edtimplTeeth2.Text := ''; // 2012.7.1

  edtimplTeeth1.Hint := '';
  edtimplTeeth2.Hint := '';

  edtimplTeeth1.Font.Color := clBlack;
  edtimplTeeth2.Font.Color := clBlack;

  edtimplTeeth1.Color := clWhite;
  edtimplTeeth2.Color := clWhite;

  edtJikJang.Text := '';
  edtJikname.Text := '';
  edtJikwi.Text := '';

  edtModelNo.Text := '';

  edtSangsil.Text := '';

  memSoge.Text := '';

  edtsaupname.Text := '';
  edtJungNo.Text := '';
  edtJeju43.Text := '';

  edtFirst.Text := formatdatetime('YYYY-MM-DD', now);
  edtlast.Text := formatdatetime('YYYY-MM-DD', now);

  cbEmail.ItemIndex := -1;

  cbRel.ItemIndex := 0;

  lblPromiseJubsuDay.Caption := '���� ���� ����� : ' + '����';

  CurrentFile := PicPath + '\icons\img_woman.jpg';

  if fileexists(CurrentFile) then
    imgPic.Picture.LoadFromFile(CurrentFile)
  else
    imgPic.Picture := nil;

  edtFirst.Text := formatdatetime('yyyy-mm-dd', now);
  edtlast.Text := formatdatetime('yyyy-mm-dd', now);

  lblNewonInfo.Caption := '���ʳ��� ';
  lblNewonInfo2.Caption := '�������� ';
  lblJubsuCount.Caption := '�����ϼ� ';
  lblChongInsu.Caption := '';
  lblNextPromiseDay.Caption := '�������� ';
  lblNextRecallDay.Caption := '���ݿ��� ';
  lblPromiseJubsuDay.Caption := '���� ���� ����� ';

  edtPname1.Text := '';
  edtPname2.Text := '';

  edtChkList.lines.Clear;
  edtChkList.Clear;

  with grdGajok do
  begin
    RemoveRows(1, Rowcount - 1);
    Rowcount := 2;
    FixedRows := 1;
    colCount := 5;
    colWidths[0] := 21;
    colWidths[1] := 110;
    colWidths[2] := 120;
    colWidths[3] := 90;
    colWidths[4] := 60;

  end;

end;

procedure Tmain_f.FormActivate(Sender: TObject);
begin

  if isAdvtiseShowed = False then
  begin
    // isAdvtiseShowed := true;
    // advertise_f.left := main_f.width - advertise_f.Width;
    // advertise_f.top := main_f.Height-advertise_f.Height ;
    // advertise_f.show;
    // advertise_f.BringToFront;

  end;
end;

procedure Tmain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tmain_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Path: string;
  FormInit: Tinifile;
begin
  if application.MessageBox(pchar('HHPMS�� ���� �Ͻðڽ��ϱ�?'), 'HHPMS ���� Ȯ��', MB_YESNO)
    <> 6 then // yes : 6 No : 7
  begin
    CanClose  := False;
    wCanClose := False;
    exit;

  end;

  try

    Path := GetConfigDir + 'db.ini';

    FormInit := Tinifile.Create(Path);
    // varinfoPageIndex := FormInit.WriteInteger('ETC', 'TabPatinfo', 0);
    // varDaegiTabIndex :=
    // ToDo : repair
    FormInit.WriteInteger('ETC', 'Daegitabinfo',
      DaegiFrame_fr1.tsMain.TabIndex);
//    FormInit.WriteInteger('ETC', 'pcAlrettabinfo',
//      gogekalretFrame_fr.pcAlret.ActivePageIndex);


//    FormInit.WriteInteger('splitInfo', 'WaitAccountHeight',
//      DaegiFrame_fr1.pnlSunapDaegi.Height);
    FormInit.WriteInteger('splitInfo', 'pnlDaegimainHeight',
      DaegiFrame_fr1.pnlDaegimain.Height);



    FormInit.WriteInteger('splitInfo', 'splitLeft', scrLeft.Width);//  pnlLeft.Width);
    FormInit.WriteInteger('splitInfo', 'splitRight', pnlWaitingList.Width);
//    FormInit.WriteInteger('splitInfo', 'PromiseListWidth', pgPromiseList.Width);
    FormInit.WriteInteger('splitInfo', 'ChamgoHeight', pnlChamgo.Height);

//    FormInit.WriteInteger('splitInfo', 'pgSunapDaegiHeight', pgSunapDaegi.Height);

    FormInit.WriteInteger('splitInfo', 'NewonDongGiHeight',
      pnlDetailNDongGi.Height);
    // FormInit.WriteInteger('splitInfo', 'MedicalHxHeight', pnlMedicalHx.Height);
    // FormInit.WriteInteger('splitInfo', 'BohumHeight', pnlBohum.Height);

//    if pgPromiseList.visible = true then
//      FormInit.WriteInteger('splitInfo', 'pgPromiseListVisible', 1)
//    else
//      FormInit.WriteInteger('splitInfo', 'pgPromiseListVisible', 0);

    FormInit.WriteInteger('splitInfo', 'pnlTop1Height', pnlTop1.Height);

    FormInit.Free;

    // canclose:=true;
    //(aGrid:TadvstringGrid; formName:string; gridKind:string);
    saveGridColumnOrder(DaegiFrame_fr1.grdDaegi, 'mainform');

    saveValue('0204', inttostr(promiseFrame_fr.advtrackbar1.Position));
    // , '�ð� ���� ����');

    //varTSG_CAppAtx.FreeOnRelease;

     promisemode := False;
     canClose  := true;
     wCanClose := true;

  except
       on E: Exception do
        begin
          exceptlogging(E.Message);
          showmessage('DB���ῡ �����Ͽ����ϴ�.' + #13#10 + E.Message);
        end;
  end;

  // DaegiFrame_fr1.saveGridColumnOrder;
  // FreeLibrary(



end;



procedure Tmain_f.FormCreate(Sender: TObject);
var
  FormInit: Tinifile;
  Path: string;
  varChamgoHeight: Integer;
  i: Integer;
begin
  { Scaled := True;
    if (Screen.Width <> ScreenWidth) then
    begin
    Height := Longint(Height) * Longint(Screen.Height) DIV ScreenHeight;
    Width  := Longint(Width)  * Longint(Screen.Width)  DIV ScreenWidth;
    ScaleBy(Screen.Width,ScreenWidth);
    end;
  }


  // {$IFNDEF DEBUG}
  //
  // if UpdateCheck = true then
  // begin
  // ShellExecute(0, 'open',
  // Pchar(ExtractFilePath(Application.ExeName)
  // + 'Downloader_http_HHPMS.exe'), '', nil, SW_SHOWNORMAL);
  // end;
  // {$ENDIF DEBUG}
  //

    BSHL7Library.LoadFromFile('.\data\BSHL7251.BSL');

  // if loadini = true then
  // begin
  // configvalue.LoadGlobalData_ini;  //ini������ ����.
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
  // tableUpdate;
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

  setArrayPanel;
  for i := 0 to 5 do
  begin
    initPanel(pnlArray[i]);
  end;

  for i := 0 to 17 do
  begin
    initAdvPanel(AdvPnlArray[i], dm_f.PictureContainer1);
  end;

  edtname.Hint := '�̸��˻� = �̸� (�߰���)  �Է� �� ����' + #10 + '��ȣ�ڰ˻� = $ ��ȣ�ڸ�  �Է� �� ����' +
    #10 + '��ȭ��ȣ�˻� = #��ȭ��ȣ(�߰���) �Է� �� ����' + #10 +
    '�ֹι�ȣ�˻� = @�ֹι�ȣ, ����(�߰���) �Է� �� ����' + #10 + '�ּҰ˻� = !�����Է��� ����';

  // {$IFDEF DEBUG}
  // pnlHeader.Visible := true  ;
  // {$ELSE}
  // pnlHeader.Visible := false ;
  // {$ENDIF}




  // ......�Ʒ��ɾ��� �޽���â �㶧 Control 'OK' has no parent window. �� ���...
  // Screen.OnActiveControlChange := OnScreenActiveFormChange;

  Path := GetConfigDir + 'db.ini';

  if configvalue.varViewAllInit = '1' then // '0145'
  begin
    varViewAll := true;

  end
  else
  begin

    varViewAll := False;

  end;

  if configvalue.varNewonCountView = '1' then
  // �����������Ⱑ(0143) 1�� �ƴϸ�(�ٸ��̰� �ƴϸ�...) //�������� ���� 0:�ƴϿ� 1: ��
    varViewAll := False; // �׻� false

  ViewAllSet(varViewAll);

  PicPath := extractFilePath(paramStr(0));

  if trim(configvalue.imgSharefolderPath) = '' then
    picpath_face := extractFilePath(paramStr(0))
  else
    picpath_face := configvalue.imgSharefolderPath;


  // pnlChamgo.align := altop;
  // pgPatinfo.align := alClient;
  // grdVceph.align := alClient;

  // pgPatinfo.activepageindex := 1;


  // width := screen.Width;
  // height := screen.Height;
  scrLeft.Align := alLeft;

  pnlLeft.DoubleBuffered := true;
  pnlLeft.Left:= 0;
  pnlLeft.Width :=   scrLeft.Width;
//  pnlLeft.Align := alClient;



  // pgLoading.Value := 0;

  // dtDate.date := now;

  memChamgo.Align := alClient;
  memChamgo.Align := alClient;
  edtDr.Align := alClient;


  // scNewonDonggi.align := alClient;

  // memTalk.align := alClient;

  // memTalk.clear;

  // treeview1.align := alClient;

  LoadDefaultValue;

  // LoadNewonDongGiGroup(scNewonDongGi, '096');
  LoadNewonDongGiGroup2(FlowPanel1, '096');
  // panelSet---------------------------------------------------------------
  // ini�� �����ؼ� �ҷ��´�....








  // if configvalue.varShareFolder = '1' then
  // imgViewLeft_fr1.LoadFolders;

  if configvalue.varimageKind <> '' then
    EasyMode := strtoint(configvalue.varimageKind)
  else
    EasyMode := 0;



  // sbVersion.Font.Color:=clBlack;
  // sbVersion.Font.Style:=[];

  // if configvalue.varimageDBSaveMode <> '0' then    //1:�ټ����̿�, 0:��������
  // begin
  //
  // if dm_f.ConnectImageDBServer = true then
  // begin
  //
  // sbVersion.Font.Color:=clRed;
  // sbVersion.Font.Style:=[fsBold];
  //
  // end;
  // end;


  // dm_f.SqlChart.Active := true;
  // dm_f.DataSource1.DataSet.Active := true;

  // if configvalue.varCidUse2 = '1' then
  // dm_f.CIDServerConnect;

  { if (configvalue.varScreenSave <> '')
    or (configvalue.varScreenSave <> '0') then
    begin
    timer4.Interval:=  strtoint(configvalue.varScreenSave) * 6000 * 10;
    //           timer4.Enabled:=true;
    end;
  }

  { if configvalue.varAgreementScaleling  = '1' then
    begin

    btnAgreementScaling.Visible := true;
    end
    else
    btnAgreementScaling.Visible := false;


    grdVceph.ColWidths[3]:=0;
    grdVceph.ColWidths[4]:=0;

    Button5.top := pgpatinfo.Top;
  }
  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp') then
    ForceDirectories(extractFilePath(paramStr(0)) + 'temp');

  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\TempImage\') then
    ForceDirectories(extractFilePath(paramStr(0)) + 'temp\TempImage\');

  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\TempTeethImage\')
  then
    ForceDirectories(extractFilePath(paramStr(0)) + 'temp\TempTeethImage\');

  PageControl2.ActivePage := TabSheet1;
  PageControl1.ActivePage := tbBohum;
  PageControl1.Align := alClient;
  // pageControl2.ActivePageIndex :=0;
  // pageControl2.ActivePageIndex :=1;


//  scrLeft.HorzScrollBar.Position := 0;// scr.HorzScrollBar.Position + 10;
//  scrLeft.VertScrollBar.Position := 0;// scr.HorzScrollBar.Position + 10;


  alterTable;



end;



procedure Tmain_f.FormDestroy(Sender: TObject);
begin
  main_f := nil;
end;

procedure Tmain_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case Key of
    VK_ESCAPE: // Exit
      begin
        // Close;
      end;
    VK_F1: // ����
      begin
      end;
    VK_F8: //
      begin
           pnlRis.Visible:= not   pnlRis.Visible;
      end;

    VK_F4: // Chart No modification
      begin

        btnModChart.visible := not btnModChart.visible;

      end;

    VK_F5:
      begin
        //SaveGogek;


        //Jubsu;

        btnJubsuClick(nil);
      end;

  end;

end;

procedure Tmain_f.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);

//ToDO : ��ũ�ѹڽ���  ��Ŀ�� ���� �ٽ�ũ���� �ȴ�. - �׸��忡 ��Ŀ���� �� �־
//�׸��带 Ŭ�� ���� ������ ��ũ�� �ڽ��� ��ũ�� �ȴ�.  �����ϴ�.

//var
//  h: HWND;
//begin
//  h := WindowFromPoint(MousePos);
//
//    h := scrLeft.Handle;
//
//  if WheelDelta >= 0 then
//    SendMessage(h, WM_VSCROLL, SB_LINELEFT, 0)
//  else
//    SendMessage(h, WM_VSCROLL, SB_LINERIGHT, 0);
//  Handled := True;
//
//end;


// ToDo: ��ũ�ѹٿ� ��Ŀ�� ������ �ٽ�ũ���� �ȴ�.
var
  Wnd: HWnd;
  Msg: Cardinal;
  Code: Cardinal;
  N, i: Integer;
begin
  Wnd := WindowFromPoint(Mouse.CursorPos);
  if Wnd = scrLeft.Handle then
  begin
    //One way of dealing with horz and vert scrollbars:
    if ssShift in Shift then
      Msg := WM_HSCROLL
    else
      Msg := WM_VSCROLL;
    if WheelDelta < 0 then
      Code := SB_LINEDOWN
    else
      Code := SB_LINEUP;

    N:= Mouse.WheelScrollLines;

    for i:= 1 to N do
      scrLeft.Perform(Msg, Code, 0);
      scrLeft.Perform(Msg, SB_ENDSCROLL, 0);
    Handled := True;

  end
  else
    Handled := False;
end;

procedure Tmain_f.LoadInfoFrame;
begin
//  gogekalretFrame_fr := TgogekalretFrame_fr.Create(Self);
//  with gogekalretFrame_fr do
//  begin
//    Parent := pnlPatientInfo2; // �̷��� �ؾ� Frame�� ȭ�鿡 ���̰Եȴ�.
//    Align := alClient; // TForm1 �� ���ʿ� Frame�� �����
//    Preshow;
//    // Width  := 200;
//  end;
end;

procedure Tmain_f.LoadPromiseFrame;
// var
// gogekalretFrame_fr : TgogekalretFrame_fr;
// ���� ������ �����ϴ� �� ���ٴ� class�� ��� ������ �����ϴ� ����
// // ���� �� �մϴ�.
begin

  pnlPromiseList.Align := alClient;
  promiseFrame_fr := TpromiseFrame_fr.Create(Self);


  with promiseFrame_fr do
  begin
    PlannerCalendarGroup1.StartYear := strtoint(formatdatetime('YYYY', now));
    PlannerCalendarGroup1.StartMonth := strtoint(formatdatetime('MM', now));
    PlannerCalendarGroup1.StartDay := 7; // strtoint(formatdatetime('DD', now));
    // 7 :�� �� ��  1:�� ...6:��

    Parent := pnlPromiseList; // �̷��� �ؾ� Frame�� ȭ�鿡 ���̰Եȴ�.
    Align := alClient; // TForm1 �� ���ʿ� Frame�� �����
    planner1.Align := alClient;

    Preshow;

    planner1.Balloon.Enable := true;

    PlannerCalendarGroup1.Date := now; // strtodate(varDay);
    dpsdate.Date := now; // strtodate(varDay);
    dpfdate.Date := now; // strtodate(varDay);

    lblDay2.Caption := formatdatetime('YYYY-MM-DD', now) + ' [' +
      ReturnWeek2(now) + ']';

    SelectPromise(0);

    // Width  := 200;
  end;
end;

procedure Tmain_f.FormShow(Sender: TObject);
var
  iHeight: Integer;
  iWidth: Integer;
  FormInit: Tinifile;
  varCALLER, Path, varChartKind, varUserKind: string;

  varDay: string;

  varinfoPageIndex: Integer;
  varPnlLeftWith: Integer;
  varPnlRightWith: Integer;
  varPromiseListHeight: Integer;
  varChamgoHeight: Integer;

  nSKTloginResult: Integer;
  // cidKind : integer; ���� private ���� �ű�
  exe_path: string;

  lgUloginResult: wordBool;
  StrVal: string;

  i: Integer;
  pgPromiseListVisible: Integer;

begin

  Path := GetConfigDir + 'db.ini';
  FormInit := Tinifile.Create(Path);
  varinfoPageIndex         := FormInit.ReadInteger('ETC', 'TabPatinfo', 0);
  varPnlLeftWith           := FormInit.ReadInteger('splitInfo', 'splitLeft', 520);
  varPnlRightWith          := FormInit.ReadInteger('splitInfo', 'splitRight', 220);
  varPromiseListHeight     := FormInit.ReadInteger('splitInfo',  'PromiseListHeight', 350);
  varChamgoHeight          := FormInit.ReadInteger('splitInfo', 'PatinfoEtcHeight', 82);
  pnlChamgo.Height         := FormInit.ReadInteger('splitInfo', 'ChamgoHeight', 82);
//  pgSunapDaegi.Height      := FormInit.ReadInteger('splitInfo', 'pgSunapDaegiHeight', 300);
  pnlDetailNDongGi.Height  := FormInit.ReadInteger('splitInfo',  'NewonDongGiHeight', 82);
//  pgPromiseList.Width      := FormInit.ReadInteger('splitInfo',  'PromiseListWidth', 350);
  pgPromiseListVisible     := FormInit.ReadInteger('splitInfo',  'pgPromiseListVisible', 1);
  pnlTop1.Height           := FormInit.ReadInteger('splitInfo', ' pnlTop1Height ', 650);

  varCALLER                := FormInit.ReadString('��Ÿ����', 'CALLER', '0');
  varChartKind             := FormInit.ReadString('BASEINFO', 'CHARTKIND', '1');
  varUserKind              := FormInit.ReadString('BASEINFO', 'USERKIND', '0');


  FormInit.Free;

  scrLeft.Width := varPnlLeftWith;
  pnlLeft.Width := varPnlLeftWith;
  pnlLeft.Caption:='';
  pnlWaitingList.Width := varPnlRightWith;
  pnlWaitingList.Caption:='';

  pnlPromiseList.Height := varPromiseListHeight;

  pnlPromiseList.Caption:='';
  lblStatus.Caption :='';


//  if pgPromiseListVisible = 1 then
//    pgPromiseList.visible := true
//  else
//    pgPromiseList.visible := False;

  exceptlogging('start show main');

  currentDir := extractFilePath(paramStr(0));

  Caption := 'HealthHub PMS';


  pickind := '0';

  isInitial := true;

  // varLoadOrderKind := '1';
  varLoadOrderKind := configvalue.varDaegiOrder;

  SetBtnArray;

  // with pnlChamgo do
  // begin
  // Caption.Height := 25;
  // Caption.buttonPosition := cbpLeft;
  // end;

  if configvalue.varimageDBSaveMode <> '' then
    ImageDbSaveMode := strtoint(configvalue.varimageDBSaveMode)
  else
    ImageDbSaveMode := 0;


  cidFormCount := -1;

  // iHeight := 768;
  // iWidth := 1024;
  // SetBounds(0, 0, iWidth, iHeight);

  FieldClear;
  // promisemode := false;
  // LoadTeamColor(cbTeamColor.items);

  // v_Dbip := dm_f.uniConnection1 .Server;
  v_Fileip := configvalue.varserverIp;
  {
    no
    -����
    ����
    -���Ϲ�ȣ
    -��
    -����������
    -����
    �����ð�
    ���ð�
    ����ð�/����
    -�����������
    -������۽ð�
    -���Ḷħ�ð�
    -�����ð�
    -�޴��� }

  { varDay := formatDateTime('YYYY-MM-DD', now);
    if not assigned(Promisemain_f) then
    Promisemain_f := TPromisemain_f.Create(application);
    Promisemain_f.PlannerCalendarGroup1.Date := now; // strtodate(varDay);
    Promisemain_f.dpsdate.Date := now; //strtodate(varDay);
    Promisemain_f.dpfdate.Date := now; //strtodate(varDay);

    Promisemain_f.FormStyle := fsMdiChild;
    Promisemain_f.WindowState := wsMaximized;

    main_f.PromiseMode := true;
    Promisemain_f.Show;
    Promisemain_f.Planner1.Balloon.Enable := true;
    //    Promisemain_f.ManualDock(Panel1, nil, alClient);

    Promisemain_f.SelectPromise(0);
  }
  // =======================================================================

  {
    exceptlogging('start Home Load');

    HomeLoad;

    home_f.Enabled := false;

    exceptlogging('End Home Load');
    exceptlogging('Start Today Load');
  }

  // if (configvalue.VarScheduleDate = formatdatetime('YYYY-MM-DD', now))
  // and
  // (configvalue.VarScheduleOpen <> '1') then
  // TodayLoad
  // else
  // if (configvalue.VarScheduleDate <> formatdatetime('YYYY-MM-DD',
  // now)) then
  // TodayLoad;

  // NoticeLoad;

  { jubsuselect(grdDaegi,
    formatdatetime('YYYY-MM-DD', dtDate.date), //����
    inttostr(cbDaegigubun.itemindex - 1), //����
    cbteam.Text //��
    );
  }
  // daegiselect;

  // Temp���͸� ����
  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp') then
    if not CreateDir(extractFilePath(paramStr(0)) + 'temp') then
      raise Exception.Create('Cannot create ' + extractFilePath(paramStr(0))
        + 'temp');

  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\Thumbnails') then
    if not CreateDir(extractFilePath(paramStr(0)) + 'temp\Thumbnails') then
      raise Exception.Create('Cannot create ' + extractFilePath(paramStr(0)) +
        'temp\Thumbnails');

  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\images') then
    if not CreateDir(extractFilePath(paramStr(0)) + 'temp\images') then
      raise Exception.Create('Cannot create ' + extractFilePath(paramStr(0)) +
        'temp\images');
  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\tags') then
    if not CreateDir(extractFilePath(paramStr(0)) + 'temp\tags') then
      raise Exception.Create('Cannot create ' + extractFilePath(paramStr(0)) +
        'temp\tags');
  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\teethtemp') then
    if not CreateDir(extractFilePath(paramStr(0)) + 'temp\teethtemp') then
      raise Exception.Create('Cannot create ' + extractFilePath(paramStr(0)) +
        'temp\teethtemp');
  if not DirectoryExists(extractFilePath(paramStr(0)) + 'temp\Docs') then
    if not CreateDir(extractFilePath(paramStr(0)) + 'temp\Docs') then
      raise Exception.Create('Cannot create ' + extractFilePath(paramStr(0)) +
        'temp\Docs');

  if configvalue.LoadGajokpan = '1' then
  begin
    pnlGajok.Collaps := False;
  end
  else
  begin
    pnlGajok.Collaps := true;
  end;
  //
  // if configvalue.LoadSogepan = '1' then
  // begin
  // pnlSoge.Collaps := false;
  // end
  // else
  // begin
  // pnlSoge.Collaps := True;
  // end;

  // home_f.Enabled := true;
  main_f.edtname.EmptyText := 'ȯ�ڼ���';
  main_f.edtname.SetFocus;

  // DllRegister('SMSCALL.DLL');
  // sugaupdate;

  memChamgo.Align := alClient;

  { ������
    1. KT Open API
    2. SKT Open API
    3. LG UPlus API
    4. KT internet Open API
  }
  if trim(configvalue.varCidUse) <> '' then
    cidKind := strtoint(configvalue.varCidUse)
  else
    cidKind := 0;

  case cidKind of
    0:
      begin
        pnlInfo2.Caption := 'CID OFF';
      end;

    1: // KT OpenAPI
      begin
        if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);
        pnlInfo2.Caption := ktcid_f.CIDLogin;
        exceptlogging(pnlInfo2.Caption);
      end;
    2: // SKT OpenAPI
      begin
        // if not Assigned(sktcid_f) then
        // sktcid_f := Tsktcid_f.Create(application);
        //
        //
        // nSKTloginResult := sktcid_f.SKTInit(SKT_APP_KEY );
        // if (nSKTloginResult <> Integer(0))then
        // showmessage('API �ʱ�ȭ ���� : Err[' + StrFCause(nSKTloginResult) + ']')
        // else
        // begin
        //
        // sktcid_f.tmrEvent.Enabled := true;
        //
        // end;
        //
        // sleep(1000);
        //
        // nSKTloginResult:=  sktcid_f.SKTLogin( configvalue.varSKTCidID,  configvalue.varSKTCidPASS);
        //
        // if   ( nSKTloginResult <> Integer(SUCCESS))
        // then showmessage('�α��� ��û ���� : Err[' + StrFCause(nSKTloginResult) + ']')
        // else
        // begin
        // pnlinfo2.caption := 'SKT CID ON';
        // end;
        //
        //
        // //  pnlinfo2.caption := 'CID OFF'; ktcid_f.CIDLogin;
        // exceptlogging(pnlinfo2.caption);
      end;

    3: // LGU+ OpenAPI
      begin
        // //  LGU+ OpenAPI ����� ����
        // //  bin\LGUPlusOpenAPI\TAS\TASBaseOpenApi.ocx regsvr32 ��ġ
        //
        // case configvalue.varLGUplusKind  of
        // 1:
        // begin
        //
        // if not Assigned(LguplusTAS_f) then
        // LguplusTAS_f := TLguplusTAS_f.Create(application);
        // LguplusTAS_f.left:=0;
        // LguplusTAS_f.top:=0;
        // LguplusTAS_f.Width := 0;
        // LguplusTAS_f.Height := 0;
        //
        // //ToDo : show ���� �� �ȵ�... must...
        // LguplusTAS_f.Show;
        //
        //
        // if (trim(configvalue.varLGUplusTASID  ) = '' ) or
        // (trim(configvalue.varLGUplusTASPass) = '')  then
        // begin
        // ShowMessage('�α��ο� �ʿ��� ������ ���ġ �ʽ��ϴ�.');
        // Exit;
        // end;
        // //   ShowMessage('�α��ν���'
        // //    +#10#13+configvalue.varLGUplusTASID
        // //   +#10#13+ configvalue.varLGUplusTASPass
        // //   +#10#13+StrVal);
        //
        // LguplusTAS_f.Timer1.Enabled := true;
        //
        // //    lgUloginResult :=  LguplusTAS_f.TASBaseOpenApi1.LoginServer(
        // //        configvalue.varLGUplusTASID,
        // //        configvalue.varLGUplusTASPass,
        // //        '');
        //
        // StrVal := BoolToStr(lgUloginResult);;
        // //   ShowMessage('�α��οϷ�'
        // //   +#10#13+configvalue.varLGUplusTASID
        // //   +#10#13+ configvalue.varLGUplusTASPass
        // //   +#10#13+StrVal);
        //
        // end;
        // 0:
        // begin
        //
        // if not Assigned(LguplusBAS_f) then
        // LguplusBAS_f := TLguplusBAS_f.Create(application);
        // LguplusBAS_f.left:=0;
        // LguplusBAS_f.top:=0;
        // LguplusBAS_f.Width := 0;
        // LguplusBAS_f.Height := 0;
        //
        // //ToDo : show ���� �� �ȵ�... must...
        // LguplusBAS_f.Show;
        //
        //
        // if (trim(configvalue.varLGUplusTASID  ) = '' ) or
        // (trim(configvalue.varLGUplusTASPass) = '')  then
        // begin
        // ShowMessage('�α��ο� �ʿ��� ������ ���ġ �ʽ��ϴ�.');
        // Exit;
        // end;
        //
        // LguplusBAS_f.Timer1.Enabled := true;
        //
        //
        //
        // StrVal := BoolToStr(lgUloginResult);;
        //
        // end;
        //
        //
        // //LguplusBAS_f ���� pnlInfo2�� ���ش�.....
        //
        //
        // end;
      end;

    4: // KT internet OpenAPI
      begin
        // if not Assigned(kticid_f) then
        // kticid_f := Tkticid_f.Create(application);
        //
        //
        // //  kticid_f.Show;
        //
        // //    sleep(1000);
        // //Dll ����:Application Path & Caption
        // //     exe_path := ExtractFilePath(Application.ExeName);
        // //Dll���
        // //  kticid_f.KTiCidDllStart(configvalue.varKtiTelNo);//,  exe_path,  KTiCid_f.Caption);
        // //     kticid_f.btnDllStartCaptionClick(application);
        // //Set
        // //     kticid_f.KTiCidSet(configvalue.varKtiTelNo);
        //
        // //     exceptlogging('TelNo:'+ configvalue.varKtiTelNo + 'exe_path: '+exe_path +  ' KTiCid_f.Caption:' +KTiCid_f.Caption);
        //
        //
        //
        // //�α���
        // //     kticid_f.KTiCidLogin(configvalue.varKtiTelNo,  configvalue.varKTiCidID,  configvalue.varKTiCidPASS);
        // //     exceptlogging('TelNo:'+ configvalue.varKtiTelNo +', ID:'+  configvalue.varKTiCidID+', Pass:'+ configvalue.varKTiCidPASS );
        // //     pnlinfo2.caption := 'KTI CID ON';
        //
        // //  exceptlogging(pnlinfo2.caption);
      end;

  end;

  if configvalue.varimageKind <> '' then
    EasyMode := strtoint(configvalue.varimageKind)
  else
    EasyMode := 0;






  // daegiGridChange(tsMain.TabIndex);


  // pnlnow.doublebuffered := true;

  // 2012.3.27


  // cbStatus.items.Clear;
  // cbStatus.items.add('');
  // with dm_f.SqlWork do
  // begin
  // Close;
  // Sql.Clear;
  //
  //
  // Sql.Add('select * from ma_team');
  // Sql.Add('order by team_name');
  //
  // //Sql.Add(' select saName, team_name, team_color, saBun  from  ma_sawon_basic s join ma_team t on s.sateam=t.team_name  ');
  // //Sql.Add(' where saJikGub= ''1'' and  nouse <> ''1''                                                                   ');
  // //Sql.Add(' order by  jubsu_order, sabun                                                                                ');//convert(int, sabun)   '); //order by team_name');
  //
  //
  // Open;
  // First;
  // if not isEmpty then
  // begin
  // while not eof do
  // begin
  // cbStatus.items.add(FieldByName('team_Name').AsString+'|'+ FieldByName('team_doctor1').AsString);
  // next;
  // end;
  // cbStatus.ItemIndex := 0;
  // end
  // else
  // begin
  // end;
  // end;


  // ���������� ���� �ҷ��´�.
  // =======================================================================
  // while main_f.FormExist do
  // if main_f.FormExist then
  // LoadPromiseView;


  // Timer3.enabled := true;
  // ToDo : ���ڱ�  LoadPromiseView�� �ҷ����� �ʴ´�.
  // Cannot create form. No MDI forms are currently active
  // �׷��� timer���

  if configvalue.varNewonCountView <> '1' then
    lblJubsuCount.visible := False;

  // if  configvalue.varKeyPadAutoStart ='1' then   //�����е� ������ ����
  // LoadKeyPadAutostart ;

  // if  configvalue.varDentalHelperReception ='1' then   // ��Ż���� ��������Ʈ ���۽� �ٷ� ����
  // LoadDentalHelperReception ;




  // ToDO : 2017-04-26 ��� PC���� �����ϴ�...? ==> �������� 1�븸 ����.
  // if  configvalue.varPromiseTransfer = 1 then   //DentroSender.exe Excute
  // loadDentroSender;


  // isAdvtiseShowed := false;

  FieldClear;

  edtname.Hint := '�̸��˻� = �̸� (�߰���)  �Է� �� ����' + #10 + '��ȣ�ڰ˻� = $ ��ȣ�ڸ�  �Է� �� ����' +
    #10 + '��ȭ��ȣ�˻� = #��ȭ��ȣ(�߰���) �Է� �� ����' + #10 +
    '�ֹι�ȣ�˻� = @�ֹι�ȣ, ����(�߰���) �Է� �� ����' + #10 + '�ּҰ˻� = !�����Է��� ����';

  edtname.ShowHint := true;

  edtEngName.Hint := edtEngName.Text;
  edtEngName.ShowHint := true;

  LoadInfoFrame;
  LoadPromiseFrame;
  // LoadDaegiFrame;
  DaegiFrame_fr1.Align := alClient;
  DaegiFrame_fr1.Preshow(0);



  // tableUpdate;

  // lblVersion.Caption := getfileversion2;
  lblVersion.Caption := 'Ver. ' + GetExeVersion(paramStr(0)); //
  // + ' Language = ' + aLanguage;// IdentifierLanguage(GetUserDefaultUILanguage);  //IntToStr(Integer( GetUserDefaultUILanguage())); //GetLanguage;
  lbluser.Caption := 'User : ' + trim( V_UserID) + '('+  LoadDocNameFromSawonWithID(V_UserID)  +')'; //

  isAdvtiseShowed := False;
  // ���� �� ��
  // if (configvalue.VarScheduleDate = formatdatetime('YYYY-MM-DD', now))
  // and
  // (configvalue.VarScheduleOpen <> '1') then
  // TodayLoad
  // else
  // if ( configvalue.VarScheduleDate <> formatdatetime('YYYY-MM-DD', now)) then
  // TodayLoad;

  if configvalue.varDaegiTimerUse = '0' then // Ÿ�̸� �������� �ƴϿ�(0)�̸�
  begin
    lblAutoRefresh.Font.Color := clBlue;
    lblAutoRefresh.Caption := '�ڵ����� �����';
  end
  else
  begin
    lblAutoRefresh.Font.Color := clred;
    lblAutoRefresh.Caption := '�ڵ����� ��������';
  end;


   initAdvGrid(grdJx2);



    InitializeFlatSB(scrLeft.Handle);

    FlatSB_SetScrollProp(scrLeft.Handle,
         WSB_PROP_HSTYLE or WSB_PROP_VSTYLE, FSB_FLAT_MODE,
         True);

    FlatSB_SetScrollProp(scrLeft.Handle,
         WSB_PROP_HBKGCOLOR, ColorToRGB(clRed), True);

    FlatSB_SetScrollProp(scrLeft.Handle,
         WSB_PROP_VBKGCOLOR, ColorToRGB(clBlue), True);


end;

procedure Tmain_f.LoadDaegiFrame;
begin
  // DaegiFrame_fr1 := TDaegiFrame_fr1.Create( Self );
  //
  //
  // with DaegiFrame_fr1 do
  // begin
  // Parent := pnlWaitingList;     // �̷��� �ؾ� Frame�� ȭ�鿡 ���̰Եȴ�.
  // Align  := alClient;   // TForm1 �� ���ʿ� Frame�� �����
  // preShow;
  // end;
end;

function Tmain_f.LoadMedHx(varChart: string): string;
begin
  Result := '';
  with dm_f.sqlregi do
  begin

    close;
    sql.Clear;
    sql.Add('Select * from hxMed');
    sql.Add('Where Medchart= :MedChart');
    sql.Add('order by meddate desc');
    parambyname('MedChart').asString := varChart;
    open;
    first;
    if not isEmpty then
    begin
      while not eof do
      begin
        if Result = '' then
          Result := fieldbyname('medMemo').asString
        else
          Result := Result + ' / ' + fieldbyname('medMemo').asString;
        next;
      end;
    end

  end;
end;

procedure Tmain_f.LoadGajok(varGajokCode: Integer);
const
  selQuery =
    'select  (select top 1 jin_day  from ma_jubsu where ma_jubsu.chart=ma_gogek_basic.chart and jin_day <  CONVERT(VARCHAR(10),getdate(),21) order by jin_day desc ) '
    + #10#13 + 'as last_day,  Chart,  Name,  Jumin  from ma_gogek_basic     ' +
    #10#13 + 'Where fam_id =:fam_id';

  selQueryGroup = ' group by Chart, Name, Jumin';

  selQuery2 =
    'select  (select top 1 jin_day  from ma_jubsu where ma_jubsu.chart=view_gogek.chart and jin_day <  CONVERT(VARCHAR(10),getdate(),21) order by jin_day desc ) '
    + #10#13 +
    'as last_day,  Chart,  Name,  Jumin                                                                                                                     '
    + #10#13 +
    '              from view_gogek                                                                                                                       '
    + #10#13 +
    '              Where ((K_number=:K_Number) or                                                                                                           '
    + #10#13 +
    '              (H_Phone=:H_Phone) or                                                                                                                    '
    + #10#13 +
    '              (H_juso=:H_juso))                                                                                                                        '
    + #10#13 +
    '              group by Chart, Name, Jumin                                                                                                              '
    + #10#13 +
    '              Order by Name, Chart                                                                                                                     ';

var
  famcode, i, j, fc, recCount: Integer;
  varQuery: string;
begin

  // application.ProcessMessages;

  main_f.pnlStatus.Caption := 'ȯ�������� �ҷ����� ���Դϴ�.';
  // application.ProcessMessages;

  varQuery := LoadGroupDataQuery;

  if (varGajokCode > 0) then
  begin

    with dm_f.SqlTemp do
    begin
      close;
      sql.Clear;
      sql.Text := selQuery;
      // SQL.Add('Select Chart, Name, Jumin,  ');
      // Sql.Add('Last_day  from view_gogek');
      // Sql.Add('Where fam_id =:fam_id ');
      parambyname('fam_id').Asinteger := varGajokCode;

      if varViewAll <> true then
      begin


        // if varQuery <> '' then
        // // sql.Add('and (chart not in (' + varQuery + ' ) ) ');

        // sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

        if configvalue.varAgeFilter = '0' then
        begin

          if varQuery <> '' then
            // sql.Add('and (i.chart not in ('+ varQuery + ' ) ) ');
            sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where'
              + varQuery + ' ) ) ');

        end
        else
        begin
          sql.Add('and (chart not in  (' + ageFilterQry + '  ) ) ');

        end;

      end;

      sql.Text := sql.Text + selQueryGroup;

      open;

      if not isEmpty then
      begin

        LoadGajoklistPanel;

        grdGajok.beginUpdate;
        recCount := recordCount;
        grdGajok.Rowcount := recCount + 1;
        grdGajok.FixedRows := 1;
        grdGajok.FixedCols := 1;

        // application.ProcessMessages;
        pnlStatus.Caption := 'ȯ�������� �ҷ����� ���Դϴ�.';
        // application.ProcessMessages;
        pgLoading.minvalue := 0;
        pgLoading.maxvalue := recCount;

        while not eof do
        begin
          for i := 1 to recCount do
          begin

            grdGajok.Cells[1, i] := fieldbyname('Name').asString;
            // ����
            grdGajok.Cells[3, i] := fieldbyname('Last_day').asString; // ����������
            grdGajok.Cells[4, i] := NaiCalc(fieldbyname('Jumin').asString);
            // ����

            grdGajok.Cells[2, i] := fieldbyname('Chart').asString;
            // íƮ

            // application.ProcessMessages;
            pgLoading.progress := i;
            next;

          end;
        end;
        grdGajok.autonumbercol(0);
        grdGajok.endUpdate;
        pnlGajok.Caption.Text := '��������' + '(' + inttostr(i - 1) + ')';

        pnlStatus.Caption := '';
        // application.ProcessMessages;
        pgLoading.progress := 0;

      end
      else
      begin

        with grdGajok do
        begin
          RemoveRows(1, Rowcount - 1);
          Rowcount := 2;
          FixedRows := 1;
        end;
        pnlGajok.Caption.Text := '��������' + '(0)';
        pnlStatus.Caption := '';
        // application.ProcessMessages;
        pgLoading.progress := 0;

      end;
    end;
  end
  else
  begin

    { ���̱׷��̼����� �ڵ�ȭ ���� ��� ���� 20101221 ��

      with DM_f.SqlGajok do
      begin

      close;
      SQL.Clear;
      SQL.Add('Select isnull(Max(fam_id),0) +1  as MaxFamcode from  ma_gogek_basic');
      open;
      FamCode :=
      FieldByname('MaxFamcode').Asinteger;

      Close;
      SQL.Clear;
      sql.text := selquery2;
      // SQL.Add('Select Chart, Name, Jumin,  ');
      // Sql.Add('Last_day , kwan, h_phone, c_phone , k_number, h_juso from view_gogek');
      // Sql.Add('Where ((K_number=:K_Number) or ');
      // Sql.Add('(H_Phone=:H_Phone) or ');
      // Sql.Add('(H_juso=:H_juso))');
      // Sql.Add('Order by Name, Chart');

      if (ma_k_number <> '') and (ma_k_number <> '2�����ޱ���')
      and
      (ma_k_number <> '1�����ޱ���') then
      ParamByName('K_number').AsString := ma_k_number

      else
      ParamByName('K_number').AsString := '�츮����';

      if length(ma_h_phone) > 5 then

      ParamByName('H_phone').AsString := ma_h_phone
      else
      ParamByName('H_phone').AsString := '�츮����';

      ParamByName('H_juso').AsString := ma_h_juso;

      Open;
      if not IsEmpty then
      begin

      grdGajok.beginUpdate;
      recCount := recordCount;
      grdGajok.RowCount := reccount + 1;
      grdgajok.FixedRows := 1;
      grdgajok.FixedCols := 1;

      application.ProcessMessages;
      pnlStatus.Caption :=
      'ȯ�� �����͸� �ҷ����� ���Դϴ�.';
      application.ProcessMessages;
      pgLoading.minValue := 0;
      pgLoading.maxValue := reccount;

      //  while not EOF do
      //  begin
      for i := 1 to RecCount do
      begin

      grdGajok.Cells[1, i] :=
      FieldByName('Name').asString; // ����
      grdGajok.Cells[2, i] :=
      FieldByName('Last_day').asString;
      //����������
      grdGajok.Cells[3, i] :=
      NaiCalc(FieldByName('Jumin').asString);
      //����
      grdGajok.Cells[4, i] :=
      FieldByName('Chart').asString; // íƮ
      application.ProcessMessages;
      pgLoading.progress := i;
      updateGajokCode(grdGajok.Cells[4, i], famCode);

      Next;
      end;
      //  end;

      grdGajok.autonumbercol(0);
      grdGajok.endUpdate;
      pnlGajok.Caption.Text := '��������' + '(' +
      inttostr(i - 1) + ')';

      pnlStatus.Caption := '';

      application.ProcessMessages;
      pgLoading.progress := 0;

      end
      else
      begin
      pnlGajok.Caption.Text := '��������' + '(0)';

      pnlStatus.Caption := '';
      application.ProcessMessages;
      pgLoading.progress := 0;
      end;
      end;
    }
  end;
end;

procedure Tmain_f.LoadSogeja(varChart: string);
var
  i, j, fc, recCount: Integer;
begin
  {
    with dm_f.SqlWork do
    begin
    Close;
    Sql.Clear;
    Sql.Add('select * from view_gogek ');
    Sql.Add('where refer_Chart=:chart ');
    ParamByName('Chart').AsString := varChart;
    open;

    if not isEmpty then
    begin
    LoadSogeList;

    grdSoge.beginUpdate;
    recCount := recordCount;
    grdSoge.RowCount := reccount + 1;
    grdSoge.FixedRows := 1;
    grdSoge.FixedCols := 1;

    while not eof do
    begin

    for i := 1 to RecCount do
    begin

    grdSoge.Cells[1, i] :=
    FieldByName('Name').AsString;
    // ����
    grdSoge.Cells[3, i] :=
    FieldByName('Last_day').AsString;
    //����������
    grdSoge.Cells[4, i] :=
    NaiCalc(FieldByName('Jumin').AsString);
    //����

    grdSoge.Cells[2, i] :=
    FieldByName('Chart').AsString;
    // íƮ
    Next;

    end;
    end;
    grdSoge.autonumbercol(0);
    grdSoge.endUpdate;
    pnlsoge.Caption.Text := '�Ұ�����' + '(' +
    inttostr(i - 1) + ')';

    end
    else
    begin
    pnlsoge.Caption.Text := '�Ұ�����' + '(0)';

    end;

    end;
  }
end;

procedure Tmain_f.LoadDocSet(varChart: string; varDay: string);
var
  docName: string;
  hygName: string;
  docIndex: Integer;
begin
  // ������ �ΰ��̻��� �� �ִ�. ���Ϲ�ȣ, �����, ������� Ű��.

  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ma_jubsu');
    sql.Add('where chart=:chart and jin_day=:jin_day');
    parambyname('Jin_Day').asString := varDay;
    parambyname('Chart').asString := varChart;
    open;
    if not isEmpty then // ���������� ������ �������� Doc,Hyg�� �������� �ƴϸ� ���� ����Ȱ� ��������.
    begin

      if isInitial = true then
      begin

        // cbdamteam.text := ma_team;
        docName := fieldbyname('doc').asString;
        hygName := fieldbyname('hyg').asString;

        docIndex := cbDoc.ComboItems.IndexInColumnOf(2, docName);

        if fieldbyname('doc').asString <> '' then
          cbDoc.ItemIndex := docIndex
          // cbDoc.ComboItems.IndexInColumnOf(2, docName)
        else
          cbDoc.ItemIndex := 0;

        if fieldbyname('hyg').asString <> '' then
          cbHyg.ItemIndex := cbHyg.Items.IndexOf(hygName)
        else
          cbHyg.ItemIndex := 0;
      end
      else
      begin

      end;
    end
    else
    begin

      if isInitial = true then
      begin
        if trim(ma_doc) <> '' then
          cbDoc.ItemIndex := docIndex
          // cbDoc.ComboItems.IndexInColumnOf(2, docName)
        else
          cbDoc.ItemIndex := 0;

        if trim(ma_hyg) <> '' then
          cbHyg.ItemIndex := cbHyg.Items.IndexOf(ma_hyg)
        else
          cbHyg.ItemIndex := 0;
      end
      else
      begin

      end;
    end;

    // ����� ���� ������ ��ϵǾ��ִ°�� ���� �� �ҷ���.
    if cbDoc.ItemIndex < 0 then
      cbDoc.ItemIndex := 0;

  end;



  // LoadTeamColor(cbTeamColor.items);

  if configvalue.varDaegiTeamSave = '1' then // �������� ������ ������
  begin
    // cbdoc.ItemIndex := cbDoc.ComboItems.IndexOf(ma_doc).y;
    // cbhyg.ItemIndex := cbhyg.Items.IndexOf(ma_hyg);

    if trim(ma_doc) <> '' then
      cbDoc.ItemIndex := cbDoc.ComboItems.IndexOf(ma_doc).Y
    else
      cbDoc.ItemIndex := 0;

    if trim(ma_hyg) <> '' then
      cbHyg.ItemIndex := cbHyg.Items.IndexOf(ma_hyg)
    else
      cbHyg.ItemIndex := 0;

  end;


  // ToDo : Repair ==> LoadColor
  // if configvalue.varTeamColorDisp = '1' then
  // begin
  // if cbDoc.ColumnItems[cbDoc.itemindex, 1]  <>'' then
  // pnlTeamColor.Color := stringtoColor(cbDoc.ColumnItems[cbDoc.itemindex, 1])
  // else
  // pnlTeamColor.Color:=clWhite;
  // end;
  // // pnlTeamColor.Color :=  stringtoColor(getteamColor(cbTeamColor.items, strtoint(cbDamteam.text)));

end;

function Tmain_f.LoadHealthSet(varChart: string; varDay: string): Integer;
begin
  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ma_jubsu');
    sql.Add('where chart=:chart and jin_day=:jin_day');
    parambyname('Jin_Day').asString := varDay;
    parambyname('Chart').asString := varChart;
    open;
    if not isEmpty then // ���������� ������ �������� Doc,Hyg�� �������� �ƴϸ� ���� ����Ȱ� ��������.
    begin
      // cbdamteam.text := ma_team;
      Result := fieldbyname('health').Asinteger;

    end
    else
    begin

      Result := 0;
    end;

  end;

end;

procedure Tmain_f.LoadNewoninfo(varChart: string);
var
  firstDay, lastday: string;
  firstDay2, lastday2: string;
  nCount, dCount: Integer;
  Dyear, DMonth, DDay: string;

  NextPromiseDay, NextRecallDay: string;
begin

  try
    // ShowMessage('�������� �ҷ����� ');
    with dm_f.sqlwork do
    begin
      close;
      sql.Clear;
      sql.Text := 'select * from ma_gogek_basic ' + 'where chart = ' + '''' +
        varChart + '''';
      open;
      if not isEmpty then
      begin
        firstDay := stringReplace(fieldbyname('first_day').asString, '-', '.',
          [rfReplaceAll]);
        firstDay2 := fieldbyname('first_day').asString;
        // Lastday := stringReplace(fieldbyname('Last_day').asString, '-', '.', [rfReplaceAll]);

        // lblnewoninfo.caption := '��' + firstday + '��' + lastday;
      end
      else
      begin
        firstDay := '����';
        firstDay2 := '����';

      end;

      close;
      sql.Clear;

      sql.Text := 'SELECT   top 1   jin_day  from ma_jubsu where chart= ' + ''''
        + varChart + '''' + ' and jin_day < ' + '''' +
        formatdatetime('YYYY-MM-DD', now) + '''' + ' order by jin_day desc';
      open;

      if not isEmpty then
      begin
        lastday := stringReplace(fieldbyname('jin_day').asString, '-', '.',
          [rfReplaceAll]);
        lastday2 := fieldbyname('jin_day').asString;

      end
      else
      begin
        lastday := '����';
        lastday2 := '����';
      end;

      close;
      sql.Clear;

      sql.Text :=
        'SELECT   count(jin_day) as jubsuCount from ma_jubsu where chart= ' +
        '''' + varChart + '''';
      open;

      if not isEmpty then
      begin
        nCount := fieldbyname('jubsuCount').Asinteger;

      end
      else
      begin
        nCount := 0;
      end;

    end;

    // ShowMessage('�������� �ҷ������� ');

    lblNewonInfo.Caption := '���ʳ���:' + firstDay;
    lblNewonInfo2.Caption := '��������:' + lastday;
    lblJubsuCount.Caption := '�����ϼ�:' + inttostr(nCount) + '��';

    if isDate(firstDay2) and isDate(lastday2) then
    begin


      // dCount := daysu(strtodate(firstday2), strtodate(lastDay2));

      dCount := daysu(now, strtodate(lastday2));
      // ���������� ���� ���ñ����� ���� �Ⱓ

      Dyear := inttostr(MonthsBetween(strtodate(lastday2), strtodate(firstDay2))
        div 12); // + '�� ' +
      DMonth := inttostr(MonthsBetween(strtodate(lastday2), strtodate(firstDay2)
        ) mod 12); // + '���� ' +
      DDay := inttostr(dCount mod 30); // + '��' ;

      if Dyear <> '0' then
        Dyear := Dyear + '��'
      else
        Dyear := '';

      if DMonth <> '0' then
        DMonth := DMonth + '����'
      else
        DMonth := '';

      if DDay <> '0' then
        DDay := DDay + '�� '
      else
        DDay := '';

      lblChongInsu.Caption := Dyear + DMonth + DDay;
    end
    else
    begin
      lblChongInsu.Caption := '';
    end;

    // ShowMessage('�������� �ҷ����� ');

    NextPromiseDay := LoadNextPromiseDay(main_f.edtChart.Text,
      formatdatetime('YYYY-MM-DD', now));
    NextRecallDay := LoadNextRecallDay(main_f.edtChart.Text,
      formatdatetime('YYYY-MM-DD', now));

    if NextPromiseDay <> '' then
    begin
      lblNextPromiseDay.Caption := '��������: ' + NextPromiseDay;
    end
    else
    begin
      lblNextPromiseDay.Caption := '�������� : ����';
    end;

    // ShowMessage('�������� �ҷ����� ');

    if NextRecallDay <> '' then
    begin
      lblNextRecallDay.Caption := '���ݿ���: ' + NextRecallDay;
    end
    else
    begin
      lblNextRecallDay.Caption := '���ݿ��� : ����';
    end;

  except
    on E: Exception do
    begin
      exceptlogging(E.Message);
      showmessage('�������� �ҷ����⿡ �����Ͽ����ϴ�.' + #13#10 + E.Message);
    end;
  end;


  // inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) mod 12) + 'm'; //+ jumintonai(ma_jumin);

end;

function Tmain_f.isWhisperList: Boolean;
begin
  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ma_whisperList');
    sql.Add('where chart=:chart ');
    // sql.add('and whisperdate=:whisperdate');
    parambyname('chart').asString := ma_Chart;
    // parambyname('whisperdate').asstring := dttoday.AsString;
    open;
    // first;
    if not isEmpty then
    begin
      Result := true;
    end
    else
    begin
      Result := False;
    end;
  end;
end;

procedure Tmain_f.lblJikjangClick(Sender: TObject);
begin

  pnljikjang.top := pnlBohum.top + 10;
  pnljikjang.left := pnlMidBody.left;
  pnljikjang.visible := not pnljikjang.visible;

  cbJikGubun.Text := LoadOffice(main_f.edtChart.Text).OfficeGubun;
  edtJikname.Text := LoadOffice(main_f.edtChart.Text).OfficeName;
  edtJikwi.Text := LoadOffice(main_f.edtChart.Text).OfficeJikWi;
end;

procedure Tmain_f.lblJikjangMouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clBlue;
  (Sender as TLabel).Font.Style := [fsBold, fsUnderline];

end;

procedure Tmain_f.lblJikjangMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Color := clBlue;
  (Sender as TLabel).Font.Style := [fsBold];

end;

procedure Tmain_f.lblMisugeumDblClick(Sender: TObject);
begin

     showGogekAlret(edtChart.text, edtname.text, 4);


end;

procedure Tmain_f.loadCelPhoneList(varChart: string);
begin
  lstPatPhoneList.Items.Clear;
  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;

    sql.Add('SELECT * FROM ma_gogek_phone ');
    sql.Add('where chart=:chart and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
    parambyname('SMS').asString := '0'; // ���⼭�� 0�ΰ��� SMS�����ϱ�� �Ѱ��� �ҷ��ð���....
    parambyname('chart').asString := varChart;
    open;
    first;
    while not eof do
    begin
      main_f.lstPatPhoneList.Items.Add(fieldbyname('phone').asString);
      next;
    end;
  end;

end;

procedure Tmain_f.SaveRecentList(varChartNo: string; varName: string);
var
  f: textfile;
  TodayDate: string;
  CurrentFile: string;
  NewRecentItem: TMenuItem;
begin
  TodayDate := formatdatetime('YYYY-MM-DD', now);
  if not DirectoryExists(extractFilePath(paramStr(0)) + 'RecentList') then
    MkDir(extractFilePath(paramStr(0)) + 'RecentList');

  CurrentFile := extractFilePath(paramStr(0)) + 'RecentList\' + 'RecentList' +
    TodayDate + '.txt';
  if not fileexists(CurrentFile) then
  begin

    try
      AssignFile(f, CurrentFile);
      Rewrite(f);
      writeln(f, varName + '|' + varChartNo);
    finally

      closefile(f);
    end;

  end
  else
  begin
    try
      AssignFile(f, CurrentFile);
      append(f);
      writeln(f, varName + '|' + varChartNo);
    finally

      closefile(f);
    end;

  end;

end;

procedure Tmain_f.scrLeftResize(Sender: TObject);
begin

    pnlLeft.Width   :=   scrLeft.Width - 20;//scrLeft.VertScrollBar.Size;
//    pnlLeft.Height  :=   pnlMain.Height;
end;

procedure Tmain_f.LoadPatFacePic(AID: Integer; Imagename: string;
  ARot: Integer = 0);
var
  jpgImage: TJpegImage;
  imagename2: string;
begin
  application.ProcessMessages;

  imagename2 := ExtractFileName(Imagename);
  Imagename := extractFilePath(paramStr(0)) + 'images\' + imagename2;

  if fileexists(Imagename) then
  begin
    jpgImage := TJpegImage.Create;
    // Jpeg �̹��� �ҷ�����
    jpgImage.LoadFromFile(Imagename);
    // Image1�� �����
    imgPic.Picture.Assign(jpgImage);
    imgPic.Tag := AID;

    // ������Ʈ �ı�
    jpgImage.Free;

    // case ARot of
    // 90:   imgPic.Picture.Rotate90();
    // 180:   imgPic.Picture.Rotate180();
    // 270:   imgPic.Picture.Rotate270();
    // end;
  end ;

end;

procedure Tmain_f.LoadGajoklistPanel;
var
  varLeft, varWidth, varTop, varheight: Integer;
  varRight, varBottom: Integer;
begin
  varLeft := 0;
  varWidth := 0;
  varTop := 0;
  varheight := 0;
  varRight := 0;
  varBottom := 0;

  varLeft := 0;
  varWidth :=  scrLeft.Width  - 10; // pnlLeft's width // pnlLeft.Width - 10; // pnlLeft's width
  varTop := 400; // 350;
  varheight := 100;

  varRight := varLeft + varWidth;
  varBottom := varheight + varTop;

  pnlGajok.Align := alClient;

  { with pnlGajok do
    begin

    Caption.Text := '��������';
    DragKind := dkDock;
    DragMode := dmAutomatic;

    ManualFloat(Rect(varLeft, varTop, varRight, varBottom));
    //(Rect(5, 280, 180, 360));

    BringToFront;
    end;
  }

end;

procedure Tmain_f.LoadSogelist;
var
  varLeft, varWidth, varTop, varheight: Integer;
  varRight, varBottom: Integer;
begin
  varLeft := 0;
  varWidth := 0;
  varTop := 0;
  varheight := 0;
  varRight := 0;
  varBottom := 0;

  varLeft := 3;
  varWidth := scrLeft.Width  - 10; // pnlLeft's width//pnlLeft.Width - 10; // pnlLeft's width
  varTop := 170;
  varheight := 100;

  varRight := varLeft + varWidth;
  varBottom := varheight + varTop;
  // pnlSoge.align := alClient;

  { with pnlSoge do
    begin

    Caption.Text := '�̺��� �Ұ��Ͻ� ȯ�ں�(��)';
    DragKind := dkDock;
    DragMode := dmAutomatic;
    ManualFloat(Rect(varLeft, varTop, varRight, varBottom));
    // ManualFloat(Rect(5, 170, 180, 250));
    BringToFront;
    end;
  }
end;

procedure Tmain_f.memAddKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin

    if not Assigned(loadJusoFind_f) then
      loadJusoFind_f := TloadJusoFind_f.Create(application);


    // loadJusoFind_f.edtAddr.Text := memAdd.Text;

    loadJusoFind_f.SearchAdd(memAdd.Text, 1, 50);
    // //loadJusoFind_f.spinEdit1.Value);

    if loadJusoFind_f.ShowModal = mrOk then
    begin

      memAdd.lines.Clear;
      edtZip.Text := loadJusoFind_f.gdResult.Cells
        [1, loadJusoFind_f.gdResult.row]; // �����ȣ

      memAdd.lines.Add(loadJusoFind_f.gdResult.Cells[2,
        loadJusoFind_f.gdResult.row]);

    end
    else
    begin
      edtZip.Text := '';

    end;
    Key := #0;
  end;

end;

procedure Tmain_f.SetBtnArray;
begin
  setLength(BtnArray, 9);
  BtnArray[0] := btnMh0;
  BtnArray[1] := btnMh1;
  BtnArray[2] := btnMh2;
  BtnArray[3] := btnMh3;
  BtnArray[4] := btnMh4;
  BtnArray[5] := btnMh5;
  BtnArray[6] := btnMh6;
  BtnArray[7] := btnMh7;
  BtnArray[8] := btnMh8;

end;

procedure Tmain_f.btnChamgoModClick(Sender: TObject);
begin
  if btnChamgoMod.Caption = '����' then
  begin
    btnChamgoMod.Caption := '����';
    memChamgo.readonly := False;
    memChamgo.SetFocus;
    btnCancel.visible := true;
  end
  else
  begin
    if updateGogekRemark(ma_Chart, memChamgo.Text) = true then
    begin
      btnChamgoMod.Caption := '����';
      memChamgo.readonly := true;
      btnCancel.visible := False;
    end
    else
    begin
      showmessage('������� ��������');
    end;
  end;
end;

procedure Tmain_f.btnCphoneCallClick(Sender: TObject);
begin

  if (configvalue.varCidUse <> '1') // or   (dm_f.configvalue.varCidUse2 <> '1')
  then
  begin
    showmessage('��ȭ�ɱ� ����� KTCID �����Ŀ� �����մϴ�.' + #10#13 + '���α׷� �����ڿ��� ���� �Ͻʽÿ�.');
    exit;
  end;
  if not Assigned(Caller_f) then
    Caller_f := TCaller_f.Create(application);
  LoadPhoneList(main_f.edtChart.Text, Caller_f.textCalleeNumber, edtCphone);
  // textCalleeNumber.text
  with Caller_f do
  begin
    varChart := main_f.edtChart.Text;
    varName := main_f.edtname.Text;
    left := mouse.CursorPos.X;
    top := mouse.CursorPos.Y;
    Show;
  end;
end;

procedure Tmain_f.btnDeleteClick(Sender: TObject);
var
  varOk: Boolean;
  LockStatResult : TLockStatResult ;
begin
  varOk := False;
  isLoading := true;

  if trim(edtname.Text) = '' then
    exit;
  if trim(edtChart.Text) = '' then
    exit;




//�� ���¸� �����ͼ� �б��������� �ѷ��ش�,.
    LockStatResult := loadLockState(edtChart.Text,
                               formatDateTime('YYYYMMDD', now)) ;
    if LockStatResult.aResult =  false then  //������ ����.
    begin

    end
    else
    begin


        if ( LockStatResult.LocUidCod  <> V_UserID ) and
           ( LockStatResult.LocIpAddr  <> GetIPAddress )   and
           ( LockStatResult.LocExeNam  =  'HJinryo' )   then
          begin

           if Application.MessageBox(pchar(
                LockStatResult.LocIpAddr + '���� '+
                LockStatResult.LocPCNam+'('+
                LoadDocNameFromSawonWithID(LockStatResult.LocUidCod)
                +') �� �������Դϴ�.' ), 'Ȯ��', MB_YESNO) = 6 then
              begin
                  exit;

                  //������ ����

//                ReleaseLockOneChart(jinryo_f.lblChart.Caption,
//                'HJinryo',
//                LockStatResult.LocUidCod ,
//                LockStatResult.LocIpAddr);

              end
              else
              begin
                  exit;
//                  jinryo_f.LockControl(true); //���
              end;
       end;
    end;




  if application.MessageBox(pchar(edtname.Text + '(' + edtChart.Text +
    ')���� ȯ�������� �����˴ϴ�..' + #10#13 + '�׷��� ���� �Ͻðڽ��ϱ�?'), 'ȯ������ ���� Ȯ��1',
    MB_OKCANCEL) <> 1 then
  begin
    exit;

  end;

  if application.MessageBox(pchar(edtname.Text + '(' + edtChart.Text +
    ')���� ȯ�������� ������ �����˴ϴ�..' + #10#13 + '�׷��� ������  ���� �Ͻðڽ��ϱ�?'), 'ȯ������ ���� Ȯ��2',
    MB_OKCANCEL) = 1 then
  begin

    if inputbox('��ȣ�� �Է��ϼ���', '������', '***') <> formatdatetime('dd', now) then
    begin
      showmessage('�����ڿ��� �����Ͻʽÿ�.');
      exit;
    end;

    if PatientDeleteAll(edtChart.Text) = true then // ȯ�ڵ����͸� ��� �����Ŀ�...
    begin
      varOk := true;

    end;

    if varOk = true then
      main_f.FieldClear;

  end
  else
  begin
    exit;
  end;

end;

procedure Tmain_f.btnDeleteFacePicClick(Sender: TObject);
var
  CurrentFile: string;
begin
  if application.MessageBox(pchar('[' + ma_Paname + ']���� ������' + #13#13 +
    '�����Ͻðڽ��ϱ�?.'), '�˸�', MB_YESNO) = IDYES then
  begin

    PicDelete(ma_Chart);
    CurrentFile := PicPath + 'icons\img_woman.jpg';
    if fileexists(CurrentFile) then
      imgPic.Picture.LoadFromFile(CurrentFile)
    else
      imgPic.Picture := nil;

  end;

end;

procedure Tmain_f.btnEEcpClick(Sender: TObject);
begin

       if edtchart.text = '' then
       begin
           showmessage('������ ȯ�ڰ� �����ϴ�');
           exit;
       end;


      if not Assigned(eecp_f) then
        eecp_f := Teecp_f.Create(application);
      eecp_f.Show;

end;

procedure Tmain_f.btnJikjangCloseClick(Sender: TObject);
begin
  pnljikjang.visible := False;
end;

procedure Tmain_f.btnJikjangSaveClick(Sender: TObject);
begin

  if saveOffice(edtChart.Text, cbJikGubun.Text, edtJikname.Text, edtJikwi.Text,
    formatdatetime('YYYY-MM-DD', now)) = true then
  begin
    { �Ϲ�
      �ʵ��б�
      ���б�
      ����б�
      ���б�
      ���п�
      ������
    }
    case cbJikGubun.ItemIndex of
      1 .. 5:
        begin
          edtJikJang.Text := edtJikname.Text + cbJikGubun.Text + ' ' +
            edtJikwi.Text + '�г�'
        end;
      0, 6:
        begin
          edtJikJang.Text := edtJikname.Text + ' ' + edtJikwi.Text;
        end;
    end;
  end;

  pnljikjang.visible := False;

  edtJikJang.Text := LoadOffice(ma_Chart).OfficeRemark;
  edtModelNo.Text := LoadModelNo(ma_Chart);

end;

procedure Tmain_f.btnModChartClick(Sender: TObject);
begin
  isChartEditMode := true;
  edtChart.SetFocus;

end;

procedure Tmain_f.btnNewPatClick(Sender: TObject);
begin
  // isLoading := false;
  isInitial := true;
  isReferer := False;

  UpdateTempChart(edtchart.text ) ;



  FieldClear;
  // ���� ũ����...FieldClear�� �־���.
  fieldClear_var;

  isLoading := False;
  // loadResult := 6;
//  DeleteTempChart;
  //���Ϲ�ȣ ���� ������ �Ǵ� tempchart���� ���Ϲ�ȣ ������ ���
  //�������� �ʰ� �ʱ�ȭ ��Ű�� ��� inUse�� '0'���� �ؼ� �ٸ� ���� ���� ����.

  edtname.SetFocus;
end;

procedure Tmain_f.btnNewPatMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    (Sender as TAdvShapeButton).Font.Color := clWhite;
    // := [fsUnderline, fsbold];

end;

procedure Tmain_f.btnNewPatMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//    (Sender as TAdvShapeButton).Font.Color := clWhite;

    (Sender as TAdvShapeButton).Font.Color := $00FF8F49;

end;

procedure Tmain_f.btnWhisperClick(Sender: TObject);
begin

  if edtChart.text ='' then
     exit;

  if not Assigned(chamgo_f) then
    chamgo_f := Tchamgo_f.Create(application);

  chamgo_f.ShowModal;

end;

procedure Tmain_f.btnMedicalHxClick(Sender: TObject);
var

  varRgTag: Integer;
  medicalHxinfo: string;

begin

  if ma_Chart <> '' then
  begin

    if not Assigned(saveChamgo_f) then
    begin
      saveChamgo_f := TsaveChamgo_f.Create(application);
      saveChamgo_f.Caption := 'Medical Hx.';
      // ((Sender as TButton).Parent as  TAdvPanel).caption.text;
      saveChamgo_f.left := 500;
      // pnlRemark.Left - (saveChamgo_f.width) div 2 - 50;
      saveChamgo_f.top := 400; // spSkinPanel2.Top;
      varRgTag := 2; // ((Sender as TButton).Parent as  TAdvPanel).Tag;
      saveChamgo_f.varRgTag := varRgTag;
      saveChamgo_f.ShowModal;
    end
    else
    begin
      saveChamgo_f.Caption := 'Medical Hx.';
      // ((Sender as TButton).Parent as  TAdvPanel).caption.text;
      saveChamgo_f.left := 500;
      // (Sender as TAdvGroupBox).Left + saveChamgo_f.width;
      varRgTag := 2; // ((Sender as TButton).Parent as  TAdvPanel).Tag;
      saveChamgo_f.varRgTag := varRgTag;
      saveChamgo_f.ShowModal;
    end;
  end;

  medicalHxinfo := LoadMedHx(ma_Chart);
  if trim(medicalHxinfo) <> '' then

    lblMhxInfo.Caption := medicalHxinfo
  else
    lblMhxInfo.Caption := 'Medical History';

end;

procedure Tmain_f.btnSmsSendClick(Sender: TObject);
begin
  if not Assigned(sms_f) then
    sms_f := Tsms_f.Create(application);
  sms_f.Show;
end;

procedure Tmain_f.Button6Click(Sender: TObject);
var
  team_key: string;
begin
    if trim(edtName.Text) =  '' then
    exit;
  // http://sis.nhis.or.kr/site/sis/ggob011m01

  main_f.cbTreatRoom.ItemIndex := main_f.cbTreatRoom.ComboItems.IndexInColumnOf
    (0, 'NHIC');
  // ���ܰ���
  main_f.cbChoje.ItemIndex := main_f.cbChoje.Items.IndexOf('��������� ����');
  //

  // showmessage('');
  team_key := 'NHIC';
  LoadDoclist(cbDoc, team_key);

end;

procedure Tmain_f.Button7Click(Sender: TObject);
begin
  if not Assigned(PharmInfo_f) then
    PharmInfo_f := TPharmInfo_f.Create(nil);
    PharmInfo_f.showmodal;
end;

procedure Tmain_f.Button11Click(Sender: TObject);
var
  nret2: Integer;
begin

  if not Assigned(smsone_f) then
    smsone_f := Tsmsone_f.Create(application);

  smsone_f.varmode := 0;
  smsone_f.lblChart.Caption := '';
  smsone_f.lblChart.Caption := main_f.edtChart.Text;
  smsone_f.edtname.Text := main_f.edtname.Text;
  smsone_f.edtRecvno.Text := call_tel_type(main_f.edtHphone.Text);
  smsone_f.memContent.Text := '';
  smsone_f.LblMemcontentSize.Caption := '0/';
  smsone_f.ShowModal;

end;


procedure Tmain_f.btnSogeDeleteClick(Sender: TObject);
const
     sqlqry = 'update ma_gogek_basic set' + #10#13 +
          'refer_id=''0'' , refer_name='''', refer_chart='''' ' + #10#13 +
          'where chart=:chart';
begin
     //   if  not ((main_f.edtChart.text ='') or ( edtsoge.text='') or (lblsogeidn.caption='')  or (lblSogeChart.Text='') ) then
     //   exit;

     if Application.MessageBox('�Ұ��ڸ� �����Ͻðڽ��ϱ�?', 'Ȯ��',
          MB_OKCANCEL)
          = 1 then
     begin

          with dm_f.sqlwork do
          begin
               close;
               sql.clear;
               sql.Text := sqlqry;
               paramByName('chart').asString := main_f.edtChart.text;
               execsql;
          end;
          edtsoge.text := '';
          edtsoge2.text := '';
          edtsogeNeyuk.text := '';
          lblsogeidn.caption := '';
          lblSogeChart.Text := '';

     end;
end;


procedure Tmain_f.btnInfoUseClick(Sender: TObject);
begin
  personalinfo_f := Tpersonalinfo_f.Create(application);
  personalinfo_f.varSignChart := edtChart.Text;

  if personalinfo_f.ShowModal = mrOK then
  begin
       cbInfoSave.Checked := true;
  end;
end;

procedure Tmain_f.Button15Click(Sender: TObject);
begin

     //  if edtchart.text = '' then
     //  begin
     //      showmessage('������ ȯ�ڰ� �����ϴ�');
     //      exit;
     //  end;

     if not Assigned(recall_f) then
          recall_f := Trecall_f.Create(application);


     with recall_f do
     begin

          show;
          fieldclear;

          edtrecallchart.text := main_f.edtChart.text;
          edtrecallname.text := main_f.edtname.text;
          edtrecalltel.text := main_f.edtcphone.text;
          lblCphone.caption := main_f.edtcphone.text;

          if main_f.edtChart.text = '' then
          begin
               fieldclear2;
               rbChart.Checked := false;
               rbTerm.Checked := true;

               //Selectma_recallFind('')
          end
          else
          begin
               fieldclear1;
               rbTerm.Checked := false;
               rbChart.Checked := true;
              // edtRecallChart.Text := main_f.edtChart.text ;
               Selectma_recallChart;
          end;
     end;

end;


procedure Tmain_f.Button18Click(Sender: TObject);
begin

end;

// varPath := extractFilePath(paramstr(0)) + 'Documan.exe';
//
// ShellExecute(GetDeskTopWindow, 'open', PChar(varPath),nil,
// nil, SW_SHOWNORMAL);
// end;

procedure Tmain_f.Button1Click(Sender: TObject);
var
  i: Integer;

  strJuminNo, strPaitName, strkiho, clientInfo, strJumin2, varJagyukID,
    varJagyukPass, sDate: string;
  hkind: string;
  S: string;

  varPath, varParam, varParam1: string;
begin
    if trim(edtName.Text) =  '' then
    exit;

  varPath := extractFilePath(paramStr(0)) + 'auto.exe';
  varParam1 := '��������';
  varParam := varParam1 + ' ' + configvalue.varJagyukID + ' ' +
    configvalue.varJagyukPass;
  // sleep(100);



  // showmessage(varPath +':'+ varParam) ;

  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
    SW_SHOWNORMAL);

  if checkClientProxynRun = False then
  begin
    showmessage('�ڰ���ȸ���(ClientProxy)�� ��ġ�ϼ���.');
    exit;
  end;

  LoadWebserviceDLL;

  { ���κδ㿩��
    "M001: ���ñ��������(���Ǻο��� ������) 1��
    M002: ���ñ�� �ڹ��� ������ 1��
    M003: 18�� �̸����� 1��
    M004: �ӻ��1��
    M005: ��ͳ�ġ����ȯ�� 1��
    M006: ����̽�ȯ�� 1��
    M007: 20�� �������ڷ� ��.����б� ���������� 1��
    M008: ������ȣ ����� 1��
    M009: ����ȯ���� ���ñ�� �̿��� 1��
    M010: ����κ��屸 ���޹޴� ���ñ�� �̿��� 1��
    M011: ���ȯ�� 1��
    M012: ����� 1��
    M013: ����ȯ���� ����� 1��
    M014: 2�����������ü����� 3���� �Ƿڵ� ����� 1��
    M015
    M016
    M017
    B001: ���ñ�� ������(���Ǻο��������) 2��
    B002: ���ñ�� �ڹ��� ������ 2��"
  }

  hkind := 'M1';

  strJuminNo := edtJumin.Text + edtJumin2.Text; // ma_jumin;  ���������� ���� �ȵ���.

  strPaitName := edtname.Text; // ma_paName;  ���������� ���� �ȵ���.

  strkiho := configvalue.varYoyang;
  clientInfo := '127.0.0.1';
  strJumin2 := configvalue.varJumin;
  varJagyukID := configvalue.varJagyukID;
  varJagyukPass := configvalue.varJagyukPass;
  sDate := formatdatetime('YYYMMDD', now);

  if CallM1(False, // �׽�Ʈ����ΰ�?
    strJuminNo, strPaitName, strkiho, // �������ȣ
    clientInfo, strJumin2, // �����ֹι�ȣ
    varJagyukID, varJagyukPass, sDate) // ��ȸ����
    = true then
  begin
    // KeyValues.Add(Response_KeyName_M1[i, 0]  + #9 +  '='  + #9 + nhicInfo[i]);
    grdjakyuk.Rowcount := 61;
    for i := 0 to 59 do
    begin
      grdjakyuk.Cells[1, i + 1] := Response_KeyName_M1[i, 0];
      grdjakyuk.Cells[2, i + 1] := nhicInfo[i];

    end;
    grdjakyuk.autonumbercol(0);

    pnlJakyuk.left := (Sender as TButton).left + pnlIcons.Width;
    pnlJakyuk.top := (Sender as TButton).top + pnlInfoHead.Height;


    if copy(trim(nhicInfo[22]),1,1) = 'H' then
     begin

           showmessage('��ͳ�ġ����ȯ�� �����ݴ�� �Դϴ�.');

           varJiwon :=  copy(trim(nhicInfo[22]),1,1) ;//
           edtJiwon.text:=   varJiwon;
     end;

    pnlJakyuk.visible := not pnlJakyuk.visible;
    // memo1.Lines.Clear;
    // memo1.Lines.AddStrings(KeyValues);

  end
  else
  begin

  end;
end;

procedure Tmain_f.btnFaceCamClick(Sender: TObject);
begin
  CaptureCam;
end;

procedure Tmain_f.PatPicEnlarge;
var
  CurrentFile: string;
begin
  if configvalue.varUseHttp <> '1' then
  begin

    if fileexists(PicPath + 'Picture\' + ma_Chart + '.BMP') then
    begin
      CurrentFile := PicPath + 'Picture\' + ma_Chart + '.BMP';

      if not Assigned(largeView_f) then
        largeView_f := TlargeView_f.Create(application);
      largeView_f.ImgView321.Picture.LoadFromFile(CurrentFile);
      largeView_f.Caption := ma_Paname + '(' + ma_Chart + ')';
      largeView_f.Show;

    end
    else if fileexists(PicPath + 'Picture\' + edtChart.Text + '.JPG') then
    begin
      CurrentFile := PicPath + 'Picture\' + edtChart.Text + '.JPG';
      if not Assigned(largeView_f) then
        largeView_f := TlargeView_f.Create(application);
      largeView_f.ImgView321.Picture.LoadFromFile(CurrentFile);
      largeView_f.Caption := ma_Paname + '(' + ma_Chart + ')';
      largeView_f.Show;
    end;
  end
  else
  begin
    CurrentFile := extractFilePath(paramStr(0)) + 'images\' +
      lblPatImagename.Caption;
    if fileexists(CurrentFile) then
    begin

      if not Assigned(largeView_f) then
        largeView_f := TlargeView_f.Create(application);
      largeView_f.ImgView321.Picture.LoadFromFile(CurrentFile);
      largeView_f.Caption := ma_Paname + '(' + ma_Chart + ')';
      largeView_f.Show;

    end;

  end;

end;

procedure Tmain_f.pnlIconsDblClick(Sender: TObject);
begin
  pnlRIS.visible := not pnlRIS.visible;
end;

procedure Tmain_f.btnFacePicLargeClick(Sender: TObject);
begin
  PatPicEnlarge;
end;

procedure Tmain_f.btnFacePicLoadClick(Sender: TObject);
var
  dc: HDC;
  bitmap: TBitmap;
  jpg: TJpegImage;
  varDir: string;
  varName, ImgName: string;
  prop: real;
begin
  varName := ma_Chart;

  varDir := currentDir + 'picture\';
  if not DirectoryExists(varDir) then
    CreateDir(varDir);

  if opd.Execute then
  begin

    // ImgName := StrLower(PChar(Copy(Opd.FileName, Pos('.', Opd.FileName)
    // + 1, Length(Opd.FileName) - Pos('.', Opd.FileName))));
    ImgName := ExtractFileExt(opd.FileName);
    ImgName := StrLower(pchar(copy(ImgName, Pos('.', ImgName) + 1,
      length(ImgName) - Pos('.', ImgName))));

    makeThumbNail_face(opd.FileName, varDir + varName);

    // imgPic.Bitmap.SaveToFile(varDir + varname + '.' + ImgName);

    imgPic.Picture.LoadFromFile(varDir + varName + '.' + ImgName);

    if configvalue.varUseHttp = '1' then
    begin

      if configvalue.varFaceFromDB <> '1' then
      begin
        ftpFaceImageSave(ma_Chart, opd.FileName); // Ftp����
      end
      else
      begin // DB�� Blob����
        PicSave(ma_Chart, varDir + varName, ImgName);
      end;

    end
    else if trim(configvalue.imgSharefolderPath) <> '' then // �������� ����
    begin

      imgPic.Picture.SaveToFile(configvalue.imgSharefolderPath + '\Picture\' +
        varName + '.' + ImgName);

    end
    else
    begin // DB�� Blob����
      PicSave(ma_Chart, varDir + varName, ImgName)
    end;

  end;
end;

procedure Tmain_f.btninitClick(Sender: TObject);
begin
  // pnlVitalInfo.Collaps:=true;
  // pnlChamgo.Collaps:=true;
  // pnlDr.Collaps:=true;
  // pnlnewonDongGi.Collaps:=true;

  pnlTop1.Height := pnlTop1.Height - edtChkList.Height;
  // pnlVitalInfo.Height := 32;
  pnlChamgo.Height := 32;
  pnlDetailNDongGi.Height := 150;
  pnlChamgo1.Height := pnlRefer.Height + pnlNewonDongGi.Height + 32;

end;

procedure Tmain_f.btnInPatientClick(Sender: TObject);
var
  team_key: string;
begin

  if not Assigned(inpatient_f) then
    inpatient_f := Tinpatient_f.Create(application);
  // inpatient_f.cbtreatRoom.Columns.Assign(main_f.cbtreatRoom.Columns);

  inpatient_f.Show;


  inpatient_f.AdvDateTimePicker1.datetime  := now;

  inpatient_f.lblChart.Caption             := edtChart.Text;

  inpatient_f.cbTreatRoom.ItemIndex        := cbTreatRoom.ItemIndex;

  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
  LoadDoclist(inpatient_f.cbDoc, team_key);

  inpatient_f.cbdoc.ItemIndex := cbdoc.ItemIndex;

end;

procedure Tmain_f.btnSogeSaveClick(Sender: TObject);
begin
  pnlSoge.visible := False;
end;

procedure Tmain_f.btnSogeCancelClick(Sender: TObject);
begin
  pnlSoge.visible := False;
end;



function Tmain_f.JakyukJohoi(strJuminNo, strPaitName: string; sDate: string;
  shMessage: Boolean = true): Boolean;

var
  strkiho, clientInfo, strJumin2, varJagyukID, varJagyukPass: string;
  hkind: string;
  S: string;

  i, j: Integer;

  varPath, varParam, varParam1: string;
  teakryeCode: string;
begin

  //ToDo : �ں��� �ڰ���ȸ�� ��������.

  if cbJong.ItemIndex = 7 then  //�ڵ�������
  begin
       exit;
  end;


  Result := False;

  if checkClientProxynRun = False then
  begin
    showmessage('�ڰ���ȸ���(ClientProxy)�� ��ġ�ϼ���.');
    exit;
  end;



 try
    LoadWebserviceDLL;



  varPath := extractFilePath(paramStr(0)) + 'auto.exe';
  varParam1 := '��������';
  varParam := varParam1 + ' '
    + configvalue.varJagyukID
    + ' ' +  configvalue.varJagyukPass;

  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
    SW_SHOWNORMAL);


  { ���κδ㿩��
    "M001: ���ñ��������(���Ǻο��� ������) 1��
    M002: ���ñ�� �ڹ��� ������ 1��
    M003: 18�� �̸����� 1��
    M004: �ӻ��1��
    M005: ��ͳ�ġ����ȯ�� 1��
    M006: ����̽�ȯ�� 1��
    M007: 20�� �������ڷ� ��.����б� ���������� 1��
    M008: ������ȣ ����� 1��
    M009: ����ȯ���� ���ñ�� �̿��� 1��
    M010: ����κ��屸 ���޹޴� ���ñ�� �̿��� 1��
    M011: ���ȯ�� 1��
    M012: ����� 1��
    M013: ����ȯ���� ����� 1��
    M014: 2�����������ü����� 3���� �Ƿڵ� ����� 1��
    B001: ���ñ�� ������(���Ǻο��������) 2��
    B002: ���ñ�� �ڹ��� ������ 2��"
  }

  hkind := 'M1';

  //
  //strJuminNo := edtJumin.Text + edtJumin2.Text; // ma_jumin;  ���������� ���� �ȵ���.
  // strPaitName    := edtname.text;//ma_paName;  ���������� ���� �ȵ���.

  strkiho := configvalue.varYoyang;
  clientInfo := '127.0.0.1';
  strJumin2 := configvalue.varJumin;
  varJagyukID := configvalue.varJagyukID;
  varJagyukPass := configvalue.varJagyukPass;
//  sDate := formatdatetime('YYYMMDD', now);

  if CallM1(
        False, // �׽�Ʈ����ΰ�?
        strJuminNo,
        strPaitName,
        strkiho, // �������ȣ
        clientInfo,
        strJumin2, // �����ֹι�ȣ
        varJagyukID,
        varJagyukPass,
        sDate) // ��ȸ����
       = true then
   begin

    ma_jumin := nhicInfo[1]; // �ֹε�Ϲ�ȣ
    ma_Paname := nhicInfo[2]; // �����ڼ���
    // nhicInfo[3]; YoyangKiho
    ma_hira_jong := nhicInfo[4]; // �����ڱ���
    // ma_jongbeul   := nhicInfo[4]; // �����ڱ���
    // 1: ���������� 2: ��������� 4:���ǰ�����尡���� 5:���尡����
    // 6:�����Ǻξ��� 7:�Ƿ�޿�1�� 8:�Ƿ�޿�2��
    if (ma_hira_jong = '1') or
       (ma_hira_jong = '2') or
       (ma_hira_jong = '4') or
       (ma_hira_jong = '5') or
       (ma_hira_jong = '6') or
       (ma_hira_jong = '7') or
       (ma_hira_jong = '8') then
     begin
        ma_apply_Day    := nhicInfo[5]; // �ڰ������  //ver.2.20
        ma_PiboName     := nhicInfo[6]; // ������(�����ڸ�)
        ma_Kiho         := nhicInfo[7]; // ������ȣ
        ma_K_Number     := nhicInfo[8]; // ��������ȣ
        ma_cancelDay    := nhicInfo[9]; // �޿���������
        ma_budam        := nhicInfo[10]; // ���κδ㿩��, injek�� ����
        ma_janek        := nhicInfo[11]; // �������ܾ�

        // boninJun      := NjunaekYN; //���� ���� �δ� ����

        // ma_Sunkiho1,  ma_Sunkiho2,  ma_Sunkiho3 ,ma_Sunkiho4
        ma_Sunkiho1 := trim(nhicInfo[12] + '  ' + nhicInfo[16]); // ���ñ����ȣ1 ��Ī
        ma_Sunkiho2 := trim(nhicInfo[13] + '  ' + nhicInfo[17]); // ���ñ����ȣ2
        ma_Sunkiho3 := trim(nhicInfo[14] + '  ' + nhicInfo[18]); // ���ñ����ȣ3
        ma_Sunkiho4 := trim(nhicInfo[15] + '  ' + nhicInfo[19]);
        // ���ñ����ȣ4 - ġ�� //2008.12.8 ��������� ������

        ma_overseas  := nhicInfo[20]; // �ⱹ�� ����
        ma_jangeil   := nhicInfo[21]; // �������

        ma_chaSangNo := trim(nhicInfo[24]);
         // ������ Ư����ȣ(4) + ������(8) + ������(8) + ����(1)
         // ���� 1: ������ 1�� ���� 2: ������ 2��
         // 1�� ����(C)
         // 2009.04.01 2�� ����(E, F)"


        // sanjung := copy(nhicInfo[22], 5, 15); // ����Ư�ʵ�ϴ����
        // ver.2.125 ����Ư�� ��Ϲ�ȣ
        // sanjung := trim(lblRegNo.Caption);

        // 2012.7.1
        // ��Ϲ�ȣ(15) + ��Ͽ������ȣ(8) + Ʋ��������(8) + ������ıⰣ ������(8) + ������(8) + ������(8)
        ma_artTeeth1 := copy(nhicInfo[31], 1, 15); // Ʋ�ϵ�Ϲ�ȣ(���)
        ma_artTeeth2 := copy(nhicInfo[32], 1, 15); // Ʋ�ϵ�Ϲ�ȣ(�Ͼ�)

        ma_artYoyang1 := copy(nhicInfo[31], 16, 8);
        ma_artYoyang2 := copy(nhicInfo[32], 16, 8);
        // *****

        // ver.2.133 ���ö�Ʈ
        // "��Ϲ�ȣ(18)+��Ͽ������ȣ(8)
        // +�����ܰ�ü���(8)+��������������(8)+������ȿ��(8)+�����ȿ��(8)"
        ma_implTeeth1 := copy(nhicInfo[36], 1, 18); // ���ö�Ʈ ��Ϲ�ȣ(1)
        ma_implTeeth2 := copy(nhicInfo[37], 1, 18); // ���ö�Ʈ ��Ϲ�ȣ(2)

        ma_implYoyang1 := copy(nhicInfo[36], 19, 8);
        ma_implYoyang2 := copy(nhicInfo[37], 19, 8);

        ma_RestrictCd := nhicInfo[35]; // �޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"

        // ver.3.42 ��ֿ���
        // "Y : ��ֿ�
        // N : ����ֿ�"
        // ������ Ư����ȣ(E) ����� �Ǵ� �Ƿ�޿� 1��2�� ������� ��츸 ���� ����
        ma_special := nhicInfo[39]; // Y : ��ֿ� N: ����ֿ�

        {
          1�ǰ�����
          2��ȣ1��
          3��ȣ2��
          4�Ϲ�
          5��ȣ4��
          6��ȣ8��
          7����
          8�ں�
          9������1��
          10������2��
          11������2������� }

        if ((ma_cancelDay <> '') and ((trim(ma_Sunkiho1) = '') or
          (trim(ma_Sunkiho4) = '0000')) and (trim(ma_Sunkiho2) = '') and
          (trim(ma_Sunkiho3) = '') and (trim(ma_Sunkiho4) = '')) or
          (ma_RestrictCd = '01') // 01 : ���ڰ���
          or (ma_RestrictCd = '02') // 02 : �����ü�� �޿�������"
          or not((ma_hira_jong = '1') or // �����ڰ���.
          (ma_hira_jong = '2') or (ma_hira_jong = '4') or (ma_hira_jong = '5') or
          (ma_hira_jong = '6') or (ma_hira_jong = '7') or (ma_hira_jong = '8'))

        then
        begin // ���׺���(���ڰ���)
          ma_jongbeul := '4'; // '�Ϲ�';
          ma_K_Number := '';
          ma_Kiho := '';
          ma_PiboName := '';
        end
        else if copy(ma_chaSangNo, 1, 1) = 'C' then
        begin
          ma_jongbeul := '9'; // '������1��';
        end
        else if copy(ma_chaSangNo, 1, 1) = 'E' then
        begin
          // jongbeul := '������2��';
          // ver.3.42 ��ֿ��� Ȯ�� -------------
          if ma_special = 'Y' then
            ma_jongbeul := '11' // '������2�������'
          else
            ma_jongbeul := '10'; // '������2��';
          // ------------------------------------
        end
        else if copy(ma_chaSangNo, 1, 1) = 'F' then
        begin
          ma_jongbeul := '11'; // '������2�������';
        end

        else if ma_hira_jong = '7' then
        begin
          ma_jongbeul := '2'; // '��ȣ1��';
        end
        else if (ma_hira_jong = '8') and (ma_jangeil <> '') then
        begin
          ma_jongbeul := '6'; // '��ȣ8��';
          // isJange := true;      // ����â���� ��ִ� ������ü��ָ� ���ϹǷ� ������ ��ֶ���ϸ� �ȵȴ�.
        end
        else if (ma_hira_jong = '8') then
        begin
          // jongbeul := '��ȣ2��';
          // ver.3.42 ��ֿ��� Ȯ�� -------------
          if ma_special = 'Y' then
            ma_jongbeul := '6' // '��ȣ8��'
          else
            ma_jongbeul := '3'; // '��ȣ2��';
          // ------------------------------------

        end
        else
        begin
          ma_jongbeul := '1'; // '����';
        end;

           Result := true;
     end
     else
     begin

           ma_jongbeul := '4'; //�Ϲ�
          Result := False;

     end;
    // ����
    // if (ma_jongbeul <> '') then
    // begin
    // for iIndex := 0 to JongbyulList.Count - 1 do
    // begin
    // if (JongbyulList.Strings[iIndex] = ma_jongbeul) then
    // begin
    // ma_jongbeul := IntToStr(iIndex + 1);
    // break;
    // end;
    // end;
    // end;





    PageControl2.ActivePageIndex := 1;
    edtgaip.Text := nhicInfo[6]; // Response_KeyName_M1[5,1];
    edtSanjung.Text := '';
    edtTeakryeRegNo.Text := '';

    varJiwon :=    copy(trim(nhicInfo[22]),1,1) ;//= 'H'

    edtJiwon.Text :=    varJiwon;

    cbJong.ItemIndex := strtoint(ma_jongbeul) - 1;
    // cbJong.Items.IndexOf(ma_jongbeul) ;
    cbRel.ItemIndex := 0;
    edtGiho.Text := ma_Kiho;
    edtsaupname.Text := '';
    edtJungNo.Text := ma_K_Number;
    edtOwnDay.Text := nhicInfo[5]; // �����
    edtEndDay.Text := nhicInfo[9]; // �޿�������
    edtSisulKiho.Text := '';
    edtCancelRegNo.Text := copy(trim(nhicInfo[25]), 5, 15); // �����ϵ�Ϲ�ȣ
    edtPatriotNo.Text := '';
    edthandicapNo.Text := '';

    // =============================================
    //   edtBudam.Text := '';
    cbBudam.ItemIndex := BoninBudamIndex(ma_budam);
    edtBudam.text:=  ma_budam;

    edtspKiho.Text := '';
    edtbonNO.Text := '';
    edtjanek.Text := ma_janek;

    edtartTeeth1.Text := ma_artTeeth1;
    edtartTeeth2.Text := ma_artTeeth2;

    edtimplTeeth1.Text := ma_implTeeth1;
    edtimplTeeth2.Text := ma_implTeeth2;

    JSunkihoEdit1.Text := ma_Sunkiho1;
    JSunkihoEdit2.Text := ma_Sunkiho2;
    JSunkihoEdit3.Text := ma_Sunkiho3;
    JSunkihoEdit4.Text := ma_Sunkiho4;

    edtSangsil.Text := ma_cancelDay;


//    showmessage('1');
    // ����Ư�� numberChar
    for i := 0 to 13 do
    begin
      j := NumberChar[i];
      if nhicInfo[j] <> '' then
      begin
      //  showmessage('1-1');

        teakryeCode := nhicInfo[j]; // Response_KeyName_M1[ numberChar[i], 1];
        teakryeCode := copy(teakryeCode, 1, 4); // Ư����ȣ(4)

        ma_teakRye := teakryeCode;

        if trim(edtSanjung.Text) = '' then
          edtSanjung.Text := teakryeCode
        else
          edtSanjung.Text := edtSanjung.Text + '|' + teakryeCode;

        // ToDo: �����ڵ�� �����뿡�� ������̴�.
        // if trim(uppercase(edtSanjung.text)) = 'V'  then
        // edtSanjung.text:='V001';

        teakryeCode := nhicInfo[j];
        // Response_KeyName_M1[ j, 1];//Response_KeyName_M1[ numberChar[i], 1];
        teakryeCode := copy(teakryeCode, 5, 15); // ��Ϲ�ȣ(15)

        ma_teakryeCode := teakryeCode;

        if trim(edtTeakryeRegNo.Text) = '' then
          edtTeakryeRegNo.Text := teakryeCode
        else
          edtTeakryeRegNo.Text := edtTeakryeRegNo.Text + '|' + teakryeCode;

        edtTeakRyeCodeAll.Text := edtTeakRyeCodeAll.Text + '|' + nhicInfo[j];
        // Response_KeyName_M1[ numberChar[i], 1];

      end;
    end;

//    showmessage('2');

    edtSanjung.Hint := edtSanjung.Text;
    ma_sanjung      := edtTeakRyeCodeAll.Text;

//    showmessage('3');
//    if trim(nhicInfo[9]) <> '' then
//    begin
//          showmessage('�޿������� ('+trim(nhicInfo[9]) +')�Դϴ�.');
//
//          ma_RestrictCd := nhicInfo[35]; // �޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
//    end;


     if copy(trim(nhicInfo[22]),1,1) = 'H' then
     begin

           showmessage('��ͳ�ġ����ȯ�� �����ݴ�� �Դϴ�.');
           varJiwon  := 'H';
           edtJiwon.text:=varJiwon;
     end;

    if trim(nhicInfo[35]) = '01' then
    begin
          showmessage('�޿������� (���ڰ���) �Դϴ�.');

        //  ma_RestrictCd := nhicInfo[35]; // �޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
    end;
        if trim(nhicInfo[35]) = '02' then
    begin
          showmessage('�޿������� (�����ü�� �޿�������) �Դϴ�.');

        //  ma_RestrictCd := nhicInfo[35]; // �޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
    end;


//    showmessage('4');
    if nhicInfo[53] <> 'IWS10001' then
    begin

      showmessage(nhicInfo[54]);
      //

    end
    else
    begin

      // ���������� �ڰ������Դϴ�.(������)
      // Mers Disply
      {
        (������)
        (�ݸ������)
        (�ϻ�������)
        (�湮��)
        (�ߵ��Ա���)
      }
//    showmessage('5');

      if Pos('������', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(������)�Դϴ�');
      end;
      if Pos('�ݸ������', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�ݸ������)�Դϴ�');
      end;
      if Pos('�ϻ�������', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�ϻ�������)�Դϴ�');
      end;
      if Pos('�湮��', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�湮��)�Դϴ�');
      end;
      if Pos('�ߵ��Ա���', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�ߵ��Ա���)�Դϴ�');
      end;


//     showmessage('6');



      // ��ȸ �� �ڰ��� �����Ѵ�.
      // ToDo : �ڰ� �����丮 ����?
      // SaveGogek;
     case  cbJong.ItemIndex   of

        0, 3:  PageControl1.ActivePage := tbBohum;
        1,2,4,5:  PageControl1.ActivePage := tbBoho;

     end;

      if ma_Chart <> '' then
        saveGogekpibo(lblPiboid.Caption,
          ma_Chart,
          ma_Paname, // ma_PiboName,
          ma_K_Number,
          ma_jongbeul, // ����
          edtZip.Text, // �������ȣ
          memAdd.Text, // ���ּ�
          ma_Kiho, // ���ձ�ȣ
          edtHphone.Text, // ����ȭ��ȣ
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
          formatdatetime('YYYY-MM-DD', now), // johoidate
          ma_special, // jange //Y : ��ֿ� N: ����ֿ�
          ma_RestrictCd, // restricted //�޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
          ma_cancelDay, //
          ma_hira_jong, // hira_Jong
          ma_PiboName // sedejuNm
          );

      if ma_overseas = 'Y' then
      begin

        showmessage('�ⱹ���Դϴ�.');
        cbJong.ItemIndex := 3; // �Ϲ�
      end;
    end;

    end
    else
    begin
    showmessage('�ڰ���ȸ ����');

    cbJong.ItemIndex := 3; // �Ϲ�

    end;
  // S := Format('"%s" "%s" "%s" "%s" "%s" "%s" "%s" "%s" "%s"',
  // [hkind, strJuminNo, strPaitName,
  // strkiho, clientInfo, strJumin2,
  // varJagyukID, varJagyukPass, sDate]);
  //
  // ShellExecute(0, 'open',
  // Pchar(ExtractFilePath(Application.ExeName)
  // + 'nhic.exe'), pChar(S), nil, SW_SHOWNORMAL);

  // tmpHandle := FindWindow('Form1',nil);
  // SetWindowPos(tmpHandle,HWND_TOPMOST,left,Top,Width,Height,SWP_SHOWWINDOW);
  finally

        FreeLibrary(Hwebservice);

  end;

end;

procedure Tmain_f.btnJakyukJohoiClick(Sender: TObject);
begin
    if trim(edtName.Text) =  '' then
    exit;

      //ClientProxy.exe ���� ������ JakyukJohoi�� ���� �ɸ���.
      killProcess('ClientProxy.exe');


      // �ڰ���ȸ ��ư ������ �ڰ���ȸ ����.
      JakyukJohoi(edtJumin.Text + edtJumin2.Text,
         edtname.Text,
         formatdatetime('YYYYMMDD', now));



      // if isLoading = true then
      cbChoje.ItemIndex := loadChojae(main_f.edtChart.Text, now);


     // Dll ����...
  //   FreeLibrary(Hwebservice);
end;

procedure Tmain_f.Button26Click(Sender: TObject);
begin
  edtEngName.Text := grdEngName.Cells[1, grdEngName.row];
  pnlEngName.visible := False;
end;

procedure Tmain_f.Button27Click(Sender: TObject);
begin
  pnlEngName.visible := False;
end;


procedure Tmain_f.ViewReferHospPatList(chart:string);
begin

  if not Assigned(referHospPatList_f) then
    referHospPatList_f := TreferHospPatList_f.Create(application);

   referHospPatList_f.LoadFrame;

//  referHospPatList_f.ReferHospPatListFrame_fr1.
//   searchRequestList(0, formatdatetime('YYYY-MM-DD', now-10),
//                                          formatdatetime('YYYY-MM-DD', now));


  if referHospPatList_f.ShowModal = mrOk then
  begin

    isReferer := true;  //���� �Ƿ�ȯ�ڸ� ó���ϰ� �ִ�.


    //=================ȯ�ڵ�� - ����=====================================================

    //1. �����ڵ�� �������� �������.
    //2. �����ڵ�� �׸��忡 ������  Pacs���ڵ�� �����ڵ带 ã�ƿ���.
    //3. ��ȯ�� ����Ҷ�
    //     ma_rp_RequestPK ��
    //     �����ڵ� ma_ReferHospCode,
    //     ������ ma_ReferHospName�� �ʱ�ȭ ��Ű�� �ȵȴ�.

     main_f.edtName.text           :=   ReferHospPatListFrame_fr1.grdList.Cells[3, ReferHospPatListFrame_fr1.grdList.Row];

     main_f.edtChart.text          :=   ReferHospPatListFrame_fr1.grdList.Cells[4, ReferHospPatListFrame_fr1.grdList.Row];
     main_f.edtCPhone.text         :=   ReferHospPatListFrame_fr1.grdList.Cells[5, ReferHospPatListFrame_fr1.grdList.Row];

     main_f.edtreferHospName.text  :=   ReferHospPatListFrame_fr1.grdList.Cells[2, ReferHospPatListFrame_fr1.grdList.Row];

     main_f.edtreferHospCode.text  :=   LoadReferHospID(ReferHospPatListFrame_fr1.grdList.Cells[12, ReferHospPatListFrame_fr1.grdList.Row]);

     main_f.edtrHosp.text          :=   ReferHospPatListFrame_fr1.grdList.Cells[12, ReferHospPatListFrame_fr1.grdList.Row];
     main_f.edtrHospID.text        :=   '';     //email�ּ�

     ma_rp_RequestPK               :=   ReferHospPatListFrame_fr1.grdList.ints[11, ReferHospPatListFrame_fr1.grdList.Row];
     ma_ReferHospName              :=   ReferHospPatListFrame_fr1.grdList.Cells[2, ReferHospPatListFrame_fr1.grdList.Row];
     ma_ReferHospCode              :=   LoadReferHospID(ReferHospPatListFrame_fr1.grdList.Cells[12, ReferHospPatListFrame_fr1.grdList.Row]);

     ma_refer_neyuk                := ReferHospPatListFrame_fr1.grdList.Cells[8, ReferHospPatListFrame_fr1.grdList.Row];


     main_f.SearChname(main_f.edtname.Text);
    // main_f.edtJumin.SetFocus;


    //=================  ���� =====================================================

  end;

end;


procedure Tmain_f.btnReferHospClick(Sender: TObject);
begin

     ViewReferHospPatList('');
end;

procedure Tmain_f.btnReferHospDeleteClick(Sender: TObject);
begin

    edtreferHospName.Text := '';
    edtReferHospCode.Text := '';
    edtRHosp.Text         := '';
    edtRHospID.Text       := '';
    cbReferHospDoc.Clear;

end;

procedure Tmain_f.Button2Click(Sender: TObject);
begin
     showGogekAlret(edtChart.text, edtname.text);
end;





procedure Tmain_f.btnJubsuClick(Sender: TObject);
var
  varDay, varChart: string;
  varJong: Integer;
  jubsuDoc, jubsuTeam : string;
begin

  if trim(edtChart.Text) = '' then
  exit;


  varDay := formatdatetime('YYYY-MM-DD', DaegiFrame_fr1.dtDate.datetime);
  varChart := edtChart.Text;
  varJong := cbJong.ItemIndex;

   if (varday <>  formatdatetime('YYYY-MM-DD', now)) then
   begin
    if application.MessageBox(pchar('�������� ������ �ƴմϴ�. �׷��� �����մϱ�?'), '���� ��¥ ���� Ȯ��',
      MB_YESNO) = 7 then // yes : 6, No : 7
    begin

      exit;

    end;

   end;

  // ToDo : ������ [���豸��]�� �ǰ����� �̸� �ڰ���ȸ�� �ǰ��������� üũ


  if  not (varJong  in [ 3, 6, 7] )  then //�Ϲ� //����   //�ں�
  begin
        if (JakyukJohoi(edtJumin.Text + edtJumin2.Text, edtname.Text,
           formatdatetime('YYYYMMDD', now), False) = False)  then
        begin

              //�ڰ���ȸ�� �ȵǰ� ������ �Ϲ��� �ƴϸ�
              if application.MessageBox(pchar('�����ڰ��� ��ȸ �� �� �����ϴ�.'
                  + #10#13 +  ' �Ϲ����� �ٲ㼭  �����մϱ�?'), '�����ڰ� ��Ȯ��',
                MB_YESNO) = 6 then // yes : 6, No : 7
              begin
                 cbJong.ItemIndex := 3;
              end
              else
              begin

                      exit;
              end;



        end;
  end
  else if (varJong = 3)  then//�Ϲ��̸� �׳� ��������...
  begin
//         and (JakyukJohoi(edtJumin.Text + edtJumin2.Text,  edtname.Text,
//              formatdatetime('YYYYMMDD', now),False) = true) then
//  begin
//
//    if application.MessageBox(pchar('�����ڰ��� �ֽ��ϴ�. ��� �Ϲ����� �����մϱ�?'), '�Ϲ� ���� Ȯ��',
//      MB_YESNO) = 6 then // yes : 6, No : 7
//    begin
//
//      cbJong.ItemIndex := 3;
//
//    end
//    else
//    begin
//
//    end;
//
//  end;
  end;


  // �ڰ���ȸ�� ������ �Ϲ����� �����ؾ� �� ���� ?

  // **����Ŭ�������� ȯ�� ������ ���ܰ��� Ȯ���� �ּ���.
  // ������ Ȧ¦���� ���� �����̰� ���̰� 40�� �Ѱ� ����Ŭ��������
  // ȯ�� ������ ���ܰ��� Ȯ���� �ּ���.
  if ( trim(copy(edtJumin.Text, 1, 2)) <> '' )  and

    ((strtoint(copy(edtJumin.Text, 1, 2)) mod 2)
    = (strtoint(formatdatetime('YYYY', now)) mod 2)) then
  begin

    if jumintogender(edtJumin.Text + edtJumin2.Text) = 'F' then
    begin
      if strtoint(juminToNai(edtJumin.Text + edtJumin2.Text)) >= 40 then

      begin

        if cbTreatRoom.ItemIndex = cbTreatRoom.ComboItems.IndexInColumnOf(0,
          'BRST') then

          showmessage('���ܰ��� Ȯ���� �ּ���.');

      end;
    end;
  end;

  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ma_jubsu');
    sql.Add('where chart=:chart and jin_day=:jin_day and isInPat=:isInpat');
    parambyname('Jin_Day').asString := varDay;
    parambyname('Chart').asString := varChart;
    parambyname('isInPat').asString := inttostr(cbIO.ItemIndex);
    open;
    if not isEmpty then
    begin

        jubsuDoc := fieldByName('Doc').AsString;
        jubsuTeam := fieldByName('team').AsString;


      if application.MessageBox(pchar(
           edtname.Text + '(' + edtChart.Text +
           ')���� ���� ������ ������ �ֽ��ϴ�.'
           + #10#13 + '�׷��� ���� �Ͻðڽ��ϱ�?'),
        'ȯ�� ���� ������Ʈ  Ȯ��1',
           MB_OKCANCEL) <> 1 then
      begin


        exit;

      end
      else
      begin
        //������ �� �����/������ Ȯ���ؼ�
        //���᳻���ִ��� Ȯ���ϰ�
        //���᳻�������� �����/���� ������Ʈ



      end;

    end;
  end;

  SaveGogek;
  Jubsu;




end;

procedure Tmain_f.Jubsu;
var
  isPragnan: string;
  teamCode: string;
  docName, doc_Code: string;
  isJiwon, isBohum100 : string;
begin

  // DaegiTeamSave :�����Ҷ� ���� ȯ���� �⺻������ �������� ����
  if configvalue.varDaegiTeamSave = '1' then
  begin
    updateGogekTeam(edtChart.Text, cbDoc.ColumnItems[cbDoc.ItemIndex, 2],
      cbHyg.Text, cbDoc.ColumnItems[cbDoc.ItemIndex, 0]);

    if cbDoc.ColumnItems[cbDoc.ItemIndex, 1] <> '' then
      pnlTeamColor.Color := stringtoColor(cbDoc.ColumnItems[cbDoc.ItemIndex, 1])
    else
      pnlTeamColor.Color := clWhite;

  end;

  if chkPregnan.Checked = true then
    isPragnan := '1'
  else
    isPragnan := '0';

  teamCode := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 0]);
  docName := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 2]);
  doc_Code := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 4]);

  isJiwon :=  edtJiwon.Text;

  if cbBohum100.Checked = true then
    isBohum100 := '1'
  else
    isBohum100 := '0';
//  isBohum100 :=  ma_isBohum100 ;
  //ToDO : ����, �����, �����ڵ�, �Կ����� �� �ϳ���  �ٸ��� ������ ����.
  DayJubsu(
    DaegiFrame_fr1.dtDate.date ,//now, // �������
    edtChart.Text,                     // ���Ϲ�ȣ
    formatdatetime('YYYY-MM-DD', now), // ��������
    now,                               // �����ð�
    '0',                               // �������� - 0: �������
    edtFirst.Text,                     // ���ʳ�����
    teamCode,                          // ���ڵ� - �����
    edtJumin.Text + edtJumin2.Text,    // �������  + Gender
    edtZip.Text,                       // �����ȣ
    docName,                           // �����
    cbHyg.Text,                        // �������
    edtname.Text,                      // ȯ�ڸ�
    edtCphone.Text,                    // �ڵ�����ȣ
    cbJong.ItemIndex,                  // ����                jongbyul
    cbChoje.ItemIndex, // ����                chojae
    edtSanjung.Text, // ����Ư�ʹ�ȣ        sanjung
    edtTeakryeRegNo.Text, // ����Ư�� ��Ϲ�ȣ
    cbSanCode3.ItemIndex, // ���ܰ�������        health
    isPragnan, // �ӽſ���            pregnan
    lblChaSangNo.Caption, // ������              chasangno
    edtBudam.Text, // ��ȣ���κδ��ڵ�    bontype
    edtjanek.Text, // ��ȣ�ܾ�            yujikum
    '16', // KwaMok  �������а�
    teamCode,//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0],
    doc_code,
    isJiwon,
    isBohum100,
    edtartTeeth1.Text,
    // Ʋ�Ϲ�ȣ Upper      artteeth1
    edtartTeeth2.Text, // Ʋ�Ϲ�ȣ Lower      artteeth2
    edtimplTeeth1.Text, // ���ù�ȣ Upperteeth implteeth1
    edtimplTeeth2.Text,// ���ù�ȣ LowerTeeth implteeth2
    StrToIntDef(lblCarId.caption,0), //�ں����̵�
    0 //0:�Ϲ����� 1: �ڵ�����
     );

end;

procedure Tmain_f.PageControl3Change(Sender: TObject);
begin
     promiseFrame_fr.SelectPromise(0);
end;

procedure Tmain_f.ParseJson;
const
  StrJson =
  // '{'+
  // '  "aResult":'+
  // '  ['+
  // '{'+
  // '      "sFirstName":"��",'+
  // '      "aItems":'+
  // '      ['+
  // '                {'+
  // '          "name":"Kim Riha",'+
  // '          "score":"99"'+
  // '        }'+
  // ','+
  // '                                  '+
  // '        {'+
  // '          "name":"Kim Leeha",'+
  // '          "score":"55"'+
  // '        }'+
  // ','+
  // '                                  '+
  // '        {'+
  // '          "name":"Kim Reeha",'+
  // '          "score":"41"'+
  // '        }'+
  // '      ]'+
  // '}';
  // '  ]'+
  // '}';

    '{' + '    "products": {' + '        "Men''s Sneakers": {' +
    '            "instock": false,' + '            "size": "423",' +
    '            "manufacturer": "Adidas",' +
    '            "lastcheck": "20120529"' + '        },' + '        "Purse": {'
    + '            "instock": true,' + '            "size": "not applicable",' +
    '            "manufacturer": "Prada",' +
    '            "lastcheck": "20120528"' + '        },' +
    '        "Men''s Hood": {' + '            "instock": false,' +
    '            "size": "M",' + '            "manufacturer": "Generic",' +
    '            "lastcheck": "20120529"' + '        }' + '    },' +
    '    "total": 41,' + '    "available": 30' + '}';

var
  LJsonObj: TJSONObject;
  LJPair: TJSONPair;
  LProducts: TJSONValue;
  LProduct: TJSONValue;
  LItem: TJSONValue;
  LIndex: Integer;
  LSize: Integer;
begin
  LJsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(StrJson), 0)
    as TJSONObject;
  try
    LProducts := LJsonObj.Get('products').JsonValue;
    LSize := TJSONArray(LProducts).Size;
    for LIndex := 0 to LSize - 1 do
    begin
      LProduct := TJSONArray(LProducts).Get(LIndex);
      LJPair := TJSONPair(LProduct);

      writeln(Format('Product Name %s', [LJPair.JsonString.Value]));
      // Format('Product Name %s',[LJPair.JsonString.Value]);
      for LItem in TJSONArray(LJPair.JsonString) do
      begin
        if TJSONPair(LItem).JsonValue is TJSONFalse then
          writeln(Format('  %s : %s', [TJSONPair(LItem).JsonString.Value,
            'false']))
        else if TJSONPair(LItem).JsonValue is TJSONTrue then
          writeln(Format('  %s : %s',
            [TJSONPair(LItem).JsonString.Value, 'true']))
        else
          writeln(Format('  %s : %s', [TJSONPair(LItem).JsonString.Value,
            TJSONPair(LItem).JsonValue.Value]));
      end;
    end;
  finally
    LJsonObj.Free;
  end;
end;



procedure Tmain_f.LoadJinChalCode(loadKind:integer=1); //��������Ʈ(1)������ ma_choje���, ��������Ʈ(2)������ +1

var

  dWorkDate: TDateTime;
  jin_day1, jin_day2 , jin_time: string;

  nChoJae  : Integer;
  nAge     : Integer;
  jange    : boolean;
  iGumjin  : integer;
  jinilsu  : string;
  nDanga   : integer;

begin

     //ToDo : ������ �ڵ� �ֱ�
//
      jin_day1   := formatdatetime('YYYY-MM-DD', datetimepicker1.date);
      jin_day2   := formatdatetime('YYYY-MM-DD', datetimepicker1.date);
      jin_time   := '';
      case loadKind  of  //loadKind : ��������Ʈ(1)������ ma_choje���, ��������Ʈ(2)������ +1

          1:   nChoJae   :=  ma_choje;// +1 ;  //1: ���� 2: ����  5: ������ ���� ����
          2:   nChoJae   :=  ma_choje + 1 ;    //1: ���� 2: ����  5: ������ ���� ����
      end;

      nAge      :=  strtoint(jumintoNai(ma_jumin));
      dWorkDate :=  strtodate(jin_day1);
      jange     :=  false;
      iGumjin   :=  ma_healthSanCode;


      jinchalRyoCode :=
            MakeJinchalRyoCode(
            nChoJae,
            nAge,
            dWorkDate,
            jange,
            iGumjin);

          grdJX2.RemoveRows(1, grdJX2.RowCount-1 );

      if jinchalRyoCode <> '' then
      begin

          nDanga := getSugaGeum(jinchalRyoCode, // varCode:string;
             jin_day1,  // jinday:string;
             '0'); // kind:string);

          grdJX2.AddRow;

          grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '������';

          grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode);
          grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
          grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
          grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
          grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
          grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
          grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
          grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
          grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
          grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
          grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
          grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
          grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
          grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
          grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
          grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
          grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
          grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode;
          grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode);//FieldByName('Su_kor_name').AsString;
          grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
          grdJX2.Cells[22, grdJX2.RowCount - 1]    := jin_day1;//FieldByName('jin_day').AsString;
          grdJX2.Cells[23, grdJX2.RowCount - 1]    := ma_jinTime;//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
          grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
          grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
          grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�
//
//
//
//
     end;

       // ��䰡���ڵ� ���ϱ�
        jinchalRyoCode_gasan := '';
        if (DayOfWeek(dWorkDate) = 7) // ����ϸ� ���
          and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 ����
          and (nChoJae <> 3) and (nChoJae <> 4) then // ���簡 �ɾ߰� �ƴϸ�
        begin

          jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
            jange, iGumjin, true);
        if  jinchalRyoCode_gasan <> '' then
        begin

           nDanga := getSugaGeum(jinchalRyoCode_gasan, // varCode:string;
            jin_day1,  // jinday:string;
             '0'); // kind:string);

          grdJX2.AddRow;

          grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '������';

          grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
          grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
          grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
          grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
          grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
          grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
          grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
          grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
          grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
          grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
          grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
          grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
          grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
          grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
          grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
          grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
          grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
          grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode_gasan;
          grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode_gasan);//FieldByName('Su_kor_name').AsString;
          grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
          grdJX2.Cells[22, grdJX2.RowCount - 1]    := jin_day1;//FieldByName('jin_day').AsString;
          grdJX2.Cells[23, grdJX2.RowCount - 1]    := ma_jinTime;//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
          grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
          grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
          grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�

        end;
    end;
//
end;
procedure Tmain_f.btnTxViewClick(Sender: TObject);

var

  dWorkDate: TDateTime;
  jin_day1, jin_day2 , jin_time: string;

  nChoJae  : Integer;
  nAge     : Integer;
  jange    : boolean;
  iGumjin  : integer;
  jinilsu  : string;
  nDanga   : integer;

begin

     //ToDo : ������ �ڵ� �ֱ�

     LoadJinChalCode;
//
//      jin_day1   := formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//      jin_day2   := formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//      jin_time   := '';
//
//      nChoJae   :=  ma_choje;
//      nAge      :=  strtoint(jumintoNai(ma_jumin));
//      dWorkDate :=  strtodate(jin_day1);
//      jange     :=  false;
//      iGumjin   :=  ma_healthSanCode;
//
//
//      jinchalRyoCode :=
//            MakeJinchalRyoCode(
//            nChoJae,
//            nAge,
//            dWorkDate,
//            jange,
//            iGumjin);
//
//
//          grdJX2.RemoveRows(1, grdJX2.RowCount-1 );
//
//          nDanga := getSugaGeum(jinchalRyoCode, // varCode:string;
//             jin_day1,  // jinday:string;
//             0); // kind:string);
//
//          grdJX2.AddRow;
//
//          grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '������';
//
//          grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode);
//          grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
//          grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
//          grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
//          grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
//          grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
//          grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
//          grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
//          grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
//          grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
//          grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
//          grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
//          grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
//          grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
//          grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
//          grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
//          grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
//          grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode;
//          grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode);//FieldByName('Su_kor_name').AsString;
//          grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
//          grdJX2.Cells[22, grdJX2.RowCount - 1]    := jin_day1;//FieldByName('jin_day').AsString;
//          grdJX2.Cells[23, grdJX2.RowCount - 1]    := ma_jinTime;//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
//          grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
//          grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
//          grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�
////
////
////
////
//       // ��䰡���ڵ� ���ϱ�
//        jinchalRyoCode_gasan := '';
//        if (DayOfWeek(dWorkDate) = 7) // ����ϸ� ���
//          and (dWorkDate >= strtodate('2013-10-01')) // 2013-10-01 ����
//          and (nChoJae <> 3) and (nChoJae <> 4) then // ���簡 �ɾ߰� �ƴϸ�
//        begin
//
//          jinchalRyoCode_gasan := MakeJinchalRyoCode(nChoJae, nAge, dWorkDate,
//            jange, iGumjin, true);
//
//
//           nDanga := getSugaGeum(jinchalRyoCode_gasan, // varCode:string;
//            jin_day1,  // jinday:string;
//             0); // kind:string);
//
//          grdJX2.AddRow;
//
//          grdJX2.Cells[0, grdJX2.RowCount -  1] :=  '������';
//
//          grdJX2.Cells[1, grdJX2.RowCount - 1]     := getSugaName(jinchalRyoCode_gasan);
//          grdJX2.ints[2, grdJX2.RowCount - 1]      := nDanga;
//          grdJX2.Cells[3, grdJX2.RowCount - 1]     := '1';//FieldByName('jin_qty').AsString;
//          grdJX2.Cells[4, grdJX2.RowCount - 1]     := '1';//FieldByName('div').AsString;
//          grdJX2.Cells[16, grdJX2.RowCount - 1]    := '1';//FieldByName('jin_Ilsu').AsString;
//          grdJX2.ints[5, grdJX2.RowCount  - 1]     :=  1;//FieldByName('dan_qty').AsInteger;
//          grdJX2.ints[7, grdJX2.RowCount  - 1]     :=  0;//FieldByName('gub_gu').AsInteger;//�޿�����
//          grdJX2.Cells[8, grdJX2.RowCount - 1]     := '';//FieldByName('Modality').AsString;
//          grdJX2.Cells[9, grdJX2.RowCount - 1]     := '';//  FieldByName('user_key').AsString;
//          grdJX2.Cells[10, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu1').AsString;
//          grdJX2.Cells[11, grdJX2.RowCount - 1]    := '';//FieldByName('Su_gu3').AsString;
//          grdJX2.Cells[12, grdJX2.RowCount - 1]    := '';//FieldByName('jin_soa').AsString;
//          grdJX2.Cells[13, grdJX2.RowCount - 1]    := '';//FieldByName('jin_simya').AsString;
//          grdJX2.Cells[14, grdJX2.RowCount - 1]    :=  '1';//FieldByName('iOrder').AsString;
//          grdJX2.Cells[15, grdJX2.RowCount - 1]    :=  '1';//FieldByName('sort_key').AsString;
//          grdJX2.Cells[17, grdJX2.RowCount - 1]    := '';//FieldByName('Hwakin_key').AsString;
//          grdJX2.Cells[18, grdJX2.RowCount -1]     := '';//FieldByName('jins_key').AsString;
//          grdJX2.Cells[19, grdJX2.RowCount - 1]    := jinchalRyoCode_gasan;
//          grdJX2.Cells[20, grdJX2.RowCount - 1]    := getSugaName(jinchalRyoCode_gasan);//FieldByName('Su_kor_name').AsString;
//          grdJX2.Cells[21, grdJX2.RowCount - 1]    := '';//FieldByName('gasan').AsString;
//          grdJX2.Cells[22, grdJX2.RowCount - 1]    := jin_day1;//FieldByName('jin_day').AsString;
//          grdJX2.Cells[23, grdJX2.RowCount - 1]    := ma_jinTime;//formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);
//          grdJX2.Cells[24, grdJX2.RowCount - 1]    := '';//FieldByName('su_eng_name').AsString;
//          grdJX2.Cells[25, grdJX2.RowCount - 1]    := '';//FieldByName('except_code').AsString;
//          grdJX2.ints[6, grdJX2.RowCount - 1]      :=  nDanga;        //�ݾ� = �ܰ� * ����* �ϼ�
//
//        end;
//
//
//
//
//
  setJinryo_s(
      ma_jubsu_id,
      main_f.grdJx2,
      lblChart.Caption,
      '',// main_f.cbTreatRoom.ColumnItems[main_f.cbTreatRoom.ItemIndex, 0],
      '',
      inttostr(ma_PatIn),
      formatdatetime('YYYY-MM-DD', datetimepicker1.date),
      formatdatetime('YYYY-MM-DD', datetimepicker2.date),
      2); //0:���᳻�� 1:û������ 2: ó�溸��

end;

procedure Tmain_f.btnUpdateClick(Sender: TObject);
begin
 // canClose := true;
//  FormCloseQuery(self, CanClose);
  Close;
  if wCanClose = true then
  begin

       fileWebUpdate(currentDir);
  end;

end;

procedure Tmain_f.Button33Click(Sender: TObject);
begin
      main_f.grdJX2.RemoveRows(1, main_f.grdJX2.RowCount-1 );

      pnlJinryo.Visible := false;
end;

procedure Tmain_f.btnMisuSunapClick(Sender: TObject);
begin
      misuSunap_f := TmisuSunap_f.Create(application);
      misuSunap_f.edtChart.Text := edtChart.text;
      misuSunap_f.edtName.Text := edtName.text;
      misuSunap_f.DateTimePicker1.Date := now;
      misuSunap_f.DateTimePicker2.Date := now;
      misuSunap_f.cbWhole.Checked := true;
      misuSunap_f.DateTimePicker2.enabled := false;
      misuSunap_f.DateTimePicker3.enabled := false;

//      misuSunap_f.DateTimePicker2.Visible := false;
//      misuSunap_f.DateTimePicker3.Visible := false;
//      misuSunap_f.lblTerm.Visible         := false;
//      misuSunap_f.lblTerm2.Visible        := false;
//  misuSunap_f.btnMisuSearchClick(nil);
 if   misuSunap_f.ShowModal = mrok then
 begin

      // ToDo : Repair
      DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);

 end;

end;

procedure Tmain_f.btnStarClick(Sender: TObject);
var
  Path: string;
begin
  Path := extractFilePath(paramStr(0)) + 'html\st\' +
    '[��ǥ 4] ��ͳ�ġ����ȯ�� ����Ư�� ���.html';
  ShellExecute(GetDeskTopWindow, 'open', pchar('IEXPLORE.EXE'), pchar(Path),
    nil, SW_SHOWNORMAL);

end;

procedure Tmain_f.btnChkListInputClick(Sender: TObject);
begin

  if edtChart.Text = '' then
  begin
    showmessage('���ڸ� �����ϼ���.');
    exit;
  end;

  if not Assigned(chklistSave_f) then
    chklistSave_f := TchklistSave_f.Create(application);

  if chklistSave_f.ShowModal = mrOk then
  begin

    LoadChkList(edtChkList, edtChart.Text);

  end

end;

procedure Tmain_f.Button3Click(Sender: TObject);
begin

   if trim(edtname.Text) ='' then
   exit;

  LoadEngName(edtname.Text, 0);

  pnlEngName.left := (Sender as TButton).left + pnlIcons.Width;
  pnlEngName.top := (Sender as TButton).top + pnlInfoHead.Height;
end;


procedure Tmain_f.Button4Click(Sender: TObject);
begin
     pnlMisuAlret.Visible := false;
end;

procedure Tmain_f.Button5Click(Sender: TObject);
begin
     if edtname.Text <> '' then
     begin
          if not assigned(addPhone_f) then
               addPhone_f := TaddPhone_f.Create(application);
          addphone_f.caption := edtname.text + '���� ��ȭ��ȣ �߰�';
          addphone_f.edtPhone.text := '';
          addphone_f.lblchart.Caption := edtchart.Text;
          addphone_f.lblid.Caption := '0';
          addphone_f.Left := mouse.CursorPos.x;
          addphone_f.top := mouse.CursorPos.y;

         if addPhone_f.Showmodal= mrOK then
                fieldSet;


     end;

end;

// X-Naver-Client-Id       NupjfP8tTYt0sx6H0rMf
// X-Naver-Client-Secret       Ku5My1YAFJ

// string query = "ȫ�浿";
// string url = "https://openapi.naver.com/v1/krdict/romanization?query=" + query;
// HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
// request.Headers.Add("X-Naver-Client-Id", "YOUR-CLIENT-ID");
// request.Headers.Add("X-Naver-Client-Secret", "YOUR-CLIENT-SECRET");
// HttpWebResponse response = (HttpWebResponse)request.GetResponse();
// Stream stream = response.GetResponseStream();
// StreamReader reader = new StreamReader(stream, Encoding.UTF8);
// string text = reader.ReadToEnd();
// Console.WriteLine(text);
procedure Tmain_f.LoadEngName(pName: string; kind: Integer);
var
  ja: TJSONArray;
  jo: TJSONObject;
  src: string;
  i: Integer;
  aName: string;
begin

  try

    if trim(pName) = '' then
    begin
      showmessage('�̸��� �Է��ϼ���.');

      exit;
    end;

    i := 0;
    // RESTResponseDataSetAdapter1 FieldDefs ���� ftString �� ���̸� Ű�����.  2000

    dmRest_f.Search(pName);

    src := dmRest_f.FDMemTable1.fieldbyname('aItems').asString;

    ClientDataSet1.close;
    ClientDataSet1.CreateDataSet;

    ja := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(src), 0)
      as TJSONArray;

    // Convert all records
    TConverter.New.JSON.Source(ja).ToDataSet(ClientDataSet1);

    ja.Free;
    ClientDataSet1.first;

    case kind of
      0:
        begin
          grdEngName.Rowcount := ClientDataSet1.recordCount + 1;

          while not ClientDataSet1.eof do
          begin
            i := i + 1;
            aName := ClientDataSet1.fieldbyname('name').asString;
            aName := stringReplace(aName, ' ', '', [rfReplaceAll]);
            grdEngName.Cells[1, i] := aName;
            grdEngName.Cells[2, i] := ClientDataSet1.fieldbyname
              ('score').asString;
            ClientDataSet1.next;
          end;

          grdEngName.autonumbercol(0);
          pnlEngName.visible := true;

        end;
      1:
        begin
          aName := ClientDataSet1.fieldbyname('name').asString;
          aName := stringReplace(aName, ' ', '', [rfReplaceAll]);
          edtEngName.Text := aName;
        end;
    end;
  except
    on E: Exception do
    begin
      exceptlogging('Make Eng Name:' + E.Message);
      showmessage('�����̸��� ����� �����ϴ�. �����Է��ϼ���.' + #10 + E.Message);
      edtEngName.SetFocus;
    end;
  end;

end;

procedure Tmain_f.cbJongCloseUp(Sender: TObject);
begin
  if cbJong.itemindex + 1 = 8 then
  begin

    loadJaboInfoList(ma_chart);
     pageControl2.ActivePageIndex := 1;
      pageControl1.ActivePageIndex := 2;
  end
  else
  begin


  end;

end;

procedure Tmain_f.cbTreatRoomSelect(Sender: TObject);
var
  team_key: string;
begin
  // showmessage('');
  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
  LoadDoclist(cbDoc, team_key);

end;

procedure Tmain_f.edtSoge2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (length(edtSoge2.Text) <> 0) then
  begin
    // ShowMessage(edtSoge.text);

    LoadResultSoge := LoadSogeData_name(edtSoge2.Text, ProgressBarSoge);

    case LoadResultSoge of
      1: // mrOk�����ִ� ���
        begin
          edtSoge2.Text := ma_SogeName;
          lblSogeIdn.Caption := inttostr(ma_SogeIdn);
          lblSogeChart.Text := ma_SogeChart;
          lblSogePhone.Caption := ma_SogePhone;

          ma_refer := ma_SogeName;
          // 2011-0707 Ha
          // Fieldset;
          // main_f.fieldSet();
          { TODO 1 -oha -cMake Function:ġ���ߴ� �ȳ���, �ߴ��� ������������� �˷��ش�. }
          { TODO 1 -oha -cMake Function: �Ұ� ����, �������� }
        end;
      2: // mrCancel����Ѱ��
        begin
          edtSoge2.Clear;
          edtSogeNeyuk.Clear;
          edtSoge.SetFocus;
          lblSogeChart.Text := '';
          lblSogeIdn.Caption := '';
          lblSogePhone.Caption := '';

        end;
      6: // mrYes���� �Է��Ѱ��
        begin
          edtSoge2.SetFocus;
          if not Assigned(regSogeNeyuk_f) then
          begin
            regSogeNeyuk_f := TregSogeNeyuk_f.Create(application);
            regSogeNeyuk_f.varmode := 0;

            // regSogeNeyuk_f.edtsogeja.Text :=
            // edtSoge.Text;
            ma_refer := edtSoge2.Text;
            regSogeNeyuk_f.FieldSetting;
            regSogeNeyuk_f.Show;
          end;

        end;
    end;

  end;
end;

procedure Tmain_f.edtSoge2RightButtonClick(Sender: TObject);
begin
  // pnlSoge.Left := mouseCursorPos.
//  pnlSoge.top := pnlBohum.top + 10;
//  pnlSoge.left := pnlMidBody.left;
//
//  pnlSoge.visible := not pnlSoge.visible;
end;

procedure Tmain_f.EECP1Click(Sender: TObject);
begin
    btnEEcpClick(self);
end;

procedure Tmain_f.btnPatSaveClick(Sender: TObject);
begin

  SaveGogek;

end;



procedure Tmain_f.btnReferHospEditClick(Sender: TObject);
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

procedure Tmain_f.btnSearchPatientClick(Sender: TObject);
begin
     if not Assigned(gogekfind_f) then
          gogekfind_f := Tgogekfind_f.Create(application);
     gogekfind_f.Show;

end;

procedure Tmain_f.btnSms1Click(Sender: TObject);
var
  nret2: Integer;
begin

  if not Assigned(smsone_f) then
    smsone_f := Tsmsone_f.Create(application);

  smsone_f.varmode := 2;

  smsone_f.lblChart.Caption := '';
  smsone_f.lblChart.Caption := main_f.edtChart.Text;
  smsone_f.edtname.Text := main_f.edtname.Text;
  smsone_f.edtRecvno.Text := call_tel_type(main_f.edtCphone.Text);
  smsone_f.memContent.Text := '';
  smsone_f.LblMemcontentSize.Caption := '0/';
  smsone_f.ShowModal;

end;

procedure Tmain_f.ClearBtnArray;
var
  i: Integer;
begin
  for i := 0 to 8 do
  begin
    BtnArray[i].ImageIndex := -1;
    BtnArray[i].visible := False;
  end;
end;

procedure Tmain_f.imgPicDblClick(Sender: TObject);
begin
  pnlCamTool.visible := not pnlCamTool.visible;
end;

procedure Tmain_f.imgPicMouseEnter(Sender: TObject);
begin
  // btnFaceCam.Visible := true;
  // btnFacePicLoad.visible := true;
  // btnFacePicLarge.visible := true;
  // btnDeleteFacePic.visible := true;
end;

procedure Tmain_f.imgPicMouseLeave(Sender: TObject);
begin
  // btnFaceCam.Visible := false;
  // btnFacePicLoad.visible := false;
  // btnFacePicLarge.visible := false;
  // btnDeleteFacePic.visible := false;
end;

procedure Tmain_f.N100Click(Sender: TObject);
begin

  if not Assigned(TxList_f) then
    TxList_f := TTxList_f.Create(application);

  TxList_f.aLoadForm := 'main';

  TxList_f.dpSdate.Date := strToDate(main_f.edtFirst.text);
  TxList_f.dpfdate.Date := strToDate(main_f.edtLast.text);
  TxList_f.JinryoHistoryView(ma_Chart, TxList_f.dpSdate.date, TxList_f.dpfdate.Date);

  TxList_f.ShowModal;

end;

procedure Tmain_f.N101Click(Sender: TObject);
begin

  if trim(ma_Chart) = '' then
  begin
    showmessage('ȯ�ڸ� �����ϼ���.');
    exit;
  end;

  if not Assigned(nurseActing_f) then
    nurseActing_f := TnurseActing_f.Create(application);
  nurseActing_f.Show;

end;

procedure Tmain_f.N103Click(Sender: TObject);
var
    nCnt : integer;
begin

   if trim(edtChart.Text) ='' then
    begin
        showmessage('ȯ�ڸ� �����ϼ���.');//
        exit;
    end;

   if not Assigned(HxJiinryo_p_f) then
      HxJiinryo_p_f := THxJiinryo_p_f.Create(application);



      SunapView('1',  HxJiinryo_p_f.grdSunapReprint, nCnt, ma_chart, '');



      HxJiinryo_p_f.showmodal;

end;

procedure Tmain_f.N104Click(Sender: TObject);
begin

//  yearsan_f := TyearSan_f.Create(application);
//  yearsan_f.ShowModal;
    jinryobiList_f := TjinryobiList_f.Create(application);
    jinryobiList_f.dpSDate.Date := strToDate(edtFirst.Text);
    jinryobiList_f.dpFDate.Date := strToDate(edtLast.Text);

    jinryobiList_f.Showmodal;

end;

procedure Tmain_f.N105Click(Sender: TObject);
begin
      if trim(edtChart.Text) =''  then
      begin
           showmessage('ȯ�ڸ� ������ �� �����ϼ���.');
           exit;
      end;

      wonwe_f := Twonwe_f.Create(application);
      wonwe_f.ShowModal;
      wonwe_f.Free;
      wonwe_f := nil;
      // RealGrid3.Clear;
      // setWonwe(varChartno, FormatDateTime('YYYY-MM-DD',
      // dMain.Date), False);

end;

procedure Tmain_f.N107Click(Sender: TObject);
begin
  if not Assigned(jumgum_f) then
    jumgum_f := Tjumgum_f.Create(application);
  jumgum_f.Show;
end;

procedure Tmain_f.N109Click(Sender: TObject);
begin

  if not Assigned(jungsanDay_f) then
      jungsanDay_f := TjungsanDay_f.Create(application);
  jungsanDay_f.Show;

end;

procedure Tmain_f.N110Click(Sender: TObject);
var
  varTemp, varTempID: string;
  FormInit: Tinifile;
  varZeroShow: string;
begin
  FormInit := Tinifile.Create(extractFilePath(paramStr(0)) + 'db.INI');
  varZeroShow := FormInit.ReadString('��Ÿ����', 'SUNAPZeroView', '');

  FormInit.Free;

  if not Assigned(jungsanDay_f) then

    sebusunap_f := Tsebusunap_f.Create(application);
  sebusunap_f.Showmodal;


  // 2012.4.10
  // varTemp := '';
  //
  // with dm_f.sqlWork do
  // begin
  // close;
  // sql.Clear;
  // sql.Add('select * from  ma_pgpower');
  // sql.Add('where PowerId = ''1'' and pgid=:pgid and pgset = ''1''                ');
  // parambyname('pgid').AsString := 'btnSunap'; //���ں���������
  // open;
  // if not isEmpty then
  // begin
  // varTemp := '1';
  //

  // varTempID := trim(FieldByName('tongID').AsString);
  // if varTempID = '' then
  // varTempID := configvalue.varPassSunap;
  // end;
  // end;
  //
  // if varTemp = '1' then
  // begin
  //
  // PassInput_f := TPassInput_f.Create(application);
  // if PassInput_f.Showmodal = mrOK then
  // begin
  // if PassInput_f.edtpass.text = varTempID then //main_f.v_UserPass then
  // begin
  // sebusunap_f := Tsebusunap_f.Create(Application);
  //
  //
  // sebusunap_f.Show;
  // if  varZeroShow  ='1' then
  // sebusunap_f.cbZeroExcept.Checked :=true
  // else
  // sebusunap_f.cbZeroExcept.Checked :=false;
  //
  //
  // sebusunap_f.sebusunapCalc(formatdatetime('YYYY-MM-DD', now),
  // formatdatetime('YYYY-MM-DD', now), 0);
  // end
  // else
  // begin
  // showmessage('�н����尡 ��ġ���� �ʽ��ϴ�.');
  // end;
  // end;
  //
  // end
  // else
  // begin
  // showmessage('���ѵ� �����Դϴ�.');
  // end;


end;

procedure Tmain_f.N112Click(Sender: TObject);
begin

  ShellExecute(GetDeskTopWindow, 'open', pchar('IEXPLORE.EXE'),
    pchar('https://biz.hira.or.kr/index.do?sso=ok'), nil, SW_SHOWNORMAL);

end;

procedure Tmain_f.N114Click(Sender: TObject);
begin

  if not Assigned(mapSend_f) then
    mapSend_f := TmapSend_f.Create(application);

  mapSend_f.edtsendno.Text := '010-6645-0965';

  mapSend_f.edtSubject.Text := configvalue.varsaupname + ' ���ô� ��';
  mapSend_f.edtRcvno.Text := configvalue.varTel1;

  mapSend_f.ShowModal;

end;

procedure Tmain_f.N115Click(Sender: TObject);
begin

  if not Assigned(nimsGuibBogo_f) then
    nimsGuibBogo_f := TnimsGuibBogo_f.Create(application);
  nimsGuibBogo_f.ShowModal;

end;

procedure Tmain_f.N118Click(Sender: TObject);
begin
       btnSmsSendClick(self);
end;

procedure Tmain_f.N121Click(Sender: TObject);
begin


//  SugaProp_f := TSugaProp_f.Create(application);
//  SugaProp_f.Caption := '�� �������';
//  SugaProp_f.ShowModal;

end;

procedure Tmain_f.N123Click(Sender: TObject);
begin
     if not Assigned(recall_f) then
          recall_f := Trecall_f.Create(application);


     with recall_f do
     begin

          show;
          fieldclear;

          edtrecallchart.text := main_f.edtChart.text;
          edtrecallname.text := main_f.edtname.text;
          edtrecalltel.text := main_f.edtcphone.text;
          lblCphone.caption := main_f.edtcphone.text;

          if main_f.edtChart.text = '' then
          begin
               fieldclear2;
               rbChart.Checked := false;
               rbTerm.Checked := true;

               //Selectma_recallFind('')
          end
          else
          begin
               fieldclear1;
               rbTerm.Checked := false;
               rbChart.Checked := true;
              // edtRecallChart.Text := main_f.edtChart.text ;
               Selectma_recallChart;
          end;
     end;

end;

procedure Tmain_f.N126Click(Sender: TObject);
begin
  misuSunap_f := TmisuSunap_f.Create(application);
 if  misuSunap_f.ShowModal = mrok then
 begin

      // ToDo : Repair
      DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);

 end;

end;

procedure Tmain_f.N128Click(Sender: TObject);
begin

  corpHospStat_f := TcorpHospStat_f.Create(application);
  corpHospStat_f.Show;

end;

procedure Tmain_f.N129Click(Sender: TObject);
begin
     statTerm_f := TstatTerm_f.Create(application);
     statTerm_f.Show;

end;

procedure Tmain_f.N12Click(Sender: TObject);
begin
  sawon_f := Tsawon_f.Create(application);
  sawon_f.ShowModal;
end;

procedure Tmain_f.N130Click(Sender: TObject);
begin

  DailyAmount_f := TDailyAmount_f.Create(application);
  DailyAmount_f.Show;

end;

procedure Tmain_f.N132Click(Sender: TObject);
begin

  stat_sangbyung_f := Tstat_sangbyung_f.Create(application);
  stat_sangbyung_f.Show;

end;

procedure Tmain_f.N13Click(Sender: TObject);
var
  varPath, varParam, varParam1: string;

  Process32: TProcessEntry32;
  SHandle, aHandle: THandle; // the handle of the Windows object
  regResult: Integer;
  next: BOOL;
  gogekchart: string;
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

  varPath := extractFilePath(application.ExeName) + '\Documan.exe';

  gogekchart := main_f.edtChart.Text;
  docName    := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 2]);

  if fileexists(varPath) then
  begin
    // ���� ���������� üũ
    Process32.dwSize := SizeOf(TProcessEntry32);
    SHandle := CreateToolHelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    regResult := 0;
    if Process32First(SHandle, Process32) then
    begin

      if Process32.szExeFile = 'Documan.exe' then
      begin
        regResult := regResult + 1;
        // �ڵ鰪����(WindowFromProcessID �� ���� �Լ���)
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
      // �������̸� ���� ���� �ҷ�����
      SetForegroundWindow(aHandle);

      ///
    end
    else
    begin
      ShellExecute(GetDeskTopWindow, 'open', pchar(varPath),
        pchar(gogekchart +' '+ docName), nil, SW_SHOWNORMAL);
    end;
  end
  else
  begin
    showmessage('�������� ����� ������ ��ġ���� ã�� �� �����ϴ�.');
  end;

end;

procedure Tmain_f.N144Click(Sender: TObject);
begin
             if not Assigned(ibchuReg_f) then
             begin
                  ibchuReg_f := TibchuReg_f.Create(application);
             end;

             ibchuReg_f.Show;

end;

procedure Tmain_f.N146Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


     if Application.MessageBox( pchar('HHPMS�� ������� �ڰ���ȸ����� ��ġ�մϴ�.'  +#10#13+
     '���� �Ͻðڽ��ϱ�?') , 'Ȯ��', MB_OKCANCEL) = 1 then

     begin

//         strProgram := ExtractFileDir(Application.ExeName)
//         +'\RegiModule\ALLV7_XProxy_soapLibSetupSetup\ALLV7_XProxy_soapLibSetupSetup.exe';
         strProgram := ExtractFileDir(Application.ExeName)
         +'\RegiModule\XCP 1.3.1.5 Setup\XCP 1.3.1.5 Setup.exe';
         ShellExecute(self.Handle, 'open', pChar(strProgram), nil,
              nil, SW_SHOW);

              //\\Mac\Home\Desktop\_UpdateHPMS\RegiModule\ALLV7_XProxy_soapLibSetupSetup

         killprocess('HHPMS.exe');
     end;
end;


procedure Tmain_f.N147Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
begin


     if Application.MessageBox( pchar('HHPMS�� ������� �ڰ���ȸ����� ��ġ�մϴ�.'  +#10#13+
     '���� �Ͻðڽ��ϱ�?') , 'Ȯ��', MB_OKCANCEL) = 1 then

     begin

//         strProgram := ExtractFileDir(Application.ExeName)
//         +'\RegiModule\ALLV7_XProxy_soapLibSetupSetup\ALLV7_XProxy_soapLibSetupSetup.exe';
         strProgram := ExtractFileDir(Application.ExeName)
         +'\RegiModule\ALLV7_XProxy_soapLibSetup\ALLV7_XProxy_soapLibSetup.exe';
         ShellExecute(self.Handle, 'open', pChar(strProgram), nil,
              nil, SW_SHOW);

              //\\Mac\Home\Desktop\_UpdateHPMS\RegiModule\ALLV7_XProxy_soapLibSetupSetup

         killprocess('HHPMS.exe');
     end;
end;


procedure Tmain_f.N14Click(Sender: TObject);
var
  strProgram: string;
  strName1: string;
  strName2: string;
begin


  // LoadJinryo;

  strProgram := ExtractFileDir(application.ExeName) + '\HJinryo.exe';

  ShellExecute(Self.Handle, 'open', pchar(strProgram), '', nil, SW_SHOW);

//  LoadJinryo;
end;

procedure Tmain_f.N151Click(Sender: TObject);
begin
  if Not Assigned(yearAcc_f) then
    yearAcc_f := TyearAcc_f.Create(application);

  yearAcc_f.Show;

end;

procedure Tmain_f.N16Click(Sender: TObject);
begin

  if Not Assigned(orderInfo_f) then
    orderInfo_f := TorderInfo_f.Create(application);

  orderInfo_f.Show;
end;

procedure Tmain_f.N18Click(Sender: TObject);
begin
  if not Assigned(labOrder_f) then
    labOrder_f := TlabOrder_f.Create(application);
  labOrder_f.ShowModal;
end;

procedure Tmain_f.N19Click(Sender: TObject);
var
  varPath, varParam, varParam1: string;
begin

  varPath := extractFilePath(paramStr(0)) + 'sugaEdit.exe';

  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), nil, nil,
    SW_SHOWNORMAL);

end;

procedure Tmain_f.N1Click(Sender: TObject);
var
  i: Integer;
  varInterval: Integer;
begin
  // if PromiseMode = true then
  // begin
  // LoadPromiseinput;
  // end
  // else
  // begin
  //
  // if not assigned(Promisemain_f) then
  // Promisemain_f := TPromisemain_f.Create(application);
  // PromiseMode := true;
  // Promisemain_f.Show;
  // LoadPromiseinput;
  //
  // end;
end;

procedure Tmain_f.N30Click(Sender: TObject);
begin
  if not Assigned(telList_f) then
    telList_f := TtelList_f.Create(application);
  telList_f.ShowModal;

end;

procedure Tmain_f.N62Click(Sender: TObject);
begin
 if not Assigned(regischedule_f) then
  begin
    regischedule_f := TregiSchedule_f.Create(application);
    with regischedule_f do
    begin
      DeDate.Date := now;
      CmTime.Text := '12';
      CmMinute.Text := '00';
      MemWork.Text := '';
      MemResult.Text := '';
      edtRefer.Text := '';

      SelectDataSWork;
      ShowModal;
    end;
  end;
end;

procedure Tmain_f.N63Click(Sender: TObject);
begin
  if not Assigned(optionset_f) then
  begin
    optionset_f := Toptionset_f.Create(Self);
    optionset_f.pcoption.ActivePageIndex := 0;
    optionset_f.ShowModal;
  end;
end;

procedure Tmain_f.N70Click(Sender: TObject);
begin

    btnSearchPatientClick(self);

end;

procedure Tmain_f.N80Click(Sender: TObject);
begin

  migration_f := Tmigration_f.Create(application);
  migration_f.Show;

end;

procedure Tmain_f.N89Click(Sender: TObject);
begin
  PromiseJohoi_f := TPromiseJohoi_f.Create(application);
  PromiseJohoi_f.selCombo.ItemIndex := 0;
  PromiseJohoi_f.varView := 'NAME';
  PromiseJohoi_f.FieldClear;
  // if edtsch.text <> '' then
  // begin
  // PromiseJohoi_f.PatientSearch_whole(edtsch.text);
  // PromiseJohoi_f.edtSch.Text := edtsch.text;
  // end;
  PromiseJohoi_f.ShowModal;
end;

procedure Tmain_f.N91Click(Sender: TObject);
var
  strProgram: string;
  strName1: string;
  strName2: string;
begin
  strName1 := '';
  strProgram := extractFilePath(paramStr(0)) + 'RegiModule\SMS\reg_32.bat';
  ShellExecute(Self.Handle, 'open', pchar(strProgram), pchar(strName1),
    nil, SW_SHOW);
end;

procedure Tmain_f.N93Click(Sender: TObject);
begin
  sugaUpdate_f := Tsugaupdate_f.Create(application);
  sugaUpdate_f.ShowModal;
end;

procedure Tmain_f.N94Click(Sender: TObject);
begin
 TreeEdit_f := TTreeEdit_f.Create(application);
  /// TreeEdit_f.edtId.text := dm_f.sawonNo;
  /// TreeEdit_f.edtId2.text := dm_f.sawonNo;
  TreeEdit_f.formwhere := 'ct';
  TreeEdit_f.ShowModal;
  TreeEdit_f.Free;
  TreeEdit_f := nil;
end;

procedure Tmain_f.N98Click(Sender: TObject);
begin

  // pgPromiseList.Align:= alRight;
//  pgPromiseList.visible := not pgPromiseList.visible;
//  AdvSplitter3.left := -1;

end;

procedure Tmain_f.DaegiFrame_fr1Timer1Timer(Sender: TObject);
begin
  DaegiFrame_fr1.Timer1Timer(Sender);

end;

function Tmain_f.DayJubsu(varDate: Tdate;
  varChart: string;
  varDay: string;
  varTime: TDateTime;
  varKind: string;
  varFirst: string;
  varTeam: string;
  varJumin: string;
  varArea: string;
  varDocName: string;
  varHygname: string;
  varName: string;
  varPhone: string;
  jongbyul: Integer;
  chojae: Integer;
  sanjung: string;
  teakryeCode: string;
  health: Integer;
  pregnan: string;
  chasangno: string;
  bontype: string;
  yujikum: string;
  kwamok: string;
  treatRoom: string;
  doc_code : string;
  isJiwon : string;
  isBohum100 : string;
  artteeth1: string = '';
  artteeth2: string = '';
  implteeth1: string = '';
  implteeth2: string = '';
  JaboID:integer = 0;
  varJubsuKind: Integer = 0 // varJubsuKind = 1 �ڵ�����
 )
  : Integer;
const
  selectqry = 'select * from ma_promise' + #13#10 +
    'where chart=:chart and pday=:pday and team=:team and cancel <>''Y''  ';
var
  varpTime, varpmemo, varpremark: string;    //varpidn,
  varDaegiGubun: string;
  nowTime: TDateTime;
  risResult: TRisResult;
  jubsuID:integer;

begin

  // if checkINT(varteam)= false then
  // begin
  //
  // showmessage('''' + varteam +'''' +'�� ��Ȯ�� ������ �ƴմϴ�.' );
  // // exit;
  // varteam:='1';
  // end;
  //
  // varteam:='1';
  // ����������� ���� ��� ��������
  varDaegiGubun := '0';

  nowTime := now;
  // todo : repair
  case DaegiFrame_fr1.tsMain.TabIndex of
    0, 2:
      varDaegiGubun := '0';
    1:
      varDaegiGubun := '0';
    // 2: varDaegiGubun:='10'  ;
  end;

  // ���೻�� �˻�
  // ToDO : ������ �ٸ�����Ƿ� 2�� �̻� ���� �� �ִ�.
  //        �´� �ϳ��� ������Ʈ �ľ� �Ѵ�.
  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Text := selectqry;
    parambyname('chart').asString := varChart;
    parambyname('team').asString  := varTeam;
    parambyname('pday').asString  := formatdatetime('YYYY-MM-DD', varDate);
    open;
    if not isEmpty then
    begin
      varpTime := fieldbyname('ptime').asString;
      varpremark := fieldbyname('remark').asString;
      varpmemo := fieldbyname('pmemo').asString;
      varpidn := fieldbyname('idn').asString;
      // varpidn2 := fieldbyname('idn').asString;

      if isReferer =false then
             ma_rp_RequestPK :=   fieldbyname('rpPK').asInteger;
    end
    else
    begin
      varpTime := '';
      varpremark := '';
      varpmemo := '';
      varpidn := '';
      if isReferer =false then
           ma_rp_RequestPK := 0;
    end;
  end;


  //ToDO : ma_rp_RequestPK �� fieldset���� �̹� �����Դ�.

  // ��ⱸ��
  // '10', '����'
  // '0', '������'
  // '1', '������'
  // '2', '�������' ����Ϸ�
  // '3', '�����Ϸ�'

  // varChart, varToday, varNowTime, varNewonGubun, varFirst, varteam, varJumin, varArea
   jubsuID := jubsuSave(
          varChart, // edtChart.Text,
          varTeam, // cbdamteam.text,
          varDocName, // cbDoc.Text,
          varHygname, // cbHyg.Text,
          varDaegiGubun, // ��ⱸ��
          formatdatetime('YYYY-MM-DD', varDate),
          nowTime,
          varFirst,  // edtfirst.text, //������
          varJumin, // edtjumin.text,
          varArea, // edtZip.Text,
          varName, // edtname.text,
          varPhone, // edtcphone.text,
          varpremark, // ���೻��
          varpmemo, // �������
          varpidn, // ���� idn
          varpTime, // ���� �ð�
          jongbyul, // 0,                    //Jongbyul
          chojae, // 1, //����
          sanjung, // '', //Sanjung
          teakryeCode, health, // 0, //health
          pregnan, // '', //pregnan
          chasangno, // '', //chasangNo
          bontype, // '', //bonType
          yujikum, // '', //yujikum
          kwamok, // '', //Kwamok
          treatRoom,
          '0', // isInPat     //������ �׻� �ܷ�(0) ������ �Ѵ�.
          '', // inPat_time
          ma_rp_RequestPK,
          '0',//isOutPat
          '',//out_patTime,
          JaboID,//jaboID
          doc_code,
          isJiwon,
          isBohum100,
          '',// artteeth1
          '', // artteeth2
          '', // implteeth1
          '', // implteeth2
          varJubsuKind // �������� 1: �ڵ����� 0: ��������
         );

    if jubsuID > 0 then //��¶�� �����Ǹ�...
  begin

    //  updatetblStatus(now);
    //      UPDATE tblstatus SET status = status + 1 WHERE id = 1;

     //ToDo : tblStatus �� ���� ���� -> 1����
     // updateTblStatus(now);
      if  updateStatusCnt(now, '0',  doc_Code, varTeam )  = true then
       begin

           //ToDo : tblStatus �� ���� ���� -> 1����
           updateTblStatus(now);

       end;



    { main_f.jubsuselect(grdDaegi,
      formatdatetime('YYYY-MM-DD', dtDate.date), //����
      inttostr(cbdaegiGubun.itemindex - 1), //����
      cbteam.Text); //��
    }

    if configvalue.varDaegiSocketUse = '1' then // 1:�ټ����̿�, 0:��������
    begin

      // ToDo : Repair
      DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);


      //
      // if dm_f.IdTCPClient2.Connected = false then
      // dm_f.ConnectImageDBServer;
      // dm_f.IdTCPClient2.iohandler.WriteLn('CDS_'+varDaegiGubun);

    end
    else
    begin

      // ToDo : Repair
      DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);

    end;


    // if trim(grdDaegi.Cells[16, grdDaegi.Row]) <> '' then
    // Promise_UpdatePos(strtoint(grdDaegi.Cells[16,
    // grdDaegi.Row]), '0');

    if varpidn <> '' then // 2012.4.6
    begin
      Promise_UpdatePos(strtoint(varpidn), '0');
      promiseFrame_fr.SelectPromise(0);
    end;

    // ma_gogek_basic Last_day Update




    // if  varJubsuKind <> 1 then //�ڵ������� �ƴϸ�...
     DaegiFrame_fr1.checkPromiseRecall(varChart);



    // if  configvalue.varEasydent  = '1' then
    // case EasyMode of //0:����
    // 4:
    // //ToDo : maru����
    // if configvalue.varEasydentDaegi = '1' then
    // main_f.MaruNewonSave(varChart,
    // formatDatetime('YYYY-MM-DD',
    // main_f.dtDate.Date),
    // now, '0');
    // end;
    //
    // //SMS������ ������.
    // SMSManagerUpdate(varChart);

    // RIS Save
    // risResult:= TrisResult.create;


    // RIS����
      {$IFNDEF DEBUG}
          if configvalue.varimageDBSaveMode = '1' then
          begin
            ma_jubsu_date := nowTime;

            risResult :=
                  RisSave(0, Memo2,
                   chkAsXML,
                   ma_jubsu_date,
                  '',
                  '',
                  'O', //�ܷ�
                  '',
                  '',
                  '',
                   inttostr( jubsuID )
                  );

            if risResult.aResult = true then
              showmessage(risResult.aMsgIn);
          end;
      {$ENDIF DEBUG}


     //ToDO : ���� ����

    // ���� ���� ---���࿡�� ����.
//    {$IFNDEF DEBUG}


    // ToDO: isReferer = true ==> ��������Ʈ���� �����ö�.
    //       ��������Ʈ���� �������⵵ ������
    //       ������ Ŭ���ؼ� �������� ���, ���࿡�� ��ȯ���� ��� �� ��쿡��
    //       isReferer = true�� �ž� �Ѵ�.

    if (isReferer = true) then
    begin
      if (trim(edtReferHospCode.text) <> '') then
      begin

            if ChangeRPStatus(
                 ma_rp_RequestPK,
                 '3',
                 edtChart.Text,
                 edtName.Text,
                 now) = False then


            begin
              showmessage('�������º��� ����.');
            end
            else
            begin

            end;


      end
      else
      begin
        //ToDo : ���� ���� �ڵ尡 ������, ������ �ƴϴ�.
        //1) �������� rpPk= 0���� ������Ʈ �ϰ�
           Update_jubsuRpPk(JubsuID, 0);
        //2) �����ϸ鼭 �Է��ߴ� rp_request�� RPPk�� ã�Ƽ� ��������.

            if ChangeRPStatus(
                 ma_rp_RequestPK,
                 '3',
                 edtChart.Text,
                 edtName.Text,
                 now,
                 true) = False then  //rp_request ����


            begin
              showmessage('�������º��� ����.');
            end
            else
            begin

            end;




      end;
      isReferer := False;


    end
    else
    begin
            nRpPK := ma_rp_RequestPK;  //���� �ڵ尡 �ִ� ���� �����ΰ�?

            //20191113
            //?????���� �Ҷ��� ����.
            //ToDo : �������� ������ ��� �Ƿں����� ������ �����ض�.
            if trim(edtReferHospCode.Text) <> '' then
             begin
                 //(1=�˻��Ƿ�, 2=�Ƿ����, 3=����Ϸ�, 4=�������, 5=�˻�Ϸ�)

                 if  saveRequest(
                        nRpPK ,
                        '3',//aState:  //3: ����Ϸ�(�����Ϸ�);
                        trim(edtReferHospCode.Text),
                        '',//userToken: string; // , varchar(80),>
                        edtchart.text,// patientID: string; // , nvarchar(50),>
                        '',//jwt: string; // , varchar(350),>
                        '',//jwtExpTime: string; // , char(13),>
                        'N',//cosign: string; // , char(1),>
                        edtRHospID.Text , //hospitalEmail: string; // , varchar(30),>
                        edtreferHospName.Text , //hospitalName: string; // , nvarchar(50),>
                        '',//hospitalPhone: string; // , varchar(13),>
                        cbReferHospDoc.Text,// doctorName: string; // , nvarchar(50),>
                        edtName.Text,// patientName: string; // , nvarchar(50),>
                        edtCPhone.Text,// patientPhone: string; // , varchar(13),>
                        '',// content: string; // , ntext,>
                        'Y',// viewHospital: string; // , char(1),>
                        'Y',//viewAdmin: string; // , char(1),>
                        0,//dynCatePK: integer; // , int,>
                        '',//dynContent: string; // , ntext,>
                        now,//dynDate: TdateTime; // , smalldatetime,>
                        now,//studyDate: TdateTime; // , smalldatetime,>
                        now,//requestDate: TdateTime; // , smalldatetime,>
                        now,//modifyDate: TdateTime; // , smalldatetime,>)
                        nRpPK) = true then
                        begin


                           //  Promise_Update_RpPK(strtoint(varpidn), nRpPK );
                           Update_jubsuRpPk(JubsuID, nRpPK);
                           //���ǥ ����
                           DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);

                        end;
              end
              else
              begin
                  //trim(edtReferHospCode.Text)  ='' �ΰ���
                  //�������� ������ �����ϴ� ����̴�.
                  Update_jubsuRpPk(JubsuID, 0);

              end;


//    {$ENDIF DEBUG}


      end;

  end;

end;

procedure Tmain_f.showGogekAlret(varChart, varName: string;
  varKind: Integer = 0);
begin
   if not assigned(gogekalret_f) then
    gogekalret_f := Tgogekalret_f.Create(application);
    gogekalret_f.Caption := varName + '(' + varChart +
    ')���� �󼼱��';
    gogekalret_f.gogekAlretFrame_fr1.preshow;
    gogekalret_f.gogekAlretFrame_fr1.fieldClear;

    gogekalret_f.gogekalretFrame_fr1.varChartNo := varChart;
    gogekalret_f.gogekalretFrame_fr1.varName := varName;


    if varChart <> '' then
    begin
        case varKind of
            0:
            begin
                gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex := 0;
                gogekalret_f.gogekalretFrame_fr1.PromiseSelect(varChart);
            end;
            1:
            begin
                gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex := 1;
                gogekalret_f.gogekalretFrame_fr1.RecallSelect(varChart);
            end;
        end;
    end;


     gogekalret_f.Show;
     gogekalret_f.gogekalretFrame_fr1.PreShow;
     gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex:= varKind;
     gogekalret_f.gogekalretFrame_fr1.loadTabInfo( gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex, varChart);


end;

procedure Tmain_f.SpeedButton7Click(Sender: TObject);
var
  inputString: string;
  Result     : Integer;
  ClickedOK  : Boolean;
begin

  if trim(ma_Chart) = '' then
    exit;

  inputString := '�𵨹�ȣ�� �Է��ϼ���';

  if trim(edtModelNo.Text) <> '' then
    inputString := trim(edtModelNo.Text)
  else
    inputString := formatdatetime('YYMMDD', now) + main_f.edtname.Text;

  ClickedOK := Vcl.Dialogs.InputQuery('�𵨹�ȣ�� �����ϼ���', '�𵨹�ȣ�Է�', inputString);
  if ClickedOK then { NewString contains new input string }
  begin

    if trim(inputString) = '' then
      exit;

    if saveModelNo(main_f.edtChart.Text, inputString,
      formatdatetime('YYYY-MM-DD', now)) = true then
    begin

      showmessage('�𵨹�ȣ�� ���� �Ǿ����ϴ�.');
      edtModelNo.Text := inputString;
    end;
  end;
end;

procedure Tmain_f.ViewAllSet(varStat: Boolean = False);
begin

  varViewAll := varStat; // not varViewAll;

  if varViewAll = true then
    configvalue.saveValue('0145', '1', '')
    // FvarViewAllInit���� �����Ѵ�. 1�̸�   varViewAll= true
  else
    configvalue.saveValue('0145', '0', '');

  { if (configvalue.varScreenSave <> '')
    or (configvalue.varScreenSave <> '0') then
    begin
    timer4.Interval:=  strtoint(configvalue.varScreenSave) * 6000 * 10;
    end;
  }

  if varViewAll = true then
  begin

    // if  configvalue.varNewonCountView = '1' then
    // lblTime.Font.color := clred;
    //
    // timer4.enabled:=true;
  end
  else
  begin
    // if  configvalue.varNewonCountView = '1' then
    // lblTime.Font.color := clTeal;

    // timer4.enabled:=false;
  end;


  // if assigned(gogek_f) then
  // gogek_f.LoadPatientGroup('007', gogek_f.scGroup); //��� ������ ó�� �ε��ÿ� �ȳ��´�....
  //
  // if assigned(Promisemain_f) then
  // Promisemain_f.SelectPromise(0);


  // DaDaegiSelectData(formatdatetime('YYYY-MM-DD', dtDate.date));

  // ToDo : Repair
  DaegiFrame_fr1.DaegiSelect(DaegiFrame_fr1.tsMain.TabIndex);

end;

procedure Tmain_f.LoadDefaultValue;
var
  varCode: string;
  team_key: string;
begin

  with dm_f.sqlwork do
  begin
    exceptlogging('start family LoadDefaultValue');
    varCode := '004'; // ��������
    cbRel.Items.Clear;
    close;
    sql.Clear;
    sql.Add('select * from ma_basic');
    sql.Add(' where Code like :Code and Code<> :code2');
    sql.Add('order by Code');
    parambyname('Code').asString := varCode + '%';
    parambyname('Code2').asString := varCode + '000';
    open;
    first;
    while not eof do
    begin
      cbRel.Items.Add(fieldbyname('disp').asString);
      next;
    end;
    exceptlogging('start jongbyul LoadDefaultValue');

    varCode := '002'; // ����
    cbJong.Items.Clear;
    close;
    sql.Clear;
    sql.Add(' select * from ma_basic                 ');
    sql.Add(' where Code like :Code and Code<> :code2');
    sql.Add('order by Code                           ');
    parambyname('Code').asString := varCode + '%';
    parambyname('Code2').asString := varCode + '000';
    open;
    first;
    while not eof do
    begin
      cbJong.Items.Add(fieldbyname('disp').asString);
      next;
    end;

    { varCode := '022'; //�Ұ����
      cbSoge.items.Clear;
      Close;
      Sql.Clear;
      Sql.Add('select * from ma_basic');
      Sql.Add(' where Code like :Code and Code<> :code2');
      Sql.Add('order by Code');
      ParamByName('Code').AsString := varCode + '%';
      ParamByName('Code2').AsString := varCode + '000';
      Open;
      First;
      while not eof do
      begin
      cbSoge.Values.Add(fieldByName('disp').asString);
      next;
      end;
    }
    exceptlogging('start Email LoadDefaultValue');

    varCode := '006'; // �̸���

    // cbTeam.items.Clear;
    // cbTeam.items.Add('��ü');

    // cbTeamName.items.Clear;
    // cbTeamName.items.Add('��ü');

    // with cbDoc2 do
    // begin
    // Columns.Clear;
    // ComboItems.Clear;
    // end;
    //
    // with cbDoc2 do
    // begin
    // with Columns.Add do
    // begin
    // Width := 0;
    // Font.Style := [fsBold];
    // end;
    // with Columns.Add do
    // begin
    // Width := 0;
    // Font.Color := clBlue;
    // Font.Style := [fsBold];
    // end;
    // with Columns.Add do
    // begin
    // Width := 100;
    // end;
    //
    // with ComboItems.Add do
    // begin
    // //  Strings.Add(FieldByName('team_name').AsString);
    // //  Strings.Add(FieldByName('team_color').AsString);
    // //  Strings.Add(FieldByName('team_doctor1').AsString);
    // Strings.Add('0');
    // Strings.Add('0');
    // Strings.Add('��ü');
    //
    // end;
    // end;
    //

    with cbTreatRoom do
    begin
      Columns.Clear;
      ComboItems.Clear;
    end;

    close;
    sql.Clear;
    sql.Text := 'Select * from ma_basic                                             ' +
      #13#10 +  'where  (code like  ''093%'') and (code <> ''09300'')               ' +
      #13#10 +  'and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'' )  ' + //���ܰ���
      #13#10 +
    // 'order by val,code                                        ';
      'order by disp                                       ';

    open;
    if not isEmpty then
    begin

      with cbTreatRoom do
      begin
        with Columns.Add do
        begin
          Width := 0;
          Font.Style := [fsBold];
          Font.Name := '���� ���';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          Width := 0;
          Font.Color := clBlue;
          Font.Style := [fsBold];
          Font.Name := '���� ���';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          Width := 200;
          Font.Name := '���� ���';
          Font.Size := 12;
        end;

      end;
      // with cbTreatRoom.ComboItems.Add do
      // begin
      // Strings.Add('A');     //Code
      // Strings.Add('A');  //code?
      // Strings.Add('��ü');
      // end;
      //
      while not eof do
      begin

        with cbTreatRoom.ComboItems.Add do
        begin
          // Strings.Add(FieldByName('team_name').AsString);
          // Strings.Add(FieldByName('team_color').AsString);
          // Strings.Add(FieldByName('team_doctor1').AsString);
          Strings.Add(trim(fieldbyname('val').asString)); // Code
          Strings.Add(trim(fieldbyname('remark').asString)); // code?
          Strings.Add(trim(fieldbyname('disp').asString));

        end;

        // cbTreatRoom.items.add(FieldByName('disp').AsString);

        next;
      end;

      cbTreatRoom.ItemIndex := 0;
    end
    else
    begin
      // cbTreatRoom.items.add('����ũ');
      // cbTreatRoom.ItemIndex := 0;
    end;




    // with cbDoc2 do
    // begin
    // with Columns.Add do
    // begin
    // Width := 0;
    // Font.Style := [fsBold];
    // end;
    // with Columns.Add do
    // begin
    // Width := 0;
    // Font.Color := clBlue;
    // Font.Style := [fsBold];
    // end;
    // with Columns.Add do
    // begin
    // Width := 100;
    // end;
    //
    // with ComboItems.Add do
    // begin
    // //  Strings.Add(FieldByName('team_name').AsString);
    // //  Strings.Add(FieldByName('team_color').AsString);
    // //  Strings.Add(FieldByName('team_doctor1').AsString);
    // Strings.Add(FieldByName('team_name').AsString);
    // Strings.Add(FieldByName('team_color').AsString);
    // Strings.Add(FieldByName('saName').AsString);
    //
    // end;
    // end;

    exceptlogging('start HygineName LoadDefaultValue');

    cbHyg.Items.Clear;

    cbHyg.Items.Add('');

    close;
    sql.Clear;
    sql.Add('Select * from ma_Sawon_basic');
    // Sql.Add('Where sajikgub=''2'' ');
    sql.Add(' where  sajikGub <> ''1''  and noUse <> ''1'' ');
    sql.Add(' order by sabun ');
    open;
    if not isEmpty then
    begin
      while not eof do
      begin
        cbHyg.Items.Add(fieldbyname('saname').asString);
        next;
      end;
    end
    else
    begin
      // ComboBox1.Items.Add(dm_f.Chief);
      // grdPlan.Columns[11].Values.add(dm_f.Chief);

    end;

  end;

  // cbDoc.ItemIndex := 0;
  cbHyg.ItemIndex := 1;
  // cbDoc2.ItemIndex := 0;
  // cbTeam.itemindex := 0;
  // cbTeamName.itemindex := 0;

  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
  LoadDoclist(cbDoc, team_key);

end;

procedure Tmain_f.setArrayPanel;
begin

  setLength(pnlArray, 6);
  pnlArray[0] := pnlLeft;
//  pnlArray[1] := pnlInfoHead;
  pnlArray[1] := pnlMain;
//  pnlArray[2] := pnlMidBody;
  pnlArray[2] := pnlWaitingList;
  pnlArray[3] := pnlPromiseList;
//  pnlArray[4] := pnlStatusbar;
  pnlArray[4] := pnlPatinfo3;
//  pnlArray[5] := pnlSogeJa;
  pnlArray[5] := pnlCamTool;

  setLength(AdvPnlArray, 18);

  AdvPnlArray[0] := pnlPatInfo;
  AdvPnlArray[1] := pnlChamgo;
  AdvPnlArray[2] := pnlMedicalHx;
  AdvPnlArray[3] := pnlNewonDongGi;
  AdvPnlArray[4] := pnlBohum;
  AdvPnlArray[5] := pnlGajok;
  AdvPnlArray[6] := pnlVitalinfo;
  AdvPnlArray[7] := pnlDr;
  AdvPnlArray[8] := pnlJinryo;
  AdvPnlArray[9] := pnlRefer;
  AdvPnlArray[10] := pnliCons;
  AdvPnlArray[11] := pnlInfoHead;
  AdvPnlArray[12] := pnlMidBody ;
  AdvPnlArray[13] := pnlHeader;
  AdvPnlArray[14] := pnlStatusbar;
  AdvPnlArray[15] := pnlMisuAlret;
  AdvPnlArray[16] := pnlRIS;
  AdvPnlArray[17] := pnlSogeJa;



  initAdvGrid(grdJx2);



end;

procedure Tmain_f.SaveGogek;
var
  imsi_famid: string;
  imsi_piboid: string;
  varFamCode: Integer;
  isNew: Boolean;

  varviewKind: Integer; // 0���� ũ�� imaggeDBSave2�� �����Ѵ�.
    varJaboId: string;



begin

  isNew := isNewPatient(edtChart.Text); // ��ȯ�ϱ� �ƴұ�...
  // ��ȯ�� �ڵ����� SMS�� ������ �ִ�.

  if gogekSave = true then
  // �Ǻ����� ����, �ּ�, �ڵ����� ��ȭ��ȣ ����Ǹ� ...
  begin

    SavePatientGroup('007', edtChart.Text);
    // SaveMunjin('dong', edtChart.text, dong); //, 1);
    SaveNewonDongGiGroup('096', edtChart.Text);




    // ������ �ҷ��� �Ŀ�
    // 1. ������ �߰��ϸ� famcode�� ���Ͻ�Ų��.
    // 2. ������ �����ϸ� famcode=0�̵ȴ�
    // 3. �ڵ� ���� �ҷ����⿡�� �̻���� �������� �ȹ����ߵȴ�.
    // varFamCode :=  LoadGajok_famid(edtJungno.text, edthphone.Text,
    // memAdd.text,   edtChart.text) ;



    // ToDo : repair ==> ���� �����ϸ鼭, �ҷ����鼭 �ӵ� ���� -�����ʿ�
    // loadGajok_first( varFamCode,  edtJungno.text, edthphone.Text,edtcphone.Text,
    // memAdd.text,   edtChart.text);

    // 4. ������ �����Ѵ�.
    // Savegajok(varfamcode);

    // saveBonType(edtChart.text,
    // edtBudam.Text,
    // edtbonNO.Text,
    // edtartTeeth1.Text,
    // edtartTeeth2.Text,
    // edtartYoyang1.text,
    // edtartYoyang2.text,
    // edtimplTeeth1.Text,
    // edtimplTeeth2.Text,
    // edtimplYoyang1.text,
    // edtimplYoyang2.text,
    // jSunkihoEdit1.Text,
    // jSunkihoEdit2.Text,
    // jSunkihoEdit3.Text,
    // JSunkihoEdit.Text);
    //

    // �ڵ����������� ����
    if cbJong.itemindex + 1 = 8 then
    begin
      if  StrToIntDef(lblCarID.Caption, 0) = 0 then

        varJaboId := saveJaboInfo(
          lblCarID.Caption,
          edtChart.Text,
          formatdatetime('YYYYMMDD', now),
          copy(cbJabosaCode2.text, 1, 2), // varInsCode,
          edtJaboSagoJubsuNo2.text, // varInsJubsu,
          edtJaboJigubBojungNo2.text // varInsJigub
          )
      else
        varJaboId := lblCarID.Caption;



      // ������Ʈ
      saveJaboInfo(varJaboId,
        edtChart.Text,
        formatdatetime('YYYYMMDD', now),
        copy(cbJabosaCode2.text, 1, 2), // varInsCode,
        edtJaboSagoJubsuNo2.text, // varInsJubsu,
        edtJaboJigubBojungNo2.text // varInsJigub
        )

    end;

    lblCarID.Caption := varJaboId;



    showmessage(trim(edtname.Text) + '�� ����Ǿ����ϴ�.');

    // �Ұ��ڿ��� SMS�� ������ �����.
    if configvalue.varNewAutoSend = '1' then // ��ȯ �ڵ� SMS������ �����Ǿ��ִٸ�
    begin
      if (isNew = true) and (lblSogePhone.Caption <> '') then
      begin

        LoadSMSAutosend(lblSogePhone.Caption);

      end;
    end;

    if (LoadGogekData_chart(edtChart.Text, progressbar, varViewAll) = true) then
    begin

      isInitial := False;
      main_f.fieldSet(formatDatetime('YYYY-MM-DD', now));

    end;

    // 2012.1.11
    // Ÿ�翵��DB�� ����
    if configvalue.varEasydent = '1' then
    begin
      { main_f.imageDbSave;

        varViewKind:= strtoint( configvalue.varViewKind );
        if varViewKind> 0 then
        main_f.imageDbSave2(varViewKind);
      }

    end;
    // if main_f.famcode <> 0 then
    // main_f.LoadGajok_FirstsavedPatient(main_f.famcode, edtJungno.text,
    // edthphone.Text,
    // memAdd.text,
    // edtChart.text);

    if cbSMS.Checked then // SMS���۰ź�
    begin
      if CheckReservedSmsEmpty(main_f.edtChart.Text) = False then
      // ����޽����� �ִٸ�...
      begin

        // ����� ���� �޽��� ������ ���� �������ۻ���â�� ��������.

        // smsTag := 3;
        { if not assigned(SmsResult_f) then
          SmsResult_f :=
          TSmsResult_f.Create(Application);
          SmsResult_f.Show;
          SmsResult_f.SmsSelectYeyakDataName(main_f.edtChart.text);
        }
      end;
    end;

    // ���� ��ȯ�� ��� ����
    if isPromiseRegi = true then
    begin

      UpdatePromiseNewRegi(PromiseIdn, edtChart.Text);
      isPromiseRegi := False; // �����ȯ�� ��ȯ ����ϴ°�...

      promiseFrame_fr.SelectPromise(promiseFrame_fr.tabView.TabIndex);

      //rp_request�� ���Ϲ�ȣ�� ������Ʈ ��Ű��.
      ChangeRPStatus(nRpPK,//ma_rp_requestpk,//: integer;
       '3', //aState: string;
       edtChart.Text,// patientID: string;
       edtName.Text,
       now);//dynDate: TdateTime): boolean;
    end;




      {$IFNDEF DEBUG}
       //   if (configvalue.varimageDBSaveMode = '1') then
          // and (saveKind=1) then // save PACS RIS
       //   begin

           if saveOrderInfo_updateEngName(formatdatetime('YYYYMMDD', now),  // orderDay          :string;
              edtChart.Text, // chart            :string;
              edtname.Text, // hname            :string;
              edtEngName.Text, // ename            :string;
              jumintoBirth(edtJumin.Text + edtJumin2.Text), // birth            :string;
              jumintogender(edtJumin.Text + edtJumin2.Text), // gender           :string;
              juminToNai(edtJumin.Text + edtJumin2.Text),   // age              :string):
              trim(edtReferHospCode.Text)  // referhospcode            :string;
              ) = true then

            begin

            end;
       //   end;

      {$ENDIF DEBUG}
  end;

end;

function Tmain_f.gogekSave: Boolean;
var
  insertflag: Boolean;
  varidn: Integer;
  varJange, varmoon, varPiboID, varEmail, varJeju43, varSMS, varfamID, varSMS2,
    varSms3, varInfoSave, varChartSaveOk: string;
  varTeamNo, varDocName: string;

  varPregnan: string;
  isNew: Boolean;
  aMapinfo : TMapInfo;

begin
  try

    // ToDo : Repair
    // if checkInt(trim(edtjumin.text)) = false then
    // begin
    // showmessage('�ֹι�ȣ �Է��� Ȯ���ϼ���.');
    // edtjumin.setFocus;
    //
    // end;
    // if checkInt(trim(edtjumin2.text)) = false then
    // begin
    // showmessage('�ֹι�ȣ �Է��� Ȯ���ϼ���.');
    // edtjumin2.setFocus;
    //
    // end;

    if trim(edtChart.Text) = '' then
    begin
      showmessage('���Ϲ�ȣ�� �Է��ϼ���.');
      edtChart.SetFocus;
      Result := False;
      exit;
    end;
    if trim(edtname.Text) = '' then
    begin
      showmessage('������ �Է��ϼ���.');
      edtname.SetFocus;
      Result := False;
      exit;
    end;

    if loadresult = 6 then // ���� ��ȸ=0
    begin

      if isEmptyChart(edtChart.Text) = False then
      begin
        showmessage('�̹� ����� ���Ϲ�ȣ�Դϴ�.');

        exit;
      end;

    end;

    if trim(edtSoge2.Text) <> '' then
    begin
      if (((lblSogeIdn.Caption = '0') or (lblSogeIdn.Caption = '')) and
        (lblSogeChart.Text = '')) or
        ((ma_refer <> '') and (edtSoge2.Text <> ma_refer)) then

      begin
        showmessage('[�Ұ��Ѻ�]�� �Է��� ��, ����Ű�� [�Ұ��� ����]�� �Է��ϰ� [����]��ư�� �������մϴ�.');

       // pnlSoge.visible := true;

        edtSoge2.SetFocus;

        Result := False;

        exit;
      end;

    end;

    if cbJange.Checked = true then
      varJange := '1'
    else
      varJange := '0';

    if chkPregnan.Checked = true then
      varPregnan := '1'
    else
      varPregnan := '0';

    if cbSMS.Checked = true then
      varSMS := '0'
    else
      varSMS := '1';

    if cbSms2.Checked = true then
      varSMS2 := '0'
    else
      varSMS2 := '1'; // 2012.2.7

    if cbSms3.Checked = true then
      varSms3 := '0'
    else
      varSms3 := '1';

    if cbMoon.Checked = true then
      varmoon := '1'
    else
      varmoon := '0';

    if cbinfoSave.Checked = true then
      varInfoSave := '1'
    else
      varInfoSave := '0';

    if cbChartSaveOk.Checked = true then
      varChartSaveOk := '1'
    else
      varChartSaveOk := '0';

    if trim(lblidn.Caption) = '' then
    begin
      insertflag := true;
    end
    else
    begin
      insertflag := False;
      varidn := strtoint(lblidn.Caption);
    end;

    if trim(edtemail.Text) <> '' then
    begin
      varEmail := edtemail.Text + '@' + cbEmail.Text;
    end
    else
      varEmail := '';

    if trim(edtJeju43.Text) <> '' then
      varJeju43 := trim(edtJeju43.Text);

    // ma_gogek_pibo �Ǻ����� ����/����

    // if edtgaip.text <> '' then //�Ǻ������̸��� �ִ°��� pibo_id = 0 �� �ɼ� ����.
    // begin
    //
    // //�ڰ���ȸ�ÿ� ��������. Ű�� ���Ϲ�ȣ/�ڰ��������
    // varPiboId := saveGogekpibo(
    // lblpiboid.Caption,
    // ma_PiboName,
    // ma_K_Number,
    // ma_jongbeul, //����
    // edtZip.Text, //�������ȣ
    // memAdd.Text, //���ּ�
    // ma_Kiho, //���ձ�ȣ
    // edthphone.text, //����ȭ��ȣ
    // ma_apply_Day, //������ ������
    // formatDatetime('YYYY-MM-DD', now), //regDay
    // ma_budam,                 //bontype
    // ma_janek,             //janek
    // ma_sanjung,                 //bonsanjung
    // ma_artTeeth1,             //artTeeth1
    // ma_artTeeth2,             //artTeeth2
    // ma_artYoyang1,            //implTeeth1
    // ma_artYoyang2,            //implTeeth2
    // ma_implTeeth1,            //implYoyang1
    // ma_implTeeth2,            //implYoyang2
    // ma_implYoyang1,           //artYoyang1
    // ma_implYoyang2,           //artYoyang2
    // ma_Sunkiho1,                    //sunkiho1
    // ma_Sunkiho2,            //sunkiho2
    // ma_Sunkiho3,            //sunkiho3
    // ma_Sunkiho4,            //sunkiho4
    // '',                                //pregnan
    // ma_ChasangNo,           //chaSangNo
    // formatDatetime('YYYY-MM-DD', now), //johoidate
    // ma_Special,                               //jange //Y : ��ֿ� N: ����ֿ�
    // ma_RestrictCd,                                //restricted //�޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
    // ma_cancelDay, //RestrictDt
    // ma_PiboName      //sedejuNm
    // );
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    // ); //pibo_id�� ������ ����ġid �����ؼ� �����´�.
    // end
    // else
    // begin
    // varPiboId := '0';
    // end;
    //
    // if (edtgaip.text <> '')
    // and ((edtgaip.text <> ma_PiboName)
    // or (edtJungno.Text <> ma_K_Number)
    // or (inttostr(cbjong.itemindex + 1) <> ma_jongbeul)) then
    // //�Ǻ����ڰ� �ٲ���� pibo_id = 0 �� ȣ���ؼ� pibo_id�� ã�´�
    // begin
    // varPiboId := saveGogekpibo(
    // '0',
    // edtgaip.text,
    // edtJungno.Text,
    // inttostr(cbjong.itemindex + 1), //����
    // edtZip.Text, //�������ȣ
    // memAdd.Text, //���ּ�
    // edtgiho.Text, //���ձ�ȣ
    // edthphone.text, //����ȭ��ȣ
    // formatDatetime('YYYY-MM-DD', now), //������ ������
    // formatDatetime('YYYY-MM-DD', now));
    // end
    // else
    // if ( edtgaip.text <> '') and ( varPiboId ='0') then //�Ǻ������̸��� �ִ°��� pibo_id = 0 �� �ɼ� ����.
    // begin
    // varPiboId := saveGogekpibo(
    // lblpiboid.Caption,
    // edtgaip.text,
    // edtJungno.Text,
    // inttostr(cbjong.itemindex + 1), //����
    // edtZip.Text, //�������ȣ
    // memAdd.Text, //���ּ�
    // edtgiho.Text, //���ձ�ȣ
    // edthphone.text, //����ȭ��ȣ
    // formatDatetime('YYYY-MM-DD', now), //������ ������
    // formatDatetime('YYYY-MM-DD', now)); //pibo_id�� ������ ����ġid �����ؼ� �����´�.
    // end
    // else
    // begin
    // //  varPiboId := '0';
    // end;

    lblPiboid.Caption := varPiboID;
    varfamID := '0';

    { if varPiboId <> '0' then
      begin

      with dm_f.SqlWork do
      begin

      Close;
      SQL.Clear;
      SQL.Add('select * from ma_gogek_basic');
      SQL.Add('where pibo_id=:pibo_id');
      parambyname('pibo_id').asString := varPiboId;
      open;
      if isEmpty then
      begin
      varfamID := '0';
      end
      else
      begin
      varfamID := FieldByName('fam_id').AsString;
      end;

      end;

      if varfamID = '0' then
      begin
      with Dm_f.sqlTemp do
      begin
      close;
      SQL.Clear;
      SQL.Add('Select isnull(Max(fam_id),0) +1  as MaxFamcode from  ma_gogek_basic');
      open;
      varfamID := intTostr(FieldByname('MaxFamcode').Asinteger);
      end;

      with Dm_f.sqlTemp do
      begin
      Close;
      SQL.Clear;
      SQL.Add('update ma_gogek_basic set fam_id= :fam_id where pibo_id= :pibo_id ');
      ParamByName('pibo_id').AsString := varPiboId;
      ParamByName('fam_id').AsString := varfamID;
      execsql;
      end;

      end;

      end;
      if checkint(varfamID) then
      main_f.famcode := strtoint(varfamID)
      else
      main_f.famcode := 0;
    }
    // ************************************

    if configvalue.varDaegiTeamSave = '1' then // �������� ������ ������
    begin
      cbDoc.ShowHint := true;
      cbDoc.Hint := '���� ���´� ȯ�� ����� ����â��  ��������� ������ ����ǰ� ����˴ϴ�.' + #10#13 +
        '���� - �⺻�������� - ���ǥ���� - [ȯ�� ����� ��������� ������ ȯ�� �� ����]���� �缳�� �� �� �ֽ��ϴ�.';

      cbDoc.ItemIndex := main_f.cbDoc.ItemIndex;
    end
    else
    begin
      cbDoc.ShowHint := False;
      cbDoc.Hint := '';

    end;


    // showmessage(cbDoc.ColumnItems[cbDoc.itemindex, 2]);

    exceptlogging('varChart = ' + edtChart.Text + #10#13 + 'edtname.text = ' +
      edtname.Text + #10#13 + 'edtJumin.text + edtJumin2.text = ' +
      edtJumin.Text + edtJumin2.Text + #10#13 + 'lblpiboid.caption = ' +
      lblPiboid.Caption + #10#13 + 'inttostr(cbrel.itemindex + 1) = ' +
      inttostr(cbRel.ItemIndex + 1) + #10#13 + 'lblSogeIdn.Caption = ' +
      lblSogeIdn.Caption + #10#13 + 'inttostr(main_f.famcode) = ' +
      inttostr(famcode) + #10#13 + ' varJange = ' + varJange + #10#13 +
      'edtbirth.text = ' + edtBirth.Text + #10#13 + 'varmoon = ' + varmoon +
      #10#13 + 'edtfirst.text = ' + edtFirst.Text + #10#13 + 'edtlast.text = ' +
      edtlast.Text + #10#13 + 'formatDatetime(YYYY-MM-DD,now) = ' +
      formatdatetime('YYYY-MM-DD', now) + #10#13 +
      'cbDoc.ColumnItems[cbDoc.itemindex,  0] = ' + cbDoc.ColumnItems
      [cbDoc.ItemIndex, 0] + #10#13 +
      'cbDoc.ColumnItems[cbDoc.itemindex,  2] = ' + cbDoc.ColumnItems
      [cbDoc.ItemIndex, 2] + #10#13 + 'cbHyg.text = ' + cbHyg.Text + #10#13 +
      'lblSogeChart.Text = ' + lblSogeChart.Text + #10#13 + 'edtSoge.text = ' +
      edtSoge2.Text + #10#13 + 'edtSogeNeyuk.text = ' + edtSogeNeyuk.Text +
      #10#13 + 'memChamgo.text = ' + memChamgo.Text + #10#13 +
      'edtbudam.text = ' + edtBudam.Text + #10#13 + 'edtjanek.text = ' +
      edtjanek.Text + #10#13 + 'varSMS = ' + varSMS + #10#13 +
      'edtartTeeth1.Text = ' + edtartTeeth1.Text + #10#13 +
      'edtartTeeth2.Text = ' + edtartTeeth2.Text + #10#13 + 'edtbonNO.text = ' +
      edtbonNO.Text + #10#13 + 'varSMS2 = ' + varSMS2 + #10#13 + 'varSMS3 = ' +
      varSms3 + #10#13 + 'varinfosave = ' + varInfoSave + #10#13 +
      'edtpname1.text = ' + edtPname1.Text + #10#13 + 'edtPname2.text = ' +
      edtPname2.Text + #10#13 + ' varchartsaveOk = ' + varChartSaveOk);

    if saveGogekbasic(
       trim(edtChart.Text),
       trim(edtname.Text),
      trim(edtEngName.Text),
      trim(edtJumin.Text) + trim(edtJumin2.Text),
      varPiboID, // lblpiboid.caption, //�Ǻ����� ���̵�
      inttostr(cbRel.ItemIndex + 1), // lblpiboid.caption, //����
      lblSogeIdn.Caption, // '0', //refer_id //<--����
      inttostr(famcode), // '0', //fam_id
      varJange, // ��ֿ���
      edtBirth.Text, // ����
      varmoon, // moon,����
      edtFirst.Text, // formatDatetime('YYYY-MM-DD', now), //first_day
      edtlast.Text, // formatDatetime('YYYY-MM-DD', now), //last_day
      formatdatetime('YYYY-MM-DD', now),
      cbDoc.ColumnItems[cbDoc.ItemIndex, 0],
      // Team ����ȣ(team_name)//cbDamteam.Text,
      cbDoc.ColumnItems[cbDoc.ItemIndex, 2], // Doc ����(team_doctor1)(�����)
      cbHyg.Text,
      lblSogeChart.Text,
      edtSoge2.Text,
      edtSogeNeyuk.Text,
      memChamgo.Text,
      edtBudam.Text,
      edtjanek.Text,
      varSMS,
      edtartTeeth1.Text,
      // 2012.7.1
      edtartTeeth2.Text, // 2012.7.1
      edtbonNO.Text,
      varSMS2,
      varSms3,
      varInfoSave,
      edtPname1.Text,
      edtPname2.Text,
      varChartSaveOk,
       varPregnan,
       lblChaSangNo.Caption) = true
    then // reg_day

    begin

      saveGogekpibo(lblPiboid.Caption, trim(edtChart.Text), ma_Paname,
        // ma_PiboName,
        edtJungNo.Text, // ma_K_Number,
        inttostr(cbJong.ItemIndex + 1), // ����
        edtZip.Text, // �������ȣ
        memAdd.Text, // ���ּ�
        edtGiho.Text, // ���ձ�ȣ
        edtHphone.Text, // ����ȭ��ȣ
        ma_apply_Day, // ������ ������
        formatdatetime('YYYY-MM-DD', now), // regDay
        ma_budam, // bontype
        ma_janek, // janek
        ma_sanjung, // bonsanjung
        edtSanjung.Text,
        edtTeakryeRegNo.Text,
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
        formatdatetime('YYYY-MM-DD', now), // johoidate
        ma_special, // jange //Y : ��ֿ� N: ����ֿ�
        ma_RestrictCd, // restricted //�޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
        ma_cancelDay, //
        ma_hira_jong, // hira_jong
        ma_PiboName // sedejuNm
        );


      // ma_gogek_address �ּ� ����/����

      lbladdid.Caption := saveGogekAddress(lbladdid.Caption, edtChart.Text, '',
        edtZip.Text, memAdd.Text, '1', formatdatetime('YYYY-MM-DD', now));



      //ToDO : Map Latitude Longitude  Update
          try
              if memAdd.Text <> '' then
              begin
                 aMapinfo := GetMapInfo( memAdd.Text) ;
                 updateGogekAddress(lbladdid.Caption ,
                     aMapinfo.Latitude,
                     aMapinfo.Longitude );
              end;
          finally

          end;


      // ma_gogek_43 ����43 ����ȣ ����/����
      saveGogek43(edtChart.Text, varJeju43, formatdatetime('YYYY-MM-DD', now));

      // ma_gogek_email �̸��� ����/����
      saveGogekemail(edtChart.Text, varEmail,
        formatdatetime('YYYY-MM-DD', now));

      saveGogekReferHosp(edtChart.Text,
        trim(edtReferHospCode.Text),
        cbReferHospDoc.text,
        formatdatetime('YYYY-MM-DD', now));

      // ma_gogek_office

      // ma_gogek_phone
      lblCphoneid.Caption := saveGogekPhone(lblCphoneid.Caption, edtChart.Text,
        edtCphone.Text, varSMS, '2', // �޴���
        formatdatetime('YYYY-MM-DD', now), edtname.Text);
      lblHphoneid.Caption := saveGogekPhone(lblHphoneid.Caption, edtChart.Text,
        edtHphone.Text, '1', '1', // ����ȭ
        formatdatetime('YYYY-MM-DD', now), edtname.Text);

      lblPPhoneid.Caption := saveGogekPhone(lblPPhoneid.Caption, edtChart.Text,
        edtPPhone.Text, varSms3, // ���� ������ ����...   0�̸� ������ 1�̸� �Ⱥ�����
        '3', // Parent ���� ��ȭ
        formatdatetime('YYYY-MM-DD', now), edtname.Text);

      lblPPhoneid2.Caption := saveGogekPhone(lblPPhoneid2.Caption,
        edtChart.Text, edtPphone2.Text, varSMS2,
        // ���� ������ ����...   0�̸� ������ 1�̸� �Ⱥ�����
        '4', // Parent �ƺ� ��ȭ
        formatdatetime('YYYY-MM-DD', now), edtname.Text);

      // ma_gogek_refer
      // ma_gogek_referer
      // ma_gogek_remark

      // ������ ���� �̸� ����
      if isNameChanged = true then
      begin
        UpdatePromiseNJubsuName(edtChart.Text);

      end;

    end;

    DeleteTempChart(edtChart.text);


//    ���ο� ȯ�ڸ� ��Ͻ�Ų ���
//    if loadresult = 6 then
//      SeqUpdate; // ���Ϲ�ȣ ������Ʈ




    // Ÿ�翵��DB�� ����  .... ���⿡�� �����Ϲ� main_f �� edtchart.text �� ����    2012.1.11
    // if main_f.isImageSave then
    // main_f.imageDbSave;

    loadresult := 0; // ���� �ҷ����� �� �ʱ�ȭ
    Result := true;

    // ToDo ��ȭ��ȣ �ٲ�� Ȯ���ؼ� ���� ���� ���೻�� ��ȭ��ȣ �����Ѵ�. ==<������
    // ���೻�� ��� ��ȭ��ȣ  �ٲ۴�.
    UpdatePromiseCPhone(0, edtChart.Text, edtCphone.Text);



    // with dm_f.SqlChart do
    // begin
    //
    // if configvalue.varChartConv = '1' then
    // begin
    // Close;
    // Sql.Clear;
    // Sql.Add('select chart from ma_gogek_basic where (charindex(''`'',chart) < 1) and (charindex(''.'',chart) < 1) ');
    // sql.add('and (charindex('','',chart) < 1) and (charindex(''*'',chart) < 1) AND (CHARINDEX(''A'', chart) < 1) AND (CHARINDEX(''a'', chart) < 1) ');
    // sql.add('AND (CHARINDEX(''-'', chart) < 1) AND (CHARINDEX(''['', chart) < 1) AND (CHARINDEX('']'', chart) < 1) ');
    // Sql.Add('order by CONVERT(integer, chart, 112)');
    // Open;
    // end
    // else
    // begin
    // Close;
    // Sql.Clear;
    // Sql.Add('select chart from ma_gogek_basic order by chart ');
    // Open;
    // end;
    //
    // end;

  except
    Result := False;
  end;

end;

procedure Tmain_f.grdCarInfoClickCell(Sender: TObject; ARow, ACol: Integer);
begin
//        if arow <= 0 then exit;
//
//
//        cbJabosaCode2.ItemIndex         := cbJabosaCode2.items.indexof( grdCarInfo.cells[2,aRow]);
//        edtJaboSagoJubsuNo2.text        := grdCarInfo.cells[3,aRow];
//        edtJaboJigubBojungNo2.text      := grdCarInfo.cells[4,aRow];
//        lblCarId.caption                := grdCarInfo.cells[5,aRow];
end;

procedure Tmain_f.grdCarInfoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
        if arow <= 0 then exit;


        cbJabosaCode2.ItemIndex         := cbJabosaCode2.items.indexof( grdCarInfo.cells[2,aRow]);
        edtJaboSagoJubsuNo2.text        := grdCarInfo.cells[3,aRow];
        edtJaboJigubBojungNo2.text      := grdCarInfo.cells[4,aRow];
        lblCarId.caption                := grdCarInfo.cells[5,aRow];

end;

procedure Tmain_f.grdEngNameDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  edtEngName.Text := grdEngName.Cells[1, ARow];
  pnlEngName.visible := False;
end;

procedure Tmain_f.grdJx2GetAlignment(Sender: TObject; ARow, ACol: Integer;
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

procedure Tmain_f.grdJx2GetCellBorder(Sender: TObject; ARow, ACol: Integer;
  APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;

end;

procedure Tmain_f.grdJx2GetCellColor(Sender: TObject; ARow, ACol: Integer;
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



      if aCol = 0  then
      begin

            ABrush.Color :=  $00FB9B60;  ;//clBtnFace;
            AFont.Color := ClWhite;
      end;


      // ToDo: �� ������ ������ �Ѵ�..
      if  ( aCol > 0 ) and (grdJx2.Cells[0, ARow] = 'GR')  then //Group 0
      begin

           ABrush.Color :=  $00B6FAB4;
      end;


end;

procedure Tmain_f.grdJx2GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
{
0 ����
1 ��Ī
2 �ܰ�
3 1ȸ������
4 Ƚ��
5 �ϼ�
6 �ݾ�
7 �޿�
8 Modality
9 user_key
}
    case ACol of
   2,  4, 5, 6, 7:  // �ϼ�, Ƚ��, �޿�
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
16 �����ϼ�
17 Ȯ���ڵ�
18 jin_key
19 su_key
20 su_Kor_Name
21 1/2
22 Jin_day
23 ����ð�
24 su_eng_name
25 �����ڵ�
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

�� ���

  d = ����
  e = ����ǥ��
  f = �Ҽ��� �ι�° �ڸ� ���� �ݿø�
  g = �Էµ� ��� ǥ��
  m = ��ȭ
  n = ��ġ ��ǥ ǥ��(�Ҽ��� �ι�° �ڸ� ���� �ݿø�)
  p = ������
  s = ���ڿ�
  u = ��ȣ���� ����
  x = 16����

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

procedure Tmain_f.SavePatientGroup(varCode, varChart: string);
var
  varGroup: Integer;
  varGroupCount: Integer;
  varFirstDay: string;
begin
  with dm_f.sqlwork do
  begin
    // ma_basic�� ������ ����...
    close;
    sql.Clear;
    sql.Add('select count(*) as GroupCount from ma_basic');
    sql.Add(' where Code like :Code and Code<> :code2');
    parambyname('Code').asString := varCode + '%';
    parambyname('Code2').asString := varCode + '000';
    open;
    last;
    if not isEmpty then
      varGroupCount := fieldbyname('GroupCount').Asinteger
    else
      varGroupCount := 0;
  end;

  varGroupCount := scGroup.ControlCount;

  with dm_f.sqlwork do
  begin

    close;
    sql.Clear;
    sql.Add('select first_day from view_gogek');
    sql.Add('where Chart=:chart');
    parambyname('Chart').asString := varChart;
    open;
    if not isEmpty then
    begin
      varFirstDay := fieldbyname('first_day').asString;
    end;

    // ShowMessage(varFirstDay);

    close;
    sql.Clear;
    sql.Add('delete from ma_gogek_Group');
    sql.Add('where Chart=:chart');
    parambyname('Chart').asString := varChart;
    execsql;

  end;

  if varGroupCount > 0 then
  begin
    for varGroup := 0 to varGroupCount - 1 do
    begin

      if (scGroup.FindComponent('cbGogekgroup' + inttostr(varGroup))
        as TCheckBox).Checked = true then
      begin
        with dm_f.sqlwork do
        begin

          close;
          sql.Clear;
          sql.Add('insert into ma_gogek_group');
          sql.Add('(Chart, Gubun, regDay) values');
          sql.Add('(:Chart, :Gubun, :regDay)');
          parambyname('Chart').asString := varChart;
          parambyname('Gubun').asString :=
            (scGroup.FindComponent('cbGogekgroup' + inttostr(varGroup))
            as TCheckBox).Caption;

          // RegDay�� ó�� ������� �����´�.
          if trim(deldash(varFirstDay)) <> '' then
            parambyname('regDay').asString := varFirstDay
          else
            parambyname('regDay').asString := formatdatetime('YYYY-MM-DD', now);
          execsql;
        end;
      end;
    end;
  end;

end;

procedure Tmain_f.DisplayPatientGroup(groupRemark: string);
// �˻��� �� �׷��� ��ũ�ѹڽ��� �ѷ��ش�.
var
  tempCheckBox: TCheckBox;
begin

  setLength(varGogekGroup, 100);

  tempCheckBox := TCheckBox.Create(scGroup);

  with tempCheckBox do
  begin
    Parent := scGroup;
    left := X;
    top := Y;
    Font.Size := 9;
    Width := 65;
    Height := 17;
    Color := clWhite;
    Font.Size := 9;
    Font.Name := '����';
    Font.Color := clBlue;
    Name := 'cb' + 'Gogekgroup' + inttostr(i);
    // ShowMessage('CheckBox.Name: ' + Name);
    varGogekGroup[i] := groupRemark;
    Caption := groupRemark;
    ShowHint := true;
    // Hint := Name;
    Hint := groupRemark;
    // showmessage('00'+groupRemark);
  end;

  // memGroup.Name := tempCheckBox.Name;
  // memGroup.Text := tempCheckBox.Caption;

end;

procedure Tmain_f.LoadPatientGroup(varCode: string; scrollbox: TScrollBox);
// varCode:008:������1//DB���� �� �׷��Ī�� ��ġ�Ͽ� �´�.
begin
  X := 10; // checkBox�� �ʱ� Left��
  Y := 2; // checkBox�� �ʱ� Top��
  i := 0;
  // sbGroup�� ������ ��� �����.
  if scGroup.ControlCount > 0 then
  begin
    while scGroup.ControlCount > 0 do
    begin
      scGroup.Controls[0].Destroy;
    end;

  end;

  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Add('select * from ma_basic');
    sql.Add(' where Code like :Code and Code<> :code2  ');
    parambyname('Code').asString := varCode + '%';
    parambyname('Code2').asString := varCode + '000';

    if varViewAll <> true then
    begin
      sql.Add('and ( val <>  ''A'' ) ');

    end;

    // Sql.Add('order by disp');
    sql.Add('order by Code');

    open;
    first;

    if not isEmpty then
    begin
      while not eof do
      begin
        // ShowMessage(FieldByName('disp').AsString);
        DisplayPatientGroup(fieldbyname('disp').asString);
        // if x < scGroup.Width - 85 then
        if X < scGroup.Width - 125 then
        begin
          // x := x + 65; //checkBox�� Left������
          X := X + 105; // checkBox�� Left������
        end
        else
        begin // �ٹٲ㼭
          X := 10; // checkBox�� �ʱ� Left��
          Y := Y + 20; // checkBox�� Top ���� ��

        end;
        i := i + 1; // �̸� �� ����
        next;
      end;
    end;
  end;

end;

procedure Tmain_f.SaveNewonDongGiGroup(varCode, varChart: string);
var
  varGroup: Integer;
  varGroupCount: Integer;
  varFirstDay: string;
begin
  with dm_f.sqlwork do
  begin
    // ma_basic�� ������ ����...
    close;
    sql.Clear;
    sql.Add('select count(*) as GroupCount from ma_basic');
    sql.Add(' where Code like :Code and Code<> :code2');
    parambyname('Code').asString := varCode + '%';
    parambyname('Code2').asString := varCode + '000';
    open;
    last;
    if not isEmpty then
      varGroupCount := fieldbyname('GroupCount').Asinteger
    else
      varGroupCount := 0;
  end;

  with dm_f.sqlwork do
  begin

    close;
    sql.Clear;
    sql.Add('select first_day from view_gogek');
    sql.Add('where Chart=:chart');
    parambyname('Chart').asString := varChart;
    open;
    if not isEmpty then
    begin
      varFirstDay := fieldbyname('first_day').asString;
    end;

    if length(varFirstDay) = 0 then
      varFirstDay := formatdatetime('YYYY-MM-DD', now);
    // ShowMessage(varFirstDay);

    // ToDo:why delete? Ha...20110224
    // �ֳ��ϸ� �״�� �ٽ� ���ϱ�,,,,
    close;
    sql.Clear;
    sql.Add('delete from ma_gogek_munjin');
    sql.Add('where Chart=:chart');
    sql.Add(' and kind= ''dong'' ');
    parambyname('Chart').asString := varChart;
    execsql;

  end;

  if donggiMemo1.Text <> '' then
  begin
    with dm_f.sqlwork do
    begin

      close;
      sql.Clear;
      sql.Add('insert into ma_gogek_munjin');
      sql.Add('(Chart, val,valcap, kind, cap1, cap2, regDay) values');
      sql.Add('(:Chart, :val, :valCap, :kind, :cap1, :cap2, :regDay)');
      parambyname('Chart').asString := varChart;
      parambyname('val').asString := '0';
      parambyname('kind').asString := 'dong';
      parambyname('cap1').asString := '';
      parambyname('cap2').asString := '';
      parambyname('valcap').asString := donggiMemo1.Text;

      parambyname('regDay').asString := formatdatetime('YYYY-MM-DD', now);
      execsql;

    end;

  end;

  if varGroupCount > 0 then
  begin
    for varGroup := 0 to varGroupCount - 1 do
    begin

      if (FlowPanel1.FindComponent('scNewonDongGi' + inttostr(varGroup))
        as TCheckBox).Checked = true then
      begin
        with dm_f.sqlwork do
        begin

          close;
          sql.Clear;
          sql.Add('insert into ma_gogek_munjin');
          sql.Add('(Chart, kind, val, regDay) values');
          sql.Add('(:Chart, :kind, :val, :regDay)');
          parambyname('Chart').asString := varChart;
          parambyname('kind').asString := 'dong';
          parambyname('val').asString :=
            (FlowPanel1.FindComponent('scNewonDongGi' + inttostr(varGroup))
            as TCheckBox).Caption;
          // RegDay�� ó�� ������� �����´�.
          parambyname('regDay').asString := varFirstDay;
          // formatDateTime('YYYY-MM-DD', now);
          execsql;
        end;
      end;
    end;
  end;

end;

function Tmain_f.LoadGajok_famid(varJungNo, varHomeTel, varJuso,
  varChart: string): Integer;
var
  sChart: string;
begin
  // 1. ��ȯ�� �����ϴ� ��� ��ȭ��ȣ, ����ȣ�� ���� ����� ã�Ƽ� �׻���� famcode�� �����´�.
  // 2. �׸��� grdGajok���� �ҷ��´�.
  // 3. ��� ������ ����� �ҷ�����
  // 4. grdgajok�� �����Ѵ�.

  Result := 0;

  sChart := substr(varChart, 1, '-');

  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;

    if FamilySearch = '1' then
    begin

      sql.Add('Select top 1 Chart, Name, Jumin, fam_id, ');
      sql.Add('Last_day , kwan, h_phone, c_phone, k_number, h_juso from view_gogek');
      sql.Add('Where ((K_number=:K_Number) or ');
      sql.Add('(H_Phone=:H_Phone) or ');
      sql.Add('(chart =:H_fam_id) or ');
      sql.Add('(chart like :H_chart))');
      sql.Add('Order by Chart');

      parambyname('H_chart').asString := sChart + '-' + '%';
      parambyname('H_fam_id').asString := sChart;

    end
    else
    begin

      sql.Add('Select top 1 Chart, Name, Jumin, fam_id,  ');
      sql.Add('Last_day , kwan, h_phone, c_phone , k_number, h_juso from view_gogek');
      sql.Add('Where ((K_number=:K_Number) or ');
      sql.Add('(H_Phone=:H_Phone) ');
      // Sql.Add('or (H_juso=:H_juso)');
      sql.Add(')');
      sql.Add('Order by Name, Chart');

      // ParamByName('H_juso').AsString := varJuso;
    end;

    if (varJungNo <> '') and (varJungNo <> '2�����ޱ���') and (varJungNo <> '1�����ޱ���')
    then
      parambyname('K_number').asString := varJungNo

    else
      parambyname('K_number').asString := '�츮����';

    if length(varHomeTel) > 5 then

      parambyname('H_phone').asString := varHomeTel
    else
      parambyname('H_phone').asString := '�츮����';

    open;
    if not isEmpty then
    begin
      Result := fieldbyname('fam_id').Asinteger;
    end;
  end;
end;

procedure Tmain_f.Savegajok(famcode: Integer);
var
  i: Integer;
begin
  try
    // ��������� �˻����� �ʾҴ� �͵���� �ѹ���  ���������ڵ带 ����ȭ������

    if not(famcode > 0) then
    begin
      with dm_f.SqlTemp do
      begin
        close;
        sql.Clear;
        sql.Add('Select isnull(Max(fam_id),0) +1  as MaxFamcode from  ma_gogek_basic');
        open;
        famcode := fieldbyname('MaxFamcode').Asinteger;
      end;
    end;

    for i := 1 to grdGajok.Rowcount - 1 do

    begin
      if grdGajok.Cells[1, i] <> '' then
      begin
        with dm_f.sqlwork do
        begin
          close;
          sql.Clear;
          sql.Add('Update ma_gogek_basic Set');
          sql.Add('fam_id=:fam_id');
          sql.Add('Where Chart=:Chart');
          parambyname('Chart').asString := grdGajok.Cells[1, i];
          parambyname('fam_id').Asinteger := famcode;
          execsql;
        end;
      end;
    end;
    famcode := famcode;
    // showmessage('����Ǿ����ϴ�.');
  except
  end;

end;

procedure Tmain_f.LoadGajok_first(varGajokCode: Integer;
  varJungNo, varHomeTel, varCellTel, varJuso, varChart: string);
var
  sChart: string;
  i, j, fc, recCount: Integer;
begin
  // 1. ��ȯ�� �����ϴ� ��� ��ȭ��ȣ, ����ȣ�� ���� ����� ã�Ƽ� �׻���� famcode�� �����´�.
  // 2. �׸��� grdGajok���� �ҷ��´�.
  // 3. ��� ������ ����� �ҷ�����
  // 4. grdgajok�� �����Ѵ�.

  sChart := substr(varChart, 1, '-');

  if (varGajokCode > 0) then
  begin

    with dm_f.sqlwork do
    begin
      close;
      sql.Clear;

      sql.Add('Select *  from view_gogek');
      sql.Add('Where fam_id =:fam_id ');
      parambyname('fam_id').Asinteger := varGajokCode;

      open;
      if not isEmpty then
      begin

        grdGajok.beginUpdate;
        recCount := recordCount;
        grdGajok.Rowcount := recCount + 1;
        grdGajok.FixedRows := 1;
        grdGajok.FixedCols := 1;

        while not eof do
        begin
          for i := 1 to recCount do
          begin

            grdGajok.Cells[1, i] := fieldbyname('Chart').asString;
            // íƮ
            grdGajok.Cells[2, i] := fieldbyname('Name').asString;
            // ����
            if fieldbyname('Kwan').asString = '1' then
              grdGajok.Cells[3, i] := '����';
            if fieldbyname('Kwan').asString = '2' then
              grdGajok.Cells[3, i] := '�����';
            if fieldbyname('Kwan').asString = '3' then
              grdGajok.Cells[3, i] := '�ڳ�';
            if fieldbyname('Kwan').asString = '4' then
              grdGajok.Cells[3, i] := '�θ�';
            if fieldbyname('Kwan').asString = '5' then
              grdGajok.Cells[3, i] := '��Ÿ';

            grdGajok.Cells[4, i] := NaiCalc(fieldbyname('Jumin').asString);
            // ����
            grdGajok.Cells[5, i] := fieldbyname('Last_day').asString;
            // ����������
            grdGajok.Cells[6, i] := fieldbyname('H_phone').asString;
            // ��ȭ
            grdGajok.Cells[7, i] := fieldbyname('C_phone').asString;
            // �ڵ���
            grdGajok.Cells[8, i] := fieldbyname('k_number').asString;
            // ����ȣ
            grdGajok.Cells[9, i] := fieldbyname('h_juso').asString;
            // �ּ�
            next;

          end;
        end;
        grdGajok.autonumbercol(0);
        grdGajok.endUpdate;

      end
      else
      begin
      end;
    end;
  end
  else
  begin
    with dm_f.sqlwork do
    begin
      close;
      sql.Clear;

      if FamilySearch = '1' then
      begin

        sql.Add('Select Chart, Name, Jumin,  ');
        sql.Add('Last_day , kwan, h_phone, c_phone, k_number, h_juso from view_gogek');
        sql.Add('Where ((K_number=:K_Number) or ');
        sql.Add('(H_Phone=:H_Phone) or ');
        sql.Add('(chart =:H_fam_id) or ');
        sql.Add('(chart like :H_chart))');
        sql.Add('Order by Chart');

        parambyname('H_chart').asString := sChart + '-' + '%';
        parambyname('H_fam_id').asString := sChart;

      end
      else
      begin

        sql.Add('Select Chart, Name, Jumin,  ');
        sql.Add('Last_day , kwan, h_phone, c_phone , k_number, h_juso from view_gogek');
        sql.Add('Where ((K_number=:K_Number) ');
        sql.Add(' or (H_Phone=:H_Phone) ');
        sql.Add(' or (c_Phone=:c_Phone) ');
        // Sql.Add('or (H_juso=:H_juso)');
        sql.Add(')');
        sql.Add('Order by Name, Chart');

        // ParamByName('H_juso').AsString := varJuso;
      end;

      if (varJungNo <> '') and (copy(varJungNo, 1, 5) <> '00000') and
        (varJungNo <> '2�����ޱ���') and (varJungNo <> '1�����ޱ���') then
        parambyname('K_number').asString := varJungNo

      else
        parambyname('K_number').asString := '�츮����';

      if length(varHomeTel) > 5 then

        parambyname('H_phone').asString := varHomeTel
      else
        parambyname('H_phone').asString := '�츮����';

      if length(varCellTel) > 5 then

        parambyname('c_phone').asString := varCellTel
      else
        parambyname('c_phone').asString := '�츮����';

      open;
      if not isEmpty then
      begin

        grdGajok.beginUpdate;
        recCount := recordCount;
        grdGajok.Rowcount := recCount + 1;
        grdGajok.FixedRows := 1;
        grdGajok.FixedCols := 1;

        while not eof do
        begin
          for i := 1 to recCount do
          begin
            grdGajok.Cells[1, i] := fieldbyname('Chart').asString;
            // íƮ
            grdGajok.Cells[2, i] := fieldbyname('Name').asString;
            // ����
            if fieldbyname('Kwan').asString = '1' then
              grdGajok.Cells[3, i] := '����';
            if fieldbyname('Kwan').asString = '2' then
              grdGajok.Cells[3, i] := '�����';
            if fieldbyname('Kwan').asString = '3' then
              grdGajok.Cells[3, i] := '�ڳ�';
            if fieldbyname('Kwan').asString = '4' then
              grdGajok.Cells[3, i] := '�θ�';
            if fieldbyname('Kwan').asString = '5' then
              grdGajok.Cells[3, i] := '��Ÿ';

            grdGajok.Cells[4, i] := NaiCalc(fieldbyname('Jumin').asString);
            // ����
            grdGajok.Cells[5, i] := fieldbyname('Last_day').asString;
            // ����������
            grdGajok.Cells[6, i] := fieldbyname('H_phone').asString;
            // ��ȭ
            grdGajok.Cells[7, i] := fieldbyname('C_phone').asString;
            // �ڵ���
            grdGajok.Cells[8, i] := fieldbyname('k_number').asString;
            // ����ȣ
            grdGajok.Cells[9, i] := fieldbyname('h_juso').asString;
            // �ּ�
            next;
          end;
        end;
        grdGajok.endUpdate;
      end;
    end;

  end;

  // insert to New Patient
  grdGajok.addRow;
  grdGajok.Cells[1, grdGajok.Rowcount - 1] := edtChart.Text; // íƮ
  grdGajok.Cells[2, grdGajok.Rowcount - 1] := edtname.Text; // ����
  grdGajok.Cells[3, grdGajok.Rowcount - 1] := cbRel.Text;

  grdGajok.Cells[4, grdGajok.Rowcount - 1] :=
    NaiCalc(edtJumin.Text + edtJumin2.Text); // ����
  grdGajok.Cells[5, grdGajok.Rowcount - 1] := edtlast.Text; // ����������
  grdGajok.Cells[6, grdGajok.Rowcount - 1] := edtHphone.Text; // ��ȭ
  grdGajok.Cells[7, grdGajok.Rowcount - 1] := edtCphone.Text; // �ڵ���
  grdGajok.Cells[8, grdGajok.Rowcount - 1] := edtJungNo.Text; // ����ȣ
  grdGajok.Cells[9, grdGajok.Rowcount - 1] := memAdd.Text; // �ּ�

end;

procedure Tmain_f.LoadSMSAutosend(varHpNo: string);
begin
  { if not assigned(smsone_f) then
    smsone_f := Tsmsone_f.Create(application);
    smsone_f.edtName.text := edtSoge.text;
    smsone_f.edtRecvno.text := call_tel_type(varHpNo);
    smsone_f.memContent.text :=
    edtSoge.text + '��! ' + edtName.text +
    '���� �Ұ����ּż� �����մϴ�. �ּ��� ���ؼ� �����ϰڽ��ϴ�.';

    smsone_f.varmode := 1;
    smsone_f.Showmodal; }
end;

procedure Tmain_f.CheckBox2Click(Sender: TObject);
begin

      DaegiFrame_fr1.Timer2.Enabled :=  CheckBox2.Checked;

end;

function Tmain_f.CheckReservedSmsEmpty(varChart: string): Boolean;
const
  selectYeyakdata =
    'Select * from ma_sms_sendresult a left join  ma_sms_sendlist b on a.sRcode=b.SbCode'
    + #10#13 + ' Where  (SbSfRecall=''1'') and sbChart=:sbChart';
var
  i, recCount: Integer;
begin
  Result := true;
  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Text := selectYeyakdata;
    parambyname('Sbchart').asString := varChart;
    open;
    Result := isEmpty;
  end;
end;

procedure Tmain_f.CID1Click(Sender: TObject);
begin
CidView('01066450965', '', '', '',
  '');
end;

function Tmain_f.isNameChanged: Boolean;
var
  varName: string;
begin
  Result := False;

  if edtname.Text <> lblName.Caption then
    Result := true;

end;

procedure Tmain_f.UpdatePromiseNJubsuName(varChart: string);
var
  varName: string;
begin

  if varChart = '' then
    exit;
  try

    with dm_f.sqlwork do
    begin

      close;
      sql.Clear;
      sql.Text := 'update ma_jubsu set name=:name   where chart=:chart';
      parambyname('chart').asString := varChart;
      parambyname('name').asString := edtname.Text;
      execsql;

      close;
      sql.Clear;
      sql.Text := 'update ma_promise set name=:name   where chart=:chart';
      parambyname('chart').asString := varChart;
      parambyname('name').asString := edtname.Text;
      execsql;

    end;
  except

    on E: Exception do
    begin
      // dm_f.zConnection.Rollback;
      showmessage(E.Message + ' [���� ������Ʈ ����]');
    end;

  end;
end;

procedure Tmain_f.DeleteTempChart(chartNo : string);
begin
  // dm_f.zConnection.StartTransaction;
  try
    with dm_f.sqlwork do
    begin
      close;
      sql.Clear;
      sql.Add('delete  from tempChart');
      sql.Add('where TempChartNo= :TempChartNo');
      parambyname('TempChartNo').asString := chartNo;
      execsql;
    end;
    // dm_f.zConnection.Commit;
  except
    on E: Exception do
    begin
      // dm_f.zConnection.Rollback;
      showmessage(E.Message + ' [TempChart��������]');
    end;
  end;
end;

procedure Tmain_f.UpdateTempChart(chartNo : string);
begin
  // dm_f.zConnection.StartTransaction;
  try
    with dm_f.sqlwork do
    begin
      close;
      sql.Clear;
      sql.Add('update  tempChart set');
      sql.Add(' inUse = ''0'' ');
      sql.Add('where TempChartNo= :TempChartNo');
      parambyname('TempChartNo').asString := chartNo;
      execsql;
    end;
    // dm_f.zConnection.Commit;
  except
    on E: Exception do
    begin
      // dm_f.zConnection.Rollback;
      showmessage(E.Message + ' [TempChart��������]');
    end;
  end;
end;

procedure Tmain_f.CidView(sCaller, sCallee, sResult, sClSeqno,
  sMiSeqno: WideString);
var
  varTelNo, varDate, varMaxCode, varName, varChartNo: string;

begin
  // CIDâ�� ����.
  if sCaller <> '' then
  begin
    varTelNo := call_tel_type(sCaller);

    varDate := formatdatetime('YYYY-MM-DD', now);
    varMaxCode := formatdatetime('YYYYMMDDhhmmss', now);
  end;

  with dm_f.sqlwork do
  begin
    close;
    sql.Clear;
    sql.Add('select b.chart , b.name, phone ');
    sql.Add('from ma_gogek_phone a join ma_gogek_basic b on a.chart=b.chart');
    sql.Add('where phone = :TelNo');
    parambyname('TelNo').asString := varTelNo;
    open;
    if not isEmpty then
    begin
      varName := fieldbyname('name').asString;
      varChartNo := fieldbyname('Chart').asString;
    end
    else
    begin

      close;
      sql.Clear;
      sql.Add('select name, phone, chart ');
      sql.Add('from ma_gogek_phone ');
      sql.Add('where phone = :TelNo');
      parambyname('TelNo').asString := varTelNo;
      open;
      if not isEmpty then
      begin
        varName := fieldbyname('name').asString;
        varChartNo := fieldbyname('chart').asString;
      end;

    end;
  end;

  if sCaller <> '' then
  begin
    if (configvalue.varCidUse = '1') or // KT openAPI
      (configvalue.varCidUse = '2') or // SKT
      (configvalue.varCidUse = '3') or // LGUPLUS
      (configvalue.varCidUse = '4') or // KTI
      (configvalue.varCidUse2 = '1') then
    begin
      if not Assigned(Cid_f) then
      begin
        Cid_f := TCid_f.Create(application);
        Cid_f.Height := 315 + 122;
        Cid_f.left := 0;

        // cid_f.Top := 0;//cidFormCount * 200;
        Cid_f.top := screen.Height - Cid_f.Height;
        Cid_f.Show;
      end
      else
      begin
        // Cid_f.Show;
        SendMessage(Cid_f.Handle, WM_SYSCOMMAND, SC_RESTORE, 0);
      end;

      // cidFormCount := cidFormCount + 1;

      // if cidFormCount > 3 then
      // cidFormCount := 0;

      // if cidFormCount < 0 then
      // cidFormCount := 0;

      Cid_f.SelectDataTelRec;

      Cid_f.lblvarKind.Caption := '';

      Cid_f.lblvarKind.Caption := sCallee;
      Cid_f.LblTelnumber.Text := varTelNo;
      Cid_f.LblTrCode.Caption := varMaxCode;

      Cid_f.TelNoSet(varTelNo);

      TelRecSave(varMaxCode // ;
        , varName // TrName;
        , varChartNo // TrChart;
        , formatdatetime('YYYY-MM-DD', now)
        // + Copy(TelDate, 1, 2) + '-' +
        // Copy(TelDate, 3, 2)
        // TrDate;
        , formatdatetime('HH:MM', now)
        // Copy(TelDate, 5, 2) + ':' + Copy(TelDate, 7, 2), //TrTime;
        , '' // TriTime;
        , '' // TrRemark
        , '', '', '', '', varTelNo // TrNumber
        , 'R', sClSeqno);

    end
    else
    begin
    end;

  end
  else
  begin
  end;

end;

procedure Tmain_f.LoadJinryo;
var
  strName: string;
  strJumin: string;
  varPath: string;
  team_key: string;
begin
  // showmessage('');


  // currentform := fbohum;

  // if trim(edtChart.Text) = '' then
  // begin
  // showmessage('ȯ�ڸ� �����ϼ���.');
  // exit;
  // end;

  if not Assigned(Jinryo_f) then
  begin

    Jinryo_f := TJinryo_f.Create(nil);
    Jinryo_f.Show;

    Jinryo_f.SyncJa(False);

    Jinryo_f.cbJong.ItemIndex := cbJong.ItemIndex;
    // <====== //grdDaegi.ints[grdDaegi.RealColIndex(35), arow] ;  //jongbyul
    Jinryo_f.cbChoje.ItemIndex := cbChoje.ItemIndex;
    // <====== //grdDaegi.ints[grdDaegi.RealColIndex(36), arow] ;;  //choje

    // Jinryo_f.cbJong.ItemIndex      :=
    // DaegiFrame_fr1.grdDaegi.ints[DaegiFrame_fr1.grdDaegi.RealColIndex(52), DaegiFrame_fr1.grdDaegi.Row] ;  //jongbyul
    // //cbJong.ItemIndex ;   //<====== //
    // Jinryo_f.cbChoje.ItemIndex     :=
    // DaegiFrame_fr1.grdDaegi.ints[DaegiFrame_fr1.grdDaegi.RealColIndex(53), DaegiFrame_fr1.grdDaegi.Row] ;  //choje
    // //cbChoje.ItemIndex;   //<====== //

    Jinryo_f.cbTreatRoom.ItemIndex := cbTreatRoom.ItemIndex; // <======
    // Jinryo_f.cbTreatRoom.ItemIndex :=  cbTreatRoom.ComboItems.IndexInColumnOf(0,
    // DaegiFrame_fr1.grdDaegi.cells[DaegiFrame_fr1.grdDaegi.RealColIndex(54),
    // DaegiFrame_fr1.grdDaegi.Row] );    //<======

    team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
    LoadDoclist(Jinryo_f.cbDoc, team_key);

    // Jinryo_f.cbDoc.ItemIndex      :=  cbDoc.ItemIndex;   //<======
    Jinryo_f.cbDoc.ItemIndex := cbDoc.ComboItems.IndexInColumnOf(2,
      DaegiFrame_fr1.grdDaegi.Cells[DaegiFrame_fr1.grdDaegi.RealColIndex(26),
      DaegiFrame_fr1.grdDaegi.row]); // <======

    Jinryo_f.edtFirst.Text := edtFirst.Text;
    // grdDaegi.Cells[grdDaegi.RealColIndex(18), arow]; //sanjung
    Jinryo_f.edtSanjung.Text := edtSanjung.Text;
    // grdDaegi.Cells[grdDaegi.RealColIndex(37), arow]; //sanjung

    Jinryo_f.JinryoBiSet;


    // Jinryo_f.cbSanCode3.ItemIndex   := grdDaegi.ints[grdDaegi.RealColIndex(38), arow];  //health
    // Jinryo_f.edtSanjung.text        := grdDaegi.Cells[grdDaegi.RealColIndex(37), arow]; //sanjung
    // ma_jubsu_ID                     := grdDaegi.Cells[grdDaegi.RealColIndex(33), arow];

    {
      35  jongbyul
      36  chojae
      37  sanjung
      38  health
      39  pregnan
      40  chasangno
      41  bontype
      42  yujikum
      43  kwamok
      44  treatRoom
      45  artteeth1
      46  artteeth2
      47  implteeth1
      48  implteeth2
    }


    // end
    // else
    // begin
    // Jinryo_f.Preshow;
    // JinRyo_f.pnlCostClear;
    // jinryo_f.dMain.Date := now; //08-27
    // jinryo_f.SyncJa;
    // jinryo_f.jinryoHistoryView;
    //
    // jinryo_f.FieldSetJin(main_f.edtChart.text);
    // SendMessage(Jinryo_f.Handle, WM_SYSCOMMAND,SC_MAXIMIZE,0);// SC_RESTORE, 0);
    // end;

  end
  else
  begin
    SetWindowPos(Jinryo_f.Handle, HWND_TOPMOST, Jinryo_f.left, Jinryo_f.top,
      Jinryo_f.Width, Jinryo_f.Height, 0);
    SendMessage(Jinryo_f.Handle, WM_SYSCOMMAND, SC_RESTORE, 0);

  end;

end;


procedure Tmain_f.CaptureCam;
begin
  if not Assigned(snapCapture_f) then
    snapCapture_f := TsnapCapture_f.Create(application);
  snapCapture_f.Show;

end;

procedure Tmain_f.TodayLoad;
begin

  if not Assigned(rschedule_f) then
  begin
    rschedule_f := Trschedule_f.Create(application);
    with rschedule_f do
    begin
      Show;
    end;
  end;

end;

function Tmain_f.BoninBudamIndex(varCode: string): Integer;
begin
  case StrCase(varCode, ['', 'M001', 'M002', 'M003', 'M004', 'M005', 'M006',
    'M007', 'M008', 'M009', 'M010', 'M011', 'M012', 'M013', 'M014', 'M015',
    'M016', 'M017',
    'B001', 'B002']) of

    1:
      Result := 0;
    2:
      Result := 1;
    3:
      Result := 2;
    4:
      Result := 3;
    5:
      Result := 4;
    6:
      Result := 5;
    7:
      Result := 6;
    8:
      Result := 7;
    9:
      Result := 8;
    10:
      Result := 9;
    11:
      Result := 10;
    12:
      Result := 11;
    13:
      Result := 12;
    14:
      Result := 13;
    15:
      Result := 14;
    16:
      Result := 15;
    17:
      Result := 16;
    18:
      Result := 17;
    19:
      Result := 18;
  end;
end;




// jinryo_s �ҷ����� ..........................................................

// procedure Tmain_f.SetJinSO(sChart, sJin_day: string; sJin_day2:string='');
// var
// i: Integer;
// begin
//
// grdJx2.RemoveRows(1,grdJx2.RowCount-1 );
//
// with dm_f.sqlTemp13 do
// begin
// Close;
// Sql.Clear;
// Sql.Add('select * from jinryo_s  ');
// Sql.Add(' where chart=:chart ');
//
// if   sJin_day2 <> '' then
// begin
// sql.Add(' and jin_day >=:jin_day and jin_day <=:jin_day2 ');
// ParamByName('jin_day2').AsString := sJin_day2;
// end
// else
// begin
// sql.Add(' and jin_day=:jin_day  ');
// end;
// sql.add(' order by sort_key'); //and (su_gu3<>''09'' or jin_danga>0)
// ParamByName('jin_day').AsString := sJin_day;
// ParamByName('chart').AsString := sChart;
//
// Open;
// First;
// if not isEmpty then
// begin
//
//
// while not eof do
// begin
// grdJx2.AddRow;
// if (FieldByName('Su_gu1').AsString = '1') then
// begin
// grdJx2.Cells[0, grdJx2.RowCount -  1] :=  '���';
// end
// else
// if (FieldByName('Su_gu1').AsString = '2') then
// begin
// grdJx2.Cells[0, grdJx2.RowCount - 1] := '����';
// end
// else
// if (FieldByName('Su_gu1').AsString = '5') then
// begin
// grdJx2.Cells[0, grdJx2.RowCount -  1] := '100';
// end
// else
// if (FieldByName('Su_gu1').AsString = '0') then
// begin
// grdJx2.Cells[0, grdJx2.RowCount - 1] :=  '99';
// end
// else
// if ((FieldByName('Su_gu1').AsString = '3') or
// (FieldByName('Su_gu1').AsString = '4')) then
// begin
// grdJx2.Cells[0, grdJx2.RowCount - 1] :=  '���';
// end
// else
// begin
// grdJx2.Cells[0, grdJx2.RowCount - 1] := 'GR';
// end;
//
// grdJx2.Cells[1, grdJx2.RowCount - 1]  :=   FieldByName('user_Name').AsString;
// grdJx2.ints[2, grdJx2.RowCount - 1] := FieldByName('jin_danga').AsInteger;
// //����� �� �ܰ��� ���� �ʴ� ���� ����?
// grdJx2.Cells[3, grdJx2.RowCount - 1]  := FieldByName('jin_qty').AsString;
// if FieldByName('Su_gu3').AsString = '09' then
// begin
// grdJx2.Cells[4, grdJx2.RowCount - 1] := FieldByName('div').AsString;
// end
// else
// begin
// grdJx2.Cells[4, grdJx2.RowCount - 1] :=   FieldByName('jin_ilsu').AsString;
// end;
//
//
// //   if ((dMain.Date < StrToDate('2004-05-01')) and
// if ((now < StrToDate('2004-05-01')) and
// (FieldByName('su_key').AsString = 'L7201006')) then
// grdJx2.ints[6, grdJx2.RowCount - 1] := 50
// else
// grdJx2.ints[6, grdJx2.RowCount - 1] :=  FieldByName('dan_qty').AsInteger;
//
//
// grdJx2.Cells[7, grdJx2.RowCount -1] :=  FieldByName('gub_gu').AsString;//�޿�����
//
// grdJx2.Cells[8, grdJx2.RowCount -1] := FieldByName('Modality').AsString;
// grdJx2.Cells[9, grdJx2.RowCount - 1]  :=   FieldByName('user_key').AsString;
//
// grdJx2.Cells[10, grdJx2.RowCount - 1] := FieldByName('Su_gu1').AsString;
// grdJx2.Cells[11, grdJx2.RowCount - 1]  := FieldByName('Su_gu3').AsString;
// grdJx2.Cells[12, grdJx2.RowCount - 1] := FieldByName('jin_soa').AsString;
// grdJx2.Cells[13, grdJx2.RowCount - 1] :=  FieldByName('jin_simya').AsString;
// grdJx2.Cells[14, grdJx2.RowCount - 1] :=  FieldByName('iOrder').AsString;
// grdJx2.Cells[15, grdJx2.RowCount - 1] :=  FieldByName('sort_key').AsString;
//
//
// if FieldByName('Su_gu3').AsString = '09' then
// grdJx2.Cells[16, grdJx2.RowCount - 1] := FieldByName('jin_Ilsu').AsString;
// grdJx2.Cells[17, grdJx2.RowCount - 1] := FieldByName('Hwakin_key').AsString;
// grdJx2.Cells[18, grdJx2.RowCount -1] := FieldByName('jins_key').AsString;
// grdJx2.Cells[19, grdJx2.RowCount - 1]  :=   FieldByName('su_key').AsString;
// grdJx2.Cells[20, grdJx2.RowCount - 1] := FieldByName('Su_kor_name').AsString;
// grdJx2.Cells[21, grdJx2.RowCount - 1] := FieldByName('gasan').AsString;
//
// grdJx2.ints[5, grdJx2.RowCount - 1] :=           //�ݾ� = �ܰ� * ����* �ϼ�
// CalcKumak(grdJx2.cells[19, grdJx2.RowCount - 1],//suKey:string;
// grdJx2.Ints[2, grdJx2.RowCount - 1],//nDanga:integer ;
// grdJx2.floats[3, grdJx2.RowCount - 1], //nQty:integer ;
// grdJx2.Ints[4, grdJx2.RowCount - 1],//nilsu:integer ;
// grdJx2.Ints[6, grdJx2.RowCount - 1],//nDanQty:integer ;
// FormatDateTime('YYYY-MM-DD', now),//jinryo_f.dMain.date),
// grdJx2.cells[12, grdJx2.RowCount - 1],//soaGasan : string;
// grdJx2.cells[13, grdJx2.RowCount - 1],//simGasan : string;
// true,
// NaiCalc(ma_jumin));// lblAge.caption ) ;
//
//
//
// Next;
// end;
// end
// else
// begin
// //   grdJx2.RowCount := 100;
// end;
//
//
//
// CalcSum(grdJx2,
// grdCost,
// ma_chart,
// configvalue.varGubun,
// FormatDateTime('YYYY-MM-DD', now),//jinryo_f.dMain.date),
// cbJong.itemindex,// jinryo_f.cbJong.itemindex,
// naiCalc(ma_jumin, FormatDateTime('YYYY-MM-DD', now)),// lblAge.caption,// jinryo_f.lblAge.caption,
// false,//chbYagan.checked,// jinryo_f.chbYagan.checked,
// '');//edit3.text );// jinryo_f.edit3.text );   // �Ǿ�о�����
//
// CalcBonin3;
//
//
/// /          if LblAge.Caption <> '' then
/// /          begin
// //CalcSum(grdJx2);
//
/// /             JinryoBiSet;
//
/// /               CalcSum(jinryo_f.grdJx2,
/// /                      jinryo_f.grdCost,
/// /                      ma_chart,
/// /                      configvalue.varGubun,
/// /                      FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
/// /                      jinryo_f.cbJong.itemindex,
/// /                      jinryo_f.lblAge.caption,
/// /                      jinryo_f.chbYagan.checked,
/// /                      jinryo_f.edit3.text );
/// /               CalcBonin3;
/// /          end;
//
//
//
/// /          grdSangByung.removeRows(1, grdSangByung.rowcount -1 );
/// /          Close;
/// /          Sql.Clear;
/// /          Sql.Add('select * from jinryo_o where chart=:chart and jin_day=:jin_day order by jin_order');
/// /          ParamByName('chart').AsString := sChart;
/// /          ParamByName('jin_day').AsString := sJin_Day;
/// /          Open;
/// /          First;
/// /          if not isEmpty then
/// /          begin
/// /               for i := 1 to RecordCount  do
/// /               begin
/// /
/// /                    grdSangByung.addrow;
/// /                    grdSangByung.Cells[1, i] :=   FieldByName('Jin_Order').AsString;
/// /                    grdSangByung.Cells[2, i] :=   FieldByName('p1'        ).AsString;
/// /                    grdSangByung.Cells[3, i] :=   FieldByName('p2'        ).AsString;
/// /                    grdSangByung.Cells[4, i] :=   FieldByName('p3'        ).AsString;
/// /                    grdSangByung.Cells[5, i] :=   FieldByName('p4'        ).AsString;
/// /                    grdSangByung.Cells[6, i] :=   FieldByName('s_key1'    ).AsString;
/// /                    grdSangByung.Cells[7, i] :=   FieldByName('s_key2'    ).AsString;
/// /                    grdSangByung.Cells[8, i] :=   FieldByName('s_key3'    ).AsString;
/// /                    grdSangByung.Cells[9, i] :=   FieldByName('kwamok'    ).AsString;
/// /                    grdSangByung.Cells[10, i] :=   FieldByName('sang1'     ).AsString;
/// /                    grdSangByung.Cells[11, i] :=  FieldByName('sang2'     ).AsString;
/// /                    grdSangByung.Cells[12, i] :=  FieldByName('sang3'     ).AsString;
/// /                    grdSangByung.Cells[13, i] :=  FieldByName('Doc_code'  ).AsString; //�߰�
/// /                    grdSangByung.Cells[14, i] :=  FieldByName('ID'        ).AsString; //�߰�
/// /                    grdSangByung.Cells[15, i] :=  FieldByName('myunhu'    ).AsString; //�߰�
/// /                    Next;
/// /               end;
/// /          end;
/// /          grdSangByung.AutoNumberCol(0);
/// /     end;
// end;
// end;

//procedure Tmain_f.CalcBonin3;
//var
//  iGumjin: Integer;
//begin
//  iGumjin := cbSanCode3.ItemIndex;
//
//  nJinchalRyo := Jinchalryo_make(configvalue.varGubun,
//    // '�ǿ�' ,  // ����, �ǿ�, ���պ���
//    nSumBohumChong + nJinchalRyo, // nSumTotal,// nSumChong,// varChong ,
//    False, // checkInt(varWonweNo), // boolWonwe: Boolean;
//    formatdatetime('YYYY-MM-DD', now), // varJinday,  //YYYY-MM-DD
//    '', // edtSimTime.text, //copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//    cbChoje.ItemIndex, // varChojae - 1 ,
//    cbJong.ItemIndex + 1, // varJongbeul,
//    strtoint(juminToNai(ma_jumin)), // nAge,
//    DayOfWeek(now) = 7, // dMain.Date ) = 7,    //����Ͽ��� - ��䰡������
//    iGumjin,
//    // false,//Yongua,//�����Ʊ���
//    // false,//ilban, //�ǰ�����
//    // false,//ifirst,//������ȯ�����
//    '', // bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//    '', // varBonjun : string;
//    0, // varCT : integer; //CT�ݾ�
//    0, // iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
//    False, // iaOnly, //Ʋ�Ͽ���
//    False, // Ʋ�ϼ�������
//    False, // iaOnly, //���ö�Ʈ����
//    False, // �ٸ� ġ�� ����
//    nBoman, // �Ǿ�ǰ������
//    False, // ���󿩺�
//    False, // jange, //��ֿ���
//    False, // �޿������ڿ���
//    False); // isPregnan);  //�ӽſ���
//
//  nSumBonin := CalcBonin(configvalue.varGubun, // '�ǿ�' ,  // ����, �ǿ�, ���պ���
//    cbIO.ItemIndex, nSumBohumChong + nJinchalRyo,
//    // nSumTotal,// nSumChong,// varChong ,
//    False, // checkInt(varWonweNo), // boolWonwe: Boolean;
//    formatdatetime('YYYY-MM-DD', now), // dMain.Date),//varJinday,  //YYYY-MM-DD
//    '', // edtSimTime.text, //copy(fieldByName('jin_time').AsString,1,2) +':'+ copy(fieldByName('jin_time').AsString,3,2) + ':00' ,  //hh:mm:ss
//    cbChoje.ItemIndex, // varChojae - 1 ,
//    cbJong.ItemIndex + 1, // varJongbeul,
//    strtoint(juminToNai(ma_jumin)), // nAge,
//    DayOfWeek(now) = 7, // dMain.Date ) = 7,    //����Ͽ��� - ��䰡������
//    iGumjin,
//    // false,//Yongua,//�����Ʊ���
//    // false,//ilban, //�ǰ�����
//    // false,//ifirst,//������ȯ�����
//    '', // bondamCode,//  varbonDamCode:string;  //���� ���κδ��ڵ�
//    '', // varBonjun : string;
//    0, // varCT : integer; //CT�ݾ�
//    0, // iaImplantDanga + iaArtTeethDanga,// iaDanga,//varDenture : integer;  //Ʋ�� �ݾ�
//    nSum100by80Jae + nSum100by80Hang,
//    edtSanjung.Text,
//    cbSanjung.Checked,
//    edtJiwon.Text,
//    False, // iaOnly, //Ʋ�Ͽ���
//    False, // Ʋ�ϼ�������
//    False, // iaOnly, //���ö�Ʈ����
//    False, // �ٸ� ġ�� ����
//    nBoman, // �Ǿ�ǰ������
//    False, // ���󿩺�
//    False, // jange, //��ֿ���
//    False, // �޿������ڿ���
//    False); // isPregnan);  //�ӽſ���
//
//  nSumChung := nSumBohumChong + nJinchalRyo - nSumBonin;
//
//  // nSumChung := nSumTotal - nSumBonin ;
//end;

procedure Tmain_f.fieldClear_var;
begin

  nRPPk := 0;


  ma_idn := 0; // : integer;
  ma_SogeIdn := 0; // : integer;
  ma_Chart := ''; // : string;
  ma_Jumin_error := ''; // : string;
  ma_chamgo := ''; // : string;
  ma_Chamgo2 := ''; // : string;
  ma_famid := ''; // : string;
  ma_PiboName := ''; // : string;
  ma_piboid := ''; // : string;
  ma_Kiho := ''; // : string;
  ma_ReferKind := ''; // : string;
  ma_o_Juso2 := ''; // : string;
  ma_o_jikwi := ''; // : string;
  ma_o_phone := ''; // : string;
  ma_c_Phone := ''; // : string;
  ma_Mail := ''; // : string;
  ma_Paname := ''; // : string;

  ma_isBohum100 := '0';
  ma_rp_RequestPK := 0;

  ma_jubsu_date := now; // TdateTime;

  ma_PaEngName := ''; // : string;
  ma_SogeName := ''; // : string;
  ma_SogePhone := ''; // : string;
  ma_h_juso := ''; // : string;
  ma_h_id := ''; // : string;
  ma_h_zip := ''; // : string;
  ma_h_phone := ''; // : string;
  ma_refer := ''; // : string;
  ma_referid := ''; // : string;
  ma_extra := ''; // : string;
  ma_special := ''; // : string;
  ma_Pregnan := ''; // : string; //�ӽſ���
  ma_o_zip := ''; // : string;
  ma_kwan := ''; // : string;
  ma_jumin := ''; // : string;

  ma_referHospName := ''; // : string; //�Ƿں���name
  ma_ReferHospCode := ''; // : string; //�Ƿں���Code
  ma_ReferHospDoc := '';  //�Ƿں��� ����

  ma_GaipKind := ''; // : string;

  ma_hira_jong   := ''; // : string;  //hira taked JongBeul
  ma_jongbeul    := ''; // : string;
  ma_chaSangNo   := ''; // : string; //��������Ϲ�ȣ C�ڵ�

  ma_oldchart    := ''; // : string;

  ma_jumin_y     := ''; // : string;
  ma_last        := ''; // : string;
  ma_kamen       := ''; // : string;
  ma_jumin_Check := ''; // : string;
  ma_first := ''; // : string;
  ma_office := ''; // : string;

  ma_apply_Day := ''; // : string;
  ma_K_Number := ''; // : string;

  ma_budam := ''; // : string;

  ma_sanjung := ''; // : string; //2011.11.9

  ma_teakRye := ''; // : string;
  ma_teakryeCode := ''; // : string;

  ma_janek := ''; // : string;

  ma_artTeeth1 := ''; // : string; //2012.7.1
  ma_artTeeth2 := ''; // : string; //2012.7.1
  ma_artYoyang1 := ''; // : string;
  ma_artYoyang2 := ''; // : string;

  // ver.2.133 ���ö�Ʈ ��Ϲ�ȣ
  ma_implTeeth1 := ''; // : string;
  ma_implTeeth2 := ''; // : string;

  ma_implYoyang1 := ''; // : string;
  ma_implYoyang2 := ''; // : string;

  ma_jangeil   := ''; // : string;
  ma_cancelDay := ''; // : string;
  ma_overseas  := ''; // : string; //Y, N

  ma_RestrictCd := ''; // : string;  //�޿����� ����  "01 : ���ڰ��� 02 : �����ü�� �޿�������"
  ma_JohoiDate  := ''; // : string;

  ma_Sunkiho1 := ''; // : string;
  ma_Sunkiho2 := ''; // : string;
  ma_Sunkiho3 := ''; // : string;
  ma_Sunkiho4 := ''; // : string;

  ma_team := ''; // : string;
  ma_doc := ''; // : string;
  ma_hyg := ''; // : string;

  ma_jubsuteam := ''; // : string;
  ma_jubsudoc := ''; // : string;
  ma_jubsuhyg := ''; // : string;

  ma_birth := ''; // : string;
  ma_moon := ''; // : string;
  ma_sms := ''; // : string;
  ma_sms2 := ''; // : string;
  ma_sms3 := ''; // : string;
  ma_SogeChart := ''; // : string;

  ma_jeju43 := ''; // : string;

  ma_piboJuso := ''; // : string;
  ma_piboZip := ''; // : string;
  ma_pibophone := ''; // : string;
  ma_infosave := ''; // : string;
  ma_chartSaveOk := ''; // : string;
  ma_pname1 := ''; // : string;
  ma_pname2 := ''; // : string;

  famcode := 0; // : integer; //�����ڵ�
  varpidn2 := ''; // : string;

  // ���� �׸��忡�� �ҷ����� ����
  ma_Jubsu_ID := ''; // : string;
  ma_SunapChoje := 0; // : integer;
  ma_SunapJong := 0; // : integer;
  ma_sunapGumjin := 0; // : integer;
  ma_PrIdn := ''; // : string;
  ma_sunapDate := ''; // : string;
  ma_InOut := False; // boolean;  //�Կ�/�ܷ� ����  true : In / false : out
  ma_jinryo_pid := ''; // : string;

  // ��������ÿ� �������� ���� ������ ������ �ʿ䰡 ����.
  // ������ڵ�, �����ڵ� , ������� ������ ��Ƽ� ���׸���� �����׸��带 �����ҋx ��������.

  ma_docCode := ''; // : string;
  ma_docName := ''; // : string;
  ma_treatRoom := ''; // : string;

  ma_sunapChong := 0; // : integer;
  ma_sunapChung := 0; // : integer;
  ma_sunapBonin1 := 0; // : integer;
  ma_sunapBonin := 0; // : integer;
  Jabo_ID := '0';
end;


procedure Tmain_f.LoadSunapMemo(varChart: string; jin_day : Tdate); //ȯ���� �׳�ġ �����޸� �����´�.
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




function Tmain_f.saveJaboInfo(varID, varChart, varJinday, varInsCode,
  varInsJubsu, varInsJigub: string): string;
const
  insert_Carinfo = 'INSERT INTO [ma_car_info]             ' + #10#13 +
    '        ([id]                         ' + #10#13 +
    '        ,[chart]                      ' + #10#13 +
    '        ,[jin_day]                    ' + #10#13 +
    '        ,[insu_code]                  ' + #10#13 +
    '        ,[insu_jubsu]                 ' + #10#13 +
    '        ,[insu_jigub]                 ' + #10#13 +
    '        ,[insu_chunggu]               ' + #10#13 +
    '        ,[insu_chunggu_day])          ' + #10#13 +
    '  VALUES                              ' + #10#13 +
    '        (:id                         ' + #10#13 +
    '        ,:chart                      ' + #10#13 +
    '        ,:jin_day                    ' + #10#13 +
    '        ,:insu_code                  ' + #10#13 +
    '        ,:insu_jubsu                 ' + #10#13 +
    '        ,:insu_jigub                 ' + #10#13 +
    '        ,:insu_chunggu               ' + #10#13 +
    '        ,:insu_chunggu_day)           ';
  Update_Carinfo = 'update  ma_car_info  set            ' + #10#13 +
    '         chart  =:chart                     ' + #10#13 +
    '        ,jin_day = :jin_day                   ' + #10#13 +
    '        ,insu_code = :insu_code                  ' + #10#13 +
    '        ,insu_jubsu =:insu_jubsu                ' + #10#13 +
    '        ,insu_jigub  = :insu_jigub               ' + #10#13 +
    '        ,insu_chunggu =:insu_chunggu               ' + #10#13 +
    '        ,insu_chunggu_day =:insu_chunggu_day   ' + #10#13 +
    '        where id   =:id                        ';
var
  varMaxCode: Integer;

begin
  Result := '';
  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.text := 'select  max(isNull(id, 0))   as maxId from ma_car_info ';
    open;
    varMaxCode := fieldByname('maxId').AsInteger + 1;
  end;

  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    if varID = '0' then
    begin
      SQL.text := insert_Carinfo;
      paramByName('id').AsInteger := varMaxCode;
    end
    else
    begin
      SQL.text := Update_Carinfo;
      paramByName('id').asString := varID;
    end;
    paramByName('chart').asString := varChart;
    paramByName('jin_day').asString := varJinday;
    paramByName('insu_code').asString := varInsCode;
    paramByName('insu_jubsu').asString := varInsJubsu;
    paramByName('insu_jigub').asString := varInsJigub;
    paramByName('insu_chunggu').asString := '';
    paramByName('insu_chunggu_day').asString := '';
    execsql;
  end;

  Result := inttostr(varMaxCode);
end;


procedure Tmain_f.loadJaboInfoList(chart: string);
var
  varBohumsaCode: string;
begin
  grdCarInfo.ColWidths[3] := 0;
  grdCarInfo.ColWidths[4] := 0;
  grdCarInfo.ColWidths[5] := 0;
  grdCarInfo.RowCount := 1;
  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ma_car_info  ');
    SQL.Add(' where chart=:chart ');
    paramByName('chart').asString := chart;
    open;
    if not isEmpty then
    begin

      grdCarInfo.visible:=true;

      while not eof do
      begin
        grdCarInfo.AddRow;
        varBohumsaCode := fieldByname('insu_code').asString;
        grdCarInfo.Cells[1, grdCarInfo.RowCount - 1] :=
          fieldByname('jin_day').asString;
        grdCarInfo.Cells[2, grdCarInfo.RowCount - 1] :=
          loadBohumsaCode(varBohumsaCode);
        grdCarInfo.Cells[3, grdCarInfo.RowCount - 1] :=
          fieldByname('insu_jubsu').asString;
        grdCarInfo.Cells[4, grdCarInfo.RowCount - 1] :=
          fieldByname('insu_jigub').asString;
        grdCarInfo.Cells[5, grdCarInfo.RowCount - 1] :=
          fieldByname('ID').asString;
        next;
      end;
      grdCarInfo.AutoNumberCol(0);
      grdCarInfoClickCell(self, 1,1);
    end
    else
    begin
       grdCarInfo.visible:=false;
    end;
  end;
end;


procedure Tmain_f.loadJaboInfo(jaboCode: Integer);
var
  varBohumsaCode: string;
begin
  with Dm_f.SqlTemp13 do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ma_car_info  ');
    SQL.Add(' where id=:id ');
    paramByName('id').AsInteger := jaboCode;
    open;
    if not isEmpty then
    begin
      varBohumsaCode := fieldByname('insu_code').asString;
      varBohumsaCode := loadBohumsaCode(varBohumsaCode);

      cbJabosaCode2.itemindex := cbJabosaCode2.Items.IndexOf(varBohumsaCode);
      edtJaboSagoJubsuNo2.text := fieldByname('insu_jubsu').asString;
      edtJaboJigubBojungNo2.text := fieldByname('insu_jigub').asString;
      lblCarID.Caption := intToStr(jaboCode);
    end
    else
    begin
      cbJabosaCode2.itemindex := -1;
      edtJaboSagoJubsuNo2.text := '';
      edtJaboJigubBojungNo2.text := '';
      lblCarID.Caption := '0';
    end;
  end;
end;




function Tmain_f.loadBohumsaCode(jaboCode: string): string;
begin
  Result := '';
  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from ma_carinsu_co  ');
    SQL.Add(' where code=:code ');
    paramByName('code').asString := jaboCode;
    open;
    if not isEmpty then
    begin
      Result := fieldByname('code').asString + fieldByname('insu_name')
        .asString;
    end
    else
    begin
      Result := '';
    end;
  end;
end;



end.


 select   su_key, su_kor_name , count(su_key) from jinryo_s
where jin_day >='2019-09-01' and su_key in
('654400571'
,'654802201'
,'676800020'
,'654802091'
,'655401591'
,'647202461'
,'669904600'
,'645102391'
,'640001081'
,'644902262'
,'643600601'
,'649802851'
,'650700221'
,'645903001'
,'INDERMIL'
,'664901551'
,'650700430'
,'657802770'
,'644904350'
,'621400221'
,'621400133'
,'621400123'
,'52600014'
,'52600022'
,'654900081'
,'654900082'
,'654900103'
,'646300022'
,'646300021'
,'621400021'
,'641100931'
,'653401061'
,'650500883'
,'650500421'
,'653102531'
,'644903231'
,'644902101'
,'685800051'
,'648903071'
,'642200701'
,'642901181'
,'657804561'
,'645305031'
,'657802511'
,'657802511')
group by   su_key, su_kor_name


select su_key, su_kor_name, su_gu3 , count(su_key) from jinryo_s
where jin_day >='2019-09-01' and su_gu3 in ('09','10','11','12','13','14','15')
group by   su_key, su_kor_name, su_gu3





'654400571'
,'654802201'
,'676800020'
,'654802091'
,'655401591'
,'647202461'
,'669904600'
,'645102391'
,'640001081'
,'644902262'
,'643600601'
,'649802851'
,'650700221'
,'645903001'
,'INDERMIL'
,'664901551'
,'650700430'
,'657802770'
,'644904350'
,'621400221'
,'621400133'
,'621400123'
,'52600014'
,'52600022'
,'654900081'
,'654900082'
,'654900103'
,'646300022'
,'646300021'
,'621400021'
,'641100931'
,'653401061'
,'650500883'
,'650500421'
,'653102531'
,'644903231'
,'644902101'
,'685800051'
,'648903071'
,'642200701'
,'642901181'
,'657804561'
,'645305031'
,'657802511'
,'657802511'


