unit doc_main;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls,
     StdCtrls, Buttons, Mask, ComCtrls, DB,
     Menus, Math, DateUtils , QRCtrls,
     OleCtrls, SHDocVw, frxClass, frxExportPDF,  AdvPageControl,
     AdvEdit, Grids, AdvObj, BaseGrid, AdvGrid, AdvUtil, frxExportBaseDialog,
     frxChBox, FormSize;
type
    TsangList =  packed record
        sangCode : TstringList;
        sangName : TstringList;

 end;
type
     TMain_f = class(TForm)
          Panel1: TPanel;
          Panel2: TPanel;
          Panel3: TPanel;
          Panel8: TPanel;
          Panel4: TPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label8: TLabel;
          Label9: TLabel;
          Label12: TLabel;
          Label13: TLabel;
          Label14: TLabel;
          Label15: TLabel;
          Edit1: TEdit;
          EdtBd: TEdit;
          EdtPadd: TEdit;
          EdtSeqNo: TEdit;
          EdtJuminNo: TEdit;
          EdtAge: TEdit;
          EdtGender: TComboBox;
          Edit2: TEdit;
          SangMenu: TPopupMenu;
          N1: TMenuItem;
          K040: TMenuItem;
          K0211: TMenuItem;
          K0531: TMenuItem;
          K0471: TMenuItem;
          K0061: TMenuItem;
          K0203: TMenuItem;
          K0831: TMenuItem;
          K0521: TMenuItem;
          K0381: TMenuItem;
          K0441: TMenuItem;
          K0451: TMenuItem;
          K0551: TMenuItem;
          K0111: TMenuItem;
          S0251: TMenuItem;
          K0001: TMenuItem;
          K0331: TMenuItem;
          AF1: TMenuItem;
          K0202: TMenuItem;
          K0201: TMenuItem;
          K0212: TMenuItem;
          K0231: TMenuItem;
          Endo1: TMenuItem;
          K0401: TMenuItem;
          K0411: TMenuItem;
          K0421: TMenuItem;
          K0431: TMenuItem;
          K0442: TMenuItem;
          K0222: TMenuItem;
          S0252: TMenuItem;
          K0472: TMenuItem;
          K0452: TMenuItem;
          N2: TMenuItem;
          K0532: TMenuItem;
          K0412: TMenuItem;
          K0473: TMenuItem;
          K0481: TMenuItem;
          K0232: TMenuItem;
          K0832: TMenuItem;
          S0256: TMenuItem;
          K0062: TMenuItem;
          K0112: TMenuItem;
          K0011: TMenuItem;
          K0041: TMenuItem;
          K1021: TMenuItem;
          K0241: TMenuItem;
          omy1: TMenuItem;
          K0402: TMenuItem;
          K0223: TMenuItem;
          N3: TMenuItem;
          K0474: TMenuItem;
          K0522: TMenuItem;
          K1022: TMenuItem;
          K1131: TMenuItem;
          N4: TMenuItem;
          K0301: TMenuItem;
          K0311: TMenuItem;
          K0321: TMenuItem;
          K0382: TMenuItem;
          S0253: TMenuItem;
          N5: TMenuItem;
          K0224: TMenuItem;
          K0213: TMenuItem;
          N6: TMenuItem;
          K0533: TMenuItem;
          K0611: TMenuItem;
          N7: TMenuItem;
          K0511: TMenuItem;
          K0552: TMenuItem;
          K0534: TMenuItem;
          K0541: TMenuItem;
          K0361: TMenuItem;
          N8: TMenuItem;
          K0021: TMenuItem;
          K0535: TMenuItem;
          K0721: TMenuItem;
          K0731: TMenuItem;
          K0761: TMenuItem;
          S0254: TMenuItem;
          N9: TMenuItem;
          K0225: TMenuItem;
          K0501: TMenuItem;
          K0512: TMenuItem;
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
          K0081: TMenuItem;
          K1132: TMenuItem;
          K1301: TMenuItem;
          K0491: TMenuItem;
          K1031: TMenuItem;
          K0762: TMenuItem;
          N10: TMenuItem;
          N11: TMenuItem;
          lblKind: TLabel;
          WebBrowser1: TWebBrowser;
          Label55: TLabel;
          frxPDFExport: TfrxPDFExport;
          Shape10: TShape;
          Shape11: TShape;
          Shape12: TShape;
          Shape13: TShape;
          Shape14: TShape;
          Shape15: TShape;
          Shape16: TShape;
          Label6: TLabel;
          Label18: TLabel;
          Label20: TLabel;
          Label23: TLabel;
          Label24: TLabel;
          Shape1: TShape;
          Label25: TLabel;
          Shape5: TShape;
          Shape6: TShape;
          Shape7: TShape;
          Shape8: TShape;
          Shape17: TShape;
          Shape18: TShape;
          Shape19: TShape;
          Shape20: TShape;
          Memo1: TMemo;
          Edit5: TEdit;
          lstSangCode1: TListBox;
          lstDangName1: TListBox;
          edtJindan1: TEdit;
          ComboBox1: TComboBox;
          Edit7: TEdit;
          Edit8: TEdit;
          Edit9: TEdit;
          Edit10: TEdit;
          edtSangCode3: TEdit;
          Shape26: TShape;
          Shape27: TShape;
          Shape28: TShape;
          RadioButton1: TRadioButton;
          RadioButton2: TRadioButton;
          Memo3: TMemo;
          edtJindan2: TEdit;
          lstDangName2: TListBox;
          lstSangCode2: TListBox;
          Edit12: TMemo;
          edtTerm: TEdit;
    cbDeseaseDateAccept: TCheckBox;
          edtSangCode: TEdit;
          Shape29: TShape;
          Shape30: TShape;
          Shape43: TShape;
          Shape44: TShape;
          Edit3: TEdit;
          Memo4: TMemo;
          Edit15: TEdit;
          Edit14: TMemo;
          CheckBox10: TCheckBox;
          Label33: TLabel;
          Label37: TLabel;
          Label50: TLabel;
          Label46: TLabel;
          Label52: TLabel;
          Shape31: TShape;
          Shape32: TShape;
          Shape33: TShape;
          Shape34: TShape;
          Shape35: TShape;
          Shape36: TShape;
          Shape37: TShape;
          Shape38: TShape;
          Shape39: TShape;
          Shape40: TShape;
          Shape41: TShape;
          Shape42: TShape;
          Shape56: TShape;
          edtJindan4: TEdit;
          RadioButton3: TRadioButton;
          RadioButton4: TRadioButton;
          lstDangName4: TListBox;
          lstSangCode4: TListBox;
          Edit22: TEdit;
          Edit23: TEdit;
          Edit24: TEdit;
          Edit25: TEdit;
          Edit28: TMemo;
          Edit27: TMemo;
          Edit26: TMemo;
          Edit21: TMemo;
          Edit20: TMemo;
          Edit17: TMemo;
          Edit19: TMemo;
          Edit18: TMemo;
          edtSangCode2: TEdit;
          Panel25: TPanel;
          Label40: TLabel;
          Panel26: TPanel;
          Label51: TLabel;
          Panel27: TPanel;
          Label53: TLabel;
          CheckBox4: TCheckBox;
          CheckBox2: TCheckBox;
          CheckBox1: TCheckBox;
          CheckBox3: TCheckBox;
          CheckBox8: TCheckBox;
          CheckBox7: TCheckBox;
          CheckBox6: TCheckBox;
          CheckBox5: TCheckBox;
          CheckBox11: TCheckBox;
          Panel6: TPanel;
          Panel9: TPanel;
          Panel10: TPanel;
          Panel11: TPanel;
          Panel12: TPanel;
          Panel13: TPanel;
          Panel14: TPanel;
          Panel15: TPanel;
          Panel16: TPanel;
          Panel17: TPanel;
          Panel18: TPanel;
          Panel19: TPanel;
          Panel20: TPanel;
          Panel21: TPanel;
          Panel22: TPanel;
          Panel23: TPanel;
          Panel7: TPanel;
          ComboBox2: TComboBox;
          Panel24: TPanel;
          Panel5: TPanel;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label16: TLabel;
          Label17: TLabel;
          Shape21: TShape;
          Shape22: TShape;
          Shape23: TShape;
          EdtHName: TEdit;
          EdtAdd: TEdit;
          EdtLNo: TEdit;
    cbDocName: TComboBox;
          lstDoctor: TListBox;
          Label11: TLabel;
          Shape9: TShape;
          Shape2: TShape;
          Shape3: TShape;
          Shape4: TShape;
          Memo2: TMemo;
          EdtReturn: TEdit;
          lstSangCode: TListBox;
          lstDangName: TListBox;
          edtJindan: TEdit;
          edtSangCode4: TEdit;
    edtTeeth1: TAdvEdit;
    frxReport: TfrxReport;
    btnPlanPaper: TButton;
    btnSogyunseo: TButton;
    btnJinryoUiRoiSeo: TButton;
    btnJinryoHwakinSeo: TButton;
    btnJindanSeo: TButton;
    btnHyangChu: TButton;
    btnSangHaeJindan: TButton;
    btnHwakinSeo: TButton;
    spSkinButton101: TButton;
    spSkinButton100: TButton;
    spSkinButton104: TButton;
    spSkinButton2: TButton;
    spSkinButton1: TButton;
    btnArmyJindanSeo: TButton;
    btnNew: TButton;
    btnSave: TButton;
    btnDelete: TButton;
    btnPrint: TButton;
    btnSearchSangByung0: TButton;
    btnSearchSangByung1: TButton;
    btnSearchSangByung2: TButton;
    btnSearchSangByung4: TButton;
    Label19: TLabel;
    LblReturn: TLabel;
    Label10: TLabel;
    wLabel9: TLabel;
    Label7: TLabel;
    lblStartDesease: TLabel;
    Label26: TLabel;
    Label54: TLabel;
    wLabel21: TLabel;
    Label31: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    wLabel1: TLabel;
    wLabel2: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    wLabel3: TLabel;
    wLabel7: TLabel;
    wLabel4: TLabel;
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    PageControl2: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    Shape24: TShape;
    Shape25: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Edit11: TEdit;
    Edit29: TMemo;
    Edit30: TMemo;
    Edit31: TMemo;
    Edit32: TMemo;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    Edit13: TEdit;
    Edit33: TMemo;
    Edit34: TMemo;
    Edit16: TEdit;
    Edit6: TEdit;
    wLabel5: TLabel;
    wLabel6: TLabel;
    wLabel8: TLabel;
    wLabel10: TLabel;
    wLabel11: TLabel;
    wLabel12: TLabel;
    wLabel13: TLabel;
    wLabel14: TLabel;
    wLabel15: TLabel;
    wLabel16: TLabel;
    wLabel17: TLabel;
    wLabel18: TLabel;
    wLabel19: TLabel;
    wLabel20: TLabel;
    grdList3: TAdvStringGrid;
    grdList2: TAdvStringGrid;
    grdList1: TAdvStringGrid;
    grdList6: TAdvStringGrid;
    grdList5: TAdvStringGrid;
    grdList4: TAdvStringGrid;
    RelDate: TDateTimePicker;
    dtStartDesease: TDateTimePicker;
    DateEdit1: TDateTimePicker;
    DateEdit6: TDateTimePicker;
    DateEdit5: TDateTimePicker;
    DateEdit4: TDateTimePicker;
    DateEdit2: TDateTimePicker;
    wDateEdit5: TDateTimePicker;
    wDateEdit6: TDateTimePicker;
    wDateEdit7: TDateTimePicker;
    wDateEdit8: TDateTimePicker;
    wDateEdit9: TDateTimePicker;
    wDateEdit10: TDateTimePicker;
    wDateEdit1: TDateTimePicker;
    wDateEdit2: TDateTimePicker;
    wDateEdit3: TDateTimePicker;
    wDateEdit4: TDateTimePicker;
    DateEdit7: TDateTimePicker;
    DateEdit8: TDateTimePicker;
    DateEdit9: TDateTimePicker;
    Label27: TLabel;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Button1: TButton;
    Panel28: TPanel;
    Shape54: TShape;
    Shape55: TShape;
    EdtChartNo: TEdit;
    EdtPName: TEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    spSkinButton11: TButton;
    pnlTerm: TPanel;
    lblTerm: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label56: TLabel;
    btmSang2Load: TButton;
    pnlHwakinCap: TPanel;
    Label57: TLabel;
    edtHwakinCap2: TComboBox;
    Button2: TButton;
    edtHwakinCap: TEdit;
    btnHoisongSeo: TButton;
    btnCertification: TButton;
    pnlOpCode: TPanel;
    lblOpCode: TLabel;
    lblOpName: TLabel;
    edtOpCode: TEdit;
    edtOpName: TEdit;
    FormSize1: TFormSize;
    TabSheet14: TTabSheet;
    Label28: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    lblVersion: TLabel;

          procedure spSkinButton1Click(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnPlanPaperClick(Sender: TObject);
          procedure btnSogyunseoClick(Sender: TObject);
          procedure btnJinryoUiRoiSeoClick(Sender: TObject);
          procedure btnJinryoHwakinSeoClick(Sender: TObject);
          procedure btnJindanSeoClick(Sender: TObject);
          procedure btnHyangChuClick(Sender: TObject);
          procedure btnSangHaeJindanClick(Sender: TObject);
          procedure btnHwakinSeoClick(Sender: TObject);
          procedure spSkinButton101Click(Sender: TObject);
          procedure spSkinButton100Click(Sender: TObject);
          procedure spSkinButton104Click(Sender: TObject);
          procedure spSkinButton2Click(Sender: TObject);
          procedure EdtChartNoKeyPress(Sender: TObject; var Key: Char);
          procedure BitBtn3Click(Sender: TObject);
          procedure BitBtn1Click(Sender: TObject);
          procedure EdtPNameExit(Sender: TObject);
          procedure EdtPNameEnter(Sender: TObject);
          procedure edtJindanEnter(Sender: TObject);
          procedure btnDeleteClick(Sender: TObject);
          procedure btnPrintClick(Sender: TObject);
          procedure btnNewClick(Sender: TObject);
          procedure spSkinButton11Click(Sender: TObject);
          procedure btnSearchSangByung0Click(Sender: TObject);
          procedure K040Click(Sender: TObject);
          procedure edtJindanKeyPress(Sender: TObject; var Key: Char);
          procedure btnSaveClick(Sender: TObject);
          function NewSerial(WorkDate: TDateTime; sKind: string): string;
          function GetSerial(sChart: string; sKind: string): string;
          procedure FieldSet(sDateNo: string);
          procedure ClearReport(pageIndex:integer; aDocName : string='');
          procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
               WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
          procedure Edit20KeyPress(Sender: TObject; var Key: Char);
          procedure lstDangNameDblClick(Sender: TObject);
          procedure DateEdit6Exit(Sender: TObject);
          procedure edtSangCodeEnter(Sender: TObject);
          procedure edtSangCodeExit(Sender: TObject);
          procedure edtSangCodeKeyPress(Sender: TObject; var Key: Char);
          procedure edtJindanExit(Sender: TObject);
          procedure edtSangCode2Enter(Sender: TObject);
          procedure edtSangCode2Exit(Sender: TObject);
          procedure edtSangCode2KeyPress(Sender: TObject; var Key: Char);
          procedure edtSangCode3Enter(Sender: TObject);
          procedure edtSangCode3Exit(Sender: TObject);
          procedure edtSangCode3KeyPress(Sender: TObject; var Key: Char);
          procedure edtSangCode4Enter(Sender: TObject);
          procedure edtSangCode4Exit(Sender: TObject);
          procedure edtSangCode4KeyPress(Sender: TObject; var Key: Char);
          procedure cbDocNameClick(Sender: TObject);
          procedure btnArmyJindanSeoClick(Sender: TObject);
          function ConvertTeeth(s1, s2, s3, s4: string): string;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormCreate(Sender: TObject);
    procedure grdList6DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure lstSangCode2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btmSang2LoadClick(Sender: TObject);
    procedure edtHwakinCap2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnHoisongSeoClick(Sender: TObject);
    procedure lstSangCodeDblClick(Sender: TObject);
    procedure lstDangName1DblClick(Sender: TObject);
    procedure lstSangCode1DblClick(Sender: TObject);
    procedure lstDangName2DblClick(Sender: TObject);
    procedure btnCertificationClick(Sender: TObject);
    procedure cbDocNameChange(Sender: TObject);
    procedure cbDeseaseDateAcceptClick(Sender: TObject);

     private
          { Private declarations }


     sangByungCodeList : TStringList;
     sangByungNameList : TStringList;

          sang1, sang2, sang3 : string;
          sangCode1, sangCode2, sangCode3 : string;

          aDocName : string;


          procedure RequestPrint();
          procedure CommTitlePrint(ATitle, AConten, APeriod, AMemo: string);
          procedure CommDataPrint();
          procedure InitFastReport();
          procedure CertificatePrint();
          procedure InferPrint();
          procedure EtcConfirmPrint();
          procedure InjuryPrint();
          procedure SoldierPrint();
          procedure PatientInfo(bAgeUse: Boolean);
          procedure HospitalInfo(bPhoneUse, bAddUse, bKihoUse: Boolean);

          procedure ChangeTab;
          function loadSangByungList(chart, jin_day1, jin_day2: string):TsangList;
          procedure CertificatePrint_Eng;
    procedure loadPatInfo;

     public
          { Public declarations }
     end;

var
     Main_f: TMain_f;

implementation

uses uConfig, uDM,  findPt,  uFunctions, uFormInit, SangSeek;
   //  prt_Rad,
   //  prt1, prt2, prt3, prt4, prt5, prt6,  sebusunapprt;//,
    //  YoungBalgub, ChuBangBalgub, MunSuBalgub;

{$R *.dfm}

function LoadFirstDay(chart: string): string;
const
     dataSelect = 'select * from ma_gogek_basic' + #10#13 +
          'where chart=:chart ';
begin
     try
          with dm_f.SqlWork do
          begin
               close;
               sql.clear;
               sql.text := dataselect;
               paramByname('chart').asstring := chart;
               open;
               if not isEmpty then
               begin
                    result := fieldByname('first_day').asString;
               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('load_firstday' + E.Message);
               result := '';

          end;
     end;
end;

function LoadLastDay(chart: string): string;
const
     dataSelect = 'select top 1 * from jinryo_p ' + #10#13 +
          'where chart=:chart  order by jin_day desc';
begin
     try
          with dm_f.SqlWork do
          begin
               close;
               sql.clear;
               sql.text := dataselect;
               paramByname('chart').asstring := chart;
               open;
               if not isEmpty then
               begin
                    result := fieldByname('jin_day').asString;
               end
               else
               begin
                    result := formatDatetime('YYYY-MM-DD', now);
               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('load_Lastday' + E.Message);
               result := '';

          end;
     end;
end;


function TMain_f.loadSangByungList(chart, jin_day1, jin_day2: string): TsangList;//TStringList;
begin



   try
      result.sangCode := TStringList.Create;
      result.sangName := TStringList.Create;

       with dm_f.sqlTemp13 do
       begin
            close;
            sql.Clear;
            sql.Text := 'select chart, jin_day, s_key1, sang1   from jinryo_o                '+#10+
                        'where chart=:chart and jin_day between :jin_day1 and :jin_day2      ' ;
            paramByName('chart').AsString:=  chart;// Trim( ParamStr(1) ) ;
            paramByName('jin_day1').AsString:= jin_day1 ;
            paramByName('jin_day2').AsString:= jin_day2 ;
            open;
            if not isEmpty then
            begin
                 while not eof do
                 begin
                   result.sangCode.Add ( fieldByName( 's_key1').AsString) ;
                   result.sangName.Add ( fieldByName( 'sang1').AsString) ;

                   //toDo : 영문진단서 등일 경우 영문상병 가져오자.

                   //   result.sangName.Add (  LoadEngSangName(fieldByName( 's_key1').AsString));

                   next;
                 end;
            end;
       end;
   finally
      //  result.sangCode.Free;
      //  result.sangName.Free;
   end;
end;



procedure TMain_f.spSkinButton1Click(Sender: TObject);
begin
     Close;
end;

procedure TMain_f.FormShow(Sender: TObject);
var
     sSex: string;
     sNO1: string;
     sJumin : string;
     sangByungList : TSangList;
begin
     height := 750;
     width := 1024;

     initAdvGrid(grdList1, true);
     initAdvGrid(grdList2, true);
     initAdvGrid(grdList3, true);
     initAdvGrid(grdList4, true);
     initAdvGrid(grdList5, true);
     initAdvGrid(grdList6, true);


     //2012.08.29 사원에 nouse넣기
//     with Dm_f.SqlWork do
//     begin
//          close;
//          sql.clear;
//          Sql.Add('Select top 1 * from ma_sawon_basic');
//          Open;
//     end;
//     if Dm_f.SqlWork.FindField('nouse') = nil then
//     begin
//          with Dm_f.SqlTemp do
//          begin
//               close;
//               sql.clear;
//               sql.add('alter table ma_sawon_basic');
//               sql.add('add [nouse] [nchar](1)');
//               execsql;
//          end;
//     end;
//
     //  if Copy(ParamStr(1), 1, 8) <> 'im121816' then
     //  begin
     //    Showmessage('This Program can not run without Infomedi Damoeum 2004');
     //    Close;
     //  end
     //  else
      // begin

          //WebBrowser1.Navigate('http://www.infomedi.co.kr/ban2.php?id=' + dm_f.kiho);
//     edtChartNo.Text := Trim(Copy(ParamStr(1), 9, 30));
     edtChartNo.Text :=     Trim( ParamStr(1) );
     aDocName        :=     Trim( ParamStr(2) );



   //ToDo : 파라미터에서 메모장으로 바꾸자.
   //접수실에서 문서인쇄 클릭시 진료내역을 불러와서 텍스트파일  sangbyungCode.ini에 저장해 놓자.
   //문서인쇄에서 텍스트 파일  sangbyungCode.ini을 읽어가자.
   //[차트번호]
   //sang1=
   //sangCode1=
   //sang2=
   //sangCode2=

   try
        sangByungCodeList := TstringList.Create;
        sangByungNameList := TstringList.Create;

        sangByungList     := loadSangByungList( edtChartNo.Text,
                             formatDatetime('YYYY-MM-DD',now),
                             formatDatetime('YYYY-MM-DD',now));
        sangByungCodeList :=  sangByungList.sangCode;
        sangByungNameList :=  sangByungList.sangName;
   finally
      //  sangByungCodeList.Free;
      //  sangByungNameList.Free;
   end;
//      sangCode1:=   Trim( ParamStr(3) );
//      sangCode2:=   Trim( ParamStr(4) );
//      sangCode3:=   Trim( ParamStr(5) );
//
//      sang1:=   Trim( ParamStr(6) );
//      sang2:=   Trim( ParamStr(7) );
//      sang3:=   Trim( ParamStr(8) );

//      showmessage('sangCode1:' + sangCode1+#10+
//                  'sangCode2:' +   sangCode2  +#10+
//                  'sangCode3:' +   sangCode3  +#10+
//                  'sang1:' +      sang1   +#10+
//                  'sang2:' +      sang2   +#10+
//                  'sang3:' +      sang3
//                  )  ;


     //edtChartNo.Text := '12';

//     pcMain.ShowTabs := False;

     cbDocName.Clear;
     lstDoctor.Clear;

     with dm_f.SqlFind do
     begin
          Close;
          Sql.Clear;

          //  saJikgub : '1' -> 구 다모음에서 의사
          //           : '012001' -> 신 다모음에서 의사
          Sql.Text :=
               '  SELECT  saName                                                                 ' + #13#10 +
               '         ,saMyunHu                                                               ' + #13#10 +
               '    FROM  ma_sawon_basic                                                         ' + #13#10 +
               '   WHERE  (saJikgub = ''1'')       ' + #13#10 +
               '     and (nouse =''0'' )           ' + #13#10 +
               '     and (jubsu_use =''1''  )      ' + #13#10 +
               'and  ( sateam=''radx'')            ' + #13#10 +
           //    '     and (jubsu_use =''1''  ) ' + #13#10 +
               'ORDER BY  sateam                               ' + #13#10 +
               '         ,saMyunHu asc                                    ';

          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbDocName.Items.Add(trim(FieldByName('saName').AsString));
                    lstDoctor.Items.Add(trim(FieldByName('saMyunHu').AsString));
                    next;
               end;
          end
          else
          begin
               ShowMessage('등록된 의사가 없습니다. 사원등록을 먼저 하시기 바랍니다');
               Close;
          end;
     end;

     RelDate.Date := Now;


     loadpatInfo;

     ClearReport(pcMain.ActivePageIndex, '');

     //pcMain.ShowTabs := False;
     //ClearReport;

//     with dm_f.SqlFind do
//     begin
//          Close;
//          Sql.Clear;
//          Sql.Add('select * from syscolumns where name=''sang4'' and id in (select id from sysobjects where name=''tbReport'')');
//          Open;
//          First;
//          if isEmpty then
//          begin
//               dm_f.SqlTemp.Close;
//               dm_f.SqlTemp.Sql.Clear;
//               dm_f.SqlTemp.Sql.Add('alter table tbReport add firstDate smalldatetime,s_key1 char(7), s_key2 char(7), s_key3 char(4), s_key4 char(4),');
//               dm_f.SqlTemp.Sql.Add('sang varchar(50), sang1 varchar(50), sang2 varchar(50), sang3 varchar(50), sang4 varchar(50)');
//               dm_f.SqlTemp.ExecSql;
//          end;
//
//          Close;
//          Sql.Clear;
//          Sql.Add('alter table tbReport alter column orgAdd varchar(100)');
//          ExecSql;
//
//     end;

     cbDocName.ItemIndex := 0;
     sNo1 := lstDoctor.Items.Strings[0];
     EdtLNo.Text := sNo1;


     spSkinButton104Click(Self);
     btnDeleteClick(Self);
     spSkinButton104.setfocus;
     //  end;


     lblVersion.Caption := 'Ver. ' + GetExeVersion(ParamStr(0)); //
end;
procedure TMain_f.loadPatInfo;
var
     sSex: string;
     sNO1: string;
     sJumin : string;
     sangByungList : TSangList;
begin

     with dm_f.sqlfind do
     begin
          Close;
          Sql.Clear;
          //Sql.Add('      select i.kiho,c.c_name,i.k_number,i.piboname,i.chart,i.name,i.chamgo,i.jumin,');
          //Sql.Add('     p.sido+'' ''+ p.gugun+'' ''+p.dong +'' ''+i.h_juso2 as address                ');
          //Sql.Add('     ,dbo.f_GetFullAge((case when substring(i.jumin,7,1) in (''3'',''4'') then ''20''+i.jumin else ''19''+i.jumin end),getdate()) as nai ');
          //Sql.Add('      from injek i, chohap c, post p  ');
          //Sql.Add('   where i.chart=:chart and i.kiho*=c.c_key and i.h_zip*=Substring(p.zipcode,1,3)+Substring(p.Zipcode,5,3) ');

          //Sql.Add('select i.chart,i.name,i.chamgo, i.kiho, i.k_number, i.piboName,  i.jumin,p.sido+'' ''+ p.gugun+'' ''+');
          Sql.Add('select chart, name, NameEng, kiho, k_number, piboName,  jumin, ');
          Sql.Add('h_juso  ');
          //sql.Add(',dbo.f_GetFullAge((case when substring(jumin,7,1) in (''3'',''4'') then ''20''+jumin else ''19''+jumin end),getdate()) as nai');
          Sql.Add('from view_gogek  where  ');
          Sql.Add(' chart=:chart');
          ParamByName('chart').AsString := edtChartNo.Text;
          Open;
          First;
          if not isEmpty then
          begin
               Edit7.Text := FieldByname('kiho').Asstring;
               Edit8.Text := '';
               Edit9.Text := FieldByname('k_number').Asstring;
               Edit10.Text := FieldByname('piboname').Asstring;

               sJumin := FieldByname('jumin').Asstring;


               edit2.Text := FieldByname('chart').Asstring;
               EdtJuminNo.Text := Copy(FieldByname('jumin').Asstring, 1, 6)
                    + '-'
                    + Copy(FieldByname('jumin').Asstring, 7, 1) +'******';//Copy(FieldByname('jumin').Asstring, 7, 7);
               //               EdtPadd.Text := Copy(FieldByname('address').Asstring, 1, 6);

            if lblKind.Caption = '11' then   //영문진단서
            begin

               edit1.Text   := FieldByname('NameEng').Asstring;
               EdtPadd.Text := '';//FieldByname('h_juso').Asstring;
               edtGender.Items.Clear;
               edtGender.Items.add('MALE');
               edtGender.Items.add('FEMALE');
               edtBd.Text :=   JuminToBirth_ENG(sJumin) ;
            end
            else
            begin
               edit1.Text   := FieldByname('name').Asstring;
               EdtPadd.Text := FieldByname('h_juso').Asstring;
               edtBd.Text :=   JuminToBirth3(sJumin) ;

               edtGender.Items.Clear;
               edtGender.Items.add('남');
               edtGender.Items.add('여');
            end;
//               EdtAge.Text := NaiCalc(FieldByname('jumin').Asstring, formatDateTime('yyyy-mm-dd',
//                    RelDate.Date));
               EdtAge.Text := jumintonai(FieldByname('jumin').Asstring, formatDateTime('yyyy-mm-dd',
                    RelDate.Date));

               //EdtAge.Text := FieldByname('nai').Asstring;
               sSex := Copy(FieldByname('jumin').Asstring, 7, 1);
//               if ((sSex = '3') or (sSex = '4')) then
//                    edtBd.Text := '20' + Copy(FieldByname('jumin').Asstring, 1, 2) + '년 ' + Copy(FieldByname('jumin').Asstring, 3, 2) + '월 ' + Copy(FieldByname('jumin').Asstring, 5, 2) + '일'
//               else
//                    edtBd.Text := '19' + Copy(FieldByname('jumin').Asstring, 1, 2) + '년 ' + Copy(FieldByname('jumin').Asstring, 3, 2) + '월 ' + Copy(FieldByname('jumin').Asstring, 5, 2) + '일';

              if ((sSex = '1') or (sSex = '3')) then
                    edtGender.itemindex := 0
               else
                    edtGender.itemindex := 1;



               EdtPName.Text := FieldByname('name').Asstring;

          end;
     end;
end;

procedure TMain_f.btnPlanPaperClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 0;
     pcMain.ActivePage.PageIndex:=0;// .TabIndex:=0;

     Panel3.Caption := btnPlanPaper.Caption;
     lblReturn.Caption := '치료기간';
     label19.Caption := '향후 치료내역';
     lblKind.Caption := '1';
     btnNewclick(Self);
     ChangeTab;
end;
procedure TMain_f.ChangeTab;
var
     sangByungList : TSangList;

begin
//     if pcMain.ActivePageIndex <= 4 then
//     begin
//          btnDelete.Left := 394;
//          btnPrint.Left := 281;
//     end
//     else
//     begin
//          btnPrint.Left := 394;
//          btnDelete.Left := 281;
//     end;

{
                    case pcMain.ActivePageIndex of
                    0:  //향후치료비추정서/소견서/진료확인서
                    begin
                       lstDangName.Items.Clear;
                       lstSangCode.Items.Clear;
                    end;
                    1:  //진료의뢰서
                    begin
                       lstDangName1.Items.Clear;
                       lstSangCode1.Items.clear;
                    end;
                    2:  //일반진단서/()확인서
                    begin
                       lstDangName2.Items.clear;
                       lstSangCode2.Items.clear;
                   end;
                    3:  ;//향후치료비추정서

                    4:  //상해진단서
                    begin
                        lstDangName4.Items.clear;
                        lstSangCode4.Items.clear;
                    end;
               end;


          sang1, sang2, sang3 : string;
          sangCode1, sangCode2, sangCode3 : string;
}

   try
        sangByungCodeList := TstringList.Create;
        sangByungNameList := TstringList.Create;

        sangByungList     := loadSangByungList( edtChartNo.Text,
                             formatDatetime('YYYY-MM-DD',now),
                              formatDatetime('YYYY-MM-DD',now));
        sangByungCodeList :=  sangByungList.sangCode;
        sangByungNameList :=  sangByungList.sangName;
   finally
//        sangByungCodeList.Free;
//        sangByungNameList.Free;
   end;

     case pcMain.ActivePageIndex of
          0:  //향 추 , 소견서, 회송서
           begin

                    //진료실에서 가져온 상병 넣기

                    lstDangName.Items := sangByungNameList;
                    lstSangCode.Items := sangByungCodeList;

//                    lstDangName.Items.Clear;
//                    lstDangName.items.Add(sang1);
//                    lstDangName.items.Add(sang2);
//                    lstDangName.items.Add(sang3);
//
//                    lstSangCode.Items.Clear;
//                    lstSangCode.items.Add(sangCode1);
//                    lstSangCode.items.Add(sangCode2);
//                    lstSangCode.items.Add(sangCode3);
           end;

          1:  //진료의뢰서
           begin
                    lstDangName1.Items := sangByungNameList;
                    lstSangCode1.Items := sangByungCodeList;

                    //진료실에서 가져온 상병 넣기
//                    lstDangName1.Items.Clear;
//                    lstDangName1.items.Add(sang1);
//                    lstDangName1.items.Add(sang2);
//                    lstDangName1.items.Add(sang3);
//
//                    lstSangCode1.Items.Clear;
//                    lstSangCode1.items.Add(sangCode1);
//                    lstSangCode1.items.Add(sangCode2);
//                    lstSangCode1.items.Add(sangCode3);

           end;
          2: // 일반진단, (   )확인서. 통원확인서
               begin

                    lstDangName2.Items := sangByungNameList;
                    lstSangCode2.Items := sangByungCodeList;

//                     //진료실에서 가져온 상병 넣기
//                    lstDangName2.Items.Clear;
//                    lstDangName2.items.Add(sang1);
//                    lstDangName2.items.Add(sang2);
//                    lstDangName2.items.Add(sang3);
//
//                    lstSangCode2.Items.Clear;
//                    lstSangCode2.items.Add(sangCode1);
//                    lstSangCode2.items.Add(sangCode2);
//                    lstSangCode2.items.Add(sangCode3);



               end;
           3: ;//향추 - 상병없음.
           4: // 상해진단서, 병사용진단서
           begin
                    lstDangName4.Items := sangByungNameList;
                    lstSangCode4.Items := sangByungCodeList;

//                    lstDangName4.Items.Clear;
//                    lstDangName4.items.Add(sang1);
//                    lstDangName4.items.Add(sang2);
//                    lstDangName4.items.Add(sang3);
//
//                    lstSangCode4.Items.Clear;
//                    lstSangCode4.items.Add(sangCode1);
//                    lstSangCode4.items.Add(sangCode2);
//                    lstSangCode4.items.Add(sangCode3);

           end;
     end;

     case pcMain.ActivePageIndex of
          0:  //향 추 , 소견서, 회송서
               begin
                    Panel4.Visible    := True;
                    Panel5.Visible    := True;
                  //  edtHwakinCap.Visible     := False;
                    pnlHwakinCap.Visible  := False;
                    btnNew.Visible    := True;
                    btnSave.Visible   := True;
                    btnDelete.Caption := '삭제';

               end;
          1:  //진료의뢰서
               begin
                    Panel4.Visible := True;
                    Panel5.Visible := True;
                    btnNew.Visible := True;
                    btnSave.Visible := True;
                    btnDelete.Caption := '삭제';
                    if Edit2.Text <> '' then
                    begin
                         with dm_f.SqlTemp2 do
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('select i.kiho,i.k_number,i.piboname from view_gogek i where i.chart=:chart');
                              ParamByName('chart').AsString := Trim(Edit2.Text);
                              Open;
                              first;
                              if not isEmpty then
                              begin
                                   Edit7.Text := FieldByname('kiho').AsString;
                                   Edit8.Text := ''; //FieldByname('c_name').AsString;
                                   Edit9.Text := FieldByname('k_number').AsString;
                                   Edit10.Text := FieldByname('piboname').AsString;
                              end;
                         end;
                    end;



               end;
          2, 3, 4, 9:  //진료의뢰, 일반진단, 향추 , 병사용진단서
               begin
                    Panel4.Visible := True;
                    Panel5.Visible := True;
                    btnNew.Visible := True;
                    btnSave.Visible := True;
                    btnDelete.Caption := '삭제';
                    DateEdit7.Date := Now;
                    DateEdit8.Date := Now;
                    DateEdit9.Date := Now;
                    DateEdit2.Date := Now;
                    DateEdit4.Date := Now;
                    DateEdit5.Date := Now;
                    DateEdit6.Date := Now;
                    DateEdit1.Date := Now;
                    dtStartDesease.Date := Now;


               end;

          5, 6, 7, 8: //진료비확인서 발급대장, 원외처방발급대장, 문서발급대장, 방사선촬영대장
               begin
                    Panel4.Visible := False;
                    Panel5.Visible := False;
                  //  edtHwakinCap.Visible     := False;
                    pnlHwakinCap.Visible  := False;
                    btnNew.Visible := False;
                    btnSave.Visible := False;
                    btnDelete.Caption := '조회';
                    wDateEdit1.Date := Now;
                    wDateEdit2.Date := Now;
                    wDateEdit3.Date := Now;
                    wDateEdit4.Date := Now;
                    wDateEdit5.Date := StrToDate(FormatDateTime('yyyy', Now) + '-01-01');
                    wDateEdit6.Date := Now;
                    wDateEdit7.Date := StrToDate(FormatDateTime('yyyy', Now) + '-01-01');
                    wDateEdit8.Date := Now;
                    wDateEdit10.Date := Now;
                    wDateEdit9.Date := StrToDate(FormatDateTime('yyyy', Now) + '-01-01');
                    ComboBox2.Items.IndexOfName(FormatDatetime('yyyy', Now));
               end;
     end;

end;

procedure TMain_f.cbDeseaseDateAcceptClick(Sender: TObject);
begin

    if cbDeseaseDateAccept.Checked = true then
    begin
         dtStartDesease.Visible  :=  true;
         lblStartDesease.caption:= '발병일';
         lblStartDesease.Visible :=  true;
    end
    else
    begin
         dtStartDesease.Visible  :=  false;

         if lblKind.Caption = '11' then
              lblStartDesease.caption:= 'Unknown'
         else
              lblStartDesease.caption:= '발병일 미상';

         lblStartDesease.Visible :=  true;

    end;



end;

procedure TMain_f.btnSogyunseoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 0;
     Panel3.Caption := btnSogyunseo.Caption;
     lblReturn.Caption := '비고';
     label19.Caption := '소견내용';
     lblKind.Caption := '2';
     btnNewclick(Self);
     ChangeTab;
end;

procedure TMain_f.Button1Click(Sender: TObject);
begin      //통원확인서
     Label55.Visible := False;
     pcMain.ActivePageIndex := 2;
 //    Panel3.Caption := btnHwakinSeo.Caption;

     Panel3.Caption :='';
     pnlTerm.Visible := true;

     lblterm.Caption := '치료기간';
     lblOpCode.Visible := false;
     edtOpCode.Visible := false;
     lblOpName.Visible := false;
     edtOpName.Visible := false;


     pnlHwakinCap.Visible    := true;
     edtHwakinCap.Visible    := false;
     edtHwakinCap2.Visible   := true;
     edtHwakinCap2.itemindex := 0;//'통원';
     label26.Caption         := '확인사항';
     //edtHwakinCap.Visible := True;
      //  edtHwakinCap.Visible     := False;


     lblKind.Caption := '9';


     lblStartDesease.Visible := False;
     dtStartDesease.Visible := False;
     cbDeseaseDateAccept.Visible := False;

     Label54.Visible := true;


     edtTerm.Visible := false;
     pnlTerm.Visible := true;

     Shape27.Visible := False;

     Memo3.Text := '상기 환자는 상기 병명으로 본원에서' + #13#10 +
          '(                         )부터 (                         )사이에' + #13#10 +
          '치료를 받았기에 이를 확인 함. 끝.';


     btnNewclick(Self); //초기화


     ChangeTab;
     datetimepicker1.Date :=  strtoDate( LoadFirstDay(edtChartNo.text));// now;  //초진일   LoadFirstDay(chart: string)
     datetimepicker2.Date :=  strtoDate( LoadLastDay(edtChartNo.text));//now;  //최종일

end;

procedure TMain_f.Button2Click(Sender: TObject);
begin
     pnlTerm.Visible := true;
end;

procedure TMain_f.btnCertificationClick(Sender: TObject);
begin

     Label55.Visible := False;
     pcMain.ActivePageIndex := 2;
     Panel3.Caption := btnCertification.Caption;
      //  edtHwakinCap.Visible     := False;
     datetimepicker1.DateTime := now;
     datetimepicker2.DateTime := now;
     pnlOpcode.Visible := false;

     //영문진단서
     pnlHwakinCap.Visible  := False;
     lblKind.Caption := '11';
     edtTerm.Visible := True;

     loadPatInfo;

     cbDeseaseDateAccept.Visible := True;

     dtStartDesease.Visible  :=  false;
     lblStartDesease.caption:= 'Unknown';
     lblStartDesease.Visible :=  true;

//     lblStartDesease.Visible     := false;
//     dtStartDesease.Visible      := false;

     Label54.Visible := True;
     Shape27.Visible := True;
     Memo3.Text := '';
     btnNewclick(Self);
     ChangeTab;

end;

procedure TMain_f.btmSang2LoadClick(Sender: TObject);
var

     sangByungList : TSangList;

begin
//     edtTerm.Text := formatDatetime('YYYY-MM-DD', datetimepicker1.Date)  +'~'+
//                       formatDatetime('YYYY-MM-DD', datetimepicker2.Date);
//     edtTerm.visible := true;

//     memo3.Lines.add('통원기간 : '+ formatDatetime('YYYY-MM-DD', datetimepicker1.Date)  +'~'+
//                       formatDatetime('YYYY-MM-DD', datetimepicker2.Date));
   case edtHwakinCap2.ItemIndex of

      0:
           Memo3.Text := '상기 환자는 상기 병명으로 본원에서' + #13#10 +
          formatDatetime('YYYY-MM-DD', datetimepicker1.Date) +' 부터'+
           formatDatetime('YYYY-MM-DD', datetimepicker2.Date) +'사이에' + #13#10 +
          '통원치료를 받았기에 이를 확인 함. 끝.';

      1:
           Memo3.Text := '상기 환자는 상기 병명으로 본원에서' + #13#10 +
          formatDatetime('YYYY-MM-DD', datetimepicker1.Date) +' 부터'+
           formatDatetime('YYYY-MM-DD', datetimepicker2.Date) +'사이에' + #13#10 +
          ' 입원치료를 받았기에 이를 확인 함. 끝.';
     else
         begin
             edtTerm.Text :=     formatDatetime('YYYY-MM-DD', datetimepicker1.Date) +' 부터'+
           formatDatetime('YYYY-MM-DD', datetimepicker2.Date);
            //발병일  dateEdit3.DateTime   cbDeseaseDateAccept 체크 안되면 - 미상
         end;
   end;

//     edtTerm.visible := true;

    try
        sangByungCodeList := TstringList.Create;
        sangByungNameList := TstringList.Create;

        sangByungList     := loadSangByungList( edtChartNo.Text,
                            formatDatetime('YYYY-MM-DD',datetimepicker1.date)  ,
                            formatDatetime('YYYY-MM-DD',datetimepicker2.date));
        sangByungCodeList :=  sangByungList.sangCode;
        sangByungNameList :=  sangByungList.sangName;
   finally
//        sangByungCodeList.Free;
//        sangByungNameList.Free;
        lstDangName2.Items := sangByungNameList;
        lstSangCode2.Items := sangByungCodeList;

   end;

     pnlTerm.Visible := false;
end;

procedure TMain_f.btnJinryoUiRoiSeoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 1;
     Panel3.Caption := btnJinryoUiRoiSeo.Caption;
      //  edtHwakinCap.Visible     := False;
      pnlHwakinCap.Visible  := False;
     lblKind.Caption := '3';
     btnNewclick(Self);
      ChangeTab;
end;

procedure TMain_f.btnJinryoHwakinSeoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 0;
     Panel3.Caption := btnJinryoHwakinSeo.Caption;
     datetimepicker1.DateTime := now;
     datetimepicker2.DateTime := now;

     lblReturn.Caption := '치료기간';
     label19.Caption := '치료내용';
     lblKind.Caption := '4';

     pnlOpcode.Visible := true;

      btnNewclick(Self);
      ChangeTab;
end;

procedure TMain_f.btnJindanSeoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 2;
     Panel3.Caption := btnJindanSeo.Caption;
      //  edtHwakinCap.Visible     := False;
     datetimepicker1.DateTime := now;
     datetimepicker2.DateTime := now;
     pnlOpcode.Visible := false;

     //일반진단서
     pnlHwakinCap.Visible  := False;
     lblKind.Caption := '5';
     edtTerm.Visible := True;

     dtStartDesease.Visible  :=  false;
     lblStartDesease.caption:= '발병일 미상';
     lblStartDesease.Visible :=  true;

//     lblStartDesease.Visible     := false;
//     dtStartDesease.Visible      := false;

     Label54.Visible := True;
     Shape27.Visible := True;
     Memo3.Text := '';
     btnNewclick(Self);
      ChangeTab;
end;

procedure TMain_f.btnHyangChuClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 3;
     Panel3.Caption := btnHyangChu.Caption;
     Label29.Caption := '향후 치료내역';
      //  edtHwakinCap.Visible     := False;
      pnlHwakinCap.Visible  := False;
     lblKind.Caption := '6';
     btnNewclick(Self);
      ChangeTab;
end;

procedure TMain_f.btnSangHaeJindanClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 4;
     Panel3.Caption := btnSangHaeJindan.Caption;
      //  edtHwakinCap.Visible     := False;
      pnlHwakinCap.Visible  := False;
     lblKind.Caption := '7';
     btnNewclick(Self);
      ChangeTab;
end;

procedure TMain_f.btnHoisongSeoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 0;
     Panel3.Caption := btnHoisongSeo.Caption;
     lblReturn.Caption := '비고';
     label19.Caption := '회송내용';
     lblKind.Caption := '10';
     btnNewclick(Self);
     ChangeTab;
end;

procedure TMain_f.btnHwakinSeoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 2;

   //  Panel3.Caption := btnHwakinSeo.Caption;
   //  edtHwakinCap.Visible := True;
     Panel3.Caption :='';
      edtHwakinCap.text:='';

      pnlTerm.Visible := false;

     edtHwakinCap.Visible := true;
     edtHwakinCap2.Visible := false;

     edtHwakinCap.Visible := true;
     pnlHwakinCap.Visible := True;

     label26.Caption := '확인사항';
     lblKind.Caption := '8';
     Label54.Visible := False;
     edtTerm.Visible := False;
     Shape27.Visible := False;

     lblStartDesease.Visible := False;
     dtStartDesease.Visible := False;
     cbDeseaseDateAccept.Visible := False;

     Memo3.Text := '상기 환자는 상기 병명으로 본원에서' + #13#10 +
          '(                         )부터 (                         )사이에' + #13#10 +
          '치료를 받았기에 이를 확인 함. 끝.';
     btnNewclick(Self);
      ChangeTab;
end;

procedure TMain_f.spSkinButton101Click(Sender: TObject);
begin
     pcMain.ActivePageIndex := 5;
     Panel3.Caption := spSkinButton101.Caption;
     Label55.Visible := True;
      ChangeTab;
end;

procedure TMain_f.spSkinButton100Click(Sender: TObject);
begin
     pcMain.ActivePageIndex := 6;
     Panel3.Caption := spSkinButton100.Caption;
     Label55.Visible := False;
      ChangeTab;
end;

procedure TMain_f.spSkinButton104Click(Sender: TObject);
begin
     pcMain.ActivePageIndex := 7;
     Panel3.Caption := spSkinButton104.Caption;
     Label55.Visible := False;
      ChangeTab;
end;

procedure TMain_f.spSkinButton2Click(Sender: TObject);
begin
     pcMain.ActivePageIndex := 8;
     Panel3.Caption := spSkinButton2.Caption;
     Label55.Visible := False;
      ChangeTab;
end;

procedure TMain_f.EdtChartNoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then SelectNext(sender as TWinControl, True, True);
end;

procedure TMain_f.BitBtn3Click(Sender: TObject);
begin
     FindPt_f := TFindPt_f.Create(application);
     FindPt_f.ComboBox1.ItemIndex := 0;
     FindPt_f.Showmodal;
     FindPt_f.Free;
     FindPt_f := nil;
end;

procedure TMain_f.BitBtn1Click(Sender: TObject);
begin
     FindPt_f := TFindPt_f.Create(application);
     FindPt_f.ComboBox1.ItemIndex := 1;
     FindPt_f.Showmodal;
     FindPt_f.Free;
     FindPt_f := nil;

end;

procedure TMain_f.EdtPNameExit(Sender: TObject);
begin
     if edtPname.text <> '' then
     begin
          FindPt_f := TFindPt_f.Create(application);
          FindPt_f.ComboBox1.ItemIndex := 1;
          FindPt_f.Edit1.Text := EdtPname.Text;
          FindPt_f.Showmodal;
          FindPt_f.Free;
          FindPt_f := nil;
     end;
end;

procedure TMain_f.EdtPNameEnter(Sender: TObject);
begin
     EdtPname.Text := '';
     edtChartno.Text := '';
end;

procedure TMain_f.edtHwakinCap2Change(Sender: TObject);
begin
       pnlTerm.Visible := true;
       case edtHwakinCap2.ItemIndex of

           0:
           begin

               lblterm.Caption := '치료기간';
               lblOpCode.Visible := false;
               edtOpCode.Visible := false;
               lblOpName.Visible := false;
               edtOpName.Visible := false;

           end;

           1:
           begin

               lblterm.Caption := '입원기간';
               lblOpCode.Visible := true;
               edtOpCode.Visible := true;
               lblOpName.Visible := true;
               edtOpName.Visible := true;

               lblOpCode.Visible := false;
               edtOpCode.Visible := false;
               lblOpName.Visible := false;
               edtOpName.Visible := false;

           end;
       end;




end;

procedure TMain_f.edtJindanEnter(Sender: TObject);
begin
     if TEdit(Sender).Text = '진단명직접입력' then TEdit(Sender).Text := '';
end;

procedure TMain_f.btnDeleteClick(Sender: TObject);
var
     sKind, sNai, sSex, sbuwiorder, sPortion: string;
begin
     if (pcMain.ActivePageIndex = 8) then //방사선
     begin
          if (Pagecontrol2.ActivePageIndex = 0) then
          begin
               //방사선촬영대장
               with dm_f.SqlTemp do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('select s.jin_day,i.chart,i.name,s.su_kor_name, i.jumin, s.jin_qty, s.Iorder from jinryo_s s, view_gogek i where s.chart=i.chart and s.jin_day>=:jin_day1 and s.jin_day<=:jin_day2 and s.su_gu3 in (''31'',''32'',''33'') and s.su_gu1 in (''2'',''4'') order by s.jin_day');
                    ParamByName('jin_day1').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit1.Date);
                    ParamByName('jin_day2').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit2.Date);
                    Open;
                    First;
                 //   grdList1.Clear;

                      grdList1.RemoveRows(1,grdList1.RowCount );

                    if not isEmpty then
                    begin
                         while not eof do
                         begin
                              grdList1.AddRow;
                              grdList1.Cells[1, grdList1.RowCount - 1] := FieldByName('jin_day').AsString;
                              grdList1.Cells[2, grdList1.RowCount - 1] := FieldByName('chart').AsString;
                              grdList1.Cells[3, grdList1.RowCount - 1] := FieldByName('name').AsString;
                              sSex := genderdisp(FieldByName('jumin').AsString);
                              sbuwiorder := FieldByName('Iorder').AsString;
                              grdList1.Cells[4, grdList1.RowCount - 1] := sSex; //성별
                              grdList1.Cells[7, grdList1.RowCount - 1] := FieldByName('jin_qty').AsString; //매수
                              grdList1.Cells[6, grdList1.RowCount - 1] := FieldByName('su_kor_name').AsString; //처치명

                              dm_f.sqlfind.Close;
                              dm_f.sqlfind.Sql.Clear;
                              dm_f.sqlfind.Sql.Add('select nai from jinryo_p where chart=:chart and jin_day=:jin_day');
                              dm_f.sqlfind.ParamByName('jin_day').AsString := FieldByName('jin_day').AsString;
                              dm_f.sqlfind.ParamByName('chart').AsString := FieldByName('chart').AsString;
                              dm_f.sqlfind.open;
                              dm_f.sqlfind.first;

                              if not dm_f.sqlfind.isempty then
                              begin
                                   grdList1.Cells[5, grdList1.RowCount - 1] := dm_f.sqlfind.FieldByName('nai').AsString; //나이
                              end
                              else
                              begin
                                   grdList1.Cells[5, grdList1.RowCount - 1] := '';
                              end;

                              dm_f.sqlfind.Close;
                              dm_f.sqlfind.Sql.Clear;
                              dm_f.sqlfind.Sql.Add('select p1,p2,p3,p4 from jinryo_o where chart=:chart and jin_day=:jin_day and jin_order=:jin_order');
                              dm_f.sqlfind.ParamByName('jin_day').AsString := FieldByName('jin_day').AsString;
                              dm_f.sqlfind.ParamByName('chart').AsString := FieldByName('chart').AsString;
                              dm_f.sqlfind.ParamByName('jin_order').AsString := sbuwiorder;
                              dm_f.sqlfind.open;
                              dm_f.sqlfind.first;

                              if not dm_f.sqlfind.isempty then
                              begin
                                   sPortion := ConvertTeeth(dm_f.sqlfind.FieldByName('p1').AsString,
                                        dm_f.sqlfind.FieldByName('p2').AsString,
                                        dm_f.sqlfind.FieldByName('p3').AsString,
                                        dm_f.sqlfind.FieldByName('p4').AsString);

                                   if sPortion = '17,16,15,14,13,12,11,21,22,23,24,25,26,27,31,32,33,34,35,36,37,47,46,45,44,43,42,41' then
                                        sPortion := '17-27,47-37';
                                   if sPortion = '17,16,15,14,13,12,11,21,22,23,24,25,26,27' then
                                        sPortion := '17-27';
                                   if sPortion = '31,32,33,34,35,36,37,47,46,45,44,43,42,41' then
                                        sPortion := '47-37';
                                   if sPortion = '1E,1D,1C,1B,1A,2A,2B,2C,2D,2E' then
                                        sPortion := '55-65';
                                   if sPortion = '3A,3B,3C,3D,3E,4E,4D,4C,4B,4A' then
                                        sPortion := '85-75';
                                   if sPortion = '17,16,15,14,13,12,11' then
                                        sPortion := '17-11';
                                   if sPortion = '21,22,23,24,25,26,27' then
                                        sPortion := '21-27';
                                   if sPortion = '31,32,33,34,35,36,37' then
                                        sPortion := '31-37';
                                   if sPortion = '47,46,45,44,43,42,41' then
                                        sPortion := '47-41';

                                   grdList1.Cells[8, grdList1.RowCount - 1] := sPortion; //촬영부위
                              end
                              else
                              begin
                                   grdList1.Cells[8, grdList1.RowCount - 1] := '';
                              end;

                              Next;
                         end;
                     //    grdList1.CalcFooters;
                    end;
               end;
          end
          else
               if (Pagecontrol2.ActivePageIndex = 1) then
               begin
                    //방사선촬영통계
                    if comboBox2.Itemindex >= 0 then
                    begin
                         with dm_f.SqlWork do
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('                          ');
                              Sql.Add('     select jin_month,    ');
                              Sql.Add('(case when age<=10 then ''0''  ');
                              Sql.Add('when (age>10 and age<=20) then ''1''       ');
                              Sql.Add('when (age>20 and age<=30) then ''2''       ');
                              Sql.Add('when (age>30 and age<=40) then ''3''       ');
                              Sql.Add('when (age>40 and age<=50) then ''4''       ');
                              Sql.Add('when (age>50 and age<=60) then ''5''       ');
                              Sql.Add('when (age>60)  then ''6'' end) as nai,sex,count(su_kor_name) as cnt ');
                              Sql.Add('                                                                    ');
                              Sql.Add('from (select dbo.f_GetFullAge(substring(i.jumin,1,6),s.jin_day) as age,substring(i.jumin,7,1) as sex,month(s.jin_day) as jin_month,  ');
                              Sql.Add('s.su_kor_name from view_gogek i, jinryo_s s where s.su_gu3 in (''31'',''32'',''33'') and s.su_gu1 in (''2'',''4'') and i.chart=s.chart       ');
                              Sql.Add('and s.jin_day>=:jin_day1 and s.jin_day<=:jin_day2 ) as main                                ');
                              Sql.Add('group by  (case when age<=10 then ''0''     ');
                              Sql.Add('when (age>10 and age<=20) then ''1''        ');
                              Sql.Add('when (age>20 and age<=30) then ''2''         ');
                              Sql.Add('when (age>30 and age<=40) then ''3''          ');
                              Sql.Add('when (age>40 and age<=50) then ''4''           ');
                              Sql.Add('when (age>50 and age<=60) then ''5''            ');
                              Sql.Add('when (age>60) then ''6'' end),sex,jin_month        ');
                              Sql.Add('order by jin_month,nai,sex');
                              ParamByName('jin_day1').AsString := ComboBox2.Items.Strings[ComboBox2.Itemindex] + '-01-01';
                              ParamByName('jin_day2').AsString := ComboBox2.Items.Strings[ComboBox2.Itemindex] + '-12-31';
                              Open;
                              First;


                           //   grdList2.Clear;
                              grdList2.RemoveRows(1,grdList2.RowCount - 1);

                              grdList2.RowCount := 7;
                              grdList2.Cells[1, 1] := '10세' + #13#10 + '이하';
                              grdList2.Cells[1, 2] := '11' + #13#10 + '-20';
                              grdList2.Cells[1, 3] := '21' + #13#10 + '-30';
                              grdList2.Cells[1, 4] := '31' + #13#10 + '-40';
                              grdList2.Cells[1, 5] := '41' + #13#10 + '-50';
                              grdList2.Cells[1, 6] := '51' + #13#10 + '-60';
                              grdList2.Cells[1, 7] := '61세' + #13#10 + '이상';

                              if not isempty then
                              begin
                                   while not eof do
                                   begin
                                        grdList2.Cells[3 * (FieldByName('jin_month').AsInteger - 1) + FieldByName('sex').AsInteger, FieldByName('nai').AsInteger] := FormatFloat('#,0', FieldbyName('cnt').AsInteger);

                                        grdList2.ints[3 * (FieldByName('jin_month').AsInteger - 1) + 3, FieldByName('nai').AsInteger] :=
                                             grdList2.ints[3 * (FieldByName('jin_month').AsInteger - 1) + 3, FieldByName('nai').AsInteger] + FieldbyName('cnt').AsInteger;

                                        if FieldByName('sex').AsInteger = 1 then
                                             grdList2.ints[38, FieldByName('nai').AsInteger]  := grdList2.ints[38, FieldByName('nai').AsInteger] + FieldbyName('cnt').AsInteger
                                        else
                                             grdList2.ints[39, FieldByName('nai').AsInteger]  := grdList2.ints[39, FieldByName('nai').AsInteger]  + FieldbyName('cnt').AsInteger;

                                        grdList2.ints[40, FieldByName('nai').AsInteger] := grdList2.ints[40, FieldByName('nai').AsInteger]  + FieldbyName('cnt').AsInteger;
                                        Next;
                                   end;
                               //    grdList2.CalcFooters;
                              end;
                         end;
                    end
                    else
                    begin
                         ShowMessage('해당 년도를 선택하십시오');
                         ComboBox2.SetFocus;
                    end;
               end
               else
               begin
                    //일자별
                    with dm_f.SqlTemp do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('select s.jin_day,(case when substring(i.jumin,7,1)=''2'' then ''F'' else ''M'' end) as Sex, count(*) as cnt from jinryo_s s, view_gogek i');
                         Sql.Add(' where s.chart=i.chart and s.jin_day>=:jin_day1 and s.jin_day<=:jin_day2 and s.su_gu3 in (''31'',''32'',''33'') and s.su_gu1 in (''2'',''4'') group by s.jin_day,(case when substring(i.jumin,7,1)=''2'' then ''F'' else ''M'' end) order by jin_day');
                         ParamByName('jin_day1').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit3.Date);
                         ParamByName('jin_day2').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit4.Date);
                         Open;
                         First;


                        //  grdList3.Clear;
                           grdList3.RemoveRows(1,grdList3.RowCount - 1 );


                         if not isEmpty then
                         begin
                              while not eof do
                              begin
                                   if ((grdList3.rowCount = 1) or
                                        (grdList3.Cells[1, grdList3.RowCount - 1] <> FieldByName('jin_day').AsString)) then
                                   begin
                                        grdList3.AddRow;
                                        grdList3.Cells[1, grdList3.RowCount - 1] := FieldByName('jin_day').AsString;
                                   end;
                                   if FieldByName('sex').AsString = 'M' then
                                        grdList3.ints[2, grdList3.RowCount - 1]  := FieldByName('cnt').AsInteger
                                   else
                                        grdList3.ints[3, grdList3.RowCount - 1] := FieldByName('cnt').AsInteger;
                                   grdList3.ints[4, grdList3.RowCount - 1]  := grdList3.ints[2, grdList3.RowCount - 1]  + grdList3.ints[3, grdList3.RowCount - 1];
                                   Next;
                              end;
                            //  grdList3.CalcFooters;
                         end;
                    end;

               end;

     end
     else
          if (pcMain.ActivePageIndex = 5) then //영수증발급대장
          begin
               with DM_f.SqlTemp do
               begin
                    Close;
                    SQL.Clear;
                    SQL.Add('select a.reldate, a.TreatPeriodS, a.TreatPeriodE,a.DateNo,  ' +
                         '       a.chart,a.sangbuwi,a.sanghow,a.jinpastmemo,                ' +
                         '       a.surgeryor,b.name,b.chart,a.reportkind                    ' +
                         '       from tbreport a,view_gogek b                                    ');
                    sql.add('where  a.reldate >= :reldate1 and a.reldate <=:reldate2     ' +
                         '       and a.ReportKind =''9''                                    ' +
                         '       and a.chart = b.chart                                      ');
                    if (EdtChartNo.Text <> '') then
                         Sql.Add(' and b.chart=''' + Trim(EdtChartNo.Text) + '''');
                    ParamByName('reldate1').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit5.Date); //검색시작일자
                    ParamByName('reldate2').AsString := FormatDateTime('yyyy-mm-dd', wDateEdit6.Date); //검색종료일자

                    Open;
                    First;
                  //  grdList4.Clear;

                      grdList4.RemoveRows(1,grdList4.RowCount -1 );

                    if RecordCount > 0 then
                    begin
                         while not eof do
                         begin
                              grdList4.AddRow;
                              grdList4.Cells[1, grdList4.RowCount - 1] := fieldbyname('chart').AsString;
                              grdList4.Cells[2, grdList4.RowCount - 1] := fieldbyname('name').AsString;
                              grdList4.Cells[3, grdList4.RowCount - 1] := fieldbyname('reldate').AsString;
                              grdList4.Cells[4, grdList4.RowCount - 1] := fieldbyname('sangbuwi').AsString;
                              grdList4.Cells[5, grdList4.RowCount - 1] := fieldbyname('sanghow').AsString;
                              grdList4.Cells[6, grdList4.RowCount - 1] := fieldbyname('jinpastmemo').AsString;
                              grdList4.Cells[7, grdList4.RowCount - 1] := FieldByName('surgeryor').AsString;
                              grdList4.Cells[8, grdList4.RowCount - 1] := FormatDateTime('yyyy.mm.dd', FieldByName('TreatPeriodS').AsDateTime) +
                                   '~' + FormatDateTime('yyyy.mm.dd', FieldByName('TreatPeriodE').AsDateTime);
                              Next;
                         end;
                    end;
               end;
          end
          else
               if (pcMain.ActivePageIndex = 6) then //원외처방전발급대장
               begin
                    with DM_f.SqlTemp do
                    begin
                         Close;
                         SQL.Clear; //날짜, 연번호, 주민번호, 챠트번호, 이름,
                         SQL.Add(' select w.jin_day,w.chart,w.seqno,w.expiration,i.name,i.jumin       ' +
                              ' from wonwe_p w, view_gogek i                                            ' +
                              ' where w.jin_day>=:Sdate and w.jin_day<=:eDate and w.chart=i.chart  ');
                         if (EdtChartNo.Text <> '') then
                              Sql.Add(' and i.chart=''' + Trim(EdtChartNo.Text) + '''');
                         Sql.Add(' order by w.jin_day,w.seqno                                         ');
                         ParamByName('sDate').Value := FormatDateTime('yyyy-mm-dd', wDateEdit7.Date);
                         ParamByName('eDate').Value := FormatDateTime('yyyy-mm-dd', wDateEdit8.Date);
                         Open;
                         First;
                       //  grdList5.Clear;
                           grdList5.RemoveRows(1,grdList5.RowCount -1 );

                         if RecordCount > 1 then
                         begin
                              while not eof do
                              begin
                                   grdList5.AddRow;
                                   grdList5.Cells[1, grdList5.RowCount - 1] := FieldByName('jin_day').AsString;
                                   grdList5.ints[2, grdList5.RowCount - 1] := FieldByName('seqno').AsInteger;
                                   grdList5.Cells[3, grdList5.RowCount - 1] := FieldByName('chart').AsString;
                                   grdList5.Cells[4, grdList5.RowCount - 1] := FieldByName('name').AsString;
                                   grdList5.Cells[5, grdList5.RowCount - 1] := Copy(FieldByName('jumin').AsString, 1, 6) + '-' + Copy(FieldByName('jumin').AsString, 7, 7);
                                   grdList5.Cells[6, grdList5.RowCount - 1] := FieldByName('expiration').AsString;
                                   Next;
                              end;
                         end;

                         DM_f.SqlTemp.Close;
                    end;

               end
               else
                    if (pcMain.ActivePageIndex = 7) then //문서발급대장
                    begin
                         sKind := '';
                         if CheckBox1.Checked then skind := skind + ',''2''';
                         if CheckBox2.Checked then skind := skind + ',''1''';
                         if CheckBox3.Checked then skind := skind + ',''3''';
                         if CheckBox4.Checked then skind := skind + ',''4''';
                         if CheckBox5.Checked then skind := skind + ',''8''';
                         if CheckBox6.Checked then skind := skind + ',''6''';
                         if CheckBox7.Checked then skind := skind + ',''7''';
                         if CheckBox8.Checked then skind := skind + ',''5''';
                         if CheckBox11.Checked then skind := skind + ',''0''';
                         sKind := Copy(sKind, 2, 300);


                         if skind = '' then
                           skind := '''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''0'',''10''';

                         with DM_f.SqlTemp do
                         begin
                              Close;
                              SQL.Clear;
                              SQL.Add('select a.reldate, a.TreatPeriodS, a.TreatPeriodE, a.ReportKind,  a.Sangbuwi,  ' +
                                   '      a.chart,  a.s_key, a.docname,a.DateNo ,b.name '+//,c.s_kor_name   ' +
                                   '  from tbreport a,view_gogek b');//,sangbyung c                                       ');
                              sql.add('where  a.reldate >= :TreatPeriodS and a.reldate <=:TreatPeriodE             ' +
                                   ' and a.ReportKind in (' + sKind + ')                                        ');
                            //  sql.add(' and  a.s_key = c.s_key and a.chart = b.chart                              ');
                                sql.add(' and   a.chart = b.chart                              ');
                              if (EdtChartNo.Text <> '') then
                                   Sql.Add(' and b.chart=''' + Trim(EdtChartNo.Text) + '''');
                              sql.add(' Order by dateno DESC');
                              ParamByName('TreatPeriodS').AsString := FormatDateTime('YYYY-MM-DD', wDateEdit9.Date); //검색시작일자
                              ParamByName('TreatPeriodE').AsString := FormatDateTime('YYYY-MM-DD', wDateEdit10.Date); //검색종료일자

                              Open;
                              First;
                            //  grdList6.Clear;
                                grdList6.RemoveRows(1,grdList6.RowCount - 1 );

                              if RecordCount > 0 then
                              begin
                                   while not eof do
                                   begin
                                        grdList6.AddRow;
                                        grdList6.Cells[1, grdList6.RowCount - 1] := copy(FieldByName('DateNo').AsString, 1, 8) + '-' + copy(FieldByName('DateNo').AsString, 9, 3);

                                        case strtoint(FieldByName('reportkind').asstring) of
                                             10: grdList6.Cells[2, grdList6.RowCount - 1] := '회송서';
                                             1: grdList6.Cells[2, grdList6.RowCount - 1] := '치료계획';
                                             2: grdList6.Cells[2, grdList6.RowCount - 1] := '소견서';
                                             3: grdList6.Cells[2, grdList6.RowCount - 1] := '진료의뢰';
                                             4: grdList6.Cells[2, grdList6.RowCount - 1] := '진료확인';
                                             5: grdList6.Cells[2, grdList6.RowCount - 1] := '일반진단';
                                             6: grdList6.Cells[2, grdList6.RowCount - 1] := '향치추정';
                                             7: grdList6.Cells[2, grdList6.RowCount - 1] := '상해진단';
                                             9: grdList6.Cells[2, grdList6.RowCount - 1] := '통원/입원';
                                             8: grdList6.Cells[2, grdList6.RowCount - 1] :=FieldByName('sangBuwi').AsString+ ' 확인서';
                                             0: grdList6.Cells[2, grdList6.RowCount - 1] := '병사용진단서';
                                        end;
                                        grdList6.Cells[3, grdList6.RowCount - 1] := FieldByName('chart').AsString;
                                        grdList6.Cells[4, grdList6.RowCount - 1] := FieldByName('name').AsString;
                                        grdList6.Cells[5, grdList6.RowCount - 1] :='';// FieldByName('s_kor_name').AsString;
                                        grdList6.Cells[6, grdList6.RowCount - 1] := FieldByName('reldate').AsString;
                                        grdList6.Cells[7, grdList6.RowCount - 1] := FieldByName('docname').AsString;
                                        Next;
                                   end;
                              end;
                         end;
                        grdList6.AutoNumberCol(0);
                    end
                    else
                    begin
                         //-----------------------------------------------------------------------------------
                         if Application.MessageBox('현재 문서를 삭제하시겠습니까?', '삭제확인', MB_OKCANCEL) = 1 then
                         begin
                              with dm_f.SqlTemp2 do
                              begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('delete from tbreport where dateno=:dateno and reportKind=:ReportKind');
                                   ParamByName('DateNo').AsString := Copy(EdtSeqNo.Text, 1, 8) + Copy(edtSeqNo.Text, 10, 3);
                                   ParamByName('ReportKind').AsString := lblKind.Caption;
                                   ExecSql;
                              end;
                              Showmessage('삭제되었습니다');

                              btnNewClick(Self);
                              spSkinButton104Click(Self);
                              pcMain.ActivePageIndex := 7;
                              btnDeleteClick(Self);  //  pcMain.ActivePageIndex := 7이면 발급내역 조회

                         end;
                    end;
end;

function TMain_f.ConvertTeeth(s1, s2, s3, s4: string): string;
var
     i: Integer;
begin
     Result := '';
     for i := 1 to Length(s1) do
     begin
          if Copy(s1, i, 1) <> '_' then
               Result := Result + ',' + '1' + Copy(s1, i, 1);
     end;
     for i := 1 to Length(s2) do
     begin
          if Copy(s2, i, 1) <> '_' then
               Result := Result + ',' + '2' + Copy(s2, i, 1);
     end;
     for i := 1 to Length(s3) do
     begin
          if Copy(s3, i, 1) <> '_' then
               Result := Result + ',' + '3' + Copy(s3, i, 1);
     end;
     for i := 1 to Length(s4) do
     begin
          if Copy(s4, i, 1) <> '_' then
               Result := Result + ',' + '4' + Copy(s4, i, 1);
     end;
     Result := Copy(Trim(Result), 2, 200);
end;

procedure TMain_f.btnPrintClick(Sender: TObject);
var
     PrtForm: Tform;
     i: Integer;
     sSang, sCode: string;

     WPath: string;
     strKind: string;
     bReturn: Boolean;
begin
     if pcMain.ActivePageIndex = 5 then   //진료비확인서발급대장
     begin
      {    YoungBalgub_f := TYoungBalgub_f.CreateFrm(Self, grdList4);
          try
               with YoungBalgub_f, QuickRep1 do
               begin
                    PreviewModal;
               end;
          finally
               YoungBalgub_f.Free;
          end;  }
     end
     else
          if pcMain.ActivePageIndex = 6 then   //원외처방전 발급대장
          begin

            {   ChuBangBalgub_f := TChuBangBalgub_f.CreateFrm(Self, grdList5);
               try
                    with ChuBangBalgub_f, QuickRep1 do
                    begin
                         PreviewModal;
                    end;
               finally
                    ChuBangBalgub_f.Free;
               end;  }
          end
          else
               if pcMain.ActivePageIndex = 7 then    //문서발급대장
               begin
                 {   MunSuBalgub_f := TMunSuBalgub_f.CreateFrm(Self, grdList6);
                    try
                         with MunSuBalgub_f, QuickRep1 do
                         begin
                              PreviewModal;
                         end;
                    finally
                         MunSuBalgub_f.Free;
                    end;
                    }
               end
               else
                    if pcMain.ActivePageIndex = 8 then //방사선촬영대장
                    begin
                         if Pagecontrol2.ActivePageIndex = 0 then
                         begin

                          {    sebusunapprt_f := Tsebusunapprt_f.CreateFrm(Self, grdList1);
                              try
                                   with sebusunapprt_f, QuickRep1 do
                                   begin
                                        PreviewModal;
                                   end;
                              finally
                                   sebusunapprt_f.Free;
                              end;
                           }
                              //prt_rad_f := Tprt_rad_f.Create(application);
                              //prt_rad_f.QRLabel2.Caption := '조회기간 : ' + FormatDateTime('yyyy-mm-dd', wDateEdit1.Date) + '~' + FormatDateTime('yyyy-mm-dd', wDateEdit2.Date);
                              //prt_rad_f.QuickRep1.DataSet := dm_f.SqlTemp;
                              //prt_rad_f.QRDBText1.DataSet := dm_f.SqlTemp;
                              //prt_rad_f.QRDBText2.DataSet := dm_f.SqlTemp;
                              //prt_rad_f.QRDBText3.DataSet := dm_f.SqlTemp;
                              //prt_rad_f.QRDBText4.DataSet := dm_f.SqlTemp;
                              //prt_rad_f.QuickRep1.Preview;
                              //prt_rad_f.Free;
                              //prt_rad_f := nil;
                         end
                         else
                              if Pagecontrol2.ActivePageIndex = 1 then
                              begin
                                   //
                              end
                              else
                                   if Pagecontrol2.ActivePageIndex = 2 then
                                   begin
                                        //
                                   end;

                    end
                    else
                    begin

                       // FastReport --------------------------------------------------------------
                         strKind := lblKind.Caption;

                         if (strKind = '') then
                              strKind := '0';

                         WPath := ExtractFilePath(Application.ExeName) + 'documan\';

                         InitFastReport(); // FastReport property

                         case StrToInt(strKind) of
                              3: frxReport.LoadFromFile(WPath + 'rptRequest.fr3'); //진료의뢰서
                              1, 2, 4, 10: frxReport.LoadFromFile(WPath + 'rptConfirm.fr3'); //치료계획,소견서,진료확인서,회송서
                              5: frxReport.LoadFromFile(WPath + 'rptCertificate.fr3'); //일반진단서
                              6: frxReport.LoadFromFile(WPath + 'rptInfer.fr3'); //향후치료비추정서
                              7: frxReport.LoadFromFile(WPath + 'rptInjury.fr3'); //상해진단서
                              8,9: frxReport.LoadFromFile(WPath + 'rptEtcConfirm.fr3'); //확인서
                              0: frxReport.LoadFromFile(WPath + 'rptSoldier.fr3'); //병사용진단서
                              11: frxReport.LoadFromFile(WPath + 'rptCertificate_eng.fr3'); //영문진단서
                         else
                              Exit;
                         end;

                         case StrToInt(strKind) of
                              1, 2, 4, 6, 8, 9, 10: PatientInfo(True);
                              7, 5, 0, 11: PatientInfo(False);
                         end;

                         case StrToInt(strKind) of
                              1, 2, 4, 6, 10: HospitalInfo(False, True, False);
                              3: HospitalInfo(True, False, True);
                              5, 7, 8,9, 0, 11: HospitalInfo(True, True, False);
                         end;

                         case StrToInt(strKind) of    //frx의 제목달기
                              1: CommTitlePrint('치료계획서', '향후치료내역', '치료기간',
                                        '상기치료 및 치료기일이 예상됨.'); // 진료확인서
                              2: CommTitlePrint('소견서', '소견내용', '비   고',
                                        '상기와 같이 소견함.'); // 진료확인서
                              10: CommTitlePrint('회송서', '회송내용', '비   고',
                                        '상기와 같이 회송함.'); // 회송서
                              3: RequestPrint(); // 진료의뢰서
                              4: CommTitlePrint('진료확인서', '치료내용', '치료기간',
                                        '상기질환으로 인하여 치료받았음을 확인함.'); // 진료확인서

                              5: CertificatePrint(); // 일반진단서
                              11: CertificatePrint_eng(); // 영문진단서
                              6: InferPrint(); // 향후치료비추정서
                              7: InjuryPrint(); // 상해진단서
                              8,9: EtcConfirmPrint(); // ( ) 확인서
                              0: SoldierPrint(); // 병사용진단서
                         end;

                         case StrToInt(strKind) of
                              1, 2, 4, 10: CommDataPrint();
                         end;

                         frxReport.PrepareReport();
                         frxReport.ShowReport();
                         frxReport.SaveToFile('1');

                         //bReturn := frxReport.Print(); //   .ShowReport(); // 미리보기
                    end;
end;

function LoadDocEngNameFromSawonWithMyunhu(saID: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select saEngName from ma_sawon_basic where  saMyunhu =:saID and saEngName <>''''  ';
    paramByname('saID').asstring := saID;
    open;
    if not isEmpty then
      result := trim(fieldByName('saEngName').asstring)
    else
      result := '';
  end;
end;

procedure TMain_f.ClearReport(pageIndex:integer; aDocName : string='');
var
     i: Integer;

     sNo1: string;
begin
     for i := 0 to pcMain.ActivePage.ControlCount - 1 do
     begin
          if (pcMain.ActivePage.Controls[i] is TEdit) then
          begin
               if Copy((pcMain.ActivePage.Controls[i] as TEdit).Name, 1, 9) = 'edtJindan' then
                    (pcMain.ActivePage.Controls[i] as TEdit).Text := '진단명직접입력'
               else
                    if TEdit(pcMain.ActivePage.Controls[i]).Name = 'edtSangCode' then
                    else
                         if TEdit(pcMain.ActivePage.Controls[i]).Name = 'edtSangCode2' then
                         else
                              if TEdit(pcMain.ActivePage.Controls[i]).Name = 'edtSangCode3' then
                              else
                                   if TEdit(pcMain.ActivePage.Controls[i]).Name = 'edtSangCode4' then
                                   else
                                        (pcMain.ActivePage.Controls[i] as TEdit).Text := '';
          end
          else
               if (pcMain.ActivePage.Controls[i] is TMemo) then
               begin
                    (pcMain.ActivePage.Controls[i] as TMemo).Clear;
               end
               else
                    if (pcMain.ActivePage.Controls[i] is TDatetimePicker) then
                    begin
                         (pcMain.ActivePage.Controls[i] as TDatetimePicker).Date := Now;
                    end
                    else
                         if (pcMain.ActivePage.Controls[i] is TListBox) then
                         begin
                              (pcMain.ActivePage.Controls[i] as TListBox).Clear;
                         end
                         else
                              if (pcMain.ActivePage.Controls[i] is TComboBox) then
                              begin
                                   (pcMain.ActivePage.Controls[i] as TComboBox).ItemIndex := 0;
                              end;
     end;


     RelDate.Date := Now;


 //    showmessage(trim(aDocName));
   try
     if trim(aDocName) <> '' then
     begin
          cbDocName.ItemIndex := cbDocName.Items.IndexOf(trim(aDocName)) ;
          edtLNo.Text := lstDoctor.Items.Strings[cbDocName.itemindex];
     end
     else
     begin
          cbDocName.ItemIndex := 0;
          edtLNo.Text := lstDoctor.Items.Strings[0];
     end;

   except

          aDocName := configValue.varDaepyo;
          cbDocName.ItemIndex := cbDocName.Items.IndexOf(trim(aDocName)) ;
          edtLNo.Text := lstDoctor.Items.Strings[cbDocName.itemindex];

   end;

//    if pageindex = 10 then   //영문이면
      if lblKind.Caption = '11'   then   //영문이면

    begin

       edtHName.Text := configvalue.varsaupEngname;// .varsaupname;
       edtAdd.Text := configvalue.varEngAdd1 + ' ' + configvalue.varEngAdd2  + ' ' + configvalue.varEngAdd3 ;

       cbDocName.text :=  LoadDocEngNameFromSawonWithMyunhu(edtLNo.Text) ;
    end
    else
    begin

     edtHName.Text := configvalue.varsaupname;
     edtAdd.Text := configvalue.varAdd1 + ' ' + configvalue.varAdd2;

    end;
end;

procedure TMain_f.btnNewClick(Sender: TObject);
begin
 //    showmessage(aDocName)  ;
     ClearReport(pcMain.ActivePageIndex, aDocName);
     edtSeqNo.Text := NewSerial(Now, lblKind.Caption);

     if Edit2.Text <> '' then
     begin
          with dm_f.SqlTemp2 do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select i.kiho,i.k_number,i.piboname from view_gogek i  where i.chart=:chart');
               ParamByName('chart').AsString := Trim(Edit2.Text);
               Open;
               first;
               if not isEmpty then
               begin
                    Edit7.Text := FieldByname('kiho').AsString;
                    Edit8.Text := ''; //FieldByname('c_name').AsString;
                    Edit9.Text := FieldByname('k_number').AsString;
                    Edit10.Text := FieldByname('piboname').AsString;
               end;
          end;
     end
     else
     begin
          Edit7.Text := '';
          Edit8.Text := '';
          Edit9.Text := '';
          Edit10.Text := '';
     end;

                    case pcMain.ActivePageIndex of
                    0:  //향후치료비추정서/소견서/진료확인서 //회송서
                    begin
                       lstDangName.Items.Clear;
                       lstSangCode.Items.Clear;
                    end;
                    1:  //진료의뢰서
                    begin
                       lstDangName1.Items.Clear;
                       lstSangCode1.Items.clear;
                    end;
                    2:  //일반진단서/()확인서 , 통원확인서
                    begin
                       lstDangName2.Items.clear;
                       lstSangCode2.Items.clear;
                   end;
                    3:  ;//향후치료비추정서

                    4:  //상해진단서
                    begin
                        lstDangName4.Items.clear;
                        lstSangCode4.Items.clear;
                    end;
               end;



end;

function TMain_f.GetSerial(sChart: string; sKind: string): string;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from tbReport where chart=:chart and ReportKind=:ReportKind order by DateNo Desc');
          ParamByName('chart').AsString := sChart;
          ParamByName('ReportKind').AsString := sKind;
          Open;
          First;
          if not isEmpty then
          begin
               Result := Copy(FieldByName('DateNo').AsString, 1, 8) + '-' + Copy(FieldByName('DateNo').AsString, 9, 3);
          end
          else
          begin
               Result := NewSerial(Now, sKind);
          end;
     end;
end;

procedure TMain_f.grdList6DblClickCell(Sender: TObject; ARow, ACol: Integer);
var
     sSex: string;
     sJumin : string;
begin
     if ((grdlist6.Rowcount > 1) and (grdlist6.Row >= 1)) then
     begin
          with dm_f.SqlTemp do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select i.chart,i.name,i.jumin, ');
               Sql.Add('i.h_juso as address ');
               //sql.Add(',dbo.f_GetFullAge((case when substring(i.jumin,7,1) in (''3'',''4'') then ''20''+i.jumin else ''19''+i.jumin end),getdate()) as nai');
               Sql.Add('from view_gogek i where  ');
               Sql.Add(' i.chart = :chart');
               ParamByName('chart').AsString := grdlist6.Cells[3, grdlist6.Row];
               Open;
               first;
               if not isempty then
               begin
                    edit1.Text := FieldByname('Name').AsString;
                    edit2.Text := FieldByname('chart').AsString;
                    EdtJuminNo.Text := Copy(FieldByname('jumin').AsString, 1, 6)
                    + '-'
                    + Copy(FieldByname('jumin').Asstring, 7, 1) +'******';// Copy(FieldByname('Jumin').AsString, 7, 7);
                    EdtPadd.Text := FieldByname('Address').AsString;

              //     EdtAge.Text := NaiCalc(FieldByname('jumin').Asstring, formatDateTime('yyyy-mm-dd',
              //           RelDate.Date));
                    EdtAge.Text := jumintonai(FieldByname('jumin').Asstring, formatDateTime('yyyy-mm-dd',
                    RelDate.Date));

                    //EdtAge.Text := FieldByname('nai').AsString; ;
                    sSex := Copy(FieldByname('jumin').AsString, 7, 1);
//                    if ((sSex = '3') or (sSex = '4')) then
//                         edtBd.Text := '20' + Copy(FieldByname('jumin').AsString, 1, 2)
//                         + '년 ' + Copy(FieldByname('jumin').AsString, 3, 2)
//                         + '월 ' + Copy(FieldByname('jumin').AsString, 5, 2) + '일'
//                    else
//                         Main_f.edtBd.Text := '19' + Copy(FieldByname('jumin').AsString, 1, 2)
//                         + '년 ' + Copy(FieldByname('jumin').AsString, 3, 2)
//                         + '월 ' + Copy(FieldByname('jumin').AsString, 5, 2) + '일';

                  sJumin := FieldByname('jumin').Asstring;
                  edtBd.Text :=   JuminToBirth3(sJumin) ;


                    if ((sSex = '1') or (sSex = '3')) then
                         edtGender.itemindex := 0
                    else
                         edtGender.itemindex := 1;
                    EdtChartNo.Text := FieldByname('Chart').AsString;
                    EdtPName.Text := FieldByname('Name').AsString;

                    FieldSet(Copy(grdlist6.Cells[1, grdlist6.Row] , 1, 8)
                        + Copy(grdlist6.Cells[1, grdlist6.Row] , 10, 3));
                    edtSeqNo.Text := grdlist6.Cells[1, grdlist6.Row];
                    edtSeqNo.Enabled := True;
               end;
          end;

     end;
end;


function TMain_f.NewSerial(WorkDate: TDateTime; sKind: string): string;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select Max(substring(DateNo,10,2)) as maxSeq from tbReport where DateNo like :DateNo');
          ParamByName('DateNo').AsString := FormatDateTime('yyyymmdd', WorkDate) + lblKind.Caption + '%';
          Open;
          First;
          //edtSeqNo.Enabled := False;
          edtSeqNo.Enabled := True;
          if not isEmpty then
          begin
               if FieldByName('maxSeq').AsString = '' then
                    Result := FormatDateTime('yyyymmdd', WorkDate) + '-' + lblKind.Caption + '01'
               else
                    Result := FormatDateTime('yyyymmdd', WorkDate) + '-' + lblKind.Caption + FormatFloat('00', (FieldByName('maxSeq').Asinteger + 1));
          end
          else
          begin
               Result := FormatDateTime('yyyymmdd', WorkDate) + '-' + lblKind.Caption + '01';
          end;
     end;
end;

procedure TMain_f.FieldSet(sDateNo: string);
var
     sKind: string;
begin

     with dm_f.SqlFind do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from tbReport where DateNo=:DateNo');
          ParamByName('DateNo').AsString := sDateNo;
          Open;
          first;
          if not isEmpty then
          begin
               sKind := FieldByName('ReportKind').AsString;
               if sKind <> '' then
               begin
                    case StrToInt(sKind) of
                         1: btnPlanPaperClick(Self);      //치료계획서
                         10: btnHoiSongseoClick(Self);      //회송서
                         2: btnSogyunseoClick(Self);      //소견서
                         3: btnJinryoUiRoiSeoClick(Self); //진료의뢰서
                         4: btnJinryoHwakinSeoClick(Self);//진료확인서
                         5: btnJindanSeoClick(Self);      //일반진단서
                         6: btnHyangChuClick(Self);       //향후치료비추정서
                         7: btnSangHaeJindanClick(Self);  //상해진단서
                         8: btnHwakinSeoClick(Self);      //()확인서
                         9: button1Click(Self);      //통원/입원 확인서
                         0: btnArmyJindanSeoClick(Self);  //병사용진단서
                    end;

                    case pcMain.ActivePageIndex of
                         0:  //향후치료비추정서/소견서/진료확인서
                              begin


                                    lstSangcode.Items.Clear;
                                    lstDangName.Items.Clear;



                                   if ((FieldByName('s_key').IsNull = False)
                                      and (FieldByName('s_key').AsString <> '')) then
                                   begin
                                        lstSangcode.Items.Add(FieldByName('s_key').AsString);
                                        if FieldByName('sang').IsNull = False then
                                             lstDangName.Items.Add(FieldByName('sang').AsString)
                                        else
                                             lstDangName.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key1').IsNull = False)
                                      and (FieldByName('s_key1').AsString <> '')) then
                                   begin
                                        lstSangcode.Items.Add(FieldByName('s_key1').AsString);
                                        if FieldByName('sang1').IsNull = False then
                                             lstDangName.Items.Add(FieldByName('sang1').AsString)
                                        else
                                             lstDangName.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key2').IsNull = False)
                                      and (FieldByName('s_key2').AsString <> '')) then
                                   begin
                                        lstSangcode.Items.Add(FieldByName('s_key2').AsString);
                                        if FieldByName('sang2').IsNull = False then
                                             lstDangName.Items.Add(FieldByName('sang2').AsString)
                                        else
                                             lstDangName.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key3').IsNull = False)
                                      and (FieldByName('s_key3').AsString <> '')) then
                                   begin
                                        lstSangcode.Items.Add(FieldByName('s_key3').AsString);
                                        if FieldByName('sang3').IsNull = False then
                                             lstDangName.Items.Add(FieldByName('sang3').AsString)
                                        else
                                             lstDangName.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key4').IsNull = False)
                                      and (FieldByName('s_key4').AsString <> '')) then
                                   begin
                                        lstSangcode.Items.Add(FieldByName('s_key4').AsString);
                                        if FieldByName('sang4').IsNull = False then
                                             lstDangName.Items.Add(FieldByName('sang4').AsString)
                                        else
                                             lstDangName.Items.Add('');
                                   end;
                                   Memo2.Clear;
                                   Memo2.Lines.Add(FieldByName('SangMemo').AsString);

                                   edtReturn.Text := fieldByName('EtcMemo').AsString;

                              end;
                         1:  //진료의뢰서
                              begin

                                    lstSangcode1.Items.Clear;
                                    lstDangName1.Items.Clear;


                                   if ((FieldByName('s_key').IsNull = False)
                                      and (FieldByName('s_key').AsString <> '')) then
                                   begin
                                        lstSangcode1.Items.Add(FieldByName('s_key').AsString);
                                        if FieldByName('sang').IsNull = False then
                                             lstDangName1.Items.Add(FieldByName('sang').AsString)
                                        else
                                             lstDangName1.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key1').IsNull = False)
                                       and (FieldByName('s_key1').AsString <> '')) then
                                   begin
                                        lstSangcode1.Items.Add(FieldByName('s_key1').AsString);
                                        if FieldByName('sang1').IsNull = False then
                                             lstDangName1.Items.Add(FieldByName('sang1').AsString)
                                        else
                                             lstDangName1.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key2').IsNull = False)
                                       and (FieldByName('s_key2').AsString <> '')) then
                                   begin
                                        lstSangcode1.Items.Add(FieldByName('s_key2').AsString);
                                        if FieldByName('sang2').IsNull = False then
                                             lstDangName1.Items.Add(FieldByName('sang2').AsString)
                                        else
                                             lstDangName1.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key3').IsNull = False)
                                      and (FieldByName('s_key3').AsString <> '')) then
                                   begin
                                        lstSangcode1.Items.Add(FieldByName('s_key3').AsString);
                                        if FieldByName('sang3').IsNull = False then
                                             lstDangName1.Items.Add(FieldByName('sang3').AsString)
                                        else
                                             lstDangName1.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key4').IsNull = False)
                                      and (FieldByName('s_key4').AsString <> '')) then
                                   begin
                                        lstSangcode1.Items.Add(FieldByName('s_key4').AsString);
                                        if FieldByName('sang4').IsNull = False then
                                             lstDangName1.Items.Add(FieldByName('sang4').AsString)
                                        else
                                             lstDangName1.Items.Add('');
                                   end;
                                   Memo1.Clear;
                                   Memo1.Lines.Add(FieldByName('SangMemo').AsString);
                                   Edit5.Text := fieldByName('EtcMemo').AsString;
                              end;
                         2:     //일반진단서 , (  )확인서 ,통원/입원확인서
                              begin

                                      pnlTerm.Visible := false;

                                      edtHwakinCap.Text:=  fieldByName('sangBuwi').AsString;
                                      edtHwakinCap2.Text:=  fieldByName('sangBuwi').AsString;

                                      lstSangcode2.Items.Clear;
                                      lstDangName2.Items.Clear;

                                      lstSangcode2.Items.Add(FieldByName('s_key').AsString);
                                      lstDangName2.Items.Add(FieldByName('sang').AsString);

                                      lstSangcode2.Items.Add(FieldByName('s_key1').AsString );
                                      lstDangName2.Items.Add(FieldByName('sang1').AsString );

                                      lstSangcode2.Items.Add(FieldByName('s_key2').AsString );
                                      lstDangName2.Items.Add(FieldByName('sang2').AsString );

                                      lstSangcode2.Items.Add(FieldByName('s_key3').AsString );
                                      lstDangName2.Items.Add(FieldByName('sang3').AsString );

                                      lstSangcode2.Items.Add(FieldByName('s_key4').AsString );
                                      lstDangName2.Items.Add(FieldByName('sang4').AsString );


                                   if FieldByName('s_gubn').AsString = '1' then
                                        RadioButton1.Checked := True
                                   else
                                        if FieldByName('s_gubn').AsString = '2' then RadioButton2.Checked := True;
                                   Memo3.Clear;
                                   Memo3.Lines.Add(FieldByName('SangMemo').AsString);
                                   Edit12.Text := fieldByName('EtcMemo').AsString;
                                   edtTerm.Text := fieldByName('AfterTreatMemo').AsString;

                                   if fieldByName('acceptSangdate').AsString = '1' then
                                   begin
                                         cbDeseaseDateAccept.checked:= true;
                                         dtStartDesease.visible := true;
                                         dtStartDesease.Date := FieldByName('SangDate').AsDateTime;

                                         lblStartDesease.caption:= '발병일';
                                        // lblStartDesease.Visible :=  true;


                                   end
                                   else
                                   begin
                                         cbDeseaseDateAccept.checked:= false;
                                         dtStartDesease.visible := false;
                                         lblStartDesease.caption:= '발병일 미상';
                                         //lblStartDesease.Visible :=  true;


                                   end;
                              end;



                         3:   //향후치료비추정서
                              begin
                                   Memo4.Clear;
                                   Memo4.Lines.Add(FieldByName('SangMemo').AsString);
                                   Edit14.Text := fieldByName('EtcMemo').AsString;
                                   DateEdit1.Date := FieldByName('SangDate').AsDateTime;
                                   Edit15.Text := FieldByName('sang').AsString;
                                   Edit3.Text := FieldByName('sanghow').AsString;
                              end;
                         4:   //상해진단서
                              begin

                                    lstSangcode4.Items.Clear;
                                    lstDangName4.Items.Clear;


                                   if ((FieldByName('s_key').IsNull = False) and (FieldByName('s_key').AsString <> '')) then
                                   begin
                                        lstSangcode4.Items.Add(FieldByName('s_key').AsString);
                                        if FieldByName('sang').IsNull = False then
                                             lstDangName4.Items.Add(FieldByName('sang').AsString)
                                        else
                                             lstDangName4.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key1').IsNull = False) and (FieldByName('s_key1').AsString <> '')) then
                                   begin
                                        lstSangcode4.Items.Add(FieldByName('s_key1').AsString);
                                        if FieldByName('sang1').IsNull = False then
                                             lstDangName4.Items.Add(FieldByName('sang1').AsString)
                                        else
                                             lstDangName4.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key2').IsNull = False) and (FieldByName('s_key2').AsString <> '')) then
                                   begin
                                        lstSangcode4.Items.Add(FieldByName('s_key2').AsString);
                                        if FieldByName('sang2').IsNull = False then
                                             lstDangName4.Items.Add(FieldByName('sang2').AsString)
                                        else
                                             lstDangName4.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key3').IsNull = False) and (FieldByName('s_key3').AsString <> '')) then
                                   begin
                                        lstSangcode4.Items.Add(FieldByName('s_key3').AsString);
                                        if FieldByName('sang3').IsNull = False then
                                             lstDangName4.Items.Add(FieldByName('sang3').AsString)
                                        else
                                             lstDangName4.Items.Add('');
                                   end;
                                   if ((FieldByName('s_key4').IsNull = False) and (FieldByName('s_key4').AsString <> '')) then
                                   begin
                                        lstSangcode4.Items.Add(FieldByName('s_key4').AsString);
                                        if FieldByName('sang4').IsNull = False then
                                             lstDangName4.Items.Add(FieldByName('sang4').AsString)
                                        else
                                             lstDangName4.Items.Add('');
                                   end;

                                   if FieldByName('s_gubn').AsString = '1' then
                                        RadioButton3.Checked := True
                                   else
                                        if FieldByName('s_gubn').AsString = '2' then RadioButton4.Checked := True;

                                   DateEdit2.Date := FieldByName('SangDate').AsDateTime;
                                   DateEdit4.Date := FieldByName('FirstDate').AsDateTime;
                                   Edit17.Text := FieldByName('SangMemo').AsString;
                                   Edit18.Text := FieldByName('SangBuwi').AsString;
                                   Edit19.Text := FieldByName('SangHow').AsString;
                                   Edit20.Text := FieldByName('JinPastMemo').AsString;
                                   Edit21.Text := FieldByName('SurgeryOr').AsString;
                                   Edit22.Text := FieldByName('hospitalOr').AsString;
                                   Edit23.Text := FieldByName('ActionOr').AsString;
                                   Edit24.Text := FieldByName('FoodOr').AsString;
                                   DateEdit5.Date := FieldByName('TreatPeriodS').AsDateTime;
                                   DateEdit6.Date := FieldByName('TreatPeriodE').AsDateTime;
                                   Edit26.Text := FieldByName('AfterTreatMemo').AsString;
                                   Edit27.Text := FieldByName('OccurOr').AsString;
                                   Edit28.Text := FieldByName('EtcMemo').AsString;
                                   Edit25.Text := IntToStr(Ceil(DaysBetween(FieldByName('TreatPeriodE').AsDateTime, FieldByName('TreatPeriodS').AsDateTime) / 7));
                              end;

                         9:   //병사용진단서
                              begin

                                   if FieldByName('sang').IsNull = False then
                                        Edit6.Text := FieldByName('Sang').AsString
                                   else
                                        Edit6.Text := '';
                                   DateEdit7.Date := FieldByName('SangDate').AsDateTime;
                                   DateEdit8.Date := FieldByName('FirstDate').AsDateTime;

                                   Edit29.Text := FieldByName('SangMemo').AsString;
                                   Edit30.Text := FieldByName('SangBuwi').AsString;
                                   Edit31.Text := FieldByName('SangHow').AsString;
                                   Edit32.Text := FieldByName('JinPastMemo').AsString;
                                   if FieldByName('SurgeryOr').AsString = '3개월미만' then
                                        RadioButton5.Checked := True
                                   else
                                        if FieldByName('SurgeryOr').AsString = '3개월이상' then
                                             RadioButton6.Checked := True
                                        else
                                             if FieldByName('SurgeryOr').AsString = '6개월이상' then
                                                  RadioButton7.Checked := True
                                             else
                                                  if FieldByName('SurgeryOr').AsString = '1년 이상' then
                                                       RadioButton8.Checked := True
                                                  else
                                                  begin
                                                       RadioButton9.Checked := True;
                                                       Edit13.Text := FieldByName('SurgeryOr').AsString;
                                                  end;

                                   Edit33.Text := FieldByName('hospitalOr').AsString;
                                   Edit34.Text := FieldByName('ActionOr').AsString;
                                   Edit16.Text := FieldByName('FoodOr').AsString;
                                   Edit11.Text := FieldByName('AfterTreatMemo').AsString;
                                   DateEdit9.Date := FieldByName('TreatPeriodS').AsDateTime;

                              end;
                    end;

                    RelDate.Date := FieldByName('relDate').AsDateTime;

//                    cbDocName.Text := FieldByName('DocName').AsString;
                    cbDocName.ItemIndex := cbDocName.Items.IndexOf(trim(FieldByName('DocName').AsString))  ;
                //    edtLNo.Text := FieldByName('LinceNo').AsString;
                    edtLNo.Text := lstDoctor.Items.Strings[cbDocName.itemindex];

                    //if    cbDocName.Text = '' then cbDocName.ItemIndex := 0;
                    edtHName.Text := FieldByName('RelOrg').AsString;
                    edtAdd.Text := FieldByName('OrgAdd').AsString;

               end;

          end
          else
          begin
               btnNewclick(Self);
          end;
     end;
end;

procedure TMain_f.spSkinButton11Click(Sender: TObject);
begin
     btnNewClick(Self);

     Edit7.Text := '';
     Edit8.Text := '';
     Edit9.Text := '';
     Edit10.Text := '';
     Edit1.Text := '';
     Edit2.Text := '';
     edtSeqNo.Text := '';
     edtSeqNo.Enabled := True;
     edtJuminNo.Text := '';
     edtBd.Text := '';
     edtAge.Text := '';
     edtPAdd.Text := '';
     edtGender.ItemIndex := -1;
     edtSeqNo.Text := NewSerial(Now, lblKind.Caption);
     edtPname.SetFocus;
end;

procedure TMain_f.btnSearchSangByung0Click(Sender: TObject);
var
    sangInfo : TSangByungInfo;
begin
   SangSeek_f := TSangSeek_f.Create(application);

   if  SangSeek_f.Showmodal = mrOk then
   begin
    if ((SangSeek_f.grdMain.RowCount > 0) and (SangSeek_f.grdMain.Row >= 0)) then
    begin

      sangInfo.sCode := SangSeek_f.grdMain.Cells[1, SangSeek_f.grdMain.Row];
      sangInfo.sName := SangSeek_f.grdMain.Cells[2, SangSeek_f.grdMain.Row];


      with Main_f do
      begin
        case pcMain.ActivePageIndex of
          0:    //향후치료비추정서/소견서/진료확인서
            begin
              lstDangName.Items.Add(sangInfo.sName);
              lstSangCode.Items.Add(sangInfo.sCode);
            end;
          1:   //진료의뢰서
            begin
              lstDangName1.Items.Add(sangInfo.sName);
              lstSangCode1.Items.Add(sangInfo.sCode);
            end;
          2:   //일반진단서/()확인서
            begin
              lstDangName2.Items.Add(sangInfo.sName);
              lstSangCode2.Items.Add(sangInfo.sCode);


            end;
          3:;//향후치료비추정서
          4: //상해진단서
            begin
              lstDangName4.Items.Add(sangInfo.sName);
              lstSangCode4.Items.Add(sangInfo.sCode);
            end;
        end;
      end;
    end;
   end;
end;

procedure TMain_f.K040Click(Sender: TObject);
var
     sCode, sname: string;
begin
     sCode := Copy((Sender as TMenuItem).Name, 1, 3) + '.' + Copy((Sender as TMenuItem).Name, 4, 1);
     sName := Trim(Copy((Sender as TMenuItem).Caption, 6, 100));

     case pcMain.ActivePageIndex of
          0:
               begin
                    lstDangName.Items.Add(sName);
                    lstSangCode.Items.Add(sCode);
               end;
          1:
               begin
                    lstDangName1.Items.Add(sName);
                    lstSangCode1.Items.Add(sCode);
               end;
          2:
               begin

                   lstDangName2.Items.Add(sName);
                   lstSangCode2.Items.Add(sCode);
               end;
          4:
               begin
                    lstDangName4.Items.Add(sName);
                    lstSangCode4.Items.Add(sCode);
               end;
     end;
end;

procedure TMain_f.edtJindanKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if (Sender as TEdit).Text <> '' then
          begin
               case pcMain.ActivePageIndex of
                    0: lstDangName.Items.Add((Sender as TEdit).Text);
                    1: lstDangName1.Items.Add((Sender as TEdit).Text);
                    2: lstDangName2.Items.Add((Sender as TEdit).Text);
                    4: lstDangName4.Items.Add((Sender as TEdit).Text);
               end;
               (Sender as TEdit).Text := '';
          end;
     end;
end;

procedure TMain_f.btnSaveClick(Sender: TObject);
var
 sSang2 :string;
 i:integer;
begin
     if Edit2.Text <> '' then
     begin
          try
                dm_f.uniConnection1.StartTransaction;

                with dm_f.SqlFind do
                begin
                     Close;
                     Sql.Clear;
                     Sql.Add('delete from tbReport ');
                     sql.add(' where chart=:chart ');
                  //   sql.add(' and RelDate=:RelDate ');
                     sql.add(' and ReportKind=:ReportKind');
                     Sql.Add(' and DateNo=:DateNo');
                     ParamByName('Chart').AsString := Edit2.Text; //차트
                     ParamByName('DateNo').AsString := copy(EdtSeqNo.Text, 1, 8) + copy(EdtSeqNo.Text, 10, 3); //연번호
                  //   ParamByName('RelDate').AsString := FormatDateTime('yyyy-mm-dd', RelDate.Date);
                     ParamByName('ReportKind').AsString := lblKind.Caption; //리포트구분
                     ExecSql;


                     //저장 직전에 새로운 번호 다시한번 확인 !!!....네트워크상에서 다른 작업 진행중 일 가능성^^
                     // 복사의 개념으로 발행일 바꿔서 저장하면 시리얼번호도 바뀌어서 저장되자...
                       //  if edtSeqNo.Enabled = False then
                       //   edtSeqNo.Text := NewSerial(Now, lblKind.Caption);
                     edtSeqNo.Text := NewSerial(  RelDate.Date , lblKind.Caption);



                     Close;
                     SQL.Clear;
                     SQL.Add(' INSERT INTO tbReport(Chart,DateNo,ReportKind,s_key,s_Gubn,RelDate,firstdate,                ');
                     SQL.Add('     RelOrg,OrgAdd,LinceNo,DocName,OrgPhone,SangDate,SangMemo,SangBuwi,SangHow,    ');
                     SQL.Add('     JinPastMemo,SurgeryOr,hospitalOr,ActionOr,FoodOr,TreatPeriodS,TreatPeriodE,   ');
                     SQL.Add('     AfterTreatMemo,OccurOr,EtcMemo,s_key1,s_key2,s_key3,s_key4,sang,sang1,sang2,  ');
                     Sql.Add('     sang3,sang4, acceptSangdate)  Values ( :Chart,:DateNo,:ReportKind,:s_key,:s_Gubn,             ');
                     SQL.Add('     :RelDate,:firstdate,:RelOrg,:OrgAdd,:LinceNo,:DocName,:OrgPhone,:SangDate,    ');
                     SQL.Add('     :SangMemo,:SangBuwi,:SangHow,:JinPastMemo,:SurgeryOr,:hospitalOr,:ActionOr,   ');
                     SQL.Add('     :FoodOr,:TreatPeriodS,:TreatPeriodE,:AfterTreatMemo,:OccurOr,:EtcMemo,        ');
                     SQL.Add('     :s_key1,:s_key2,:s_key3,:s_key4,:sang,:sang1,:sang2,:sang3,:sang4, :acceptSangdate )           ');

                     ParamByName('Chart').AsString := Edit2.Text; //차트
                     ParamByName('DateNo').AsString := copy(EdtSeqNo.Text, 1, 8) + copy(EdtSeqNo.Text, 10, 3); //연번호
                     ParamByName('RelDate').AsString := FormatDateTime('yyyy-mm-dd', RelDate.Date);
                     ParamByName('RelOrg').AsString := edtHName.Text;
                     ParamByName('OrgAdd').AsString := edtAdd.Text;
                     ParamByName('LinceNo').AsString := edtLNo.Text;
                     ParamByName('DocName').AsString := cbDocName.Items.Strings[cbDocName.itemindex];
                     ParamByName('OrgPhone').AsString := '';
                     ParamByName('ReportKind').AsString := lblKind.Caption; //리포트구분


                     if cbDeseaseDateAccept.Checked =true then
                           ParamByName('acceptSangdate').AsString := '1'
                     else
                           ParamByName('acceptSangdate').AsString := '0' ;



                     case pcMain.ActivePageIndex of
                          0:
                               begin

                                    if ((lstSangCode.Items.Count > 0) and (lstSangcode.Items.Strings[0] <> '')) then
                                         ParamByName('s_key').AsString := lstSangcode.Items.Strings[0]
                                    else
                                         ParamByName('s_key').AsString := ''; //상병분류기호 0-4

                                    if ((lstSangCode.Items.Count > 1) and (lstSangcode.Items.Strings[1] <> '')) then
                                         ParamByName('s_key1').AsString := lstSangcode.Items.Strings[1]
                                    else
                                         ParamByName('s_key1').AsString := '';

                                    if ((lstSangCode.Items.Count > 2) and (lstSangcode.Items.Strings[2] <> '')) then
                                         ParamByName('s_key2').AsString := lstSangcode.Items.Strings[2]
                                    else
                                         ParamByName('s_key2').AsString := '';
                                    if ((lstSangCode.Items.Count > 3) and (lstSangcode.Items.Strings[3] <> '')) then
                                         ParamByName('s_key3').AsString := lstSangcode.Items.Strings[3]
                                    else
                                         ParamByName('s_key3').AsString := '';
                                    if ((lstSangCode.Items.Count > 4) and (lstSangcode.Items.Strings[4] <> '')) then
                                         ParamByName('s_key4').AsString := lstSangcode.Items.Strings[4]
                                    else
                                         ParamByName('s_key4').AsString := '';

                                    if ((lstDangName.Items.Count > 0) and (lstDangName.Items.Strings[0] <> '')) then
                                         ParamByName('sang').AsString := lstDangName.Items.Strings[0]
                                    else
                                         ParamByName('sang').AsString := '';


                                    if ((lstDangName.Items.Count > 1) and (lstDangName.Items.Strings[1] <> '')) then
                                         ParamByName('sang1').AsString := lstDangName.Items.Strings[1]
                                    else
                                         ParamByName('sang1').AsString := '';
                                    if ((lstDangName.Items.Count > 2) and (lstDangName.Items.Strings[2] <> '')) then
                                         ParamByName('sang2').AsString := lstDangName.Items.Strings[2]
                                    else
                                         ParamByName('sang2').AsString := '';
                                    if ((lstDangName.Items.Count > 3) and (lstDangName.Items.Strings[3] <> '')) then
                                         ParamByName('sang3').AsString := lstDangName.Items.Strings[3]
                                    else
                                         ParamByName('sang3').AsString := '';
                                    if ((lstDangName.Items.Count > 4) and (lstDangName.Items.Strings[4] <> '')) then
                                         ParamByName('sang4').AsString := lstDangName.Items.Strings[4]
                                    else
                                         ParamByName('sang4').AsString := '';


                                    ParamByName('s_Gubn').AsString := '0';
                                    ParamByName('SangDate').AsString := '';
                                    ParamByname('firstdate').AsString := '';
                                    ParamByName('SangMemo').AsMemo := Memo2.Lines.text;

                                    ParamByName('SangBuwi').AsString := '';
                                    ParamByName('SangHow').AsString := '';
                                    ParamByName('JinPastMemo').AsString := '';
                                    ParamByName('SurgeryOr').AsString := '';
                                    ParamByName('hospitalOr').AsString := '';
                                    ParamByName('ActionOr').AsString := '';
                                    ParamByName('FoodOr').AsString := '';
                                    ParamByName('TreatPeriodS').AsString := '';
                                    ParamByName('TreatPeriodE').AsString := '';
                                    ParamByName('AfterTreatMemo').AsString := '';
                                    ParamByName('OccurOr').AsString := '';
                                    ParamByName('EtcMemo').AsString := edtReturn.text;

                               end;
                          1:
                               begin
                                    if ((lstSangCode1.Items.Count > 0) and (lstSangcode1.Items.Strings[0] <> '')) then
                                         ParamByName('s_key').AsString := lstSangcode1.Items.Strings[0]
                                    else
                                         ParamByName('s_key').AsString := ''; //상병분류기호 0-4

                                    if ((lstSangCode1.Items.Count > 1) and (lstSangcode1.Items.Strings[1] <> '')) then
                                         ParamByName('s_key1').AsString := lstSangcode1.Items.Strings[1]
                                    else
                                         ParamByName('s_key1').AsString := '';

                                    if ((lstSangCode1.Items.Count > 2) and (lstSangcode1.Items.Strings[2] <> '')) then
                                         ParamByName('s_key2').AsString := lstSangcode1.Items.Strings[2]
                                    else
                                         ParamByName('s_key2').AsString := '';

                                    if ((lstSangCode1.Items.Count > 3) and (lstSangcode1.Items.Strings[3] <> '')) then
                                         ParamByName('s_key3').AsString := lstSangcode1.Items.Strings[3]
                                    else
                                         ParamByName('s_key3').AsString := '';

                                    if ((lstSangCode1.Items.Count > 4) and (lstSangcode1.Items.Strings[4] <> '')) then
                                         ParamByName('s_key4').AsString := lstSangcode1.Items.Strings[4]
                                    else
                                         ParamByName('s_key4').AsString := '';


                                    if ((lstDangName1.Items.Count > 0) and (lstDangName1.Items.Strings[0] <> '')) then
                                         ParamByName('sang').AsString := lstDangName1.Items.Strings[0]
                                    else
                                         ParamByName('sang').AsString := '';

                                    if ((lstDangName1.Items.Count > 1) and (lstDangName1.Items.Strings[1] <> '')) then
                                         ParamByName('sang1').AsString := lstDangName1.Items.Strings[1]
                                    else
                                         ParamByName('sang1').AsString := '';

                                    if ((lstDangName1.Items.Count > 2) and (lstDangName1.Items.Strings[2] <> '')) then
                                         ParamByName('sang2').AsString := lstDangName1.Items.Strings[2]
                                    else
                                         ParamByName('sang2').AsString := '';

                                    if ((lstDangName1.Items.Count > 3) and (lstDangName1.Items.Strings[3] <> '')) then
                                         ParamByName('sang3').AsString := lstDangName1.Items.Strings[3]
                                    else
                                         ParamByName('sang3').AsString := '';

                                    if ((lstDangName1.Items.Count > 4) and (lstDangName1.Items.Strings[4] <> '')) then
                                         ParamByName('sang4').AsString := lstDangName1.Items.Strings[4]
                                    else
                                         ParamByName('sang4').AsString := '';

                                    ParamByName('s_Gubn').AsString := '0';
                                    ParamByName('SangDate').AsString := '';
                                    ParamByname('firstdate').AsString := '';
                                    ParamByName('SangMemo').AsMemo := Memo1.Lines.text;
                                    ParamByName('SangBuwi').AsString := '';
                                    ParamByName('SangHow').AsString := '';
                                    ParamByName('JinPastMemo').AsString := '';
                                    ParamByName('SurgeryOr').AsString := '';
                                    ParamByName('hospitalOr').AsString := '';
                                    ParamByName('ActionOr').AsString := '';
                                    ParamByName('FoodOr').AsString := '';
                                    ParamByName('TreatPeriodS').AsString := '';
                                    ParamByName('TreatPeriodE').AsString := '';
                                    ParamByName('AfterTreatMemo').AsString := '';
                                    ParamByName('OccurOr').AsString := '';
                                    ParamByName('EtcMemo').AsString := Edit5.text;
                               end;
                          2:    //일반진단서
                               begin

                                 {       for i:= 0 to  lstDangName2.Items.Count -1 do
                                        begin
                                            if i = lstDangName2.Items.Count - 1 then
                                                sSang2 := sSang2 + lstDangName2.Items.Strings[i]
                                            else
                                                sSang2 := sSang2 + lstDangName2.Items.Strings[i] + #13#10;

                                        end;
                                     ParamByName('sang').AsString := sSang2;
                                  }

                                     if ((lstDangName2.Items.Count > 0) and (lstDangName2.Items.Strings[0] <> '')) then
                                         ParamByName('sang').AsString := lstDangName2.Items.Strings[0]
                                    else
                                         ParamByName('sang').AsString := '';




                                    if ((lstDangName2.Items.Count > 1) and (lstDangName2.Items.Strings[1] <> '')) then
                                         ParamByName('sang1').AsString := lstDangName2.Items.Strings[1]
                                    else
                                         ParamByName('sang1').AsString := '';

                                    if ((lstDangName2.Items.Count > 2) and (lstDangName2.Items.Strings[2] <> '')) then
                                         ParamByName('sang2').AsString :=  lstDangName2.Items.Strings[2]
                                    else
                                         ParamByName('sang2').AsString := '';
                                    if ((lstDangName2.Items.Count > 3) and (lstDangName2.Items.Strings[3] <> '')) then
                                         ParamByName('sang3').AsString :=  lstDangName2.Items.Strings[3]
                                    else
                                         ParamByName('sang3').AsString := '';


                                    if ((lstDangName2.Items.Count > 4) and (lstDangName2.Items.Strings[4] <> '')) then
                                         ParamByName('sang4').AsString :=  lstDangName2.Items.Strings[4]
                                    else
                                         ParamByName('sang4').AsString := '';



                                    if ((lstSangCode2.Items.Count > 0) and (lstSangCode2.Items.Strings[0] <> '')) then
                                         ParamByName('s_key').AsString := lstSangCode2.Items.Strings[0]
                                    else
                                         ParamByName('s_key').AsString := ''; //상병분류기호 0-4

                                    if ((lstSangCode2.Items.Count > 1) and (lstSangCode2.Items.Strings[1] <> '')) then
                                         ParamByName('s_key1').AsString := lstSangCode2.Items.Strings[1]
                                    else
                                         ParamByName('s_key1').AsString := '';

                                    if ((lstSangCode2.Items.Count > 2) and (lstSangCode2.Items.Strings[2] <> '')) then
                                         ParamByName('s_key2').AsString := lstSangCode2.Items.Strings[2]
                                    else
                                         ParamByName('s_key2').AsString := '';

                                    if ((lstSangCode2.Items.Count > 3) and (lstSangCode2.Items.Strings[3] <> '')) then
                                         ParamByName('s_key3').AsString :=lstSangCode2.Items.Strings[3]
                                    else
                                         ParamByName('s_key3').AsString := '';

                                    if ((lstSangCode2.Items.Count > 4) and (lstSangCode2.Items.Strings[4] <> '')) then
                                         ParamByName('s_key4').AsString := lstSangCode2.Items.Strings[4]
                                    else
                                         ParamByName('s_key4').AsString := '';



                                    if RadioButton1.Checked then
                                         ParamByName('s_Gubn').AsString := '1'
                                    else
                                         if RadioButton2.Checked then
                                              ParamByName('s_Gubn').AsString := '2'
                                         else
                                              ParamByName('s_Gubn').AsString := '0';



                                    ParamByName('SangDate').AsString := FormatDateTime('yyyy-mm-dd', dtStartDesease.date);
                                    ParamByname('firstdate').AsString := '';
                                    ParamByName('SangMemo').AsMemo := Memo3.Lines.text;
                                   if lblKind.Caption='9' then

                                       ParamByName('SangBuwi').AsString := edtHwakinCap2.Text
                                   else
                                       ParamByName('SangBuwi').AsString := edtHwakinCap.Text;



                                    ParamByName('SangHow').AsString := '';
                                    ParamByName('JinPastMemo').AsString := '';
                                    ParamByName('SurgeryOr').AsString := '';
                                    ParamByName('hospitalOr').AsString := '';
                                    ParamByName('ActionOr').AsString := '';
                                    ParamByName('FoodOr').AsString := '';
                                    ParamByName('TreatPeriodS').AsString := '';
                                    ParamByName('TreatPeriodE').AsString := '';
                                    ParamByName('AfterTreatMemo').AsString := edtTerm.Text;
                                    ParamByName('OccurOr').AsString := '';
                                    ParamByName('EtcMemo').AsString := Edit12.text;
                               end;
                          3:
                               begin

                                    ParamByName('s_key').AsString := ''; //상병분류기호 0-4
                                    ParamByName('s_key1').AsString := '';
                                    ParamByName('s_key2').AsString := '';
                                    ParamByName('s_key3').AsString := '';
                                    ParamByName('s_key4').AsString := '';
                                    ParamByName('sang').AsString := Edit15.Text;
                                    ParamByName('sang1').AsString := '';
                                    ParamByName('sang2').AsString := '';
                                    ParamByName('sang3').AsString := '';
                                    ParamByName('sang4').AsString := '';

                                    ParamByName('s_Gubn').AsString := '1';

                                    ParamByName('SangDate').AsString := FormatDateTime('yyyy-mm-dd', DateEdit1.date);
                                    ParamByname('firstdate').AsString := '';
                                    ParamByName('SangMemo').AsMemo := Memo4.Lines.text;
                                    ParamByName('SangBuwi').AsString := '';
                                    ParamByName('SangHow').AsString := Edit3.Text;
                                    ParamByName('JinPastMemo').AsString := '';
                                    ParamByName('SurgeryOr').AsString := '';
                                    ParamByName('hospitalOr').AsString := '';
                                    ParamByName('ActionOr').AsString := '';
                                    ParamByName('FoodOr').AsString := '';
                                    ParamByName('TreatPeriodS').AsString := '';
                                    ParamByName('TreatPeriodE').AsString := '';
                                    ParamByName('AfterTreatMemo').AsString := '';
                                    ParamByName('OccurOr').AsString := '';
                                    ParamByName('EtcMemo').AsString := Edit14.text;
                               end;
                          4:
                               begin
                                    if ((lstSangCode4.Items.count > 0) and (lstSangcode4.Items.Strings[0] <> '')) then
                                         ParamByName('s_key').AsString := lstSangcode4.Items.Strings[0]
                                    else
                                         ParamByName('s_key').AsString := ''; //상병분류기호 0-4
                                    if ((lstSangCode4.Items.count > 1) and (lstSangcode4.Items.Strings[1] <> '')) then
                                         ParamByName('s_key1').AsString := lstSangcode4.Items.Strings[1]
                                    else
                                         ParamByName('s_key1').AsString := '';
                                    if ((lstSangCode4.Items.count > 2) and (lstSangcode4.Items.Strings[2] <> '')) then
                                         ParamByName('s_key2').AsString := lstSangcode4.Items.Strings[2]
                                    else
                                         ParamByName('s_key2').AsString := '';
                                    if ((lstSangCode4.Items.count > 3) and (lstSangcode4.Items.Strings[3] <> '')) then
                                         ParamByName('s_key3').AsString := lstSangcode4.Items.Strings[3]
                                    else
                                         ParamByName('s_key3').AsString := '';
                                    if ((lstSangCode4.Items.count > 4) and (lstSangcode4.Items.Strings[4] <> '')) then
                                         ParamByName('s_key4').AsString := lstSangcode4.Items.Strings[4]
                                    else
                                         ParamByName('s_key4').AsString := '';
                                    if ((lstDangName4.Items.Count > 0) and (lstDangName4.Items.Strings[0] <> '')) then
                                         ParamByName('sang').AsString := lstDangName4.Items.Strings[0]
                                    else
                                         ParamByName('sang').AsString := '';
                                    if ((lstDangName4.Items.Count > 1) and (lstDangName4.Items.Strings[1] <> '')) then
                                         ParamByName('sang1').AsString := lstDangName4.Items.Strings[1]
                                    else
                                         ParamByName('sang1').AsString := '';
                                    if ((lstDangName4.Items.Count > 2) and (lstDangName4.Items.Strings[2] <> '')) then
                                         ParamByName('sang2').AsString := lstDangName4.Items.Strings[2]
                                    else
                                         ParamByName('sang2').AsString := '';
                                    if ((lstDangName4.Items.Count > 3) and (lstDangName4.Items.Strings[3] <> '')) then
                                         ParamByName('sang3').AsString := lstDangName4.Items.Strings[3]
                                    else
                                         ParamByName('sang3').AsString := '';
                                    if ((lstDangName4.Items.Count > 4) and (lstDangName4.Items.Strings[4] <> '')) then
                                         ParamByName('sang4').AsString := lstDangName4.Items.Strings[4]
                                    else
                                         ParamByName('sang4').AsString := '';

                                    if RadioButton3.Checked then
                                         ParamByName('s_Gubn').AsString := '1'
                                    else
                                         if RadioButton4.Checked then
                                              ParamByName('s_Gubn').AsString := '2'
                                         else
                                              ParamByName('s_Gubn').AsString := '0';

                                    ParamByName('SangDate').AsString := FormatDateTime('yyyy-mm-dd', DateEdit2.date);
                                    ParamByname('firstdate').AsString := FormatDateTime('yyyy-mm-dd', DateEdit4.date);
                                    ParamByName('SangMemo').AsMemo := Edit17.Text;
                                    ParamByName('SangBuwi').AsString := Edit18.Text;
                                    ParamByName('SangHow').AsString := Edit19.Text;
                                    ParamByName('JinPastMemo').AsString := Edit20.Text;
                                    ParamByName('SurgeryOr').AsString := Edit21.Text;
                                    ParamByName('hospitalOr').AsString := Edit22.Text;
                                    ParamByName('ActionOr').AsString := Edit23.Text;
                                    ParamByName('FoodOr').AsString := Edit24.Text;
                                    ParamByName('TreatPeriodS').AsString := FormatDateTime('yyyy-mm-dd', DateEdit5.Date);
                                    ParamByName('TreatPeriodE').AsString := FormatDateTime('yyyy-mm-dd', DateEdit6.Date);
                                    ParamByName('AfterTreatMemo').AsString := Edit26.Text;
                                    ParamByName('OccurOr').AsString := Edit27.Text;
                                    ParamByName('EtcMemo').AsString := Edit28.text;
                               end;

                          9:
                               begin

                                    ParamByName('s_key').AsString := ''; //상병분류기호 0-4
                                    ParamByName('s_key1').AsString := '';
                                    ParamByName('s_key2').AsString := '';
                                    ParamByName('s_key3').AsString := '';
                                    ParamByName('s_key4').AsString := '';
                                    ParamByName('sang').AsString := Edit6.Text;
                                    ParamByName('sang1').AsString := '';
                                    ParamByName('sang2').AsString := '';
                                    ParamByName('sang3').AsString := '';
                                    ParamByName('sang4').AsString := '';
                                    ParamByName('s_Gubn').AsString := '0';

                                    ParamByName('SangDate').AsString := FormatDateTime('yyyy-mm-dd', DateEdit7.date);
                                    ParamByname('firstdate').AsString := FormatDateTime('yyyy-mm-dd', DateEdit8.date);
                                    ParamByName('SangMemo').AsMemo := Edit29.Text;
                                    ParamByName('SangBuwi').AsString := Edit30.Text;
                                    ParamByName('SangHow').AsString := Edit31.Text;
                                    ParamByName('JinPastMemo').AsString := Edit32.Text;
                                    if RadioButton5.Checked then
                                         ParamByName('SurgeryOr').AsString := '3개월미만'
                                    else
                                         if RadioButton6.Checked then
                                              ParamByName('SurgeryOr').AsString := '3개월이상'
                                         else
                                              if RadioButton7.Checked then
                                                   ParamByName('SurgeryOr').AsString := '6개월이상'
                                              else
                                                   if RadioButton8.Checked then
                                                        ParamByName('SurgeryOr').AsString := '1년 이상'
                                                   else
                                                        ParamByName('SurgeryOr').AsString := Edit13.Text;

                                    ParamByName('hospitalOr').AsString := Edit33.Text;
                                    ParamByName('ActionOr').AsString := Edit34.Text;
                                    ParamByName('FoodOr').AsString := Edit16.Text;
                                    ParamByName('TreatPeriodS').AsString := FormatDateTime('yyyy-mm-dd', DateEdit9.Date);
                                    ParamByName('TreatPeriodE').AsString := FormatDateTime('yyyy-mm-dd', DateEdit9.Date);
                                    ParamByName('AfterTreatMemo').AsString := Edit11.Text;
                                    ParamByName('OccurOr').AsString := '';
                                    ParamByName('EtcMemo').AsString := '';
                               end;
                     end;

                     //Chart         : 차트
                     //DateNo        : 연번호
                     //ReportKind    : 리포트구분
                     //s_key         : 상병분류기호
                     //s_Gubn        : 상병구분 0: ,1:임상적, 2:최종
                     //RelDate       : 발행일
                     //RelOrg        : 발행기관
                     //OrgAdd        : 병원주소
                     //LinceNo       : 면허번호
                     //DocName       : 의사이름
                     //OrgPhone
                     //SangDate      : 발병일자
                     //SangMemo      : 1-치료내용,향추-치료내역 , 상해 원인
                     //SangBuwi      : 상해부위
                     //SangHow       : 상해정도
                     //JinPastMemo   : 진료경과의견
                     //SurgeryOr     : 수술여부
                     //hospitalOr    : 입원여부
                     //ActionOr      : 통상활동가능여부
                     //FoodOr        : 식사가능여부
                     //TreatPeriodS  : 치료기간
                     //TreatPeriodE  : 치료기간
                     //AfterTreatMemo : 향후치료의견
                     //OccurOr        :병발증발생가능여부
                     //EtcMemo       : 비고

                     ExecSQL;

                     dm_f.uniConnection1.Commit;

                     ShowMessage('문서를 저장하였습니다.');
                end;
          except

                  on E: Exception do
                  begin
                       dm_f.uniConnection1.Rollback;
                       showmessage('문서 저장실패' +
                            E.Message);
                       exceptLogging('문서 저장실패' +
                            E.Message);


                  end;




          end;
     end
     else
     begin

                 showmessage('차트번호가 없습니다. 다시 확인후 저장하십시오.');
                 edit2.SetFocus;
     end;
end;

procedure TMain_f.FormMouseWheel(Sender: TObject; Shift: TShiftState;
     WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
     case pcMain.ActivePageIndex of
          0:
               begin
                    if WheelDelta > 0 then
                         SendMessage(Memo2.Handle, WM_VSCROLL, SB_LINEUP, 0)
                    else
                         SendMessage(Memo2.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
               end;
          1:
               begin
                    if WheelDelta > 0 then
                         SendMessage(Memo1.Handle, WM_VSCROLL, SB_LINEUP, 0)
                    else
                         SendMessage(Memo1.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
               end;
          2:
               begin
                    if WheelDelta > 0 then
                         SendMessage(Memo3.Handle, WM_VSCROLL, SB_LINEUP, 0)
                    else
                         SendMessage(Memo3.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
               end;
          3:
               begin
                    if WheelDelta > 0 then
                         SendMessage(Memo4.Handle, WM_VSCROLL, SB_LINEUP, 0)
                    else
                         SendMessage(Memo4.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
               end;
     end;
end;

procedure TMain_f.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then SelectNext(sender as TWinControl, True, True);
end;

procedure TMain_f.lstDangName1DblClick(Sender: TObject);
var
     i: integer;
begin
     i :=  lstDangName1.ItemIndex;
     lstDangName1.Items.Delete( i);
     lstSangCode1.Items.Delete( i);

end;

procedure TMain_f.lstDangName2DblClick(Sender: TObject);
var
     i: integer;
begin
     i :=  lstDangName2.ItemIndex;
     lstDangName2.Items.Delete(i);
     lstSangCode2.Items.Delete( i);
end;

procedure TMain_f.lstDangNameDblClick(Sender: TObject);
var
     i: integer;
begin
     i :=  lstDangName.ItemIndex;
   {  i := 0;
     while i < TListBox(Sender).Count do
     begin
          if TListBox(Sender).Selected[i] then
               TListBox(Sender).Items.Delete(i)
          else
               inc(i);
     end;
     }

     lstDangName.Items.Delete( i);
     lstSangCode.Items.Delete( i);
end;

procedure TMain_f.lstSangCode1DblClick(Sender: TObject);
var
     i: integer;
begin
     i :=  lstSangCode1.ItemIndex;
     lstDangName1.Items.Delete( i);
     lstSangCode1.Items.Delete( i);

end;

procedure TMain_f.lstSangCode2DblClick(Sender: TObject);
var
     i: integer;
begin
     i :=  lstSangCode2.ItemIndex;

     lstSangCode2.Items.Delete( i);

     lstDangName2.Items.Delete( i);

end;

procedure TMain_f.lstSangCodeDblClick(Sender: TObject);
var
     i: integer;
begin
     i :=  lstSangCode.ItemIndex;

     lstDangName.Items.Delete( i);
     lstSangCode.Items.Delete(i);
end;

procedure TMain_f.DateEdit6Exit(Sender: TObject);
var
     varInt: integer;
     varStr: string;
     varDouble: double;
begin
     vardouble := (dateEdit6.Date - dateEdit5.Date);
     varStr := floatToStr(varDouble);
     varInt := strToInt(varStr);

     edit25.text := intToStr(varInt div 7);
end;

procedure TMain_f.edtSangCodeEnter(Sender: TObject);
begin
     if TEdit(Sender).Text = '사인직접입력' then TEdit(Sender).Text := '';
end;

procedure TMain_f.edtSangCodeExit(Sender: TObject);
begin
     if TEdit(Sender).Text = '' then TEdit(Sender).Text := '사인직접입력';
end;

procedure TMain_f.edtSangCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if TEdit(Sender).Text <> '' then
          begin
               lstSangCode2.Items.Add(uppercase(TEdit(Sender).Text));
               TEdit(Sender).Text := '';
          end;
     end;
end;

procedure TMain_f.edtJindanExit(Sender: TObject);
begin
     if TEdit(Sender).Text = '' then TEdit(Sender).Text := '진단명직접입력';
end;

procedure TMain_f.edtSangCode2Enter(Sender: TObject);
begin
     if TEdit(Sender).Text = '사인직접입력' then TEdit(Sender).Text := '';
end;

procedure TMain_f.edtSangCode2Exit(Sender: TObject);
begin
     if TEdit(Sender).Text = '' then TEdit(Sender).Text := '사인직접입력';
end;

procedure TMain_f.edtSangCode2KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if TEdit(Sender).Text <> '' then
          begin
               lstSangCode4.Items.Add(uppercase(TEdit(Sender).Text));
               TEdit(Sender).Text := '';
          end;
     end;
end;

procedure TMain_f.edtSangCode3Enter(Sender: TObject);
begin
     if TEdit(Sender).Text = '사인직접입력' then TEdit(Sender).Text := '';
end;

procedure TMain_f.edtSangCode3Exit(Sender: TObject);
begin
     if TEdit(Sender).Text = '' then TEdit(Sender).Text := '사인직접입력';
end;

procedure TMain_f.edtSangCode3KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if TEdit(Sender).Text <> '' then
          begin
               lstSangCode1.Items.Add(uppercase(TEdit(Sender).Text));
               TEdit(Sender).Text := '';
          end;
     end;
end;

procedure TMain_f.edtSangCode4Enter(Sender: TObject);
begin
     if TEdit(Sender).Text = '사인직접입력' then TEdit(Sender).Text := '';
end;

procedure TMain_f.edtSangCode4Exit(Sender: TObject);
begin
     if TEdit(Sender).Text = '' then TEdit(Sender).Text := '사인직접입력';
end;

procedure TMain_f.edtSangCode4KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if TEdit(Sender).Text <> '' then
          begin
               lstSangCode.Items.Add(uppercase(TEdit(Sender).Text));
               TEdit(Sender).Text := '';
          end;
     end;
end;

procedure TMain_f.cbDocNameChange(Sender: TObject);
begin
     edtLNo.Text := lstDoctor.Items.Strings[cbDocName.itemindex];

end;

procedure TMain_f.cbDocNameClick(Sender: TObject);
begin
     edtLNo.Text := lstDoctor.Items.Strings[cbDocName.itemindex];
end;

procedure TMain_f.RequestPrint;
var
     i: Integer;
     sSang: string;
     sCode: string;
      Pict1, pict2 : TfrxPictureView;
      memo_Title :TfrxMemoView;
    Image: TImage;
begin


   if configvalue.DocuMidFile <> '' then
   begin
       if fileexists(configvalue.DocuMidFile) then
        begin
            Pict1 := frxreport.FindComponent('Picture1') as TfrxPictureView;
            Image := TImage.Create(nil);
            Image.Picture.LoadFromFile(configvalue.DocuMidFile);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
          //  pict.Width:= image.Width;
          //  pict.height:= image.height;
            Pict1.Picture := Image.Picture;
            Image.Free;

           memo_Title:=  frxreport.FindComponent('Memo2') as TfrxMemoView;
           memo_Title.Visible := false;
        end;
    end;




   if configvalue.DocuHeaderFile <> '' then
   begin
        if fileexists(configvalue.DocuHeaderFile) then
        begin
            Pict2 := frxreport.FindComponent('Picture2') as TfrxPictureView;
            Image := TImage.Create(nil);
            Image.Picture.LoadFromFile(configvalue.DocuHeaderFile);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
          //  pict.Width:= image.Width;
          //  pict.height:= image.height;
            Pict2.Picture := Image.Picture;
            Image.Free;
        end;
    end;





     with frxReport do
     begin
          Variables['Kiho'] := QuotedStr(Edit7.Text);
          Variables['cName'] := QuotedStr(Edit8.Text);
          Variables['k_number'] := QuotedStr(Edit9.Text);
          Variables['PiboName'] := QuotedStr(Edit10.Text);
          Variables['PiboJumin'] := QuotedStr('');
          Variables['PtName'] := QuotedStr(Edit1.Text);
          Variables['PtJumin'] := QuotedStr(EdtJuminNo.Text);
          Variables['PtAddress'] := QuotedStr(EdtPadd.Text);

//          sSang := '';
//          for i := 0 to lstDangName1.Items.Count - 1 do
//          begin
//               if i = lstDangName1.Items.Count - 1 then
//                    sSang := sSang + lstDangName1.Items.Strings[i]
//               else
//                    sSang := sSang + lstDangName1.Items.Strings[i] + #13#10;
//          end;
//
//
//          if (Pos(#13#10, sSang) > 0) then
//               Variables['PtSang'] := sSang
//          else
//               Variables['PtSang'] := QuotedStr(sSang);
//
//          sCode := '';
//          for i := 0 to lstSangCode1.Items.Count - 1 do
//          begin
//               if i = lstSangCode1.Items.Count - 1 then
//                    sCode := sCode + lstSangCode1.Items.Strings[i]
//               else
//                    sCode := sCode + lstSangCode1.Items.Strings[i] + #13#10;
//          end;
//          if (Pos(#13#10, sCode) > 0) then
//               Variables['PtS_Code'] := sCode
//          else
//               Variables['PtS_Code'] := QuotedStr(sCode);
          for i := 0 to lstDangName1.Items.Count - 1 do
          begin

               if sSang <> '' then
                   sSang := sSang +#13#10+ lstDangName1.Items.Strings[i]
               else
                   sSang := lstDangName1.Items.Strings[i] ;



               if sCode <> '' then
                   sCode := sCode +#13#10+ lstSangCode1.Items.Strings[i]
               else
                   sCode := lstSangCode1.Items.Strings[i] ;

          end;

            Variables['PtSang'] := QuotedStr(sSang);


            Variables['PtS_Code'] := QuotedStr(sCode);

          if (Pos(#13#10, Memo1.Lines.Text) > 0) then
               Variables['Main'] := Memo1.Lines.Text
          else
               Variables['Main'] := QuotedStr(Memo1.Lines.Text);

          Variables['Period'] := QuotedStr(Edit5.Text);
     end;
end;

procedure TMain_f.CommDataPrint;
var
     i: Integer;
     sSang: string;
     sCode: string;
begin
     with frxReport do
     begin
          sSang := '';
          for i := 0 to lstDangName.Items.Count - 1 do
          begin
               if i = lstDangName.Items.Count - 1 then
                    sSang := sSang + lstDangName.Items.Strings[i]
               else
                    sSang := sSang + lstDangName.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sSang) > 0) then
               Variables['PtSang'] := sSang
          else
               Variables['PtSang'] := QuotedStr(sSang);

          sCode := '';
          for i := 0 to lstSangCode.Items.Count - 1 do
          begin
               if i = lstSangCode.Items.Count - 1 then
                    sCode := sCode + lstSangCode.Items.Strings[i]
               else
                    sCode := sCode + lstSangCode.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sCode) > 0) then
               Variables['PtS_Code'] := sCode
          else
               Variables['PtS_Code'] := QuotedStr(sCode);

          if (Pos(#13#10, Memo2.Lines.Text) > 0) then
               Variables['Main'] := Memo2.Lines.Text
          else
               Variables['Main'] := QuotedStr(Memo2.Lines.Text);

          Variables['Period'] := QuotedStr(EdtReturn.Text);
     end;
end;

procedure TMain_f.InitFastReport;
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
          PreviewOptions.Buttons := [pbPrint, pbZoom, pbFind, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
     end;
end;

procedure TMain_f.CommTitlePrint(ATitle, AConten, APeriod, AMemo: string);
begin
     with frxReport do
     begin
          Variables['mmTitle'] := QuotedStr(ATitle);
          Variables['mmConten'] := QuotedStr(AConten);
          Variables['mmPeriod'] := QuotedStr(APeriod);
          Variables['mmMemo']   := QuotedStr(AMemo);
     end;
end;

procedure TMain_f.CertificatePrint;
var
     i: Integer;
     sSang: string;
     sSang2: string;
     sCode: string;
     sdate: string;
     rd1, rd2 : string;

     chkBox1, chkBox2 : TfrxCheckBoxView;


begin
     with frxReport do
     begin
          sSang := '';
          sSang2 := '';
          sdate := '';
          rd1:= '';
          rd2 := '';

        {
          for i := 0 to lstDangName2.Items.Count - 1 do
          begin
               if i = lstDangName2.Items.Count - 1 then
                    sSang := sSang + lstDangName2.Items.Strings[i]
               else
                    sSang := sSang + lstDangName2.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sSang) > 0) then
               Variables['PtSang'] := sSang
          else
               Variables['PtSang'] := QuotedStr(sSang);

          sCode := '';
          for i := 0 to lstSangCode2.Items.Count - 1 do
          begin
               if i = lstSangCode2.Items.Count - 1 then
                    sCode := sCode + lstSangCode2.Items.Strings[i]
               else
                    sCode := sCode + lstSangCode2.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sCode) > 0) then
               Variables['PtS_Code'] := sCode
          else
               Variables['PtS_Code'] := QuotedStr(sCode);
         }

          for i := 0 to lstDangName2.Items.Count - 1 do
          begin
               if sSang <> '' then
                   sSang := sSang +#13#10+ lstDangName2.Items.Strings[i]
               else
                   sSang := lstDangName2.Items.Strings[i] ;



               if sSang2 <> '' then
                   sSang2 := sSang2 +#13#10+ lstSangCode2.Items.Strings[i]
               else
                   sSang2 := lstSangCode2.Items.Strings[i] ;



//               if i+1 <= 5 then
//               begin
//                    if i = lstDangName2.Items.Count - 1 then
//                         sSang := sSang + lstDangName2.Items.Strings[i]
//                    else
//                         sSang := sSang + lstDangName2.Items.Strings[i] + #13#10;
//
//                     if (Pos(#13#10, sSang) > 0) then
//                     Variables['PtSang'] := sSang
//                          else
//                     Variables['PtSang'] := QuotedStr(sSang);
//
//               end
//               else
//                 if i+1 > 5 then
//               begin
//
//
//                    if i = lstDangName2.Items.Count - 1 then
//                         sSang2 := sSang2 + lstDangName2.Items.Strings[i]
//                    else
//                         sSang2 := sSang2 + lstDangName2.Items.Strings[i] + #13#10;
//
//
//                     if (Pos(#13#10, sSang) > 0) then
//                          Variables['PtS_Code'] := sSang2
//                     else
//                          Variables['PtS_Code'] := QuotedStr(sSang2);

             //  end




          end;

          Variables['PtSang']   :=  QuotedStr(sSang);
          Variables['PtS_Code'] :=  QuotedStr(sSang2);

          chkBox1 :=  frxreport.FindComponent('checkbox1') as TfrxCheckBoxView;
          chkBox1.Checked := RadioButton1.Checked ;
          chkBox2 :=  frxreport.FindComponent('checkbox2') as TfrxCheckBoxView;
          chkBox2.Checked := RadioButton2.Checked ;
//          if RadioButton1.Checked  then
//              begin
//
//                  Variables['PtSangKind1'] := sSang
//              end
//              else
//              begin
//                  Variables['PtSangKind1'] :=   sSang ;
//              end;

//          if RadioButton2.Checked //then Variables['PtSangKind2'] := 2;
//             then
//                  Variables['PtSangKind2'] :=  QuotedStr(sSang)
//              else
//                  Variables['PtSangKind2'] :=  QuotedStr(sSang);

          if (cbDeseaseDateAccept.Checked = true) then
               //Variables['SangDate'] := FormatDateTime('yyyy-mm-dd', dtStartDesease.Date)
               Variables['SangDate'] := QuotedStr(FormatDateTime('yyyy-mm-dd', dtStartDesease.Date))
          else
               Variables['SangDate'] := QuotedStr('미상');//sdate);

          Variables['SangDate2'] := QuotedStr(edtTerm.text);

          if (Pos(#13#10, Memo3.Lines.Text) > 0) then
               Variables['Main'] := Memo3.Lines.Text
          else
               Variables['Main'] := QuotedStr(Memo3.Lines.Text);

          if (Pos(#13#10, Edit12.Text) > 0) then
               Variables['Period'] := Edit12.Text
          else
               Variables['Period'] := QuotedStr(Edit12.Text);
     end;
end;


procedure TMain_f.CertificatePrint_Eng;
var
     i: Integer;
     sSang: string;
     sSang2: string;
     sCode: string;
     sdate: string;
     rd1, rd2 : string;


begin
     with frxReport do
     begin
          sSang := '';
          sSang2 := '';
          sdate := '';
          rd1:= '';
          rd2 := '';


          for i := 0 to lstDangName2.Items.Count - 1 do
          begin
               if sSang <> '' then
                   sSang := sSang +#13#10+ lstDangName2.Items.Strings[i]
               else
                   sSang :=lstDangName2.Items.Strings[i];




               if sSang2 <> '' then
                   sSang2 := sSang2 +#13#10+ lstSangCode2.Items.Strings[i]
               else
                   sSang2 := lstSangCode2.Items.Strings[i] ;






          end;
                      //   QuotedStr  빼면 fastreport Error in expression '': Expression expected 에러난다.
          Variables['PtSang']   :=  QuotedStr(sSang);
          Variables['PtS_Code'] :=  QuotedStr(sSang2);

//          chkBox1 :=  frxreport.FindComponent('checkbox1') as TfrxCheckBoxView;
//          chkBox1.Checked := RadioButton1.Checked ;
//          chkBox2 :=  frxreport.FindComponent('checkbox2') as TfrxCheckBoxView;
//          chkBox2.Checked := RadioButton2.Checked ;

          if (cbDeseaseDateAccept.Checked = true) then
               //Variables['SangDate'] := FormatDateTime('yyyy-mm-dd', dtStartDesease.Date)
               Variables['SangDate'] := QuotedStr(FormatDateTime('yyyy-mm-dd', dtStartDesease.Date))
          else
               Variables['SangDate'] := QuotedStr('Unknown');//sdate);

          Variables['SangDate2'] := QuotedStr(edtTerm.text);

          if (Pos(#13#10, Memo3.Lines.Text) > 0) then
               Variables['Main'] := Memo3.Lines.Text
          else
               Variables['Main'] := QuotedStr(Memo3.Lines.Text);

          if (Pos(#13#10, Edit12.Text) > 0) then
               Variables['Period'] := Edit12.Text
          else
               Variables['Period'] := QuotedStr(Edit12.Text);
     end;
end;

procedure TMain_f.InferPrint;
begin
     with frxReport do
     begin
          if checkBox10.Checked = false then
               Variables['SangDate'] := DateEdit1.Date;

          Variables['PtSang'] := QuotedStr(Edit15.Text);
          Variables['SangHow'] := QuotedStr(Edit3.Text);

          if (Pos(#13#10, Memo4.Lines.Text) > 0) then
               Variables['Main'] := Memo4.Lines.Text
          else
               Variables['Main'] := QuotedStr(Memo4.Lines.Text);

          if (Pos(#13#10, Edit14.Text) > 0) then
               Variables['Period'] := Edit14.Text
          else
               Variables['Period'] := QuotedStr(Edit14.Text);
     end;
end;

procedure TMain_f.EtcConfirmPrint;
var
     i: Integer;
     sSang: string;
     sCode: string;
     chkBox1, chkBox2 : TfrxCheckBoxView;

begin
     with frxReport do
     begin

          chkBox1 :=  frxreport.FindComponent('checkbox1') as TfrxCheckBoxView;
          chkBox1.Checked := RadioButton1.Checked ;
          chkBox2 :=  frxreport.FindComponent('checkbox2') as TfrxCheckBoxView;
          chkBox2.Checked := RadioButton2.Checked ;






          sSang := '';
          for i := 0 to lstDangName2.Items.Count - 1 do
          begin
               if i = lstDangName2.Items.Count - 1 then
                    sSang := sSang + lstDangName2.Items.Strings[i]
               else
                    sSang := sSang + lstDangName2.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sSang) > 0) then
               Variables['PtSang'] := sSang
          else
               Variables['PtSang'] := QuotedStr(sSang);

          sCode := '';
          for i := 0 to lstSangCode2.Items.Count - 1 do
          begin
               if i = lstSangCode2.Items.Count - 1 then
                    sCode := sCode + lstSangCode2.Items.Strings[i]
               else
                    sCode := sCode + lstSangCode2.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sCode) > 0) then
               Variables['PtS_Code'] := sCode
          else
               Variables['PtS_Code'] := QuotedStr(sCode);

          if (Pos(#13#10, Memo3.Lines.Text) > 0) then
               Variables['Main'] := Memo3.Lines.Text
          else
               Variables['Main'] := QuotedStr(Memo3.Lines.Text);

          if (Pos(#13#10, Edit12.Text) > 0) then
               Variables['Period'] := Edit12.Text
          else
               Variables['Period'] := QuotedStr(Edit12.Text);

          if  lblKind.Caption = '9' then
              Variables['mmTitle'] := QuotedStr(edtHwakinCap2.Text + ' 확인서') //입통원 확인서
          else
              Variables['mmTitle'] := QuotedStr(edtHwakinCap.Text + ' 확인서')   ;//(   ) 확인서
     end;
end;

procedure TMain_f.InjuryPrint;
var
     i: Integer;
     sSang: string;
     sCode: string;
begin
     with frxReport do
     begin
          sSang := '';
          for i := 0 to lstDangName4.Items.Count - 1 do
          begin
               if i = lstDangName4.Items.Count - 1 then
                    sSang := sSang + lstDangName4.Items.Strings[i]
               else
                    sSang := sSang + lstDangName4.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sSang) > 0) then
               Variables['PtSang'] := sSang
          else
               Variables['PtSang'] := QuotedStr(sSang);

          sCode := '';
          for i := 0 to lstSangCode4.Items.Count - 1 do
          begin
               if i = lstSangCode4.Items.Count - 1 then
                    sCode := sCode + lstSangCode4.Items.Strings[i]
               else
                    sCode := sCode + lstSangCode4.Items.Strings[i] + #13#10;
          end;
          if (Pos(#13#10, sCode) > 0) then
               Variables['PtS_Code'] := sCode
          else
               Variables['PtS_Code'] := QuotedStr(sCode);

          if RadioButton3.Checked then Variables['PtSangKind'] := 1;
          if RadioButton4.Checked then Variables['PtSangKind'] := 2;

          Variables['SangDate'] := DateEdit2.Date;
          Variables['FirstDate'] := DateEdit4.Date;

          if (Pos(#13#10, EDit17.Text) > 0) then
               Variables['SangMemo'] := EDit17.Text
          else
               Variables['SangMemo'] := QuotedStr(EDit17.Text);

          if (Pos(#13#10, EDit18.Text) > 0) then
               Variables['SangBuwi'] := EDit18.Text
          else
               Variables['SangBuwi'] := QuotedStr(EDit18.Text);

          if (Pos(#13#10, EDit19.Text) > 0) then
               Variables['SangHow'] := EDit19.Text
          else
               Variables['SangHow'] := QuotedStr(EDit19.Text);

          if (Pos(#13#10, EDit20.Text) > 0) then
               Variables['JinPastMemo'] := EDit20.Text
          else
               Variables['JinPastMemo'] := QuotedStr(EDit20.Text);

          Variables['SurgeryOr'] := QuotedStr(EDit21.Text);
          Variables['hospitalOr'] := QuotedStr(EDit22.Text);
          Variables['ActionOr'] := QuotedStr(EDit23.Text);
          Variables['FoodOr'] := QuotedStr(EDit24.Text);
          Variables['TreatPeriodS'] := DateEdit5.Date;
          Variables['TreatPeriodE'] := DateEdit6.Date;
          Variables['Weeks'] := QuotedStr('향후 약 ' + EDit25.Text + '주간 ');

          if (Pos(#13#10, EDit26.Text) > 0) then
               Variables['Main'] := EDit26.Text
          else
               Variables['Main'] := QuotedStr(EDit26.Text);

          if (Pos(#13#10, EDit27.Text) > 0) then
               Variables['OccurOr'] := EDit27.Text
          else
               Variables['OccurOr'] := QuotedStr(EDit27.Text);

          Variables['Period'] := QuotedStr(EDit28.Text);
     end;
end;

procedure TMain_f.PatientInfo(bAgeUse: Boolean);
begin
     with frxReport do
     begin
          Variables['ChartNo'] := QuotedStr(Edit2.Text);
          Variables['SerialNo'] := QuotedStr(EdtSeqNo.Text);
          Variables['PtName'] := QuotedStr(Edit1.Text);
          Variables['PtJumin'] := QuotedStr(EdtJuminNo.Text);
          Variables['PtBirth'] := QuotedStr(EdtBd.Text);

          if (bAgeUse = True) then
               Variables['PtAge'] := QuotedStr(EdtAge.Text);

          Variables['PtSex'] :=   QuotedStr(EdtGender.Text);
          Variables['PtAddress'] :=  QuotedStr(EdtPadd.Text);
     end;
end;

procedure TMain_f.HospitalInfo(bPhoneUse, bAddUse, bKihoUse: Boolean);
begin
     with frxReport do
     begin
          Variables['RelDate']       := RelDate.Date;
          Variables['RelOrg']        := QuotedStr(edtHName.Text);
          Variables['RelLicense']    := QuotedStr(edtLNo.Text);
          Variables['DocName']       := QuotedStr(cbDocName.Text);

          if (bPhoneUse = True) then
               Variables['relPhone'] := QuotedStr(configvalue.varTel1);

          if (bAddUse = True) then
               Variables['RelAdd']   := QuotedStr(edtAdd.Text);

          if (bKihoUse = True) then
               Variables['relKiho']  := QuotedStr(configvalue.varYoyang);
     end;
end;

procedure TMain_f.btnArmyJindanSeoClick(Sender: TObject);
begin
     Label55.Visible := False;
     pcMain.ActivePageIndex := 9;
     Panel3.Caption := btnArmyJindanSeo.Caption;
      //  edtHwakinCap.Visible     := False;
      pnlHwakinCap.Visible  := False;
     lblKind.Caption := '0';
     btnNewclick(Self);
     ChangeTab;
end;

procedure TMain_f.SoldierPrint;
var
     i: Integer;
     sSang: string;
     sCode: string;
begin
     with frxReport do
     begin

          Variables['PtSang'] := QuotedStr(EDit6.Text);
          Variables['SangDate'] := DateEdit7.Date;
          Variables['FirstDate'] := DateEdit8.Date;
          Variables['PtJanso'] := QuotedStr(EDit11.Text);

          if (Pos(#13#10, EDit29.Text) > 0) then
               Variables['SangMemo'] := EDit29.Text
          else
               Variables['SangMemo'] := QuotedStr(EDit29.Text);

          if (Pos(#13#10, EDit30.Text) > 0) then
               Variables['SangBuwi'] := EDit30.Text
          else
               Variables['SangBuwi'] := QuotedStr(EDit30.Text);

          if (Pos(#13#10, EDit31.Text) > 0) then
               Variables['SangHow'] := EDit31.Text
          else
               Variables['SangHow'] := QuotedStr(EDit31.Text);

          if (Pos(#13#10, EDit32.Text) > 0) then
               Variables['JinPastMemo'] := EDit32.Text
          else
               Variables['JinPastMemo'] := QuotedStr(EDit32.Text);

          if RadioButton5.Checked then Variables['SurgeryOr'] := QuotedStr('3개월미만');
          if RadioButton6.Checked then Variables['SurgeryOr'] := QuotedStr('3개월이상');
          if RadioButton7.Checked then Variables['SurgeryOr'] := QuotedStr('6개월이상');
          if RadioButton8.Checked then Variables['SurgeryOr'] := QuotedStr('1년 이상');
          if RadioButton9.Checked then Variables['SurgeryOr'] := QuotedStr(EDit13.Text);

          if (Pos(#13#10, EDit33.Text) > 0) then
               Variables['hospitalOr'] := EDit33.Text
          else
               Variables['hospitalOr'] := QuotedStr(EDit33.Text);

          if (Pos(#13#10, EDit34.Text) > 0) then
               Variables['ActionOr'] := EDit34.Text
          else
               Variables['ActionOr'] := QuotedStr(EDit34.Text);

          if (Pos(#13#10, EDit16.Text) > 0) then
               Variables['FoodOr'] := EDit16.Text
          else
               Variables['FoodOr'] := QuotedStr(EDit16.Text);

          Variables['TreatPeriodS'] := DateEdit9.Date;

     end;
end;

procedure TMain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TMain_f.FormCreate(Sender: TObject);
var
     i: integer;
begin

     if loadini=true then
     begin
     //   configvalue := Tconfigvalue.Create;
        configvalue.LoadGlobalData_ini;  //ini정보를 열자.



         if dm_f.ConnectDatabase(configvalue.varDbip,
              configvalue.varDbname,
              configvalue.varDbuser, configvalue.varDbpass,
              configvalue.varDbProtocol,
                              configvalue.varDbPort) = true then
         begin

           configvalue.LoadGlobalData_db;
         end;
      end;

     for i := 0 to pcMain.pageCount - 1 do
     begin
          pcMain.Pages[i].tabVisible := false;
     end;
     pcMain.ActivePageIndex := 0;

end;

end.

