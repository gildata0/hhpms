unit optionset;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, AdvGlowButton, ExtCtrls, AdvPanel, AdvGlassButton, StdCtrls,
     EllipsLabel, AdvPageControl, ComCtrls, Planner, AdvTrackBar, MoneyEdit,
     AdvGroupBox,     IdIntercept, IdLogBase,
     IdLogDebug, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
     IdHTTP, inifiles, AdvEdit, AdvCombo, Mask, AdvSpin, AdvOfficeButtons,
     Spin, EditBtn, FileCtrl, shellapi,
      Buttons, IdLogEvent, AdvDropDown,
     AdvColorPickerDropDown, Grids, AdvObj, BaseGrid, AdvGrid, AdvEdBtn,
     AdvFileNameEdit,  IdURI, OleCtrls, AdvDirectoryEdit, AdvUtil  ;

type
     ToptionSet_f = class(TForm)
          pcOption: TAdvPageControl;
          AdvTabSheet1: TAdvTabSheet;
          AdvTabSheet2: TAdvTabSheet;
          pnlBottom: TAdvPanel;
          AdvPanel2: TAdvPanel;
          pnlButton: TAdvPanel;
          AdvPanel4: TAdvPanel;
          AdvPanel5: TAdvPanel;
          AdvPanel6: TAdvPanel;
          AdvPanelStyler1: TAdvPanelStyler;
          cbsTime: TComboBox;
          cbsMin: TComboBox;
          cbfTime: TComboBox;
          cbfMin: TComboBox;
          cbiMin: TComboBox;
          btnSave: TAdvGlowButton;
          btnCancel: TAdvGlowButton;
          Planner1: TPlanner;
          AdvTrackBar1: TAdvTrackBar;
          gbButton: TAdvGroupBox;
          btnBasic: TAdvGlowButton;
          btnJubsu: TAdvGlowButton;
          btnPromise: TAdvGlowButton;
          AdvGlowButton4: TAdvGlowButton;
          AdvGlowButton5: TAdvGlowButton;
          AdvGlowButton6: TAdvGlowButton;
          AdvGlowButton7: TAdvGlowButton;
          AdvGlowButton8: TAdvGlowButton;
          AdvGlowButton9: TAdvGlowButton;
          AdvGlowButton10: TAdvGlowButton;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          EdtHpName: TEdit;
          EdtName: TEdit;
          EdtAdd: TEdit;
          EdtAdd2: TEdit;
          EdtMail: TEdit;
          edtTel1: TEdit;
          edttel2: TEdit;
          edtTel3: TEdit;
          edtHp1: TEdit;
          edtHp2: TEdit;
          edtHp3: TEdit;
          edtZip1: TEdit;
          edtZip2: TEdit;
          cbYear: TComboBox;
          cbMonth: TComboBox;
          cbDay: TComboBox;
          edtJumpoCode: TEdit;
          edtUptae: TEdit;
          edtFax1: TEdit;
          edtUpjong: TEdit;
          edtSaupNo: TEdit;
          HTTP: TIdHTTP;
          LogDebug: TIdLogDebug;
          edtilsu: TAdvSpinEdit;
          edtDocNo: TAdvSpinEdit;
          edtChubang: TAdvSpinEdit;
          edtGubun: TAdvComboBox;
          edtRmode: TAdvComboBox;
          edtBunup: TAdvComboBox;
          edtPrintsu: TAdvComboBox;
          edtChartrule: TAdvComboBox;
          edtChungname: TAdvEdit;
          edtChungjumin: TAdvEdit;
          edtChartnew: TAdvEdit;
          edtjagyukPass: TAdvEdit;
          edtJagyukid2: TAdvEdit;
          edtDeheng: TAdvEdit;
          edtsimJibu: TAdvComboBox;
          lblJumin: TLabel;
          AdvTabSheet3: TAdvTabSheet;
          plchart: TPanel;
          Label36: TLabel;
          rgchartrul: TRadioGroup;
          cbstartno: TCheckBox;
          edtSno: TEdit;
          edtJagyukid: TComboBox;
          edtfax2: TEdit;
          edtfax3: TEdit;
          AdvTabSheet4: TAdvTabSheet;
          AdvTabSheet5: TAdvTabSheet;
          cbWeb: TComboBox;
          AdvTabSheet6: TAdvTabSheet;
          cbAnotherViewerUse: TComboBox;
          edtDbName: TEdit;
          edtUsername: TEdit;
          edtPass: TEdit;
          cbimageKind: TComboBox;
          cbDetailLoad: TAdvComboBox;
          EdtId: TEdit;
          EdtPass1: TEdit;
          EdtPass2: TEdit;
          cbSmslogin: TAdvComboBox;
          cbSmsSave: TAdvOfficeCheckBox;
          AdvTabSheet7: TAdvTabSheet;
          edtGugan: TAdvEdit;
          cbChamgoload: TAdvComboBox;
          cbDur: TAdvComboBox;
          Label5: TLabel;
          cbBackup: TAdvComboBox;
          edtViewer: TEditBtn;
          cbViewKind: TComboBox;
          imoPanel: TPanel;
          AdvPanel1: TAdvPanel;
          cbbefortime: TComboBox;
          cbbeformin: TComboBox;
          memSMS: TMemo;
          edtbeforsms: TSpinEdit;
          cbSms: TAdvComboBox;
          btnChar: TSpeedButton;
          cbCheck: TAdvComboBox;
          LblMemcontentSize: TLabel;
          Label6: TLabel;
          cbCurrentTime: TAdvComboBox;
          cbEasydent: TComboBox;
          cbImageDbSaveKind: TComboBox;
          edtDbServerIP: TEdit;
          edtDbServerPort: TEdit;
          edtImageDBPath: TEdit;
          ScaleCombo: TComboBox;
          edtPath: TEdit;
          edtSmsNo: TEdit;
          cbMessageview: TAdvComboBox;
          cbImgUse: TComboBox;
          IdLogEvent1: TIdLogEvent;
          memoHtml: TMemo;
          memLog: TMemo;
          Edit1: TEdit;
          Edit2: TEdit;
          Edit3: TEdit;
          Edit4: TEdit;
          ComboBox1: TComboBox;
          Label7: TLabel;
          ComboBox2: TComboBox;
          Label8: TLabel;
          ComboBox3: TComboBox;
          Label9: TLabel;
          Edit5: TEdit;
          Edit6: TEdit;
          Edit7: TEdit;
          Edit8: TEdit;
          Edit9: TEdit;
          Edit10: TEdit;
          Edit11: TEdit;
          Edit12: TEdit;
          cbSMScustKind: TAdvComboBox;
          cbSunap: TAdvComboBox;
          AdvTabSheet8: TAdvTabSheet;
          Label10: TLabel;
          cbscannerport: TComboBox;
          Label11: TLabel;
          cbScannerSpeed: TComboBox;
          cbBohumOut: TAdvComboBox;
          cbYeyakOut: TAdvComboBox;
          cbGogekOut: TAdvComboBox;
          cbFamily: TAdvComboBox;
          edtKisPath: TEdit;
          AdvTabSheet9: TAdvTabSheet;
          cbDaegiViewMode: TAdvComboBox;
          cbDaegiRefreshMode: TAdvComboBox;
          cbDaegiOrder: TAdvComboBox;
          cbLunchsTime: TComboBox;
          cbLunchsmin: TComboBox;
          cbLunchfTime: TComboBox;
          cbLunchfMin: TComboBox;
          edtLunchColor: TAdvColorPickerDropDown;
          edtLunchCap: TEdit;
          cbBohumSunap: TAdvComboBox;
          cbChartNoView: TAdvComboBox;
          cbChartConv: TAdvComboBox;
          cbColumnFix: TAdvComboBox;
          Label12: TLabel;
          AdvTabSheet10: TAdvTabSheet;
          edtPassSunap: TEdit;
          edtPassDayJumgum: TEdit;
          edtPassDayMagam: TEdit;
          edtPassMonthMagam: TEdit;
          edtPassYearMagam: TEdit;
          edtPassSunapKind: TEdit;
          edtPassMisu: TEdit;
          AdvTabSheet11: TAdvTabSheet;
          cbChartinput: TComboBox;
          cbChartColor: TAdvColorPickerDropDown;
          cbArch: TAdvComboBox;
          cbApp: TAdvComboBox;
          cbTab: TAdvComboBox;
          edtPadding: TAdvSpinEdit;
          cbBohum: TComboBox;
          cbHygine: TAdvComboBox;
          cbChartOut: TAdvComboBox;
          cbChartEtc1: TAdvComboBox;
          cbDaegiColor: TAdvComboBox;
          cbHappyCallChartWrite: TAdvComboBox;
          AdvTabSheet12: TAdvTabSheet;
          edtDbName7: TEdit;
          edtUsername7: TEdit;
          edtpass7: TEdit;
          edtpath7: TEdit;
          cbDaegiTeamSave: TAdvComboBox;
          cbChubangDaepyo: TAdvComboBox;
          cbTeamColorDisp: TAdvComboBox;
          cbonlyChartView: TAdvComboBox;
          AdvTabSheet13: TAdvTabSheet;
          cbFileUse: TComboBox;
          edtFileServerIP: TEdit;
          cbServerUse: TComboBox;
          edtFtpRoot: TEdit;
          edtFtpid: TEdit;
          edtFtpPass: TEdit;
          edtFtpPort: TEdit;



    cbImg1Kind: TComboBox;
    cbImg2Kind: TComboBox;
    cbImg3Kind: TComboBox;
    cbChartServerKind: TComboBox;
    cbDocuServerKind: TComboBox;
    cbImg4Kind: TComboBox;
    cbImg5Kind: TComboBox;

    edtImg1IP: TEdit;
    edtImg1Root: TEdit;
    edtImg1ID: TEdit;
    edtImg1Pass: TEdit;
    edtImg1Port: TEdit;
    edtImg2IP: TEdit;
    edtImg2Root: TEdit;
    edtImg2ID: TEdit;
    edtImg2Pass: TEdit;
    edtImg2Port: TEdit;
    edtImg3IP: TEdit;
    edtImg3Root: TEdit;
    edtImg3ID: TEdit;
    edtImg3Pass: TEdit;
    edtImg3Port: TEdit;
    edtImg4IP: TEdit;
    edtImg4Root: TEdit;
    edtImg4ID: TEdit;
    edtImg4Pass: TEdit;
    edtImg4Port: TEdit;
    edtImg5IP: TEdit;
    edtImg5Root: TEdit;
    edtImg5ID: TEdit;
    edtImg5Pass: TEdit;
    edtImg5Port: TEdit;
    edtChartServerIP: TEdit;
    edtChartserverRoot: TEdit;
    edtChartServerID: TEdit;
    edtChartServerPass: TEdit;
    edtChartserverPort: TEdit;
    edtDocuServerIP: TEdit;
    edtDocuServerRoot: TEdit;
    edtDocuServerID: TEdit;
    edtDocuServerPass: TEdit;
    edtDocuserverPort: TEdit;
    cbArchKind: TAdvComboBox;
    cbDbprotocol: TComboBox;
    Label13: TLabel;
    cbScanView: TAdvComboBox;
    cbImageViewThisPc: TComboBox;
    cbPromiseLock: TAdvComboBox;
    cbTeethView: TAdvComboBox;
    cbImageDel: TComboBox;
    cbEasydentDaegi: TAdvComboBox;
    GroupBox1: TGroupBox;
    cbColorCancel_b: TAdvColorPickerDropDown;
    cbColorChange_b: TAdvColorPickerDropDown;
    CbColorNewon_b: TAdvColorPickerDropDown;
    cbColorNotCon_b: TAdvColorPickerDropDown;
    cbColorreYeyak_b: TAdvColorPickerDropDown;
    cbColorRecall_b: TAdvColorPickerDropDown;
    cbColorEnd_b: TAdvColorPickerDropDown;
    cbColorCancel_f: TAdvColorPickerDropDown;
    cbColorChange_f: TAdvColorPickerDropDown;
    cbColorNewon_f: TAdvColorPickerDropDown;
    cbColorNotCon_f: TAdvColorPickerDropDown;
    cbColorReYeyak_f: TAdvColorPickerDropDown;
    cbColorRecall_f: TAdvColorPickerDropDown;
    cbColorEnd_f: TAdvColorPickerDropDown;
    edtMyunhuNo: TEdit;
    grdImo: TAdvStringGrid;
    cbSmsConvMin: TAdvComboBox;
    cbViewItalic: TCheckBox;
    cbPlanDetailView: TAdvComboBox;
    cbHyunSunapIn: TAdvComboBox;
    edtScreenSave: TAdvSpinEdit;
    cbHttp: TComboBox;
    edtHttp: TEdit;
    cbUseDocSunap: TAdvComboBox;
    cbSunapUseGubun: TAdvComboBox;
    cbChartListOrder: TAdvComboBox;
    Label14: TLabel;
    cbPromiseDocComboView: TAdvComboBox;
    cbNewonCountView: TAdvComboBox;
    cbMachi: TAdvComboBox;
    cbXray: TAdvComboBox;
    cbTuyakColor: TAdvColorPickerDropDown;
    Label16: TLabel;
    cbFixPromiseFontcolor: TAdvComboBox;
    cbSunapSumView: TAdvComboBox;
    Label17: TLabel;
    Label18: TLabel;
    cbSMSautosend: TAdvComboBox;
    edtpassLock: TEdit;
    cbAutoNoSms: TAdvComboBox;
    cbChartTab: TAdvComboBox;
    Memo1: TMemo;
    memSMSNew: TMemo;
    lblSize1: TLabel;
    lblSize2: TLabel;
    cbRecallAlret: TAdvComboBox;
    cbDaegiSound: TAdvComboBox;
    cbChartSignKind: TAdvComboBox;
    cbImgViewOrder: TComboBox;
    edtImageViewAppPath: TEditBtn;
    cbShareFolder: TComboBox;
    cbAgreementScaleling: TAdvComboBox;
    edtShareFolderPath: TEdit;
    cbAutoSendSMS: TAdvComboBox;
    cbSunapFinish: TAdvComboBox;
    cbDaegiTimerUse: TAdvComboBox;
    cbDaegiSocketUse: TAdvComboBox;
    cbDaegiGubunView: TAdvComboBox;
    edtSRPDriver: TEdit;
    AdvTabSheet14: TAdvTabSheet;
    cbSunapPrintOpt1: TAdvComboBox;
    cbSunapPrintLineChange: TAdvComboBox;
    cbJungsanPrintDirection: TAdvComboBox;
    edtSignFilePath: TAdvFileNameEdit;
    edtDocuHeaderFile: TAdvFileNameEdit;
    edtDocuMidFile: TAdvFileNameEdit;
    Label19: TLabel;
    cbKeyPadPort: TComboBox;
    Label20: TLabel;
    cbKeyPadSpeed: TComboBox;
    edtpassChartDelete: TEdit;
    Label21: TLabel;
    cbKeyPadAutostart: TAdvComboBox;
    AdvTabSheet15: TAdvTabSheet;
    Label22: TLabel;
    CBAnotherDB: TComboBox;
    edtPath2: TEdit;
    edtDbName2: TEdit;
    edtUsername2: TEdit;
    edtPass3: TEdit;
    cbDbprotocol2: TComboBox;
    cbCert: TAdvComboBox;
    edtCertPath: TEditBtn;
    cbChartCopyWithSunap: TAdvComboBox;
    cbChartCopyWithChartChange: TAdvComboBox;
    cbChartCopyUse: TAdvComboBox;
    cbChartDelete: TAdvComboBox;
    cbRemarkPrint: TAdvComboBox;
    AdvTabSheet16: TAdvTabSheet;
    edtJinryoButtonLength: TAdvEdit;
    cbPrtFirstForm: TAdvComboBox;
    cbEasyChartChangeView: TAdvComboBox;
    cbChartCopyWithPromise: TAdvComboBox;
    Label23: TLabel;
    cbUseOldImageView: TComboBox;
    edtCopyPromiseParam: TEdit;
    AdvTabSheet17: TAdvTabSheet;

    cbNextButtonColor: TAdvColorPickerDropDown;
    cbNextButtonAlign: TAdvComboBox;
    cbUpperToothColor: TAdvColorPickerDropDown;
    cbLowerToothColor: TAdvColorPickerDropDown;
    cbSunapComment: TComboBox;
    edtNextButtonText: TAdvEdit;
    cbJubsuDelete: TAdvComboBox;
    cbChartCopyWitheChart: TAdvComboBox;
    cbChartPathUse: TComboBox;
    cbLunchsTime_sat: TComboBox;
    cbLunchsmin_sat: TComboBox;
    cbLunchfTime_sat: TComboBox;
    cbLunchfMin_sat: TComboBox;
    edtChungNo: TAdvEdit;
    Label24: TLabel;
    cbSMSchangeSend: TAdvComboBox;
    memSMSChange: TMemo;
    cbSMScancelSend: TAdvComboBox;
    memSMSCancel: TMemo;
    cbJuminView: TAdvComboBox;
    edtPPtPath: TAdvFileNameEdit;
    edtShareFolderPPT: TAdvDirectoryEdit;
    AdvTabSheet18: TAdvTabSheet;
    edtOrthoagree1Path: TAdvFileNameEdit;
    edtOrthoagree2Path: TAdvFileNameEdit;
    edtPersonalinfoPath: TAdvFileNameEdit;
    edtTreatFeePath: TAdvFileNameEdit;
    edtpassSunapUpdate: TEdit;
    edtPassMagamUpdate: TEdit;
    cbDoctor: TAdvComboBox;
    cbDelayWorkView: TAdvComboBox;
    cbViewindi: TCheckBox;
    edtPassAccountFinal: TEdit;
    cbSunapRemarkCardView: TComboBox;
    cbShareFolderID: TComboBox;
    Label25: TLabel;
    cbUseChartingModWindow: TAdvComboBox;
    cbAgeFilter: TAdvComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label15: TLabel;
    edtCidID: TEdit;
    edtCidPass: TEdit;
    btnLogin: TButton;
    btnLoginKickOut: TButton;
    btnLogOut: TButton;
    btnSetMyInfo: TButton;
    btnUserJoin: TButton;
    btnLineJoin: TButton;
    btnFindPasswd: TButton;
    btnHelp: TButton;
    Button1: TButton;
    textConnectState: TEdit;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    edtCidIP: TEdit;
    edtCidPort: TEdit;
    cbCidUse2: TComboBox;
    edtSktCidID: TEdit;
    edtSktCidPass: TEdit;
    btnSktCidLogout: TButton;
    btnSktCidLogin: TButton;
    GroupBox2: TGroupBox;
    Button4: TButton;
    btnSktCidSmsCertReq: TButton;
    btnSKTInit: TButton;
    btnRegist: TButton;
    edtSmsCertNo: TEdit;
    edtSktTelNo: TEdit;
    cbCid: TComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    cbPromiseTransfer: TAdvComboBox;
    cbIbwon: TComboBox;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    btnKTiInit: TButton;
    edtktiTelNo: TEdit;
    cbInitHygine: TAdvComboBox;
    cbChartScrollSync: TAdvComboBox;
    cbDentalHelperReception: TAdvComboBox;
    Button3: TButton;
    Label29: TLabel;
    Button2: TButton;
    btnktiCidLogin: TButton;
    btnktiCidLogout: TButton;
    edtktiCidPass: TEdit;
    edtktiCidID: TEdit;
    GroupBox4: TGroupBox;
    edtktiCidID2: TEdit;
    edtktiCidPass2: TEdit;
    edtktiTelNo2: TEdit;
    btnKTiInit2: TButton;
    btnktiCidLogin2: TButton;
    btnktiCidLogout2: TButton;
    cbHttpPathChange: TComboBox;
    edtPenchartTemplatePath: TAdvDirectoryEdit;
    edtPenchartSavedPath: TAdvDirectoryEdit;
    cbPromiseTeamLoad: TAdvComboBox;
    cbUseThumbnail: TComboBox;
    edtLGUplusTASID: TEdit;
    edtLGUplusTASPass: TEdit;
    btnLGUCidLogin: TButton;
    btnLGUCidLogout: TButton;
    Label30: TLabel;
    cbImageChartZeroExcept: TComboBox;
    cbCode: TAdvComboBox;
    cbChartKindView: TAdvComboBox;
    cbPrintingCnt: TAdvComboBox;
    cbBunnapInputUse: TComboBox;
    cbChartDaily: TAdvComboBox;
    cbFaceFromDB: TCheckBox;
    cbHideTot: TComboBox;
    rgLguKind: TRadioGroup;
    btnApp: TButton;
    btnChartNoInitial: TButton;
    BtnName: TButton;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    spSkinButton4: TButton;
    spSkinButton5: TButton;
    spSkinButton6: TButton;
    spSkinButton7: TButton;
    tabSms: TTabControl;
    dtBohumApply: TDateTimePicker;
    edtDicapath: TAdvDirectoryEdit;
    edtimgSharefolderPath: TAdvDirectoryEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    edtSignFilePath1: TAdvFileNameEdit;
    edtSignFilePath2: TAdvFileNameEdit;
    EllipsLabel235: TLabel;
    spSkinLabel2: TLabel;
    spSkinLabel3: TLabel;
    spSkinLabel4: TLabel;
    spSkinLabel8: TLabel;
    spSkinLabel9: TLabel;
    spSkinLabel10: TLabel;
    spSkinLabel11: TLabel;
    spSkinLabel12: TLabel;
    spSkinLabel1: TLabel;
    spSkinLabel13: TLabel;
    spSkinLabel15: TLabel;
    spSkinLabel14: TLabel;
    spSkinLabel16: TLabel;
    EllipsLabel11: TLabel;
    EllipsLabel12: TLabel;
    EllipsLabel13: TLabel;
    EllipsLabel14: TLabel;
    EllipsLabel15: TLabel;
    EllipsLabel16: TLabel;
    EllipsLabel17: TLabel;
    EllipsLabel18: TLabel;
    EllipsLabel19: TLabel;
    EllipsLabel20: TLabel;
    EllipsLabel21: TLabel;
    EllipsLabel22: TLabel;
    EllipsLabel23: TLabel;
    EllipsLabel24: TLabel;
    EllipsLabel25: TLabel;
    EllipsLabel131: TLabel;
    EllipsLabel166: TLabel;
    EllipsLabel249: TLabel;
    EllipsLabel294: TLabel;
    EllipsLabel295: TLabel;
    EllipsLabel296: TLabel;
    EllipsLabel298: TLabel;
    EllipsLabel299: TLabel;
    EllipsLabel297: TLabel;
    EllipsLabel300: TLabel;
    EllipsLabel301: TLabel;
    EllipsLabel302: TLabel;
    EllipsLabel303: TLabel;
    EllipsLabel8: TLabel;
    EllipsLabel43: TLabel;
    EllipsLabel110: TLabel;
    EllipsLabel114: TLabel;
    EllipsLabel135: TLabel;
    EllipsLabel156: TLabel;
    EllipsLabel159: TLabel;
    EllipsLabel160: TLabel;
    EllipsLabel161: TLabel;
    EllipsLabel162: TLabel;
    EllipsLabel163: TLabel;
    EllipsLabel164: TLabel;
    EllipsLabel165: TLabel;
    EllipsLabel168: TLabel;
    EllipsLabel169: TLabel;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel4: TLabel;
    EllipsLabel5: TLabel;
    EllipsLabel6: TLabel;
    EllipsLabel7: TLabel;
    EllipsLabel9: TLabel;
    EllipsLabel10: TLabel;
    EllipsLabel99: TLabel;
    EllipsLabel101: TLabel;
    EllipsLabel102: TLabel;
    EllipsLabel103: TLabel;
    EllipsLabel104: TLabel;
    EllipsLabel100: TLabel;
    EllipsLabel105: TLabel;
    EllipsLabel106: TLabel;
    EllipsLabel182: TLabel;
    EllipsLabel186: TLabel;
    EllipsLabel189: TLabel;
    EllipsLabel201: TLabel;
    EllipsLabel222: TLabel;
    EllipsLabel239: TLabel;
    EllipsLabel243: TLabel;
    EllipsLabel244: TLabel;
    EllipsLabel245: TLabel;
    EllipsLabel246: TLabel;
    EllipsLabel247: TLabel;
    EllipsLabel248: TLabel;
    EllipsLabel262: TLabel;
    EllipsLabel270: TLabel;
    EllipsLabel284: TLabel;
    EllipsLabel35: TLabel;
    EllipsLabel52: TLabel;
    EllipsLabel34: TLabel;
    EllipsLabel76: TLabel;
    EllipsLabel77: TLabel;
    EllipsLabel78: TLabel;
    EllipsLabel79: TLabel;
    EllipsLabel81: TLabel;
    EllipsLabel82: TLabel;
    EllipsLabel56: TLabel;
    EllipsLabel57: TLabel;
    EllipsLabel74: TLabel;
    EllipsLabel75: TLabel;
    EllipsLabel88: TLabel;
    EllipsLabel89: TLabel;
    EllipsLabel90: TLabel;
    EllipsLabel93: TLabel;
    EllipsLabel94: TLabel;
    EllipsLabel107: TLabel;
    EllipsLabel111: TLabel;
    EllipsLabel171: TLabel;
    EllipsLabel172: TLabel;
    EllipsLabel173: TLabel;
    EllipsLabel175: TLabel;
    EllipsLabel176: TLabel;
    EllipsLabel179: TLabel;
    lblNewonView: TLabel;
    lblSunapSumView: TLabel;
    EllipsLabel193: TLabel;
    EllipsLabel200: TLabel;
    lblAgeFilter: TLabel;
    EllipsLabel275: TLabel;
    spSkinLabel5: TLabel;
    spSkinLabel6: TLabel;
    spSkinLabel7: TLabel;
    EllipsLabel27: TLabel;
    EllipsLabel28: TLabel;
    EllipsLabel26: TLabel;
    EllipsLabel53: TLabel;
    EllipsLabel30: TLabel;
    EllipsLabel31: TLabel;
    EllipsLabel32: TLabel;
    EllipsLabel33: TLabel;
    EllipsLabel51: TLabel;
    EllipsLabel59: TLabel;
    EllipsLabel60: TLabel;
    EllipsLabel70: TLabel;
    EllipsLabel167: TLabel;
    EllipsLabel178: TLabel;
    EllipsLabel250: TLabel;
    EllipsLabel251: TLabel;
    EllipsLabel36: TLabel;
    EllipsLabel37: TLabel;
    EllipsLabel38: TLabel;
    EllipsLabel39: TLabel;
    EllipsLabel40: TLabel;
    EllipsLabel41: TLabel;
    EllipsLabel42: TLabel;
    EllipsLabel54: TLabel;
    EllipsLabel55: TLabel;
    EllipsLabel61: TLabel;
    EllipsLabel62: TLabel;
    EllipsLabel63: TLabel;
    EllipsLabel64: TLabel;
    EllipsLabel68: TLabel;
    EllipsLabel80: TLabel;
    EllipsLabel84: TLabel;
    EllipsLabel83: TLabel;
    EllipsLabel85: TLabel;
    EllipsLabel44: TLabel;
    EllipsLabel45: TLabel;
    EllipsLabel46: TLabel;
    EllipsLabel47: TLabel;
    EllipsLabel48: TLabel;
    EllipsLabel49: TLabel;
    EllipsLabel50: TLabel;
    EllipsLabel58: TLabel;
    EllipsLabel155: TLabel;
    lblImageDel: TLabel;
    EllipsLabel174: TLabel;
    EllipsLabel196: TLabel;
    EllipsLabel197: TLabel;
    EllipsLabel198: TLabel;
    EllipsLabel199: TLabel;
    EllipsLabel227: TLabel;
    EllipsLabel228: TLabel;
    EllipsLabel229: TLabel;
    EllipsLabel230: TLabel;
    EllipsLabel231: TLabel;
    EllipsLabel242: TLabel;
    EllipsLabel281: TLabel;
    EllipsLabel285: TLabel;
    EllipsLabel288: TLabel;
    EllipsLabel67: TLabel;
    EllipsLabel86: TLabel;
    EllipsLabel87: TLabel;
    EllipsLabel267: TLabel;
    EllipsLabel268: TLabel;
    EllipsLabel269: TLabel;
    EllipsLabel286: TLabel;
    EllipsLabel287: TLabel;
    EllipsLabel274: TLabel;
    EllipsLabel272: TLabel;
    EllipsLabel273: TLabel;
    EllipsLabel278: TLabel;
    EllipsLabel279: TLabel;
    EllipsLabel280: TLabel;
    EllipsLabel66: TLabel;
    EllipsLabel71: TLabel;
    EllipsLabel154: TLabel;
    EllipsLabel209: TLabel;
    EllipsLabel69: TLabel;
    EllipsLabel72: TLabel;
    EllipsLabel73: TLabel;
    EllipsLabel97: TLabel;
    EllipsLabel108: TLabel;
    EllipsLabel130: TLabel;
    EllipsLabel132: TLabel;
    EllipsLabel158: TLabel;
    EllipsLabel194: TLabel;
    EllipsLabel202: TLabel;
    EllipsLabel203: TLabel;
    EllipsLabel204: TLabel;
    EllipsLabel205: TLabel;
    EllipsLabel217: TLabel;
    EllipsLabel218: TLabel;
    EllipsLabel219: TLabel;
    EllipsLabel225: TLabel;
    EllipsLabel226: TLabel;
    EllipsLabel240: TLabel;
    EllipsLabel241: TLabel;
    EllipsLabel277: TLabel;
    EllipsLabel116: TLabel;
    EllipsLabel117: TLabel;
    EllipsLabel118: TLabel;
    EllipsLabel119: TLabel;
    EllipsLabel120: TLabel;
    EllipsLabel122: TLabel;
    EllipsLabel123: TLabel;
    EllipsLabel188: TLabel;
    EllipsLabel208: TLabel;
    EllipsLabel259: TLabel;
    EllipsLabel260: TLabel;
    EllipsLabel263: TLabel;
    EllipsLabel115: TLabel;
    EllipsLabel92: TLabel;
    EllipsLabel95: TLabel;
    EllipsLabel96: TLabel;
    EllipsLabel98: TLabel;
    EllipsLabel121: TLabel;
    EllipsLabel109: TLabel;
    EllipsLabel29: TLabel;
    EllipsLabel65: TLabel;
    EllipsLabel91: TLabel;
    EllipsLabel124: TLabel;
    EllipsLabel125: TLabel;
    EllipsLabel151: TLabel;
    EllipsLabel153: TLabel;
    EllipsLabel157: TLabel;
    EllipsLabel170: TLabel;
    EllipsLabel177: TLabel;
    EllipsLabel183: TLabel;
    EllipsLabel184: TLabel;
    EllipsLabel185: TLabel;
    EllipsLabel191: TLabel;
    EllipsLabel195: TLabel;
    EllipsLabel215: TLabel;
    EllipsLabel216: TLabel;
    EllipsLabel220: TLabel;
    EllipsLabel221: TLabel;
    EllipsLabel232: TLabel;
    EllipsLabel233: TLabel;
    EllipsLabel234: TLabel;
    EllipsLabel236: TLabel;
    EllipsLabel238: TLabel;
    EllipsLabel261: TLabel;
    EllipsLabel266: TLabel;
    EllipsLabel276: TLabel;
    EllipsLabel289: TLabel;
    EllipsLabel290: TLabel;
    EllipsLabel292: TLabel;
    EllipsLabel126: TLabel;
    EllipsLabel127: TLabel;
    EllipsLabel128: TLabel;
    EllipsLabel129: TLabel;
    EllipsLabel112: TLabel;
    EllipsLabel113: TLabel;
    EllipsLabel133: TLabel;
    EllipsLabel134: TLabel;
    EllipsLabel136: TLabel;
    EllipsLabel137: TLabel;
    EllipsLabel138: TLabel;
    EllipsLabel139: TLabel;
    EllipsLabel140: TLabel;
    EllipsLabel141: TLabel;
    EllipsLabel142: TLabel;
    EllipsLabel143: TLabel;
    EllipsLabel144: TLabel;
    EllipsLabel145: TLabel;
    EllipsLabel146: TLabel;
    EllipsLabel147: TLabel;
    EllipsLabel148: TLabel;
    EllipsLabel149: TLabel;
    EllipsLabel150: TLabel;
    EllipsLabel152: TLabel;
    EllipsLabel206: TLabel;
    EllipsLabel190: TLabel;
    EllipsLabel187: TLabel;
    EllipsLabel180: TLabel;
    EllipsLabel181: TLabel;
    EllipsLabel207: TLabel;
    EllipsLabel224: TLabel;
    EllipsLabel192: TLabel;
    EllipsLabel304: TLabel;
    EllipsLabel305: TLabel;
    EllipsLabel210: TLabel;
    EllipsLabel211: TLabel;
    EllipsLabel212: TLabel;
    EllipsLabel213: TLabel;
    EllipsLabel214: TLabel;
    EllipsLabel252: TLabel;
    EllipsLabel253: TLabel;
    EllipsLabel254: TLabel;
    EllipsLabel265: TLabel;
    EllipsLabel282: TLabel;
    EllipsLabel283: TLabel;
    EllipsLabel223: TLabel;
    EllipsLabel237: TLabel;
    EllipsLabel264: TLabel;
    EllipsLabel271: TLabel;
    EllipsLabel291: TLabel;
    EllipsLabel293: TLabel;
    EllipsLabel255: TLabel;
    EllipsLabel256: TLabel;
    EllipsLabel257: TLabel;
    EllipsLabel258: TLabel;
    Label31: TLabel;
    cbBaseExamView: TAdvComboBox;
    Label32: TLabel;
    cbExamMemoView: TAdvComboBox;
    Label33: TLabel;
    cbDoctorsNoteAutoInput: TAdvComboBox;
    Label34: TLabel;
    edtGoogleMapApiKey: TEdit;
    Label35: TLabel;
    cbAutoHyunReceipt: TComboBox;
    Label37: TLabel;
    cbKeyPadKind: TComboBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cbCertMachinePort: TComboBox;
    cbCertMachineSpeed: TComboBox;
    cbCertMachineKind: TComboBox;
    AdvTabSheet19: TAdvTabSheet;
    Label41: TLabel;
    edtLink1: TEdit;
    Label42: TLabel;
    edtLink2: TEdit;
    EdtHpEngName: TEdit;
    Label43: TLabel;
    lblDaepyoEng: TLabel;
    edtEngName: TEdit;
    Label44: TLabel;
    EdtEngAdd: TEdit;
    EdtEngAdd2: TEdit;
    EdtEngAdd3: TEdit;

          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure AdvTrackBar1Change(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
          procedure btnBasicClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure EdtNameKeyPress(Sender: TObject; var Key: Char);
          procedure EdtHpNameKeyPress(Sender: TObject; var Key: Char);
          procedure EdtNameExit(Sender: TObject);
          procedure edtSaupNoExit(Sender: TObject);
          procedure EdtAddKeyPress(Sender: TObject; var Key: Char);
          procedure edtHp1Change(Sender: TObject);
          procedure edtHp3Change(Sender: TObject);
          procedure edtTel1Change(Sender: TObject);
          procedure pcOptionCanChange(Sender: TObject; FromPage, ToPage:
               Integer;
               var AllowChange: Boolean);
          procedure btnChartNoInitialClick(Sender: TObject);
          procedure btnAppClick(Sender: TObject);
          procedure rgchartrulClick(Sender: TObject);
          procedure edtViewerClickBtn(Sender: TObject);
          procedure btnLoginClick(Sender: TObject);
          procedure btnLoginKickOutClick(Sender: TObject);
          procedure btnLogOutClick(Sender: TObject);
          procedure btnSetMyInfoClick(Sender: TObject);
          procedure btnUserJoinClick(Sender: TObject);
          procedure btnLineJoinClick(Sender: TObject);
          procedure btnFindPasswdClick(Sender: TObject);
          procedure btnHelpClick(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure tabSmsChange(Sender: TObject);
          procedure memSMSLengthChange(Sender: TObject);
          procedure IdLogEvent1Received(ASender: TComponent; const AText,
               AData: string);
          procedure FormCreate(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
    procedure memSMSNewChange(Sender: TObject);
    procedure edtImageViewAppPathClickBtn(Sender: TObject);
    procedure edtRmodeChange(Sender: TObject);
    procedure cbimageKindChange(Sender: TObject);
    procedure spSkinLabel1DblClick(Sender: TObject);
    procedure btnSktCidLoginClick(Sender: TObject);
    procedure btnSKTInitClick(Sender: TObject);
    procedure btnSktCidLogoutClick(Sender: TObject);
    procedure btnSktCidSmsCertReqClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnRegistClick(Sender: TObject);
    procedure btnktiCidLoginClick(Sender: TObject);
    procedure btnKTiInitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnktiCidLogoutClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtSmsNoChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cbCidChange(Sender: TObject);
    procedure btnLGUCidLoginClick(Sender: TObject);
    procedure btnLGUCidLogoutClick(Sender: TObject);
    procedure spSkinLabel12Click(Sender: TObject);
     private
          { Private declarations }
          procedure PromiseSave;
          procedure BasicSave;
          function blankCheck: boolean;
          procedure iniSave;
          function ErrorCheck: string;
          procedure DbSave;
          procedure PathSave;
          procedure anotherDbinfoSave;

          procedure LoadBasicInfo;
          procedure LoadPromiseInfo;
          procedure LoadPathInfo;
          procedure LoadAnotherDbInfo;
          procedure ChartSetSave;
          procedure CIDinfoSave;
          procedure LoadCidInfo;
          function DirectoryDialog: string;
          procedure imoSet(varButton: Tbutton);
          function WebSave: boolean;
          procedure SmsIDSave;
          procedure etcEquipSave;
          procedure LoadetcEquip;
          procedure DaegiTableSave;
          procedure LoadPassword;
          procedure PassSave;
          procedure ChartinfoSave;
          procedure LoadBackupDbInfo;
          procedure BackupDbinfoSave;
          procedure FileserverInfoSave;
    procedure LoadFileServerInfo;
    procedure Db2infoSave;
    procedure SelectChartTabIndex;
    procedure HttpPost(varUrl: string);
    procedure PrintInfoSave;
    procedure anotherPGSave;
    procedure JinryoButtonLengthSave;
    procedure sunapInfoSave;
    procedure agreeInfoSave;
    procedure LinkInfoSave;
     public
          { Public declarations }
     end;



var
     optionSet_f: ToptionSet_f;



implementation
uses uConfig, udm, umain, uFunctions, uGogekData, uGogekData_find,
// uSkCid_CommUnit,
  filefind,
  uKtCid;
//  uKtiCid,
//   uLgUplus_Tas,
//    uLgUplus_BAS;


////------------------------------------------------------------------------------
//// API Function ����
////------------------------------------------------------------------------------
//function IMS_Init(strAppKey : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Close() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_GetEvent(pstEvtMsg : PstEvtMsg) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Login(sUserId : String; sPasswd : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Logout() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_AuthSms(sTelNum : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_AuthTts(sTelNum : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_CreateUser(sUserId : String; sPasswd : String; sTelNum : String; sAuthNo : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_ChgPasswd(sUserId : String; sPasswd : String; sTelNum : String; sAuthNo : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_QrySubDnList() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_QryMonDnList() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_AddMonDn(strDn : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_DelMonDn(strDn : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_SetRest(nFlag : Integer) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_GetProfile(strServicename : String; strProfileName : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_ClickCall_Start(sDestDn : String; nRecordF : Integer; nEventF : Integer; nAutoAnswerF : Integer) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_ClickCall_Stop() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_ClickCall_StartRecord() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_ClickCall_StopRecord() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_ClickCall_CallStatus() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_SendSms(strCallee : String; strMessage : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_TtsRs(strCaller : String; strCallee : String; strDtmf : String; nEventF : Integer; strMessage : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_TtsMsg(strCaller : String; strCallee : String; nEventF : Integer; strMessage : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_TtsAuth(strCallee : String; strAuthNo : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_CallForward_Get() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_CallForward_Reg(strCfType : String; strCfDn : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_CallForward_Rel(strCfType : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_TermRec_Start() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_TermRec_Stop() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_TermRec_CallStatus() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_TermRec_StopService() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_Cnfr_Start(strCallee : String; nEventF : Integer) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Cnfr_Stop() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Cnfr_CallStatus() : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Cnfr_Add(strCallee : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_Cnfr_Del(strCallee : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_CallTransfer_Start(strCallee : String; nDisplayType : Integer) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//function IMS_CallPickup_Start(nAutoAnswerF : Integer; nDisplayType : Integer) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_SendMms(strCallee : String; strMessage : String) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_GetVersion(pstVersionMsg : PstVersionMsg) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';
//
//function IMS_GetRest(pstRestMsg : PstRestMsg) : Integer; stdcall; external 'SKB_OpenAPI_IMS.dll';


{$R *.dfm}
const

     // Query
     SQL_INSERT_DATA = 'INSERT INTO ma_config                    ' + #13#10 +
          ' (code, SLCOMMENT)                          ' + #13#10 +
          ' VALUES                                              ' + #13#10 +
          ' (:code, :SLCOMMENT)                        ';

     SQL_UPDATE_DATA = 'UPDATE ma_config SET ' + #13#10 +
          '                    SLCOMMENT  = :SLCOMMENT' + #13#10 +
          '              WHERE code=:code';

     JoinCont =
          '[�� 1�� ��Ģ]' +
          '                                                                               ' +
          '�� 1�� ����' +
          '    �� ����� ���(��)(���� "ȸ��"�� �մϴ�)�� �����ϴ� ��� ��/�������ͳ�' +
          '������ �̿����� �� ������ ���� ���װ� ��Ÿ �ʿ��� ������ ������Ż���� ��' +
          '���� ������� ���ϴ� ��� �ؼ��ϰ� �������� �������� �մϴ�.' +
          '                                                                               ' +
          '�� 2�� ����� ȿ�°� ����' +
          '    (1) �� ����� �̿��ڿ��� ���������� ���� ���������ν� ȿ���� �߻��մϴ�.' +
          '    (2) ������ ���� �̿�ð��� �ý��� �������� �� ȸ�簡 �ʿ��� ���,' +
          '�Խ����̳� �˾�(pop-up)ȭ�� ������ �����ϰ� ������ �� �ֽ��ϴ�.' +
          '                                                                               ' +
          '�� 3�� ��� �� ��Ģ' +
          '    �� ����� ��õ��� ���� ������ ���� ���ɿ� �����Ǿ� ���� ��쿡��' +
          '�� ������ �����ϴ�.' +
          '                                                                               ' +
          '[�� 2�� ȸ�� ���԰� ���� �̿�]                                               ' +
          '�� 1�� ���� �̿� ����� ����                                                 ' +
          '    (1) �̿� ����� �̿����� �̿� ��û�� ���� ȸ���� �̿� �³��� �̿�����      ' +
          '��� ���뿡 ���� ���Ƿ� �����˴ϴ�.                                            ' +
          '    (2) ȸ���� �����Ͽ� ���񽺸� �̿��ϰ��� �ϴ� ����ڴ� ȸ�翡�� ��û�ϴ�    ' +
          '���� �Ż������� �����ؾ� �մϴ�.                                               ' +
          '    (3) �̿����� �̿��û�� ���Ͽ� ȸ�簡 �̸� �³��� ���, ȸ��� ȸ�� ID��   ' +
          '��Ÿ ȸ�簡 �ʿ��ϴٰ� �����ϴ� ������ �̿��ڿ��� �����մϴ�.                  ' +
          '    (4) ȸ��� ���� �� ȣ�� �ش��ϴ� �̿��� ��û�� ���Ͽ��� �̸� �³�����    ' +
          '�ƴ� �մϴ�.                                                                   ' +
          '        ��. �ٸ� ����� ���Ǹ� ����Ͽ� ��û�Ͽ��� ��                          ' +
          '        ��. ������ �Ǹ����� ��û���� �ʾ��� ��                                 ' +
          '        ��. �̿� ��� ��û���� ������ ������ �����Ͽ��� ��                     ' +
          '        ��. ��ȸ�� �ȳ�� ���� Ȥ�� ��ǳ����� ������ �������� ��û�Ͽ��� ����.' +
          '                                                                               ' +
          '��2�� ���� �̿� �� ����                                                      ' +
          '    (1) ���� �̿��� ȸ���� ������ �Ǵ� ����� Ư���� ������ ���� �� ���߹���,' +
          ' 1�� 24�ð��� ��Ģ���� �մϴ�.                                                 ' +
          '    (2) ������ ���� �̿�ð��� �ý��� �������� �� ȸ�簡 �ʿ��� ���,        ' +
          'ȸ������ ���� ������ ��, ������ �� �ֽ��ϴ�.                                   ' +
          '                                                                               ' +
          '[�� 3�� �ǹ�]                                                                  ' +
          '�� 1�� ȸ���� �ǹ�                                                             ' +
          '    (1) ȸ��� Ư���� ������ ���� �� ȸ���� ��û�� ���� ���� �����Ͽ�        ' +
          '���񽺸� �̿��� �� �ֵ��� �մϴ�.                                              ' +
          '    (2) ȸ��� �� ������� ���� �ٿ� ���� �����, ���������� ���񽺸� ������   ' +
          '�ǹ��� �ֽ��ϴ�.                                                               ' +
          '    (3) ȸ��� ȸ�����κ��� ������ ������ ���� ����Ǵ� �ǰ߿� ���ؼ��� ������ ' +
          '������ ��ó ó���ϸ�, ó���� ���� �Ⱓ�� �ҿ�� ��� ȸ������ �� ������ ó��   ' +
          '������ �˷��־�� �մϴ�.                                                      ' +
          '    (4) ȸ��� ȸ���� ������ ö���� ���� �����ϸ�,  ȸ��� ������ �����Ͽ� ȸ��' +
          '��ü �Ǵ� �Ϻ��� ���� ������ ������ ������ ���������� ���� �� ����, ȫ��,    ' +
          '������ �� Ȱ���� ���� �ڷ�� Ȱ���� �� ������  ������ �̿��� �������δ�        ' +
          '����Ͽ����� �ȵ˴ϴ�.  �ٸ� ������ű⺻�� �� ������ ������ ���� ��쿡�±׷� ' +
          '���� �ʽ��ϴ�.                                                                 ' +
          '                                                                               ' +
          '�� 2�� ȸ���� �ǹ�                                                             ' +
          '    (1) ID�� ��й�ȣ�� ���� ��� ������ å���� ȸ������ �ֽ��ϴ�.             ' +
          '    (2) ȸ���� ������ �Ϻη� �������� ���(��)�� ���� ������ �޴� �Ϳ�     ' +
          '�����մϴ�.                                                                    ' +
          '        (���(��)�� ���񽺴� Ȩ������ �� �ڵ��� ���� ������ �߻��ϴ� ������  ' +
          '������� ȸ���鿡�� ���� �Ǵ� ������ ���Ἥ�񽺸� �����ϰ� �ֽ��ϴ�.)          ' +
          '    (3) �ڽ��� ID�� �����ϰ� ���� ���, ȸ���� �ݵ�� ȸ�翡 �� �����       ' +
          '�뺸�ؾ� �մϴ�.                                                               ' +
          '    (4) ȸ���� �� ��� �� ���� ���ɿ��� ������ ������ �ؼ��Ͽ��� �մϴ�.       ' +
          '                                                                               ' +
          '[�� 4�� ��� ���� �� ���� �̿� ����]                                         ' +
          '                                                                               ' +
          '�� 1�� ��� ���� �� �̿� ����                                                  ' +
          '    (1) ȸ���� �̿� ����� �����ϰ��� �ϴ� ������ ȸ�� ������ ���� ������ ���� ' +
          '���(��) ����� ������ ���� ��û�� ��û�ؾ� �մϴ�.                          ' +
          '    (2) �������� ���δ� ������ ID, ��й�ȣ�� �α����� ���� ������ ������      ' +
          '���̸�, �ѹ� ������ ID�� ���� ����ڶ� ����� �� ������ �˷��帳�ϴ�.        ' +
          '    (3) ȸ���� ȸ���� �ڵ��� ���ڸ޽�����(SMS��) ���� ������ ��Ÿ��� �̿��Ͽ� ' +
          '����(SPAM)�� �޽����� �����Ͽ� ��3�ڿ��� ������ ������ ���ظ� ������ ���,     ' +
          'ȸ���� �� ������ ���� ��� ����å���� �����մϴ�.                              ' +
          '    (4) ȸ��� ȸ���� ���� ���׿� �ش��ϴ� ������ �Ͽ��� ���, ���� ���� ����  ' +
          '�̿� ����� �����ϰų� �Ǵ� �Ⱓ�� ���Ͽ� ���� �̿��� ������ �� �ֽ��ϴ�.    ' +
          '         ��. ���� ���� �� ��ǳ ��ӿ� ���ϴ� ���                              ' +
          '         ��. ������ ������ ���õǴ� ���                                       ' +
          '         ��. ���� �Ǵ� ��ȸ�� ������ ������ �������� ���� �̿��� ��ȹ �Ǵ�   ' +
          '������ ���                                                                    ' +
          '         ��. Ÿ���� ID �� ��й�ȣ�� ������ ���                               ' +
          '         ��. Ÿ���� ���� �ջ��Ű�ų� �������� �ִ� ���                     ' +
          '         ��. ���� ����ڰ� �ٸ� ID�� ���� ����� �� ���                       ' +
          '         ��. ���񽺿� ���ظ� ���ϴ� �� ������ �̿��� �����ϴ� ���             ' +
          '         ��. ��Ÿ ���� �����̳� ȸ�簡 ���� �̿����ǿ� ����Ǵ� ���           ' +
          '                                                                               ' +
          '�� 2�� �̿� ������ ���� ����                                                   ' +
          '    (1) ȸ��� �̿� ������ �ϰ��� �ϴ� ��쿡�� �� ����, �Ͻ� �� �Ⱓ�� ���Ͽ� ' +
          '���� �Ǵ� ��ȭ ���� ����� �̿��Ͽ� �ش� ȸ�� �Ǵ� �븮�ο��� �����մϴ�.      ' +
          '    (2) �ٸ�, ȸ�簡 ����ϰ� �̿��� �����ؾ� �� �ʿ䰡 �ִٰ� �����ϴ� ��쿡��' +
          '������ �������� ���� �̿��� ������ �� �ֽ��ϴ�.                              ' +
          '    (3) ��4�� ��2�� 1���� ������ ���Ͽ� ���� �̿������� ���� ���� ȸ�� �Ǵ�  ' +
          '�� �븮���� �̿� ������ ���Ͽ� ���ǰ� ���� ��� ���ǽ�û�� �� �� �ֽ��ϴ�.     ' +
          '    (4) ȸ��� �̿����� �Ⱓ �߿� �� �̿����� ������ �ؼҵ� ���� Ȯ�ε� ��쿡 ' +
          '���Ͽ� �̿����� ��ġ�� ��� �����մϴ�.                                        ' +
          '                                                                               ' +
          '�� 3�� ȸ���� �Խù� ����                                                      ' +
          '    (1) "������Ʈ"�� ȸ�簡 �����ϰ� ��ϴ� ��� ����Ʈ�� ��Ī�մϴ�.        ' +
          '    (2) "�Խù�"�̶�  ȸ���� ������Ʈ�� ��ϵ� ��û���ڷ�, �������ڷ�, ����,   ' +
          '�׸�, �ι�����, ������ ���� ��� ������ ���빰�� ��Ī�մϴ�.                 ' +
          '    (3) ȸ�簡 ��ϴ� "������Ʈ"�� "�Խù�"�� ���� å�Ӱ� �Ǹ���             ' +
          '�ش� "�Խù�"�� ����ϴ� ��ü���� �ֽ��ϴ�.                                    ' +
          '    (4) ȸ��� ȸ������ ����� "�Խù�"�� ������Ʈ�� ��︮����, ������ ����   ' +
          '���� �����Ͽ� ���� �Խ��� ������ �ֽ��ϴ�. ��, �̶� �Խ��� ȸ���� â�ۼ���     ' +
          '�����ؾ��մϴ�.                                                                ' +
          '    (5) ȸ�� �� ȸ���� �������� ���۱�, ��ǥ��, ��ȣ��, �ʻ�� ħ���� ������   ' +
          '�ִ� "�Խù�"�� ����� �� �����ϴ�. ���۱�, ��ǥ��, ��ȣ��, �ʻ�� �� �Ǹ� ħ��' +
          '������ �ִ� "�Խù�"�� �߰ߵ� �� ȸ��� �ﰢ ������ �� ���̸�, ���ǿ� ���ؼ�   ' +
          'ȸ������ å���� ���� �� �ֽ��ϴ�. ȸ�簡 ���۱�, ��ǥ��, ��ȣ�� ħ�� �����    ' +
          '�������� ���ϴ� �ش� "�Խù�"�� ���� ������ å���� �ش� "�Խù�"�� �����      ' +
          'ȸ���� �ֽ��ϴ�.                                                               ' +
          '    (6) ȸ��� ��ϴ� "������Ʈ"�� �÷��� "�Խù�"�� �̿��Ͽ� ȸ���� ȫ��,   ' +
          ' �� ȸ������ Ȱ���� �� �ֽ��ϴ�.                                             ' +
          '    (7) ȸ��� ���(��) ���񽺿� ȸ���� "�Խù�"�� ���� ���׿� �ش�ȴٰ�    ' +
          '�ǴܵǴ� ��쿡 ���� ���� ���� ������ �� �ֽ��ϴ�.                             ' +
          '        ��. Ÿ���� ����ϰų� �߻������ ���� �� ��ü�� ���� �ջ��Ű��    ' +
          '������ ���                                                                    ' +
          '        ��. �������� �� ��ǳ��ӿ� ���ݵǴ� ������ ���                        ' +
          '        ��. ������ ������ ���յȴٰ� �����Ǵ� ������ ���                      ' +
          '        ��. Ÿ���� ���۱� �� ��Ÿ�� �Ǹ��� ħ���ϴ� ������ ���                ' +
          '        ��. ��Ÿ ���� �����̳� ȸ�翡�� ���� ������ ����Ǵ� ������ ���       ' +
          '                                                                               ' +
          '[�� 5�� ���� ����]                                                             ' +
          '                                                                               ' +
          '�� 1�� ���� ���                                                               ' +
          '    (1) ȸ��� ȸ���� ��å������ ���� ��, ���� �̿�� �����Ͽ� ȸ������      ' +
          '�߻��� ��� ���ؿ� ���Ͽ��� å���� ���� �ʽ��ϴ�.                            ' +
          '    (2) �� ����� ������ ���������� ���Ͽ� ȸ�翡 ���ذ� �߻��ϰ� �Ǵ� ���,   ' +
          '�� ����� ������ ȸ���� ȸ�翡 �߻��ϴ� ��� ���ظ� ����Ͽ��� �մϴ�.         ' +
          '    (2) ȸ���� ���񽺸� �̿��Կ� �־� ���� �ҹ������� �� ��� ����������       ' +
          '���Ͽ� ȸ�簡 ���� ȸ�� �̿��� ��3�ڷκ��� ���ع�� û�� �Ǵ� �Ҽ��� �����    ' +
          '���� �������⸦ �޴� ��� ���� ȸ���� �ڽ��� å�Ӱ� ������� ȸ�縦 ��å���Ѿ� ' +
          ', ȸ�簡 ��å���� ���� ��� ���� ȸ���� �׷� ���Ͽ� ȸ�翡 �߻��� ��� ���ظ�  ' +
          '����Ͽ��� �մϴ�.                                                             ' +
          '                                                                               ' +
          '�� 2�� ��å����                                                                ' +
          '    (1) ȸ��� õ������ �Ǵ� �̿� ���ϴ� �Ұ��׷����� ���Ͽ� ���񽺸� ������ ��' +
          '���� ��쿡�� ���� ������ ���� å���� �����˴ϴ�.                            ' +
          '    (2) ȸ��� ȸ���� ��å������ ���� ������ �̿���ֿ� ���Ͽ� å����        ' +
          '�����ʽ��ϴ�.                                                                  ' +
          '    (3) ȸ��� ȸ���� ���񽺸� �̿��Ͽ� ����ϴ� ������ ����� �Ϳ� ���Ͽ�     ' +
          'å���� ���� ������ �� �ۿ� ���񽺸� ���Ͽ� ���� �ڷ�� ���� ���� � ���Ͽ��� ' +
          'å���� ���� �ʽ��ϴ�.  ȸ��� ȸ���� Ȩ�������� ������ �������ڷᡤ����� �ŷڵ�' +
          '�� ��Ȯ�� �� ���뿡 ���Ͽ��� å���� ���� �ʽ��ϴ�.                             ' +
          '    (4) ȸ��� ȸ�� ��ȣ�� �Ǵ� ȸ���� ��3�� ��ȣ���� ���񽺸� �Ű��� �߻���   ' +
          '���￡ ���ؼ��� ������ �ǹ��� ������ �̷� ���� ���ظ� ����� å�ӵ� �����ϴ�.  ' +
          '                                                                               ' +
          '�� 3�� ���ҹ���                                                                ' +
          '    (1) ���� �̿�� �����Ͽ� ȸ��� ȸ�� ���̿� ������ �߻��� ���, �ֹ氣�� ' +
          '������ �ذ��� ���� ������ ������ �İ� �ƴϸ� ������ �� �����ϴ�.               ' +
          '    (2) ���� ��1���� ���ǿ����� ������ �ذ���� ���� ��� �� ����ڴ� �Ҹ�     ' +
          '������ �� ������, ������������� ���ҹ������� �մϴ�.                          ' +
          '                                                                               ' +
          '(��Ģ)�� ����� 2001�� 5�� 7�Ϻ��� �����մϴ�.                                 ';
var
     sKind: array[1..14] of string = ('����',
          '��õ',
          '����',
          '���',
          '����',
          '�泲',
          '����',
          '����',
          '����',
          '�λ�',
          '����',
          '�泲',
          '���',
          '�뱸');

procedure ToptionSet_f.PromiseSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'PROMISELOCK', inttostr(cbPromiseLock.ItemIndex)); //�����̵��� �巹�׷� �ϴ°��� 1:��� 0:����

     FormInit.Free;

     try
          //   dm_f.ZConnection.StartTransaction;
          configvalue.saveValue('0201', cbstime.Text + ':' + cbsmin.Text);
          //, '���� ���� �ð�');
          configvalue.saveValue('0202', cbftime.Text + ':' + cbfmin.Text);
          //, '���� ���� �ð�');
          configvalue.saveValue('0203', cbimin.Text); //, '���� �ð� ����');
          configvalue.saveValue('0204', inttostr(advtrackbar1.Position));
          //, '�ð� ���� ����');
          configvalue.saveValue('0205', edtGugan.text); //, '������');
          configvalue.saveValue('0231', inttostr(cbCurrentTime.ItemIndex));
          //���۽� ����ð����� �̵�

          configvalue.saveValue('0232', cbLunchstime.Text + ':' + cbLunchsmin.Text); //���ɽ���
          configvalue.saveValue('0233', cbLunchftime.Text + ':' + cbLunchfmin.Text); //���ɳ�


          configvalue.saveValue('0289', cbLunchstime_sat.Text + ':' + cbLunchsmin_sat.Text); //����� ���ɽ���
          configvalue.saveValue('0290', cbLunchftime_sat.Text + ':' + cbLunchfmin_sat.Text); //����� ���ɳ�



          configvalue.saveValue('0234', inttostr(edtLunchColor.ItemIndex) + ',' + Colortostring(edtLunchColor.Colors.Items[edtLunchColor.ItemIndex].Color),
               '���� ������');
          configvalue.saveValue('0235', edtLunchCap.text); //���� ǥ�ó���

          configvalue.saveValue('0236', inttostr(cbChartNoView.ItemIndex)); //   �ܿ���ǥ���� íƮ��ȣ ����
          configvalue.saveValue('0237', inttostr(cbColumnFix.ItemIndex)); //   �ܿ��ÿ���ĭ �����Ѵ�� ����
          configvalue.saveValue('0238', inttostr(cbonlyChartView.ItemIndex)); //   �ܿ���ǥ���� íƮ��ȣ ����



          configvalue.saveValue('0239', inttostr(cbColorNewon_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorNewon_b.Colors.Items[cbColorNewon_b.ItemIndex].Color),
                            '����������');

          configvalue.saveValue('0240', inttostr(cbColorCancel_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorCancel_b.Colors.Items[cbColorcancel_b.ItemIndex].Color),
                            '��һ�����');
          configvalue.saveValue('0241', inttostr(cbColorChange_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorChange_b.Colors.Items[cbColorChange_b.ItemIndex].Color),
                            '���������');
          configvalue.saveValue('0242', inttostr(cbColorNotCon_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorNotCon_b.Colors.Items[cbColorNotCon_b.ItemIndex].Color),
                            '�����ȵʻ�����');

          configvalue.saveValue('0243', inttostr(cbColorReYeyak_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorReYeyak_b.Colors.Items[cbColorReYeyak_b.ItemIndex].Color),
                            '�翹�������');

          configvalue.saveValue('0244', inttostr(cbColorRecall_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorRecall_b.Colors.Items[cbColorRecall_b.ItemIndex].Color),
                            '�縮�ݻ�����');

          configvalue.saveValue('0245', inttostr(cbColorEnd_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorEnd_b.Colors.Items[cbColorEnd_b.ItemIndex].Color),
                            '���������');




          configvalue.saveValue('0246', inttostr(cbColorNewon_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorNewon_f.Colors.Items[cbColorNewon_f.ItemIndex].Color),
                            '����������');

          configvalue.saveValue('0247', inttostr(cbColorCancel_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorCancel_f.Colors.Items[cbColorcancel_f.ItemIndex].Color),
                            '��һ�����');
          configvalue.saveValue('0248', inttostr(cbColorChange_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorChange_f.Colors.Items[cbColorChange_f.ItemIndex].Color),
                            '���������');
          configvalue.saveValue('0249', inttostr(cbColorNotCon_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorNotCon_f.Colors.Items[cbColorNotCon_f.ItemIndex].Color),
                            '�����ȵʻ�����');

          configvalue.saveValue('0250', inttostr(cbColorReYeyak_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorReYeyak_f.Colors.Items[cbColorReYeyak_f.ItemIndex].Color),
                            '�翹�������');

          configvalue.saveValue('0251', inttostr(cbColorRecall_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorRecall_f.Colors.Items[cbColorRecall_f.ItemIndex].Color),
                            '�縮�ݻ�����');

          configvalue.saveValue('0252', inttostr(cbColorEnd_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorEnd_f.Colors.Items[cbColorEnd_f.ItemIndex].Color),
                            '���������');
          if cbViewItalic.Checked then
             configvalue.saveValue('0253', '1')
          else
             configvalue.saveValue('0253', '0');


          configvalue.saveValue('0254', inttostr(cbPromiseDocComboView.ItemIndex)); //   �ܿ���ǥ���� �޺��ڽ��� �������� ����
          configvalue.saveValue('0255', inttostr(cbFixPromiseFontcolor.ItemIndex), '�����Ͽ��� ���������ڻ� ����' ); //


          // 0260, 0261, 0262, 0263, 0264, 0265, 0266, 0267, 0268, 0269,//SMS �ڵ����۵������� ���������� ���.
          // 0270, 0271, 0272, 0273, 0274, 0275, 0276, 0277, 0278, 0279 //SMS �ڵ����۵������� ���������� ���.
          // 0281, 0282 ���ڵ�ī�弳������ ���
          configvalue.saveValue('0280', inttostr( cbAutoNoSms.ItemIndex), '�����Ͻ� �ڵ� SMS ���� ��ư ���� �Ǵ� ����' ); //




          configvalue.saveValue('0283', inttostr( cbAutoSendSMS.ItemIndex), '�����Ͻ� �ڵ� SMS����' ); //

          configvalue.saveValue('0284', inttostr( cbRemarkPrint.ItemIndex), '�����μ�� ȯ�� ������� �μ�' ); //


          configvalue.saveValue('0455', inttostr( cbPromiseTeamLoad.ItemIndex), '�����Ͻ� ���� ���� ��������' ); //


         //0285, 0286 , 0287 SMS �ڵ����۵������� ���������� ���. 285 ����� ���۽ð� 286 ����� ���� ��
                                                                  //0287 ���� ������ ����
          //, 'SMS������ �� �ð�');
       //   dm_f.ZConnection.Commit;

          configvalue.saveValue('0288', inttostr( cbJubsuDelete.ItemIndex), '��������� �������� ����' ); //

          configvalue.saveValue('0172', inttostr( cbDelayWorkView.ItemIndex), '�̿Ϸ� �������� ��� ����' ); //
          configvalue.saveValue('0299', inttostr( cbPromiseTransfer.ItemIndex), 'Promise Transfer' ); //


          ShowMessage('���༳���� ����Ǿ����ϴ�.');
     except
          on E: Exception do
          begin
               //    dm_f.ZConnection.Rollback;

               ShowMessage('[���༳�� �������]' + E.Message);
          end;

     end;
end;

procedure ToptionSet_f.PathSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'KISPATH', edtKisPath.text); //2011.12.15

     FormInit.WriteString('BASEINFO', 'DETAILLOAD',
          inttostr(cbDetailLoad.itemindex));
     FormInit.WriteString('BASEINFO', 'DICAPATH', edtDicaPath.text);
     FormInit.WriteString('BASEINFO', 'EASYDENT',
          inttostr(cbEasyDent.itemindex));
     FormInit.WriteString('LOGIN', 'WEB', inttostr(cbWeb.itemindex));
     FormInit.WriteString('ETC', 'CHAMGOLOAD',
          inttostr(cbchamgoLoad.itemindex));


     FormInit.WriteString('ETC', 'BACKUP', inttostr(cbBackup.itemindex));


     FormInit.WriteString('ETC', 'BaseExamView', inttostr(cbBaseExamView.ItemIndex));
     FormInit.WriteString('ETC', 'ExamMemoView', inttostr(cbExamMemoView.ItemIndex));
     FormInit.WriteString('ETC', 'DoctorsNoteAutoInput', inttostr(cbDoctorsNoteAutoInput.ItemIndex));


//     configvalue.saveValue('0175', inttostr(cbBaseExamView.ItemIndex), '');  //���ʰ˻� �׸� ����
//
//     configvalue.saveValue('0176', inttostr(cbExamMemoView.ItemIndex), '');  //�˻�� �޸� ����
//
//     configvalue.saveValue('0177', inttostr(cbDoctorsNoteAutoInput.ItemIndex), '');  //���ͽ���Ʈ�׸� �ڵ��Է�


     FormInit.WriteString('ETC', 'CHUNGVIEW',
          inttostr(cbBohumOut.itemindex));

     FormInit.WriteString('ETC', 'GOGEKVIEW',
          inttostr(cbGogekOut.itemindex));
     FormInit.WriteString('ETC', 'YEYAKVIEW',
          inttostr(cbYeyakOut.itemindex));

     //2011.12.1
     FormInit.WriteString('ETC', 'FAMILYVIEW',
          inttostr(cbFamily.itemindex));

     FormInit.Free;

     //  configvalue.saveValue('0301', inttostr(cbchamgoLoad.itemindex),'ȯ��������� �����ڸ��� �θ���');
     configvalue.saveValue('0302', inttostr(cbDur.itemindex), 'ó���� ����� DUR����');
     //  configvalue.saveValue('0303', inttostr(cbBackup.itemindex),'����� ��� ����');

     configvalue.saveValue('0303', inttostr(cbMessageview.itemindex), 'X-ray�̹��� �ҷ��ö� �����Ȳ ����');

     configvalue.saveValue('0160', inttostr(cbSunap.ItemIndex), '�ܺ� ������ ���');

     configvalue.saveValue('0161', inttostr(cbHyunSunapIn.ItemIndex), '');

     configvalue.saveValue('0162', inttostr(edtScreenSave.Value), '0');


     configvalue.saveValue('0163', inttostr(cbUseDocSunap.ItemIndex), '');  //�������� �����ڵ� �������
     configvalue.saveValue('0164', inttostr(cbSunapUseGubun.ItemIndex), '');  //�Ⱓ�� ������������ ȯ�ڱ��к���


     configvalue.saveValue('0166', inttostr(cbAgreementScaleling.ItemIndex), '');  //�����ϸ����Ǽ� ���


//     configvalue.saveValue('0175', inttostr(cbBaseExamView.ItemIndex), '');  //���ʰ˻� �׸� ����
//
//     configvalue.saveValue('0176', inttostr(cbExamMemoView.ItemIndex), '');  //�˻�� �޸� ����
//
//     configvalue.saveValue('0177', inttostr(cbDoctorsNoteAutoInput.ItemIndex), '');  //���ͽ���Ʈ�׸� �ڵ��Է�


     configvalue.saveValue('0173', inttostr(cbAgeFilter.ItemIndex), '');  //AgeFilter ���



     configvalue.saveValue('0136', inttostr(cbBohumSunap.ItemIndex), 'û����������� ��������'); //2012.4.25

     configvalue.saveValue('0139', inttostr(cbChartConv.ItemIndex), '�˻��� íƮ��ȣ ���������� ��ȯ'); //2012.5.17



     configvalue.saveValue('0140', edtimgSharefolderPath.text, 'ȯ�ھ󱼻���������') ;

     configvalue.saveValue('0143', inttostr(cbnewonCountView.ItemIndex), '����Ƚ�� ���⼳��') ;


     //'0145'  varViewallinit ���ð����� ���
     configvalue.saveValue('0146', inttostr(cbSunapSumView.ItemIndex), '') ; //���ں� �������� �հ躸��
     //'0147'  ��ȯ����� SMS�ڵ����� ������
     configvalue.saveValue('0149', inttostr(cbRecallAlret.ItemIndex), '') ; // ���� ���� �˸�

     configvalue.saveValue('0450', inttostr(cbInitHygine.ItemIndex), 'ȯ�ڵ�Ͻ� ������ �ʱ�ȭ') ;




     showmessage('��Ÿ������ ����Ǿ����ϴ�.');
end;


procedure ToptionSet_f.PrintInfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('printinfo', 'SignFilePath1', edtSignFilePath1.text);     //'������ ���� ���� ������'
     FormInit.WriteString('printinfo', 'SignFilePath2', edtSignFilePath2.text);     //'��ǥ���� ���� ���� ������
     FormInit.Free;


     configvalue.saveValue('0142', edtSignFilePath.text, '���� ���� ������') ;


//     configvalue.saveValue('0180', edtSignFilePath1.text, '������ ���� ���� ������') ;
//     configvalue.saveValue('0181', edtSignFilePath2.text, '��ǥ���� ���� ���� ������') ;


     configvalue.saveValue('0144', inttostr(cbJungsanPrintDirection.ItemIndex), '���������μ����  0���� 1����');
     configvalue.saveValue('0148', inttostr(cbSunapPrintLineChange.ItemIndex), '') ; //���ں� ���������μ�� ���ιٲٱ�

     configvalue.saveValue('0165', inttostr(cbSunapPrintOpt1.ItemIndex), '');  //�Ⱓ�� �������� �����μ�



     configvalue.saveValue('0167', edtDocuHeaderFile.text, '�����Ƿڼ� HeaderFile ������');  //�����Ƿڼ� HeaderFile
     configvalue.saveValue('0168', edtDocuMidFile.text, '�����Ƿڼ� MidFile ������');  //�����Ƿڼ� Mid File



     configvalue.saveValue('0169', inttostr( cbPrtFirstForm.ItemIndex), '�⺻ ġ������� �μ⿩��') ; //�⺻ ġ������� �μ⿩��

     configvalue.saveValue('0374', inttostr( cbJuminView.ItemIndex), 'ó���� �μ�� �ֹι�ȣ �μ⿩��') ; //ó���� �μ�� �ֹι�ȣ �μ⿩��


     showmessage('�μ⼳���� ����Ǿ����ϴ�.');
end;


procedure ToptionSet_f.anotherPGSave;

var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'pptAppPath',  edtPPtPath.text);

     FormInit.Free;


         //�ܺ����α׷� ���� �ϳ��� �ι��� ��
          //=====================================
           configvalue.saveValue('0431', edtPath2.text);
           configvalue.saveValue('0432', edtDbName2.text);
           configvalue.saveValue('0433', edtUserName2.text);
           configvalue.saveValue('0434', edtpass3.text);
           configvalue.saveValue('0435', inttostr(cbanotherDB.itemindex), 'ANotherDB���');
           configvalue.saveValue('0436', cbDBProtocol2.Text, 'DBprotocol2');
          //=====================================


           configvalue.saveValue('0437', edtGoogleMapApiKey.Text, 'GoogleMapApiKey');


//           configvalue.saveValue('0438', edtLink1.Text, 'Link1');
//           configvalue.saveValue('0439', edtLink2.Text, 'Link2');
//

           configvalue.saveValue('0375', edtShareFolderPPT.text, 'PPT�� �������� ����');
           configvalue.saveValue('0377',  inttostr(cbShareFolderID.itemindex), 'PPT�� �������� ���� ���̵� ����');

           configvalue.saveValue('0378', edtPenchartTemplatePath.text, '����Ʈ ���÷���Ʈ');
           configvalue.saveValue('0379', edtPenchartSavedPath.text , '������Ʈ �����̹���');

        //   configvalue.saveValue('0376', edtPPtPath.text, 'PPT��� ����');

           showmessage('�ܺ����α׷� ������ ����Ǿ����ϴ�.');

end;
procedure ToptionSet_f.LinkInfoSave;

var
     s, path: string;
     FormInit: Tinifile;

begin


           configvalue.saveValue('0438', edtLink1.Text, 'Link1');
           configvalue.saveValue('0439', edtLink2.Text, 'Link2');


           showmessage('Link  ������ ����Ǿ����ϴ�.');

end;

procedure ToptionSet_f.JinryoButtonLengthSave;
var
     path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteInteger('ETC', 'JINRYOBUTTONLENGTH', edtJinryoButtonLength.IntValue );

     FormInit.Free;
           showmessage('�����ư ������ ����Ǿ����ϴ�.');
end;




procedure ToptionSet_f.ChartinfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteString('BASEINFO', 'INPUTBOHUM', inttostr(cbBohum.itemindex));

     FormInit.WriteString('ETC', 'CHARTVIEW', inttostr(cbChartOut.itemindex)); //2011.12.1

     FormInit.Free;



     configvalue.saveValue('0452', inttostr(cbCode.ItemIndex));
     configvalue.saveValue('0453', inttostr(cbChartKindView.ItemIndex));  //��Ʈ kind

     configvalue.saveValue('0454', inttostr(cbChartDaily.ItemIndex));  //daily chart info



     configvalue.saveValue('0132', formatdatetime('YYYY-MM-DD', dtbohumApply.date), '���ý� ����û������ ������ ����');

     configvalue.saveValue('0304', inttostr(cbChartColor.ItemIndex) + ',' + Colortostring(cbChartColor.Colors.Items[cbChartColor.ItemIndex].Color),
          '��Ʈ ���� ������ ������');

     configvalue.saveValue('0305', inttostr(cbapp.ItemIndex));
     configvalue.saveValue('0306', inttostr(cbArch.ItemIndex));
     configvalue.saveValue('0308', inttostr(cbTab.ItemIndex));
     configvalue.saveValue('0309', inttostr(edtPadding.value));
     configvalue.saveValue('0310', inttostr(cbChartInput.ItemIndex));
     configvalue.saveValue('0340', inttostr(cbChartEtc1.ItemIndex));
     configvalue.saveValue('0341', inttostr(cbHappyCallChartWrite.itemindex));

     configvalue.saveValue('0345', inttostr(cbMachi.ItemIndex));
     configvalue.saveValue('0346', inttostr(cbXray.ItemIndex));

     configvalue.saveValue('0347', inttostr(cbTuyakColor.ItemIndex) + ',' + Colortostring(cbTuyakColor.Colors.Items[cbTuyakColor.ItemIndex].Color),
          '����ó�� ������ ������');

     configvalue.saveValue('0348',   inttostr(cbChartTab.ItemIndex)   );


     configvalue.saveValue('0350',   inttostr( cbChartSignKind.ItemIndex)   );




     configvalue.saveValue('0319', inttostr(cbScanView.ItemIndex));
     configvalue.saveValue('0320', inttostr(cbTeethView.ItemIndex));
     configvalue.saveValue('0322', inttostr(cbPlanDetailView.ItemIndex));

     configvalue.saveValue('0323', inttostr(cbChartListOrder.ItemIndex));


     configvalue.saveValue('0329', inttostr(cbUseChartingModWindow.ItemIndex), '���ü����� ����â �̿�');
     configvalue.saveValue('0330', inttostr(cbChartScrollSync.ItemIndex), '���� ���� ��ũ�ѹ� sync ');



     configvalue.saveValue('0601', inttostr(cbArchKind.ItemIndex));

     configvalue.saveValue('0602', inttostr(cbCert.ItemIndex), '������Ʈ ���������� ���');

     configvalue.saveValue('0603', inttostr(cbChartDelete.ItemIndex), '������Ʈ ������ ��ȣ ���');


     configvalue.saveValue('0604', inttostr(cbNextButtonColor.ItemIndex) + ',' + Colortostring(cbNextButtonColor.Colors.Items[cbNextButtonColor.ItemIndex].Color),
      'Next Button Color');
     configvalue.saveValue('0605', inttostr(cbNextButtonAlign.ItemIndex), 'Next Button Align');  //0 : left, 1:right, 2:center
     configvalue.saveValue('0606', edtNextButtonText.text , 'Next Button Caption');
     configvalue.saveValue('0607',  inttostr(cbUpperToothColor.ItemIndex) + ',' + Colortostring(cbUpperToothColor.Colors.Items[cbUpperToothColor.ItemIndex].Color),
      'ġ�ĵ� ��(���)');
     configvalue.saveValue('0608',  inttostr(cbLowerToothColor.ItemIndex) + ',' + Colortostring(cbLowerToothColor.Colors.Items[cbLowerToothColor.ItemIndex].Color),
      'ġ�ĵ� ��(�Ͼ�)');


     configvalue.saveValue('0138', inttostr(cbHygine.ItemIndex), '����íƮâ�� Hygineĭ ���̱�'); //2012.5.9
     configvalue.saveValue('0171', inttostr(cbDoctor.ItemIndex), '����íƮâ�� Doctorĭ ���̱�'); //2016.3.14

     showmessage('Charting ������ ����Ǿ����ϴ�.');
end;


procedure ToptionSet_f.SmsIDSave;
begin

     if EdtId.Text = '' then
     begin
          showmessage('���̵� �Է��ϼ���');
          EdtId.setfocus;
          //result := false;
          exit;
     end;
     if EdtPass1.Text = '' then
     begin
          showmessage('�н����带 �Է��ϼ���');
          EdtPass1.setfocus;
          //result := false;
          exit;
     end;
     if EdtPass2.Text = '' then
     begin
          showmessage('�н����� Ȯ���� �Է��ϼ���');
          EdtPass2.setfocus;
          // result := false;
          exit;
     end;

     if edtpass1.Text <> edtpass2.Text then
     begin
          showmessage('�Է��� ��й�ȣ�� ���ƾ� �մϴ�.');
          EdtPass1.setfocus;
          // result := false;
          Exit;
     end;
          configvalue.saveValue('0128', edtId.text); //0128 SMS�α��� ���̵�
          configvalue.saveValue('0129', edtpass1.text); //0129 SMS�н�����
     //     configvalue.saveValue('0134', edtSmsNo.text); //0134 SMS��ȭ��ȣ
          configvalue.saveValue('0135', inttostr(cbSmsCustKind.itemindex));
          //0135 SMS Cust Kind
          showmessage('SMS������ DB����Ǿ����ϴ�.');

     if cbSmsSave.Checked then
     begin
          if websave = true then
          begin
               showmessage('SMS������ ���� DB����Ǿ����ϴ�.');

          end;

     end;


     configvalue.saveValue('0141', inttostr(cbSMSConvMin.itemindex),'SMS���۽� �д��� ġȯ 30�й̸� 00 , 30���̻� 30'); //0141 SMS���۽� �д��� ġȯ 30�й̸� 00 , 30���̻� 30

     configvalue.saveValue('0147', inttostr( cbSMSautosend.itemindex),'��ȯ����� SMS�ڵ�����');


     configvalue.saveValue('0370', inttostr( cbSMSChangesend.itemindex),'���ຯ��� SMS�ڵ�����');
     configvalue.saveValue('0371', memSMSChange.text,'���ຯ��� SMS�ڵ����۹���');
     configvalue.saveValue('0372', inttostr( cbSMSCancelsend.itemindex),'������ҽ� SMS�ڵ�����');
     configvalue.saveValue('0373', memSMSCancel.text,'������ҽ� SMS�ڵ����۹���');



     configvalue.saveValue('0256', memSMSNew.text,'�Ұ��� ���ۿ� SMS����');
     configvalue.saveValue('0209', MemSms.text, '��� sms���۹���');

     if cbSmsCustKind.itemindex = 0 then
          dm_f.smsCustCode := 'WW-NYA-BN'
     else
          dm_f.smsCustCode := 'OV-JJG-9R';

          {      case tabSms.TabIndex of
          0:
               begin
                    configvalue.saveValue('0206', inttostr(cbSMS.itemindex),
                         '��� sms���ۿ���');
                    configvalue.saveValue('0207', edtBeforSMS.Text,
                         '��� sms��������');
                    configvalue.saveValue('0208', cbBeforTime.Text + cbBeforMin.text
                         + '00', '��� sms���۽ð�');
                    configvalue.saveValue('0209', MemSms.text, '��� sms���۹���');
               end;
          1:
               begin
                    configvalue.saveValue('0216', inttostr(cbSMS.itemindex),
                         '���� sms���ۿ���');
                    configvalue.saveValue('0217', edtBeforSMS.Text,
                         '���� sms��������');
                    configvalue.saveValue('0218', cbBeforTime.Text + cbBeforMin.text
                         + '00', '���� sms���۽ð�');
                    configvalue.saveValue('0219', MemSms.text, '���� sms���۹���');
               end;
     end;
}

end;

procedure ToptionSet_f.anotherDbinfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'EASYDENT', inttostr(cbEasyDent.itemindex));
     FormInit.WriteString('BASEINFO', 'ImageViewThisPc', inttostr(cbImageViewThisPc.itemindex));
     FormInit.WriteString('BASEINFO', 'ImageDel', inttostr(cbImageDel.itemindex));


     FormInit.WriteString('BASEINFO', 'ImageViewAppPath',  edtImageViewAppPath.text);

     if cbViewindi.Checked then
     begin
          FormInit.WriteString('BASEINFO', 'ImageViewIndi', '1');
          FormInit.WriteString('BASEINFO', 'XrayViewer', edtViewer.text);

     end
     else
     begin
          FormInit.WriteString('BASEINFO', 'ImageViewIndi', '0');
          FormInit.WriteString('BASEINFO', 'XrayViewer', edtViewer.text);
     end;
         

     FormInit.Free;

     try
          configvalue.saveValue('0401', inttostr(cbAnotherViewerUse.itemindex));
          configvalue.saveValue('0402', inttostr(cbImageKind.itemindex));
          configvalue.saveValue('0403', edtPath.text);
          configvalue.saveValue('0404', edtDbName.text);
          configvalue.saveValue('0405', edtUserName.text);
          configvalue.saveValue('0406', edtpass.text);
          configvalue.saveValue('0407', cbDBProtocol.Text,'DBprotocol');

          configvalue.saveValue('0408', inttostr(cbImageDbSaveKind.itemindex), 'Ÿ�������α׷�ȯ������������');
          configvalue.saveValue('0409', edtImageDBPath.text, 'Ÿ���� �̹���DB��� �� �̸�');
          configvalue.saveValue('0410', edtdbServerip.text, '��Ʈ��DB���� IP');
          configvalue.saveValue('0411', edtDbserverPort.text, '��Ʈ��DB���� PORT');

          configvalue.saveValue('0413', edtViewer.text, 'X-ray Viewer');
          configvalue.saveValue('0414', inttostr(cbViewKind.itemindex), 'X-ray Viewer Kind');

          configvalue.saveValue('0415', edtPath7.text);
          configvalue.saveValue('0416', edtDbName7.text);
          configvalue.saveValue('0417', edtUserName7.text);
          configvalue.saveValue('0418', edtpass7.text);

          configvalue.saveValue('0420', inttostr(cbimgUse.itemindex));

          configvalue.saveValue('0421', inttostr(cbHttp.itemindex));  //Http������ ���������ҷ�����
          configvalue.saveValue('0422', edtHttp.text, '');

          if cbFaceFromDB.checked=true then
           configvalue.saveValue('0456', '1')   //�󱼻����� DB���� �ҷ�����
          else
           configvalue.saveValue('0456', '0');


          configvalue.saveValue('0446', inttostr(cbUseOldImageView.itemindex));  //���� ������ ���
         // varUseOldImageView

       //   configvalue.saveValue('0442', edtImageViewAppPath.text, '');
          configvalue.saveValue('0443', inttostr( cbImgViewOrder.ItemIndex), '');
          configvalue.saveValue('0444', inttostr(  cbShareFolder.ItemIndex), '');
          configvalue.saveValue('0445',   edtShareFolderPath.text , '');


          configvalue.saveValue('0447', inttostr( cbChartPathUse.ItemIndex) , '');
          configvalue.saveValue('0448', inttostr( cbHttpPathChange.ItemIndex) , ''); //Utf-8��� ����� �ٲܰ��ΰ�?
                                                                                          // %EA%B8%B0%EC%86%8C%ED%98%80 �� %EA%B8%B0%EC%86%8C ����
          configvalue.saveValue('0449', inttostr( cbUseThumbnail.ItemIndex) , '0'); //����Ϸ� �ҷ�����....


          configvalue.saveValue('0451', inttostr( cbImageChartZeroExcept.ItemIndex) , '');  //���ɹٸ���
                                                             //��Ʈ��ȣ���� 0����.���� �������� �˻��ȴ�.

          S := ScaleCombo.Text;
          S := StringReplace(S, '%', '', [rfReplaceAll]);
          S := StringReplace(S, ' ', '', [rfReplaceAll]);
          configvalue.saveValue('0412', s, '�ĳ�� �ʱ� ����');

          ShowMessage('������������������ ����Ǿ����ϴ�.');
     except
          on E: Exception do
          begin

               ShowMessage('[���������������� �������]' + E.Message);
          end;

     end;
end;

procedure ToptionSet_f.FileserverInfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     try

          configvalue.saveValue('0440', inttostr(cbFileUse.itemindex));
          configvalue.saveValue('0441', edtFileServerIP.text);

          configvalue.saveValue('0503', inttostr(cbServerUse.itemindex));
          configvalue.saveValue('0504', edtFtpRoot.text);

          configvalue.saveValue('0505', edtFtpID.text);
          configvalue.saveValue('0506', edtFtpPass.text);

          configvalue.saveValue('0507', edtFtpPort.text);


          configvalue.saveValue('0511', inttostr(cbimg1Kind.itemindex));
          configvalue.saveValue('0512', edtimg1ip.text);
          configvalue.saveValue('0513', edtimg1root.text);
          configvalue.saveValue('0514', edtimg1id.text);
          configvalue.saveValue('0515', edtimg1pass.text);
          configvalue.saveValue('0516', edtimg1port.text);


          configvalue.saveValue('0517', inttostr(cbimg2Kind.itemindex));
          configvalue.saveValue('0518', edtimg2ip.text);
          configvalue.saveValue('0519', edtimg2root.text);
          configvalue.saveValue('0520', edtimg2id.text);
          configvalue.saveValue('0521', edtimg2pass.text);
          configvalue.saveValue('0522', edtimg2port.text);


          configvalue.saveValue('0523', inttostr(cbimg3Kind.itemindex));
          configvalue.saveValue('0524', edtimg3ip.text);
          configvalue.saveValue('0525', edtimg3root.text);
          configvalue.saveValue('0526', edtimg3id.text);
          configvalue.saveValue('0527', edtimg3pass.text);
          configvalue.saveValue('0528', edtimg3port.text);

          configvalue.saveValue('0529', inttostr(cbimg4Kind.itemindex));
          configvalue.saveValue('0530', edtimg4ip.text);
          configvalue.saveValue('0531', edtimg4root.text);
          configvalue.saveValue('0532', edtimg4id.text);
          configvalue.saveValue('0533', edtimg4pass.text);
          configvalue.saveValue('0534', edtimg4port.text);

          configvalue.saveValue('0535', inttostr(cbimg5Kind.itemindex));
          configvalue.saveValue('0536', edtimg5ip.text);
          configvalue.saveValue('0537', edtimg5root.text);
          configvalue.saveValue('0538', edtimg5id.text);
          configvalue.saveValue('0539', edtimg5pass.text);
          configvalue.saveValue('0540', edtimg5port.text);

          configvalue.saveValue('0541', inttostr(cbchartserverKind.itemindex));
          configvalue.saveValue('0542', edtchartServerip.text);
          configvalue.saveValue('0543', edtchartServerroot.text);
          configvalue.saveValue('0544', edtchartServerid.text);
          configvalue.saveValue('0545', edtchartServerpass.text);
          configvalue.saveValue('0546', edtchartServerport.text);

          configvalue.saveValue('0547', inttostr(cbDocuserverKind.itemindex));
          configvalue.saveValue('0548', edtDocuServerip.text);
          configvalue.saveValue('0549', edtDocuServerroot.text);
          configvalue.saveValue('0550', edtDocuServerid.text);
          configvalue.saveValue('0551', edtDocuServerpass.text);
          configvalue.saveValue('0552', edtDocuServerport.text);






          ShowMessage('���ϼ������������� ����Ǿ����ϴ�.');
     except
          on E: Exception do
          begin

               ShowMessage('[���ϼ����������� �������]' + E.Message);
          end;

     end;
end;

procedure ToptionSet_f.BackupDbinfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin
     try

          configvalue.saveValue('0415', edtPath7.text);
          configvalue.saveValue('0416', edtDbName7.text);
          configvalue.saveValue('0417', edtUserName7.text);
          configvalue.saveValue('0418', edtpass7.text);

          ShowMessage('Backup���������� ����Ǿ����ϴ�.');
     except
          on E: Exception do
          begin

               ShowMessage('[Backup�������� �������]' + E.Message);
          end;

     end;
end;

procedure ToptionSet_f.CIDinfoSave;
var
     path: string;
     FormInit: Tinifile;
begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteString('BASEINFO', 'CIDUSE', inttostr(cbCid.itemindex));
     FormInit.WriteString('BASEINFO', 'CIDUSE2', inttostr(cbCidUse2.itemindex));
     FormInit.WriteString('BASEINFO', 'CIDUSERID', edtCidId.text);
     FormInit.WriteString('BASEINFO', 'CIDUSERPASS', edtCidPass.text);

     //       configvalue.saveValue('0503', edtCidId.text, 'CID User ID');
     //       configvalue.saveValue('0504', edtCidPass.text, 'CID User Pass');


     FormInit.WriteString('BASEINFO', 'SKTCIDUSERID', edtSktCidID.text);
     FormInit.WriteString('BASEINFO', 'SKTCIDUSERPASS', edtSktCidPass.text);

     FormInit.WriteString('BASEINFO', 'LGUCIDUSERID', edtLGUplusTASID.text);
     FormInit.WriteString('BASEINFO', 'LGUCIDUSERPASS', edtLGUplusTASPass.text);


     FormInit.WriteInteger('BASEINFO', 'LGUCIDKind', rgLguKind.ItemIndex); //0: �����(BAS) 1: IMS��(TAS)

     FormInit.WriteString('BASEINFO', 'KTiCIDTELNO', edtktiTelNo.text);
     FormInit.WriteString('BASEINFO', 'KTiCIDUSERID', edtktiCidID.text);
     FormInit.WriteString('BASEINFO', 'KTiCIDUSERPASS', edtktiCidPass.text);

     FormInit.WriteString('BASEINFO', 'KTiCIDTELNO2', edtktiTelNo2.text);
     FormInit.WriteString('BASEINFO', 'KTiCIDUSERID2', edtktiCidID2.text);
     FormInit.WriteString('BASEINFO', 'KTiCIDUSERPASS2', edtktiCidPass2.text);


     FormInit.Free;

     try
          configvalue.saveValue('0501', edtcidIp.text);
          configvalue.saveValue('0502', edtCidPort.text);

          configvalue.saveValue('0553', edtSktTelNo.text);

     //     configvalue.saveValue('0554', edtktiTelNo.text);
     //     configvalue.saveValue('0555', edtktiTelNo2.text);


          ShowMessage('CID������ ����Ǿ����ϴ�.');
     except
          on E: Exception do
          begin

               ShowMessage('[CID���� �������]' + E.Message);
          end;

     end;
end;

procedure ToptionSet_f.BasicSave;
var
     path: string;
     FormInit: Tinifile;
begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteString('��Ÿ����', 'PRINTER_TYPE', edtRmode.text);
     FormInit.WriteString('��Ÿ����', 'SRP_DRIVER',edtSrpDriver.text);
     FormInit.Free;


     if BlankCheck = true then
     begin

          try
               //  dm_f.ZConnection.StartTransaction;
               configvalue.saveValue('0101', edtHpname.text); //0101 ȸ���

               configvalue.saveValue('0191', edtHpEngName.text); //0191 ȸ�����

               configvalue.saveValue('0102', edtname.text); //0102 ��ǥ�ڸ�
               configvalue.saveValue('0103', lblJumin.Caption); //0103 �ֹι�ȣ
               configvalue.saveValue('0104', edtSaupno.text); //0104 ����ڹ�ȣ
               configvalue.saveValue('0105', edtMyunhuNo.text); //0105 �����ȣ
               configvalue.saveValue('0106', edtJumpoCode.text); //0106 �������ȣ
               configvalue.saveValue('0107', edtZip1.text );//+ '-' + edtZip2.text);
               //0107 �����ȣ
               configvalue.saveValue('0108', edtAdd.text); //0108 �⺻�ּ�
               configvalue.saveValue('0109', edtAdd2.text); //0109 Ȯ���ּ�

               configvalue.saveValue('0192', edtEngAdd.text); //0192 �⺻�ּҿ���
               configvalue.saveValue('0193', edtEngAdd2.text); //0193 Ȯ���ּ�1 ����
               configvalue.saveValue('0194', edtEngAdd3.text); //0194 Ȯ���ּ�2 ����

               configvalue.saveValue('0110', edtTel1.text + '-' + edtTel2.text + '-' +
                    edtTel3.text); //0110 ��ȭ��ȣ1
               configvalue.saveValue('0111', edtHp1.Text + '-' + edtHp2.Text + '-' +
                    edtHp3.Text); //0111 ��ȭ��ȣ2
               configvalue.saveValue('0112', edtFax1.Text + '-' + edtFax2.Text + '-' +
                    edtFax3.Text); //0112 �ѽ���ȣ1
               configvalue.saveValue('0113', ''); //0113 �ѽ���ȣ2
               configvalue.saveValue('0114', edtmail.text); //0114 �̸���
               configvalue.saveValue('0115', edtilsu.text); //0115 �����������ϼ�
               configvalue.saveValue('0116', edtGubun.text); //0116 ���ǿ� ����
               configvalue.saveValue('0117', edtsimJibu.text); //0117 ����������ڵ�
               configvalue.saveValue('0118', edtDocNo.text); //0118 ��ϵ� �ǻ� ��
               configvalue.saveValue('0119', edtChubang.text); //0119 ó���� ���Ⱓ

               configvalue.saveValue('0120', inttostr(edtprintsu.itemindex));
               //0120 ó�����μ�-�౹��, ȯ�ں�����
               configvalue.saveValue('0121', edtBunup.text); //0121 �Ǿ�о�����

               configvalue.saveValue('0343', inttostr(cbChubangDaepyo.itemindex), 'ó���� ��ǥ�����̸����� �μ�'); //0121 �Ǿ�о�����

               configvalue.saveValue('0122', edtDeheng.text); //0122 û�������ü
               configvalue.saveValue('0123', edtRmode.text); //0123 �������߱޸��
               configvalue.saveValue('0124', edtChungname.text);
               //0124 ����û�� �ۼ��ڸ�
               configvalue.saveValue('0125', edtChungjumin.text);
               //0125 ����û�� �ۼ����ֹι�ȣ
             //  configvalue.saveValue('0126', edtJagyukid.text); //0126 �ڰ�Ȯ�� ���̵�

               configvalue.saveValue('0127', edtjagyukPass.text);
               //0127 �ڰ�Ȯ�� �н�����

         //      configvalue.saveValue('0130', inttostr(edtChartrule.ItemIndex + 1));
               //0130 ��Ʈ��ȣ ��Ģ

         //      configvalue.saveValue('0131', edtChartNew.text);
               //0131 ��Ʈ��ȣ ���ν��۹�ȣ

               configvalue.saveValue('0170', edtChungNO.text);   //û��������ȣ


               //���������� ���� ������ ���� �ż�
               configvalue.saveValue('0174', inttostr( cbPrintingCnt.ItemIndex) , '���������� ���� ������ ���� �ż�');

             //  cbPrintingCnt
               ShowMessage('�⺻������ ����Ǿ����ϴ�.');
          except
               on E: Exception do
               begin
                    //        dm_f.ZConnection.Rollback;

                    ShowMessage('[�⺻�����������]' + E.Message);
               end;

          end;

     end;
end;

function ToptionSet_f.blankCheck: boolean;
begin
     if EdtHpName.Text = '' then
     begin
          showmessage('�������� �Է��ϼ���');
          EdtHpName.setfocus;
          result := false;
          exit;
     end;
     if EdtName.Text = '' then
     begin
          showmessage('�̸��� �Է��ϼ���');
          EdtName.setfocus;
          result := false;
          exit;
     end;
     if lblJumin.Caption = '' then
     begin
          showmessage('�����Ͽ��� ��ǥ���� �ֹι�ȣ�� ����ϼ���');
          EdtName.setfocus;
          result := false;
          exit;
     end;
     if length(cbYear.Text) <> 4 then
     begin
          showmessage('������ ������ �Է��ϼ���');
          cbYear.setfocus;
          result := false;
          exit;
     end;
     if cbMonth.text = '' then
     begin
          showmessage('������ ���� �Է��ϼ���');
          cbMonth.setfocus;
          result := false;
          exit;
     end;
     if cbDay.text = '' then
     begin
          showmessage('������ ���ڸ� �Է��ϼ���');
          cbDay.setfocus;
          result := false;
          exit;
     end;
     if EdtTel1.Text = '' then
     begin
          showmessage('��ȭ��ȣ ������ȣ�� �Է��ϼ���');
          EdtTel1.setfocus;
          result := false;
          exit;
     end;
     if EdtTel2.Text = '' then
     begin
          showmessage('��ȭ��ȣ ������ �Է��ϼ���');
          EdtTel2.setfocus;
          result := false;
          exit;
     end;
     if EdtTel3.Text = '' then
     begin
          showmessage('��ȭ��ȣ�� �Է��ϼ���');
          EdtTel3.setfocus;
          result := false;
          exit;
     end;
     if EdtHp1.Text = '' then
     begin
          showmessage('�޴��� ��Ż� ��ȣ�� �Է��ϼ���');
          EdtHp1.setfocus;
          result := false;
          exit;
     end;
     if EdtHp2.Text = '' then
     begin
          showmessage('�޴��� ������ �Է��ϼ���');
          EdtHp2.setfocus;
          result := false;
          exit;
     end;
     if EdtHp3.Text = '' then
     begin
          showmessage('�޴��� ��ȣ�� �Է��ϼ���');
          EdtHp3.setfocus;
          result := false;
          exit;
     end;
     if EdtMail.Text = '' then
     begin
          showmessage('�̸����� �Է��ϼ���');
          EdtMail.setfocus;
          result := false;
          exit;
     end;
     if EdtZip1.Text = '' then
     begin
          showmessage('�����ȣ�� �Է��ϼ���');
          EdtZip1.setfocus;
          result := false;
          exit;
     end;
//     if EdtZip2.Text = '' then
//     begin
//          showmessage('�����ȣ ���ڸ��� �Է��ϼ���');
//          EdtZip2.setfocus;
//          result := false;
//          exit;
//     end;
     if EdtAdd.Text = '' then
     begin
          showmessage('�⺻�ּҸ� �Է��ϼ���');
          EdtAdd.setfocus;
          result := false;
          exit;
     end;
     if EdtAdd2.Text = '' then
     begin
          showmessage('���ּҸ� �Է��ϼ���');
          EdtAdd2.setfocus;
          result := false;
          exit;
     end;

     result := True;
end;

procedure ToptionSet_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure ToptionSet_f.FormDestroy(Sender: TObject);
begin
     optionSet_f := nil;
end;

procedure ToptionSet_f.btnCancelClick(Sender: TObject);
begin
     configvalue.LoadGlobalData_ini;
     configvalue.LoadGlobalData_db;
     close;
end;

procedure ToptionSet_f.AdvTrackBar1Change(Sender: TObject);
var
     i: integer;
begin
     planner1.Display.DisplayScale := AdvTrackBar1.Position;
     if advTrackBar1.Position < 50 then

     begin
          for i := 0 to planner1.Items.Count - 1 do
          begin
            //  planner1.Items.Items[i].CaptionType := 0;//TCaptionType.ctNone;
          end;
     end
     else
     begin
          for i := 0 to planner1.Items.Count - 1 do
          begin
               planner1.Items.Items[i].CaptionType := planner.ctTime;
          end;
     end;

end;

procedure ToptionSet_f.FormShow(Sender: TObject);
begin
     caption := 'MEDIRO ȯ�漳��';
     lblJumin.Visible := false;
     //vtabsheet3.TabVisible := false;
     SelectChartTabIndex;


     LoadBasicInfo;
     LoadPromiseInfo;
     LoadPathInfo;
     LoadAnotherDbInfo;

     LoadFileServerInfo;

     LoadBackupDbInfo;
     LoadCiDInfo;
     LoadetcEquip;
     loadPassword;

     textConnectState.text := '';
     label24.Caption :='';

end;

procedure ToptionSet_f.FormCloseQuery(Sender: TObject;
     var CanClose: Boolean);
begin
     configvalue.LoadGlobalData_db;

end;

procedure ToptionSet_f.btnBasicClick(Sender: TObject);
var
     i: integer;
begin

     for i := 0 to gbButton.ControlCount - 1 do
     begin

          if gbButton.Controls[i] is TAdvGlowButton then

          begin
               (gbButton.Controls[i] as TAdvGlowButton).Down := false;
          end;
     end;
     (sender as TAdvGlowButton).Down := true;
end;

function ToptionSet_f.WebSave: boolean;
var
     VarId,
          VarPass,
          Varname,
          VarHp1,
          VarHp2,
          VarHp3,
          VarJuso1,
          VarJuso2,
          VarEmail,
          VarJumin1,
          VarJumin2,
          varzip1,
          varzip2,
          VarUrl: string;
     // strim: Tstrim;

     Source: TMemoryStream;
     Response: TStringStream;
begin
     //��� �Է»��׿��� ������ ������� �ʴ´�.�̰� ã�µ� �ѳ��� �ɷȴ�. ������ ���� 400���� ���´�.
     // http://smscorp.surem.com/regist/regist_co_para.asp?deptcode=OV-JJG-9R&userid=gildata&username=�ϱ���&hpno1=016&hpno2=645&hpno3=0965&jumin1=111111&jumin2=1111111&email=gildata@naver.com&zip1=123&zip2=456&haddress1=��⵵&haddress2=���츮&pass=111122&url=http://smscorp.surem.com/client/test.asp
     result := false;
     try

          VarId := DelSpace(EdtId.text);
          VarPass := DelSpace(EdtPass1.Text);
          Varname := DelSpace(EdtName.text);
          VarHp1 := DelSpace(EdtHp1.Text);
          VarHp2 := DelSpace(EdtHp2.Text);
          VarHp3 := DelSpace(EdtHp3.Text);
          VarJuso1 := DelSpace(EdtAdd.Text);
          VarJuso2 := DelSpace(EdtAdd2.Text);
          VarEmail := DelSpace(EdtMail.Text);
          //VarJumin1 := DelSpace(EdtJumin1.Text);
          //VarJumin2 := DelSpace(EdtJumin2.Text);
          VarJumin1 := DelSpace(copy(cbYear.text, 3, 2) + cbMonth.text +
               cbDay.text);
          VarJumin2 := DelSpace('1111111');

          VarZip1 := DelSpace(Edtzip1.Text);
          VarZip2 := DelSpace(Edtzip2.Text);

          MemLog.Clear;
          // Add the URL to the VarURL.

        //   Response:= TstringStream.create;


          //VarUrl := '/regist/regist_co_para.asp?' +
          VarUrl := 'http://smscorp.surem.com/regist/regist_co_para.asp?' +
               'deptcode=' + dm_f.smsCustCode + '&' +
               'userid=' + VarId + '&' +
               'username=' + Varname + '&' +
               'hpno1=' + VarHp1 + '&' +
               'hpno2=' + VarHp2 + '&' +
               'hpno3=' + VarHp3 + '&' +
               'jumin1=' + VarJumin1 + '&' +
               'jumin2=' + VarJumin2 + '&' +
               'email=' + VarEmail + '&' +
               'zip1=' + Varzip1 + '&' +
               'zip2=' + Varzip2 + '&' +
               'haddress1=' + VarJuso1 + '&' +
               'haddress2=' + VarJuso2 + '&' +
               'pass=' + VarPass + '&' +
               'url=http://smscorp.surem.com/client/test.asp';

          //  VarUrl :='http://smscorp.surem.com/regist/regist_co_para.asp?deptcode=OV-JJG-9R&userid=hildata&username=�ϱ���&'+
          // 'hpno1=016&hpno2=645&hpno3=0965&jumin1=111111&jumin2=1111111&email=gildata@naver.com&zip1=123&zip2=456&haddress1=��⵵&haddress2=���츮&pass=111122&url=http://smscorp.surem.com/client/test.asp';
          //showmessage(varUrl);

          Screen.Cursor := crHourGlass;
          memoHTML.Clear;
          HTTP.Request.Username := '';
          HTTP.Request.Password := '';
          HTTP.Request.ContentType := '';
          memoHTML.Lines.Text := varUrl;
          //   HTTP.Intercept := LogDebug;
          try
               VarUrl :=  TIdURI.URLEncode(VarUrl);
               memoHTML.Lines.Text := HTTP.Get(VarUrl);
          finally
               Screen.Cursor := crDefault;
                 memoHTML.lines.text:=  Response.DataString;
                  Response.Free;

               // memoHTML.Lines.Text := HTTP.ResponseText;
                //.Request.URL;//.url.URI;
               // memoHTML.Lines.Add(HTTP.Host);
               // memoHTML.Lines.Add(HTTP.LocalName);
               // memoHTML.Lines.Add(HTTP.URL.Path);
                // memoHTML.Lines.Add(HTTP.AllData);
                // memoHTML.Lines.Add(HTTP.ReadChar);
               // memoHTML.Lines.Add(HTTP.Response.Pragma);
               // memoHTML.Lines.Add(HTTP.Response.Pragma);
               if ErrorCheck = '000' then
               begin
                    result := true;
               end;
               Screen.Cursor := crDefault;
          end;

     except
          on E: Exception do
          begin
               result := false;
               ExceptLogging('[SMS������� ����]' + E.Message);
               Screen.Cursor := crDefault;
          end;

     end;
end;

procedure ToptionSet_f.HttpPost(VarUrl:string);
var
 // rbstr: RawByteString;
   rbstr: String;
  HTML: String;
  MemoryStream: TMemoryStream;
  StringStream: TStringStream;
  slPost: TStringList;

begin


          
  slPost := TStringList.Create;
  slPost.Add('student_info=������');
  slPost.Add('reserve_purpose=����');
  StringStream := TStringStream.Create(slPost.Text);
  slPost.Free;



  MemoryStream := TMemoryStream.Create;

  HTTP.Request.ContentType := 'application/x-www-form-urlencoded';

  HTTP.Post('http://�ּ�', StringStream, MemoryStream);

  StringStream.Free;

  SetLength(rbstr, MemoryStream.Size);

  StrLCopy(PAnsiChar(rbstr), PAnsiChar(MemoryStream.Memory), MemoryStream.Size);

  MemoryStream.Free;

{
  if Pos('utf-8', HTTP.Response.ContentType)=0 then
     HTTP.SetCodePage(rbstr, 949, false)
  else
     HTTP.SetCodePage(rbstr, 65001, false);
  Memo1.Lines.Text := rbstr;
 }
end;

procedure ToptionSet_f.iniSave;
var
     path: string;
     FormInit: Tinifile;

begin
     //ȸ����ϰ� ȸ���ڵ�� ini���� �����Ѵ�.

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'COMPCODE', edtJumpoCode.Text);
     FormInit.WriteString('BASEINFO', 'COMPNAME', edtHpname.text);
     FormInit.WriteString('LOGIN', 'SMS', inttostr(cbSMSlogin.itemindex));


     FormInit.WriteString('SMS', 'SMSSENDNO', edtSmsno.Text );


     FormInit.WriteString('ETC', 'CERTPOSITION',
          inttostr(edtJagyukid.itemindex));
     FormInit.Free;
     //showmessage('����Ǿ����ϴ�.');
end;

function ToptionSet_f.ErrorCheck: string;
const
     E404 = 'err404';
     E500 = 'err500';
     E600 = 'err600';
     E000 = 'err000';

     {
     err404 : �̹� �����ϴ� ���̵�
     err500 : ��ü�ڵ尡 ��ȿ���� ������� , �ڵ�����ȣ�� 011, 016, 017, 018, 019�� �ƴ� ���
     err600 : ��Ÿ����, ���� �Ķ������ �ϳ��� ������
     err000 : ���� ���
     }
var
     ECode: Integer;
begin
     result := '';
     if Pos(E404, MemoHtml.text) > 0 then
          Ecode := 404
     else
          if Pos(E500, MemoHtml.text) > 0 then
               Ecode := 500
          else
               if Pos(E600, MemoHtml.text) > 0 then
                    Ecode := 600
               else
                    if Pos(E000, MemoHtml.text) > 0 then
                         Ecode := 000;
     case ECode of
          404:
               begin
                    Showmessage('�̹� ������� ���̵��Դϴ�.');
                    edtId.Setfocus;
                    result := '404';
               end;
          500:
               begin
                    Showmessage('�ڵ�����ȣ�� 010, 011, 016, 017, 018, 019���� �����ؾ��մϴ�.');
                    edthp1.SetFocus;
                    result := '500';
               end;
          600:
               begin
                    Showmessage('��� ���׿� ���ؼ� �Է��ϼž��մϴ�.');
                    result := '600';
               end;
          000:
               begin
                    Showmessage('�����մϴ�. ���������� ��� �Ǿ����ϴ�.');
                    // DBsave;
                    result := '000';
               end;
     end;
end;

procedure ToptionSet_f.DbSave;
begin
     if BlankCheck = true then
     begin
          try
               //���̵����� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '00'; //Id
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '00'; //Id
                    if EdtId.Text <> 'gildata' then
                         ParamByName('SLCOMMENT').AsString :=
                              EdtId.Text
                    else
                         ParamByName('SLCOMMENT').AsString :=
                              EdtId.Text;

                    ExecSQL;
               end;

               //�н��������� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '11'; //Password
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '11'; //Password
                    ParamByName('SLCOMMENT').AsString := EdtPass1.Text;
                    ExecSQL;
               end;
               //ȸ������� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '12'; //ȸ���
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '12'; //ȸ���
                    ParamByName('SLCOMMENT').AsString := EdtHpName.Text;
                    ExecSQL;
               end;

               //��������� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '13'; //�����
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '13'; //�����
                    ParamByName('SLCOMMENT').AsString := Edtname.Text;
                    ExecSQL;
               end;
               //��ȭ��ȣ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '14'; //��ȭ��ȣ
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '14'; //��ȭ��ȣ
                    ParamByName('SLCOMMENT').AsString := EdtTel1.Text +
                         '-' +
                         EdtTel2.Text + '-' + EdtTel3.Text;
                    ExecSQL;
               end;
               //�����ȣ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '15'; //�����ȣ
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '15'; //�����ȣ
                    ParamByName('SLCOMMENT').AsString := EdtZip1.Text +
                         '-' +
                         EdtZip2.Text;
                    ExecSQL;
               end;
               //�ּ�1 ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '16'; //�ּ�1
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '16'; //�ּ�1
                    ParamByName('SLCOMMENT').AsString := EdtAdd.Text;
                    ExecSQL;
               end;
               //�ּ�2 ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '17'; //�ּ�2
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '17'; //�ּ�2
                    ParamByName('SLCOMMENT').AsString := EdtAdd2.Text;
                    ExecSQL;
               end;
               //Email ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '18'; //Email
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '18'; //Email
                    ParamByName('SLCOMMENT').AsString := EdtMail.Text;
                    ExecSQL;
               end;
               //Jumin No ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '19'; //Jumin No
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '19'; //Jumin No
                    ParamByName('SLCOMMENT').AsString := cbYear.text +
                         '-' +
                         cbMonth.text + '-' + cbDay.text;
                    // EdtJumin1.Text + '-' + EdtJumin2.Text;
                    ExecSQL;
               end;
               //HP No ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '20'; //Hp No
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '20'; //HP No
                    ParamByName('SLCOMMENT').AsString := EdtHp1.Text +
                         '-' +
                         EdtHp2.Text + '-' + EdtHp3.Text;
                    ExecSQL;
               end;
               //�����ڵ�  ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '01'; //�����ڵ�
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '01'; //�����ڵ�
                    ParamByName('SLCOMMENT').AsString :=
                         edtJumpoCode.Text;
                    ExecSQL;
               end;
               //����ڹ�ȣ  ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '02'; //����ڹ�ȣ
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '02'; //����ڹ�ȣ
                    ParamByName('SLCOMMENT').AsString := EdtSaupNo.Text;
                    ExecSQL;
               end;

               //���� ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '03'; //����
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '03'; //����
                    ParamByName('SLCOMMENT').AsString := EdtUpJong.Text;
                    ExecSQL;
               end;

               //����  ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '04'; //����
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '04'; //����
                    ParamByName('SLCOMMENT').AsString := EdtUptae.Text;
                    ExecSQL;
               end;

               //�ѽ�  ���� �Ǵ� ������Ʈ
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '05'; //fax
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '05'; //fax
                    ParamByName('SLCOMMENT').AsString := edtFax1.Text +
                         '-' + edtFax2.Text + '-' + edtFax3.Text;
                    ExecSQL;
               end;

               //showmessage('����Ǿ����ϴ�.');

               //  iniSave;
          except

               on E: Exception do
               begin
                    ShowMessage('[������������ ����]' + E.Message);
               end;

          end;
     end
     else
     begin
          exit;
     end;

end;

procedure ToptionSet_f.LoadBasicInfo;
var
     i: integer;
     Path: string;
     // varPointyul: string;
     FormInit: Tinifile;
begin
     // pcOption.ActivePageIndex := 0;
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);


     cbSmsLogin.ItemIndex := FormInit.ReadInteger('LOGIN', 'SMS', 0);


     edtSmsno.Text    := FormInit.ReadString('SMS', 'SMSSENDNO', '');

     if edtSmsno.Text = '' then
            edtSmsno.Text := configvalue.varSmsNo ;


     cbWeb.ItemIndex := FormInit.ReadInteger('LOGIN', 'WEB', 1);
     cbDetailLoad.itemindex := FormInit.ReadInteger('BASEINFO', 'DETAILLOAD',
          0);
     cbBohum.itemindex := FormInit.ReadInteger('BASEINFO', 'INPUTBOHUM', 1);

     edtJinryoButtonLength.IntValue :=  FormInit.ReadInteger('ETC', 'JINRYOBUTTONLENGTH', 0  );

     edtDicapath.text := FormInit.ReadString('BASEINFO', 'DICAPATH', '');
     cbEasydent.ItemIndex := FormInit.ReadInteger('BASEINFO', 'EASYDENT', 0);

     //rgchartrul.ItemIndex := strtoint(FormInit.ReadString('��Ÿ����',
     //       'íƮ��ȣ��Ģ', '0')) - 1;
     edtRmode.text := FormInit.ReadString('��Ÿ����', 'PRINTER_TYPE', '����������');
     edtSrpDriver.text:= FormInit.ReadString('��Ÿ����', 'SRP_DRIVER', 'SAMSUNG SRP-770');



     edtSignFilePath1.text:= configValue.signfilePath1;// FormInit.ReadString('printinfo', 'SignFilePath1','');     //'������ ���� ���� ������'
     edtSignFilePath2.text:= configValue.signfilePath2;// FormInit.ReadString('printinfo', 'SignFilePath2', '');     //'��ǥ���� ���� ���� ������


     FormInit.Free;

     EdtId.Text := '';
     EdtPass1.Text := '';
     EdtPass2.Text := '';

     EdtHpName.Text := '';
     EdtName.Text := '';
     EdtTel1.Text := '';
     EdtTel2.Text := '';
     EdtTel3.Text := '';
     EdtAdd.Text := '';
     EdtAdd2.Text := '';
     EdtZip1.Text := '';
     EdtZip2.Text := '';

     edtilsu.text := '0';
     edtDocNo.text := '0';
     edtchubang.text := '0';
     edtGubun.itemindex := 0;
     edtprintsu.itemindex := 0;
     edtBunup.itemindex := 0;
//     edtrMode.itemindex := 0;
     edtChartrule.itemindex := 0;
     edtChungname.text := '';
     edtChungNo.text := '';
     edtChungjumin.text := '';
     edtChartnew.text := '';
     edtjagyukPass.text := '';
     edtJagyukid.text := '';
     edtDeheng.text := '';
     edtsimJibu.itemindex := 0;

     for i := 1930 to dateYear(now) do
     begin
          cbyear.Items.Add(inttostr(i));
     end;
     for i := 1 to 12 do
     begin
          cbmonth.Items.Add(formatFloat('00', i));
     end;
     for i := 1 to 31 do
     begin
          cbDay.Items.Add(formatFloat('00', i));
     end;
     // EdtJumin1.Text := '';
     // EdtJumin2.Text := '';
     EdtMail.Text := '';
     EdtHp1.Text := '';
     EdtHp2.Text := '';
     EdtHp3.Text := '';

     EdtId.Text := configvalue.varsmsId;
     lblJumin.Caption := configvalue.varJumin;
     EdtPass1.Text := configvalue.varSmspass;
     EdtPass2.Text := configvalue.varSmspass;
//     edtSmsno.Text := configvalue.varSmsNo;
     cbSmsCustKind.itemindex := strtoint(configvalue.varSmsCustKind);

     cbSmsConvMin.itemindex := strtoint(configvalue.varSmsConvMin);
     cbSmsAutosend.itemindex := strtoint(configvalue.varNewAutoSend);

      cbSmsChangesend.itemindex := strtoint(configvalue.varSmsChangesend);
      cbSmsCancelsend.itemindex := strtoint(configvalue.varSmsCancelsend);


     memSmsNew.Text :=  configvalue.varSmsAutosendContent;

     memSmsChange.Text :=  configvalue.varSmsChangeContent;
     memSmsCancel.Text :=  configvalue.varSmsCancelContent;



     EdtHpName.Text := configvalue.varsaupname;

     EdtHpEngName.Text := configvalue.varsaupEngname;

     EdtName.Text := configvalue.varDaepyo;

     EdtTel1.Text := SubStr(configvalue.varTel1, 1, '-');
     EdtTel2.Text := SubStr(configvalue.vartel1, 2, '-');
     EdtTel3.Text := SubStr(configvalue.vartel1, 3, '-');
     EdtZip1.Text := SubStr(configvalue.varZip, 1, '-');
     EdtZip2.Text := SubStr(configvalue.varZip, 2, '-');

     EdtAdd.Text     := configvalue.varAdd1;
     EdtAdd2.Text    := configvalue.varAdd2;

     EdtEngAdd.Text  := configvalue.varEngAdd1;
     EdtEngAdd2.Text := configvalue.varEngAdd2;
     EdtEngAdd3.Text := configvalue.varEngAdd3;

     EdtMail.Text := configvalue.varEmail;

     cbYear.Text := '19' + copy(configvalue.varJumin, 1, 2);
     cbMonth.Text := copy(configvalue.varJumin, 3, 2);
     cbDay.Text := copy(configvalue.varJumin, 5, 2);

     EdtHp1.Text := SubStr(configvalue.varTel2, 1, '-');
     EdtHp2.Text := SubStr(configvalue.varTel2, 2, '-');
     EdtHp3.Text := SubStr(configvalue.vartel2, 3, '-');

     edtJumpoCode.text := configvalue.varYoyang;
     edtSaupNo.text := configvalue.varsaupNo;

     if trim(configvalue.varMyunHu) <>  '' then
        edtMyunHuNo.text := configvalue.varMyunHu
     else
     begin
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_sawon_basic');
                    Sql.Add('where saname=:saname');
                    paramByName('saName').asString :=edtname.text;
                    open;
                    if not isEmpty then
                    begin
                         edtMyunHuNo.text :=fieldByName('saMyunhu').asString;

                    end
                    else
                    begin
                           edtMyunHuNo.text :='';
                    end;
               end;
     end;


     edtUpjong.text := ''; //configvalue.Var;

     edtupTae.text := ''; //configvalue;

     edtFax1.text := SubStr(configvalue.varFax1, 1, '-');
     edtFax2.text := SubStr(configvalue.varFax1, 2, '-');
     edtFax3.text := SubStr(configvalue.varFax1, 3, '-');

     edtilsu.text := configvalue.varilsu;
     edtDocNo.text := configvalue.varDocNo;
     edtChubang.text := configvalue.varChubang;
     edtGubun.itemindex := edtGubun.Items.IndexOf(configvalue.varGubun);
  //   edtRmode.itemindex := edtRmode.Items.IndexOf(configvalue.varRmode);
     edtBunup.itemindex := edtBunup.Items.IndexOf(configvalue.varBunup);

     if checkint(configvalue.varPrintsu) then
     edtprintsu.itemindex :=
         strtoint( configvalue.varPrintsu )
         else
          edtprintsu.itemindex := 0;


     if configvalue.varChartRule <> '' then
     begin
          edtChartrule.itemindex := strtoint(configvalue.varChartRule)
               - 1;
     end
     else
     begin
          edtChartrule.itemindex := 0;

     end;

     if configvalue.varChartRule <> '' then
     begin
          rgchartrul.ItemIndex := strtoint(configvalue.varChartRule)
               - 1;
     end
     else
     begin
          rgchartrul.ItemIndex := 0;

     end;

     with dm_f.SqlWork do
     begin
          close;
          Sql.Clear;
          sql.Add('select * from SeqNo');
          open;
          if not isEmpty then
          begin
               if fieldByname('Seqnumber').AsString <> '' then
               begin
                    edtSno.text :=
                         intToStr(strToInt(fieldByname('Seqnumber').AsString)
                         + 1);
               end
               else
               begin
                    edtSno.text := '';
               end;
          end
          else
          begin
               edtSno.text := '';
          end;
     end;

     edtChungname.text := configvalue.varChungname;
     edtChungNo.text := configvalue.varChungNo;
     edtChungjumin.text := configvalue.varChungJumin;
     edtChartnew.text := configvalue.varChartNew;
     edtjagyukPass.text := configvalue.varJagyukpass;
     edtJagyukid.text := configvalue.varJagyukID;
     edtDeheng.text := configvalue.varDaeheng;
     edtsimJibu.itemindex :=
          edtsimJibu.Items.IndexOf(configvalue.varSimjibu);


     cbPrintingCnt.itemindex :=  configvalue.varPrintingCnt; //0:2��,1 :1��

     if configvalue.varLoadBackup <> '' then
          cbBackup.itemindex := strtoint(configvalue.varLoadBackup)
     else
          cbBackup.itemindex := 1;

     if configvalue.varDaegiViewMode <> '' then
          cbDaegiViewMode.itemindex :=
               strtoint(configvalue.varDaegiViewMode)
     else
          cbDaegiViewMode.itemindex := 0;

     if configvalue.varDaegiRefreshMode <> '' then
          cbDaegiRefreshMode.itemindex :=
               strtoint(configvalue.varDaegiRefreshMode)
     else
          cbDaegiRefreshMode.itemindex := 0;

     if configvalue.varDaegiOrder <> '' then
          cbDaegiOrder.itemindex :=
               strtoint(configvalue.varDaegiOrder)
     else
          cbDaegiOrder.itemindex := 0;

     if configvalue.varDaegiTeamSave <> '' then
          cbDaegiTeamSave.itemindex :=
               strtoint(configvalue.varDaegiTeamSave)
     else
          cbDaegiTeamSave.itemindex := 0;

     if configvalue.varTeamColorDisp <> '' then
          cbTeamColorDisp.itemindex :=
               strtoint(configvalue.varTeamColorDisp)
     else
          cbTeamColorDisp.itemindex := 0;



     if configvalue.varEasydentDaegi <> '' then
          cbEasydentDaegi.itemindex :=
               strtoint(configvalue.varEasydentDaegi)
     else
          cbEasydentDaegi.itemindex := 0;

     if configvalue.varSunapFinish <> '' then
          cbSunapFinish.itemindex :=
               strtoint(configvalue.varSunapFinish)
     else
          cbSunapFinish.itemindex := 0;


     if configvalue.varDaegiTimerUse <> '' then
          cbDaegiTimerUse.itemindex :=
               strtoint(configvalue.varDaegiTimerUse)
     else
          cbDaegiTimerUse.itemindex := 0;

     if configvalue.varDaegiSocketUse <> '' then
          cbDaegiSocketUse.itemindex :=
               strtoint(configvalue.varDaegiSocketUse)
     else
          cbDaegiSocketUse.itemindex := 0;



     if configvalue.varDaegiGubunView <> '' then
          cbDaegiGubunview.itemindex :=
               strtoint(configvalue.varDaegiGubunView)
     else
          cbDaegiGubunview.itemindex := 1;





     if configvalue.varDaegiSound <> '' then
          cbDaegiSound.itemindex :=
               strtoint(configvalue.varDaegiSound)
     else
          cbDaegiSound.itemindex := 0;




     if configvalue.varChubangDaepyo <> '' then
          cbChubangDaepyo.itemindex :=
               strtoint(configvalue.varChubangDaepyo)
     else
          cbChubangDaepyo.itemindex := 0;

     if configvalue.varSunapKind <> '' then
          cbSunap.itemindex := strtoint(configvalue.varSunapKind)
     else
          cbSunap.itemindex := 1;


     if configvalue.varHyunSunapIn <> '' then
          cbHyunSunapIn.itemindex := strtoint(configvalue.varHyunSunapIn)
     else
          cbHyunSunapIn.itemindex := 1;



     if configvalue.varUseDocSunap <> '' then
          cbUseDocSunap.itemindex := strtoint(configvalue.varUseDocSunap)
     else
          cbUseDocSunap.itemindex := 0;

     if configvalue.varSunapUseGubun <> '' then
          cbSunapUseGubun.itemindex := strtoint(configvalue.varSunapUseGubun)
     else
          cbSunapUseGubun.itemindex := 0;

     if configvalue.varSunapPrintOpt1 <> '' then
         cbSunapPrintOpt1.itemindex := strtoint(configvalue.varSunapPrintOpt1)
     else
         cbSunapPrintOpt1.itemindex := 0;


     if configvalue.varAgreementScaleling <> '' then
         cbAgreementScaleling.itemindex := strtoint(configvalue.varAgreementScaleling)
     else
         cbAgreementScaleling.itemindex := 0;

     if configvalue.varAgeFilter <> '' then
         cbAgeFilter.itemindex := strtoint(configvalue.varAgeFilter)
     else
         cbAgeFilter.itemindex := 0;


     if configvalue.varDoctorsNoteAutoInput <> '' then
         cbDoctorsNoteAutoInput.itemindex := strtoint(configvalue.varDoctorsNoteAutoInput)
     else
         cbDoctorsNoteAutoInput.itemindex := 0;

     if configvalue.varBaseExamView <> '' then
         cbBaseExamView.itemindex := strtoint(configvalue.varBaseExamView)
     else
         cbBaseExamView.itemindex := 0;

     if configvalue.varExamMemoView <> '' then
         cbExamMemoView.itemindex := strtoint(configvalue.varExamMemoView)
     else
         cbExamMemoView.itemindex := 0;





      if configvalue.varScreenSave <> '' then
          edtScreenSave.value := strtoint(configvalue.varScreenSave)
     else
          edtScreenSave.value := 0;

     //2012.4.25
     if configvalue.varbohumSunap <> '' then
          cbBohumSunap.itemindex := strtoint(configvalue.varbohumSunap)
     else
          cbBohumSunap.itemindex := 0;

     //2012.5.1
     if configvalue.vardaegiColor <> '' then
          cbDaegiColor.itemindex := strtoint(configvalue.vardaegiColor)
     else
          cbDaegiColor.itemindex := 0;

     //2012.5.17
     if configvalue.varChartConv <> '' then
          cbChartConv.itemindex := strtoint(configvalue.varChartConv)
     else
          cbChartConv.itemindex := 0;


     if configvalue.imgSharefolderPath <> '' then
          edtimgSharefolderPath.text:=  configvalue.imgSharefolderPath
     else
         edtimgSharefolderPath.text:= '';


     if configvalue.signFilePath <> '' then
          edtSignFilePath.text:=  configvalue.SignFilePath
     else
         edtSignFilePath.text := '';

     if configvalue.signFilePath1 <> '' then
          edtSignFilePath1.text:=  configvalue.SignFilePath1
     else
         edtSignFilePath1.text := '';

     if configvalue.signFilePath2 <> '' then
          edtSignFilePath2.text:=  configvalue.SignFilePath2
     else
         edtSignFilePath2.text := '';

     if configvalue.DocuHeaderFile <> '' then
          edtDocuHeaderFile.text:=  configvalue.DocuHeaderFile
     else
          edtDocuHeaderFile.text := '';

     if configvalue.DocuMidFile <> '' then
          edtDocuMidFile.text:=  configvalue.DocuMidFile
     else
          edtDocuMidFile.text := '';





     if configvalue.varJungsanPrintDirection  <> '' then
          cbJungsanPrintDirection.itemindex := strtoint(configvalue.varJungsanPrintDirection)
     else
          cbJungsanPrintDirection.itemindex := 0;




     if configvalue.varNewonCountView  <> '' then
         cbNewonCountView.itemindex :=  strtoint(configvalue.varNewonCountView)
     else
        cbNewonCountView.itemindex := 1;

     if configvalue.varSunapSumView  <> '' then
          cbSunapSumView.itemindex :=  strtoint(configvalue.varSunapSumView)
     else
         cbSunapSumView.itemindex := 1;



     if configvalue.varRecallAlret  <> '' then
          cbRecallAlret.ItemIndex:=  strtoint(configvalue.varRecallAlret)
     else
         cbRecallAlret.ItemIndex:= 1;

     if configvalue.initHygine  <> '' then
          cbInitHygine.ItemIndex:=  strtoint(configvalue.initHygine)
     else
         cbInitHygine.ItemIndex:= 0;





     if configvalue.varSunapPrintLineChange  <> '' then
         cbSunapPrintLineChange.itemindex :=  strtoint(configvalue.varSunapPrintLineChange)
     else
         cbSunapPrintLineChange.itemindex := 0;



     if configvalue.varPrtFirstForm  <> '' then
         cbPrtFirstForm.itemindex :=  strtoint(configvalue.varPrtFirstForm)
     else
         cbPrtFirstForm.itemindex := 0;



     if configvalue.varJuminView  <> '' then
         cbJuminView.itemindex :=  strtoint(configvalue.varJuminView)
     else
         cbJuminView.itemindex := 0;


       

     //2012.5.9
     if configvalue.varHygine <> '' then
          cbHygine.itemindex := strtoint(configvalue.varHygine)
     else
          cbHygine.itemindex := 0;


     if configvalue.varHygine <> '' then
          cbDoctor.itemindex := strtoint(configvalue.varDoctor)
     else
          cbDoctor.itemindex := 1;

     if configvalue.varChungView <> '' then
          cbBohumOut.itemindex := strtoint(configvalue.varChungView)
     else
          cbBohumOut.itemindex := 0;

     if configvalue.varChartView <> '' then
          cbchartOut.itemindex := strtoint(configvalue.varChartView)
     else
          cbChartOut.itemindex := 0;
     if configvalue.varGogekView <> '' then
          cbGogekOut.itemindex := strtoint(configvalue.varGogekView)
     else
          cbGogekOut.itemindex := 0;

     if configvalue.varYeyakView <> '' then
          cbYeyakOut.itemindex := strtoint(configvalue.varYeyakView)
     else
          cbYeyakOut.itemindex := 0;

     //2011.12.1
     if configvalue.varfamilyView <> '' then
          cbFamily.itemindex := strtoint(configvalue.varfamilyView)
     else
          cbFamily.itemindex := 1;




     if configvalue.varChartCopyUse <> '' then
         cbChartCopyUse.itemindex :=
               strtoint(configvalue.varChartCopyUse)
     else
         cbChartCopyUse.itemindex := 0;

    if configvalue.varChartCopyWithSunap <> '' then
         cbChartCopyWithSunap.itemindex :=
               strtoint(configvalue.varChartCopyWithSunap)
     else
         cbChartCopyWithSunap.itemindex := 0;



    if configvalue.varChartCopyWitheChart <> '' then
         cbChartCopyWitheChart.itemindex :=
               strtoint(configvalue.varChartCopyWitheChart)
     else
         cbChartCopyWitheChart.itemindex := 0;


    if configvalue.varChartCopyWithSunap <> '' then
         cbChartCopyWithPromise.itemindex :=
               strtoint(configvalue.varChartCopyWithPromise)
     else
         cbChartCopyWithPromise.itemindex := 0;

   edtCopyPromiseParam.text :=   configvalue.varCopyPromiseParam;




    if configvalue.varChartCopyWithChartChange <> '' then
         cbChartCopyWithChartChange.itemindex :=
               strtoint(configvalue.varChartCopyWithChartChange)
     else
         cbChartCopyWithChartChange.itemindex := 0;




    if configvalue.varEasyChartChangeView <> '' then
         cbEasyChartChangeView.itemindex :=
               strtoint(configvalue.varEasyChartChangeView)
     else
         cbEasyChartChangeView.itemindex := 0;



 

     if  configvalue.varDentalHelperReception ='1' then
          cbDentalHelperReception.ItemIndex := 1
     else
          cbDentalHelperReception.ItemIndex :=0 ;







     //�ܺ����α׷� ���� ȣ��
     //=========================================================================
     if configvalue.varanotherDB <> '' then
          cbanotherDB.ItemIndex := strtoint(configvalue.varAnotherDB);
     cbDbProtocol2.text := configvalue.varImageProtocol2;
     edtPath2.text := configvalue.varImageIp2;
     edtDbName2.text := configvalue.varImageDB2;
     edtUserName2.text := configvalue.varImageUser2;
     edtPass3.text := configvalue.varImagePass2;


     edtGoogleMapApiKey.Text  := configvalue.varGoogleMapApiKey;


     edtLink1.Text  := configvalue.varLink1;
     edtLink2.Text  := configvalue.varLink2;


     edtShareFolderPPT.text := configvalue.varShareFolderPPT;
     cbShareFolderID.ItemIndex := strtoint(configvalue.varShareFolderID);
     edtPPtPath.text:= configvalue.varPPtPath;

     edtPenchartTemplatePath.text := configvalue.varPenchartTemplatePath;
     edtPenchartSavedPath.text := configvalue.varPenchartSavedPath;
     //=========================================================================



     edtPersonalinfoPath.text:= configvalue.varPersonalinfoPath;
     edtOrthoagree1Path.text:= configvalue.varOrthoagree1Path;
     edtOrthoagree2Path.text:= configvalue.varOrthoagree2Path;
     edtTreatFeePath.text:= configvalue.varTreatFeePath;

end;

procedure ToptionSet_f.LoadPromiseInfo;
begin
     with planner1 do
     begin
          caption.Title := '������� <b>����</b>';
     end;

     //���ɽð�����--------------------------------------------------------------
     cbLunchStime.ItemIndex :=
          cbLunchStime.Items.IndexOf(copy(configvalue.p_LunchstartTime, 1,
          2));
     cbLunchSMin.ItemIndex :=
          cbLunchSMin.Items.IndexOf(copy(configvalue.p_LunchstartTime,
          4,
          2));
     cbLunchFtime.ItemIndex :=
          cbLunchFtime.Items.IndexOf(copy(configvalue.p_LunchfinishTime, 1,
          2));
     cbLunchFMin.ItemIndex :=
          cbLunchFMin.Items.IndexOf(copy(configvalue.p_LunchFinishTime,
          4,
          2));



     cbLunchStime_sat.ItemIndex :=
          cbLunchStime_sat.Items.IndexOf(copy(configvalue.p_LunchstartTime_sat, 1,
          2));
     cbLunchSMin_sat.ItemIndex :=
          cbLunchSMin_sat.Items.IndexOf(copy(configvalue.p_LunchstartTime_sat,
          4,
          2));
     cbLunchFtime_sat.ItemIndex :=
          cbLunchFtime_sat.Items.IndexOf(copy(configvalue.p_LunchfinishTime_sat, 1,
          2));
     cbLunchFMin_sat.ItemIndex :=
          cbLunchFMin_sat.Items.IndexOf(copy(configvalue.p_LunchFinishTime_sat,
          4,
          2));





     if configvalue.p_LunchColor <> '' then
          edtLunchColor.ItemIndex := strtoint(substr(configvalue.p_LunchColor, 1, ','))
     else
          edtLunchColor.ItemIndex := 0;

     if configvalue.p_ColorNewon_b <> '' then
          cbColorNewon_b.ItemIndex := strtoint(substr(configvalue.p_ColorNewon_b, 1, ','))
     else
          cbColorNewon_b.ItemIndex := 0;

     if configvalue.p_ColorCancel_b <> '' then
          cbColorCancel_b.ItemIndex := strtoint(substr(configvalue.p_ColorCancel_b, 1, ','))
     else
          cbColorCancel_b.ItemIndex := 0;

     if configvalue.p_ColorChange_b <> '' then
          cbColorChange_b.ItemIndex := strtoint(substr(configvalue.p_ColorChange_b, 1, ','))
     else
          cbColorChange_b.ItemIndex := 0;

     if configvalue.p_ColorNotCon_b <> '' then
          cbColornotCon_b.ItemIndex := strtoint(substr(configvalue.p_ColorNotCon_b, 1, ','))
     else
          cbColornotCon_b.ItemIndex := 0;

      if configvalue.p_ColorRecall_b <> '' then
          cbColorRecall_b.ItemIndex := strtoint(substr(configvalue.p_ColorRecall_b, 1, ','))
     else
          cbColorRecall_b.ItemIndex := 0;

     if configvalue.p_ColorReYeyak_b <> '' then
          cbColorReYeyak_b.ItemIndex := strtoint(substr(configvalue.p_ColorReYeyak_b, 1, ','))
     else
          cbColorReYeyak_b.ItemIndex := 0;

     if configvalue.p_ColorEnd_b <> '' then
          cbColorEnd_b.ItemIndex := strtoint(substr(configvalue.p_ColorEnd_b, 1, ','))
     else
          cbColorEnd_b.ItemIndex := 0;


     if configvalue.p_ColorNewon_f <> '' then
          cbColorNewon_f.ItemIndex := strtoint(substr(configvalue.p_ColorNewon_f, 1, ','))
     else
          cbColorNewon_f.ItemIndex := 0;

     if configvalue.p_ColorCancel_f <> '' then
          cbColorCancel_f.ItemIndex := strtoint(substr(configvalue.p_ColorCancel_f, 1, ','))
     else
          cbColorCancel_f.ItemIndex := 0;

     if configvalue.p_ColorChange_f <> '' then
          cbColorChange_f.ItemIndex := strtoint(substr(configvalue.p_ColorChange_f, 1, ','))
     else
          cbColorChange_f.ItemIndex := 0;

     if configvalue.p_ColorNotCon_f <> '' then
          cbColornotCon_f.ItemIndex := strtoint(substr(configvalue.p_ColorNotCon_f, 1, ','))
     else
          cbColornotCon_f.ItemIndex := 0;

      if configvalue.p_ColorRecall_f <> '' then
          cbColorRecall_f.ItemIndex := strtoint(substr(configvalue.p_ColorRecall_f, 1, ','))
     else
          cbColorRecall_f.ItemIndex := 0;

     if configvalue.p_ColorReYeyak_f <> '' then
          cbColorReYeyak_f.ItemIndex := strtoint(substr(configvalue.p_ColorReYeyak_f, 1, ','))
     else
          cbColorReYeyak_f.ItemIndex := 0;

     if configvalue.p_ColorEnd_f <> '' then
          cbColorEnd_f.ItemIndex := strtoint(substr(configvalue.p_ColorEnd_f, 1, ','))
     else
          cbColorEnd_f.ItemIndex := 0;








     edtLunchCap.Text := configvalue.p_LunchCap;
     //--------------------------------------------------------------------------

     cbStime.ItemIndex :=
          cbStime.Items.IndexOf(copy(configvalue.p_startTime, 1,
          2));
     cbSMin.ItemIndex :=
          cbSMin.Items.IndexOf(copy(configvalue.p_startTime,
          4,
          2));
     cbftime.ItemIndex :=
          cbftime.Items.IndexOf(copy(configvalue.p_finishtime,
          1,
          2));
     cbfMin.ItemIndex :=
          cbfMin.Items.IndexOf(copy(configvalue.p_finishtime, 4,
          2));

     cbiMin.ItemIndex :=
          cbiMin.Items.IndexOf(inttostr(configvalue.p_timeinterval));
     advTrackbar1.Position := configvalue.p_rowinterval;

     planner1.Display.DisplayScale := AdvTrackBar1.Position;

     edtGugan.text := inttostr(configvalue.p_columncount);

     dtBohumapply.date := StrToDatetime(configvalue.BohumApplyDate);

     cbChamgoload.itemindex := strtoint(configvalue.varLoadChamgo);


     if configvalue.varPromiseLock <> '' then
          cbPromiseLock.itemindex := strtoint(configvalue.varPromiseLock)
     else
          cbPromiseLock.itemindex := 0;



     if configvalue.varLoadDur <> '' then
          cbDur.itemindex := strtoint(configvalue.varLoadDur)
     else
          cbDur.itemindex := 0;

     if configvalue.varMessageView <> '' then
          cbMessageView.itemindex :=
               strtoint(configvalue.varMessageView)
     else
          cbMessageView.itemindex := 0;

     // if configvalue.varChartDayColor <> '' then
    //         cbChartColor.Color :=  stringtocolor(configvalue.varChartDayColor)
    //  else
    //         cbChartColor.color := clWhite;

     if configvalue.varChartDayColor <> '' then
          cbChartColor.ItemIndex := strtoint(substr(configvalue.varChartDayColor, 1, ','))
     else
          cbChartColor.ItemIndex := 0;

     if configvalue.varChartApp <> '' then
          cbApp.ItemIndex := strtoint(configvalue.varChartApp)
     else
          cbApp.ItemIndex := 0;



     if configvalue.varChartCode <> '' then
          cbCode.ItemIndex := strtoint(configvalue.varChartCode)
     else
          cbCode.ItemIndex := 0;

     if configvalue.varChartKindView <> '' then
          cbChartKindView.ItemIndex := strtoint(configvalue.varChartKindView)
     else
          cbChartKindView.ItemIndex := 1;

     if configvalue.varChartDaily <> '' then
          cbChartDaily.ItemIndex := strtoint(configvalue.varChartDaily)
     else
          cbChartDaily.ItemIndex := 1;





     if configvalue.varChartMachi <> '' then
          cbMachi.ItemIndex := strtoint(configvalue.varChartMachi)
     else
          cbMachi.ItemIndex := 0;

     if configvalue.varChartXray <> '' then
          cbXray.ItemIndex := strtoint(configvalue.varChartXray)
     else
          cbXray.ItemIndex := 0;



     if configvalue.varChartTab <> '' then
          cbChartTab.ItemIndex := strtoint(configvalue.varChartTab)
     else
          cbChartTab.ItemIndex := 0;


     if configvalue.varChartSignKind <> '' then
           cbChartSignKind.ItemIndex := strtoint(configvalue.varChartSignKind)
     else
           cbChartSignKind.ItemIndex := 0;  //0:���� 1:KIS  2:Tablet



     if configvalue.varChartTuyakColor <> '' then
          cbTuyakColor.ItemIndex := strtoint(substr(configvalue.varChartTuyakColor, 1, ','))
     else
          cbTuyakColor.ItemIndex := 0;



     if configvalue.varChartEtc1 <> '' then
          cbChartEtc1.ItemIndex := strtoint(configvalue.varChartEtc1)
     else
          cbChartEtc1.ItemIndex := 0;


     if configvalue.varScanView <> '' then
          cbScanView.ItemIndex := strtoint(configvalue.varScanView)
     else
          cbScanView.ItemIndex := 0;

     if configvalue.varTeethView <> '' then
          cbTeethView.ItemIndex := strtoint(configvalue.varTeethView)
     else
          cbTeethView.ItemIndex := 1;

     if configvalue.varUseChartingModWindow <> '' then
          cbUseChartingModWindow.ItemIndex := strtoint(configvalue.varUseChartingModWindow)
     else
          cbUseChartingModWindow.ItemIndex := 0;  //�Ⱥ���

     if configvalue.varChartScrollSync <> '' then
          cbChartScrollSync.ItemIndex := strtoint(configvalue.varChartScrollSync)
     else
          cbChartScrollSync.ItemIndex := 0;  //�Ⱥ���






     if configvalue.varPlanDetailView <> '' then
          cbPlanDetailView.ItemIndex := strtoint(configvalue.varPlanDetailView)
     else
          cbPlanDetailView.ItemIndex := 0;


     if configvalue.varChartListOrder <> '' then
          cbChartListOrder.ItemIndex := strtoint(configvalue.varChartListOrder)
     else
          cbChartListOrder.ItemIndex := 1;


     if configvalue.varHappycallChartWrite <> '' then
          cbHappycallChartWrite.ItemIndex := strtoint(configvalue.varHappycallChartWrite)
     else
          cbHappycallChartWrite.ItemIndex := 0;



     if configvalue.varTabView <> '' then
          cbTab.ItemIndex := strtoint(configvalue.varTabView)
     else
          cbTab.ItemIndex := 0;

     edtPadding.Value := configvalue.varPadding;

     if configvalue.varChartArch <> '' then
          cbArch.ItemIndex := strtoint(configvalue.varChartArch)
     else
          cbArch.ItemIndex := 0;
     if configvalue.varArchInputKind <> '' then
          cbArchKind.ItemIndex := strtoint(configvalue.varArchInputKind)
     else
          cbArchKind.ItemIndex := 0;



     if configvalue.varCert <> '' then
          cbCert.ItemIndex := strtoint(configvalue.varCert)
     else
          cbCert.ItemIndex := 0;

     if configvalue.varChartDelete <> '' then
           cbChartDelete.ItemIndex := strtoint(configvalue.varChartDelete)
     else
           cbChartDelete.ItemIndex := 0;


     if configvalue.varNextButtonColor <> '' then
           cbNextButtonColor.ItemIndex := strtoint(substr(configvalue.varNextButtonColor, 1, ','))
     else
           cbNextButtonColor.ItemIndex := 0;

     if configvalue.varUpperToothColor <> '' then
           cbUpperToothColor.ItemIndex := strtoint(substr(configvalue.varUpperToothColor, 1, ','))
     else
           cbUpperToothColor.ItemIndex := 0;
     if configvalue.varLowerToothColor <> '' then
           cbLowerToothColor.ItemIndex := strtoint(substr(configvalue.varLowerToothColor, 1, ','))
     else
           cbLowerToothColor.ItemIndex := 0;

     if configvalue.varNextButtonAlign <> '' then
           cbNextButtonAlign.ItemIndex := strtoint(configvalue.varNextButtonAlign)
     else
           cbNextButtonAlign.ItemIndex := 0;

     if configvalue.varNextButtonText <> '' then
           edtNextButtonText.text :=  configvalue.varNextButtonText
     else
          edtNextButtonText.text := '��Next: ';

     if configvalue.varSunapComment <> '' then
           cbSunapComment.ItemIndex := strtoint(configvalue.varSunapComment)
     else
           cbSunapComment.ItemIndex := 0;

     if configvalue.varSunapRemarkCardView <> '' then
           cbSunapRemarkCardView.ItemIndex := strtoint(configvalue.varSunapRemarkCardView)
     else
           cbSunapRemarkCardView.ItemIndex := 0;




     if configvalue.varIbwon <> '' then
           cbIbwon.ItemIndex := strtoint(configvalue.varIbwon)
     else
           cbIbwon.ItemIndex := 0;

     if configvalue.varBunnapInputUse <> '' then
           cbBunnapInputUse.ItemIndex := strtoint(configvalue.varBunnapInputUse)
     else
           cbBunnapInputUse.ItemIndex := 0;


     if configvalue.varHideTot <> '' then
           cbHideTot.ItemIndex := strtoint(configvalue.varHideTot)
     else
           cbHideTot.ItemIndex := 0;


     if configvalue.varAutoHyunReceipt <> '' then
           cbAutoHyunReceipt.ItemIndex := strtoint(configvalue.varAutoHyunReceipt)
     else
           cbAutoHyunReceipt.ItemIndex := 0;







     if configvalue.varChartInput <> '' then
          cbChartInput.ItemIndex := strtoint(configvalue.varChartinput)
     else
          cbchartInput.ItemIndex := 0;

     if configvalue.P_PositionTime <> '1' then
          cbCurrentTime.itemindex := 0
     else
          cbCurrentTime.itemindex := 1;



     if configvalue.P_DocComboView <> 1 then
          cbPromiseDocComboView.ItemIndex := 0
     else
         cbPromiseDocComboView.ItemIndex := 1;



     if configvalue.P_AutoNoSMS <> 1 then
          cbAutoNoSMS.ItemIndex := 0
     else
          cbAutoNoSMS.ItemIndex := 1;

     if configvalue.P_Jubsudelete <> 1 then
          cbJubsuDelete.ItemIndex := 0
     else
          cbJubsuDelete.ItemIndex := 1;

     if configvalue.P_DelayWorkView <> 1 then
          cbDelayWorkView.ItemIndex := 0
     else
          cbDelayWorkView.ItemIndex := 1;

     if configvalue.varPromisetransfer <> 1 then
          cbPromisetransfer.ItemIndex := 0
     else
          cbPromisetransfer.ItemIndex := 1;



     if configvalue.P_AutoSendSMS <> 1 then
          cbAutoSendSMS.ItemIndex := 0
     else
          cbAutoSendSMS.ItemIndex := 1;


     if configvalue.P_remarkPrint <> 1 then
          cbRemarkPrint.ItemIndex := 0
     else
          cbRemarkPrint.ItemIndex := 1;

     if configvalue.P_PromiseTeamLoad <> 1 then
          cbPromiseTeamLoad.ItemIndex := 0
     else
          cbPromiseTeamLoad.ItemIndex := 1;





     if configvalue.p_FixPromiseFontcolor <> 0 then
          cbFixPromiseFontcolor.ItemIndex := 1
     else
         cbFixPromiseFontcolor.ItemIndex := 0;





     if configvalue.P_ViewItalic  = '1' then
          cbviewItalic.checked := true
     else
          cbviewItalic.checked := false;

     if configvalue.p_chartNoView <> '1' then
          cbChartNoView.itemindex := 0
     else
          cbChartNoView.itemindex := 1;

     if configvalue.p_chartNoOnlyView <> '1' then
          cbonlyChartView.itemindex := 0
     else
          cbonlyChartview.itemindex := 1;

     if configvalue.p_ColumnFix <> '1' then
          cbColumnFix.itemindex := 0
     else
          cbColumnFix.itemindex := 1;


     memSMS.text := configvalue.p_SmsContent;

     case tabsms.TabIndex of
          0:
               begin
                    //���� SMS�ڵ����� ���� �ҷ�����
                    memSMS.text := configvalue.p_SmsContent;

                    if configvalue.p_BeforeSendSms = 1 then
                         cbSMS.ItemIndex := 1
                    else
                         cbSMS.ItemIndex := 0;

                    if configvalue.p_BeforeSmscheck = 1 then
                         cbCheck.ItemIndex := 1
                    else
                         cbCheck.ItemIndex := 0;

                    edtBeforSMS.Text :=
                         inttostr(configvalue.p_BeforSms);
                    cbBeforTime.Text :=
                         copy(configvalue.p_SmsBeforTime, 1, 2);
                    cbBeforMin.Text :=
                         copy(configvalue.p_SmsBeforTime, 3, 2);
               end;
          1:
               begin
                    //SMS���� ���� �ҷ�����
                    memSMS.text := configvalue.p_recallSmsContent;

                    if configvalue.p_BeforeSendrecallSms = 1 then
                         cbSMS.ItemIndex := 1
                    else
                         cbSMS.ItemIndex := 0;

                    if configvalue.p_BeforerecallSmscheck = 1 then
                         cbCheck.ItemIndex := 1
                    else
                         cbCheck.ItemIndex := 0;

                    edtBeforSMS.Text :=
                         inttostr(configvalue.p_BeforrecallSms);
                    cbBeforTime.Text :=
                         copy(configvalue.p_recallSmsBeforTime,
                         1, 2);
                    cbBeforMin.Text :=
                         copy(configvalue.p_recallSmsBeforTime,
                         3, 2);
               end;
     end;
end;

procedure ToptionSet_f.LoadPathInfo;
var
     i: integer;
begin

     //    edtDicaPath.text := configvalue.varpicpath;
     edtimageDbpath.text := configvalue.varImageDbPath;


     edtShareFolderPath.Text :=   configvalue.varShareFolderPath;


    if configvalue.varImageDBSaveMode <> '' then
          cbImageDbSaveKind.itemindex :=
               strtoint(configvalue.varImageDBSaveMode)
     else
          cbImageDbSaveKind.itemindex := 0;

     edtDbServerIP.text := configvalue.varImageDBIP;
     edtDbServerPort.text := configvalue.varImageDBPort;

     scaleCombo.Items.clear;
     for i := 25 to 100 do
     begin
          scaleCombo.Items.add(inttostr(i) + '%');
     end;
     scalecombo.Text := configvalue.varpanoScale + '%';

end;

procedure ToptionSet_f.LoadAnotherDbInfo;
begin


     if configvalue.varUseHttp = '1' then
          cbHttp.ItemIndex := 1
     else
          cbHttp.Itemindex := 0;


     if configvalue.varFaceFromDB = '1' then
          cbFaceFromDB.checked:= true
     else
          cbFaceFromDB.checked:= false;


     if configvalue.varHttpPathChange = '1' then
          cbHttpPathChange.ItemIndex := 1
     else
          cbHttpPathChange.Itemindex := 0;

     if  checkint(configvalue.varUseThumbnail) = true then
          cbUseThumbnail.ItemIndex := strtoint(configvalue.varUseThumbnail)//1
     else
          cbUseThumbnail.Itemindex := 0;

     if configvalue.varImageChartZeroExcept = '1' then
          cbImageChartZeroExcept.ItemIndex := 1
     else
          cbImageChartZeroExcept.Itemindex := 0;








    // if configvalue.varUseOldImageView = '1' then
    //      cbUseOldImageView.ItemIndex := 1
    // else
    //      cbUseOldImageView.Itemindex := 0;

     if checkint(configvalue.varUseOldImageView) = true then
     begin
          cbUseOldImageView.ItemIndex := strtoint(configvalue.varUseOldImageView);
     end
     else
     begin
          cbUseOldImageView.Itemindex := 0;  //�⺻
     end;


     edtHttp.text := configvalue.varHttpPath;

     edtImageViewAppPath.text:=   configvalue.varImageViewAppPath;

     if configvalue.varImgViewOrder <> '' then
          cbImgViewOrder.ItemIndex := strtoint( configvalue.varImgViewOrder);


     if configvalue.varShareFolder <> '' then
          cbShareFolder.ItemIndex  := strtoint( configvalue.varShareFolder);

     if configvalue.varShareFolderPath <> '' then
         edtShareFolderPath.Text  :=   configvalue.varShareFolderPath;


     if configvalue.varChartPathUse <> '' then
          cbChartPathUse.ItemIndex  := strtoint( configvalue.varChartPathUse);



     if configvalue.varImageUse = '1' then
          cbAnotherViewerUse.ItemIndex := 1
     else
          cbAnotherViewerUse.Itemindex := 0;

     if configvalue.varUseImageview = '0' then
          cbImgUse.ItemIndex := 0
     else
          cbImgUse.Itemindex := 1;

     if configvalue.varuseMunFile = '1' then
          cbFileUse.ItemIndex := 1
     else
          cbFileUse.Itemindex := 0;

     if configvalue.varDownKind = '1' then
          cbServerUse.ItemIndex := 1
     else
          if configvalue.varDownKind = '2' then
               cbServerUse.ItemIndex := 2
          else
               cbServerUse.Itemindex := 0;   //Http�� ����ϸ� 0, cbServerUse=�ƴϿ�

     edtFtpRoot.text := configvalue.varFtpRoot;

     edtFtpId.text := configvalue.varFtpID;
     edtFtpPass.text := configvalue.varFtpPass;
     edtFtpPort.text := configvalue.varFtpPort;

     edtFileServerIP.text := configvalue.varuseMunFileIP;

     if configvalue.varImageKind <> '' then
          cbimagekind.ItemIndex := strtoint(configvalue.varImageKind);

     if configvalue.varViewKind <> '' then
          cbViewkind.ItemIndex := strtoint(configvalue.varViewKind);

     edtPath.text := configvalue.varImageIp;
     edtDbName.text := configvalue.varImageDB;
     edtUserName.text := configvalue.varImageUser;
     edtPass.text := configvalue.varImagePass;

     cbDbProtocol.text := configvalue.varImageProtocol;


    if configvalue.varImageViewIndi = '1' then
    begin
         cbViewindi.Checked := true;
         edtViewer.text := configvalue.varXrayViewer;   //ini���� �о�°�
    end
    else
    begin
         cbViewindi.Checked := false;
         edtViewer.text := configvalue.varViewer;      //DB���� �о�°�
    end;     



     //  configvalue.varImageProtocol;

end;


procedure ToptionSet_f.LoadFileServerInfo;
begin


     if configvalue.varuseMunFile = '1' then
          cbFileUse.ItemIndex := 1
     else
          cbFileUse.Itemindex := 0;

     if configvalue.varDownKind = '1' then
          cbServerUse.ItemIndex := 1
     else
          if configvalue.varDownKind = '2' then
               cbServerUse.ItemIndex := 2
          else
               cbServerUse.Itemindex := 0;

     edtFtpRoot.text := configvalue.varFtpRoot;

     edtFtpId.text := configvalue.varFtpID;
     edtFtpPass.text := configvalue.varFtpPass;
     edtFtpPort.text := configvalue.varFtpPort;

     edtFileServerIP.text := configvalue.varuseMunFileIP;




    cbImg1Kind.itemindex:= strtoint(configvalue.varImg1Kind);
    edtImg1IP.text:= configvalue.varImg1IP;
    edtImg1Root.text:= configvalue.varimg1Root;
    edtImg1ID.text:= configvalue.varImg1ID;
    edtImg1Pass.text:= configvalue.varImg1Pass;
    edtImg1Port.text:= configvalue.varImg1Port;

    cbImg2Kind.itemindex:= strtoint(configvalue.varImg2Kind);
    edtImg2IP.text:= configvalue.varImg2IP;
    edtImg2Root.text:= configvalue.varimg2Root;
    edtImg2ID.text:= configvalue.varImg2ID;
    edtImg2Pass.text:= configvalue.varImg2Pass;
    edtImg2Port.text:= configvalue.varImg2Port;



    cbImg3Kind.itemindex:= strtoint(configvalue.varImg3Kind);
    edtImg3IP.text:= configvalue.varImg3IP;
    edtImg3Root.text:= configvalue.varImg3Root;
    edtImg3ID.text:= configvalue.varImg3ID;
    edtImg3Pass.text:= configvalue.varImg3Pass;
    edtImg3Port.text:= configvalue.varImg3Port;

    cbImg4Kind.itemindex:= strtoint(configvalue.varImg4Kind);
    edtImg4IP.text:= configvalue.varImg4IP;
    edtImg4Root.text:= configvalue.varimg4Root;
    edtImg4ID.text:= configvalue.varImg4ID;
    edtImg4Pass.text:= configvalue.varImg4Pass;
    edtImg4Port.text:= configvalue.varImg4Port;

    cbImg5Kind.itemindex:= strtoint(configvalue.varImg5Kind);
    edtImg5IP.text:= configvalue.varImg5IP;
    edtImg5Root.text:= configvalue.varimg5Root;
    edtImg5ID.text:= configvalue.varImg5ID;
    edtImg5Pass.text:= configvalue.varImg5Pass;
    edtImg5Port.text:= configvalue.varImg5Port;

    cbChartServerKind.itemindex:= strtoint(configvalue.varChartServerKind);
    edtChartServerIP.text:= configvalue.varChartServerIP;
    edtChartServerRoot.text:= configvalue.varChartServerRoot;
    edtChartServerID.text:= configvalue.varChartServerID;
    edtChartServerPass.text:= configvalue.varChartServerPass;
    edtChartServerPort.text:= configvalue.varChartServerPort;


    cbDocuServerKind.itemindex:= strtoint(configvalue.varDocuServerKind);
    edtDocuServerIP.text:= configvalue.varDocuServerIP;
    edtDocuServerRoot.text:= configvalue.varDocuServerRoot;
    edtDocuServerID.text:= configvalue.varDocuServerID;
    edtDocuServerPass.text:= configvalue.varDocuServerPass;
    edtDocuServerPort.text:= configvalue.varDocuServerPort;


end;


procedure ToptionSet_f.LoadBackupDbInfo;
begin

     edtPath7.text := configvalue.varImageIp7;
     edtDbName7.text := configvalue.varImageDB7;
     edtUserName7.text := configvalue.varImageUser7;
     edtPass7.text := configvalue.varImagePass7;

end;

procedure ToptionSet_f.LoadCidInfo;
var
     varCidKind : integer;
begin
    if  checkint( configvalue.varCidUse) then
      varCidKind :=strtoint( configvalue.varCidUse)
    else
      varCidKind := 0;

    cbCid.ItemIndex := varCidKind;
    pageControl1.ActivePageIndex := varCidKind -1;



     if configvalue.varCidUse2 = '1' then
          cbCiduse2.ItemIndex := 1
     else
          cbCiduse2.Itemindex := 0;


     if configvalue.varImageViewThisPc = '1' then
           cbImageViewThisPc.ItemIndex := 1
     else
           cbImageViewThisPc.Itemindex := 0;


     if configvalue.varImageDel = '1' then
           cbImageDel.ItemIndex := 1
     else
           cbImageDel.Itemindex := 0;




     edtCidID.text := configvalue.varCidID;
     edtCidPass.text := configvalue.varCidPASS;


     edtSKTCidID.text := configvalue.varSKTCidID;
     edtSKTCidPass.text := configvalue.varSKTCidPASS;


     edtSktTelNo.text := configvalue.varSktTelNo;
     edtSmsCertNo.text := '';

     edtktiTelNo.text :=    configvalue.varktiTelNo;
     edtKTiCidID.text :=    configvalue.varKTiCidID;
     edtKTiCidPass.text :=  configvalue.varKTiCidPASS;

     edtktiTelNo2.text :=   configvalue.varktiTelNo2;
     edtKTiCidID2.text :=   configvalue.varKTiCidID2;
     edtKTiCidPass2.text := configvalue.varKTiCidPASS2;

     edtLGUplusTASID.text   := configvalue.varLGUplusTASID;
     edtLGUplusTASPass.text := configvalue.varLGUplusTASPass;

//     rgLguKind.ItemIndex :=  configvalue.varLGUplusKind;
   //  FormInit.WriteInteger('BASEINFO', 'LGUCIDKind', rgLguKind.ItemIndex);


     

     edtCidIp.text := configvalue.varCidIp;
     edtCidPort.text := configvalue.varCidPort;



end;

procedure ToptionSet_f.btnSaveClick(Sender: TObject);
begin

     try
          case pcOption.ActivePageIndex of
               0:   //�⺻����
                    begin
                         BasicSave;
                         iniSave;

                    end;
               1:   //���༳��
                    promiseSave;
               2:   //��Ʈ��ȣ����
                    chartSetSave;

               3:   //��Ÿ����
                    PathSave;
               4:   //SMS���ۼ���
                    SmsIDSave;
               5:   //������������
                    anotherDbinfoSave;
               6:   //CID���� ���ἳ��
                    CidinfoSave;
               7:   //������ġ����
                    EtcEquipSave;
               8:   //���ǥ ����
                    DaegiTableSave;
               9:   //PassWord
                    PassSave;
               10:  //Charting����
                    ChartInfoSave;
               11:  //Backup����
                    begin
                       BackupDbinfoSave;
                  //     Db2infoSave;
                    end;
               12:   //���ϼ��� ����
                    FileserverInfoSave;
               13:   //�μ⼳��
                    PrintInfoSave;
               14: //�ܺ����α׷�����
                    anotherPGSave;
               15: //û������ ����
                    JinryoButtonLengthSave;
               16: //���� ����
                    sunapInfoSave;
               17: //���Ǽ� ����
                    agreeInfoSave;
               18: //Link Save
                     LinkInfoSave;
          end;
     except
          showmessage('���忡 �����߽��ϴ�.');

     end;

end;

procedure ToptionSet_f.agreeInfoSave;
begin

     configvalue.saveValue('0610', edtPersonalinfoPath.text, '��������Ȱ�뵿�Ǽ�');
     configvalue.saveValue('0611', edtOrthoagree1Path.text, '�������Ǽ�1');
     configvalue.saveValue('0612', edtOrthoagree2Path.text, '�������Ǽ�2');
     configvalue.saveValue('0613', edtTreatFeePath.text, '����񳻿���');

     showmessage('���Ǽ� ������ ����Ǿ����ϴ�.');
end;


procedure ToptionSet_f.sunapInfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     if cbAutoHyunReceipt.ItemIndex >= 0 then
         FormInit.WriteInteger('BASEINFO', 'AutoHyunReceipt', cbAutoHyunReceipt.ItemIndex ); //2011.12.15
     FormInit.Free;

     configvalue.saveValue('0609', inttostr(cbSunapComment.ItemIndex), '����������װ� DailyComment ����');
     configvalue.saveValue('0614', inttostr(cbSunapRemarkCardView.ItemIndex), '�������� ������׿��� ī��� ī��ݾ� ����');
     configvalue.saveValue('0366', inttostr(cbIbwon.ItemIndex), '������ �Կ� ���� �μ� ����');
     configvalue.saveValue('0367', inttostr(cbBunnapInputUse.ItemIndex), '������ �Կ� ���� �μ� ����');
     configvalue.saveValue('0368', inttostr(cbHideTot.ItemIndex), '����â���� �ѱݾ� ���߱�');





     showmessage('���� ������ ����Ǿ����ϴ�.');
end;
procedure ToptionSet_f.EdtNameKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure ToptionSet_f.EdtHpNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure ToptionSet_f.ChartSetSave;
var
     Path: string;
     FormInit: TInifile;
begin
     try
          Path := getConfigdir + 'db.INI';
          FormInit := TIniFile.Create(Path);
          FormInit.WriteString('��Ÿ����', 'íƮ��ȣ��Ģ',
               inttostr(rgchartrul.ItemIndex + 1));

          configvalue.saveValue('0130', inttostr(rgchartrul.ItemIndex + 1));
          //0130 ��Ʈ��ȣ ��Ģ

          configvalue.saveValue('0131', edtSno.text);
          //0131 ��Ʈ��ȣ ���ν��۹�ȣ

   {if cbstartno.Checked = true then
   begin
          with dm_f.SqlWork do
          begin

                 close;
                 Sql.Clear;
                 sql.Add('delete  from SeqNo');
                 execSql;

                 close;
                 sql.Add('insert into SeqNo');
                 Sql.Add('(SeqNumber, SeqDate, seqDateNumber, seqMonthNumber) values');
                 Sql.Add('(:SeqNumber, :SeqDate, :seqDateNumber, :seqMonthNumber)');
                 paramByname('seqNumber').AsString :=
                        intToStr(strToInt(edtSno.text) - 1);
                 paramByname('seqDateNumber').AsString :=
                        intToStr(strToInt(edtSno.text) - 1);
                 paramByname('seqMonthNumber').AsString :=
                        intToStr(strToInt(edtSno.text) - 1);
                 paramByname('seqDate').AsString :=
                        formatDateTime('YYYY-MM-DD', now);

                 execSql;
          end;
   end;
   }
   //  FormInit.WriteString('��Ÿ����', 'Chair', IntToStr(RadioGroup6.Itemindex));

   {
             if cbstartno.Checked = true then
             begin
                  with dm_f.SqlWork do
                  begin
                       close;
                       Sql.Clear;
                       sql.Add('delete  from SeqNo');
                       execSql;
                       close;

                       sql.Add('insert into SeqNo');
                       Sql.Add('(SeqNumber, SeqDate, seqDateNumber, seqMonthNumber) values');
                       Sql.Add('(:SeqNumber, :SeqDate, :seqDateNumber, :seqMonthNumber)');
                       paramByname('seqNumber').AsString := intToStr(strToInt(edtSno.text) - 1);
                       paramByname('seqDateNumber').AsString := intToStr(strToInt(edtSno.text) - 1);
                       paramByname('seqMonthNumber').AsString := intToStr(strToInt(edtSno.text) - 1);
                       paramByname('seqDate').AsString := formatDateTime('YYYY-MM-DD', now);
                       execSql;
                  end;
             end;
           }

          showmessage('��Ʈ��ȣ ������ ����Ǿ����ϴ�.');
     except
          on E: Exception do
          begin
               //dbMain.Rollback;
               ShowMessage(E.Message + ' [��Ʈ��ȣ���� �������]');
          end;
     end;
end;

procedure ToptionSet_f.EdtNameExit(Sender: TObject);
begin
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From  ma_sawon_basic');
          Sql.Add('Where SANAME = :SANAME');
          ParamByName('SANAME').AsString := trim(edtname.Text);
          Open;
          if not isEmpty then
          begin
               lblJumin.Caption := Fieldbyname('Sajumin').AsString;
          end
          else
          begin
               showMessage('�����Ͽ��� ��ǥ������ �ֹι�ȣ�� ����ϼ���.');
               lblJumin.Caption := '';
               EdtName.SetFocus;
               exit;
          end;
     end;

end;

procedure ToptionSet_f.edtSaupNoExit(Sender: TObject);
var
     str_Buf: string;
begin
     str_buf := edtSaupNo.text;
     str_buf := StringReplace(str_buf, '-', '', [rfReplaceAll]);

     if length(str_buf) = 10 then
          edtSaupNo.text := saupmaker(edtSaupNo.text)
     else
     begin
          showmessage('����ڹ�ȣ ������ ���� �ʽ��ϴ�.');
          edtSaupNo.font.color := clred;
     end;
     //       edtSaupNo.text := saupmaker(edtSaupNo.text)

end;

procedure ToptionSet_f.EdtAddKeyPress(Sender: TObject; var Key: Char);
var
     FJuso: string;
begin

     if Key = #13 then
     begin
          if (trim(EdtAdd.Text) <> '') and (length(EdtAdd.Text) < 10) then
          begin
               Fjuso := FindZip(EdtAdd.Text);
               edtzip1.Text := substr(Trim(SubStr(Fjuso, 1, '^')), 1,
                    '-');
               edtzip2.Text := substr(Trim(SubStr(Fjuso, 1, '^')), 2,
                    '-');
               edtadd.Text := Trim(SubStr(Fjuso, 2, '^')) + ' ' +
                    Trim(SubStr(Fjuso, 3, '^')) + ' ';
               if edtZip1.Text <> '' then
               begin
                    edtadd2.SetFocus;

                    Key := #0;
               end
               else
                    Key := #0;

          end
          else
          begin
               SelectNext(sender as TWinControl, True, True);
               Key := #0;
          end;
     end;

end;

procedure ToptionSet_f.edtHp1Change(Sender: TObject);
begin
     if length((sender as Tedit).text) = 3 then
          SelectNext(sender as TWinControl, True, True);

end;

procedure ToptionSet_f.edtHp3Change(Sender: TObject);
begin
     if length((sender as Tedit).text) = 4 then
          SelectNext(sender as TWinControl, True, True);

end;

procedure ToptionSet_f.edtTel1Change(Sender: TObject);
begin
     if (length((sender as Tedit).text) = 2) and ((sender as Tedit).text =
          '02') then
          SelectNext(sender as TWinControl, True, True)
     else
          if length((sender as Tedit).text) = 3 then
               SelectNext(sender as TWinControl, True, True);
end;

procedure ToptionSet_f.pcOptionCanChange(Sender: TObject; FromPage,
     ToPage: Integer; var AllowChange: Boolean);
begin
     {    try
                case FromPage of
                       0:
                              begin

                                     BasicSave;
                                     iniSave;

                              end;
                       1:
                              promiseSave;
                       2:
                              chartSetSave;

                       3:
                              PathSave;
                       4:
                              SmsIDSave;
                       5:
                              anotherDbinfoSave;

                end;
                //showmessage('����Ǿ����ϴ�.');
         except
                showmessage('���忡 �����߽��ϴ�.');

         end;    }


end;


procedure ToptionSet_f.SelectChartTabIndex;
const
     SQL_SELECT_DATA = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''0990%'') and (code <> ''099000'')     ' + #13#10 +
          'order by code    ';

     SQL_SELECT_DATA2 = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''0990%'') and (code <> ''099000'')     and ( val <>  ''A'' )    ' + #13#10 +
          'order by code    ';

begin
     cbChartTab.items.clear;
     cbChartTab.items.add('��ü');

     with Dm_f.sqlTemp  do
     begin



          if varViewall <> true then
          SQL.Text := SQL_SELECT_DATA2
          else
          SQL.Text := SQL_SELECT_DATA;


          Open;
          if not IsEmpty then
               while not EOF do
               begin
                     cbChartTab.items.add(
                     FieldByName('disp').AsString);

                     Next;
               end;

     end;
end;

procedure ToptionSet_f.btnChartNoInitialClick(Sender: TObject);
begin
     with dm_f.SqlWork do
     begin
          close;
          Sql.Clear;
          sql.Add('delete  from TempChart');
          execSql;
     end;

end;

procedure ToptionSet_f.btnAppClick(Sender: TObject);
begin
     if cbstartno.Checked = true then
     begin
          with dm_f.SqlWork do
          begin
               close;
               Sql.Clear;
               sql.Add('delete  from SeqNo');
               execSql;
               close;

               sql.Add('insert into SeqNo');
               Sql.Add('(SeqNumber, SeqDate, seqDateNumber, seqMonthNumber, seqYearNumber) values');
               Sql.Add('(:SeqNumber, :SeqDate, :seqDateNumber, :seqMonthNumber, :seqYearNumber)');
               paramByname('seqNumber').AsString :=
                    intToStr(strToInt(edtSno.text) - 1);
               paramByname('seqDateNumber').AsString :=
                    intToStr(strToInt(edtSno.text) - 1);
               paramByname('seqMonthNumber').AsString :=
                    intToStr(strToInt(edtSno.text) - 1);
               paramByname('seqYearNumber').AsString :=
                    intToStr(strToInt(edtSno.text) - 1);
               paramByname('seqDate').AsString :=
                    formatDateTime('YYYY-MM-DD', now);
               execSql;
          end;
     end
     else
     begin
          showmessage('�����Ͻ÷��� [���ν����ϴ¹�ȣ] üũ�� �����ϼ���.');
     end;

end;

procedure ToptionSet_f.rgchartrulClick(Sender: TObject);
var
     Seqno, dayseqno, monthseqno, yearseqno: string;
begin
     with dm_f.SqlWork do
     begin
          close;
          Sql.Clear;
          sql.Add('select * from SeqNo');
          open;
          if not isEmpty then
          begin
               if fieldByname('Seqnumber').AsString <> '' then
               begin
                    seqno :=
                         intToStr(strToInt(fieldByname('Seqnumber').AsString)
                         + 1);
               end
               else
               begin
                    seqno := '';
               end;

               if fieldByname('SeqDatenumber').AsString <> '' then
               begin
                    dayseqno :=
                         intToStr(strToInt(fieldByname('SeqDatenumber').AsString) + 1);
               end
               else
               begin
                    dayseqno := '';
               end;

               if fieldByname('SeqMonthnumber').AsString <> '' then
               begin
                    monthseqno :=
                         intToStr(strToInt(fieldByname('SeqMonthnumber').AsString) + 1);
               end
               else
               begin
                    monthseqno := '';
               end;

               if fieldByname('SeqYearnumber').AsString <> '' then
               begin
                    yearseqno :=
                         intToStr(strToInt(fieldByname('SeqYearnumber').AsString) + 1);
               end
               else
               begin
                    yearseqno := '';
               end;
          end
          else
          begin
               Seqno := '';
               dayseqno := '';
               monthseqno := '';
               yearseqno := '';
          end;
     end;

     case rgchartrul.itemindex of
          0..2: edtSno.text := dayseqno;
          3, 4, 6, 7, 9: edtSno.text := seqno;
          8: edtSno.text := monthseqno;
          10: edtSno.text := yearseqno;
     end;

end;

function ToptionSet_f.DirectoryDialog: string;
var
     bRet: Boolean;
     strRoot: string;
     strDir: string;
begin
     Result := '';

     // strRoot := DBModule.dChartIp;
     strDir := ExtractFileDir(Application.ExeName);

     bRet := SelectDirectory('������ ���̽� ��θ� �����Ͻʽÿ�.', strRoot,
          strDir);
     if (bRet = False) then
          Exit;

     Result := strDir;
end;

procedure ToptionSet_f.edtViewerClickBtn(Sender: TObject);
begin

     if not assigned(filefind_f) then
          filefind_f := Tfilefind_f.Create(self);
     with filefind_f  do
     begin
          if Showmodal = mrOK then
               edtviewer.Text := edit1.Text;

          
     end;

end;

procedure ToptionSet_f.btnLoginClick(Sender: TObject);
var
     nLoginResult: Integer;
begin
     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);

     if ((length(ktcid_f.varAuthKey) = 0) or (edtCidID.GetTextLen = 0) or
          (edtCidPass.GetTextLen = 0)) then
     begin
          ShowMessage('�α��ο� �ʿ��� ������ ���ġ �ʽ��ϴ�.');
          Exit;
     end;

     nLoginResult := ktcid_f.ctrlKTOpenAPI.Login(ktcid_f.varCIDServerKInd,
          ktcid_f.varauthKey,
          edtCidId.Text,
          edtCidPass.Text);

     case nLoginResult of
          200:
               begin
                    textConnectState.Text := '���� ��û ����';
               end;
          301:
               begin
                    textConnectState.Text := '�ٸ� ��ġ���� �α��� ��';
                    ktcid_f.bAlreayLogined := true;
               end;
          401:
               begin
                    textConnectState.Text :=
                         '�̵�� ���̵�� �α��� ��û';
               end;
          402:
               begin
                    textConnectState.Text :=
                         '��й�ȣ ���� Ƚ�� �ʰ�(5ȸ)';
               end;
          405:
               begin
                    textConnectState.Text := '��й�ȣ ����';
               end;
          407:
               begin
                    textConnectState.Text := '���� IP ����';
               end;
          408:
               begin
                    textConnectState.Text := '�̵�� PC';
               end;
          500:
               begin
                    textConnectState.Text :=
                         '��Ÿ(HTTPS/HTTP ��û ����';
               end;
          1000:
               begin
                    textConnectState.Text := '�̹� �α��� ��';
               end;
          1001:
               begin
                    textConnectState.Text := '���� Ÿ�� ����';
               end;
          1502:
               begin
                    textConnectState.Text := '���� �������� ������';
               end;
          1503:
               begin
                    textConnectState.Text := '����Ű ��ȿ�Ⱓ�� ������';
               end;
          1504:
               begin
                    textConnectState.Text := '����Ű ��Ȱ��';
               end;
          1505:
               begin
                    textConnectState.Text := '����Ű Ÿ���� Ʋ��';
               end;
          1506:
               begin
                    textConnectState.Text :=
                         '���� �����̳� ��� ����Ű, ��� Flag�� ���';
               end;
          1507:
               begin
                    textConnectState.Text :=
                         '��� �����̳� ���� ����Ű, ���� Flag�� ���';
               end;
          1700:
               begin
                    textConnectState.Text :=
                         'API ȯ�� ���� ���� ����(����Ǵ� ���)';
               end;
          1701:
               begin
                    textConnectState.Text :=
                         'KTA_API.dat / KTD_API.dat ���� data ���� �ʱ�ȭ ����(������ �����ؾ� ��)';
               end;
          1702:
               begin
                    textConnectState.Text :=
                         'PC �޸� ����(API ���� ����)';
               end;
          0:
     else
          begin
               textConnectState.Text := '��Ÿ ��û ����';
          end;
     end;

end;

procedure ToptionSet_f.btnLoginKickOutClick(Sender: TObject);
begin
     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);

     if ktcid_f.bAlreayLogined then
          ktcid_f.ctrlKTOpenAPI.LoginKickOut();

end;

procedure ToptionSet_f.btnLogOutClick(Sender: TObject);
begin
     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);
     if ktcid_f.bLogin then
          ktcid_f.ctrlKTOpenAPI.Logout();
end;

procedure ToptionSet_f.btnSetMyInfoClick(Sender: TObject);
begin
     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);
     if not ktcid_f.bLogin then
     begin
          Exit;
     end;

     ktcid_f.ctrlKTOpenAPI.SetMyInfo();

end;

procedure ToptionSet_f.btnUserJoinClick(Sender: TObject);
begin
     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);

     ktcid_f.ctrlKTOpenAPI.UserJoinEx(ktcid_f.varCidServerKind);

end;

procedure ToptionSet_f.btnLineJoinClick(Sender: TObject);
begin
     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);

     if length(ktcid_f.varAuthKey) <= 0 then
          Exit;

     ktcid_f.ctrlKTOpenAPI.LineJoin(ktcid_f.varAuthKey);

end;

procedure ToptionSet_f.btnFindPasswdClick(Sender: TObject);
begin

     if not Assigned(ktcid_f) then
         ktcid_f := Tktcid_f.Create(application);
       ktcid_f.ctrlKTOpenAPI.FindPasswd;
 //    ktcid_f.ctrlKTOpenAPI.FindPasswdEx(ktcid_f.varCidServerKind);
//    ctrlKTOpenAPI.FindPasswdEx(1);
end;

procedure ToptionSet_f.btnHelpClick(Sender: TObject);
begin

     if not Assigned(ktcid_f) then
          ktcid_f := Tktcid_f.Create(application);
     ktcid_f.ctrlKTOpenAPI.HelpEx(ktcid_f.varCidServerKind);

end;

procedure ToptionSet_f.Button1Click(Sender: TObject);
begin
     ShellExecute(GetDeskTopWindow, 'open',
          Pchar(ExtractFilePath(Application.ExeName) +
          '\RegiModule\KT_OpenAPI_1.5\OpenAPI_reg.bat'), nil,
          pchar(ExtractFilePath(Application.ExeName) +
          '\RegiModule\KT_OpenAPI_1.5'),
          SW_SHOWNORMAL);

end;

procedure ToptionSet_f.imoSet(varButton: Tbutton);
begin
     ImoPanel.Left := varButton.Left;
     ImoPanel.Top := varButton.Top + varButton.Height + 5;

     {  if BtnSp.Caption = '��  Ư������' then
         BtnSp.Caption := '��  Ư������'
       else
         BtnSp.Caption := '��  Ư������';
     }
     ImoPanel.Visible := not ImoPanel.Visible;

     GrdImo.Cells[0, 0]:= '��';
     GrdImo.Cells[1, 0]:= '��';
     GrdImo.Cells[2, 0]:= '��';
     GrdImo.Cells[3, 0]:= '��';
     GrdImo.Cells[4, 0]:= '��';
     GrdImo.Cells[5, 0]:= '��';

     GrdImo.Cells[0, 1]:= '��';
     GrdImo.Cells[1, 1]:= '��';
     GrdImo.Cells[2, 1]:= '��';
     GrdImo.Cells[3, 1]:= '��';
     GrdImo.Cells[4, 1]:= '��';
     GrdImo.Cells[5, 1]:= '��';

     GrdImo.Cells[0, 2]:= '��';
     GrdImo.Cells[1, 2]:= '��';
     GrdImo.Cells[2, 2]:= '��';
     GrdImo.Cells[3, 2]:= '��';
     GrdImo.Cells[4, 2]:= '��';
     GrdImo.Cells[5, 2]:= '��';

     GrdImo.Cells[0, 3]:= '��';
     GrdImo.Cells[1, 3]:= '��';
     GrdImo.Cells[2, 3]:= '��';
     GrdImo.Cells[3, 3]:= '��';
     GrdImo.Cells[4, 3]:= '��';
     GrdImo.Cells[5, 3]:= '��';

     GrdImo.Cells[0, 4]:= '��';
     GrdImo.Cells[1, 4]:= '��';
     GrdImo.Cells[2, 4]:= '';
     GrdImo.Cells[3, 4]:= '';
     GrdImo.Cells[4, 4]:= '';
     GrdImo.Cells[5, 4]:= '';
end;

procedure ToptionSet_f.tabSmsChange(Sender: TObject);
begin
     case tabSms.TabIndex of
          1:
               begin
                    configvalue.saveValue('0206', inttostr(cbSMS.itemindex),
                         '��� sms���ۿ���');
                    configvalue.saveValue('0207', edtBeforSMS.Text,
                         '��� sms��������');
                    configvalue.saveValue('0208', cbBeforTime.Text + cbBeforMin.text
                         + '00', '��� sms���۽ð�');
                    configvalue.saveValue('0209', MemSms.text, '��� sms���۹���');
                    configvalue.saveValue('0210', inttostr(cbCheck.itemindex),
                         '��� sms������ Ȯ��');
               end;
          0:
               begin
                    configvalue.saveValue('0216', inttostr(cbSMS.itemindex),
                         '���� sms���ۿ���');
                    configvalue.saveValue('0217', edtBeforSMS.Text,
                         '���� sms��������');
                    configvalue.saveValue('0218', cbBeforTime.Text + cbBeforMin.text
                         + '00', '���� sms���۽ð�');
                    configvalue.saveValue('0219', MemSms.text, '���� sms���۹���');
                    configvalue.saveValue('0220', inttostr(cbCheck.itemindex),
                         '���� sms������ Ȯ��');
               end;
     end;

     configvalue.LoadGlobalData_db;

     case tabsms.TabIndex of
          0:
               begin
                    //���� SMS�ڵ����� ���� �ҷ�����
                    memSMS.text := configvalue.p_SmsContent;

                    if configvalue.p_BeforeSendSms = 1 then
                         cbSMS.ItemIndex := 1
                    else
                         cbSMS.ItemIndex := 0;

                    if configvalue.p_BeforeSmscheck = 1 then
                         cbCheck.ItemIndex := 1
                    else
                         cbCheck.ItemIndex := 0;

                    edtBeforSMS.Text :=
                         inttostr(configvalue.p_BeforSms);
                    cbBeforTime.Text :=
                         copy(configvalue.p_SmsBeforTime, 1, 2);
                    cbBeforMin.Text :=
                         copy(configvalue.p_SmsBeforTime, 3, 2);
               end;
          1:
               begin
                    //SMS���� ���� �ҷ�����
                    memSMS.text := configvalue.p_recallSmsContent;

                    if configvalue.p_BeforeSendrecallSms = 1 then
                         cbSMS.ItemIndex := 1
                    else
                         cbSMS.ItemIndex := 0;

                    if configvalue.p_BeforerecallSmscheck = 1 then
                         cbCheck.ItemIndex := 1
                    else
                         cbCheck.ItemIndex := 0;

                    edtBeforSMS.Text :=
                         inttostr(configvalue.p_BeforrecallSms);
                    cbBeforTime.Text :=
                         copy(configvalue.p_recallSmsBeforTime,
                         1, 2);
                    cbBeforMin.Text :=
                         copy(configvalue.p_recallSmsBeforTime,
                         3, 2);
               end;
     end;

end;

procedure ToptionSet_f.memSMSLengthChange(Sender: TObject);
begin

     LblMemcontentSize.Caption := 'Size ' + IntToStr(Length(MemSMS.Text)) +
          '/';
end;

procedure ToptionSet_f.IdLogEvent1Received(ASender: TComponent;
     const AText, AData: string);
begin
     memoHTML.Lines.Text := memoHTML.Lines.Text + AData;
end;

procedure ToptionSet_f.etcEquipSave;
var
     path: string;
     FormInit: Tinifile;
begin
  try
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteString('COMPORTINFO', 'SCANNER', cbScannerPort.text);
     FormInit.WriteString('COMPORTINFO', 'SPEED', cbScannerSpeed.text);

     FormInit.WriteString('JUBSUKEYPADPORTINFO', 'PORT', cbKeyPadPort.text);
     FormInit.WriteString('JUBSUKEYPADPORTINFO', 'SPEED', cbKeyPadSpeed.text);
     FormInit.WriteInteger('JUBSUKEYPADPORTINFO', 'KIND', cbKeyPadKind.itemindex);


     FormInit.WriteInteger('CertMachineINFO', 'KIND', cbCertMachineKind.itemindex);
     FormInit.WriteString('CertMachineINFO', 'PORT', cbCertMachinePort.text);
     FormInit.WriteString('CertMachineINFO', 'SPEED', cbCertMachineSpeed.text);


     if cbKeyPadAutostart.itemindex = 1 then
          FormInit.WriteString('JUBSUKEYPADPORTINFO', 'AUTOSTART', '1')
     else
          FormInit.WriteString('JUBSUKEYPADPORTINFO', 'AUTOSTART', '0') ;

     FormInit.Free;
     showmessage('����Ǿ����ϴ�.');
  except

  end;

end;

procedure ToptionSet_f.LoadetcEquip;
begin
     cbScannerPort.text := configvalue.varSCannerPort;
     cbScannerSpeed.text := configvalue.varSCannerSpeed;


     cbKeyPadKind.ItemIndex := configvalue.varKeyPadKind;
     cbKeyPadPort.text      := configvalue.varKeyPadPort;
     cbKeyPadSpeed.text     := configvalue.varKeyPadSpeed;


     cbCertMachinePort.text      := configvalue.varCertMachinePort;
     cbCertMachineSpeed.text     := configvalue.varCertMachineSpeed;
     cbCertMachineKind.ItemIndex := configvalue.varCertMachineKind;


     if  configvalue.varKeyPadAutoStart ='1' then
          cbKeyPadAutoStart.ItemIndex := 1
     else
          cbKeyPadAutoStart.ItemIndex :=0 ;


end;

procedure ToptionSet_f.DaegiTableSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('ETC', 'DAEGIVIEWMODE',
          inttostr(cbDaegiViewMode.itemindex));
     FormInit.WriteString('ETC', 'DAEGIRefreshMODE',
          inttostr(cbDaegiRefreshMode.itemindex));

     FormInit.WriteString('DentalHelperReception', 'AUTOSTART',
          inttostr(cbDentalHelperReception.itemindex)) ;   //��Ż���� ��������Ʈ �ڵ� �ҷ�����


     FormInit.Free;

     configvalue.saveValue('0307', inttostr(cbDaegiOrder.ItemIndex));
     configvalue.saveValue('0137', inttostr(cbDaegiColor.ItemIndex), '����������ܴ�� ����ǥ��'); //2012.5.1
     configvalue.saveValue('0342', inttostr(cbDaegiTeamSave.ItemIndex), '�����Ҷ� ���� ȯ���� �⺻������ �������� ����');

     configvalue.saveValue('0344', inttostr(cbTeamColorDisp.ItemIndex), 'ȯ�ڼ��� �� ���� ǥ�� ����');

     configvalue.saveValue('0321', inttostr(cbEasydentDaegi.ItemIndex), '������Ʈ ���ǥ ����');

     configvalue.saveValue('0349', inttostr(cbDaegiSound.ItemIndex), '��� ���� Ȱ��ȭ');

     configvalue.saveValue('0351', inttostr(cbSunapFinish.ItemIndex), '������ ���� ������ ���� �����Ϸ�ó��');


     configvalue.saveValue('0352', inttostr(cbDaegiTimerUse.ItemIndex), '���ǥ Ÿ�̸� ���');

     configvalue.saveValue('0353', inttostr(cbDaegiSocketUse.ItemIndex), '���ǥ ������� ���');

     configvalue.saveValue('0354', inttostr(cbDaegiGubunView.ItemIndex), '���ǥ ȯ�ڱ��� ����');


     configvalue.saveValue('0355', inttostr(cbChartCopyWithChartChange.ItemIndex), 'ȯ�ں���� ������Ʈ��ȣ ����');


     configvalue.saveValue('0356', inttostr(cbChartCopyWithSunap.ItemIndex), 'ȯ�ں���� ��������');

     configvalue.saveValue('0359', inttostr(cbChartCopyWithPromise.ItemIndex), 'ȯ�ں���� ���ູ��');

     configvalue.saveValue('0361', inttostr(cbChartCopyWitheChart.ItemIndex), 'ȯ�ں���� ��Ʈ����');



     configvalue.saveValue('0360',  edtCopyPromiseParam.text, '���ູ��� Ư�� ����');



     configvalue.saveValue('0357', inttostr(cbChartCopyUse.ItemIndex), 'ȯ�ڵ�Ͽ��� ȯ�ں����ư����');

     configvalue.saveValue('0358', inttostr(cbEasyChartChangeView.ItemIndex), '������Ʈ ��Ʈ���� ��ư����');




     showmessage('���ǥ������ ����Ǿ����ϴ�.');
end;

procedure ToptionSet_f.PassSave;
var
     s, path: string;
     FormInit: Tinifile;

begin
     //'0311'  configvalue.saveValue('0311', '1', 'CCġ�ĺ��̱�');
     configvalue.saveValue('0312', edtpassSunap.text);
     configvalue.saveValue('0313', edtPassDayJumgum.text);
     configvalue.saveValue('0314', edtPassDayMagam.text);
     configvalue.saveValue('0315', edtPassMonthMagam.text);
     configvalue.saveValue('0316', edtPassYearMagam.text);
     configvalue.saveValue('0317', edtPassSunapKind.text);
     configvalue.saveValue('0318', edtPassMisu.text);

                             //    '0319'//��ĵ�� �����  scanView
                             //    '0320'//Teeth�� �����  TeethView
                             //    '0321'//������Ʈ ���ǥ����  ����� EasydentDaegi ����
                             //    '0322'//PlanDetailView  �����
                             //    '0323'//ChartListOrder  �����
     configvalue.saveValue('0324', edtPassLock.text);
     configvalue.saveValue('0325', edtPassChartDelete.text);
     configvalue.saveValue('0326', edtpassSunapUpdate.text);
     configvalue.saveValue('0327', edtpassMagamUpdate.text);
     configvalue.saveValue('0328', edtPassAccountFinal.text);



     showmessage('Password ������ ����Ǿ����ϴ�.');
end;

procedure ToptionSet_f.LoadPassword;
begin

     edtpassSunap.text := configvalue.varPassSunap;
     edtPassDayJumgum.text := configvalue.varPassDayJumgum;
     edtPassDayMagam.text := configvalue.varPassDayMagam;
     edtPassMonthMagam.text := configvalue.varPassMonthMagam;
     edtPassYearMagam.text := configvalue.varPassYearMagam;
     edtPassSunapKind.text := configvalue.varPassSunapKind;
     edtPassMisu.text := configvalue.varPassMisu;
     edtPassLock.text := configvalue.varPassLock;
     edtPassChartDelete.text := configvalue.varPassChartDelete;
     edtpassSunapUpdate.text := configvalue.varPassSunapUpdate;
     edtpassMagamUpdate.text := configvalue.varPassMagamUpdate;
     edtPassAccountFinal.text := configvalue.varPassAccountFinal;
end;

procedure ToptionSet_f.FormCreate(Sender: TObject);
begin
     advTabsheet10.tabVisible := false;
     advTabsheet12.tabVisible := false;
     advTabsheet13.tabVisible := false;
     pagecontrol1.ActivePageIndex := 0;
end;

procedure ToptionSet_f.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     case Key of
          VK_F12:
               begin
                    advTabsheet10.TabVisible := not advTabsheet10.TabVisible;
                    lblSunapSumView.Visible:= not  lblSunapSumView.Visible;
                    lblNewonView.Visible:= not  lblNewonView.Visible;
                    cbNewonCountView.Visible:= not  cbNewonCountView.Visible;
                    cbSunapSumView.Visible:= not  cbSunapSumView.Visible;

                    lblAgeFilter.Visible:= not  lblAgeFilter.Visible;
                    CbAgeFilter.Visible:= not  CbAgeFilter.Visible;

               end;
          VK_F11:
               begin
                    advTabsheet12.TabVisible := not advTabsheet12.TabVisible;
               end;
          VK_F8:
               begin
                    advTabsheet13.TabVisible := not advTabsheet13.TabVisible;
               end;
          VK_F2:
               begin
                    cbImagedel.Visible:= not  cbImagedel.Visible;
                    lblImagedel.Visible:= not  lblImagedel.Visible;
                end;
     end;
end;

procedure ToptionSet_f.Db2infoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := 'c:\windows\' + 'win.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('file', '1', edtpath7.text);
     FormInit.WriteString('file', '2', edtDbname7.text); //name
     FormInit.WriteString('file', '3', edtPass7.text); //pass
     FormInit.WriteString('file', '4', edtUserName7.text); //user
     FormInit.WriteString('file', '5', 'mssql'); //protocol

      FormInit.Free;

end;

procedure ToptionSet_f.memSMSNewChange(Sender: TObject);
begin
    LblSize1.Caption := 'Size ' + IntToStr(Length(MemSMSNew.Text)) +
          '/';

end;

procedure ToptionSet_f.edtImageViewAppPathClickBtn(Sender: TObject);
begin

     if not assigned(filefind_f) then
          filefind_f := Tfilefind_f.Create(self);
     with filefind_f do
     begin
          if Showmodal = mrOK then
               edtImageViewAppPath.Text := edit1.Text;

     end;


end;

procedure ToptionSet_f.edtRmodeChange(Sender: TObject);
begin
      {
0:����������
1:SRP770II
2:miniPrint
3:FirstData
}
      case  edtRmode.ItemIndex of
      0:
       begin
        edtSrpDriver.Visible := false;
        cbPrintingCnt.Visible := true;
       end;
      1:
       begin
        edtSrpDriver.Visible := true;
        cbPrintingCnt.Visible := false;
       end;
      2,3:
      begin
        edtSrpDriver.Visible := false;
        cbPrintingCnt.Visible := false;
      end;
      end;

end;

procedure ToptionSet_f.cbimageKindChange(Sender: TObject);
begin
    case  cbimageKind.ItemIndex of
    22:
      EllipsLabel83.Caption :='���/VTEzBridge.exe '
              +#10#13+ '��ǻ�ͼӼ�-ȯ�溯�� - ���� Path �߰� '
              +#10#13+ 'C:\Program Files (x86)\postgresql\0902\bin'
              +#10#13+ 'C:\Program Files (x86)\postgresql\0902\lib'
              ;
    else
      EllipsLabel83.Caption :='Ÿ ������ ��μ���';
    end;
end;

procedure ToptionSet_f.spSkinLabel1DblClick(Sender: TObject);
begin

      advTabsheet10.TabVisible := not advTabsheet10.TabVisible;
      lblSunapSumView.Visible:= not  lblSunapSumView.Visible;
      lblNewonView.Visible:= not  lblNewonView.Visible;
      cbNewonCountView.Visible:= not  cbNewonCountView.Visible;
      cbSunapSumView.Visible:= not  cbSunapSumView.Visible;
      lblAgeFilter.Visible:= not  lblAgeFilter.Visible;
      CbAgeFilter.Visible:= not  CbAgeFilter.Visible;

end;

procedure ToptionSet_f.btnSktCidLoginClick(Sender: TObject);
var
    nResult : Integer;
begin
////    frmMain.Log('<API> IMS_Login(''' + edtUserId.Text + ''', ''' + edtPasswd.Text + ''');');
//
//    nResult := IMS_Login(edtSktCidID.text, edtSktCidPass.Text);
//
//    If (nResult <> Integer(SUCCESS)) then showmessage('�α��� ��û ���� : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//         showmessage('�α��� ����');
//    end;
end;


procedure ToptionSet_f.btnSKTInitClick(Sender: TObject);
var
    nResult : Integer;
begin
//    //frmMai.Log('<API> IMS_Init(''' + edtAppKey.Text + ''');');
//
//
//    nResult := IMS_Init(SKT_APP_KEY);
//
// //   if (nResult <> Integer(0))then frmMain.Log('>>>> API �ʱ�ȭ ���� : Err[' + StrFCause(nResult) + ']');
//   if (nResult <> Integer(0))then showmessage('API �ʱ�ȭ ���� : Err[' + StrFCause(nResult) + ']')
//   else
//   begin
//      showmessage('API �ʱ�ȭ ����');
//   end;
end;

procedure ToptionSet_f.btnSktCidLogoutClick(Sender: TObject);
var
    nResult : Integer;
begin
//   // frmMain.Log('<API> IMS_Logout();');
//
//    nResult := IMS_Logout();
//
//    If (nResult = Integer(SUCCESS)) then showmessage('�α׾ƿ� ����')
//    else showmessage('�α׾ƿ� ���� : Err[' + StrFCause(nResult) + ']');


end;

procedure ToptionSet_f.btnSktCidSmsCertReqClick(Sender: TObject);
var
    nResult : Integer;
begin
//   // frmMain.Log('<API> IMS_AuthSms(''' + edtNewTelNum.Text + ''');');
//
//    nResult := IMS_AuthSms(edtSktTelNo.text);
//
//    If (nResult <> Integer(SUCCESS)) then showmessage('SMS������ȣ ��û ���� : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//        showmessage(edtSktTelNo.text + '�� SMS������ȣ �߼� ����');
//    end;
end;

procedure ToptionSet_f.Button4Click(Sender: TObject);
var
    nResult : Integer;
begin
////    frmMain.Log('<API> IMS_ChgPasswd(''' + edtNewUserId.text + ''', ''' + edtNewPasswd.text + ''', ''' + edtNewTelNum.text + ''', ''' + edtAuthNo.text + ''');');
//
//    nResult := IMS_ChgPasswd(edtSktCidID.text, edtSktCidPass.Text, edtSktTelNo.text, SKT_APP_KEY);
//
//    if (nResult <> Integer(0)) then
//        showmessage('��й�ȣ ���� ��û ���� : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//        showmessage('��й�ȣ ���� ����');
//    end;

end;

procedure ToptionSet_f.btnRegistClick(Sender: TObject);
var
    nResult : Integer;
begin
//  //  frmMain.Log('<API> IMS_CreateUser(''' + edtNewUserId.text + ''',
//      //''' + edtNewPasswd.text + ''', ''' + edtNewTelNum.text + ''', ''' + edtAuthNo.text + ''');');
//
//    nResult := IMS_CreateUser(edtSktCidID.text,
//                            edtSktCidPass.Text,
//                            edtSktTelNo.text,
//                            edtSmscertNo.text); //SKT_APP_KEY);
//
//    if (nResult <> Integer(0)) then
//       showmessage('����� ��� ��û ���� : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//        showmessage('����� ��� ��û ����');
//    end;
end;

procedure ToptionSet_f.btnktiCidLoginClick(Sender: TObject);
begin
//              if not Assigned(kticid_f) then
//                   kticid_f := Tkticid_f.Create(application);
//
//         //     kticid_f.Show;
//              //Set
//        //        kticid_f.KTiCidSet(configvalue.varKtiTelNo);
//              //Dll���
//        //        kticid_f.KTiCidDllStart(configvalue.varKtiTelNo);
//              //�α���
//                kticid_f.KTiCidLogin(configvalue.varKtiTelNo,  configvalue.varKTiCidID,  configvalue.varKTiCidPASS);
//              exceptlogging('TelNo:'+ configvalue.varKtiTelNo +', ID:'+  configvalue.varKTiCidID+', Pass:'+ configvalue.varKTiCidPASS );
//                 //    pnlinfo2.caption := 'KTI CID ON';
//
end;

procedure ToptionSet_f.btnKTiInitClick(Sender: TObject);
begin
//              if not Assigned(kticid_f) then
//                   kticid_f := Tkticid_f.Create(application);
//            //  kticid_f.Show;
//              //Set
//                kticid_f.KTiCidSet(configvalue.varKtiTelNo);
//              //Dll���
//                kticid_f.KTiCidDllStart(configvalue.varKtiTelNo);
//               exceptlogging('TelNo:'+ configvalue.varKtiTelNo  );
//

end;

procedure ToptionSet_f.Button2Click(Sender: TObject);
begin
//              if not Assigned(kticid_f) then
//                   kticid_f := Tkticid_f.Create(application);
//                   kticid_f.Show;
//
end;

procedure ToptionSet_f.btnktiCidLogoutClick(Sender: TObject);
begin

//      kticid_f.KTiCidLogOut(Trim(edtktiTelNo.Text));

end;

procedure ToptionSet_f.Button3Click(Sender: TObject);
begin
    ShellExecute(GetDeskTopWindow, 'Open',
         Pchar(ExtractFilePath(Application.ExeName) +
         '\CidServerforKT.exe'),
         '', nil,
         SW_SHOWNORMAL);

end;

procedure ToptionSet_f.edtSmsNoChange(Sender: TObject);
begin
     (sender as tEdit).Text := call_tel_type((sender as tEdit).Text );
     (sender as tEdit).SelStart := length((sender as tEdit).Text );
end;

procedure ToptionSet_f.PageControl1Change(Sender: TObject);
begin
    cbCid.ItemIndex :=  pageControl1.ActivePageIndex +1 ;//varCidKind;
   // pageControl1.ActivePageIndex := varCidKind;

end;

procedure ToptionSet_f.cbCidChange(Sender: TObject);
begin
     pageControl1.ActivePageIndex := cbCid.ItemIndex - 1 ;
end;

procedure ToptionSet_f.btnLGUCidLoginClick(Sender: TObject);
var
     nLoginResult: Integer;
     lgUloginResult : wordBool;
      StrVal : string;
begin

//        case configvalue.varLGUplusKind  of
//              1:
//              begin
//
//                       if not Assigned(LguplusTAS_f) then
//                            LguplusTAS_f := TLguplusTAS_f.Create(application);
//
//                            LguplusTAS_f.Show;
//                     //  edtLGUplusTASID.text   := configvalue.varLGUplusTASID;
//                     //  edtLGUplusTASPass.text := configvalue.varLGUplusTASPass;
//
//
//                       if (trim(configvalue.varLGUplusTASID  ) = '' ) or
//                          (trim(configvalue.varLGUplusTASPass) = '')  then
//                       begin
//                            ShowMessage('�α��ο� �ʿ��� ������ ���ġ �ʽ��ϴ�.');
//                            Exit;
//                       end;
//
//                  //     TASBaseOpenApi1.LoginServer(txtID.Text,txtPasswd.Text,'');
//
//
//                      lgUloginResult :=  LguplusTAS_f.TASBaseOpenApi1.LoginServer(
//                                    configvalue.varLGUplusTASID,
//                                    configvalue.varLGUplusTASPass,
//                                    '');
//
//                                  StrVal := BoolToStr(lgUloginResult);;
//                                  ShowMessage('�α��οϷ�'
//                                  +#10#13+configvalue.varLGUplusTASID
//                                  +#10#13+ configvalue.varLGUplusTASPass
//                                  +#10#13+StrVal);
//
//                  { open api �α��� ���� �α��� ���
//                          STATUS : �α��� �������� 0����ũ�� ����
//                               /   -1 : �α��� ����(��������)
//                               /    -2:�α��� ����(��й�ȣ ����)
//                               /  ��Ÿ: �α��� ����(�����޽��� ����)
//                          EXTEN : ������ȣ EXTEN:1B450200 -> 200
//                          CALLERID : �߽��ڹ�ȣ
//                          MSG : �޼���
//                   }
//           end;
//           0:
//           begin
//
//                       if not Assigned(LguplusBAS_f) then
//                            LguplusBAS_f := TLguplusBAS_f.Create(application);
//
//                            LguplusBAS_f.Show;
//                     //  edtLGUplusTASID.text   := configvalue.varLGUplusTASID;
//                     //  edtLGUplusTASPass.text := configvalue.varLGUplusTASPass;
//
//
//                       if (trim(configvalue.varLGUplusTASID  ) = '' ) or
//                          (trim(configvalue.varLGUplusTASPass) = '')  then
//                       begin
//                            ShowMessage('�α��ο� �ʿ��� ������ ���ġ �ʽ��ϴ�.');
//                            Exit;
//                       end;
//
//                  //     TASBaseOpenApi1.LoginServer(txtID.Text,txtPasswd.Text,'');
//
//
//                      lgUloginResult :=  LguplusBAS_f.LGUBaseOpenApi1.LoginServer(
//                                    configvalue.varLGUplusTASID,
//                                    configvalue.varLGUplusTASPass,
//                                    '');
//
//                                  StrVal := BoolToStr(lgUloginResult);;
//                                  ShowMessage('�α��οϷ�'
//                                  +#10#13+configvalue.varLGUplusTASID
//                                  +#10#13+ configvalue.varLGUplusTASPass
//                                  +#10#13+StrVal);
//
//                  { open api �α��� ���� �α��� ���
//                          STATUS : �α��� �������� 0����ũ�� ����
//                               /   -1 : �α��� ����(��������)
//                               /    -2:�α��� ����(��й�ȣ ����)
//                               /  ��Ÿ: �α��� ����(�����޽��� ����)
//                          EXTEN : ������ȣ EXTEN:1B450200 -> 200
//                          CALLERID : �߽��ڹ�ȣ
//                          MSG : �޼���
//                   }
//
//
//
//           end;
//       end;

end;

procedure ToptionSet_f.btnLGUCidLogoutClick(Sender: TObject);
begin
//         case configvalue.varLGUplusKind  of
//              1:
//              begin
//                if not Assigned(LguplusTAS_f) then
//                      LguplusTAS_f := TLguplusTAS_f.Create(application);
//                 LguplusTAS_f.TASBaseOpenApi1.DisconnectServer;
//
//              end;
//              0:
//              begin
//                if not Assigned(LguplusBAS_f) then
//                      LguplusBAS_f := TLguplusBAS_f.Create(application);
//                 LguplusBAS_f.LGUBaseOpenApi1.DisconnectServer;
//
//              end;
//         end;
end;

procedure ToptionSet_f.spSkinLabel12Click(Sender: TObject);
begin

       advTabsheet12.TabVisible := not advTabsheet12.TabVisible;

end;

end.

