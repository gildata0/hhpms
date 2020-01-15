unit wonwe;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons,
     Spin, ComCtrls,  ShellApi,  Menus, Math,
     iniFiles, Printers,
     frxClass, HiraDur_TLB,
     uDur, SQLiteTable3, ComObj, DateUtils, Grids, AdvObj, BaseGrid,
     AdvGrid, Mask,  AdvGlowButton, AdvUtil, AdvCombo, ColCombo;

type
     Twonwe_f = class(TForm)
          Panel1: TPanel;
          RadioButton1: TRadioButton;
          RadioButton2: TRadioButton;
          RadioButton3: TRadioButton;
          RadioButton4: TRadioButton;
          RadioButton5: TRadioButton;
          Label1: TLabel;
          Label2: TLabel;
          Shape1: TShape;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          BitBtn1: TBitBtn;
          Memo1: TMemo;
          BitBtn2: TBitBtn;
          Memo2: TMemo;
          Label6: TLabel;
          Label7: TLabel;
          Label9: TLabel;
          CheckBox1: TCheckBox;
          Label10: TLabel;
          Label11: TLabel;
          Label12: TLabel;
          Panel2: TPanel;
          RadioButton6: TRadioButton;
          RadioButton7: TRadioButton;
          Edit1: TEdit;
          CheckBox2: TCheckBox;
          CheckBox3: TCheckBox;
          Shape2: TShape;
          Label8: TLabel;
          SpinEdit1: TSpinEdit;
          ListBox1: TListBox;
    edtMyunhu: TEdit;
    cbNewOrder: TCheckBox;
          Edit3: TEdit;
          Edit4: TEdit;
          Edit5: TEdit;
          BitBtn3: TBitBtn;
          BitBtn4: TBitBtn;
          ScrollBox1: TScrollBox;
          todayNos: TListBox;
          Label13: TLabel;
          cboPrscClCd: TComboBox;
          pnlDurJumgum: TPanel;
          rbtCheck: TRadioButton;
          rbtModify: TRadioButton;
          cboPatPrntWmnYn: TComboBox;
          lblimbu: TLabel;
          frxReport: TfrxReport;
          Label14: TLabel;
          SangMenu: TPopupMenu;
          AF1: TMenuItem;
          K0202: TMenuItem;
          K0201: TMenuItem;
          K0231: TMenuItem;
          Endo1: TMenuItem;
          K0401: TMenuItem;
          K0411: TMenuItem;
          K0421: TMenuItem;
          K0414: TMenuItem;
          K0423: TMenuItem;
          K0431: TMenuItem;
          K0441: TMenuItem;
          K0452: TMenuItem;
          K0472: TMenuItem;
          K0222: TMenuItem;
          N79: TMenuItem;
          K04601: TMenuItem;
          K04611: TMenuItem;
          K04621: TMenuItem;
          K04631: TMenuItem;
          K04691: TMenuItem;
          S0251: TMenuItem;
          S025202: TMenuItem;
          S025302: TMenuItem;
          S025402: TMenuItem;
          S025502: TMenuItem;
          S025602: TMenuItem;
          S025702: TMenuItem;
          S025902: TMenuItem;
          N68: TMenuItem;
          N69: TMenuItem;
          K05301: TMenuItem;
          K05311: TMenuItem;
          K05321: TMenuItem;
          K05381: TMenuItem;
          K05391: TMenuItem;
          N70: TMenuItem;
          K04802: TMenuItem;
          K04812: TMenuItem;
          K04822: TMenuItem;
          K04892: TMenuItem;
          N71: TMenuItem;
          K00601: TMenuItem;
          K00611: TMenuItem;
          K00621: TMenuItem;
          K00631: TMenuItem;
          K00641: TMenuItem;
          K00651: TMenuItem;
          K00681: TMenuItem;
          K00692: TMenuItem;
          N72: TMenuItem;
          K01102: TMenuItem;
          K01122: TMenuItem;
          K01142: TMenuItem;
          K0116112: TMenuItem;
          K0116222: TMenuItem;
          K0116332: TMenuItem;
          K011692: TMenuItem;
          K01112: TMenuItem;
          K01132: TMenuItem;
          K01152: TMenuItem;
          K0117112: TMenuItem;
          K0117222: TMenuItem;
          K0117332: TMenuItem;
          K011792: TMenuItem;
          K01182: TMenuItem;
          K01192: TMenuItem;
          N73: TMenuItem;
          K00102: TMenuItem;
          K00112: TMenuItem;
          K00122: TMenuItem;
          K00192: TMenuItem;
          N74: TMenuItem;
          K00401: TMenuItem;
          K00411: TMenuItem;
          K00421: TMenuItem;
          K00431: TMenuItem;
          K00441: TMenuItem;
          K00452: TMenuItem;
          K00462: TMenuItem;
          K00482: TMenuItem;
          K00492: TMenuItem;
          N75: TMenuItem;
          K00202: TMenuItem;
          K00212: TMenuItem;
          K00222: TMenuItem;
          K00232: TMenuItem;
          K00242: TMenuItem;
          K00252: TMenuItem;
          K00262: TMenuItem;
          K00272: TMenuItem;
          K00282: TMenuItem;
          N76: TMenuItem;
          S03201: TMenuItem;
          S03211: TMenuItem;
          S03222: TMenuItem;
          S03292: TMenuItem;
          N77: TMenuItem;
          S025201: TMenuItem;
          S025301: TMenuItem;
          S025401: TMenuItem;
          S025501: TMenuItem;
          S025601: TMenuItem;
          S025701: TMenuItem;
          S025901: TMenuItem;
          K0833: TMenuItem;
          K0415: TMenuItem;
          K0471: TMenuItem;
          K0234: TMenuItem;
          K1022: TMenuItem;
          K0243: TMenuItem;
          K0351: TMenuItem;
          omy1: TMenuItem;
          K04001: TMenuItem;
          K04011: TMenuItem;
          K04091: TMenuItem;
          K0221: TMenuItem;
          N80: TMenuItem;
          K0474: TMenuItem;
          K1024: TMenuItem;
          K1131: TMenuItem;
          N81: TMenuItem;
          K05202: TMenuItem;
          K05212: TMenuItem;
          K05222: TMenuItem;
          K05282: TMenuItem;
          K05292: TMenuItem;
          N82: TMenuItem;
          N83: TMenuItem;
          K03001: TMenuItem;
          K03011: TMenuItem;
          K03081: TMenuItem;
          K03091: TMenuItem;
          K0314: TMenuItem;
          K03101: TMenuItem;
          K03111: TMenuItem;
          K03121: TMenuItem;
          K03131: TMenuItem;
          K03181: TMenuItem;
          K03191: TMenuItem;
          K0324: TMenuItem;
          K03201: TMenuItem;
          K03211: TMenuItem;
          K03221: TMenuItem;
          K03231: TMenuItem;
          K03241: TMenuItem;
          K03281: TMenuItem;
          K03291: TMenuItem;
          N84: TMenuItem;
          K03801: TMenuItem;
          K03812: TMenuItem;
          K03882: TMenuItem;
          N85: TMenuItem;
          K0204: TMenuItem;
          K0211: TMenuItem;
          N86: TMenuItem;
          K0536: TMenuItem;
          K05302: TMenuItem;
          K05312: TMenuItem;
          K05322: TMenuItem;
          K05382: TMenuItem;
          K05392: TMenuItem;
          K0611: TMenuItem;
          K06102: TMenuItem;
          K06182: TMenuItem;
          K06192: TMenuItem;
          N87: TMenuItem;
          K0512: TMenuItem;
          K05101: TMenuItem;
          K05112: TMenuItem;
          K05122: TMenuItem;
          K05132: TMenuItem;
          K05182: TMenuItem;
          K05192: TMenuItem;
          K0537: TMenuItem;
          K05304: TMenuItem;
          K05314: TMenuItem;
          K05324: TMenuItem;
          K05384: TMenuItem;
          K05394: TMenuItem;
          K0553: TMenuItem;
          K0544: TMenuItem;
          K0362: TMenuItem;
          N54: TMenuItem;
          K0024: TMenuItem;
          K00201: TMenuItem;
          K00211: TMenuItem;
          K00221: TMenuItem;
          K00231: TMenuItem;
          K00241: TMenuItem;
          K00251: TMenuItem;
          K00261: TMenuItem;
          K00271: TMenuItem;
          K00281: TMenuItem;
          N55: TMenuItem;
          K07201: TMenuItem;
          K07211: TMenuItem;
          K07221: TMenuItem;
          K07231: TMenuItem;
          K07241: TMenuItem;
          K07251: TMenuItem;
          K07261: TMenuItem;
          K07271: TMenuItem;
          K07281: TMenuItem;
          K07291: TMenuItem;
          N56: TMenuItem;
          K07301: TMenuItem;
          K07311: TMenuItem;
          K07321: TMenuItem;
          K07331: TMenuItem;
          K07341: TMenuItem;
          K07351: TMenuItem;
          K07381: TMenuItem;
          K07391: TMenuItem;
          N60: TMenuItem;
          K07601: TMenuItem;
          K07611: TMenuItem;
          K07621: TMenuItem;
          K07631: TMenuItem;
          K07641: TMenuItem;
          K07651: TMenuItem;
          K07661: TMenuItem;
          K07681: TMenuItem;
          K07691: TMenuItem;
          N58: TMenuItem;
          T8561: TMenuItem;
          Z4641: TMenuItem;
          Z4631: TMenuItem;
          Z2981: TMenuItem;
          N78: TMenuItem;
          N6: TMenuItem;
          K0533: TMenuItem;
          K00001: TMenuItem;
          K00012: TMenuItem;
          K00092: TMenuItem;
          N50: TMenuItem;
          K00103: TMenuItem;
          K00113: TMenuItem;
          K00123: TMenuItem;
          K00193: TMenuItem;
          N51: TMenuItem;
          K00203: TMenuItem;
          K00213: TMenuItem;
          K00223: TMenuItem;
          K00233: TMenuItem;
          K00243: TMenuItem;
          K00253: TMenuItem;
          K00263: TMenuItem;
          K00273: TMenuItem;
          K00283: TMenuItem;
          K00291: TMenuItem;
          N52: TMenuItem;
          K00301: TMenuItem;
          K00311: TMenuItem;
          K00391: TMenuItem;
          K0044: TMenuItem;
          K0511: TMenuItem;
          K0552: TMenuItem;
          K0534: TMenuItem;
          K0541: TMenuItem;
          K0361: TMenuItem;
          K00451: TMenuItem;
          K00461: TMenuItem;
          K00481: TMenuItem;
          K00491: TMenuItem;
          K0052: TMenuItem;
          K00501: TMenuItem;
          K00511: TMenuItem;
          K00521: TMenuItem;
          K00581: TMenuItem;
          K00591: TMenuItem;
          K0063: TMenuItem;
          K0021: TMenuItem;
          K0535: TMenuItem;
          K0721: TMenuItem;
          K0731: TMenuItem;
          K0761: TMenuItem;
          S02505: TMenuItem;
          S02515: TMenuItem;
          K00691: TMenuItem;
          K0072: TMenuItem;
          N53: TMenuItem;
          K00801: TMenuItem;
          K00811: TMenuItem;
          K00821: TMenuItem;
          K00831: TMenuItem;
          K00881: TMenuItem;
          K0091: TMenuItem;
          N61: TMenuItem;
          K0101: TMenuItem;
          K01101: TMenuItem;
          K01121: TMenuItem;
          K01141: TMenuItem;
          K0116111: TMenuItem;
          K0116221: TMenuItem;
          K0116331: TMenuItem;
          K011691: TMenuItem;
          K01111: TMenuItem;
          K01131: TMenuItem;
          K01151: TMenuItem;
          K0117111: TMenuItem;
          K0117221: TMenuItem;
          K0117331: TMenuItem;
          K011791: TMenuItem;
          K01181: TMenuItem;
          K01191: TMenuItem;
          N123451627381: TMenuItem;
          N1627381: TMenuItem;
          K021: TMenuItem;
          K0205: TMenuItem;
          K0214: TMenuItem;
          K0223: TMenuItem;
          K0233: TMenuItem;
          K0244: TMenuItem;
          K0283: TMenuItem;
          K0293: TMenuItem;
          N9: TMenuItem;
          K0225: TMenuItem;
          K03002: TMenuItem;
          K03012: TMenuItem;
          K0561: TMenuItem;
          K0881: TMenuItem;
          K0012: TMenuItem;
          K0022: TMenuItem;
          K0302: TMenuItem;
          K0312: TMenuItem;
          K0413: TMenuItem;
          K0422: TMenuItem;
          K0461: TMenuItem;
          K0482: TMenuItem;
          K120: TMenuItem;
          K1401: TMenuItem;
          K0281: TMenuItem;
          K0291: TMenuItem;
          K0042: TMenuItem;
          K1211: TMenuItem;
          K0612: TMenuItem;
          K0542: TMenuItem;
          K0322: TMenuItem;
          K0031: TMenuItem;
          K03391: TMenuItem;
          K1301: TMenuItem;
          K0491: TMenuItem;
          K1031: TMenuItem;
          K0762: TMenuItem;
          K0383: TMenuItem;
          K0601: TMenuItem;
          K03811: TMenuItem;
          K03881: TMenuItem;
          K0391: TMenuItem;
          N3: TMenuItem;
          K041: TMenuItem;
          K04002: TMenuItem;
          K04012: TMenuItem;
          K04092: TMenuItem;
          K0416: TMenuItem;
          K0424: TMenuItem;
          K0432: TMenuItem;
          K0442: TMenuItem;
          K0451: TMenuItem;
          K0463: TMenuItem;
          K04602: TMenuItem;
          K04612: TMenuItem;
          K04622: TMenuItem;
          K04632: TMenuItem;
          K04692: TMenuItem;
          K0475: TMenuItem;
          K0484: TMenuItem;
          K04801: TMenuItem;
          K04811: TMenuItem;
          K04821: TMenuItem;
          K04891: TMenuItem;
          K0492: TMenuItem;
          N4: TMenuItem;
          K0301: TMenuItem;
          K0311: TMenuItem;
          K0321: TMenuItem;
          K0382: TMenuItem;
          S02504: TMenuItem;
          S02514: TMenuItem;
          K05111: TMenuItem;
          K05121: TMenuItem;
          K05131: TMenuItem;
          K05181: TMenuItem;
          K05191: TMenuItem;
          N1: TMenuItem;
          K05201: TMenuItem;
          K05211: TMenuItem;
          K05221: TMenuItem;
          K05281: TMenuItem;
          K05291: TMenuItem;
          N49: TMenuItem;
          K05303: TMenuItem;
          K05313: TMenuItem;
          K05323: TMenuItem;
          K05383: TMenuItem;
          K05393: TMenuItem;
          K0543: TMenuItem;
          K0551: TMenuItem;
          K0562: TMenuItem;
          N5: TMenuItem;
          K0603: TMenuItem;
          K0224: TMenuItem;
          K0213: TMenuItem;
          K06091: TMenuItem;
          K0614: TMenuItem;
          K06101: TMenuItem;
          K06181: TMenuItem;
          K06191: TMenuItem;
          K0622: TMenuItem;
          K06201: TMenuItem;
          K06211: TMenuItem;
          K06221: TMenuItem;
          K06231: TMenuItem;
          K06281: TMenuItem;
          K06291: TMenuItem;
          K0682: TMenuItem;
          K06801: TMenuItem;
          K06881: TMenuItem;
          K0691: TMenuItem;
          C0302: TMenuItem;
          C0312: TMenuItem;
          K071: TMenuItem;
          N7: TMenuItem;
          K07001: TMenuItem;
          K07011: TMenuItem;
          K07021: TMenuItem;
          K07031: TMenuItem;
          K07041: TMenuItem;
          K07051: TMenuItem;
          K07081: TMenuItem;
          K07091: TMenuItem;
          N8: TMenuItem;
          K07101: TMenuItem;
          K07111: TMenuItem;
          K07121: TMenuItem;
          K07131: TMenuItem;
          K07141: TMenuItem;
          K07181: TMenuItem;
          K07191: TMenuItem;
          N59: TMenuItem;
          K07202: TMenuItem;
          K07212: TMenuItem;
          K07222: TMenuItem;
          K07232: TMenuItem;
          K07242: TMenuItem;
          K07252: TMenuItem;
          K07262: TMenuItem;
          K07272: TMenuItem;
          K07282: TMenuItem;
          K07292: TMenuItem;
          N88: TMenuItem;
          K07302: TMenuItem;
          K07312: TMenuItem;
          K07322: TMenuItem;
          K07332: TMenuItem;
          K07342: TMenuItem;
          K07352: TMenuItem;
          K07382: TMenuItem;
          K07392: TMenuItem;
          K0741: TMenuItem;
          N89: TMenuItem;
          K07501: TMenuItem;
          K07511: TMenuItem;
          K07521: TMenuItem;
          K07531: TMenuItem;
          K07581: TMenuItem;
          K07591: TMenuItem;
          K0764: TMenuItem;
          K07602: TMenuItem;
          K07612: TMenuItem;
          K07622: TMenuItem;
          K07632: TMenuItem;
          K07642: TMenuItem;
          K07652: TMenuItem;
          K07662: TMenuItem;
          K07682: TMenuItem;
          K07692: TMenuItem;
          N90: TMenuItem;
          K0791: TMenuItem;
          N57: TMenuItem;
          K0801: TMenuItem;
          K0811: TMenuItem;
          K0821: TMenuItem;
          K0831: TMenuItem;
          K0880NOS1: TMenuItem;
          K08811: TMenuItem;
          K0882NOS1: TMenuItem;
          K08881: TMenuItem;
          K0891: TMenuItem;
          K091: TMenuItem;
          K0901: TMenuItem;
          K0911: TMenuItem;
          K0921: TMenuItem;
          K0981: TMenuItem;
          K0991: TMenuItem;
          K101: TMenuItem;
          K1001: TMenuItem;
          K1011: TMenuItem;
          K1023: TMenuItem;
          K1032: TMenuItem;
          K1081: TMenuItem;
          K1091: TMenuItem;
          K111: TMenuItem;
          K1133: TMenuItem;
          K1101: TMenuItem;
          K1111: TMenuItem;
          K11201: TMenuItem;
          K11211: TMenuItem;
          K11221: TMenuItem;
          K11291: TMenuItem;
          K1132: TMenuItem;
          K1141: TMenuItem;
          K1151: TMenuItem;
          K1161: TMenuItem;
          K1171: TMenuItem;
          K1181: TMenuItem;
          K1191: TMenuItem;
          K121: TMenuItem;
          K1201: TMenuItem;
          K1212: TMenuItem;
          K1221: TMenuItem;
          K131: TMenuItem;
          K1302: TMenuItem;
          K1311: TMenuItem;
          K1321: TMenuItem;
          K1331: TMenuItem;
          K1341: TMenuItem;
          K1351: TMenuItem;
          K1361: TMenuItem;
          K1371: TMenuItem;
          K141: TMenuItem;
          K1402: TMenuItem;
          K1411: TMenuItem;
          K1421: TMenuItem;
          K1431: TMenuItem;
          K1441: TMenuItem;
          K1451: TMenuItem;
          K1461: TMenuItem;
          K1481: TMenuItem;
          K1491: TMenuItem;
          N2: TMenuItem;
          K0532: TMenuItem;
          K0473: TMenuItem;
          K0232: TMenuItem;
          K0062: TMenuItem;
          K0011: TMenuItem;
          K1021: TMenuItem;
          S0322: TMenuItem;
          Q381: TMenuItem;
          Q38001: TMenuItem;
          Q38081: TMenuItem;
          Q3811: TMenuItem;
          Q3821: TMenuItem;
          N63: TMenuItem;
          N64: TMenuItem;
          S01501: TMenuItem;
          S01511: TMenuItem;
          S01521: TMenuItem;
          S01531: TMenuItem;
          S01541: TMenuItem;
          S01581: TMenuItem;
          S01591: TMenuItem;
          N65: TMenuItem;
          S0242011: TMenuItem;
          S0242111: TMenuItem;
          S0243021: TMenuItem;
          S0243121: TMenuItem;
          S024401: TMenuItem;
          S024411: TMenuItem;
          S0245031: TMenuItem;
          S0245131: TMenuItem;
          S0246031: TMenuItem;
          S0246131: TMenuItem;
          S024701: TMenuItem;
          S024711: TMenuItem;
          S024801: TMenuItem;
          S024811: TMenuItem;
          N66: TMenuItem;
          S026201: TMenuItem;
          S026211: TMenuItem;
          S026301: TMenuItem;
          S026311: TMenuItem;
          S026801: TMenuItem;
          S026811: TMenuItem;
          N67: TMenuItem;
          S028201: TMenuItem;
          S028211: TMenuItem;
          S028301: TMenuItem;
          S028311: TMenuItem;
          S028401: TMenuItem;
          S028411: TMenuItem;
          S028801: TMenuItem;
          S028811: TMenuItem;
          S0301: TMenuItem;
          N62: TMenuItem;
          A4221: TMenuItem;
          A6911: TMenuItem;
          K0203: TMenuItem;
          B0001: TMenuItem;
          B0021: TMenuItem;
          B0211: TMenuItem;
          B2691: TMenuItem;
          B3701: TMenuItem;
          C0052: TMenuItem;
          C0292: TMenuItem;
          C0492: TMenuItem;
          C41001: TMenuItem;
          C41011: TMenuItem;
          C4302: TMenuItem;
          C9001: TMenuItem;
          C9191: TMenuItem;
          C9291: TMenuItem;
          D0002: TMenuItem;
          D0302: TMenuItem;
          D1022: TMenuItem;
          D1032: TMenuItem;
          D1652: TMenuItem;
          D1791: TMenuItem;
          E1081: TMenuItem;
          E539B1: TMenuItem;
          E559D1: TMenuItem;
          E641A1: TMenuItem;
          F4581: TMenuItem;
          G5001: TMenuItem;
          G5101: TMenuItem;
          J01001: TMenuItem;
          J01011: TMenuItem;
          J03901: TMenuItem;
          J03911: TMenuItem;
          J3201: TMenuItem;
          J3501: TMenuItem;
          Q3511: TMenuItem;
          Q3531: TMenuItem;
          Q3591: TMenuItem;
          Q3601: TMenuItem;
          Q3701: TMenuItem;
          R1961: TMenuItem;
          R6301: TMenuItem;
          R6311: TMenuItem;
          R6321: TMenuItem;
          S0431: TMenuItem;
          S0451: TMenuItem;
          N20101: TMenuItem;
          K0001: TMenuItem;
          K0013: TMenuItem;
          K0023: TMenuItem;
          K0032: TMenuItem;
          K0043: TMenuItem;
          K0051: TMenuItem;
          K0061: TMenuItem;
          K0082: TMenuItem;
          K0111: TMenuItem;
          K0303: TMenuItem;
          K0313: TMenuItem;
          K0323: TMenuItem;
          K0331: TMenuItem;
          K0381: TMenuItem;
          K0403: TMenuItem;
          K0462: TMenuItem;
          K0483: TMenuItem;
          K0502: TMenuItem;
          K0513: TMenuItem;
          K0521: TMenuItem;
          K0531: TMenuItem;
          K0602: TMenuItem;
          K0613: TMenuItem;
          K0621: TMenuItem;
          K0681: TMenuItem;
          K0701: TMenuItem;
          K0711: TMenuItem;
          K0722: TMenuItem;
          K0732: TMenuItem;
          K0751: TMenuItem;
          K0763: TMenuItem;
          K0882: TMenuItem;
          K1121: TMenuItem;
          Q3801: TMenuItem;
          S0051: TMenuItem;
          S0151: TMenuItem;
          S02501: TMenuItem;
          S02511: TMenuItem;
          S0321: TMenuItem;
          N10: TMenuItem;
          N11: TMenuItem;
          grdSang: TAdvStringGrid;
          grdJusa: TAdvStringGrid;
          grdMain: TAdvStringGrid;
    GradRoundBtn1: TAdvGlowButton;
    RxSpinEdit1: TSpinEdit;
    wDateEdit1: TDateTimePicker;
    cbUseDur: TCheckBox;
    ComboBox2: TComboBox;
    Edit6: TEdit;
    Label15: TLabel;
    btnOpen: TButton;
    btnSave: TButton;
    btnDelete: TButton;
    spSkinButton3: TButton;
    spSkinButton4: TButton;
    btnPrint: TButton;
    spSkinButton6: TButton;
    spSkinButton7: TButton;
    cbDoc: TColumnComboBox;
    edtDoc: TEdit;

          procedure FormShow(Sender: TObject);
          procedure MakeButtonTx(top: Integer; left: Integer; sCode: string;
               sName: string; sCap: string; ownIndex: Integer);
          procedure GradRoundBtn1Click(Sender: TObject);
          procedure cbDocCloseUp(Sender: TObject);
          procedure BitBtn1Click(Sender: TObject);
          procedure BitBtn2Click(Sender: TObject);
          procedure FieldSet(dtJin_day: TDateTime; nSeq: Integer);
          procedure SetWonwes(dtJin_day: TDateTime; nSeq: Integer);
          procedure btnOpenClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnDeleteClick(Sender: TObject);
          procedure spSkinButton3Click(Sender: TObject);
          procedure spSkinButton4Click(Sender: TObject);
          procedure btnPrintClick(Sender: TObject);
          procedure spSkinButton6Click(Sender: TObject);
          procedure BitBtn3Click(Sender: TObject);
          procedure BitBtn4Click(Sender: TObject);
          procedure K040Click(Sender: TObject);
          procedure N11Click(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure spSkinButton7Click(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure grdSangClickCell(Sender: TObject; ARow, ACol: Integer);
          procedure grdSangDblClickCell(Sender: TObject; ARow, ACol: Integer);
          procedure grdJusaClickCell(Sender: TObject; ARow,
               ACol: Integer);
          procedure grdMainClickCell(Sender: TObject; ARow,
               ACol: Integer);
          procedure grdMainMouseDown(Sender: TObject;
               Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
          procedure grdMainGetFormat(Sender: TObject; ACol: Integer;
               var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure cbUseDurClick(Sender: TObject);
     private
          function InsSang(s_Key, sang: string): Integer;
          procedure InsRx;
          procedure ChartSave;
          procedure ChartDelete;

          procedure InitFastReport();
          procedure DataToPrintForm();
          function GetSangCode(ARow: Integer): string;
          procedure SetListData(AGrid: TadvStringGrid; ARow: Integer; const
               iStart: Integer);
          function DurJumgum: boolean;
          function CancelDur: boolean;
    procedure setDur(varVisible: Boolean);
    procedure insertDrug(varCode:string;hoito, ilto,chongto:string);
     public
          { Public declarations }
          nIlsu: string;

     end;

var
     wonwe_f: Twonwe_f;

implementation

uses uConfig, uDM, uMain,uGogekData, uFunctions, jinryo,  uDaegiFrame,
     wonweopen, phrase,  sangcombo, // drug, nIlsu,
     SangSeek, jumgumResult, cancelJumgum, nIlsu;     //PrevRx,
//, Chart, buga, phrase, Prt_wonwe, SangSeek, wonweopen, drug,    sangcombo, nIlsu, PrevRx;
procedure FastReportChangeFontCharset(AReport: TfrxReport;
                                      ACharset: TFontCharset = DEFAULT_CHARSET);
 var
   I: Integer;
 begin
//   for I := 0 To AReport.ComponentCount -1 do
//   begin
//      if AReport.Components[I] is TfrxMemoView then
//      begin
//        // (AReport.Components[I] as TfrxMemoView).Font. := ACharset;
//         (AReport.Components[I] as TfrxMemoView).Font.Charset := ACharset;
//      end;
//   end;
 end;


function Round2(number: single; pt: integer): Double;
begin
     if number <> 0 then
     begin
          if pt >= 0 then
          begin
               Result := TRUNC((number / power(10, pt)) + 0.5) * power(10,
                    pt);
          end
          else
          begin
               Result := TRUNC((number * power(10, -pt)) + 0.5) /
                    power(10,
                    -pt);
          end;
     end
     else
     begin
          Result := 0;
     end;
end;

{$R *.dfm}

procedure Twonwe_f.InsRx;
var
     i: Integer;
begin

//     for i := 0 to Jinryo_f.grdJinryoS.RowCount - 1 do
//     begin
//          if ((Jinryo_f.grdJinryoS.Cells[9, i]  = '09') and
//               (Jinryo_f.grdJinryoS.Cells[0, i]  <> '99')) then
//          begin
//               grdmain.AddRow;
//               grdmain.Cells[1, grdmain.RowCount - 1] := Jinryo_f.grdJinryoS.Cells[1, i];
//               grdmain.Cells[2, grdmain.RowCount - 1] := Jinryo_f.grdJinryoS.Cells[2, i];
//               grdmain.Cells[3, grdmain.RowCount - 1] := Jinryo_f.grdJinryoS.Cells[14,i];
//               grdmain.Cells[4, grdmain.RowCount - 1] := Jinryo_f.grdJinryoS.Cells[3, i];
//               grdmain.Cells[5, grdmain.RowCount - 1] := Jinryo_f.grdJinryoS.Cells[7, i];
//          end;
//     end;
end;

procedure Twonwe_f.MakeButtonTx(top: Integer; left: Integer; sCode: string;
     sName: string; sCap: string; ownIndex: Integer);
var
     NewButtonS: TAdvGlowButton;
     sHint: string;
begin
     if sCap = '' then
          sCap := sName;
     //NewButton
     NewButtonS := TAdvGlowButton.Create(Wonwe_f);

     NewButtonS.Parent := ScrollBox1;

     NewButtonS.Top := top;
     NewButtonS.Left := left;

     NewbuttonS.Height := 25;
     NewButtonS.Width := 115;
  //   NewButtonS.RoundDegree := 4;

     NewButtonS.ShowHint := True;
     // NewButtonS.HelpKeyword := sWiz;
     NewButtonS.OnClick := GradRoundBtn1.OnClick;
     NewButtonS.Caption := sCap;
     NewButtonS.Name := 'R' + sCode;

     sHint := '';
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select s.su_kor_name from groupsuga g, suga s where g.groupcode=:GroupCode and g.sugacode=s.su_key order by g.groupline');
          ParamByName('groupcode').AsString := sCode;
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    sHint := sHint + FieldByName('su_kor_name').AsString
                         + #10#13;
                    Next;
               end;
          end;
     end;

     NewButtonS.Hint := sHint;

end;

function TWonwe_f.InsSang(s_Key, sang: string): Integer;
begin
     if grdSang.Cells[1, 0] = '' then
     begin
          if s_key = '' then
          begin
               Result := 0;
          end
          else
          begin
               grdSang.Cells[1, 0] := Trim(s_key);
               grdSang.Cells[2, 0] := Sang;
               Edit3.Text := s_key;
               Result := 1;

          end;
     end
     else
     begin
          if grdSang.Cells[1, 1] = '' then
          begin
               if s_key = '' then
               begin
                    Result := 1;
               end
               else
               begin
                    grdSang.Cells[1, 1] := Trim(s_key);
                    grdSang.Cells[2, 1] := Sang;
                    Edit4.Text := s_key;
                    Result := 2;
               end;
          end
          else
          begin
               Result := 3;
          end;
     end;
end;

procedure Twonwe_f.FormShow(Sender: TObject);
var
     t, w, i: Integer;
     Path: string;
     FormInit: TiniFile;
begin
     todaynos.Clear;


     if configvalue.varLoadDur <> '1' then
     begin
          setDur(false);
     end
     else
     begin
          setDur(true);
     end;

     {    Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
         //ToDo: 환경설정에서 변수 저장하도록
         FormInit := TIniFile.Create(Path);
         RxSpinEdit1.Value := StrToInt(FormInit.ReadString('기타정보',
                '처방전유효기간', '3'));
       Forminit.Free;
     //    if StrToInt(FormInit.ReadString('기타정보', '처방전발급매수', '1')) = 2
     //           then
      }
     RxSpinEdit1.Value := strtoint(configvalue.varChubang);
     if configvalue.varPrintsu = '2' then
     begin
          checkBox2.Checked := True;
          checkBox3.Checked := True;
     end
     else
          if configvalue.varPrintsu = '0' then
          begin
               checkBox2.Checked := True;
               checkBox3.Checked := false;
          end
          else
               if configvalue.varPrintsu = '1' then
               begin
                    checkBox2.Checked := false;
                    checkBox3.Checked := True;
               end;

     {   btnOpen.SkinData := jinryo_f.spskindata1;
        spSkinButton1.SkinData := jinryo_f.spskindata1;
        spSkinButton2.SkinData := jinryo_f.spskindata1;
        spSkinButton3.SkinData := jinryo_f.spskindata1;
        spSkinButton4.SkinData := jinryo_f.spskindata1;
        spSkinButton5.SkinData := jinryo_f.spskindata1;
        spSkinButton6.SkinData := jinryo_f.spskindata1;
        spSkinButton7.SkinData := jinryo_f.spskindata1;
      }
      if assigned(main_f) then
      begin
         wDateEdit1.Date :=   main_f.DaegiFrame_fr1.dtDate.date;
         edtDoc.Text     :=   main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex, 2] ;
         edtMyunhu.Text  :=   main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex, 3] ;
      end
      else

          if assigned(jinryo_f) then
          begin
             wDateEdit1.Date :=   Jinryo_f.dMain.Date;
             edtDoc.Text     :=   Jinryo_f.cbDoc.ColumnItems[Jinryo_f.cbDoc.itemindex, 2] ;
             edtMyunhu.Text  :=   Jinryo_f.cbDoc.ColumnItems[Jinryo_f.cbDoc.itemindex, 3] ;
          end;

     GradRoundBtn1.Visible := False;

     grdmain.RowCount := 1;
     grdJusa.RowCount := 1;

     Edit1.Text := ma_chart;
     Label4.Caption := '환  자  성  명 : ' + ma_paName;// jinryo_f.varName;

     //Label5.Caption := '주민등록번호 : ' + DStandard_f.Pi_f1.JJuminEdit.Text;
     Label5.Caption := '주민등록번호 : ' + Copy(ma_jumin, 1, 6) +
          '-' +
          Copy(ma_jumin, 7, 7);

//     case jinryo_f.cbJong.itemindex of
       case strtoint(ma_JongBeul) - 1 of
          0   : RadioButton1.Checked := True;
          1..2: RadioButton2.Checked := True;
          3   : RadioButton5.Checked := True;
     else
          RadioButton1.Checked := True;
     end;
     //    if dm_f.loadini=true then
     //    begin
     Label2.Caption := '요양기관기호 : ' + configvalue.varYoyang;
     //    end;
     with dm_f.SqlTemp do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select * from groupcode where groupCode like ''RX%'' order by groupcode');
          Open;
          Last;
          if RecordCount > 0 then
          begin
               First;
               t := 6;
               w := 4;

               while not eof do
               begin
                    MakeButtonTx(t, w,
                         FieldByName('groupcode').AsString,
                         FieldByName('groupname').AsString,
                         FieldByName('groupname').AsString, 0);
                    t := t + 26;
                    w := 4;
                    Next;
               end;
          end;

          Close;
          Sql.Clear;
          Sql.Add('select seqno from wonwe_p where jin_day=:jin_day ');
          sql.Add('and  chart<>:chart and doc_name=:doc_name order by seqno');
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          ParamByName('chart').AsString := Edit1.Text;
          ParamByName('doc_name').AsString := edtDoc.Text;
          Open;
          First;
          if not IsEmpty then
          begin
               while not eof do
               begin
                    todaynos.Items.add(FieldByName('seqno').AsString);
                    next;
               end;
          end;

          //처방전 번호 찾아보자
          //먼저 오늘 이 환자에게서 발급된 처방이 있나봐서
          Close;
          Sql.Clear;
          Sql.Add(' select * from wonwe_p                     ');
          Sql.Add('   where chart=:Chart                      ');
          Sql.Add(' and jin_day=:Jin_day                      ');
          Sql.Add(' and  doc_name=:doc_name                   ');
          ParamByName('chart').AsString    := Edit1.Text;
          ParamByName('doc_name').AsString := edtDoc.Text;
          ParamByName('jin_day').AsString  := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
          Open;
          First;
          if not IsEmpty then
          begin
               //있으면

               WonweOpen_f := TWonweOpen_f.Create(application);
               dm_f.sqlWork.Close;
               dm_f.sqlWork.Sql.Clear;
               dm_f.sqlWork.Sql.Add('select * from wonwe_p where chart=:Chart and jin_day=:Jin_day ');
               dm_f.sqlWork.ParamByName('chart').AsString :=
                    Wonwe_f.Edit1.Text;
               dm_f.sqlWork.ParamByName('jin_day').AsString :=
                    FormatDateTime('yyyy-mm-dd',
                    Wonwe_f.wDateEdit1.Date);

               WonweOpen_f.Showmodal;
               WonweOpen_f.Free;
               WonweOpen_f := nil;

          end
          else {//없으면(새거면)}
          begin

               cbNewOrder.Checked := True;
               Edit5.Text := '';


                 if assigned(main_f) then
                begin
                   wDateEdit1.Date :=   main_f.DaegiFrame_fr1.dtDate.date;
                   edtDoc.Text     :=   main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex, 2] ;
                   edtMyunhu.Text  :=   main_f.cbDoc.ColumnItems[main_f.cbDoc.itemindex, 3] ;
                end
                else

                    if assigned(jinryo_f) then
                    begin
                       wDateEdit1.Date :=   Jinryo_f.dMain.Date;
                       edtDoc.Text     :=   Jinryo_f.cbDoc.ColumnItems[Jinryo_f.cbDoc.itemindex, 2] ;
                       edtMyunhu.Text  :=   Jinryo_f.cbDoc.ColumnItems[Jinryo_f.cbDoc.itemindex, 3] ;
                    end;




              if assigned(jinryo_f) then
              begin

                   //상병을 가지고 온다. Jinryo_f1.RealGrid2에서
                   with Jinryo_f do
                   begin


                        for i := 0 to grdJusa.RowCount - 1 do
                        begin
    //                         if InsSang(grdJinryo_o.Cells[5, i] , grdJinryo_o.Cells[9, i] ) >= 2 then
    //                              Break;
    //                         if InsSang(grdJinryo_o.Cells[6, i] , grdJinryo_o.Cells[10, i]) >= 2 then
    //                              Break;
    //                         if InsSang(grdJinryo_o.Cells[7, i] , grdJinryo_o.Cells[11, i]) >= 2 then
    //                              Break;
                        end;
                   end;
              end;







               InsRx;

          end;

          Close;
          Sql.Clear;
          if cbNewOrder.Checked then {//새거면}
          begin
               Sql.Add('select max(seqno)+1 as newSeqNo from wonwe_p where jin_day=:Jin_day');
               ParamByName('jin_day').AsString :=
                    FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
               Open;
               First;
               if not isEmpty then
                    SpinEdit1.Value := FieldByName('newSeqNo').AsInteger
               else
                    SpinEdit1.Value := 1;

                if assigned(jinryo_f) then
                begin
                     if Jinryo_f.cmbDoctor.ItemIndex >= 0 then
                     begin
                         // cbDoc.ItemIndex := Jinryo_f.cbDoc.ItemIndex;
                          edtDoc.Text     := '';//
                          edtMyunhu.Text  := '';//cbDoc.ColumnItems[cbDoc.itemindex, 3];
                       //        ListBox1.Items.Strings[cbDoc.ItemIndex];
                     end;
                end;
          end;
     end;
end;

procedure Twonwe_f.GradRoundBtn1Click(Sender: TObject);
var
     son: string;
begin
     with dm_f.SqlTemp do
     begin
          {
          update suga set wo_dan=sugadrug.law_merit from sugadrug where suga.su_key='A04301621' and
      suga.su_key=sugadrug.su_key
      and suga.su_apply<=sugadrug.apply_day

          }
          Close;
          Sql.Clear;
//          Sql.Add('select c.groupkind2,s.groupcode,s.groupline,s.sugacode,m.su_newcode,m.su_kor_name,');
//          Sql.Add('m.su_sobulru,m.wo_dan,s.iltu,c.ilsu,s.qty,m.bo_dan,m.il_dan,                      ');
//          sql.add('m.su_extra,c.sang1,c.sang2,m.su_gu1,m.su_gu3,m.jaejo_key,c.kwamok,m.dan_qty,      ');
//          sql.add('m.su_soa,m.su_danwi from groupcode c, groupsuga s, suga m                         ');
//          //Sql.Add('where c.groupcode=s.groupcode and s.sugacode*=m.su_key  and');
//          Sql.Add('where c.groupcode=s.groupcode and s.sugacode= m.su_key  and                       ');
//          Sql.Add(' c.groupcode= :GroupCode  order by s.groupline');
//          ParamByName('GroupCode').AsString := Trim(Copy((Sender as TAdvGlowButton).Name, 2, 10));

          Sql.Add('select c.groupkind2,s.groupcode,s.groupline,s.sugacode,m.su_newcode,m.su_kor_name,');
          Sql.Add('m.su_sobulru,m.wo_dan,s.iltu,c.ilsu,s.qty,m.bo_dan,m.il_dan,                      ');
          sql.add('m.su_extra,c.sang1,c.sang2,m.su_gu1,m.su_gu3,m.jaejo_key,c.kwamok,m.dan_qty,      ');
          sql.add('m.su_soa,m.su_danwi from groupcode c, groupsuga s, suga m                         ');
          //Sql.Add('where c.groupcode=s.groupcode and s.sugacode*=m.su_key  and');
          Sql.Add('where c.groupcode=s.groupcode and s.sugacode= m.su_key  and                       ');
          Sql.Add(' c.groupcode= :GroupCode  order by s.groupline');
          ParamByName('GroupCode').AsString := Trim(Copy((Sender as TAdvGlowButton).Name, 2, 10));


          Open;
          First;
          if not isEmpty then
          begin
               nIlsu := FieldByName('ilsu').AsString;

               if (nilsu = '0') or (nilsu = '') then
               begin
                    nilsu := '1';
               end;

               nIlsu_f := TnIlsu_f.Create(application);
               nIlSu_f.RxSpinEdit1.Value := StrToInt(nIlsu);
               nIlsu_f.Showmodal;
               nIlsu_f.Free;
               nIlsu_f := nil;

            //   Jinryo_f.grdPharmacy.Clear;
               while not eof do
               begin
                    if ((FieldByName('su_gu3').AsString = '13') or
                         (FieldByName('su_gu3').AsString = '12') or
                         (FieldByName('su_gu3').AsString = '11')) then
                    begin
                         grdJusa.AddRow;
                         //2010.1.1
                         if Copy(FieldByName('sugacode').AsString, 1, 1) = '6' then
                         begin
                              grdJusa.Cells[1, grdJusa.RowCount - 1] := '[' + FieldByName('sugacode').AsString + ']' + FieldByName('su_kor_name').AsString;
                         end
                         else
                              if FormatDateTime('yyyy-mm-dd', Wonwe_f.wDateEdit1.Date) > '2009-12-31' then
                              begin
                                   if (FieldByName('su_newcode').isnull) or (FieldByName('su_newcode').AsString = '') then
                                   begin
                                        grdJusa.Cells[1, grdJusa.RowCount - 1] := '[' + FieldByName('sugacode').AsString + ']' + FieldByName('su_kor_name').AsString;
                                   end
                                   else
                                   begin
                                        grdJusa.Cells[1, grdJusa.RowCount - 1] := '[' + FieldByName('su_newcode').AsString + ']' + FieldByName('su_kor_name').AsString;
                                   end;
                              end
                              else
                              begin
                                   grdJusa.Cells[1, grdJusa.RowCount - 1] := '[' + FieldByName('sugacode').AsString + ']' + FieldByName('su_kor_name').AsString;
                              end;
                         grdJusa.ints[2, grdJusa.RowCount - 1] := FieldByName('qty').asInteger;
                         grdJusa.ints[3, grdJusa.RowCount - 1] := FieldByName('iltu').asInteger;
                         grdJusa.Cells[4, grdJusa.RowCount - 1] := nIlsu;
                         grdJusa.Cells[5, grdJusa.RowCount - 1] := FieldByName('sugacode').AsString;
                         grdJusa.Cells[6, grdJusa.RowCount - 1] := FieldByName('su_sobulru').AsString; // 퇴장방지의약품(장려금10%)
                         grdJusa.Cells[7, grdJusa.RowCount - 1] := FieldByName('wo_dan').AsString;
                         grdJusa.Cells[8, grdJusa.RowCount - 1] := FieldByName('wo_dan').AsString;
                    end
                    else
                    begin
                         grdmain.AddRow;
                         //2010.1.1
                         if Copy(FieldByName('sugacode').AsString, 1, 1) = '6' then
                         begin
                              grdmain.Cells[1, grdmain.RowCount - 1] := '[' + FieldByName('sugacode').AsString + ']' + FieldByName('su_kor_name').AsString;
                         end
                         else
                              if FormatDateTime('yyyy-mm-dd', Wonwe_f.wDateEdit1.Date) > '2009-12-31' then
                              begin
                                   if (FieldByName('su_newcode').isnull) or (FieldByName('su_newcode').AsString = '') then
                                   begin
                                        grdmain.Cells[1, grdmain.RowCount - 1] := '[' + FieldByName('sugacode').AsString + ']' + FieldByName('su_kor_name').AsString;
                                   end
                                   else
                                   begin
                                        grdmain.Cells[1, grdmain.RowCount - 1] := '[' + FieldByName('su_newcode').AsString + ']' + FieldByName('su_kor_name').AsString;
                                   end;
                              end
                              else
                              begin
                                   grdmain.Cells[1, grdmain.RowCount - 1] := '[' + FieldByName('sugacode').AsString + ']' + FieldByName('su_kor_name').AsString;
                              end;
                         grdmain.ints[2, grdmain.RowCount - 1] := FieldByName('qty').asInteger;
                         grdmain.ints[3, grdmain.RowCount - 1] := FieldByName('iltu').asInteger;
                         grdmain.Cells[4, grdmain.RowCount - 1] := nIlsu;
                         grdmain.Cells[5, grdmain.RowCount - 1] := FieldByName('sugacode').AsString;
                         grdmain.Cells[6, grdmain.RowCount - 1] := FieldByName('su_sobulru').AsString;
                         // 퇴장방지의약품(장려금10%)
                         grdmain.Cells[7, grdmain.RowCount - 1] := FieldByName('wo_dan').AsString;
                         grdmain.Cells[8, grdmain.RowCount - 1] := FieldByName('wo_dan').AsString;
                    end;
                    Next;
               end;
          end;
     end;
     SendMessage(grdmain.Handle, WM_VSCROLL, SB_BOTTOM, 0);

end;

procedure TWonwe_f.SetWonwes(dtJin_day: TDateTime; nSeq: Integer);
begin
     //
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
        //  Sql.Add(' select * from wonwe_s w, suga s where w.jin_day=:Jin_day and w.seqno=:Seqno  ' );
        //  Sql.Add(' and w.code=s.su_key  order by w.seq        ');

         SQL.Text:=
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

          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',  dtJin_day);
          ParamByName('seqno').AsInteger := nSeq;
          Open;
          First;
          if RecordCount > 0 then
          begin
               grdMain.RowCount := 1;
               while not eof do
               begin
                    if FieldByName('seq').AsInteger >= 90 then
                    begin
                         grdJusa.AddRow;
                         grdJusa.Cells[1, grdJusa.RowCount - 1] := FieldByName('su_kor_name').AsString;
                         grdJusa.Cells[2, grdJusa.RowCount - 1] := FieldByName('jin_qty').AsString;
                         grdJusa.Cells[3, grdJusa.RowCount - 1] := FieldByName('div').AsString;
                         grdJusa.Cells[4, grdJusa.RowCount - 1] := FieldByName('jin_ilsu').AsString;
                         grdJusa.Cells[5, grdJusa.RowCount - 1] := FieldByName('su_key').AsString;
                         if FieldByName('su_sobulru').AsString = '9' then
                         begin
                              grdJusa.Cells[6, grdJusa.RowCount - 1] := '9';
                              grdJusa.Cells[7, grdJusa.RowCount - 1] := FieldByName('bodan').AsString;
                         end
                         else
                         begin
                              grdJusa.Cells[6, grdJusa.RowCount - 1] := '';
                         end;
                    end
                    else
                    begin
                         grdmain.AddRow;
                         grdmain.Cells[1, grdmain.RowCount - 1] := '[' +
                              FieldByName('su_key').AsString + ']' +
                              FieldByName('su_kor_name').AsString;
                         grdmain.Cells[2, grdmain.RowCount - 1] := FieldByName('jin_qty').AsString;
                         grdmain.Cells[3, grdmain.RowCount - 1] := FieldByName('div').AsString;
                         grdmain.Cells[4, grdmain.RowCount - 1] := FieldByName('jin_ilsu').AsString;
                         grdmain.Cells[5, grdmain.RowCount - 1] := FieldByName('su_key').AsString;
                         if FieldByName('su_sobulru').AsString = '9' then
                         begin
                              grdmain.Cells[6, grdmain.RowCount - 1] := '9';
                              grdmain.Cells[7, grdmain.RowCount - 1] := FieldByName('bodan').AsString;
                         end
                         else
                         begin
                              grdmain.Cells[6, grdmain.RowCount - 1] := '';
                         end;
                    end;
                    Next;
               end;
          end;
     end;
end;

procedure TWonwe_f.FieldSet(dtJin_day: TDateTime; nSeq: Integer);
var
   nJongBeul : integer;
begin
     //
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from wonwe_p where jin_day=:Jin_day and seqno=:Seqno');
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               dtJin_day);
          ParamByName('seqno').AsInteger := nSeq;
          Open;
          First;
          if RecordCount > 0 then
          begin
               Label4.Caption := '환  자  성  명 : ' +
                    FieldByName('name').AsString;
               //Label5.Caption := '주민등록번호 : ' + FieldByName('jumin').AsString;
               Label5.Caption := '주민등록번호 : ' +
                    Copy(Trim(FieldByName('jumin').AsString), 1, 6) + '-'
                    +
                    Copy(Trim(FieldByName('jumin').AsString), 7, 7);

               grdSang.Cells[1, 0] := Trim(FieldByName('sang1').AsString);
               grdSang.Cells[2, 0] := '';
               Edit3.Text := FieldByName('sang1').AsString;

               grdSang.Cells[1, 1] := Trim(FieldByName('sang2').AsString);
               grdSang.Cells[2, 1] := '';
               Edit4.Text := FieldByName('sang2').AsString;

               edtMyunhu.Text := FieldByName('myunhu').AsString;
               Edit6.Text := FieldByName('tjungNeyuk').AsString;
               Combobox2.Text := FieldByName('tjungCode').AsString;
               nJongBeul :=  FieldByName('jongbeul').AsInteger + 1;
               case nJongBeul of
                    1: RadioButton1.Checked := True;
                    2..3: RadioButton2.Checked := True;
                    4: RadioButton5.Checked := True;
               else
                    RadioButton5.Checked := True;
               end;
               RxSpinEdit1.Value := FieldByName('expiration').AsInteger;


               if ((FieldByName('doc_name').AsString <> '') and
                    (FieldByName('doc_name').IsNull = False)) then
               begin
                    edtDoc.Text:= FieldByName('doc_name').asString;
               end
               else
               begin
                    cbDoc.ItemIndex := 0;
                    if Jinryo_f.cmbDoctor.ItemIndex >= 0 then
                    begin
                         cbDoc.ItemIndex :=
                              jinryo_f.cbDoc.ItemIndex;
                         edtMyunhu.Text :=   cbDoc.ColumnItems[cbDoc.itemindex, 3];
                            //  ListBox1.Items.Strings[cbDoc.ItemIndex];
                    end;
               end;
               Memo2.Text := FieldByName('memo').AsString;
               Memo1.Text := FieldByName('yongbub').AsString;
               SetWonwes(dtJin_day, nSeq);
          end;

          if Edit3.Text <> '' then
          begin
               Close;
               Sql.Clear;
               Sql.Add('select s_kor_name from sangbyung where s_key = :sangCode');
               ParamByName('sangCode').AsString := Edit3.Text;
               Open;
               First;
               if not isEmpty then
                    grdSang.Cells[2, 0] :=
                         FieldByName('s_kor_name').AsString;
          end;
          if Edit4.Text <> '' then
          begin
               Close;
               Sql.Clear;
               Sql.Add('select s_kor_name from sangbyung where s_key = :sangCode');
               ParamByName('sangCode').AsString := Edit4.Text;
               Open;
               First;
               if not isEmpty then
                    grdSang.Cells[2, 1] :=
                         FieldByName('s_kor_name').AsString;
          end;

     end;
end;

procedure Twonwe_f.cbDocCloseUp(Sender: TObject);
begin
     edtMyunhu.Text :=  cbDoc.ColumnItems[cbDoc.itemindex, 3];//ListBox1.Items.Strings[cbDoc.ItemIndex];
end;

procedure Twonwe_f.BitBtn1Click(Sender: TObject);
begin
     Phrase_f := TPhrase_f.Create(application);
     Phrase_f.Caption := '용법';
     Phrase_f.Showmodal;
     Phrase_f.Free;
     Phrase_f := nil;
end;

procedure Twonwe_f.BitBtn2Click(Sender: TObject);
begin
     Phrase_f := TPhrase_f.Create(application);
     Phrase_f.Caption := '조제시참고사항';
     Phrase_f.Showmodal;
     Phrase_f.Free;
     Phrase_f := nil;
end;

procedure Twonwe_f.spSkinButton3Click(Sender: TObject);
begin
//     PrevRx_f := TPrevRx_f.Create(application);
//     PrevRx_f.Edit1.Text := Edit1.Text;
//     PrevRx_f.Showmodal;
//     PrevRx_f.Free;
//     PrevRx_f := nil;
end;

procedure Twonwe_f.spSkinButton4Click(Sender: TObject);
begin
//     drug_f := Tdrug_f.Create(application);
//
//
//     if drug_f.ShowModal = mrOk then
//     begin
//
//     if drug_f.edit2.Text <> '' then
//     begin
//          with dm_f.SqlWork do
//          begin
//               Close;
//               Sql.Clear;
//               Sql.Add('select * from suga where su_key=:Code');
//               ParamByName('Code').AsString := drug_f.edit2.Text;
//               Open;
//               First;
//               if isEmpty then
//               begin
//                    dm_f.SqlTemp.Sql.Clear;
//                    //dm_f.SqlTemp.Sql.Add('insert into suga (su_key,su_apply,bo_day,ja_day,il_day,wo_day,su_gu1,su_gu3,su_kor_name,su_junsan,bo_dan,su_sobulru)');
//                    //dm_f.SqlTemp.Sql.Add('select top 1 su_key,apply_day,apply_day,apply_day,apply_day,apply_day,''1'',''09'',su_kor_name,su_key,hi_price,su_sobulru=(case when ((out_gubun is not null) and (out_gubun<>'''')) then ''9'' else '''' end) from sugadrug where su_key=:Code');
//
//                    dm_f.SqlTemp.Sql.Add('insert into suga (su_key,su_apply,bo_day,ja_day,il_day,wo_day,su_gu1,su_gu2,su_gu3,su_kor_name,su_junsan,bo_dan,su_sobulru, wo_dan, ja_dan, il_dan, dan_qty)');
//                    dm_f.SqlTemp.Sql.Add('values (:su_key,:su_apply,:bo_day,:ja_day,:il_day,:wo_day,:su_gu1,:su_gu2,:su_gu3,:su_kor_name,:su_junsan,:bo_dan,:su_sobulru,:wo_dan,:ja_dan,:il_dan, ''1'')');
//
//                    //dm_f.SqlTemp.ParamByName('Code').AsString := edtMyunhu.Text;
//
//                    dm_f.SqlTemp.ParamByName('su_key').AsString := drug_f.edit2.Text;
//                    dm_f.SqlTemp.ParamByName('su_apply').AsString := drug_f.Edit6.Text;
//                    dm_f.SqlTemp.ParamByName('bo_day').AsString := drug_f.Edit6.Text;
//                    dm_f.SqlTemp.ParamByName('ja_day').AsString := drug_f.Edit6.Text;
//                    dm_f.SqlTemp.ParamByName('il_day').AsString := drug_f.Edit6.Text;
//                    dm_f.SqlTemp.ParamByName('wo_day').AsString := drug_f.Edit6.Text;
//                    dm_f.SqlTemp.ParamByName('su_gu1').AsString := '1';
//                    dm_f.SqlTemp.ParamByName('su_gu2').AsString := '3';
//                    dm_f.SqlTemp.ParamByName('su_gu3').AsString := '09';
//                    dm_f.SqlTemp.ParamByName('su_kor_name').AsString := drug_f.Memo1.Text;
//                    dm_f.SqlTemp.ParamByName('su_junsan').AsString := drug_f.edit2.Text;
//                    dm_f.SqlTemp.ParamByName('bo_dan').AsString := drug_f.Edit3.Text;
//                    dm_f.SqlTemp.ParamByName('ja_dan').AsString := drug_f.Edit3.Text;
//                    dm_f.SqlTemp.ParamByName('il_dan').AsString := drug_f.Edit3.Text;
//                    dm_f.SqlTemp.ParamByName('wo_dan').AsString := drug_f.Edit4.Text;
//                    dm_f.SqlTemp.ParamByName('su_sobulru').AsString := drug_f.Edit5.Text;
//
//                    dm_f.SqlTemp.ExecSql;
//               end;
//
//          end;
//
//          insertDrug( drug_f.Edit2.Text,
//          IntToStr(Round(drug_f.RxSpinEdit1.value)),
//          IntToStr(Round(drug_f.RxSpinEdit2.value)),
//          IntToStr(Round(drug_f.RxSpinEdit3.value))  );
//     end
//     else
//     begin
//          ShowMEssage('선택된 자료가 없습니다');
//     end;




//     end;



    // drug_f.Free;
    // drug_f := nil;
end;

procedure Twonwe_f.insertDrug(varCode:string; hoito, ilto,chongto:string);
begin

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga where su_key=:Code');
          ParamByName('Code').AsString := varCode;
          Open;
          First;
          if (FieldByName('su_gu3').AsString = '09') or
              (FieldByName('su_gu3').AsString = '10') then
          begin
               Wonwe_f.grdMain.AddRow;

               if copy(FieldByName('su_key').AsString, 1, 1) = '6' then
               begin
                    Wonwe_f.grdMain.Cells[1, Wonwe_f.grdMain.RowCount - 1] := '[' + FieldByName('su_key').AsString + ']' + FieldByName('su_kor_name').AsString;
               end
               else
               begin
                    Wonwe_f.grdMain.Cells[1, Wonwe_f.grdMain.RowCount - 1] := '[' + FieldByName('su_newcode').AsString + ']' + FieldByName('su_kor_name').AsString;
               end;
               Wonwe_f.grdMain.Cells[2, Wonwe_f.grdMain.RowCount - 1] := hoito;
               Wonwe_f.grdMain.Cells[3, Wonwe_f.grdMain.RowCount - 1] := ilto;
               Wonwe_f.grdMain.Cells[4, Wonwe_f.grdMain.RowCount - 1] := chongto;
               Wonwe_f.grdMain.Cells[5, Wonwe_f.grdMain.RowCount - 1] := FieldByName('su_key').AsString;
               Wonwe_f.grdMain.Cells[6, Wonwe_f.grdMain.RowCount - 1] := FieldByName('su_sobulru').AsString; // 퇴장방지의약품(장려금10%)
               Wonwe_f.grdMain.Cells[7, Wonwe_f.grdMain.RowCount - 1] := FieldByName('wo_dan').AsString;

               //dm_f.sqlWork1.Close;
               //dm_f.sqlWork1.SQL.Clear;
               //dm_f.sqlWork1.SQL.Add('select sung_code from sugadrug where su_key = :su_key');
               //dm_f.sqlWork1.ParamByName('su_key').AsString := FieldByName('su_key').AsString;
               //dm_f.sqlWork1.Open;
               //dm_f.sqlWork1.First;
               //if not isEmpty then  Wonwe_f.grdMain.Cells[7, Wonwe_f.grdMain.RowCount - 1].AsString := dm_f.sqlWork1.FieldByName('sung_code').AsString;

          end
          else
          begin

               Wonwe_f.grdJusa.AddRow;

               if copy(FieldByName('su_key').AsString, 1, 1) = '6' then
               begin
                    Wonwe_f.grdJusa.Cells[1, Wonwe_f.grdJusa.RowCount - 1] := '[' + FieldByName('su_key').AsString + ']' + FieldByName('su_kor_name').AsString;
               end
               else
               begin
                    Wonwe_f.grdJusa.Cells[1, Wonwe_f.grdJusa.RowCount - 1] := '[' + FieldByName('su_newcode').AsString + ']' + FieldByName('su_kor_name').AsString;
               end;
               Wonwe_f.grdJusa.Cells[2, Wonwe_f.grdJusa.RowCount - 1]:= hoito;
               Wonwe_f.grdJusa.Cells[3, Wonwe_f.grdJusa.RowCount - 1]:= Ilto;
               Wonwe_f.grdJusa.Cells[4, Wonwe_f.grdJusa.RowCount - 1]:= chongto;
               Wonwe_f.grdJusa.Cells[5, Wonwe_f.grdJusa.RowCount - 1]:= FieldByName('su_key').AsString;
               Wonwe_f.grdJusa.Cells[6, Wonwe_f.grdJusa.RowCount - 1]:= FieldByName('su_sobulru').AsString; // 퇴장방지의약품(장려금10%)
               Wonwe_f.grdJusa.Cells[7, Wonwe_f.grdJusa.RowCount - 1]:= FieldByName('wo_dan').AsString;
               //  Wonwe_f.grdJusa.Cells[7, Wonwe_f.grdMain.RowCount - 1].AsString := '';

          end;
     end;
end;


procedure Twonwe_f.btnOpenClick(Sender: TObject);
begin
     with dm_f.SqlTemp do
     begin
          WonweOpen_f := TWonweOpen_f.Create(application);
          dm_f.sqlTemp.Close;
          dm_f.sqlTemp.Sql.Clear;
          dm_f.sqlTemp.Sql.Add('select * from wonwe_p where chart=:Chart');
          dm_f.sqlTemp.ParamByName('chart').AsString := Wonwe_f.Edit1.Text;
          WonweOpen_f.Showmodal;
          WonweOpen_f.Free;
          WonweOpen_f := nil;
     end;
end;

function Twonwe_f.CancelDur: boolean;
var
     nResult: LongInt;
     strJumin, m_strPrscDd: string;
     varSCode: string;
begin

     result := false;
     if configvalue.varLoadDur <> '1' then
     begin
          result := false;
          exit;
     end;

     try
          m_strMprscType := 'M';
          if not Assigned(cancelJumgum_f) then
          begin
               cancelJumgum_f :=
                    TcancelJumgum_f.Create(application);
          end;

          cancelJumgum_f.cMprscType.Text := '처방';
          cancelJumgum_f.cJumin1.Text := main_f.edtjumin.text;
          cancelJumgum_f.cJumin2.Text := main_f.edtjumin2.text;
          cancelJumgum_f.cPrscDd.Text := formatdatetime('YYYYMMDD',
               wdateedit1.date);
          cancelJumgum_f.cPrscAdmSym.Text := configvalue.varYoyang;
          cancelJumgum_f.cGrantNo.Text := formatdatetime('YYYYMMDD',
               wdateedit1.date) + FormatFloat('00000', SpinEdit1.Value);
          cancelJumgum_f.ShowModal;

          if cancelJumgum_f.bOk then
          begin
               // ClearSGrid(stgLog);
               WriteLog('1', '점검취소', '점검취소 요청을 시작합니다.');

               strJumin := cancelJumgum_f.cJumin1.Text +
                    cancelJumgum_f.cJumin2.Text;
               //m_strPrscDd  := cancelJumgum_f.cPrscDd.Text;
               m_strPrscDd := StringReplace(cancelJumgum_f.cPrscDd.Text,
                    '-', '', [rfReplaceAll, rfIgnoreCase]);
               varSCode := substr(cancelJumgum_f.cReasonCd.Text, 1, '=');
               DurClient.AdminCode := configvalue.varYoyang;
               nResult := DurClient.MprscCancel(
                    m_strMprscType,
                    strJumin,
                    m_strPrscDd,
                    cancelJumgum_f.cPrscAdmSym.Text,
                    cancelJumgum_f.cGrantNo.Text,
                    varSCode,
                    cancelJumgum_f.cReasonMsg.Text,
                    cancelJumgum_f.cMakerCd.Text);

               if nResult = 0 then
               begin
                    szLog := '점검 취소 완료';
                    result := true;
               end
               else
               begin
                    result := false;
                    szLog := '점검 취소 실패[' + IntToStr(nResult) +
                         '] : ' + DurClient.LastErrorMsg;

                    WriteLog('2', '점검취소', szLog);
                    ShowMessage('01:' + szLog);
               end;
          end;
     except
          result := false;
          szLog := '점검 취소 실패 : ' + DurClient.LastErrorMsg;
          WriteLog('2', '점검취소', szLog);
          ShowMessage('02:' + szLog);
     end;
end;

procedure Twonwe_f.cbUseDurClick(Sender: TObject);
begin
     if (sender as TcheckBox).Checked = true then
     begin
          setDur(true);
          configvalue.saveValue('0302', '1', '처방전 발행시 DUR실행')
     end
     else
     begin
          setDur(false);
          configvalue.saveValue('0302', '0', '처방전 발행시 DUR실행');
     end;
     configvalue.LoadGlobalData_db;

end;

procedure Twonwe_f.setDur(varVisible: Boolean);
begin
     cbUseDur.checked := varVisible;
     pnlDurJumGum.Visible := varVisible;
     cboPrscClCd.Visible := varVisible;
     cboPatPrntWmnYn.Visible := varVisible;
     lblimbu.Visible := varVisible;
end;


procedure Twonwe_f.btnSaveClick(Sender: TObject);
var
     i, jOrder, nMerit: Integer;
     path: string;
     FormInit: TIniFile;
begin
     if Edit1.Text <> '' then
     begin
          with dm_f.SqlTemp do
          begin
               for i := 0 to Todaynos.Count - 1 do
               begin
                    if IntToStr(Round(SpinEdit1.Value)) =
                         TodayNos.Items.Strings[i] then
                    begin
                         ShowMessage('처방전교부번호가 중복되었습니다');
                         Exit;
                    end;
               end;
               Close;
               Sql.Clear;
               if cbNewOrder.Checked then {//New}
               begin
                    //jin_day,chart,kwamok,dup,seqno,name,jumin,jinryosil,doc_code,jongbeul,jin_time,sendkey,chojae,sunap,expiration,memo,gub_gu,sang1,sang2
                    Sql.Add('insert into wonwe_p (jin_day,chart,kwamok,dup');
                    sql.Add(',seqno, name,jumin,jinryosil,doc_code,jongbeul,jin_time , doc_name, myunhu');
                    sql.Add(', sendkey, chojae,sunap,expiration,yongbub');
                    Sql.Add(',memo,gub_gu,sang1,sang2, tjungcode, tjungNeyuk) values');
                    sql.Add(' (:jin_day,:chart,:kwamok,:dup,:seqno,:name,:jumin,:jinryosil,');
                    sql.Add(':doc_code,:jongbeul,:jin_time, :doc_name, :myunhu, :sendkey,:chojae,');
                    sql.Add(':sunap,:expiration,:yongbub,:memo,:gub_gu,:sang1,:sang2,:tjungcode, :tjungNeyuk)');
               end
               else
               begin
                    if (Edit5.Text = intToStr(Round(SpinEdit1.Value))) then
                    begin
                         Sql.Add('update wonwe_p set chart=:Chart,kwamok=:kwamok, ');
                         sql.Add('  dup=:Dup,seqno=:seqno,name=:name,jumin=:jumin,');
                         sql.Add(' jinryosil=:jinryosil, tjungcode=:tjungcode, tjungNeyuk =:tjungNeyuk, ');
                         Sql.Add(' doc_code=:doc_code,jongbeul=:jongbeul, doc_name=:doc_name, myunhu=:myunhu,');
                         sql.Add(' jin_time=:jin_time,sendkey=:sendkey,chojae=:chojae,');
                         sql.Add(' sunap=:sunap,expiration=:expiration,memo=:memo,');
                         sql.Add(' gub_gu=:gub_gu,sang1=:sang1,sang2=:sang2,yongbub=:yongbub');
                         Sql.Add('where jin_day=:Jin_day and seqno=:Seqno');
                    end
                    else
                    begin
                         Sql.Add('update wonwe_p set seqno=:seqno,kwamok=:kwamok,');
                         sql.Add(' dup=:Dup,name=:name,jumin=:jumin,jinryosil=:jinryosil, doc_name=:doc_name, myunhu=:myunhu,');
                         Sql.Add('doc_code=:doc_code,jongbeul=:jongbeul, tjungcode=:tjungcode, tjungNeyuk =:tjungNeyuk, ');
                         sql.Add(' jin_time=:jin_time,sendkey=:sendkey,chojae=:chojae, ');
                         sql.Add(' sunap=:sunap,expiration=:expiration,memo=:memo, ');
                         sql.Add(' gub_gu=:gub_gu,sang1=:sang1,sang2=:sang2,yongbub=:yongbub');
                         Sql.Add('where jin_day=:Jin_day and chart=:chart');
                    end;

               end;

               ParamByName('jin_day').AsString :=
                    FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
               ParamByName('chart').AsString := Edit1.Text;
               ParamByName('kwamok').AsString := '';
               ParamByName('dup').AsString := '';
               ParamByName('seqno').AsString :=
                    IntToStr(Round(SpinEdit1.value));
               ParamByName('name').AsString := ma_Paname;//jinryo_f.Varname;
               ParamByName('jumin').AsString := ma_jumin;//jinRyo_f.varJuminNo;
               ParamByName('doc_name').asString := edtDoc.text;
               ParamByName('myunhu').AsString :=  edtMyunhu.Text;
               ParamByName('yongbub').AsString := Memo1.Text;

               {if dstandard_f.cmbJongbeul.itemindex >= 0 then
               begin
                   ParamByName('jongbeul').AsString := IntToStr(dstandard_f.cmbJongbeul.itemindex);
               end
               else
               begin
                   ParamByName('jongbeul').AsString := '3';
               end;  }

               //2005/=.02.28 고쳐달래서
               if RadioButton1.Checked then
                    ParamByName('jongbeul').AsString := '1'
               else
                    if RadioButton2.Checked then
                    begin
                         ParamByName('jongbeul').AsString := '2'
                    end
                    else
                         if RadioButton5.Checked then
                              ParamByName('jongbeul').AsString := '4'
                         else
                              ParamByName('jongbeul').AsString := '1';

               ParamByName('jin_time').AsString := '';
               ParamByName('sendkey').AsString := 'Y';
               if assigned(jinryo_f) then

                   ParamByName('chojae').AsString := inttostr(jinryo_f.cbChoje.itemindex)
               else
                     ParamByName('chojae').AsString := inttostr(main_f.cbChoje.itemindex) ;
//
//               if Jinryo_f.cbChoje.itemindex >= 0 then
//               begin
//                    ParamByName('chojae').AsString := ma_jongbeul;
//                       //  IntToStr(Jinryo_f.cbChoje.itemindex);
//               end
//               else
//               begin
//                    ParamByName('chojae').AsString := '3';
//               end;

               ParamByName('sunap').AsString      := '';
               ParamByName('expiration').AsString :=  IntToStr(Round(RxSpinEdit1.Value));
               ParamByName('memo').AsString       := Memo2.Text;
               ParamByName('gub_gu').AsString     := '';
               ParamByName('sang1').AsString      := Edit3.Text;
               ParamByName('sang2').AsString      := Edit4.Text;
               ParamByName('tjungCode').AsString  := combobox2.Text;
               ParamByName('tjungNeyuk').AsString := Edit6.Text;
               ParamByName('doc_name').AsString   := edtDoc.Text;
               ParamByName('myunhu').AsString     := edtMyunhu.Text;
               ExecSql;

          end;

          with dm_f.SqlTemp do
          begin
               {      //아래에서 퇴장방지 가산금 저장하기 위해서 먼저 있는것 청소
                  //주의할점 : jinryo_s의 가산금만 있는 jinryo_o도 같이 삭제 해야한다.
                 Close;
                 Sql.Clear;
                 Sql.Add('select iorder from jinryo_s where chart=:chart and jin_day=:jin_day and su_gu1=''0''');
                 ParamByName('chart').AsString := Edit1.Text;
                 ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                 Open;
                 First;
                 if not isEmpty then
                 begin
                     if FieldByName('iorder').AsString <> '' then
                         jOrder := FieldByName('iorder').AsInteger else jOrder := 0;
                 end
                 else
                 begin
                     jOrder := 0;
                 end;
                 if jOrder > 0 then //가산금을 물고 있는 Iorder
                 begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select * from jinryo_s where chart=:chart and jin_day=:jin_day and Iorder=:IOrder and su_gu1<>''0''');
                     ParamByName('chart').AsString := Edit1.Text;
                     ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                     ParamByName('IOrder').AsString := IntToStr(jOrder);
                     Open;
                     First;
                     if isEmpty then //가산금만 그 Iorder에 있음
                     begin
                          //jinryo_o를 삭제하고

                         dm_f.SqlYeyak.close;
                         dm_f.SqlYeyak.sql.Clear;
                         dm_f.SqlYeyak.Sql.Add('delete from jinryo_o where chart=:chart and jin_day=:jin_day and jin_order=:JinOrder');
                         dm_f.SqlYeyak.ParamByName('chart').AsString := Edit1.Text;
                         dm_f.SqlYeyak.ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                         dm_f.SqlYeyak.ParamByName('JinOrder').AsString := IntToStr(jOrder);
                         dm_f.SqlYeyak.ExecSql;

                         dm_f.SqlYeyak.close;
                         dm_f.SqlYeyak.Sql.Clear;
                         dm_f.SqlYeyak.Sql.Add('update jinryo_o set jin_order=jin_order-1  where chart=:chart and jin_day=:jin_day and jin_order<:JinOrder');
                         dm_f.SqlYeyak.ParamByName('chart').AsString := Edit1.Text;
                         dm_f.SqlYeyak.ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                         dm_f.SqlYeyak.ParamByName('JinOrder').AsString := IntToStr(jOrder);
                         dm_f.SqlYeyak.ExecSql;

                         dm_f.SqlYeyak.close;
                         dm_f.SqlYeyak.Sql.Clear;
                         dm_f.SqlYeyak.Sql.Add('update jinryo_s set Iorder=Iorder-1  where chart=:chart and jin_day=:jin_day and Iorder<:JinOrder');
                         dm_f.SqlYeyak.ParamByName('chart').AsString := Edit1.Text;
                         dm_f.SqlYeyak.ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                         dm_f.SqlYeyak.ParamByName('JinOrder').AsString := IntToStr(jOrder);
                         dm_f.SqlYeyak.ExecSql;
                     end;

                 end;

                 Close;
                 Sql.Clear;
                 Sql.Add('delete from jinryo_s where chart=:chart and jin_day=:jin_day and su_gu1=''0''');
                 ParamByName('chart').AsString := Edit1.Text;
                 ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                 ExecSql;

                 //퇴장방지 가산금 저장시키기 위해 jinryo_o 정리
                 jOrder := 0;
                 Close;
                 Sql.Clear;
                 Sql.Add('select * from jinryo_o where chart=:chart and jin_day=:jin_day order by jin_order');
                 ParamByName('chart').AsString := Edit1.Text;
                 ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                 Open;
                 if not isEmpty then
                 begin
                 //일반적인 경우(jinryo_o가 이미 존재 하는 경우)
                     if FieldByName('jin_order').AsString <> '' then
                         jOrder := FieldByName('jin_order').AsInteger else jOrder := 0;
                 end
                 else
                 begin
                     //첨으로 입력할경우엔 jinryo_o가 없다.
                     jOrder := 0;
                 end;

                 jOrder := jOrder + 1; //저 밑에서 새로운 Order 생성
                 nMerit := 0; //저가가산금이 지금 처방에 들어 있나 체크하는 함수(for loop에서 찾는다)

                        }

               Close;
               Sql.Clear;
               Sql.Add('delete from wonwe_s where jin_day=:Jin_day and seqno=:seqno');
               ParamByName('jin_day').AsString :=
                    FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
               ParamByName('seqno').AsString :=
                    IntToStr(Round(SpinEdit1.value));
               ExecSql;
               if grdMain.RowCount > 1 then
                    for I := 1 to grdmain.RowCount - 1 do
                    begin
                         Close;
                         Sql.Clear;
                         //jin_day,seqno,seq,code,jin_qty,div ,jin_ilsu,su_gu2, su_gu3, yongbub,  jin_check
                         Sql.Add('insert into wonwe_s (jin_day,seqno,seq,code,jin_qty,div ,jin_ilsu,su_gu2, su_gu3,yongbub,jin_check, tjungcode, tjungNeyuk)');
                         Sql.Add(' values (:jin_day,:seqno,:seq,:code,:jin_qty,:div ,:jin_ilsu,:su_gu2, :su_gu3, :yongbub,  :jin_check, :tjungcode, :tjungNeyuk)');

                         ParamByName('jin_day').AsString :=
                              FormatDateTime('yyyy-mm-dd',
                              wDateEdit1.Date);
                         ParamByName('seqno').AsString :=
                              IntToStr(Round(SpinEdit1.value));
                         ParamByName('seq').AsString := IntToStr(i);
                         ParamByName('code').AsString := grdmain.Cells[5, i];
                         ParamByName('jin_qty').AsString := grdmain.Cells[2, i];
                         ParamByName('div').AsString := grdmain.Cells[3, i];
                         ParamByName('jin_ilsu').AsString := grdmain.Cells[4, i];
                         ParamByName('su_gu2').AsString := '';
                         ParamByName('su_gu3').AsString := '';
                         ParamByName('yongbub').AsString := '';

                         if RadioButton5.Checked then
                              ParamByName('jin_check').AsString := '1'
                         else
                              ParamByName('jin_check').AsString := '';

                         ParamByName('tjungCode').AsString := grdmain.Cells[9, i];
                         ParamByName('tjungNeyuk').AsString := grdmain.Cells[10, i];



                         ExecSql;

                         { if grdmain.Cells[5, i].AsString = '9' then //퇴장방지의약품 장려금 주자
                          begin
                              nMerit := nMerit + 1;
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into jinryo_s (chart,jin_day,su_key,su_kor_name,jin_ilsu,jin_simya,jin_soa,jin_danga,g_check,group_key,sort_key,su_gu1,su_gu3,jin_qty,div,dan_qty,iorder) ');
                              Sql.Add('values (:chart,:jin_day,:su_key,:su_kor_name,:jin_ilsu,:jin_simya,:jin_soa,:jin_danga,:g_check,:group_key,:sort_key,:su_gu1,:su_gu3,:jin_qty,:div,:dan_qty,:iorder)');
                              ParamByName('chart').AsString := Edit1.Text;
                              ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                              ParamByName('su_key').AsString := grdmain.Cells[4, i].AsString;
                              ParamByName('su_kor_name').AsString := grdmain.Cells[0, i].AsString;
                              ParamByName('jin_ilsu').AsString := grdmain.Cells[3, i].AsString;
                              ParamByName('jin_simya').AsString := '';
                              ParamByName('jin_soa').AsString := '';
                              ParamByName('jin_danga').AsString := grdmain.Cells[6, i].AsString;
                              ParamByName('g_check').AsString := 'S';
                              ParamByName('group_key').AsString := '';
                              ParamByName('sort_key').AsString := IntToStr(i);
                              ParamByName('su_gu1').AsString := '0';
                              ParamByName('su_gu3').AsString := '09';
                              ParamByName('jin_qty').AsString := grdmain.Cells[1, i].AsString;
                              ParamByName('div').AsString := grdmain.Cells[2, i].AsString;
                              ParamByName('dan_qty').AsString := '1';
                              ParamByName('iorder').AsString := IntToStr(jOrder);
                              ExecSql;
                          end;   }
                    end;
               if grdJusa.RowCount > 1 then
                    for I := 1 to grdJusa.RowCount - 1 do
                    begin
                         Close;
                         Sql.Clear;
                         //jin_day,seqno,seq,code,jin_qty,div ,jin_ilsu,su_gu2, su_gu3, yongbub,  jin_check
                         Sql.Add('insert into wonwe_s (jin_day,seqno,seq,code,jin_qty,div ,jin_ilsu,su_gu2, su_gu3,yongbub,jin_check, tjungcode, tjungNeyuk)');
                         Sql.Add(' values (:jin_day,:seqno,:seq,:code,:jin_qty,:div ,:jin_ilsu,:su_gu2, :su_gu3, :yongbub,  :jin_check, :tjungcode, :tjungNeyuk)');

                         ParamByName('jin_day').AsString :=
                              FormatDateTime('yyyy-mm-dd',
                              wDateEdit1.Date);
                         ParamByName('seqno').AsString :=
                              IntToStr(Round(SpinEdit1.value));
                         ParamByName('seq').AsString := '9' + IntToStr(i);
                         ParamByName('code').AsString := grdJusa.Cells[5, i];
                         ParamByName('jin_qty').AsString := grdJusa.Cells[2, i];
                         ParamByName('div').AsString := grdJusa.Cells[3, i];
                         ParamByName('jin_ilsu').AsString := grdJusa.Cells[4, i];
                         ParamByName('su_gu2').AsString := '';
                         ParamByName('su_gu3').AsString := '';
                         ParamByName('yongbub').AsString := '';
                         if RadioButton5.Checked then
                              ParamByName('jin_check').AsString := '1'
                         else
                              ParamByName('jin_check').AsString := '';
                         if RadioButton7.checked then
                              ParamByName('jin_check').AsString := '1'
                         else
                              ParamByName('jin_check').AsString := '';

                           ParamByName('tjungCode').AsString := grdJusa.Cells[8, i];
                         ParamByName('tjungNeyuk').AsString := grdJusa.Cells[9, i];

                         ExecSql;

                         { if grdJusa.Cells[5, i].AsString = '9' then //퇴장방지의약품 장려금 주자
                          begin
                              nMerit := nMerit + 1;
                              Close;
                              Sql.Clear;
                              Sql.Add('insert into jinryo_s (chart,jin_day,su_key,su_kor_name,jin_ilsu,jin_simya,jin_soa,jin_danga,g_check,group_key,sort_key,su_gu1,su_gu3,jin_qty,div,dan_qty,iorder) ');
                              Sql.Add('values (:chart,:jin_day,:su_key,:su_kor_name,:jin_ilsu,:jin_simya,:jin_soa,:jin_danga,:g_check,:group_key,:sort_key,:su_gu1,:su_gu3,:jin_qty,:div,:dan_qty,:iorder)');
                              ParamByName('chart').AsString := Edit1.Text;
                              ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                              ParamByName('su_key').AsString := grdJusa.Cells[4, i].AsString;
                              ParamByName('su_kor_name').AsString := grdJusa.Cells[0, i].AsString;
                              ParamByName('jin_ilsu').AsString := grdJusa.Cells[3, i].AsString;
                              ParamByName('jin_simya').AsString := '';
                              ParamByName('jin_soa').AsString := '';
                              ParamByName('jin_danga').AsString := grdJusa.Cells[6, i].AsString;
                              ParamByName('g_check').AsString := 'S';
                              ParamByName('group_key').AsString := '';
                              ParamByName('sort_key').AsString := IntToStr(i);
                              ParamByName('su_gu1').AsString := '0';
                              ParamByName('su_gu3').AsString := '09';
                              ParamByName('jin_qty').AsString := grdJusa.Cells[1, i].AsString;
                              ParamByName('div').AsString := grdJusa.Cells[2, i].AsString;
                              ParamByName('dan_qty').AsString := '1';
                              ParamByName('iorder').AsString := IntToStr(jOrder);
                              ExecSql;
                          end;  }
                    end;

               { if nMerit > 0 then //저가가산금이 s에 들어 갔으면 o도 넣야지
                begin
                    Close;
                    Sql.Clear;
                    Sql.Add('insert into jinryo_o (chart,jin_day,jin_order,p1,p2,p3,p4,s_key1,s_key2,s_key3,kwamok,sang1,sang2,sang3)');
                    Sql.Add('values (:chart,:jin_day,:jin_order,'''','''','''','''',:s_key1,:s_key2,'''',''55'',:sang1,:sang2,'''')');
                    ParamByName('chart').AsString := Edit1.Text;
                    ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                    ParamByName('s_key1').AsString := Edit3.Text;
                    ParamByName('s_key2').AsString := Edit4.Text;
                    ParamByName('sang1').AsString := grdSang.Cells[5, 0].AsString;
                    ParamByName('sang2').AsString := grdSang.Cells[5, 1].AsString;
                    ParamByName('jin_order').AsString := IntToStr(jOrder);
                    ExecSql;
                end;  }

          end;

          btnSave.Enabled := False;

          Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
          FormInit := TIniFile.Create(Path);
          if FormInit.ReadString('기타정보', 'CHART', '0') = '1' then
          begin
               ChartSave;
          end;
          FormInit.free;

          //showmessage('저장되었습니다');

  // if durJumgum = false then
  //        exit;

     end;

end;

procedure Twonwe_f.ChartSave;
var
     dtx, maxOrderNo: string;
begin
     //Chart_s에 저장

     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('SELECT jin_qty, div, jin_ilsu, suga.su_kor_name AS SuName,');
          Sql.Add('(SELECT   MAX(CONVERT(int, nOrd, 120)) + 1 ');
          Sql.Add(' FROM  ma_chart_s where chart=:chart and jin_day=:jin_Day) AS MAXORD         ');
          Sql.Add('FROM      wonwe_s INNER JOIN          ');
          Sql.Add('wonwe_p ON wonwe_s.jin_day = wonwe_p.jin_day AND   ');
          Sql.Add('wonwe_s.seqno = wonwe_p.seqno INNER JOIN     ');
          Sql.Add('suga ON wonwe_s.code = suga.su_key            ');
          Sql.Add('where chart=:chart');
          ParamByName('chart').AsString := Edit1.Text;
          ParamByName('jin_day').AsString := formatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          open;
          if not isEmpty then
               while not eof do
               begin
                    dtx := dtx + ', ' + fieldByName('suName').AsString +
                         '('
                         + fieldByName('jin_qty').AsString + ' ,'
                         + fieldByName('Div').AsString + ' ,'
                         + fieldByName('jin_ilsu').AsString + ')';
                    if FieldByName('MAXORD').AsString <> '' then
                         MaxorderNo := FieldByName('MAXORD').AsString
                    else
                         MaxorderNo := '1';

                    next;
               end;

          Close;
          Sql.Clear;
          Sql.Add('select * from ma_chart_s ');
          Sql.Add('where jin_day=:Jin_day and portion=:seqno');
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          ParamByName('seqno').AsString := 'RX' +
               IntToStr(Round(SpinEdit1.value));
          open;
          if isEmpty then
          begin

               Close;
               Sql.Clear;
               Sql.Add('insert into ma_chart_s');
               Sql.Add('(chart,jin_day,chart_id,code,descript,portion,nOrd, Doctor, Hygine) values ');
               Sql.Add('(:chart,:jin_day,:chart_id,:code,:descript,:portion,:nOrd,:Doctor, :Hygine)');
               ParamByName('chart').AsString := Edit1.Text;
               ParamByName('chart_id').AsString := '0';
               ParamByName('jin_day').AsString :=
                    formatDateTime('yyyy-mm-dd', wDateEdit1.Date);
               ParamByName('code').AsString := 'Rx.';
               ParamByName('descript').AsString := '처방:' + dtx;
               ParamByName('portion').AsString := 'RX' +
                    IntToStr(Round(SpinEdit1.value));
               ParamByName('nOrd').AsString := maxOrderNo;
               ParamByName('Doctor').AsString :=  edtDoc.text;//cbDoc.text;
               ParamByName('Hygine').AsString := '';
               ExecSQL;

          end
          else
          begin
               Close;
               Sql.Clear;
               Sql.Add('update ma_chart_s set');
               Sql.Add('descript=:Descript,portion=:Portion,');
               Sql.Add('Doctor=:Doctor');
               Sql.Add('where jin_day=:Jin_day and portion=:seqno');
               ParamByName('jin_day').AsString :=
                    FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
               ParamByName('seqno').AsString := 'RX' +
                    IntToStr(Round(SpinEdit1.value));
               ParamByName('descript').AsString := '처방:' + dtx;
               ParamByName('portion').AsString := 'RX' +
                    IntToStr(Round(SpinEdit1.value));
               ParamByName('Doctor').AsString :=  edtDoc.text;//cbDoc.text;
               ExecSQL;
          end;
     end;
end;

procedure Twonwe_f.ChartDelete;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('delete from ma_chart_s ');
          Sql.Add('where jin_day=:Jin_day and portion=:seqno');
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          ParamByName('seqno').AsString := 'RX' +
               IntToStr(Round(SpinEdit1.value));
          ExecSql;
     end;
end;

procedure Twonwe_f.btnDeleteClick(Sender: TObject);
var
     jOrder: Integer;
     FormInit: TIniFile;
     path: string;
begin
     if configvalue.varLoadDur = '1' then
     begin
          if CancelDur = false then
               exit;
     end;

     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('delete from wonwe_p ');
          Sql.Add('where jin_day=:Jin_day and seqno=:Seqno');
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          ParamByName('seqno').AsString := IntToStr(Round(SpinEdit1.value));
          ExecSql;
          Close;
          Sql.Clear;
          Sql.Add('delete from wonwe_s ');
          Sql.Add('where jin_day=:Jin_day and seqno=:Seqno');
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          ParamByName('seqno').AsString := IntToStr(Round(SpinEdit1.value));
          ExecSql;
          //퇴장방지 남아있는거 모두 삭제
          Close;
          Sql.Clear;
          Sql.Add('select iorder from jinryo_s where chart=:chart and jin_day=:jin_day and su_gu1=''0''');
          ParamByName('chart').AsString := Edit1.Text;
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          Open;
          First;
          if not isEmpty then
          begin
               if FieldByName('iorder').AsString <> '' then
                    jOrder := FieldByName('iorder').AsInteger
               else
                    jOrder := 0;
          end
          else
          begin
               jOrder := 0;
          end;
          if jOrder > 0 then {//가산금을 물고 있는 Iorder}
          begin
               Close;
               Sql.Clear;
               Sql.Add('select * from jinryo_s where chart=:chart and jin_day=:jin_day and Iorder=:IOrder and su_gu1<>''0''');
               ParamByName('chart').AsString := Edit1.Text;
               ParamByName('jin_day').AsString :=
                    FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
               ParamByName('IOrder').AsString := IntToStr(jOrder);
               Open;
               First;
               if isEmpty then {//가산금만 그 Iorder에 있음}
               begin
                    //jinryo_o를 삭제하고

                    dm_f.SqlWork.close;
                    dm_f.SqlWork.sql.Clear;
                    dm_f.SqlWork.Sql.Add('delete from jinryo_o where chart=:chart and jin_day=:jin_day and jin_order=:JinOrder');
                    dm_f.SqlWork.ParamByName('chart').AsString :=
                         Edit1.Text;
                    dm_f.SqlWork.ParamByName('jin_day').AsString :=
                         FormatDateTime('yyyy-mm-dd',
                         wDateEdit1.Date);
                    dm_f.SqlWork.ParamByName('JinOrder').AsString :=
                         IntToStr(jOrder);
                    dm_f.SqlWork.ExecSql;

                    dm_f.SqlWork.close;
                    dm_f.SqlWork.Sql.Clear;
                    dm_f.SqlWork.Sql.Add('update jinryo_o set jin_order=jin_order-1  where chart=:chart and jin_day=:jin_day and jin_order<:JinOrder');
                    dm_f.SqlWork.ParamByName('chart').AsString :=
                         Edit1.Text;
                    dm_f.SqlWork.ParamByName('jin_day').AsString :=
                         FormatDateTime('yyyy-mm-dd',
                         wDateEdit1.Date);
                    dm_f.SqlWork.ParamByName('JinOrder').AsString :=
                         IntToStr(jOrder);
                    dm_f.SqlWork.ExecSql;

                    dm_f.SqlWork.close;
                    dm_f.SqlWork.Sql.Clear;
                    dm_f.SqlWork.Sql.Add('update jinryo_s set Iorder=Iorder-1  where chart=:chart and jin_day=:jin_day and Iorder<:JinOrder');
                    dm_f.SqlWork.ParamByName('chart').AsString :=
                         Edit1.Text;
                    dm_f.SqlWork.ParamByName('jin_day').AsString :=
                         FormatDateTime('yyyy-mm-dd',
                         wDateEdit1.Date);
                    dm_f.SqlWork.ParamByName('JinOrder').AsString :=
                         IntToStr(jOrder);
                    dm_f.SqlWork.ExecSql;
               end;

          end;

          Close;
          Sql.Clear;
          Sql.Add('delete from jinryo_s where chart=:chart and jin_day=:jin_day and su_gu1=''0''');
          ParamByName('chart').AsString := Edit1.Text;
          ParamByName('jin_day').AsString := FormatDateTime('yyyy-mm-dd',
               wDateEdit1.Date);
          ExecSql;

          Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
          FormInit := TIniFile.Create(Path);
          if FormInit.ReadString('기타정보', 'CHART', '0') = '1' then
          begin
               chartDelete;
          end;
          FormInit.free;

          ShowMessage('삭제되었습니다');

     end;
     close;
end;

procedure Twonwe_f.btnPrintClick(Sender: TObject);
var
     WPath: string;
     bReturn: Boolean;
begin
       if trim(ma_jumin) = '' then
     begin

          if Application.MessageBox('주민번호부재로 DUR점검이 안됩니다.' + #10#13 +
               '처방전을 발행하시겠습니까?', '확인', MB_OKCANCEL)
               = 1 then
          begin

          end
          else
          begin
               exit;
          end;

     end;


     if durJumgum = false then
     begin
          exit;
     end;



  //
  // TODO : 이미 저장 되었다......
  //   btnSaveClick(self); //저장먼저하공

     InitFastReport(); // FastReport 속성 Setting...

     WPath := ExtractFilePath(Application.ExeName) + 'print\';
     frxReport.LoadFromFile(WPath + 'rptWonwe.fr3');

//     FastReportChangeFontCharset( frxReport);//,HANGEUL_CHARSET );



     DataToPrintForm();

     if checkbox1.checked then
     begin
         if checkbox2.Checked then
          begin
            frxReport.Variables['Use'] := QuotedStr('[약국제출용]');

            frxReport.ShowReport();
          end;
          if checkbox3.Checked then
          begin
            frxReport.Variables['Use'] := QuotedStr('[환자보관용]');

            frxReport.ShowReport();
          end;
     end
     else
     begin
          if checkbox2.Checked then
          begin
               frxReport.Variables['Use'] := QuotedStr('[약국제출용]');

               frxReport.PrepareReport();
               bReturn := frxReport.Print();
               if (bReturn = False) then
                    ShowMessage('[약국제출용] - 인쇄실패!!');
          end;

          if checkbox3.Checked then
          begin
               frxReport.Variables['Use'] := QuotedStr('[환자보관용]');
               frxReport.PrepareReport();
               bReturn := frxReport.Print();
               if (bReturn = False) then
                    ShowMessage('[환자보관용] - 인쇄실패!!');
          end;

     end;

     Close();
end;

procedure Twonwe_f.spSkinButton6Click(Sender: TObject);
begin
     Close;
end;

procedure Twonwe_f.BitBtn3Click(Sender: TObject);
begin
     Memo1.Clear;
end;

procedure Twonwe_f.BitBtn4Click(Sender: TObject);
begin
     Memo2.Clear;
end;

procedure Twonwe_f.K040Click(Sender: TObject);
var
     sCode, sname: string;
     YRow: Integer;
begin
     sCode := Copy((Sender as TMenuItem).Name, 1, 7); //+ '.' + Copy((Sender as
     //   TMenuItem).Name, 4, 1);
// sName := Trim(Copy((Sender as TMenuItem).Caption, 6, 100));
     sName := Trim(Copy((Sender as TMenuItem).Caption, 8, 100));

     if grdSang.Row >= 0 then
          YRow := grdSang.Row
     else
          YRow := 0;
     grdSang.Cells[1, yRow] := Trim(sCode);
     grdSang.Cells[2, yRow] := sName;

     if YRow = 0 then
     begin
          Wonwe_f.Edit3.Text := sCode;
     end
     else
     begin
          Wonwe_f.Edit4.Text := sCode;
     end;

end;

procedure Twonwe_f.N11Click(Sender: TObject);
begin
     Sangseek_f := TSangseek_f.Create(application);
     Sangseek_f.gsgubn := '5';
     Sangseek_f.edtSearch.Text := IntToStr(grdSang.Row);
     Sangseek_f.Showmodal;
     Sangseek_f.Free;
     Sangseek_f := nil;
end;

procedure Twonwe_f.FormDestroy(Sender: TObject);
var
     Path: string;
     FormInit: TiniFile;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteString('기타정보', '처방전유효기간',
          FloatToStr(RxSpinEdit1.Value));
     if checkBox3.Checked then
          FormInit.WriteString('기타정보', '처방전발급매수', '2')
     else
          FormInit.WriteString('기타정보', '처방전발급매수', '1');
     Forminit.Free;
end;

procedure Twonwe_f.spSkinButton7Click(Sender: TObject);
var
     strProgram: string;
     strName1: string;
     strName2: string;
     strName31: string;
     strName32: string;
     strName33: string;
     strName41: string; //상병1
     strName42: string; //상병2
     strName101, strName102, strName103, strName104: string;
     strName111, strName112, strName113, strName114: string;
     strName121, strName122, strName123, strName124: string;
     strName131, strName132, strName133, strName134: string;
     strName141, strName142, strName143, strName144: string;
     strName151, strName152, strName153, strName154: string;
     strName161, strName162, strName163, strName164: string;
     strName201, strName202, strName203, strName204: string;
     strName211, strName212, strName213, strName214: string;
     strName221, strName222, strName223, strName224: string;
begin

     btnSaveClick(self); //저장먼저하공

     strName31 := '';
     strName32 := '0';
     strName33 := '0';
     if checkbox2.Checked then
     begin
          strName31 := '1' //약국제출용
     end;
     if checkbox3.Checked then
     begin
          strName32 := '1' //환자보관용
     end;

     if RadioButton1.Checked then
     begin
          strName33 := '1'; //종별구분
     end;
     if RadioButton2.Checked then
     begin
          strName33 := '2';
     end;
     if RadioButton3.Checked then
     begin
          strName33 := '3';
     end;
     if RadioButton4.Checked then
     begin
          strName33 := '4';
     end;
     if RadioButton5.Checked then
     begin
          strName33 := '5';
     end;

     strName41 := grdSang.Cells[1, 0];
     strName42 := grdSang.Cells[1, 1];

     strName101 := '';
     strName102 := '';
     strName103 := '';
     strName104 := '';
     strName111 := '';
     strName112 := '';
     strName113 := '';
     strName114 := '';
     strName121 := '';
     strName122 := '';
     strName123 := '';
     strName124 := '';
     strName131 := '';
     strName132 := '';
     strName133 := '';
     strName134 := '';
     strName141 := '';
     strName142 := '';
     strName143 := '';
     strName144 := '';
     strName151 := '';
     strName152 := '';
     strName153 := '';
     strName154 := '';
     strName161 := '';
     strName162 := '';
     strName163 := '';
     strName164 := '';
     strName201 := '';
     strName202 := '';
     strName203 := '';
     strName204 := '';
     strName211 := '';
     strName212 := '';
     strName213 := '';
     strName214 := '';
     strName221 := '';
     strName222 := '';
     strName223 := '';
     strName224 := '';

     if grdmain.RowCount >= 1 then
     begin
          strName101 := grdmain.Cells[1, 1];
          //'[' + grdmain.Cells[4, 0].AsString + ']' + grdmain.Cells[0, 0].AsString;
          strName102 := FormatFloat('##0.#', grdmain.ints[2, 1]);
          strName103 := grdmain.Cells[3, 1];
          strName104 := grdmain.Cells[4, 1];
     end;
     if grdmain.RowCount >= 2 then
     begin
          strName111 := grdmain.Cells[1, 2];
          strName112 := FormatFloat('##0.#', grdmain.ints[2, 2]);
          strName113 := grdmain.Cells[3, 2];
          strName114 := grdmain.Cells[4, 2];
     end;
     if grdmain.RowCount >= 3 then
     begin
          strName121 := grdmain.Cells[1, 3];
          strName122 := FormatFloat('##0.#', grdmain.ints[2, 3]);
          strName123 := grdmain.Cells[3, 3];
          strName124 := grdmain.Cells[4, 3];
     end;
     if grdmain.RowCount >= 4 then
     begin
          strName131 := grdmain.Cells[1, 4];
          strName132 := FormatFloat('##0.#', grdmain.ints[2, 4]);
          strName133 := grdmain.Cells[3, 4];
          strName134 := grdmain.Cells[4, 4];
     end;
     if grdmain.RowCount >= 5 then
     begin
          strName141 := grdmain.Cells[1, 5];
          strName142 := FormatFloat('##0.#', grdmain.ints[2, 5]);
          strName143 := grdmain.Cells[3, 5];
          strName144 := grdmain.Cells[4, 5];
     end;
     if grdmain.RowCount >= 6 then
     begin
          strName151 := grdmain.Cells[1, 6];
          strName152 := FormatFloat('##0.#', grdmain.ints[2, 6]);
          strName153 := grdmain.Cells[3, 6];
          strName154 := grdmain.Cells[4, 6];
     end;
     if grdmain.RowCount >= 7 then
     begin
          strName161 := grdmain.Cells[1, 7];
          strName162 := FormatFloat('##0.#', grdmain.ints[2, 7]);
          strName163 := grdmain.Cells[3, 7];
          strName164 := grdmain.Cells[4, 7];
     end;

     if grdJusa.RowCount >= 1 then
     begin
          strName201 := grdJusa.Cells[1, 1];
          strName202 := grdJusa.Cells[2, 1];
          strName203 := grdJusa.Cells[3, 1];
          strName204 := grdJusa.Cells[4, 1];
     end;
     if grdJusa.RowCount >= 2 then
     begin
          strName211 := grdJusa.Cells[1, 2];
          strName212 := grdJusa.Cells[2, 2];
          strName213 := grdJusa.Cells[3, 2];
          strName214 := grdJusa.Cells[4, 2];
     end;
     if grdJusa.RowCount >= 3 then
     begin
          strName221 := grdJusa.Cells[1, 3];
          strName222 := grdJusa.Cells[2, 3];
          strName223 := grdJusa.Cells[3, 3];
          strName224 := grdJusa.Cells[4, 3];
     end;

     strProgram := ExtractFileDir(Application.ExeName) + '\Ceiprt.exe';
     strName2 := StringReplace(jinryo_f.varname, ' ', '', [rfReplaceAll]);
     //환자이름
//처방의뢰인, 종별구분 , 면허번호 ,주민번호, 가입자명,사업장기호, 증번호,교부년월,교부번호
//병원명,  전화번호 ,팩스번호 ,메일번호,요양기호 ,약국제출, 환자보관 ,상병1, 상병2, 약내역(7개), 주사내역(3개) ,사용기간,챠트번호,환자성명
     strName1 :=  edtDoc.text//cbDoc.Items.Strings[edtDoc.text]
          + ' ' + strName33
          + ' ' + edtMyunhu.Text + ' '
          + jinryo_f.varJuminNo + ' ' + jinryo_f.varPibo + ' '
          + jinryo_f.varJohap + ' ' + jinryo_f.varJungNo + ' '
          + FormatDateTime('yyyy-mm-dd', wDateEdit1.Date) + ' ' +
          IntToStr(SpinEdit1.Value) + ' '
          + configvalue.varsaupName + ' '
          + configvalue.vartel1 + ' '
          + configvalue.varfax1 + ' '
          + configvalue.varEMail + ' '
          + configvalue.varYoyang + ' '
          + strName31 + ' ' + strName32 + ' '
          + strName41 + ' ' + strName42 + ' '
          + strName101 + ' ' + strName102 + ' ' + strName103 + ' ' +
          strName104 + ' '
          + strName111 + ' ' + strName112 + ' ' + strName113 + ' ' +
          strName114 + ' '
          + strName121 + ' ' + strName122 + ' ' + strName123 + ' ' +
          strName124 + ' '
          + strName131 + ' ' + strName132 + ' ' + strName133 + ' ' +
          strName134 + ' '
          + strName141 + ' ' + strName142 + ' ' + strName143 + ' ' +
          strName144 + ' '
          + strName151 + ' ' + strName152 + ' ' + strName153 + ' ' +
          strName154 + ' '
          + strName161 + ' ' + strName162 + ' ' + strName163 + ' ' +
          strName164 + ' '
          + strName201 + ' ' + strName202 + ' ' + strName203 + ' ' +
          strName204 + ' '
          + strName211 + ' ' + strName212 + ' ' + strName213 + ' ' +
          strName214 + ' '
          + strName221 + ' ' + strName222 + ' ' + strName223 + ' ' +
          strName224 + ' '
          + FormatFloat('0', RxSpinEdit1.value) + ' ' + Edit1.Text + ' ' +
          strName2;

     ShellExecute(self.Handle, 'open', pChar(strProgram), pChar(strName1),
          nil, SW_SHOW);
     close;
end;

procedure Twonwe_f.DataToPrintForm;
var
     strJuminNo: string;
     strSangCode: string;
     i: integer;
      Pict1 : TfrxPictureView;
     Image1: TImage;
 begin
     with frxReport do
     begin
          if RadioButton1.Checked then
          begin
               Variables['Jongbeul'] := 1; // 건강보험
          end;
          if RadioButton2.Checked then
          begin
               Variables['Jongbeul'] := 2; // 의료급여
          end;
          if RadioButton3.Checked then
          begin
               Variables['Jongbeul'] := 3; // 산재보험
          end;
          if RadioButton4.Checked then
          begin
               Variables['Jongbeul'] := 4; // 자동차보험
          end;
          if RadioButton5.Checked then
          begin
               Variables['Jongbeul'] := 5; // 기타
          end;

          if RadioButton6.Checked then
          begin
               Variables['WonweFlag'] := False; // 원내조제
          end;
          if RadioButton7.Checked then
          begin
               Variables['WonweFlag'] := True; // 원외처방
          end;

          Variables['DocName'] :=  QuotedStr( edtDoc.text);
              //QuotedStr(cbDoc.Items.Strings[edtDoc.text]);
          // 처방의료인 성명
          Variables['RelLicense'] := QuotedStr(edtMyunhu.Text); //면허번호
          Variables['PtName'] := QuotedStr(ma_paName); // 환자이름

          strJuminNo := Trim(ma_jumin); // 주민번호
          if (strJuminNo <> '') then
          begin
               if (Length(strJuminNo) > 6) then
                    strJuminNo := Copy(strJuminNo, 1, 6) + '-' +
                         Copy(strJuminNo, 7, 7);

               Variables['PtJumin'] := QuotedStr(strJuminNo);
          end;

          Variables['PiboName'] := QuotedStr(ma_PiboName); // 가입자명
          Variables['Kiho'] := QuotedStr(ma_Kiho); // 사업장기호
          Variables['K_number'] := QuotedStr(ma_K_Number); // 증번호
          Variables['PrintDate'] := wDateEdit1.Date; // 교부날자
          Variables['PrintNo'] := SpinEdit1.Value; // 교부번호
          Variables['RelOrg'] := QuotedStr(configvalue.varsaupName);
          // 의료기관 명칭
          Variables['RelPhone'] := QuotedStr(configvalue.varTel1);
          // 의료기관 전화번호
          Variables['RelFax'] := QuotedStr(configvalue.varFax1);
          // 의료기관 펙스번호
          Variables['RelEMail'] := QuotedStr(configvalue.varEMail);
          // 의료기관 이메일
          Variables['RelKiho'] := QuotedStr(configvalue.varYoyang);
          // 요양기관 기호

          strSangCode := GetSangCode(0);
          Variables['PtS_Code1'] := QuotedStr(strSangCode); // 상병코드1

          strSangCode := GetSangCode(1);
          Variables['PtS_Code2'] := QuotedStr(strSangCode); // 상병코드2



          if fileexists(configvalue.signfilePath1) then
          begin
              Pict1 := frxreport.FindComponent('Picture1') as TfrxPictureView;


              Image1 := TImage.Create(nil);
              Image1.Picture.LoadFromFile(configvalue.signfilePath1);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
              Pict1.Picture := Image1.Picture;

              Image1.Free;
          end;



          // 원외처방내역-------------------------------------------------------------
          for i := 1 to grdMain.RowCount - 1 do
          begin
               SetListData(grdMain, i, 0);
          end;
          {  if grdmain.RowCount >= 1 then
            begin
                   SetListData(RealGrid1, 0, 1);
            end;
            if grdmain.RowCount >= 2 then
            begin
                   SetListData(RealGrid1, 1, 1);
            end;
            if grdmain.RowCount >= 3 then
            begin
                   SetListData(RealGrid1, 2, 1);
            end;
            if grdmain.RowCount >= 4 then
            begin
                   SetListData(RealGrid1, 3, 1);
            end;
            if grdmain.RowCount >= 5 then
            begin
                   SetListData(RealGrid1, 4, 1);
            end;
            if grdmain.RowCount >= 6 then
            begin
                   SetListData(RealGrid1, 5, 1);
            end;
            if grdmain.RowCount >= 7 then
            begin
                   SetListData(RealGrid1, 6, 1);
            end;
           }
            // 주사처방내역-------------------------------------------------------------
          for i := 1 to grdJusa.RowCount - 1 do
          begin
               SetListData(grdJusa, i, 0);
          end;

          { if grdJusa.RowCount >= 1 then
           begin
                  SetListData(grdJinryo_o, 0, 8);
           end;
           if grdJusa.RowCount >= 2 then
           begin
                  SetListData(grdJinryo_o, 1, 8);
           end;
           if grdJusa.RowCount >= 3 then
           begin
                  SetListData(grdJinryo_o, 2, 8);
           end;
           }
           // 용법
          if (Pos(#13#10, Memo1.Lines.Text) > 0) then
               Variables['Yongbub'] := Memo1.lines.Text
          else
               Variables['Yongbub'] := QuotedStr(Memo1.Lines.Text);

          // 조제시참고사항
          if (Pos(#13#10, Memo2.Lines.Text) > 0) then
               Variables['Memo'] := Memo2.Lines.Text
          else
               Variables['Memo'] := QuotedStr(Memo2.Lines.Text);

          Variables['Limit'] := RxSpinEdit1.value; // 사용기간
     end;
end;

function Twonwe_f.GetSangCode(ARow: Integer): string;
begin
     Result := Trim(grdSang.Cells[1, ARow]);
end;

procedure Twonwe_f.InitFastReport;
begin
     {  with frxPDFExport do begin
         PrintOptimized := True;
         EmbeddedFonts := True;
         Background := True;
         Compressed := True;
       end;

       with frxReport do begin
         EngineOptions.MaxMemSize := 10000000;
         EngineOptions.UseFileCache := True;
         PreviewOptions.Buttons := [pbPrint,pbZoom,pbFind,pbPageSetup,pbTools,pbNavigator,pbExportQuick];
       end;
       }
end;

procedure Twonwe_f.SetListData(AGrid: TadvStringGrid; ARow: Integer;
     const iStart: Integer);
var
     strVarName: string;
begin
     with frxReport do
     begin
          Variables['SugaName' + IntToStr(iStart + ARow)] := QuotedStr(AGrid.Cells[1, ARow]); // 처방의약품의 명칭
          Variables['JinQty' + IntToStr(iStart + ARow)] := AGrid.Cells[2, ARow]; // 1회투약량
          Variables['Div' + IntToStr(iStart + ARow)] := AGrid.Cells[3, ARow]; // 1일투여횟수
          Variables['JinIlsu' + IntToStr(iStart + ARow)] := AGrid.Cells[4, ARow]; // 총투약일수
     end;
end;

function Twonwe_f.DurJumgum: boolean; //점검실시
var
     m_strPatJuminNo, m_strPatNm, m_strPatTelNo, m_strPatInsupTp,
          m_strPatPrntWmnYn: string;
     m_strPrscAdmSym, m_strPrscGrantNo, m_strPrscAdmName, m_strPrscAdmTelno,
          m_strPrscAdmFaxNo,
          m_strPrscDd, m_strPrscHms, m_strPrscLcsClTp, m_strPrscDrLcsNo,
          m_strPrscMedpNm,
          m_strPrscMdfeeSym, m_strPrscDgsbjtCd, m_strPrscMsickCd,
          m_strPrscClCd,
          m_strPrscCpmdRefItm, m_strPrscIjctmPrscDesc, m_strPrscUseDdcnt,
          m_strPrscUsg,
          m_strCpmdAdmSym, m_strCpmdAdmName, m_strCpmdAdmTelNo, m_strCpmdDd,
          m_strCpmdHms,
          m_strCpmdPhmcLcsNo, m_strCpmdPhmcNm, m_strCpmdEtcTxt,
          m_strCheckType, m_strAppIssueAdmin: string;
     mdcnExecFreq: integer;
     medcCD, medcNm, gnINMCD, gnINM,
          m_strInsuDmdCd, m_strIHOHCd, m_strPrscUsage,
          ddMqtyFreq, ddExecFreq: string;
     m_strDiyTyCd: HiraDur_TLB.PrscType;

     nResult, i, ErrNum: integer;
begin

     if configvalue.varLoadDur <> '1' then
     begin
          result := true;
          exit;
     end;

     nMediCnt := grdmain.RowCount;

     if (nMediCnt = 0) then
     begin
          //ClearSGrid(stgLog);
          WriteLog('1', '점검오류', '점검할 약품을 추가해 주십시오!');
          result := false;
          exit;
     end;

     try

          if not Assigned(jumgumresult_f) then
          begin
               jumgumresult_f :=
                    Tjumgumresult_f.Create(application);
          end;

          ClearSGrid(jumgumresult_f.stgResultList);
          ClearSGrid(jumgumresult_f.stgLog);

          ErrNum := 1;

          WriteLog(IntToStr(ErrNum), '점검요청', '점검 요청을 실시합니다.');
          ErrNum := ErrNum + 1;

          // 101.처방조제구분
          m_strMprscType := 'M';
          //	m_strMprscType := 'C';

          // 201.수진자주민번호
          m_strPatJuminNo :=  ma_jumin; //main_f.edtJumin.text + main_f.edtJumin2.text;

          // 202.수진자성명
          m_strPatNm := ma_paName; //main_f.edtname.text;
          // 203.수진자전화번호
          m_strPatTelNo := ma_c_Phone;//main_f.edtCphone.Text;

          // 204.수진자보험자구분
          m_strPatInsupTp := PatInsupTp(CallJongbyul(ma_JongBeul));//   main_f.cbJong.text);

          // 205.수진자임부여부
          m_strPatPrntWmnYn := '';
          if (cboPatPrntWmnYn.Text = '임부') then
               m_strPatPrntWmnYn := 'Y'
          else
               m_strPatPrntWmnYn := 'N';

          // 301.처방기관기호
          m_strPrscAdmSym := configvalue.varYoyang;
          // 302.처방교부번호
          m_strPrscGrantNo := formatdatetime('YYYYMMDD', wdateedit1.date) +
               formatFloat('00000', strtoint(spinedit1.Text));
          // 303.처방기관명
          m_strPrscAdmName := configvalue.varsaupname;
          // 304.처방기관전화번호
          m_strPrscAdmTelno := configvalue.varTel1;
          // 305.처방기관팩스번호
          m_strPrscAdmFaxNo := configvalue.varFax1;
          // 306.처방일자
          m_strPrscDd := formatdatetime('YYYYMMDD', wdateedit1.date);

          // 307.처방시분초
          m_strPrscHms := formatdatetime('hhmmss', now);
          // 401.처방면허종별구분
             //치과의사 CC  의사AA 약사BB 한의사DD
          m_strPrscLcsClTp := 'AA';
          // 402.처방의사면허번호
          m_strPrscDrLcsNo := edtMyunhu.Text;
          // 403.처방의료인성명
          m_strPrscMedpNm := edtDoc.text;// cbDoc.Text;
          // 404.처방특정기호
          m_strPrscMdfeeSym := '';
          // 405.처방지료과목코드
          m_strPrscDgsbjtCd := '';
          // 406.처방주상병코드
          m_strPrscMsickCd := ''; //7자리 신상병은 안간다.edit3.text;
          // 407.처방조제유형구분
          m_strPrscClCd := PrscClCd(cboPrscClCd.Text);

          // 408.처방조제참고사항
          m_strPrscCpmdRefItm := memo2.Text;
          // 409.처방주사제처방내역
          if RadioButton6.checked then
               m_strPrscIjctmPrscDesc := RadioButton6.caption
          else
               if RadioButton7.checked then
                    m_strPrscIjctmPrscDesc := RadioButton7.caption;

          // 410.처방전사용일수
          m_strPrscUseDdcnt := rxSpinedit1.Text;
          // 411.처방용법
          m_strPrscUsg := memo1.Text;
          // 501.조제기관기호
          m_strCpmdAdmSym := '';
          // 502.조제기관명
          m_strCpmdAdmName := '';
          // 503.조제기관전화번호
          m_strCpmdAdmTelNo := '';
          // 504.조제일자
          m_strCpmdDd := '';
          //	m_strCpmdDd := StringReplace(m_strCpmdDd,'-', '',[rfReplaceAll, rfIgnoreCase]);
          // 505.조제시분초
          m_strCpmdHms := '';
          //	m_strCpmdHms := StringReplace(m_strCpmdHms,':','',[rfReplaceAll, rfIgnoreCase]);
           // 601.조제약사면허번호
          m_strCpmdPhmcLcsNo := '';
          // 602.조제약사성명
          m_strCpmdPhmcNm := '';
          // 603.조제기타내용
          m_strCpmdEtcTxt := '';

          // 점검수정구분
          m_strCheckType := '';
          if (rbtCheck.Checked) then
               m_strCheckType := 'N'
          else
               m_strCheckType := 'M';

          m_strAppIssueAdmin := '10240119'; //청구SW사 코드

          DurPrescription.ClearMedicine;
          DurPrescription.AdminType := m_strMprscType; // 처방조제구분
          DurPrescription.JuminNo := m_strPatJuminNo; // 수진자주민번호
          DurPrescription.PatNm := m_strPatNm; // 수진자성명
          DurPrescription.PatTelNo := m_strPatTelNo; // 수진자전화번호
          DurPrescription.InsurerType := m_strPatInsupTp; // 수진자보험자구분
          DurPrescription.PregWmnYN := m_strPatPrntWmnYn; // 수진자임부여부
          DurPrescription.MprscIssueAdmin := m_strPrscAdmSym; // 처방기관기호
          DurPrescription.mprscGrantNo := m_strPrscGrantNo; // 처방전교부번호
          DurPrescription.PrscAdminName := m_strPrscAdmName; // 처방기관명
          DurPrescription.PrscTel := m_strPrscAdmTelno; // 처방기관전화번호
          DurPrescription.PrscFax := m_strPrscAdmFaxNo; // 처방기관팩스번호
          DurPrescription.PrscPresDt := m_strPrscDd; // 처방일자
          DurPrescription.PrscPresTm := m_strPrscHms; // 처방시간
          DurPrescription.PrscLicType := m_strPrscLcsClTp; // 처방면허종별
          DurPrescription.DrLicNo := m_strPrscDrLcsNo; // 의사면허번호
          DurPrescription.PrscName := m_strPrscMedpNm; // 처방의료인성명
          DurPrescription.PrscMdFee := m_strPrscMdfeeSym; // 처방특정기호
          DurPrescription.Dsbjt := m_strPrscDgsbjtCd; // 진료과목코드
          DurPrescription.MainSick := m_strPrscMsickCd; // 주상병
          DurPrescription.PrscClCode := m_strPrscClCd; // 처방조제유형코드
          DurPrescription.PrscRef := m_strPrscCpmdRefItm; // 처방조제참고사항
          DurPrescription.PrscIjCtm := m_strPrscIjctmPrscDesc; // 처방조제참고사항
          DurPrescription.PrscPeriod := m_strPrscUseDdcnt; // 처방전사용일수
          DurPrescription.PrscUsage := m_strPrscUsg; // 처방용법
          DurPrescription.MakerIssueAdmin := m_strCpmdAdmSym; // 조제기관기호
          DurPrescription.MakerAdminName := m_strCpmdAdmName; // 조제기관명
          DurPrescription.MakerTel := m_strCpmdAdmTelNo; // 조제기관전화번호
          DurPrescription.MakerDate := m_strCpmdDd; // 조제일자
          DurPrescription.MakerTime := m_strCpmdHms; // 조제시간
          DurPrescription.MakerLic := m_strCpmdPhmcLcsNo; // 조제약사면허번호
          DurPrescription.MakerName := m_strCpmdPhmcNm; // 조제약사성명
          DurPrescription.MakerUsage := m_strCpmdEtcTxt; // 조제기타내용
          DurPrescription.AppIssueAdmin := m_strAppIssueAdmin; // 청구소프트웨어 업체코드
          DurPrescription.PrscYN := m_strCheckType; // 점검/수정구분(N,M)
          //  showmessage(inttostr(nmedicnt));
          for i := 1 to nMediCnt - 1 do
          begin
               gnINMCD := loadSungbun(grdmain.Cells[5, i]);
               // grdmain.Cells[0,i]; //성분코드
               medcCD := grdmain.Cells[5, i]; //약품코드
               medcNm := substr(grdmain.Cells[1, i], 2, ']');
               //약품명
               gnINM := '';
               m_strInsuDmdCd := GetInsuDmdCd('보험'); //보험청구
               m_strDiyTyCd := GetPrscType('약가'); //분류유형
               m_strIHOHCd := GetIHOHCd('원외'); //원내 원외
               m_strPrscUsage := '';
               //grdmain.Cells[6,i]; //처방용법
               ddMqtyFreq := grdmain.Cells[2, i]; //1회투약량
               ddExecFreq := grdmain.Cells[3, i]; //1일투여횟수
               mdcnExecFreq := StrToInt(grdmain.Cells[4, i]);
               //총투여횟수

               nResult := DurPrescription.AddMedicine(m_strDiyTyCd,
                    medcCD, medcNm, gnINMCD, gnINM, ddMqtyFreq,
                    ddExecFreq,
                    mdcnExecFreq, m_strInsuDmdCd, m_strIHOHCd,
                    m_strPrscUsage);
               //                     application.processmessages;
               //                     label14.caption:='2';

               if (nResult <> 0) then
               begin
                    szLog := '오류 : AddMedicine 실패 : ' +
                         IntToStr(nResult);
                    WriteLog(IntToStr(ErrNum), '점검실시', szLog);
                    ErrNum := ErrNum + 1;
                    //ShowMessage(szLog);
               end;
          end;

          //DurResultSet.Quit;
        //System.Runtime.InteropServices.Marshal.ReleaseComObject(DurResultSet);
        //  DurResultSet := CreateOleObject('HiraDur.ResultSet');
          DurResultSet.clearResult;
          //   showmessage(inttostr( DurResultSet.Totalcnt));
          DurClient.AdminCode := configvalue.varYoyang;

          //                                   application.processmessages;
          //                     label14.caption:='3';

          nResult := DurClient.Check(DurPrescription, DurResultSet);

          //  showmessage(inttostr( DurResultSet.Totalcnt));

          if nResult = 16023 then // 사유전송이 COM모듈에서 완료됨
          begin
               szLog := '점검 성공 : ' + DurClient.LastErrorMsg;
               WriteLog(IntToStr(ErrNum), '점검성공', szLog);
               ErrNum := ErrNum + 1;
               nCheckType := 1; // 사유 전송 완료
               //  showmessage( szLog);
               result := true;
          end
          else
               if nResult <> 0 then
               begin
                    szLog := '점검에실패[' + IntToStr(nResult) + '] : ' +
                         DurClient.LastErrorMsg;
                    WriteLog(IntToStr(ErrNum), '점검에실패', szLog);
                    showmessage('03:' + szLog);
                    result := false;
                    Exit;
               end;

          nTotResultCnt := DurResultSet.Totalcnt;
          if (nTotResultCnt > 0) then
          begin
               ClearResultList;

               DurResultSet.NextResult;
               for i := 1 to nTotResultCnt do
               begin
                    //ResultList[i - 1] := New ResultInfo
                    ResultList[i - 1].m_nIndex :=
                         IntToStr(DurResultSet.Index); // 결과 인덱스
                    ResultList[i - 1].m_strMedcCDA :=
                         DurResultSet.MedcCDA; // 입력약품코드
                    ResultList[i - 1].m_strMedcNMA :=
                         DurResultSet.MedcNMA; // 입력약품명
                    ResultList[i - 1].m_strGnlNMCDA :=
                         DurResultSet.GnlNMCDA; // 입력성분코드
                    ResultList[i - 1].m_strGnlNMA :=
                         DurResultSet.GnlNMA;
                    // 입력성분명
                    ResultList[i - 1].m_fDDMqtyFreqA :=
                         IntToStr(DurResultSet.DDMqtyFreqA);
                    // 입력1회투여량
                    ResultList[i - 1].m_fDDExecFreqA :=
                         IntToStr(DurResultSet.DDExecFreqA);
                    // 입력1일투여회수
                    ResultList[i - 1].m_nMdcnExecFreqA :=
                         IntToStr(DurResultSet.MdcnExecFreqA);
                    // 입력총투여일수
                    ResultList[i - 1].m_nType :=
                         IntToStr(DurResultSet.Type); // 점검종류코드
                    ResultList[i - 1].m_strExamTypeCD :=
                         DurResultSet.ExamTypeCD; // 점검유형(MSPL)

                    ResultList[i - 1].m_nLevel :=
                         Char(StrToInt(DurResultSet.Level));
                    ResultList[i - 1].m_strMessage :=
                         DurResultSet.Message; // 점검결과내용
                    ResultList[i - 1].m_strNotice :=
                         DurResultSet.Notice;
                    // 부작용정보
                    ResultList[i - 1].m_strReasonCD :=
                         DurResultSet.reasonCd; // 사유코드
                    ResultList[i - 1].m_strReason :=
                         DurResultSet.Reason;
                    // 사유내용

                    ResultList[i - 1].m_strDpPrscMake :=
                         DurResultSet.DpPrscMake; // 중복처방조제구분
                    ResultList[i - 1].m_strDpPrscYYMMDD :=
                         DurResultSet.DpPrscYYMMDD; // 중복처방일자
                    ResultList[i - 1].m_strDpPrscHMMSS :=
                         DurResultSet.DpPrscHMMSS; // 중복처방시간
                    ResultList[i - 1].m_strDpPrscAdminCode :=
                         DurResultSet.DpPrscAdminCode;
                    // 중복처방기관기호
                    ResultList[i - 1].m_strDpPrscGrantNo :=
                         DurResultSet.DpPrscGrantNo;
                    // 중복처방전교부번호
                    ResultList[i - 1].m_strDpPrscAdminName :=
                         DurResultSet.DpPrscAdminName;
                    // 중복처방기관명
                    ResultList[i - 1].m_strDpPrscTel :=
                         DurResultSet.DpPrscTel; // 중복처방기관전화
                    ResultList[i - 1].m_strDpPrscFax :=
                         DurResultSet.DpPrscFax; // 중복처방기관팩스
                    ResultList[i - 1].m_strDpPrscName :=
                         DurResultSet.DpPrscName; // 중복처방의사명
                    ResultList[i - 1].m_strDpPrscLic :=
                         DurResultSet.DpPrscLic;
                    // 중복처방의사면허번호

                    ResultList[i - 1].m_strDpMakeYYMMDD :=
                         DurResultSet.DpMakeYYMMDD; // 중복조제일자
                    ResultList[i - 1].m_strDpMakeHMMSS :=
                         DurResultSet.DpMakeHMMSS; // 중복조제시간
                    ResultList[i - 1].m_strDpMakeAdminCode :=
                         DurResultSet.DpMakeAdminCode;
                    // 중복조제기관기호
                    ResultList[i - 1].m_strDpMakeAdminName :=
                         DurResultSet.DpMakeAdminName;
                    // 중복조제기관명
                    ResultList[i - 1].m_strDpMakeTel :=
                         DurResultSet.DpMakeTel; // 중복조제기관전화
                    ResultList[i - 1].m_strDpMakeName :=
                         DurResultSet.DpMakeName; // 중복조제의사명
                    ResultList[i - 1].m_strDpMakeLic :=
                         DurResultSet.DpMakeLic;
                    // 중복조제의사면허번호

                    ResultList[i - 1].m_strMedcNMB :=
                         DurResultSet.MedcNMB; // 중복약품명
                    ResultList[i - 1].m_strMedcCDB :=
                         DurResultSet.MedcCDB; // 중복약품코드
                    ResultList[i - 1].m_strGnlNMCDB :=
                         DurResultSet.GnlNMCDB; // 중복성분코드
                    ResultList[i - 1].m_strGnlNMB :=
                         DurResultSet.GnlNMB;
                    // 중복성분명
                    ResultList[i - 1].m_fDDMqtyFreqB :=
                         IntToStr(DurResultSet.DDMqtyFreqB);
                    // 중복1회투약량
                    ResultList[i - 1].m_fDDExecFreqB :=
                         IntToStr(DurResultSet.DDExecFreqB);
                    // 중복1일투여회수
                    ResultList[i - 1].m_nMdcnExecFreqB :=
                         IntToStr(DurResultSet.MdcnExecFreqB);
                    // 중복총투여일수
                    ResultList[i - 1].m_fDDTotalMqtyB :=
                         IntToStr(DurResultSet.DDTotalMqtyB);
                    // 중복1일투여량(1회투약량x1일투여회수)

                    if ResultList[i - 1].m_strExamTypeCD = 'M' then
                         ResultList[i - 1].strExamType := '처방비교'
                    else
                         if ResultList[i - 1].m_strExamTypeCD = 'P' then
                              ResultList[i - 1].strExamType := '조제비교'
                         else // ResultList[i - 1].m_strExamTypeCD := 'L' Then
                              ResultList[i - 1].strExamType := '처방전내';

                    DurResultSet.NextResult;
               end;

               result := false;
               jumgumresult_f.pgLog.activepageindex := 1;
               UpdateResultSetToList(jumgumresult_f.stgResultList);
               if jumgumresult_f.Showmodal = mrOk then
               begin
                    result := true;
               end;

          end
          else
          begin
               result := true;
          end;

          szLog := '점검 완료 : ' + IntToStr(nTotResultCnt) +
               '개의 점검결과 수신';

          WriteLog(IntToStr(ErrNum), '점검완료', szLog);
          //ShowMessage(szLog);

            //if nTotResultCnt > 0 then
            //   pgLog.SelectNextPage(true);

     except
          begin
               szLog := '점검에실패';
               result := false;
               WriteLog(IntToStr(ErrNum), '점검에실패', szLog);
               ShowMessage('04:' + szLog);
          end;
     end;
end;

procedure Twonwe_f.FormCreate(Sender: TObject);
begin
     if configvalue.varLoadDur = '1' then
     begin
          DurClient := CreateOleObject('HiraDur.Client');
          DurPrescription := CreateOleObject('HiraDur.Prescription');
          DurResultSet := CreateOleObject('HiraDur.ResultSet');
     end;

end;

procedure Twonwe_f.grdSangClickCell(Sender: TObject; ARow, ACol: Integer);
var
     pos: tpoint;
begin
     if aCol = 0 then
     begin
          if configvalue.varSangMode = '0' then
          begin
               SangCombo_f := TSangCombo_f.Create(application);
               SangCombo_f.targetGrid := 'Wonwe';
               SangCombo_f.Edit2.Text := IntToStr(grdSang.Row);
               SangCombo_f.Showmodal;
               SangCombo_f.Free;
               SangCombo_f := nil;
          end
          else
               if configvalue.varSangMode = '1' then
               begin
                    Sangseek_f := TSangseek_f.Create(application);
                    Sangseek_f.gsgubn := '5';
                    Sangseek_f.edtSearch.Text := IntToStr(grdSang.Row);
                    Sangseek_f.Showmodal;
                    Sangseek_f.Free;
                    Sangseek_f := nil;
               end
               else
               begin
                    GetCursorPos(Pos);
                    SangMenu.Popup(pos.x, pos.y);
               end;
     end;

end;

procedure Twonwe_f.grdSangDblClickCell(Sender: TObject; ARow,
     ACol: Integer);
begin
     if grdSang.row = 0 then
     begin
          Edit3.Text := Edit4.Text;
          Edit4.Text := '';
          grdSang.Cells[1, 0] := grdSang.Cells[1, 1];
          grdSang.Cells[2, 0] := grdSang.Cells[2, 1];
          grdSang.Cells[1, 1] := '';
          grdSang.Cells[2, 1] := '';
     end
     else
          if grdSang.Row = 1 then
          begin
               Edit4.Text := '';
               grdSang.Cells[1, 1] := '';
               grdSang.Cells[2, 1] := '';
          end;

end;

procedure Twonwe_f.grdJusaClickCell(Sender: TObject; ARow,
     ACol: Integer);
begin
     if aCol = 0 then
     begin
          if ((grdJusa.RowCount > 0) and (grdJusa.Row >= 0)) then
          begin
               grdJusa.RemoveRows(grdJusa.Row, 1);
          end;

     end;
end;

procedure Twonwe_f.grdMainClickCell(Sender: TObject; ARow,
     ACol: Integer);
begin

     case aCol of
          0:
               begin
                    if aRow = 0 then
                    begin
                         if Application.MessageBox('현재 원외처방전 내역을 삭제하시겠습니까?',
                              '확인', MB_OKCANCEL) = 1 then
                         begin
                              grdmain.Clear;
                         end;
                    end
                    else
                    begin
                         if ((grdmain.RowCount > 0) and (grdmain.Row >= 0)) then
                         begin
                              if Application.MessageBox('삭제하시겠습니까?', '확인', MB_OKCANCEL)
                                   = 1 then
                              begin
                                   grdmain.RemoveRows(grdmain.Row, 1);
                              end;
                         end;
                    end;

               end;
     end;
end;

procedure Twonwe_f.grdMainMouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if Button = mbRight then
     begin
          if ((grdmain.Row >= 0) and (grdmain.Rowcount > 0)) then
          begin
               Memo1.Text := Memo1.Text + '(' + grdmain.Cells[1, grdmain.Row] + ')';
          end;
     end;

end;

procedure Twonwe_f.grdMainGetFormat(Sender: TObject; ACol: Integer;
     var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
          2, 3, 4:
               Astyle := ssFinancial;
     end;
end;

end.

