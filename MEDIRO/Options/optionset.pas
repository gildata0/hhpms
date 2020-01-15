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
//// API Function 선언
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
          '[제 1장 총칙]' +
          '                                                                               ' +
          '제 1조 목적' +
          '    이 약관은 슈어엠(주)(이하 "회사"라 합니다)가 제공하는 모든 유/무선인터넷' +
          '서비스의 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 전기통신사업법 및' +
          '동법 시행령이 정하는 대로 준수하고 규정함을 목적으로 합니다.' +
          '                                                                               ' +
          '제 2조 약관의 효력과 변경' +
          '    (1) 이 약관은 이용자에게 공지사항을 통해 공시함으로써 효력을 발생합니다.' +
          '    (2) 전항의 서비스 이용시간은 시스템 정기점검 등 회사가 필요한 경우,' +
          '게시판이나 팝업(pop-up)화면 등으로 고지하고 제한할 수 있습니다.' +
          '                                                                               ' +
          '제 3조 약관 외 준칙' +
          '    이 약관에 명시되지 않은 사항이 관계 법령에 규정되어 있을 경우에는' +
          '그 규정에 따릅니다.' +
          '                                                                               ' +
          '[제 2장 회원 가입과 서비스 이용]                                               ' +
          '제 1조 서비스 이용 계약의 성립                                                 ' +
          '    (1) 이용 계약은 이용자의 이용 신청에 대한 회사의 이용 승낙과 이용자의      ' +
          '약관 내용에 대한 동의로 성립됩니다.                                            ' +
          '    (2) 회원에 가입하여 서비스를 이용하고자 하는 희망자는 회사에서 요청하는    ' +
          '개인 신상정보를 제공해야 합니다.                                               ' +
          '    (3) 이용자의 이용신청에 대하여 회사가 이를 승낙한 경우, 회사는 회원 ID와   ' +
          '기타 회사가 필요하다고 인정하는 내용을 이용자에게 통지합니다.                  ' +
          '    (4) 회사는 다음 각 호에 해당하는 이용계약 신청에 대하여는 이를 승낙하지    ' +
          '아니 합니다.                                                                   ' +
          '        가. 다른 사람의 명의를 사용하여 신청하였을 때                          ' +
          '        나. 본인의 실명으로 신청하지 않았을 때                                 ' +
          '        다. 이용 계약 신청서의 내용을 허위로 기재하였을 때                     ' +
          '        라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때다.' +
          '                                                                               ' +
          '제2조 서비스 이용 및 제한                                                      ' +
          '    (1) 서비스 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴,' +
          ' 1일 24시간을 원칙으로 합니다.                                                 ' +
          '    (2) 전항의 서비스 이용시간은 시스템 정기점검 등 회사가 필요한 경우,        ' +
          '회원에게 사전 통지한 후, 제한할 수 있습니다.                                   ' +
          '                                                                               ' +
          '[제 3장 의무]                                                                  ' +
          '제 1조 회사의 의무                                                             ' +
          '    (1) 회사는 특별한 사정이 없는 한 회원이 신청한 서비스 제공 개시일에        ' +
          '서비스를 이용할 수 있도록 합니다.                                              ' +
          '    (2) 회사는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할   ' +
          '의무가 있습니다.                                                               ' +
          '    (3) 회사는 회원으로부터 소정의 절차에 의해 제기되는 의견에 대해서는 적절한 ' +
          '절차를 거처 처리하며, 처리시 일정 기간이 소요될 경우 회원에게 그 사유와 처리   ' +
          '일정을 알려주어야 합니다.                                                      ' +
          '    (4) 회사는 회원의 정보를 철저히 보안 유지하며,  회사는 업무와 관련하여 회원' +
          '전체 또는 일부의 개인 정보를 본래의 목적인 유무선연동 서비스 및 광고, 홍보,    ' +
          '마케팅 등 활동을 위한 자료로 활용할 수 있으나  규정된 이외의 목적으로는        ' +
          '사용하여서는 안됩니다.  다만 전기통신기본법 등 법률의 규정에 따른 경우에는그러 ' +
          '하지 않습니다.                                                                 ' +
          '                                                                               ' +
          '제 2조 회원의 의무                                                             ' +
          '    (1) ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있습니다.             ' +
          '    (2) 회원은 서비스의 일부로 보내지는 슈어엠(주)의 광고 정보를 받는 것에     ' +
          '동의합니다.                                                                    ' +
          '        (슈어엠(주)의 서비스는 홈페이지 및 핸드폰 광고 정보로 발생하는 수익을  ' +
          '기반으로 회원들에게 무료 또는 양질의 유료서비스를 제공하고 있습니다.)          ' +
          '    (3) 자신의 ID가 부정하게 사용된 경우, 회원은 반드시 회사에 그 사실을       ' +
          '통보해야 합니다.                                                               ' +
          '    (4) 회원은 이 약관 및 관계 법령에서 규정한 사항을 준수하여야 합니다.       ' +
          '                                                                               ' +
          '[제 4장 계약 해지 및 서비스 이용 제한]                                         ' +
          '                                                                               ' +
          '제 1조 계약 해지 및 이용 제한                                                  ' +
          '    (1) 회원이 이용 계약을 해지하고자 하는 때에는 회원 본인이 직접 메일을 통해 ' +
          '슈어엠(주) 담당자 앞으로 해지 신청을 요청해야 합니다.                          ' +
          '    (2) 가입해지 여부는 기존의 ID, 비밀번호로 로그인이 되지 않으면 해지된      ' +
          '것이며, 한번 해지된 ID는 기존 사용자라도 사용할 수 없음을 알려드립니다.        ' +
          '    (3) 회원이 회사의 핸드폰 문자메시지망(SMS망) 등의 유무선 통신망을 이용하여 ' +
          '스팸(SPAM)성 메시지를 전송하여 제3자에게 정신적 물질적 피해를 입히는 경우,     ' +
          '회원은 그 행위에 대한 모든 법적책임을 감수합니다.                              ' +
          '    (4) 회사는 회원이 다음 사항에 해당하는 행위를 하였을 경우, 사전 통지 없이  ' +
          '이용 계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.    ' +
          '         가. 공공 질서 및 미풍 양속에 반하는 경우                              ' +
          '         나. 범죄적 행위에 관련되는 경우                                       ' +
          '         다. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는   ' +
          '실행할 경우                                                                    ' +
          '         라. 타인의 ID 및 비밀번호를 도용한 경우                               ' +
          '         마. 타인의 명예를 손상시키거나 불이익을 주는 경우                     ' +
          '         바. 같은 사용자가 다른 ID로 이중 등록을 한 경우                       ' +
          '         사. 서비스에 위해를 가하는 등 건전한 이용을 저해하는 경우             ' +
          '         아. 기타 관련 법령이나 회사가 정한 이용조건에 위배되는 경우           ' +
          '                                                                               ' +
          '제 2조 이용 제한의 해제 절차                                                   ' +
          '    (1) 회사는 이용 제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 ' +
          '서면 또는 전화 등의 방법을 이용하여 해당 회원 또는 대리인에게 통지합니다.      ' +
          '    (2) 다만, 회사가 긴급하게 이용을 중지해야 할 필요가 있다고 인정하는 경우에는' +
          '전항의 과정없이 서비스 이용을 제한할 수 있습니다.                              ' +
          '    (3) 제4장 제2조 1항의 규정에 의하여 서비스 이용중지를 통지 받은 회원 또는  ' +
          '그 대리인은 이용 중지에 대하여 이의가 있을 경우 이의신청을 할 수 있습니다.     ' +
          '    (4) 회사는 이용중지 기간 중에 그 이용중지 사유가 해소된 것이 확인된 경우에 ' +
          '한하여 이용중지 조치를 즉시 해제합니다.                                        ' +
          '                                                                               ' +
          '제 3조 회원의 게시물 관리                                                      ' +
          '    (1) "웹사이트"란 회사가 관리하고 운영하는 모든 사이트를 지칭합니다.        ' +
          '    (2) "게시물"이란  회사의 웹사이트에 등록된 시청각자료, 동영상자료, 문자,   ' +
          '그림, 인물사진, 배경사진 등의 모든 웹상의 내용물을 지칭합니다.                 ' +
          '    (3) 회사가 운영하는 "웹싸이트"의 "게시물"에 대한 책임과 권리는             ' +
          '해당 "게시물"을 등록하는 주체에게 있습니다.                                    ' +
          '    (4) 회사는 회원들이 등록한 "게시물"을 웹싸이트에 어울리도록, 사이즈 형태   ' +
          '등을 조정하여 변경 게시할 권한이 있습니다. 단, 이때 게시한 회원의 창작성을     ' +
          '보존해야합니다.                                                                ' +
          '    (5) 회사 및 회원은 제삼자의 저작권, 상표권, 상호권, 초상권 침해의 소지가   ' +
          '있는 "게시물"을 등록할 수 없습니다. 저작권, 상표권, 상호권, 초상권 등 권리 침해' +
          '소지가 있는 "게시물"이 발견될 시 회사는 즉각 삭제를 할 것이며, 본건에 대해서   ' +
          '회원에게 책임을 물을 수 있습니다. 회사가 저작권, 상표권, 상호권 침해 사실을    ' +
          '인지하지 못하는 해당 "게시물"에 대한 전적인 책임은 해당 "게시물"을 등록한      ' +
          '회원에 있습니다.                                                               ' +
          '    (6) 회사는 운영하는 "웹싸이트"에 올려진 "게시물"을 이용하여 회사의 홍보,   ' +
          ' 등 회사사업에 활용할 수 있습니다.                                             ' +
          '    (7) 회사는 슈어엠(주) 서비스에 회원의 "게시물"이 다음 사항에 해당된다고    ' +
          '판단되는 경우에 사전 통지 없이 삭제할 수 있습니다.                             ' +
          '        가. 타인을 비방하거나 중상모략으로 개인 및 단체의 명예를 손상시키는    ' +
          '내용인 경우                                                                    ' +
          '        나. 공공질서 및 미풍양속에 위반되는 내용인 경우                        ' +
          '        다. 범죄적 행위에 부합된다고 인정되는 내용인 경우                      ' +
          '        라. 타인의 저작권 등 기타의 권리를 침해하는 내용인 경우                ' +
          '        마. 기타 관계 법령이나 회사에서 정한 규정에 위배되는 내용인 경우       ' +
          '                                                                               ' +
          '[제 5장 법적 분쟁]                                                             ' +
          '                                                                               ' +
          '제 1조 손해 배상                                                               ' +
          '    (1) 회사는 회사의 귀책사유가 없는 한, 서비스 이용과 관련하여 회원에게      ' +
          '발생한 어떠한 손해에 대하여도 책임을 지지 않습니다.                            ' +
          '    (2) 본 약관의 규정을 위반함으로 인하여 회사에 손해가 발생하게 되는 경우,   ' +
          '이 약관을 위반한 회원은 회사에 발생하는 모든 손해를 배상하여야 합니다.         ' +
          '    (2) 회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로       ' +
          '인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한    ' +
          '각종 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책시켜야 ' +
          ', 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를  ' +
          '배상하여야 합니다.                                                             ' +
          '                                                                               ' +
          '제 2조 면책사항                                                                ' +
          '    (1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수' +
          '없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.                            ' +
          '    (2) 회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을        ' +
          '지지않습니다.                                                                  ' +
          '    (3) 회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여     ' +
          '책임을 지지 않으며 그 밖에 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 ' +
          '책임을 지지 않습니다.  회사는 회원이 홈페이지에 게재한 정보·자료·사실의 신뢰도' +
          '및 정확성 등 내용에 대하여는 책임을 지지 않습니다.                             ' +
          '    (4) 회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한   ' +
          '분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.  ' +
          '                                                                               ' +
          '제 3조 관할법원                                                                ' +
          '    (1) 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생한 경우, 쌍방간에 ' +
          '분쟁의 해결을 위해 성실히 협의한 후가 아니면 제소할 수 없습니다.               ' +
          '    (2) 본조 제1항의 협의에서도 분쟁이 해결되지 않을 경우 양 당사자는 소를     ' +
          '제기할 수 있으며, 서울지방법원을 관할법원으로 합니다.                          ' +
          '                                                                               ' +
          '(부칙)이 약관은 2001년 5월 7일부터 시행합니다.                                 ';
var
     sKind: array[1..14] of string = ('서울',
          '인천',
          '강원',
          '경기',
          '대전',
          '충남',
          '광주',
          '전북',
          '전남',
          '부산',
          '제주',
          '경남',
          '경북',
          '대구');

procedure ToptionSet_f.PromiseSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'PROMISELOCK', inttostr(cbPromiseLock.ItemIndex)); //예약이동을 드레그로 하는것을 1:잠금 0:해제

     FormInit.Free;

     try
          //   dm_f.ZConnection.StartTransaction;
          configvalue.saveValue('0201', cbstime.Text + ':' + cbsmin.Text);
          //, '예약 시작 시간');
          configvalue.saveValue('0202', cbftime.Text + ':' + cbfmin.Text);
          //, '예약 마감 시간');
          configvalue.saveValue('0203', cbimin.Text); //, '예약 시간 간격');
          configvalue.saveValue('0204', inttostr(advtrackbar1.Position));
          //, '시간 사이 간격');
          configvalue.saveValue('0205', edtGugan.text); //, '구간수');
          configvalue.saveValue('0231', inttostr(cbCurrentTime.ItemIndex));
          //시작시 현재시간으로 이동

          configvalue.saveValue('0232', cbLunchstime.Text + ':' + cbLunchsmin.Text); //점심시작
          configvalue.saveValue('0233', cbLunchftime.Text + ':' + cbLunchfmin.Text); //점심끝


          configvalue.saveValue('0289', cbLunchstime_sat.Text + ':' + cbLunchsmin_sat.Text); //토요일 점심시작
          configvalue.saveValue('0290', cbLunchftime_sat.Text + ':' + cbLunchfmin_sat.Text); //토요일 점심끝



          configvalue.saveValue('0234', inttostr(edtLunchColor.ItemIndex) + ',' + Colortostring(edtLunchColor.Colors.Items[edtLunchColor.ItemIndex].Color),
               '점심 색지정');
          configvalue.saveValue('0235', edtLunchCap.text); //점심 표시내용

          configvalue.saveValue('0236', inttostr(cbChartNoView.ItemIndex)); //   ●예약표에서 챠트번호 보기
          configvalue.saveValue('0237', inttostr(cbColumnFix.ItemIndex)); //   ●오늘예약칸 조정한대로 보기
          configvalue.saveValue('0238', inttostr(cbonlyChartView.ItemIndex)); //   ●예약표에서 챠트번호 보기



          configvalue.saveValue('0239', inttostr(cbColorNewon_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorNewon_b.Colors.Items[cbColorNewon_b.ItemIndex].Color),
                            '내원색지정');

          configvalue.saveValue('0240', inttostr(cbColorCancel_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorCancel_b.Colors.Items[cbColorcancel_b.ItemIndex].Color),
                            '취소색지정');
          configvalue.saveValue('0241', inttostr(cbColorChange_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorChange_b.Colors.Items[cbColorChange_b.ItemIndex].Color),
                            '변경색지정');
          configvalue.saveValue('0242', inttostr(cbColorNotCon_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorNotCon_b.Colors.Items[cbColorNotCon_b.ItemIndex].Color),
                            '연락안됨색지정');

          configvalue.saveValue('0243', inttostr(cbColorReYeyak_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorReYeyak_b.Colors.Items[cbColorReYeyak_b.ItemIndex].Color),
                            '재예약색지정');

          configvalue.saveValue('0244', inttostr(cbColorRecall_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorRecall_b.Colors.Items[cbColorRecall_b.ItemIndex].Color),
                            '재리콜색지정');

          configvalue.saveValue('0245', inttostr(cbColorEnd_b.ItemIndex)
                            + ','
                            + Colortostring(cbColorEnd_b.Colors.Items[cbColorEnd_b.ItemIndex].Color),
                            '종결색지정');




          configvalue.saveValue('0246', inttostr(cbColorNewon_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorNewon_f.Colors.Items[cbColorNewon_f.ItemIndex].Color),
                            '내원색지정');

          configvalue.saveValue('0247', inttostr(cbColorCancel_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorCancel_f.Colors.Items[cbColorcancel_f.ItemIndex].Color),
                            '취소색지정');
          configvalue.saveValue('0248', inttostr(cbColorChange_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorChange_f.Colors.Items[cbColorChange_f.ItemIndex].Color),
                            '변경색지정');
          configvalue.saveValue('0249', inttostr(cbColorNotCon_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorNotCon_f.Colors.Items[cbColorNotCon_f.ItemIndex].Color),
                            '연락안됨색지정');

          configvalue.saveValue('0250', inttostr(cbColorReYeyak_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorReYeyak_f.Colors.Items[cbColorReYeyak_f.ItemIndex].Color),
                            '재예약색지정');

          configvalue.saveValue('0251', inttostr(cbColorRecall_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorRecall_f.Colors.Items[cbColorRecall_f.ItemIndex].Color),
                            '재리콜색지정');

          configvalue.saveValue('0252', inttostr(cbColorEnd_f.ItemIndex)
                            + ','
                            + Colortostring(cbColorEnd_f.Colors.Items[cbColorEnd_f.ItemIndex].Color),
                            '종결색지정');
          if cbViewItalic.Checked then
             configvalue.saveValue('0253', '1')
          else
             configvalue.saveValue('0253', '0');


          configvalue.saveValue('0254', inttostr(cbPromiseDocComboView.ItemIndex)); //   ●예약표에서 콤보박스로 원장정보 보기
          configvalue.saveValue('0255', inttostr(cbFixPromiseFontcolor.ItemIndex), '예약등록에서 마지막글자색 저장' ); //


          // 0260, 0261, 0262, 0263, 0264, 0265, 0266, 0267, 0268, 0269,//SMS 자동전송도구에서 설정값으로 사용.
          // 0270, 0271, 0272, 0273, 0274, 0275, 0276, 0277, 0278, 0279 //SMS 자동전송도구에서 설정값으로 사용.
          // 0281, 0282 바코드카드설정에서 사용
          configvalue.saveValue('0280', inttostr( cbAutoNoSms.ItemIndex), '예약등록시 자동 SMS 전송 버튼 해제 또는 설정' ); //




          configvalue.saveValue('0283', inttostr( cbAutoSendSMS.ItemIndex), '예약등록시 자동 SMS전송' ); //

          configvalue.saveValue('0284', inttostr( cbRemarkPrint.ItemIndex), '예약인쇄시 환자 참고사항 인쇄' ); //


          configvalue.saveValue('0455', inttostr( cbPromiseTeamLoad.ItemIndex), '예약등록시 탭의 팀을 가져오기' ); //


         //0285, 0286 , 0287 SMS 자동전송도구에서 설정값으로 사용. 285 토요일 전송시간 286 토요일 전송 분
                                                                  //0287 당일 예약자 전송
          //, 'SMS보내기 전 시간');
       //   dm_f.ZConnection.Commit;

          configvalue.saveValue('0288', inttostr( cbJubsuDelete.ItemIndex), '예약삭제시 접수내역 삭제' ); //

          configvalue.saveValue('0172', inttostr( cbDelayWorkView.ItemIndex), '미완료 업무내역 계속 보기' ); //
          configvalue.saveValue('0299', inttostr( cbPromiseTransfer.ItemIndex), 'Promise Transfer' ); //


          ShowMessage('예약설정이 저장되었습니다.');
     except
          on E: Exception do
          begin
               //    dm_f.ZConnection.Rollback;

               ShowMessage('[예약설정 저장오류]' + E.Message);
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


//     configvalue.saveValue('0175', inttostr(cbBaseExamView.ItemIndex), '');  //기초검사 항목 보기
//
//     configvalue.saveValue('0176', inttostr(cbExamMemoView.ItemIndex), '');  //검사실 메모 보기
//
//     configvalue.saveValue('0177', inttostr(cbDoctorsNoteAutoInput.ItemIndex), '');  //닥터스노트항목 자동입력


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

     //  configvalue.saveValue('0301', inttostr(cbchamgoLoad.itemindex),'환자참고사항 사진자리로 부르기');
     configvalue.saveValue('0302', inttostr(cbDur.itemindex), '처방전 발행시 DUR실행');
     //  configvalue.saveValue('0303', inttostr(cbBackup.itemindex),'종료시 백업 실행');

     configvalue.saveValue('0303', inttostr(cbMessageview.itemindex), 'X-ray이미지 불러올때 진행상황 보기');

     configvalue.saveValue('0160', inttostr(cbSunap.ItemIndex), '외부 수납폼 사용');

     configvalue.saveValue('0161', inttostr(cbHyunSunapIn.ItemIndex), '');

     configvalue.saveValue('0162', inttostr(edtScreenSave.Value), '0');


     configvalue.saveValue('0163', inttostr(cbUseDocSunap.ItemIndex), '');  //수납에서 원장코드 사용저장
     configvalue.saveValue('0164', inttostr(cbSunapUseGubun.ItemIndex), '');  //기간별 수납내역에서 환자구분보기


     configvalue.saveValue('0166', inttostr(cbAgreementScaleling.ItemIndex), '');  //스케일링동의서 사용


//     configvalue.saveValue('0175', inttostr(cbBaseExamView.ItemIndex), '');  //기초검사 항목 보기
//
//     configvalue.saveValue('0176', inttostr(cbExamMemoView.ItemIndex), '');  //검사실 메모 보기
//
//     configvalue.saveValue('0177', inttostr(cbDoctorsNoteAutoInput.ItemIndex), '');  //닥터스노트항목 자동입력


     configvalue.saveValue('0173', inttostr(cbAgeFilter.ItemIndex), '');  //AgeFilter 사용



     configvalue.saveValue('0136', inttostr(cbBohumSunap.ItemIndex), '청구수납저장시 수납연동'); //2012.4.25

     configvalue.saveValue('0139', inttostr(cbChartConv.ItemIndex), '검색시 챠트번호 숫자형으로 변환'); //2012.5.17



     configvalue.saveValue('0140', edtimgSharefolderPath.text, '환자얼굴사진저장경로') ;

     configvalue.saveValue('0143', inttostr(cbnewonCountView.ItemIndex), '내원횟수 보기설정') ;


     //'0145'  varViewallinit 셋팅값으로 사용
     configvalue.saveValue('0146', inttostr(cbSunapSumView.ItemIndex), '') ; //일자별 수납내역 합계보기
     //'0147'  신환저장시 SMS자동전송 설정함
     configvalue.saveValue('0149', inttostr(cbRecallAlret.ItemIndex), '') ; // 리콜 예약 알림

     configvalue.saveValue('0450', inttostr(cbInitHygine.ItemIndex), '환자등록시 위생사 초기화') ;




     showmessage('기타설정이 저장되었습니다.');
end;


procedure ToptionSet_f.PrintInfoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('printinfo', 'SignFilePath1', edtSignFilePath1.text);     //'병원용 인장 파일 저장경로'
     FormInit.WriteString('printinfo', 'SignFilePath2', edtSignFilePath2.text);     //'대표원장 인장 파일 저장경로
     FormInit.Free;


     configvalue.saveValue('0142', edtSignFilePath.text, '인장 파일 저장경로') ;


//     configvalue.saveValue('0180', edtSignFilePath1.text, '병원용 인장 파일 저장경로') ;
//     configvalue.saveValue('0181', edtSignFilePath2.text, '대표원장 인장 파일 저장경로') ;


     configvalue.saveValue('0144', inttostr(cbJungsanPrintDirection.ItemIndex), '일일점검인쇄방향  0세로 1가로');
     configvalue.saveValue('0148', inttostr(cbSunapPrintLineChange.ItemIndex), '') ; //일자별 수납내역인쇄시 라인바꾸기

     configvalue.saveValue('0165', inttostr(cbSunapPrintOpt1.ItemIndex), '');  //기간별 수납내역 간단인쇄



     configvalue.saveValue('0167', edtDocuHeaderFile.text, '진료의뢰서 HeaderFile 저장경로');  //진료의뢰서 HeaderFile
     configvalue.saveValue('0168', edtDocuMidFile.text, '진료의뢰서 MidFile 저장경로');  //진료의뢰서 Mid File



     configvalue.saveValue('0169', inttostr( cbPrtFirstForm.ItemIndex), '기본 치과기록지 인쇄여부') ; //기본 치과기록지 인쇄여부

     configvalue.saveValue('0374', inttostr( cbJuminView.ItemIndex), '처방전 인쇄시 주민번호 인쇄여부') ; //처방전 인쇄시 주민번호 인쇄여부


     showmessage('인쇄설정이 저장되었습니다.');
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


         //외부프로그램 설정 하나로 두번에 등
          //=====================================
           configvalue.saveValue('0431', edtPath2.text);
           configvalue.saveValue('0432', edtDbName2.text);
           configvalue.saveValue('0433', edtUserName2.text);
           configvalue.saveValue('0434', edtpass3.text);
           configvalue.saveValue('0435', inttostr(cbanotherDB.itemindex), 'ANotherDB사용');
           configvalue.saveValue('0436', cbDBProtocol2.Text, 'DBprotocol2');
          //=====================================


           configvalue.saveValue('0437', edtGoogleMapApiKey.Text, 'GoogleMapApiKey');


//           configvalue.saveValue('0438', edtLink1.Text, 'Link1');
//           configvalue.saveValue('0439', edtLink2.Text, 'Link2');
//

           configvalue.saveValue('0375', edtShareFolderPPT.text, 'PPT용 공유폴더 지정');
           configvalue.saveValue('0377',  inttostr(cbShareFolderID.itemindex), 'PPT용 공유폴더 접근 아이디 지정');

           configvalue.saveValue('0378', edtPenchartTemplatePath.text, '펜차트 탬플레이트');
           configvalue.saveValue('0379', edtPenchartSavedPath.text , '구펜차트 저장이미지');

        //   configvalue.saveValue('0376', edtPPtPath.text, 'PPT경로 지정');

           showmessage('외부프로그램 설정이 저장되었습니다.');

end;
procedure ToptionSet_f.LinkInfoSave;

var
     s, path: string;
     FormInit: Tinifile;

begin


           configvalue.saveValue('0438', edtLink1.Text, 'Link1');
           configvalue.saveValue('0439', edtLink2.Text, 'Link2');


           showmessage('Link  설정이 저장되었습니다.');

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
           showmessage('진료버튼 설정이 저장되었습니다.');
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
     configvalue.saveValue('0453', inttostr(cbChartKindView.ItemIndex));  //차트 kind

     configvalue.saveValue('0454', inttostr(cbChartDaily.ItemIndex));  //daily chart info



     configvalue.saveValue('0132', formatdatetime('YYYY-MM-DD', dtbohumApply.date), '차팅시 보험청구적용 시작일 지정');

     configvalue.saveValue('0304', inttostr(cbChartColor.ItemIndex) + ',' + Colortostring(cbChartColor.Colors.Items[cbChartColor.ItemIndex].Color),
          '차트 오늘 라인의 색지정');

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
          '원외처방 라인의 색지정');

     configvalue.saveValue('0348',   inttostr(cbChartTab.ItemIndex)   );


     configvalue.saveValue('0350',   inttostr( cbChartSignKind.ItemIndex)   );




     configvalue.saveValue('0319', inttostr(cbScanView.ItemIndex));
     configvalue.saveValue('0320', inttostr(cbTeethView.ItemIndex));
     configvalue.saveValue('0322', inttostr(cbPlanDetailView.ItemIndex));

     configvalue.saveValue('0323', inttostr(cbChartListOrder.ItemIndex));


     configvalue.saveValue('0329', inttostr(cbUseChartingModWindow.ItemIndex), '차팅수정시 수정창 이용');
     configvalue.saveValue('0330', inttostr(cbChartScrollSync.ItemIndex), '차팅 수직 스크롤바 sync ');



     configvalue.saveValue('0601', inttostr(cbArchKind.ItemIndex));

     configvalue.saveValue('0602', inttostr(cbCert.ItemIndex), '전자차트 공인인증서 사용');

     configvalue.saveValue('0603', inttostr(cbChartDelete.ItemIndex), '전자차트 삭제시 암호 사용');


     configvalue.saveValue('0604', inttostr(cbNextButtonColor.ItemIndex) + ',' + Colortostring(cbNextButtonColor.Colors.Items[cbNextButtonColor.ItemIndex].Color),
      'Next Button Color');
     configvalue.saveValue('0605', inttostr(cbNextButtonAlign.ItemIndex), 'Next Button Align');  //0 : left, 1:right, 2:center
     configvalue.saveValue('0606', edtNextButtonText.text , 'Next Button Caption');
     configvalue.saveValue('0607',  inttostr(cbUpperToothColor.ItemIndex) + ',' + Colortostring(cbUpperToothColor.Colors.Items[cbUpperToothColor.ItemIndex].Color),
      '치식도 색(상악)');
     configvalue.saveValue('0608',  inttostr(cbLowerToothColor.ItemIndex) + ',' + Colortostring(cbLowerToothColor.Colors.Items[cbLowerToothColor.ItemIndex].Color),
      '치식도 색(하악)');


     configvalue.saveValue('0138', inttostr(cbHygine.ItemIndex), '전자챠트창에 Hygine칸 보이기'); //2012.5.9
     configvalue.saveValue('0171', inttostr(cbDoctor.ItemIndex), '전자챠트창에 Doctor칸 보이기'); //2016.3.14

     showmessage('Charting 설정이 저장되었습니다.');
end;


procedure ToptionSet_f.SmsIDSave;
begin

     if EdtId.Text = '' then
     begin
          showmessage('아이디를 입력하세요');
          EdtId.setfocus;
          //result := false;
          exit;
     end;
     if EdtPass1.Text = '' then
     begin
          showmessage('패스워드를 입력하세요');
          EdtPass1.setfocus;
          //result := false;
          exit;
     end;
     if EdtPass2.Text = '' then
     begin
          showmessage('패스워드 확인을 입력하세요');
          EdtPass2.setfocus;
          // result := false;
          exit;
     end;

     if edtpass1.Text <> edtpass2.Text then
     begin
          showmessage('입력한 비밀번호는 같아야 합니다.');
          EdtPass1.setfocus;
          // result := false;
          Exit;
     end;
          configvalue.saveValue('0128', edtId.text); //0128 SMS로그인 아이디
          configvalue.saveValue('0129', edtpass1.text); //0129 SMS패스워드
     //     configvalue.saveValue('0134', edtSmsNo.text); //0134 SMS전화번호
          configvalue.saveValue('0135', inttostr(cbSmsCustKind.itemindex));
          //0135 SMS Cust Kind
          showmessage('SMS설정이 DB저장되었습니다.');

     if cbSmsSave.Checked then
     begin
          if websave = true then
          begin
               showmessage('SMS설정이 웹및 DB저장되었습니다.');

          end;

     end;


     configvalue.saveValue('0141', inttostr(cbSMSConvMin.itemindex),'SMS전송시 분단위 치환 30분미만 00 , 30분이상 30'); //0141 SMS전송시 분단위 치환 30분미만 00 , 30분이상 30

     configvalue.saveValue('0147', inttostr( cbSMSautosend.itemindex),'신환저장시 SMS자동전송');


     configvalue.saveValue('0370', inttostr( cbSMSChangesend.itemindex),'예약변경시 SMS자동전송');
     configvalue.saveValue('0371', memSMSChange.text,'예약변경시 SMS자동전송문구');
     configvalue.saveValue('0372', inttostr( cbSMSCancelsend.itemindex),'예약취소시 SMS자동전송');
     configvalue.saveValue('0373', memSMSCancel.text,'예약취소시 SMS자동전송문구');



     configvalue.saveValue('0256', memSMSNew.text,'소개자 전송용 SMS문구');
     configvalue.saveValue('0209', MemSms.text, '약속 sms전송문구');

     if cbSmsCustKind.itemindex = 0 then
          dm_f.smsCustCode := 'WW-NYA-BN'
     else
          dm_f.smsCustCode := 'OV-JJG-9R';

          {      case tabSms.TabIndex of
          0:
               begin
                    configvalue.saveValue('0206', inttostr(cbSMS.itemindex),
                         '약속 sms전송여부');
                    configvalue.saveValue('0207', edtBeforSMS.Text,
                         '약속 sms전송일자');
                    configvalue.saveValue('0208', cbBeforTime.Text + cbBeforMin.text
                         + '00', '약속 sms전송시간');
                    configvalue.saveValue('0209', MemSms.text, '약속 sms전송문구');
               end;
          1:
               begin
                    configvalue.saveValue('0216', inttostr(cbSMS.itemindex),
                         '리콜 sms전송여부');
                    configvalue.saveValue('0217', edtBeforSMS.Text,
                         '리콜 sms전송일자');
                    configvalue.saveValue('0218', cbBeforTime.Text + cbBeforMin.text
                         + '00', '리콜 sms전송시간');
                    configvalue.saveValue('0219', MemSms.text, '리콜 sms전송문구');
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

          configvalue.saveValue('0408', inttostr(cbImageDbSaveKind.itemindex), '타영상프로그램환자정보저장방법');
          configvalue.saveValue('0409', edtImageDBPath.text, '타영상 이미지DB경로 및 이름');
          configvalue.saveValue('0410', edtdbServerip.text, '덴트로DB서버 IP');
          configvalue.saveValue('0411', edtDbserverPort.text, '덴트로DB서버 PORT');

          configvalue.saveValue('0413', edtViewer.text, 'X-ray Viewer');
          configvalue.saveValue('0414', inttostr(cbViewKind.itemindex), 'X-ray Viewer Kind');

          configvalue.saveValue('0415', edtPath7.text);
          configvalue.saveValue('0416', edtDbName7.text);
          configvalue.saveValue('0417', edtUserName7.text);
          configvalue.saveValue('0418', edtpass7.text);

          configvalue.saveValue('0420', inttostr(cbimgUse.itemindex));

          configvalue.saveValue('0421', inttostr(cbHttp.itemindex));  //Http서버로 영상정보불러오기
          configvalue.saveValue('0422', edtHttp.text, '');

          if cbFaceFromDB.checked=true then
           configvalue.saveValue('0456', '1')   //얼굴사진을 DB에서 불러오기
          else
           configvalue.saveValue('0456', '0');


          configvalue.saveValue('0446', inttostr(cbUseOldImageView.itemindex));  //기존 영상뷰어 사용
         // varUseOldImageView

       //   configvalue.saveValue('0442', edtImageViewAppPath.text, '');
          configvalue.saveValue('0443', inttostr( cbImgViewOrder.ItemIndex), '');
          configvalue.saveValue('0444', inttostr(  cbShareFolder.ItemIndex), '');
          configvalue.saveValue('0445',   edtShareFolderPath.text , '');


          configvalue.saveValue('0447', inttostr( cbChartPathUse.ItemIndex) , '');
          configvalue.saveValue('0448', inttostr( cbHttpPathChange.ItemIndex) , ''); //Utf-8경로 방식을 바꿀것인가?
                                                                                          // %EA%B8%B0%EC%86%8C%ED%98%80 과 %EA%B8%B0%EC%86%8C 차이
          configvalue.saveValue('0449', inttostr( cbUseThumbnail.ItemIndex) , '0'); //썸네일로 불러오자....


          configvalue.saveValue('0451', inttostr( cbImageChartZeroExcept.ItemIndex) , '');  //보령바른이
                                                             //차트번호끝에 0들어간것.빼야 영상정보 검색된다.

          S := ScaleCombo.Text;
          S := StringReplace(S, '%', '', [rfReplaceAll]);
          S := StringReplace(S, ' ', '', [rfReplaceAll]);
          configvalue.saveValue('0412', s, '파노라마 초기 비율');

          ShowMessage('영상정보연동설정이 저장되었습니다.');
     except
          on E: Exception do
          begin

               ShowMessage('[영상정보연동설정 저장오류]' + E.Message);
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






          ShowMessage('파일서버정보설정이 저장되었습니다.');
     except
          on E: Exception do
          begin

               ShowMessage('[파일서버정보설정 저장오류]' + E.Message);
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

          ShowMessage('Backup정보설정이 저장되었습니다.');
     except
          on E: Exception do
          begin

               ShowMessage('[Backup정보설정 저장오류]' + E.Message);
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


     FormInit.WriteInteger('BASEINFO', 'LGUCIDKind', rgLguKind.ItemIndex); //0: 고급형(BAS) 1: IMS형(TAS)

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


          ShowMessage('CID설정이 저장되었습니다.');
     except
          on E: Exception do
          begin

               ShowMessage('[CID설정 저장오류]' + E.Message);
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

     FormInit.WriteString('기타정보', 'PRINTER_TYPE', edtRmode.text);
     FormInit.WriteString('기타정보', 'SRP_DRIVER',edtSrpDriver.text);
     FormInit.Free;


     if BlankCheck = true then
     begin

          try
               //  dm_f.ZConnection.StartTransaction;
               configvalue.saveValue('0101', edtHpname.text); //0101 회사명

               configvalue.saveValue('0191', edtHpEngName.text); //0191 회사명영문

               configvalue.saveValue('0102', edtname.text); //0102 대표자명
               configvalue.saveValue('0103', lblJumin.Caption); //0103 주민번호
               configvalue.saveValue('0104', edtSaupno.text); //0104 사업자번호
               configvalue.saveValue('0105', edtMyunhuNo.text); //0105 면허번호
               configvalue.saveValue('0106', edtJumpoCode.text); //0106 요양기관기호
               configvalue.saveValue('0107', edtZip1.text );//+ '-' + edtZip2.text);
               //0107 우편번호
               configvalue.saveValue('0108', edtAdd.text); //0108 기본주소
               configvalue.saveValue('0109', edtAdd2.text); //0109 확장주소

               configvalue.saveValue('0192', edtEngAdd.text); //0192 기본주소영문
               configvalue.saveValue('0193', edtEngAdd2.text); //0193 확장주소1 영문
               configvalue.saveValue('0194', edtEngAdd3.text); //0194 확장주소2 영문

               configvalue.saveValue('0110', edtTel1.text + '-' + edtTel2.text + '-' +
                    edtTel3.text); //0110 전화번호1
               configvalue.saveValue('0111', edtHp1.Text + '-' + edtHp2.Text + '-' +
                    edtHp3.Text); //0111 전화번호2
               configvalue.saveValue('0112', edtFax1.Text + '-' + edtFax2.Text + '-' +
                    edtFax3.Text); //0112 팩스번호1
               configvalue.saveValue('0113', ''); //0113 팩스번호2
               configvalue.saveValue('0114', edtmail.text); //0114 이메일
               configvalue.saveValue('0115', edtilsu.text); //0115 초재진산정일수
               configvalue.saveValue('0116', edtGubun.text); //0116 병의원 구분
               configvalue.saveValue('0117', edtsimJibu.text); //0117 심평원지부코드
               configvalue.saveValue('0118', edtDocNo.text); //0118 등록된 의사 수
               configvalue.saveValue('0119', edtChubang.text); //0119 처방전 사용기간

               configvalue.saveValue('0120', inttostr(edtprintsu.itemindex));
               //0120 처방전인쇄-약국용, 환자보관용
               configvalue.saveValue('0121', edtBunup.text); //0121 의약분업적용

               configvalue.saveValue('0343', inttostr(cbChubangDaepyo.itemindex), '처방전 대표원장이름으로 인쇄'); //0121 의약분업적용

               configvalue.saveValue('0122', edtDeheng.text); //0122 청구대행단체
               configvalue.saveValue('0123', edtRmode.text); //0123 영수증발급모드
               configvalue.saveValue('0124', edtChungname.text);
               //0124 보험청구 작성자명
               configvalue.saveValue('0125', edtChungjumin.text);
               //0125 보험청구 작성자주민번호
             //  configvalue.saveValue('0126', edtJagyukid.text); //0126 자격확인 아이디

               configvalue.saveValue('0127', edtjagyukPass.text);
               //0127 자격확인 패스워드

         //      configvalue.saveValue('0130', inttostr(edtChartrule.ItemIndex + 1));
               //0130 차트번호 규칙

         //      configvalue.saveValue('0131', edtChartNew.text);
               //0131 차트번호 새로시작번호

               configvalue.saveValue('0170', edtChungNO.text);   //청구인증번호


               //로컬프린터 사용시 영수증 발행 매수
               configvalue.saveValue('0174', inttostr( cbPrintingCnt.ItemIndex) , '로컬프린터 사용시 영수증 발행 매수');

             //  cbPrintingCnt
               ShowMessage('기본설정이 저장되었습니다.');
          except
               on E: Exception do
               begin
                    //        dm_f.ZConnection.Rollback;

                    ShowMessage('[기본설정저장오류]' + E.Message);
               end;

          end;

     end;
end;

function ToptionSet_f.blankCheck: boolean;
begin
     if EdtHpName.Text = '' then
     begin
          showmessage('병원명을 입력하세요');
          EdtHpName.setfocus;
          result := false;
          exit;
     end;
     if EdtName.Text = '' then
     begin
          showmessage('이름을 입력하세요');
          EdtName.setfocus;
          result := false;
          exit;
     end;
     if lblJumin.Caption = '' then
     begin
          showmessage('사원등록에서 대표원장 주민번호를 등록하세요');
          EdtName.setfocus;
          result := false;
          exit;
     end;
     if length(cbYear.Text) <> 4 then
     begin
          showmessage('생일의 연도를 입력하세요');
          cbYear.setfocus;
          result := false;
          exit;
     end;
     if cbMonth.text = '' then
     begin
          showmessage('생일의 월을 입력하세요');
          cbMonth.setfocus;
          result := false;
          exit;
     end;
     if cbDay.text = '' then
     begin
          showmessage('생일의 일자를 입력하세요');
          cbDay.setfocus;
          result := false;
          exit;
     end;
     if EdtTel1.Text = '' then
     begin
          showmessage('전화번호 지역번호를 입력하세요');
          EdtTel1.setfocus;
          result := false;
          exit;
     end;
     if EdtTel2.Text = '' then
     begin
          showmessage('전화번호 국번을 입력하세요');
          EdtTel2.setfocus;
          result := false;
          exit;
     end;
     if EdtTel3.Text = '' then
     begin
          showmessage('전화번호를 입력하세요');
          EdtTel3.setfocus;
          result := false;
          exit;
     end;
     if EdtHp1.Text = '' then
     begin
          showmessage('휴대폰 통신사 번호를 입력하세요');
          EdtHp1.setfocus;
          result := false;
          exit;
     end;
     if EdtHp2.Text = '' then
     begin
          showmessage('휴대폰 국번을 입력하세요');
          EdtHp2.setfocus;
          result := false;
          exit;
     end;
     if EdtHp3.Text = '' then
     begin
          showmessage('휴대폰 번호를 입력하세요');
          EdtHp3.setfocus;
          result := false;
          exit;
     end;
     if EdtMail.Text = '' then
     begin
          showmessage('이메일을 입력하세요');
          EdtMail.setfocus;
          result := false;
          exit;
     end;
     if EdtZip1.Text = '' then
     begin
          showmessage('우편번호를 입력하세요');
          EdtZip1.setfocus;
          result := false;
          exit;
     end;
//     if EdtZip2.Text = '' then
//     begin
//          showmessage('우편번호 뒷자리를 입력하세요');
//          EdtZip2.setfocus;
//          result := false;
//          exit;
//     end;
     if EdtAdd.Text = '' then
     begin
          showmessage('기본주소를 입력하세요');
          EdtAdd.setfocus;
          result := false;
          exit;
     end;
     if EdtAdd2.Text = '' then
     begin
          showmessage('상세주소를 입력하세요');
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
     caption := 'MEDIRO 환경설정';
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
     //모든 입력사항에는 공백을 허용하지 않는다.이거 찾는데 한나잘 걸렸다. 공백이 들어가면 400에러 나온다.
     // http://smscorp.surem.com/regist/regist_co_para.asp?deptcode=OV-JJG-9R&userid=gildata&username=하기현&hpno1=016&hpno2=645&hpno3=0965&jumin1=111111&jumin2=1111111&email=gildata@naver.com&zip1=123&zip2=456&haddress1=경기도&haddress2=석우리&pass=111122&url=http://smscorp.surem.com/client/test.asp
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

          //  VarUrl :='http://smscorp.surem.com/regist/regist_co_para.asp?deptcode=OV-JJG-9R&userid=hildata&username=하기현&'+
          // 'hpno1=016&hpno2=645&hpno3=0965&jumin1=111111&jumin2=1111111&email=gildata@naver.com&zip1=123&zip2=456&haddress1=경기도&haddress2=석우리&pass=111122&url=http://smscorp.surem.com/client/test.asp';
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
               ExceptLogging('[SMS정보등록 오류]' + E.Message);
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
  slPost.Add('student_info=박지훈');
  slPost.Add('reserve_purpose=임프');
  StringStream := TStringStream.Create(slPost.Text);
  slPost.Free;



  MemoryStream := TMemoryStream.Create;

  HTTP.Request.ContentType := 'application/x-www-form-urlencoded';

  HTTP.Post('http://주소', StringStream, MemoryStream);

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
     //회사명하고 회사코드는 ini에도 저장한다.

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'COMPCODE', edtJumpoCode.Text);
     FormInit.WriteString('BASEINFO', 'COMPNAME', edtHpname.text);
     FormInit.WriteString('LOGIN', 'SMS', inttostr(cbSMSlogin.itemindex));


     FormInit.WriteString('SMS', 'SMSSENDNO', edtSmsno.Text );


     FormInit.WriteString('ETC', 'CERTPOSITION',
          inttostr(edtJagyukid.itemindex));
     FormInit.Free;
     //showmessage('저장되었습니다.');
end;

function ToptionSet_f.ErrorCheck: string;
const
     E404 = 'err404';
     E500 = 'err500';
     E600 = 'err600';
     E000 = 'err000';

     {
     err404 : 이미 존재하는 아이디
     err500 : 업체코드가 유효하지 않을경우 , 핸드폰번호가 011, 016, 017, 018, 019가 아닐 경우
     err600 : 기타오류, 위의 파라메터중 하나라도 없을때
     err000 : 정상 등록
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
                    Showmessage('이미 사용중인 아이디입니다.');
                    edtId.Setfocus;
                    result := '404';
               end;
          500:
               begin
                    Showmessage('핸드폰번호는 010, 011, 016, 017, 018, 019으로 시작해야합니다.');
                    edthp1.SetFocus;
                    result := '500';
               end;
          600:
               begin
                    Showmessage('모든 사항에 대해서 입력하셔야합니다.');
                    result := '600';
               end;
          000:
               begin
                    Showmessage('감사합니다. 정상적으로 등록 되었습니다.');
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
               //아이디저장 또는 업데이트
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

               //패스워드저장 또는 업데이트
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
               //회사명저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '12'; //회사명
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '12'; //회사명
                    ParamByName('SLCOMMENT').AsString := EdtHpName.Text;
                    ExecSQL;
               end;

               //사장명저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '13'; //사장명
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '13'; //사장명
                    ParamByName('SLCOMMENT').AsString := Edtname.Text;
                    ExecSQL;
               end;
               //전화번호저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '14'; //전화번호
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '14'; //전화번호
                    ParamByName('SLCOMMENT').AsString := EdtTel1.Text +
                         '-' +
                         EdtTel2.Text + '-' + EdtTel3.Text;
                    ExecSQL;
               end;
               //우편번호저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '15'; //우편번호
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '15'; //우편번호
                    ParamByName('SLCOMMENT').AsString := EdtZip1.Text +
                         '-' +
                         EdtZip2.Text;
                    ExecSQL;
               end;
               //주소1 저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '16'; //주소1
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '16'; //주소1
                    ParamByName('SLCOMMENT').AsString := EdtAdd.Text;
                    ExecSQL;
               end;
               //주소2 저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '17'; //주소2
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '17'; //주소2
                    ParamByName('SLCOMMENT').AsString := EdtAdd2.Text;
                    ExecSQL;
               end;
               //Email 저장 또는 업데이트
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
               //Jumin No 저장 또는 업데이트
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
               //HP No 저장 또는 업데이트
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
               //점포코드  저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '01'; //점포코드
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '01'; //점포코드
                    ParamByName('SLCOMMENT').AsString :=
                         edtJumpoCode.Text;
                    ExecSQL;
               end;
               //사업자번호  저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '02'; //사업자번호
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '02'; //사업자번호
                    ParamByName('SLCOMMENT').AsString := EdtSaupNo.Text;
                    ExecSQL;
               end;

               //업종 저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '03'; //업종
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '03'; //업종
                    ParamByName('SLCOMMENT').AsString := EdtUpJong.Text;
                    ExecSQL;
               end;

               //업태  저장 또는 업데이트
               with Dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from ma_config');
                    Sql.Add('Where code=:code');
                    ParamByName('code').AsString := '04'; //업태
                    open;
               end;
               with Dm_f.SqlWork do
               begin
                    if Dm_f.SqlTemp.isEmpty then
                         SQL.Text := SQL_INSERT_DATA
                    else
                         SQL.Text := SQL_Update_DATA;
                    ParamByName('code').AsString := '04'; //업태
                    ParamByName('SLCOMMENT').AsString := EdtUptae.Text;
                    ExecSQL;
               end;

               //팩스  저장 또는 업데이트
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

               //showmessage('저장되었습니다.');

               //  iniSave;
          except

               on E: Exception do
               begin
                    ShowMessage('[병원정보저장 오류]' + E.Message);
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

     //rgchartrul.ItemIndex := strtoint(FormInit.ReadString('기타정보',
     //       '챠트번호규칙', '0')) - 1;
     edtRmode.text := FormInit.ReadString('기타정보', 'PRINTER_TYPE', '로컬프린터');
     edtSrpDriver.text:= FormInit.ReadString('기타정보', 'SRP_DRIVER', 'SAMSUNG SRP-770');



     edtSignFilePath1.text:= configValue.signfilePath1;// FormInit.ReadString('printinfo', 'SignFilePath1','');     //'병원용 인장 파일 저장경로'
     edtSignFilePath2.text:= configValue.signfilePath2;// FormInit.ReadString('printinfo', 'SignFilePath2', '');     //'대표원장 인장 파일 저장경로


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


     cbPrintingCnt.itemindex :=  configvalue.varPrintingCnt; //0:2매,1 :1매

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







     //외부프로그램 설정 호출
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
          caption.Title := '예약관리 <b>설정</b>';
     end;

     //점심시간설정--------------------------------------------------------------
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
           cbChartSignKind.ItemIndex := 0;  //0:없음 1:KIS  2:Tablet



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
          cbUseChartingModWindow.ItemIndex := 0;  //안보기

     if configvalue.varChartScrollSync <> '' then
          cbChartScrollSync.ItemIndex := strtoint(configvalue.varChartScrollSync)
     else
          cbChartScrollSync.ItemIndex := 0;  //안보기






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
          edtNextButtonText.text := '※Next: ';

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
                    //예약 SMS자동전송 정보 불러오기
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
                    //SMS리콜 정보 불러오기
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
          cbUseOldImageView.Itemindex := 0;  //기본
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
               cbServerUse.Itemindex := 0;   //Http로 사용하면 0, cbServerUse=아니오

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
         edtViewer.text := configvalue.varXrayViewer;   //ini에서 읽어온것
    end
    else
    begin
         cbViewindi.Checked := false;
         edtViewer.text := configvalue.varViewer;      //DB에서 읽어온것
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
               0:   //기본설정
                    begin
                         BasicSave;
                         iniSave;

                    end;
               1:   //예약설정
                    promiseSave;
               2:   //차트번호설정
                    chartSetSave;

               3:   //기타설정
                    PathSave;
               4:   //SMS전송설정
                    SmsIDSave;
               5:   //영상정보연동
                    anotherDbinfoSave;
               6:   //CID서버 연결설정
                    CidinfoSave;
               7:   //보조장치설정
                    EtcEquipSave;
               8:   //대기표 설정
                    DaegiTableSave;
               9:   //PassWord
                    PassSave;
               10:  //Charting설정
                    ChartInfoSave;
               11:  //Backup설정
                    begin
                       BackupDbinfoSave;
                  //     Db2infoSave;
                    end;
               12:   //파일서버 설정
                    FileserverInfoSave;
               13:   //인쇄설정
                    PrintInfoSave;
               14: //외부프로그램설정
                    anotherPGSave;
               15: //청구수납 설정
                    JinryoButtonLengthSave;
               16: //수납 설정
                    sunapInfoSave;
               17: //동의서 설정
                    agreeInfoSave;
               18: //Link Save
                     LinkInfoSave;
          end;
     except
          showmessage('저장에 실패했습니다.');

     end;

end;

procedure ToptionSet_f.agreeInfoSave;
begin

     configvalue.saveValue('0610', edtPersonalinfoPath.text, '개인정보활용동의서');
     configvalue.saveValue('0611', edtOrthoagree1Path.text, '교정동의서1');
     configvalue.saveValue('0612', edtOrthoagree2Path.text, '교정동의서2');
     configvalue.saveValue('0613', edtTreatFeePath.text, '진료비내역서');

     showmessage('동의서 설정이 저장되었습니다.');
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

     configvalue.saveValue('0609', inttostr(cbSunapComment.ItemIndex), '수납참고사항과 DailyComment 연동');
     configvalue.saveValue('0614', inttostr(cbSunapRemarkCardView.ItemIndex), '수납내역 참고사항에서 카드및 카드금액 보기');
     configvalue.saveValue('0366', inttostr(cbIbwon.ItemIndex), '수납시 입원 정보 인쇄 보기');
     configvalue.saveValue('0367', inttostr(cbBunnapInputUse.ItemIndex), '수납시 입원 정보 인쇄 보기');
     configvalue.saveValue('0368', inttostr(cbHideTot.ItemIndex), '싸인창에서 총금액 감추기');





     showmessage('수납 설정이 저장되었습니다.');
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
          FormInit.WriteString('기타정보', '챠트번호규칙',
               inttostr(rgchartrul.ItemIndex + 1));

          configvalue.saveValue('0130', inttostr(rgchartrul.ItemIndex + 1));
          //0130 차트번호 규칙

          configvalue.saveValue('0131', edtSno.text);
          //0131 차트번호 새로시작번호

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
   //  FormInit.WriteString('기타정보', 'Chair', IntToStr(RadioGroup6.Itemindex));

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

          showmessage('차트번호 설정이 저장되었습니다.');
     except
          on E: Exception do
          begin
               //dbMain.Rollback;
               ShowMessage(E.Message + ' [차트번호설정 저장오류]');
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
               showMessage('사원등록에서 대표원장의 주민번호를 등록하세요.');
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
          showmessage('사업자번호 형식이 맞지 않습니다.');
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
                //showmessage('저장되었습니다.');
         except
                showmessage('저장에 실패했습니다.');

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
     cbChartTab.items.add('전체');

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
          showmessage('적용하시려면 [새로시작하는번호] 체크후 진행하세요.');
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

     bRet := SelectDirectory('데이터 베이스 경로를 선택하십시오.', strRoot,
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
          ShowMessage('로그인에 필요한 정보가 충분치 않습니다.');
          Exit;
     end;

     nLoginResult := ktcid_f.ctrlKTOpenAPI.Login(ktcid_f.varCIDServerKInd,
          ktcid_f.varauthKey,
          edtCidId.Text,
          edtCidPass.Text);

     case nLoginResult of
          200:
               begin
                    textConnectState.Text := '접속 요청 성공';
               end;
          301:
               begin
                    textConnectState.Text := '다른 위치에서 로그인 중';
                    ktcid_f.bAlreayLogined := true;
               end;
          401:
               begin
                    textConnectState.Text :=
                         '미등록 아이디로 로그인 요청';
               end;
          402:
               begin
                    textConnectState.Text :=
                         '비밀번호 오류 횟수 초과(5회)';
               end;
          405:
               begin
                    textConnectState.Text := '비밀번호 오류';
               end;
          407:
               begin
                    textConnectState.Text := '접속 IP 오류';
               end;
          408:
               begin
                    textConnectState.Text := '미등록 PC';
               end;
          500:
               begin
                    textConnectState.Text :=
                         '기타(HTTPS/HTTP 요청 실패';
               end;
          1000:
               begin
                    textConnectState.Text := '이미 로그인 중';
               end;
          1001:
               begin
                    textConnectState.Text := '서버 타입 에러';
               end;
          1502:
               begin
                    textConnectState.Text := '협정 만료일이 지났음';
               end;
          1503:
               begin
                    textConnectState.Text := '인증키 유효기간이 지났음';
               end;
          1504:
               begin
                    textConnectState.Text := '인증키 비활성';
               end;
          1505:
               begin
                    textConnectState.Text := '인증키 타입이 틀림';
               end;
          1506:
               begin
                    textConnectState.Text :=
                         '개발 서버이나 상용 인증키, 상용 Flag일 경우';
               end;
          1507:
               begin
                    textConnectState.Text :=
                         '상용 서버이나 개발 인증키, 개발 Flag일 경우';
               end;
          1700:
               begin
                    textConnectState.Text :=
                         'API 환경 정보 얻지 못함(실행되는 경로)';
               end;
          1701:
               begin
                    textConnectState.Text :=
                         'KTA_API.dat / KTD_API.dat 등의 data 파일 초기화 에러(파일이 존재해야 함)';
               end;
          1702:
               begin
                    textConnectState.Text :=
                         'PC 메모리 부족(API 생성 에러)';
               end;
          0:
     else
          begin
               textConnectState.Text := '기타 요청 실패';
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

     {  if BtnSp.Caption = '▼  특수문자' then
         BtnSp.Caption := '▲  특수문자'
       else
         BtnSp.Caption := '▼  특수문자';
     }
     ImoPanel.Visible := not ImoPanel.Visible;

     GrdImo.Cells[0, 0]:= '＃';
     GrdImo.Cells[1, 0]:= '＆';
     GrdImo.Cells[2, 0]:= '＊';
     GrdImo.Cells[3, 0]:= '＠';
     GrdImo.Cells[4, 0]:= '☆';
     GrdImo.Cells[5, 0]:= '※';

     GrdImo.Cells[0, 1]:= '＋';
     GrdImo.Cells[1, 1]:= '－';
     GrdImo.Cells[2, 1]:= '＝';
     GrdImo.Cells[3, 1]:= '♀';
     GrdImo.Cells[4, 1]:= '♂';
     GrdImo.Cells[5, 1]:= '∧';

     GrdImo.Cells[0, 2]:= '＜';
     GrdImo.Cells[1, 2]:= '＞';
     GrdImo.Cells[2, 2]:= '！';
     GrdImo.Cells[3, 2]:= '．';
     GrdImo.Cells[4, 2]:= '／';
     GrdImo.Cells[5, 2]:= '：';

     GrdImo.Cells[0, 3]:= '？';
     GrdImo.Cells[1, 3]:= '＾';
     GrdImo.Cells[2, 3]:= '（';
     GrdImo.Cells[3, 3]:= '）';
     GrdImo.Cells[4, 3]:= '①';
     GrdImo.Cells[5, 3]:= '②';

     GrdImo.Cells[0, 4]:= '％';
     GrdImo.Cells[1, 4]:= '＄';
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
                         '약속 sms전송여부');
                    configvalue.saveValue('0207', edtBeforSMS.Text,
                         '약속 sms전송일자');
                    configvalue.saveValue('0208', cbBeforTime.Text + cbBeforMin.text
                         + '00', '약속 sms전송시간');
                    configvalue.saveValue('0209', MemSms.text, '약속 sms전송문구');
                    configvalue.saveValue('0210', inttostr(cbCheck.itemindex),
                         '약속 sms전송전 확인');
               end;
          0:
               begin
                    configvalue.saveValue('0216', inttostr(cbSMS.itemindex),
                         '리콜 sms전송여부');
                    configvalue.saveValue('0217', edtBeforSMS.Text,
                         '리콜 sms전송일자');
                    configvalue.saveValue('0218', cbBeforTime.Text + cbBeforMin.text
                         + '00', '리콜 sms전송시간');
                    configvalue.saveValue('0219', MemSms.text, '리콜 sms전송문구');
                    configvalue.saveValue('0220', inttostr(cbCheck.itemindex),
                         '리콜 sms전송전 확인');
               end;
     end;

     configvalue.LoadGlobalData_db;

     case tabsms.TabIndex of
          0:
               begin
                    //예약 SMS자동전송 정보 불러오기
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
                    //SMS리콜 정보 불러오기
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
     showmessage('저장되었습니다.');
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
          inttostr(cbDentalHelperReception.itemindex)) ;   //덴탈헬퍼 접수리스트 자동 불러오기


     FormInit.Free;

     configvalue.saveValue('0307', inttostr(cbDaegiOrder.ItemIndex));
     configvalue.saveValue('0137', inttostr(cbDaegiColor.ItemIndex), '진료대기아이콘대신 팀색표시'); //2012.5.1
     configvalue.saveValue('0342', inttostr(cbDaegiTeamSave.ItemIndex), '접수할때 팀을 환자의 기본팀으로 저장할지 여부');

     configvalue.saveValue('0344', inttostr(cbTeamColorDisp.ItemIndex), '환자성명에 팀 색상 표시 여부');

     configvalue.saveValue('0321', inttostr(cbEasydentDaegi.ItemIndex), '이지덴트 대기표 연동');

     configvalue.saveValue('0349', inttostr(cbDaegiSound.ItemIndex), '대기 사운드 활성화');

     configvalue.saveValue('0351', inttostr(cbSunapFinish.ItemIndex), '수납시 다중 예약자 동시 수납완료처리');


     configvalue.saveValue('0352', inttostr(cbDaegiTimerUse.ItemIndex), '대기표 타이머 사용');

     configvalue.saveValue('0353', inttostr(cbDaegiSocketUse.ItemIndex), '대기표 소켓통신 사용');

     configvalue.saveValue('0354', inttostr(cbDaegiGubunView.ItemIndex), '대기표 환자구분 보기');


     configvalue.saveValue('0355', inttostr(cbChartCopyWithChartChange.ItemIndex), '환자복사시 기존차트번호 변경');


     configvalue.saveValue('0356', inttostr(cbChartCopyWithSunap.ItemIndex), '환자복사시 수납복사');

     configvalue.saveValue('0359', inttostr(cbChartCopyWithPromise.ItemIndex), '환자복사시 예약복사');

     configvalue.saveValue('0361', inttostr(cbChartCopyWitheChart.ItemIndex), '환자복사시 차트복사');



     configvalue.saveValue('0360',  edtCopyPromiseParam.text, '예약복사시 특정 술식');



     configvalue.saveValue('0357', inttostr(cbChartCopyUse.ItemIndex), '환자등록에서 환자복사버튼보기');

     configvalue.saveValue('0358', inttostr(cbEasyChartChangeView.ItemIndex), '이지덴트 차트변경 버튼보기');




     showmessage('대기표설정이 저장되었습니다.');
end;

procedure ToptionSet_f.PassSave;
var
     s, path: string;
     FormInit: Tinifile;

begin
     //'0311'  configvalue.saveValue('0311', '1', 'CC치식보이기');
     configvalue.saveValue('0312', edtpassSunap.text);
     configvalue.saveValue('0313', edtPassDayJumgum.text);
     configvalue.saveValue('0314', edtPassDayMagam.text);
     configvalue.saveValue('0315', edtPassMonthMagam.text);
     configvalue.saveValue('0316', edtPassYearMagam.text);
     configvalue.saveValue('0317', edtPassSunapKind.text);
     configvalue.saveValue('0318', edtPassMisu.text);

                             //    '0319'//스캔뷰 사용중  scanView
                             //    '0320'//Teeth뷰 사용중  TeethView
                             //    '0321'//이지덴트 대기표연동  사용중 EasydentDaegi 연동
                             //    '0322'//PlanDetailView  사용중
                             //    '0323'//ChartListOrder  사용중
     configvalue.saveValue('0324', edtPassLock.text);
     configvalue.saveValue('0325', edtPassChartDelete.text);
     configvalue.saveValue('0326', edtpassSunapUpdate.text);
     configvalue.saveValue('0327', edtpassMagamUpdate.text);
     configvalue.saveValue('0328', edtPassAccountFinal.text);



     showmessage('Password 설정이 저장되었습니다.');
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
0:로컬프린터
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
      EllipsLabel83.Caption :='경로/VTEzBridge.exe '
              +#10#13+ '컴퓨터속성-환경변수 - 변수 Path 추가 '
              +#10#13+ 'C:\Program Files (x86)\postgresql\0902\bin'
              +#10#13+ 'C:\Program Files (x86)\postgresql\0902\lib'
              ;
    else
      EllipsLabel83.Caption :='타 영상뷰어 경로설정';
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
//    If (nResult <> Integer(SUCCESS)) then showmessage('로그인 요청 실패 : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//         showmessage('로그인 성공');
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
// //   if (nResult <> Integer(0))then frmMain.Log('>>>> API 초기화 실패 : Err[' + StrFCause(nResult) + ']');
//   if (nResult <> Integer(0))then showmessage('API 초기화 실패 : Err[' + StrFCause(nResult) + ']')
//   else
//   begin
//      showmessage('API 초기화 성공');
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
//    If (nResult = Integer(SUCCESS)) then showmessage('로그아웃 성공')
//    else showmessage('로그아웃 실패 : Err[' + StrFCause(nResult) + ']');


end;

procedure ToptionSet_f.btnSktCidSmsCertReqClick(Sender: TObject);
var
    nResult : Integer;
begin
//   // frmMain.Log('<API> IMS_AuthSms(''' + edtNewTelNum.Text + ''');');
//
//    nResult := IMS_AuthSms(edtSktTelNo.text);
//
//    If (nResult <> Integer(SUCCESS)) then showmessage('SMS인증번호 요청 실패 : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//        showmessage(edtSktTelNo.text + '로 SMS인증번호 발송 성공');
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
//        showmessage('비밀번호 변경 요청 실패 : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//        showmessage('비밀번호 변경 성공');
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
//       showmessage('사용자 등록 요청 실패 : Err[' + StrFCause(nResult) + ']')
//    else
//    begin
//        showmessage('사용자 등록 요청 성공');
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
//              //Dll등록
//        //        kticid_f.KTiCidDllStart(configvalue.varKtiTelNo);
//              //로그인
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
//              //Dll등록
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
//                            ShowMessage('로그인에 필요한 정보가 충분치 않습니다.');
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
//                                  ShowMessage('로그인완료'
//                                  +#10#13+configvalue.varLGUplusTASID
//                                  +#10#13+ configvalue.varLGUplusTASPass
//                                  +#10#13+StrVal);
//
//                  { open api 로그인 서버 로그인 결과
//                          STATUS : 로그인 성공여부 0보다크면 성공
//                               /   -1 : 로그인 실패(계정없음)
//                               /    -2:로그인 실패(비밀번호 오류)
//                               /  기타: 로그인 실패(에러메시지 찍어볼것)
//                          EXTEN : 내선번호 EXTEN:1B450200 -> 200
//                          CALLERID : 발신자번호
//                          MSG : 메세지
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
//                            ShowMessage('로그인에 필요한 정보가 충분치 않습니다.');
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
//                                  ShowMessage('로그인완료'
//                                  +#10#13+configvalue.varLGUplusTASID
//                                  +#10#13+ configvalue.varLGUplusTASPass
//                                  +#10#13+StrVal);
//
//                  { open api 로그인 서버 로그인 결과
//                          STATUS : 로그인 성공여부 0보다크면 성공
//                               /   -1 : 로그인 실패(계정없음)
//                               /    -2:로그인 실패(비밀번호 오류)
//                               /  기타: 로그인 실패(에러메시지 찍어볼것)
//                          EXTEN : 내선번호 EXTEN:1B450200 -> 200
//                          CALLERID : 발신자번호
//                          MSG : 메세지
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

