unit sms;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs,  ExtCtrls, StdCtrls, ComCtrls,
     Buttons,  jpeg,
     OleServer, AdvCombo, Spin, EllipsLabel, AdvPanel, shellApi,
     Grids, AdvObj, BaseGrid, AdvGrid, tmsAdvGridExcel, AdvUtil;
type
     Tsms_f = class(TForm)
          pnlsms: TPanel;
          pnlSmsMain: TPanel;
          sbSmsItem: TScrollBox;
          sbItem: TScrollBox;
          Panel1: TPanel;
          imgSmsmain: TImage;
          memContent: TMemo;
          btnListLoad: TSpeedButton;
          btnDetail: TSpeedButton;
          edtSendNo: TEdit;
          yeyakDayEdit: TDateTimePicker;
          btnSend: TSpeedButton;
          btnNew: TSpeedButton;
          edtSch: TEdit;
          btnSch: TSpeedButton;
          pnlSubItemName: TPanel;
          lblSubitemName: TLabel;
          lblContentsKind: TLabel;
          pnlSmsButton: TPanel;
          btnAdd: TSpeedButton;
          pnlContentsSave: TPanel;
          pnlSaveButton: TPanel;
          btnSave: TButton;
          btnCls: TButton;
          LblMemcontentSize: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          EdtContNo: TEdit;
          EdtContName: TEdit;
          pnlSmsCont: TPanel;
          memSmsContentsSave: TMemo;
          Image1: TImage;
          pnlsch: TPanel;
          Label51: TLabel;
          Label48: TLabel;
          Label49: TLabel;
          Label50: TLabel;
          EdtDPSch: TEdit;
          pnlSmsMenu: TPanel;
          Image3: TImage;
          lblLogin: TLabel;
          lblViewSendMessage: TLabel;
          lblViewReservMessage: TLabel;
          lblCharge: TLabel;
          Label1: TLabel;
          Label2: TLabel;
          lblRest: TLabel;
          btnsp: TSpeedButton;
          btnChar: TSpeedButton;
          pnlSend: TPanel;
          Splitter1: TSplitter;
          PnlFindResult: TPanel;
          pnlChoiceMenu: TPanel;
          PnlChoice: TPanel;
          Panel2: TPanel;
          Label6: TLabel;
          cbNew: TCheckBox;
          Label5: TLabel;
          Panel3: TPanel;
          pnlAutoSend: TAdvPanel;
          AdvPanel2: TAdvPanel;
          btnSp1: TSpeedButton;
          lblsmsLength: TLabel;
          Label8: TLabel;
          cbbefortime: TComboBox;
          cbbeformin: TComboBox;
          memSMS: TMemo;
          edtbeforsms: TSpinEdit;
          cbSms: TAdvComboBox;
          cbCheck: TAdvComboBox;
          Label7: TLabel;
          EdtNai1: TEdit;
          EdtNai2: TEdit;
          Label9: TLabel;
          cbDoc: TComboBox;
          cbTeam: TComboBox;
          cbChair: TCheckBox;
          cbGubun: TAdvComboBox;
          Label10: TLabel;
          cbExcept: TCheckBox;
          ListBox1: TListBox;
          cbExclusive: TCheckBox;
          cbNaiAll: TCheckBox;
          chkSendMMS: TCheckBox;
          grdSendList: TAdvStringGrid;
          AdvGridExcelIO1: TAdvGridExcelIO;
          Button1: TButton;
          OpenDialog1: TOpenDialog;
          Label11: TLabel;
          Button2: TButton;
          SaveDialog1: TSaveDialog;
          CheckBox1: TCheckBox;
          BtnDSch2: TButton;
          btnAutoset: TButton;
          btnChoice: TButton;
          btnHP: TButton;
          btnDSend: TButton;
          btnDel: TButton;
          btnAutosetSave: TButton;
          btnAutosetClose: TButton;
          tcViewMode: TTabControl;
          CbYeyak: TCheckBox;
          wcDSchKind: TComboBox;
          CMTime: TComboBox;
          CmMinute: TComboBox;
          cbKind: TComboBox;
          tcItem: TTabControl;
          tabSms: TTabControl;
          CbDYeyakFind: TDateTimePicker;
          CbDYeyakFind2: TDateTimePicker;
          GrdChoice: TAdvStringGrid;
          GrdSms: TAdvStringGrid;
          GrdChair: TAdvStringGrid;
    imoPanel: TAdvPanel;
    GrdImo: TAdvStringGrid;
    BtnName: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    spSkinButton4: TButton;
    spSkinButton5: TButton;
    spSkinButton6: TButton;
    spSkinButton7: TButton;
    spSkinButton8: TButton;
    spSkinButton1: TButton;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel4: TLabel;
    EllipsLabel5: TLabel;
    EllipsLabel6: TLabel;
    EllipsLabel7: TLabel;
    EllipsLabel8: TLabel;
          procedure FormShow(Sender: TObject);
          procedure tcItemChange(Sender: TObject);
          procedure lblLoginMouseEnter(Sender: TObject);
          procedure lblLoginMouseLeave(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
          procedure edtSchKeyPress(Sender: TObject; var Key: Char);
          procedure memContentChange(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnListLoadClick(Sender: TObject);
          procedure BtnDSch2Click(Sender: TObject);
          procedure btnChoiceClick(Sender: TObject);
          procedure btnDetailClick(Sender: TObject);
          procedure btnSendClick(Sender: TObject);
          procedure lblLoginClick(Sender: TObject);
          procedure Label2Click(Sender: TObject);
          procedure lblChargeClick(Sender: TObject);
          procedure Label1Click(Sender: TObject);
          procedure btnAutosetClick(Sender: TObject);
          procedure btnHPClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnspClick(Sender: TObject);
          procedure BtnNameClick(Sender: TObject);
          procedure btnCharClick(Sender: TObject);
          procedure lblViewSendMessageClick(Sender: TObject);
          procedure lblViewReservMessageClick(Sender: TObject);
          procedure btnDSendClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure tcViewModeMouseDown(Sender: TObject; Button:
               TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure edtSendNoExit(Sender: TObject);
          procedure btnSp1Click(Sender: TObject);
          procedure btnAutosetSaveClick(Sender: TObject);
          procedure btnAutosetCloseClick(Sender: TObject);
          procedure memSMSChange(Sender: TObject);
          procedure tabSmsChanging(Sender: TObject; var AllowChange:
               Boolean);
          procedure tabSmsChange(Sender: TObject);
          procedure wcDSchKindChange(Sender: TObject);
          procedure cbDocChange(Sender: TObject);
          procedure cbChairClick(Sender: TObject);
          procedure edtSendNoKeyPress(Sender: TObject; var Key: Char);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure cbNaiAllClick(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure grdSendListGetAlignment(Sender: TObject; ARow, ACol: Integer;
            var HAlign: TAlignment; var VAlign: TVAlignment);
          procedure grdSendListEditCellDone(Sender: TObject; ACol,
            ARow: Integer);
          procedure grdSendListDblClickCell(Sender: TObject; ARow,
            ACol: Integer);
          procedure Label11Click(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure GrdChoiceClickCell(Sender: TObject; ARow,
            ACol: Integer);
          procedure GrdSmsClickCell(Sender: TObject; ARow,
            ACol: Integer);
          procedure GrdImoClickCell(Sender: TObject; ARow,
            ACol: Integer);
     private
          { Private declarations }
          x, y, i, j: integer;
          varContentNo, varContentName, varcontentItem: string;
          //컨텐트 번호,  명칭, 내용
          HpName, WonjangName, TelNo, Email, BankCode, BankName: string;
          varMonth, varDay, varTime, varMin: string;
          varSendYear, varSendMonth, varSendDay: string;

          nRet, nRet2, nRem: INTEGER;
          vid, vpass: WideString;
          sCust, sCustName, sReqTel1, sReqtel2, sReqtel3: WideString;
          nUnCost: Integer;

          procedure PreShow;
          procedure TempLabelClick(Sender: TObject);
          procedure TempLabelMouseLeave(Sender: TObject);
          procedure TempLabelMouseEnter(Sender: TObject);
          procedure LabelMouseLeave(Sender: TObject);
          procedure LabelMouseEnter(Sender: TObject);
          procedure ButtonMouseLeave(Sender: TObject);
          procedure ButtonMouseEnter(Sender: TObject);
          procedure memoClick(Sender: TObject);
          procedure MemoChange(Sender: TObject);
          procedure memContentUpdate(Sender: TObject);
          procedure ContentSubjectLabelClick(Sender: TObject);
          procedure memContentDelete(Sender: TObject);

          procedure smsItemTabCreate;
          procedure Loadma_sms_datakind(varCaption: string);
          procedure Displayma_sms_datakind(varContents: string; vartreepath:
               string);

          procedure DrawItem(code: string);
          procedure DrawContent(title, content, ContentNo: string);
          procedure FindDrawItem(schCode: string);
          procedure SaveContent(title, content, path: string);

          procedure FindSet;
          procedure SmsSelectData;
          procedure SmsSelectData2; //검색해서 찾는거
          procedure SmsSelectData_Yeyak; //예약검색해서 찾는거
          procedure SmsSelectData_recall; //리콜검색해서 찾는거
          procedure SmsSelectData_Soa; //소아환자검색
          procedure SmsSelectData_Baby; //
          procedure SmsSelectData_First; //
          procedure SmsSelectData_last; //
          procedure SmsSelectData_BIRTH; //
          procedure SmsSelectData_JINRYO; //
          procedure SmsSelectData_Nai;
          procedure SmsSelectData_gubun;

          procedure SendSelectData;
          procedure ChoicePostData; //선택한 데이터만 발송할 리스트로 보낸다.

          procedure SendMessage_All;
          procedure SendMessage_One(varRecvNoTong: string; varRecvNoGuk:
               string; varRecvNoBun: string; contants: string;  sendKind: integer = 0);
          procedure PostData_alone(varRecvNoTong: string; varRecvNoGuk:
               string; varRecvNoBun: string);
          //혼자보내는 고객에 대한 발송정보를 저장한다.

          procedure ViewRestMoney;

          procedure LoadSenderList;
          procedure LoadSmsList;
          procedure SmsSelectData_minewon;
          procedure saveValue(code, val: string; disp: string = '');
          procedure LoadAutosaveSet;
          procedure AutosetSave;
          procedure SmsSelectData_YEYAK_remark;
          function loadGubunContent(varGubun: string): string;
          procedure loadRecallSayu;
          procedure SmsSelectData_Chart;
          procedure ChoicePostData_MMS;

     public
          { Public declarations }

          procedure SmsSelectData3(varChart: string);
          procedure SMSLOGIN;

     end;

var
     sms_f: Tsms_f;
     smsTag: integer;

implementation

uses uConfig, uDM, uMain, uFunctions, uGogekData,uGogekData_find, waiter, passInput, SmsUrl, SmsResult;


{$R *.dfm}
const

     SQL_SELECT_ma_recall =
          'SELECT *' + #13#10 +
          'FROM ma_recall where rckind=''1'' ' + #13#10 +
          'order by RcDate         ';
     SQL_SELECT_ma_recallFIND =
          'SELECT *' + #13#10 +
          'FROM ma_recall' + #13#10 +
          'Where RcName like :RcName  and  rckind=''1''' + #13#10 +
          'order by RcDate         ';
     SQL_SELECT_ma_recallFIND_CBEx =
          'SELECT *' + #13#10 +
          'FROM ma_recall' + #13#10 +
          'Where RcName like :RcName and RcCheck=:RcCheck  and rckind=''1''' + #13#10
          +
          'order by RcDate         ';

     SQL_DELETE_ma_recall =
          'DELETE' + #13#10 +
          'FROM ma_recall' + #13#10 +
          'Where RCCode=:RcCode   and  rckind=''1''      ';

     SQL_SELECT_DATA_FIND_name =
          'SELECT  * '//chart,name,jumin,c_phone,h_phone,h_zip,h_juso,mail, sms,sms2,sms3, p_phone , p_phone2 '
          + #13#10 +
          'FROM view_gogek' + #13#10 +
          'where  Name Like :Name';// + #13#10 +
         // 'and (SMS<>:SMS or Sms is null) and (c_phone<> '''' or c_phone is not null) ' ;

     SQL_SELECT_DATA_Chart = 'SELECT chart,name,jumin,c_phone,h_phone,h_zip,h_juso,mail'
          + #13#10 +
          'FROM view_gogek' + #13#10 +
          'where Chart=:chart ' + #13#10 +
          'and (SMS<>:SMS or sms is null)' + #13#10 +
          'order by name                                        ';

     SQL_SELECT_DATA_FIND_YEYAK =
          'SELECT y.YchartNo,y.YHwanname,Y.Yday,Y.YTime,i.jumin,i.c_phone,i.h_phone,i.h_zip,i.h_juso,i.mail' + #13#10
          +
          'FROM  Yeyak y left join view_gogek i on y.ychartno=i.chart ' + #13#10
          +
          'where Yday >= :YDay and Yday <= :YDay2 and YCANCEL <> :YCANCEL and YCANCEL <> :YCANCEL2 ' + #13#10
          + 'and (i.Sms <> :Sms or i.Sms is null) ' + #13#10
          +
          'order by Y.Yhwanname                                        ';

     SQL_SELECT_DATA_FIND_RECALL =
         'SELECT R.RCChart, R.RCname, R.RCDATE,R.RCTime,R.RcTEL,R.RcRemark, i.jumin,i.c_phone,i.h_phone,i.h_zip,i.h_juso,i.mail'
          +
          #13#10 +
          'FROM  view_gogek i,  ma_recall R ' + #13#10 +
          'where ((i.Chart=R.RCChart)) and RCDATE >= :RCDATE and RCDATE <= :RCDATE2 and  (rckind=''1'' or rckind=''2'' or rckind=''4'') ' + #13#10
          +
          'and (i.SMS <> :SMS or i.sms is null)' + #13#10 +
          'and rcCheck <> ''1'' ' ;
     SQL_SELECT_DATA_FIND_RECALL_orderBy =
          ' order by RCNAME                                        ';

     SQL_SELECT_DATA_FIND_BIRTH = 'SELECT *  FROM view_gogek' + #13#10 +
          'where substring(jumin,3,4)>= :Jumin and substring(jumin,3,4) <= :Jumin2' + #13#10
          +
          'and (SMS<>:SMS or sms is null)' + #13#10 +
          'order by name';
     SQL_SELECT_DATA_FIND_First = 'SELECT *  FROM view_gogek' + #13#10 +
          'where First_day>= :First_day and First_day <= :First_day2' + #13#10
          +
          'and (SMS<>:SMS or sms is null)' + #13#10 +
          'order by name';
     SQL_SELECT_DATA_FIND_last = 'SELECT *  FROM view_gogek' + #13#10 +
          'where last_day>= :last_day and last_day <= :last_day2' + #13#10 +
          'and (SMS<>:SMS or sms is null)' + #13#10 +
          'order by name';

     SQL_SELECT_DATA_FIND_JINRYO = 'SELECT *  FROM JINRYO_P join view_gogek on jinryo_p.chart=view_gogek.chart'
          + #13#10 +
          'where JIN_day>= :JIN_day and JIN_day <= :JIN_day2' + #13#10 +
          'and (view_gogek.SMS<>:SMS or view_gogek.SMS is null)' + #13#10 +
          'order by name';

     SQL_SELECT_DATA_Find_BABY = 'SELECT *  FROM view_gogek' + #13#10 +
          ' where (year(getdate()))- (cast(((case when (substring(jumin,7,1)=3) or' + #13#10
          +
          '(substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2)) as integer)) <= ''7'' ' + #13#10
          + 'and (SMS<>:SMS or sms is null)';

     SQL_SELECT_DATA_Find_Nai = 'SELECT *  FROM view_gogek' + #13#10 +
          ' where ((year(getdate()))- (cast(((case when (substring(jumin,7,1)=3) or' + #13#10 +
          '(substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2)) as integer)) >= :Nai1) ' + #13#10 +
          ' and ((year(getdate()))- (cast(((case when (substring(jumin,7,1)=3) or ' + #13#10 +
          '(substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2)) as integer)) <= :Nai2) ' + #13#10
          + 'and (SMS<>:SMS or Sms is null) and (c_phone<> '''') and (c_phone is not null) ' ;

     SQL_SELECT_DATA_Find_Nai_WhereLastDay = ' and ( last_Day >=:lastDay1 and last_Day <=:lastDay2)  ';

      SQL_SELECT_DATA_Find_Nai_OrderBy   =         '  order by name  ';

     SQL_INSERT_DATA = 'INSERT INTO ma_sms_sendlist                    ' +
          #13#10 +
          '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
          'VALUES                                              ' + #13#10 +
          '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
          ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
          ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10
          +
          ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';
     SQL_SELECT_DATA2 = 'SELECT chart,name,jumin,c_phone,h_phone,h_zip,h_juso,mail,'
          + #13#10 +
          'p.zipcode, p.sido, p.gugun, p.dong' + #13#10 +
          'FROM SInjek i, post p, SgMaster s ' + #13#10 +
          'where i.Chart<>:chart and p.zipcode=i.h_zip and s.SmChart=i.Chart and s.SmgCode=:SmgCode ' + #13#10
          +
          'order by name                                        ';

     SQL_SELECT_DATA3 = 'SELECT SBCode, SBChart,SBName,SBTel,SBMail,     ' +
          #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL' + #13#10 +
          'FROM ma_sms_sendlist' + #13#10 +
          'where SBSendDate =:SBSendDate' + #13#10 +
          'order by SBCODE                                        ';
     SQL_SELECT_DATA_MAIL = 'SELECT SBCode, SBChart,SBName,SBTel,SBMail,     '
          +
          #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL' + #13#10 +
          'FROM ma_sms_sendlist' + #13#10 +
          'where SBSendDate =:SBSendDate and SBCHOICE=:SBCHOICE' + #13#10 +
          'order by SBCODE                                        ';
     SQL_SELECT_DATA_DM = 'SELECT SBCode, SBChart,SBName,SBTel,SBMail,     ' +
          #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL' + #13#10 +
          'FROM ma_sms_sendlist' + #13#10 +
          'where SBSendDate =:SBSendDate and SBCHOICE=:SBCHOICE' + #13#10 +
          'order by SBCODE                                        ';
     SQL_SELECT_DATA_PHONE = 'SELECT SBCode, SBChart,SBName,SBTel,SBMail,     '
          + #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL' + #13#10 +
          'FROM ma_sms_sendlist' + #13#10 +
          'where SBSendDate =:SBSendDate and SBCHOICE=:SBCHOICE' + #13#10 +
          'order by SBCODE                                        ';

     SQL_DELETE_DATA = 'DELETE FROM ma_sms_sendlist                      ' +
          #13#10 +
          ' WHERE SBCode = :SBCode                      ';
     SQL_DELETE_DATA_ALL = 'DELETE FROM ma_sms_sendlist                      '
          +
          #13#10 +
          'where SBRegDate =:SBRegDate and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS';

     SQL_DELETE_ma_sms_sendresult = 'DELETE FROM ma_sms_sendresult                      '
          +
          #13#10 +
          'where SRCode =:SRCode';

     SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendresult                    ' +
          #13#10 +
          ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
          +
          ' VALUES                                              ' + #13#10 +
          ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';

     SQL_SELECT_DATA_FIND_GUBUN = 'SELECT R.Chart, R.gubun, R.regday, i.name, i.jumin,i.c_phone,i.h_juso '
          +
          #13#10 +
          'FROM  view_gogek i,ma_gogek_group R ' + #13#10 +
          'where ((i.Chart=R.Chart)) and  (gubun=:gubun) ' + #13#10
          +
          'and (i.SMS<>:SMS or sms is null)' + #13#10 +
          'order by name                           ';

procedure TSMS_f.PreShow;
var
     i: integer;
begin

     //병원정보로딩
     ////////////////////////////////////////////////////////////////////////////////
     //todo : 병원기본정보를 가져온다.
     HpName := configvalue.varsaupname;
     WonjangName := configvalue.varDaepyo;



      if  configvalue.SmsSendNo_New  =''  then
      begin
           if configvalue.varSmsNo <> '' then
                TelNo := configvalue.varSmsNo
           else
                TelNo := configvalue.varTel1;

      end
      else
      begin
             TelNo := configvalue.SmsSendNo_New;
      end;


     Email := configvalue.varEmail;
     VPass := configvalue.varSmspass;
     VId := configvalue.varsmsId;
     BankCode := '';
     BankName := '';
     edtsendno.text := TelNo;
     sCustname := HpName;
     sCust := dm_f.smsCustCode; //'OV-JJG-9R';

     varSendyear := Copy(FormatDateTime('YYYYMMDD', Now), 1, 4);
     varSendMonth := Copy(FormatDateTime('YYYYMMDD', Now), 5, 2);
     varSendDay := Copy(FormatDateTime('YYYYMMDD', Now), 7, 2);

     CMTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
     CMMinute.Text := '00';
     lblRest.caption := '0';

     smsLogin;
     with GrdChoice do
     begin

          ColWidths[5] := 0;
          // Columns[1].width := 110;
          // Columns[2].width := 110;
     end;

     with GrdSMS do
     begin


          ColWidths[4]:= 0;
          ColWidths[5]:= 0;
          ColWidths[7]:= 0;
          ColWidths[8]:= 0;
          ColWidths[9]:= 0;
          ColWidths[10]:= 0;
          ColWidths[11]:= 0;
          ColWidths[12]:= 0;
          ColWidths[13]:= 0;
          ColWidths[14]:= 0;
     end;

end;

procedure Tsms_f.FormShow(Sender: TObject);
var
     varLeft, varTop: integer;
     varwidth, varheight: integer;
begin
     varLeft := 225;
     varTop := 90;
     varwidth := screen.width - varLeft;
     varheight := screen.height - vartop - 38 - 28;

     setbounds(varLeft, varTop, varWidth, varHeight); //Left, top, width, height
     caption := '문자메시지 전송';
     pnlsms.caption := '';
     pnlsmsButton.caption := '';
     pnlSubitemName.Caption := '';
     pnlsmsMain.caption := '';
     pnlContentsSave.Caption := '';
     memSmsContentsSave.Text := '';
     pnlsaveButton.Caption := '';
     PnlChoice.Caption := '';
     pnlChoiceMenu.caption := '';
     pnlSMSMenu.caption := '';
     PnlSch.Caption := '';
     PnlSch.Color := clWhite;
     memContent.text := '';
     edtSendNo.text := '';
     edtSch.text := '';
     edtdpSch.text := '';
     PnlFindResult.Caption := '';
     grdChoice.Align := alClient;
     grdSMS.Align := alClient;

     wcDSchKind.itemindex := wcDSchKind.items.IndexOf('예약');

     EdtNai1.Enabled := false;
     EdtNai2.Enabled := false;

     CbDYeyakFind.Enabled := true;
     CbDYeyakFind2.Enabled := true;

     yeyakDayEdit.Date := now;
     CbDYeyakFind.Date := now + 1;
     CbDYeyakFind2.Date := now + 1;
     pnlsmsMain.Align := alClient;
     smsItemTabCreate;
     if tcItem.Tabs.Count > 0 then
     begin
          Loadma_sms_datakind(tcItem.Tabs[tcItem.Tabs.IndexOf('예약')]);
          lblContentsKind.Caption := tcItem.Tabs[tcItem.TabIndex];
          DrawItem(sbsmsItem.Controls[0].Hint);
     end;

     with dm_f.SqlWork do
     begin
          cbTeam.items.Clear;
          cbDoc.items.Clear;

          cbTeam.items.Add('0');
          cbDoc.items.Add('전체');

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
                    cbTeam.items.Add(FieldByName('team_name').AsString);
                    cbDoc.items.Add(FieldByName('team_Doctor1').AsString);
                    next;
               end;
               // cbteam.ItemIndex := 0;
          end;

          cbDoc.ItemIndex := 0;
          cbteam.ItemIndex := 0;

     end;

     with DM_f.sqlTemp  do
     begin

          Close;
          Sql.Clear;
          Sql.Add('SELECT * ');
          Sql.Add('FROM ma_promise_chair ');
          Sql.Add('order by  convert(int,chairno,120)  ');
          Open;

          if not IsEmpty then
          begin
               while not EOF do
               begin
                   grdChair.AddRow;
                   grdChair.Cells[1, grdChair.RowCount - 1]  :=   FieldByName('ChairRemark').AsString;
                   grdChair.Cells[2, grdChair.RowCount - 1]  :=    FieldByName('ChairNo').AsString;
                   next;
               end;
          end;
     end;

     cbChair.Checked := false;

     with dm_f.SqlWork do
     begin
          cbGubun.items.Clear;

          Close;
          Sql.Clear;
          Sql.Add('select disp from ma_basic');
          Sql.Add(' where Code like :Code and Code<> :code2');
          ParamByName('Code').AsString := '007' + '%';
          ParamByName('Code2').AsString := '007000';

          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbGubun.items.Add(FieldByName('disp').AsString);
                    next;
               end;

          end;

          cbGubun.ItemIndex := 0;

     end;


     loadRecallSayu;


     PreShow;
end;

procedure Tsms_f.loadRecallSayu;
var
      varCode : string;
begin
          varCode := '082'; //리콜사유

          with dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select * from ma_basic');
               Sql.Add(' where Code like :Code and Code <> :code2 and inuse <>''0''     ');
               Sql.Add('order by Code');
               ParamByName('Code').AsString := varCode + '%';
               ParamByName('Code2').AsString := varCode + '000';
               Open;
               First;
               if not isEmpty then
               begin

                    cbKind.items.clear;
                    cbKind.items.Add('');
                    while not eof do
                    begin
                         cbKind.items.Add(fieldByName('disp').asString);
                         next;
                    end;
               end;
          end;
end;


procedure Tsms_f.tcItemChange(Sender: TObject);
begin
     if tcItem.Tabs.Count > 0 then
     begin

          lblContentsKind.Caption := tcItem.Tabs[tcItem.TabIndex];
          Loadma_sms_datakind(tcItem.Tabs[tcItem.TabIndex]);
          DrawItem(sbsmsItem.Controls[0].Hint);
     end;
end;

procedure TSms_f.Loadma_sms_datakind(varCaption: string);
begin
     x := 10; //checkBox의 초기 Left값
     y := 10; //checkBox의 초기 Top값
     i := 0;
     //sbGroup의 내용을 모두 지운다.
     if sbSmsItem.ControlCount > 0 then
     begin
          while sbSmsItem.ControlCount > 0 do
          begin
               sbSmsItem.Controls[0].Destroy;
          end;
     end;
     application.ProcessMessages;
     try
          with dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select * from ma_sms_datakind');
               Sql.Add(' where groupKind2 =:Code ');
               Sql.Add('and Substring(treepath,1,1)=:Kind');
               Sql.Add('and not(treepath like :Kind2)');
               Sql.Add('order by groupKind2');
               ParamByName('Code').AsString := varCaption;
               ParamByName('kind').AsString := '1';
               ParamByName('kind2').AsString := '%' + '000';
               Open;
               First;
               varContentNo := fieldByName('treepath').asString;
               if not IsEmpty then
               begin
                    lblSubItemName.Caption := '★' +
                         fieldByName('groupKind3').asString;

                    while not eof do
                    begin
                         Displayma_sms_datakind(fieldByName('groupKind3').asString, fieldByName('treepath').asString);
                         if x < sbSmsItem.Width - 180 then
                         begin
                              x := x + 110; //checkBox의 Left증가값
                         end
                         else
                         begin //줄바꿔서
                              x := 10; //checkBox의 초기 Left값
                              y := y + 35; //checkBox의 Top 증가 값

                         end;
                         i := i + 1; //이름 명 변경
                         Next;
                    end;
               end;

          end;
     except
          on E: Exception do
          begin

               ShowMessage('[데이터 불러오기 지연]' + E.Message);
          end;

     end;

end;

procedure TSms_f.Displayma_sms_datakind(varContents: string; vartreepath:
     string);

var
     tempLabel: TLabel;

     k: integer;
     varDispNumber: string;
begin
     //#$2460
//     j := 2022;
     k := Hextointeger(inttostr(j));
     varDispNumber := widechar(k); //#$65;

     tempLabel := TLabel.Create(Sms_f);

     with tempLabel do
     begin
          Parent := sbSmsItem;
          autosize := false;
          wordwrap := true;
          cursor := crHandPoint;
          Left := x;
          Top := y;
          Font.Name := '돋움체';
          hint := varTreePath;
          Font.Size := 9;
          Width := 95;
          Height := 35;
          Color := clWhite;
          Font.Color := clGray;
          Name := 'lbl' + 'smsKind_' + inttostr(i);
          caption := '*' + varContents;
          transparent := true;
          onClick := TempLabelClick;
          onMouseLeave := TempLabelMouseLeave;
          onMouseEnter := TempLabelMouseEnter;
     end;

end;

procedure Tsms_f.smsItemTabCreate;
var
     I: Integer;
begin
     tcItem.Tabs.Clear;
     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_datakind');
          Sql.Add(' where Substring(treepath,1,1)=:Kind');
          Sql.Add(' order by treepath');
          ParamByName('kind').AsString := '1';
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    if Copy(FieldByName('treepath').AsString, 4, 3) =
                         '000' then
                    begin

                         tcItem.Tabs.Add(FieldByName('GroupKind2').AsString);
                         //   tcItem.Tabs.DelimitedText:= FieldByName('treepath').AsString;
                    end;
                    Next;
               end;
          end;
     end;
end;

procedure TSms_f.TempLabelClick(Sender: TObject);
begin
     lblSubItemName.Caption := '★' + (Sender as TLabel).caption;

     DrawItem((Sender as TLabel).Hint);
end;

procedure TSms_f.TempLabelMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := clGray;
     (Sender as TLabel).Font.Style := [];

end;

procedure TSms_f.TempLabelMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := clGray;
     (Sender as TLabel).Font.Style := [fsBold, fsUnderline] - [fsBold,
          fsUnderline];

end;

procedure TSMS_f.FindDrawItem(schCode: string);
begin
     x := 20;
     y := 15;
     i := 1;
     j := 1;

     SbItem.Visible := false;
     if SbItem.ControlCount > 0 then
     begin
          while SbItem.ControlCount > 0 do
          begin
               SbItem.Controls[0].Destroy;
          end;
     end;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where Content like :Code');
          Sql.Add('order by SML_CLASS');
          ParamByName('Code').AsString := '%' + SchCode + '%';
          Open;
          First;

          if not IsEmpty then
          begin
               while not eof do
               begin
                    DrawContent(FieldByName('title').AsString,
                         Trim(FieldByName('content').AsString),
                         FieldByName('Class').AsString +
                         FieldByName('SML_Class').AsString);
                    i := i + 1;
                    if x < SbItem.Width - 300 then
                    begin
                         x := x + 200;
                    end
                    else
                    begin
                         x := 20;
                         y := y + 180;
                    end;

                    Next;

               end;
          end;
     end;
     SbItem.Visible := true;

end;

procedure TSMS_f.DrawItem(code: string);
begin
     x := 20;
     y := 15;
     i := 1;
     j := 1;
     varContentNo := Copy(Code, 1, 6);

     SbItem.Visible := false;
     if SbItem.ControlCount > 0 then
     begin
          while SbItem.ControlCount > 0 do
          begin
               SbItem.Controls[0].Destroy;
          end;
     end;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:Code');
          Sql.Add('order by SML_CLASS');
          ParamByName('Code').AsString := Copy(Code, 1, 6);
          Open;
          First;

          if not IsEmpty then
          begin
               while not eof do
               begin
                    DrawContent(FieldByName('title').AsString,
                         Trim(FieldByName('content').AsString),
                         FieldByName('Class').AsString +
                         FieldByName('SML_Class').AsString);
                    i := i + 1;
                    if x < SbItem.Width - 300 then
                    begin
                         x := x + 200;
                    end
                    else
                    begin
                         x := 20;
                         y := y + 180;
                    end;

                    Next;

               end;
          end;
     end;
     SbItem.Visible := true;

end;

procedure TSMS_f.DrawContent(title, content, ContentNo: string);
var
     tempImg: TImage;
     tempMemo: TMemo;
     tempLabel: TLabel;
     tempByte: TLabel;
     tempContentNo: TLabel;
     tempButton: TLabel;
     tempButton2: TLabel;

begin
     tempButton := TLabel.Create(sms_f);
     tempButton2 := TLabel.Create(sms_f);
     tempImg := TImage.Create(sms_f);
     tempMemo := TMemo.Create(sms_f);
     tempLabel := TLabel.Create(sms_f);
     tempByte := TLabel.Create(sms_f); //문자크기
     tempContentNo := TLabel.Create(sms_f); //문자번호

     with tempImg do
     begin
          Parent := SbItem;
          Left := x;
          Top := y + 5;
          Width := 163;
          Height := 157;
          Name := 'H' + 'Img_' + Contentno + '_' + intToStr(i);
          Picture.LoadFromFile(extractFilePath(paramStr(0)) +
               'tempimage\cms_Frame.jpg');
     end;

     with tempMemo do
     begin
          Parent := SbItem;
          Left := x + 20;
          Top := y + 35;
          Font.Name := '돋움체';
          Font.Size := 9;
          Font.Color := clGray;
          ScrollBars := ssVertical;
          Width := 123;
          Height := 90;
          Color := $00FFF2EA;
          MaxLength := 0;
          Name := 'H' + 'Memo_' + Contentno + '_' + intToStr(i);
          BorderStyle := bsNone;
          OnClick := MemoClick;
          OnChange := MemoChange;
          Text := content;
     end;

     with tempContentNo do
     begin
          Parent := SbItem;
          AutoSize := False;
          Left := x;
          Top := y;
          Width := tempMemo.Width;
          Alignment := taLeftJustify;
          Transparent := True;
          Caption := contentno;
          Visible := False;
     end;
     with tempByte do
     begin
          Parent := SbItem;
          Left := x + 20;
          Top := y + 17;
          Width := 50;
          AutoSize := False;
          Transparent := True;
          Alignment := taRightJustify;
          Font.Color := $00FFD8BF;
          Font.Size := 9;
          Font.Name := '돋움체';
          Caption := IntToStr(Length(Content)) + 'byte';
          Name := 'BYTE' + 'Label_' + Contentno + '_' + intToStr(i);
     end;
     with tempButton do
     begin

          Parent := SbItem;
          Left := x + 20 + 50;
          Top := y + 17;
          AutoSize := False;
          Width := 30;
          Alignment := taCenter;
          Font.Color := $00FFD8BF;
          Font.Size := 9;
          Font.Name := '돋움체';
          Font.Style := [];
          curSor := crHandpoint;
          Transparent := True;
          Caption := '수정';
          Hint := '이 컨텐츠의 내용을 수정합니다.';
          showhint := True;
          OnMouseEnter := ButtonMouseEnter;
          OnMouseLeave := ButtonMouseLeave;
          onClick := memContentUpdate;
          Name := 'E' + 'Label_' + Contentno + '_' + intToStr(i);

     end;

     with tempButton2 do
     begin

          Parent := SbItem;
          Left := x + 40 + 55;
          Top := y + 17;
          AutoSize := False;
          Width := 30;
          Alignment := taCenter;
          Font.Color := $00FFD8BF;
          Font.Size := 9;
          Font.Name := '돋움체';
          Font.Style := [];
          curSor := crHandpoint;
          Transparent := True;
          Caption := '삭제';
          Hint := '이 컨텐츠의 내용을 삭제합니다.';
          showhint := True;
          OnMouseEnter := ButtonMouseEnter;
          OnMouseLeave := ButtonMouseLeave;
          onClick := memContentDelete;
          Name := 'D' + 'Label_' + Contentno + intToStr(i);

     end;

     with tempLabel do
     begin
          Parent := SbItem;
          Left := x + 20;
          Top := y + 135;
          AutoSize := False;
          Width := tempMemo.Width;
          Alignment := taCenter;
          Font.Color := clGray;
          Font.Size := 9;
          Font.Name := '돋움체';
          Font.Style := [fsBold];
          curSor := crHandpoint;
          Transparent := True;
          Caption := title;
          Hint := caption;
          showhint := True;
          OnMouseEnter := LabelMouseEnter;
          OnMouseLeave := LabelMouseLeave;
          OnClick := ContentSubjectLabelClick;
          Name := 'H' + 'Label_' + Contentno + intToStr(i);
     end;

end;

procedure Tsms_f.MemoChange(Sender: TObject);
var
     varName: string;
begin
     varName := subStr(((Sender as TMemo).Name), 2, '_') + '_' +
          subStr(((Sender as TMemo).Name), 3, '_');
     //      'H' + 'Memo_' + Contentno + '_' + intToStr(i);
     varContentItem := (Sender as TMemo).Text;

     (FindComponent('BYTE' + 'Label_' + varName) as TLabel).Caption :=
          IntToStr(Length((Sender as TMemo).text)) + 'byte';

end;

procedure Tsms_f.ButtonMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $008DF4CE;
     (Sender as TLabel).Font.Style := [fsUnderline];

end;

procedure Tsms_f.ButtonMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $00FFD8BF;
     (Sender as TLabel).Font.Style := [];

end;

procedure TSMS_f.memoClick(Sender: TObject);
var
     ReMemContent,
          ReMemoHospital,
          ReMemoHospital2,
          ReMemoTel,
          ReMemoBankCode: string;

begin
     varContentNo := SubStr((sender as TMemo).Name, 2, '_');

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
          Sql.Add('order by SML_CLASS');
          ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
          ParamByName('SML_Class').AsString := Copy(varContentNo, 7, 3);
          Open;
     end;
     varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
          Sql.Add('order by SML_CLASS');
          ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
          ParamByName('SML_Class').AsString := Copy(varContentNo, 7, 3);
          Open;
     end;
     varContentName := dm_f.SqlWork.FieldByName('Title').AsString;
     ReMemContent := dm_f.SqlWork.FieldByName('Content').AsString;

     ReMemoHospital2 := StringReplace(ReMemContent, '+aaaa+', HPName,
          [rfReplaceAll, rfIgnoreCase]);
     ReMemoHospital := StringReplace(ReMemoHospital2, '+aaa+', HPName,
          [rfReplaceAll, rfIgnoreCase]);
     ReMemoTel := StringReplace(ReMemoHospital, '+ccc+', TelNo, [rfReplaceAll,
          rfIgnoreCase]);
     ReMemoBankCode := StringReplace(ReMemoTel, '+xxxx+', BankName + ':' +
          BankCode, [rfReplaceAll, rfIgnoreCase]);
     MemContent.Text := ReMemoBankCode;
     Memsms.Text := ReMemoBankCode;
end;

procedure TSMS_f.ContentSubjectLabelClick(Sender: TObject);
var
     ReMemContent,
          ReMemoHospital,
          ReMemoHospital2,
          ReMemoTel,
          ReMemoBankCode: string;

begin
     varContentNo := SubStr((sender as TLabel).Name, 2, '_');

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
          Sql.Add('order by SML_CLASS');
          ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
          ParamByName('SML_Class').AsString := Copy(varContentNo, 7, 3);
          Open;
     end;
     varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
          Sql.Add('order by SML_CLASS');
          ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
          ParamByName('SML_Class').AsString := Copy(varContentNo, 7, 3);
          Open;
     end;
     varContentName := dm_f.SqlWork.FieldByName('Title').AsString;
     ReMemContent := dm_f.SqlWork.FieldByName('Content').AsString;

     ReMemoHospital2 := StringReplace(ReMemContent, '+aaaa+', HPName,
          [rfReplaceAll, rfIgnoreCase]);
     ReMemoHospital := StringReplace(ReMemoHospital2, '+aaa+', HPName,
          [rfReplaceAll, rfIgnoreCase]);
     ReMemoTel := StringReplace(ReMemoHospital, '+ccc+', TelNo, [rfReplaceAll,
          rfIgnoreCase]);
     ReMemoBankCode := StringReplace(ReMemoTel, '+xxxx+', BankName + ':' +
          BankCode, [rfReplaceAll, rfIgnoreCase]);
     MemContent.Text := ReMemoBankCode;
end;

procedure Tsms_f.LabelMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $008DF4CE;
     (Sender as TLabel).Font.Style := [fsBold, fsUnderline];

end;

procedure Tsms_f.LabelMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $00232323;
     (Sender as TLabel).Font.Style := [fsBold];

end;

procedure Tsms_f.lblLoginMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $008DF4CE;
     (Sender as TLabel).Font.Style := [fsBold, fsUnderline];

end;

procedure Tsms_f.lblLoginMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $00232323;
     (Sender as TLabel).Font.Style := [fsBold];

end;

procedure Tsms_f.btnAddClick(Sender: TObject);
var
     sPath: string;
begin
     edtContName.text := ''; // varContentName;
     edtContNo.text := varContentno;
     memSmsContentsSave.Text := '';
     edtContName.Enabled := true;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          sQL.aDD('where Class=:Class');
          sQL.aDD('order by  Class, Sml_Class');

          if Copy(edtcontno.text, 1, 6) = '' then
               ParamByName('Class').AsString := '116001'
          else
               ParamByName('Class').AsString := Copy(edtcontno.text, 1,
                    6);
          Open;
          Last;
          if not isEmpty then
               sPath := FormatFloat('000',
                    StrToInt(FieldByName('Sml_Class').AsString) + 1)
          else
               sPath := '116001001';
     end;
     edtcontno.text := Copy(edtcontno.text, 1, 6) + sPath;
     //     edtcontname.SetFocus;

     pnlContentsSave.Caption := 'SMS 컨텐츠 추가';
     pnlContentsSave.DragKind := dkDock;
     //pnlinfo.ManualFloat(Rect(700, 200, 1000, 700));
     pnlContentsSave.ManualFloat(Rect(350, 140, 515, 360));
     pnlContentsSave.BringToFront;

end;

procedure Tsms_f.btnClsClick(Sender: TObject);
begin
     pnlContentsSave.Visible := false;

end;

procedure Tsms_f.btnSchClick(Sender: TObject);
begin
     if edtSch.text = '' then
          exit;
     lblContentsKind.Caption := '검색내용';
     lblSubItemName.Caption := '★' + edtSch.text;
     findDrawItem(edtSch.text);
end;

procedure Tsms_f.edtSchKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          if edtSch.text = '' then
               exit;
          lblContentsKind.Caption := '검색내용';
          lblSubItemName.Caption := '★' + edtSch.text;
          findDrawItem(edtSch.text);
          key := #0;
     end;
end;

procedure Tsms_f.memContentChange(Sender: TObject);
begin

     LblMemcontentSize.Caption := IntToStr(Length(MemContent.Text));
     if LblMemcontentSize.Caption = '' then
     begin
          varContentNo := '';
          varContentName := '';
     end;

end;

procedure Tsms_f.memContentUpdate(Sender: TObject);
begin
     varContentNo := SubStr((sender as TLabel).Name, 2, '_');

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
          Sql.Add('order by SML_CLASS');
          ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
          ParamByName('SML_Class').AsString := Copy(varContentNo, 7, 3);
          Open;
     end;
     varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

     if Application.MessageBox(PChar(varContentName +
          '의 수정된 내용을 저장하시겠습니까?'), '수정 저장', MB_YESNO) =
          IDYES then
     begin
          SaveContent(varContentName, varcontentItem, varContentNo);
     end;

end;

procedure Tsms_f.memContentDelete(Sender: TObject);
begin
     varContentNo := SubStr((sender as TLabel).Name, 2, '_');

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;

          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:CLASS and SML_CLASS=:SML_CLASS');
          Sql.Add('order by SML_CLASS');
          ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
          ParamByName('SML_Class').AsString := Copy(varContentNo, 7, 3);
          Open;
     end;
     varContentName := dm_f.SqlWork.FieldByName('Title').AsString;

     if Application.MessageBox(PChar(varContentName +
          '의 내용을 삭제하시겠습니까?'), '삭제', MB_YESNO) = IDYES then
     begin
          with Dm_f.SqlTemp do
          begin
               Close;
               Sql.Clear;
               Sql.Add('delete from ma_sms_contents');
               Sql.Add('Where CLass=:Class and SML_CLASS=:SML_CLASS');
               ParamByName('Class').AsString := Copy(varContentNo, 1, 6);
               ParamByName('SML_CLASS').AsString := Copy(varContentNo, 7,
                    3);
               execSql;
          end;

          DrawItem(varContentNo);
          memContent.text := '';
     end;
end;

procedure TSMS_f.SaveContent(title, content, path: string);
var
     sTreePath: string;
begin

//     with dm_f.SqlWork do
//     begin
//          Close;
//          Sql.Clear;
//          Sql.Add('select * from ma_sms_datakind');
//          sQL.aDD('where TreePath=:TreePath');
//          ParamByName('Treepath').AsString := copy(path,1,6);//'116001'; //사용자정의
//          Open;
//          Last;
//          if IsEmpty then
//          begin
//               Close;
//               Sql.Clear;
//               Sql.Add('insert into ma_sms_datakind');
//               Sql.Add('(GroupKind1,GroupKind2,GroupKind3,Treepath) values');
//               Sql.Add('(:GroupKind1,:GroupKind2,:GroupKind3,:Treepath)');
//               ParamByName('GroupKind1').AsString := '문자';
//               ParamByName('GroupKind2').AsString := '사용자정의';
//               ParamByName('GroupKind3').AsString := '사용자정의1';
//               ParamByName('TreePath').AsString := '116001';
//               ExecSql;
//          end;
//     end;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          sQL.aDD('where Class=:Class and Sml_Class=:Sml_Class');
          ParamByName('Class').AsString := Copy(path, 1, 6);
          ParamByName('Sml_Class').AsString := Copy(path, 7, 3);
          Open;
          Last;
          if not IsEmpty then
          begin
               Close;
               Sql.Clear;
               Sql.Add('Update ma_sms_contents Set');
               Sql.Add('content=:Content, title=:title');
               Sql.Add('Where Class=:Class and sml_Class=:Sml_Class');
               ParamByName('Class').AsString := Copy(path, 1, 6);
               ParamByName('Sml_Class').AsString := Copy(path, 7, 3);
               ParamByName('title').AsString := title;
               ParamByName('content').AsString := Content;
               ExecSql;
          end
          else
          begin

               Close;
               Sql.Clear;
               Sql.Add('select * from ma_sms_contents');
               sQL.aDD('where Class=:Class order by sml_class');

               if path = '' then
                    ParamByName('Class').AsString := '116001'
               else
                    ParamByName('Class').AsString := Copy(path, 1, 6);

               Open;
               Last;
               if not isEmpty then
                    sTreePath := FormatFloat('000',
                         StrToInt(FieldByName('Sml_Class').AsString) +
                         1)
               else
                    sTreePath := '001';

               if EdtContname.Text = '' then
               begin
                    showmessage('제목을 입력하세요.');
                    EdtContName.SetFocus;
                    exit;
               end;

               Close;
               Sql.Clear;
               Sql.Add('insert into ma_sms_contents');
               Sql.Add('(Class,Sml_Class,title,content) values');
               Sql.Add('(:Class,:Sml_Class,:title,:content)');
               ParamByName('Class').AsString := Copy(path, 1, 6);
               ParamByName('Sml_Class').AsString := sTreepath;
               ParamByName('title').AsString := title;
               ParamByName('content').AsString := Content;
               ExecSql;
          end;
     end;

     ShowMessage('저장되었습니다');
     //     MemContent.Text := '';
     //     EdtContNo.text := '';
end;

procedure Tsms_f.btnSaveClick(Sender: TObject);
begin
     if EdtContName.Text = '' then
     begin
          showmessage('제목을 입력하세요.');
          EdtContName.SetFocus;
          Exit;
     end;

     if memSmsContentsSave.Text = '' then
     begin
          showmessage('내용을 입력하세요.');
          memSmsContentsSave.SetFocus;
          Exit;
     end;

     if EdtContNo.text = '' then
     begin
          showmessage('번호를 입력하세요.');
          EdtContNo.SetFocus;
          Exit;
     end;

     SaveContent(EdtContName.Text,
          StringReplace(memSmsContentsSave.Text,  HPName,  '+aaa+',   [rfReplaceAll, rfIgnoreCase]),
          EdtContNo.text);

     edtContName.Enabled := False;

end;

procedure Tsms_f.btnListLoadClick(Sender: TObject);
begin
     //     LoadSenderList;
end;

procedure Tsms_f.LoadSenderList;
begin
     with pnlfindResult do
     begin

          Caption := 'SMS를 전송 할 환자 검색';
          DragKind := dkDock;
          ManualFloat(Rect(350, 430, 1000, 720));
          BringToFront;
     end;
end;

procedure Tsms_f.BtnDSch2Click(Sender: TObject);
begin
     {
     전체
     성명
     리콜
     예약
     소아
     생일
     진료
     최초내원
     }
         // loadSenderList;

     BtnDSch2.Enabled := false;

     grdChoice.removeRows(1,  grdChoice.rowcount-1);

     FindSet;
     case wcDSchKind.itemindex of
          -1:
               begin
                    if EdtDPSch.Text <> '' then
                    begin

                         SmsSelectData2;
                    end;
               end;
          0: //전체
               SmsSelectData;
          1: //성명
               begin
                    if EdtDPSch.Text <> '' then
                    begin
                         SmsSelectData2; //보호자에게 보내기체크 2012.2.7
                    end;
               end;

          2: //리콜
               SmsSelectData_RECALL;
          3: //에약
               SmsSelectData_Yeyak; //보호자에게 보내기체크 2012.2.7
          4: //소아
               SmsSelectData_BABY; //보호자에게 보내기체크 2012.2.7
          5: //생일
               SmsSelectData_Birth;
          6: //진료
               SmsSelectData_Jinryo;
          7: //최초내원
               SmsSelectData_first;
          8: //최종내원
               SmsSelectData_Last;
          9: //예약미내원
               smsSelectData_Minewon;
          10: //나이
               SmsSelectData_Nai;
          11: //환자구분
               SmsSelectData_gubun;
          12: //예약내역
               SmsSelectData_YEYAK_remark;
          13: //차트번호
               SmsSelectData_Chart;
     end;
     BtnDSch2.Enabled := true;

end;

procedure TSMS_f.FindSet;
begin
     tcViewMode.TabIndex := 1;
     // pnlsmsMain.Visible := False;
     // pnlSend.Visible := True;
     SendSelectData;
end;

procedure TSMS_f.SmsSelectData;
const
     SQL_SELECT_DATA =
      'SELECT chart,name,jumin,c_phone,h_phone,h_zip,h_juso,mail, sms'   + #13#10 +
      'FROM view_gogek                                               ' + #13#10 +
      'where Chart <> :chart                                         ' + #13#10 +
      'and (c_phone<> '''' or c_phone is not null)                   ' ;
      //    'and (SMS <> :SMS or sms is null)   ' + #13#10 +
        

var
     varSJumin, varSname, varTeam, varPhone, varJuso, varNai, varBirth, varChart, varName: string;

     varCount: integer;
     varQuery: string;
begin
     varQuery := LoadGroupDataQuery;



     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where Chart<>:chart');
          ParamByName('Chart').AsString := '';
          Open;
     end;

     with DM_f.sqlTemp do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA;
          ParamByName('Chart').AsString := '';
        //  ParamByName('SMS').AsString := '0';




               if varviewAll <> true then
               begin

                   if varQuery <> '' then
                   begin

                         sql.Add(' and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ')

                   end;

               end;

               sql.text:=  sql.text + ' order by name      ';



          Open;

          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          if not IsEmpty then
          begin
               while not EOF do
               begin

                    varChart := trim(FieldByName('Chart').AsString);
                    varName := substr( FieldByName('Name').AsString,1 ,';');


                    if FieldByName('sms').asString <> '0' then
                    begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);
                    grdChoice.Cells[2, grdChoice.RowCount - 1]  := varChart;
                    grdChoice.Cells[3, grdChoice.RowCount - 1]  := varname;
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=  naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=  Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] := FieldByName('C_phone').AsString;



                   end;

                         //여기서 보호자 전화번호를 읽어와서 행을 추가해주자...


                         DM_f.sqlTemp2.Close;
                         DM_f.sqlTemp2.SQL.Clear;

                         DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                         DM_f.sqlTemp2.Sql.Add('where (chart=:chart and chart <> '''')  and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                         DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //여기서는 0인것이 SMS전송하기로 한거임 불러올거임....
                         DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                         DM_f.sqlTemp2.Open;
                         DM_f.sqlTemp2.first;

                         if not DM_f.sqlTemp2.IsEmpty then
                         begin
                              while not DM_f.sqlTemp2.eof do
                              begin
                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);
                             //   varJuso := '부모';
                                varNai := '0';
                                varBirth := '부모님';
                            //    varChart := trim(FieldByName('Chart').AsString);


                                       grdChoice.AddRow; // 그리드에 빈 로우를 추가
                                       grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                                       grdChoice.Cells[2, grdChoice.RowCount - 1] :=  varChart;
                                       grdChoice.Cells[3, grdChoice.RowCount - 1] :=  varName;

                                       grdChoice.Cells[4, grdChoice.RowCount - 1] := varNai;
                                       grdChoice.Cells[5, grdChoice.RowCount - 1] := varJuso;
                                       grdChoice.Cells[6, grdChoice.RowCount - 1] := varPhone;
                                       grdChoice.Cells[9, grdChoice.RowCount - 1] := varBirth;




                                DM_f.sqlTemp2.next;

                         //       goto AddNewLine;




                              end;


                         end;




                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;

          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_YEYAK; //2012.2.7
label
   addNewLine;
var
     varSJumin, varSname, varTeam, varPhone, varJuso, varNai, varBirth, varChart, varName, varNoSMS: string;

     varGubunNo: array of string;
     i, j, varCount: integer;
     varQuery: string;
begin
     SetLength(varGubunNo, 100);



      {    if varviewAll = true then
          begin
                varQuery := LoadGroupDataQuery;
          end;
       }

     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM ma_promise ');
          Sql.Add('where pDAY >= :YDAY and pDAY <= :YDAY2');
          sql.add(' and name <> ''''  ');
          sql.add(' and CANCEL <> ''Y''  ');
          sql.add(' and CANCEL <> ''C''  ');
          sql.add(' and CANCEL <> ''R'' ');
          sql.add(' and CANCEL <> ''U'' ');
       //   sql.add(' and (noSMS  is Null or noSMS <> ''1'') ');     // 일단 모든 환자를 다 불러온 후에...
          sql.add(' and POS <> ''8'' ');
          ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('YDAY2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;


          varCount:=fieldbyname('countGogek').asInteger;;
     end;

     with DM_f.sqlTemp do
     begin

          // 2012.3.22 전화신환을 예약하는경우엔 인적테이블레 저장되기전이므로
          // ... 일단은 view_gogek 와 조인없이   ma_promise 단독으로 찾자!!
          Close;
          Sql.Clear;
          sql.text:=
              'SELECT chart, name, pday, pTime, team, tel, remark ,gubun , noSMS    ' +#10#13+
              'FROM ma_promise                                                '+#10#13+
              'where pday >= :YDay and pday <= :YDay2                         '+#10#13+
              ' and CANCEL <> ''Y''                                           '+#10#13+
              ' and CANCEL <> ''C''                                           '+#10#13+
              ' and CANCEL <> ''R''                                           '+#10#13+
              ' and CANCEL <> ''U''                                           '+#10#13+
           //   ' and (noSMS  is Null or noSMS <> ''1'')                        '+#10#13+  //일단 모든 환자를 다 불러온후에 전송금지를 추출해 내자.
              ' and POS <> ''8''                                              ';


          if cbExcept.checked then
          begin
               sql.text:= sql.text+ ' and remark  not like  ''%정기검진%'' ' ;
          end;

          for j := 0 to 99 do
          begin
               varGubunNo[j] := '';
          end;


          if cbChair.Checked then
          begin

               for i := 1 to GrdChair.RowCount - 1 do
               begin
                      //ToDo : Boolean
                    if (GrdChair.Cells[1, i] = '1')  //True
                         and (GrdChair.Cells[3, i] <> '') then
                    begin

                          varGubunNo[i] := trim(GrdChair.Cells[3, i]);
                          if varQuery <> '' then
                          begin
                             if  trim(varGubunNo[i]) <> ''  then
                                   varQuery := varQuery + '  or  gubun = ' +''''+ trim(varGubunNo[i])+'''' ;
                          end
                          else
                          begin

                             if  trim(varGubunNo[i]) <> ''  then
                                   varQuery :='  gubun = ' +''''+ trim(varGubunNo[i]) +'''';


                          end;
                    end;

               end;

          end;
          if trim(varQuery) <> ''  then
            sql.text := sql.text + ' and ' +'('+ varQuery+')';

          Sql.text:= sql.text +'order by name, chart , ptime';


          ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('YDAY2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);


          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue := varCount ;
          Waiter_f.Edit1.Text := inttostr(varCount) ;

          Application.ProcessMessages;

           if not IsEmpty then
          begin
               while not EOF do
               begin

                    if   trim(FieldByName('Chart').AsString) ='' then

                       varPhone := fieldByName('tel').AsString
                    else
                       varPhone := '';




                    varJuso := '';
                    varNai := '0';
                    varBirth := '';
                    varChart := trim(FieldByName('Chart').AsString);
                    varName := substr( FieldByName('Name').AsString,1 ,';');

                    if varChart <> '' then
                    begin
                        //생일, 주소, 나이, 전화번호 를 가져온다...
                         //2008.5.28
                         DM_f.sqlTemp2.Close;
                         DM_f.sqlTemp2.SQL.Clear;

                         DM_f.sqlTemp2.Sql.Add('SELECT jumin,c_phone,h_phone,h_zip,h_juso, mail, sms2, p_phone, p_phone2, sms ');
                         DM_f.sqlTemp2.Sql.Add('FROM view_gogek ');
                         DM_f.sqlTemp2.Sql.Add('where chart=:chart ') ;
                       //  DM_f.sqlTemp2.Sql.Add('and (Sms <> ''0'' or Sms is null)');
                       //  DM_f.sqlTemp2.ParamByName('SMS').AsString := '0';  //sms 거부
                         DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                         DM_f.sqlTemp2.Open;

                         if not DM_f.sqlTemp2.IsEmpty then
                         begin

                              varJuso := Trim(Dm_f.sqlTemp2.FieldByName('h_juso').AsString);

                              varNoSMS := Dm_f.sqlTemp2.FieldByName('sms').AsString;   //0이면 SMS전송금지

                              if (DM_f.sqlTemp2.FieldByName('Jumin').AsString <>
                                   '')
                                   and
                                   (Copy(trim(delspace(Deldash(DM_f.sqlTemp2.FieldByName('Jumin').AsString))), 1, 2) <> '')
                                   and
                                   (Copy(trim(delspace(Deldash(DM_f.sqlTemp2.FieldByName('Jumin').AsString))), 7, 1) <> '') then
                                   varNai :=
                                        naiCalc(trim(Deldash(delspace(DM_f.sqlTemp2.FieldByName('Jumin').AsString))));

                                if DM_f.sqlTemp2.FieldByName('C_phone').AsString <> '' then
                                     varPhone := DM_f.sqlTemp2.FieldByName('C_phone').AsString;

                           //   if DM_f.sqlTemp2.FieldByName('sms2').AsString = '0' then
                           //        varPhone := DM_f.sqlTemp2.FieldByName('p_phone').AsString;

                              varBirth := copy(DM_f.sqlTemp2.FieldByName('JUMIN').AsString, 1, 6);

                         end;

                    end;

                    //if (FieldByName('YHwanName').AsString <> varSName) and (DM_f.sqlTemp2.FieldByName('Jumin').AsString <> varSJumin) then
                    //begin


                 //   addNewLine:


                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1]  :=  varChart;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=  varName;

                    grdChoice.Cells[4, grdChoice.RowCount - 1] := varNai;
                    grdChoice.Cells[5, grdChoice.RowCount - 1] := varJuso;


                    grdChoice.Cells[6, grdChoice.RowCount - 1] := varPhone;

                    grdChoice.Cells[7, grdChoice.RowCount - 1] :=  FieldByName('pDay').AsString;
                    grdChoice.Cells[8, grdChoice.RowCount - 1] :=  FieldByName('pTime').AsString;
                    grdChoice.Cells[10, grdChoice.RowCount - 1] :=    FieldByName('remark').AsString;

                    grdChoice.Cells[9, grdChoice.RowCount - 1] := varBirth;

                    grdChoice.Cells[11, grdChoice.RowCount - 1] :=  FieldByName('gubun').AsString;

                    if ( varNoSMS ='0') or  ( FieldByName('noSMS').AsString = '1' )then

                    grdChoice.Cells[12, grdChoice.RowCount - 1] := '1';    //NoSMS가 1인것은 선택되지 않게 하자.

                    grdChoice.Cells[13, grdChoice.RowCount - 1] :=loadJinjryosil(  FieldByName('team').AsString);


                    varSName  := grdChoice.Cells[2, grdChoice.RowCount - 1];
                    varsJumin := grdChoice.Cells[3, grdChoice.RowCount - 1];
                    // end;



                         //여기서 보호자 전화번호를 읽어와서 행을 추가해주자...


                         DM_f.sqlTemp2.Close;
                         DM_f.sqlTemp2.SQL.Clear;

                         DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                         DM_f.sqlTemp2.Sql.Add('where (chart=:chart and chart <> '''')  and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                         DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //여기서는 0인것이 SMS전송하기로 한거임 불러올거임....
                         DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                         DM_f.sqlTemp2.Open;
                         DM_f.sqlTemp2.first;

                         if not DM_f.sqlTemp2.IsEmpty then
                         begin
                              while not DM_f.sqlTemp2.eof do
                              begin
                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);
                             //   varJuso := '부모';
                                varNai := '0';
                                varBirth := '부모님';
                            //    varChart := trim(FieldByName('Chart').AsString);


                                 grdChoice.AddRow;
                                 grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                                 grdChoice.Cells[2, grdChoice.RowCount - 1] :=  varChart;
                                 grdChoice.Cells[3, grdChoice.RowCount - 1] :=  varName;

                                 grdChoice.Cells[4, grdChoice.RowCount - 1] := varNai;
                                 grdChoice.Cells[5, grdChoice.RowCount - 1] := varJuso;
                                 grdChoice.Cells[6, grdChoice.RowCount - 1] := varPhone;

                                 grdChoice.Cells[7, grdChoice.RowCount - 1] :=  FieldByName('pDay').AsString;
                                 grdChoice.Cells[8, grdChoice.RowCount - 1] := FieldByName('pTime').AsString;
                                 grdChoice.Cells[10, grdChoice.RowCount - 1] := FieldByName('remark').AsString;

                                 grdChoice.Cells[9, grdChoice.RowCount - 1] := varBirth;


                                 grdChoice.Cells[11, grdChoice.RowCount - 1] := FieldByName('gubun').AsString;



                                DM_f.sqlTemp2.next;

                         //       goto AddNewLine;




                              end;


                         end;







                    Application.ProcessMessages;
                    next;


                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress  + 1;
                    Waiter_f.Edit1.Text :=  IntToStr(StrToint(Waiter_f.Edit1.Text) - 1);

               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_YEYAK_remark;
var
     varSJumin, varSname, varTeam, varPhone, varJuso, varNai, varBirth, varChart, varName: string;

     varGubunNo: array of string;
     i, j: integer;
     varQuery: string;
begin
     SetLength(varGubunNo, 100);
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM ma_promise ');
          Sql.Add('where pDAY >= :YDAY and pDAY <= :YDAY2');
          sql.add(' and name <> ''''  ');
          sql.add(' and CANCEL <> ''Y''  ');
          sql.add(' and CANCEL <> ''C''  ');
          sql.add(' and CANCEL <> ''R'' ');
          sql.add(' and CANCEL <> ''U'' ');
        //  sql.add(' and CANCEL <> ''5'' ');
          sql.add(' and POS <> ''8'' ');
          sql.add(' and (noSMS  is Null or noSMS <> ''1'') ');
          sql.add(' and remark like :remark  ');
          //Sql.Add('and SMS <> :SMS');
          //ParamByName('SMS').AsString := '0';
          ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('YDAY2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          ParamByName('remark').AsString := '%' + edtDpsch.text + '%';
          Open;
     end;

     with DM_f.sqlTemp do
     begin

          // 2012.3.22 전화신환을 예약하는경우엔 인적테이블레 저장되기전이므로
          // ... 일단은 view_gogek 와 조인없이   ma_promise 단독으로 찾자!!
          Close;
          Sql.Clear;
          //SQL.Text := SQL_SELECT_DATA_FIND_YEYAK;    //2008.5.28 한명이 하루에 2개팀으로 예약된경우 한팀것밖에 안나오기때문
          //          Sql.Add('where YDAY >= :YDAY and YDAY <= :YDAY2');

          //Sql.Add('SELECT a.chart,a.name, a.pday, a.pTime, a.team, a.tel, a.remark, b.sms, b.sms2 ');
               //Sql.Add('FROM ma_promise a left join ma_gogek_phone b on a.tel=b.phone');
          //Sql.Add('FROM ma_promise a left join view_gogek b on a.chart=b.chart');
          sql.text:=
          'SELECT chart,name, pday, pTime, team, tel, remark, gubun '+#10#13+
          'FROM ma_promise '+#10#13+
          'where pday >= :YDay and pday <= :YDay2 '+#10#13+
          ' and CANCEL <> :YCANCEL  '+#10#13+
          ' and CANCEL <> :YCANCEL2 '+#10#13+
          ' and CANCEL <> :YCANCEL3 '+#10#13+
          ' and CANCEL <> :YCANCEL4 '+#10#13+
          ' and POS <> ''8'' '+#10#13+
          ' and (noSMS  is Null or noSMS <> ''1'') '+#10#13+
          ' and remark like :remark  ';

          for j := 0 to 99 do
          begin
               varGubunNo[j] := '';
          end;

          if cbChair.Checked then
          begin

               for i := 0 to GrdChair.RowCount - 1 do
               begin

                    if (GrdChair.Cells[0, i] = '0')
                        and (GrdChair.Cells[2, i] <> '') then
                    begin

                          varGubunNo[i] := trim(GrdChair.Cells[2, i]);
                          if varQuery <> '' then
                          begin
                             if  trim(varGubunNo[i]) <> ''  then
                                   varQuery := varQuery + '  or  gubun = ' +''''+ trim(varGubunNo[i])+'''' ;
                          end
                          else
                          begin

                             if  trim(varGubunNo[i]) <> ''  then
                                   varQuery :='  gubun = ' +''''+ trim(varGubunNo[i]) +'''';


                          end;

                    end;

               end;

          end;

          if trim(varQuery) <> ''  then
            sql.text := sql.text + ' and ' +'('+ varQuery+')';

          Sql.text:= sql.text +'order by name ';




          ParamByName('YCANCEL').AsString := 'Y';
          ParamByName('YCANCEL4').AsString := 'C';

          ParamByName('YCANCEL2').AsString := 'R';
          ParamByName('YCANCEL3').AsString := 'U'; //변경
          ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('YDAY2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);

          ParamByName('remark').AsString := '%' + edtDpsch.text + '%';

          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    varPhone := fieldByName('tel').AsString;
                    varJuso := '';
                    varNai := '0';
                    varBirth := '';
                    varChart := trim(FieldByName('Chart').AsString);
                    varName := substr( FieldByName('Name').AsString,1 ,';');

                    if varChart <> '' then
                    begin

                         //2008.5.28
                         DM_f.sqlTemp2.Close;
                         DM_f.sqlTemp2.SQL.Clear;

                         DM_f.sqlTemp2.Sql.Add('SELECT jumin,c_phone,h_phone,h_zip,h_juso, mail, sms2, p_phone, sms ');
                         DM_f.sqlTemp2.Sql.Add('FROM view_gogek ');
                         DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms <> :Sms or Sms is null)');
                         DM_f.sqlTemp2.ParamByName('SMS').AsString := '0';
                         DM_f.sqlTemp2.ParamByName('chart').AsString :=
                              varChart;
                         DM_f.sqlTemp2.Open;

                         if not DM_f.sqlTemp2.IsEmpty then
                         begin

                              varJuso := Trim(Dm_f.sqlTemp2.FieldByName('h_juso').AsString);
                              if (DM_f.sqlTemp2.FieldByName('Jumin').AsString <>
                                   '')
                                   and
                                   (Copy(trim(delspace(Deldash(DM_f.sqlTemp2.FieldByName('Jumin').AsString))), 1, 2) <> '')
                                   and
                                   (Copy(trim(delspace(Deldash(DM_f.sqlTemp2.FieldByName('Jumin').AsString))), 7, 1) <> '') then
                                   varNai :=
                                        naiCalc(trim(Deldash(delspace(DM_f.sqlTemp2.FieldByName('Jumin').AsString))));

                              //  if DM_f.sqlTemp2.FieldByName('C_phone').AsString <> '' then
                              //       varPhone := DM_f.sqlTemp2.FieldByName('C_phone').AsString;

                              if DM_f.sqlTemp2.FieldByName('sms2').AsString = '0' then
                                   varPhone := DM_f.sqlTemp2.FieldByName('p_phone').AsString;
                              varBirth := copy(DM_f.sqlTemp2.FieldByName('JUMIN').AsString, 1, 6);

                         end;

                    end;

                    //if (FieldByName('YHwanName').AsString <> varSName) and (DM_f.sqlTemp2.FieldByName('Jumin').AsString <> varSJumin) then
                    //begin

                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] := varChart;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] := varName;

                    grdChoice.Cells[4, grdChoice.RowCount - 1] := varNai;
                    grdChoice.Cells[5, grdChoice.RowCount - 1] := varJuso;
                    grdChoice.Cells[6, grdChoice.RowCount - 1] := varPhone;

                    grdChoice.Cells[7, grdChoice.RowCount - 1] :=
                         FieldByName('pDay').AsString;
                    grdChoice.Cells[8, grdChoice.RowCount - 1] :=
                         FieldByName('pTime').AsString;
                    grdChoice.Cells[10, grdChoice.RowCount - 1] :=
                         FieldByName('remark').AsString;

                    grdChoice.Cells[9, grdChoice.RowCount - 1] := varBirth;
                    grdChoice.Cells[11, grdChoice.RowCount - 1] :=
                               FieldByName('gubun').AsString;




                    varSName  := grdChoice.Cells[3, grdChoice.RowCount - 1];
                    varsJumin := grdChoice.Cells[4, grdChoice.RowCount - 1];
                    // end;

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text) - 1);

               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_minewon;
var
     varSJumin, varSname, varTeam: string;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM ma_promise ');
          Sql.Add('where pDAY >= :YDAY and pDAY <= :YDAY2');
          sql.add(' and CANCEL <> ''Y''  ');
          sql.add(' and CANCEL <> ''C''  ');
          sql.add(' and CANCEL <> ''R'' ');
          sql.add(' and CANCEL <> ''U'' ');
          Sql.Add('and pos <> ''Y'' ');
          Sql.Add('and pos <> ''0'' ');
          Sql.Add('and pos <> ''1'' ');
          Sql.Add('and pos <> ''2'' ');
          Sql.Add('and pos <> ''3'' ');
          Sql.Add('and pos <> ''4'' ');
          sql.add(' and (noSMS  is Null or noSMS <> ''1'') ');
          Sql.Add('and pos <> ''8'' ');
          ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('YDAY2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          //SQL.Text := SQL_SELECT_DATA_FIND_YEYAK;    //2008.5.28 한명이 하루에 2개팀으로 예약된경우 한팀것밖에 안나오기때문
          //          Sql.Add('where YDAY >= :YDAY and YDAY <= :YDAY2');

          Sql.Add(' SELECT a.chart,a.name,pday,pTime, a.team, a.remark, b.sms                              ');
          Sql.Add(' FROM ma_promise a left join view_gogek b on a.chart=b.chart                           '); // a.tel=b.c_phone');
          Sql.Add(' where pday >= :YDay and pday <= :YDay2  ');
          Sql.Add(' and CANCEL not in (''Y'',''C'',''R'',''U'') ');   // 'U';  //예약변경 - 붙여넣기
          Sql.Add(' and pos not in (''0'' , ''1'' , ''2'' , ''3'', ''4'' , ''8'') ');    
          sql.add(' and (a.noSMS  is Null or  a.noSMS <> ''1'')          ');
          Sql.Add(' and ( b.sms <> ''0'' or b.sms is null)       ');
          Sql.Add(' and a.chart not in (select chart from ma_promise where pday > :pday   )  ');     //convert(varchar(10),getdate(),120) )  ');
          Sql.Add(' order by name               ');


          ParamByName('YDAY').AsString := FormatDateTime('YYYY-MM-DD',  CBDYeyakFind.date);
          ParamByName('YDAY2').AsString := FormatDateTime('YYYY-MM-DD',   CBDYeyakFind2.date);
          ParamByName('pday').AsString := FormatDateTime('YYYY-MM-DD',   CBDYeyakFind2.date);
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');
          grdChoice.ColumnHeaders.Add('일자');
          grdChoice.ColumnHeaders.Add('시간');

          if not IsEmpty then
          begin
               while not EOF do
               begin

                    //2008.5.28
                    DM_f.sqlTemp2.Close;
                    DM_f.sqlTemp2.SQL.Clear;

                    DM_f.sqlTemp2.Sql.Add('SELECT jumin,c_phone,h_phone,h_zip,h_juso, mail ');
                    DM_f.sqlTemp2.Sql.Add('FROM view_gogek ');
                    DM_f.sqlTemp2.Sql.Add('where chart=:chart and (Sms <> :Sms or Sms is null)');
                    DM_f.sqlTemp2.ParamByName('SMS').AsString := '0';
                    DM_f.sqlTemp2.ParamByName('chart').AsString :=
                         FieldByName('Chart').AsString;
                    DM_f.sqlTemp2.Open;

                    //if (FieldByName('YHwanName').AsString <> varSName) and (DM_f.sqlTemp2.FieldByName('Jumin').AsString <> varSJumin) then
                    //begin
                 //   varName := substr( FieldByName('Name').AsString,1 ,';');

                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (DM_f.sqlTemp2.FieldByName('Jumin').AsString <>
                         '')
                         and
                         (Copy(trim(delspace(Deldash(DM_f.sqlTemp2.FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(DM_f.sqlTemp2.FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(DM_f.sqlTemp2.FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp2.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         DM_f.sqlTemp2.FieldByName('C_phone').AsString;
                    grdChoice.Cells[7, grdChoice.RowCount - 1] :=
                         FieldByName('pDay').AsString;
                    grdChoice.Cells[8, grdChoice.RowCount - 1] :=
                         FieldByName('pTime').AsString;
                    grdChoice.Cells[10, grdChoice.RowCount - 1] :=
                         FieldByName('remark').AsString;
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(DM_f.sqlTemp2.FieldByName('JUMIN').AsString, 1,
                         6);
                    varSName := grdChoice.Cells[3, grdChoice.RowCount - 1];
                    varsJumin := grdChoice.Cells[4, grdChoice.RowCount - 1];
                    // end;

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text) - 1);

               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_Recall;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM ma_recall ');
          Sql.Add('where RcDate >= :RcDate and RcDate <= :RcDate2 and    (rckind=''1'' or rckind=''2'')  and rcCheck <> ''1'' ');
          if cbKind.text <> '' then
          begin
               Sql.Add(' and rcRemark  like  :rcRemark');
               ParamByName('RcRemark').AsString :=   '%' + cbKind.text + '%';
          end;

          ParamByName('RcDate').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('RcDate2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_RECALL;
          //          Sql.Add('where RcDate >= :RcDate and RcDate <= :RcDate2');
          ParamByName('SMS').AsString := '0';
          ParamByName('RcDate').AsString := FormatDateTime('YYYY-MM-DD',  CBDYeyakFind.date);
          ParamByName('RcDate2').AsString := FormatDateTime('YYYY-MM-DD',  CBDYeyakFind2.date);

          if cbKind.text <> '' then
          begin
               Sql.Add(' and rcRemark  like  :rcRemark');
               ParamByName('RcRemark').AsString :=   '%' + cbKind.text + '%';
          end;

          SQL.Text := SQL.Text + SQL_SELECT_DATA_FIND_RECALL_orderBy  ;

          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');
          grdChoice.ColumnHeaders.Add('일자');
          grdChoice.ColumnHeaders.Add('시간');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('RCChart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         FieldByName('RcName').AsString;
                    grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] := '';
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('c_phone').AsString;
                    grdChoice.Cells[7, grdChoice.RowCount - 1] :=
                         FieldByName('RCDate').AsString;
                    grdChoice.Cells[8, grdChoice.RowCount - 1] :=
                         FieldByName('RCTime').AsString;
                    grdChoice.Cells[10, grdChoice.RowCount - 1] :=
                         htmlToString(FieldByName('RCRemark').AsString);
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_Soa;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM ma_recall ');
          Sql.Add('where SubStr(Jumin,1,2)  >= :RcDate and RcDate <= :RcDate2 and  rckind=''1''');
          ParamByName('RcDate').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('RcDate2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_RECALL;
          //          Sql.Add('where RcDate >= :RcDate and RcDate <= :RcDate2');
          ParamByName('RcDate').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('RcDate2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('RCChart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         FieldByName('RcName').AsString;
                    grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] := '';
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('c_phone').AsString;
                    //    FieldByName('RCTEL').AsString;
                    grdChoice.Cells[7, grdChoice.RowCount - 1] :=
                         FieldByName('RCDate').AsString;
                    grdChoice.Cells[8, grdChoice.RowCount - 1] :=
                         FieldByName('RCTime').AsString;
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_Nai; //2012.2.7
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where Chart<>:chart');
          ParamByName('Chart').AsString := '';
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
           SQL.Text := SQL_SELECT_DATA_FIND_Nai;

          if cbNaiAll.Checked = false  then
          begin
              SQL.Text :=  SQL.Text + SQL_SELECT_DATA_Find_Nai_WhereLastDay;
              ParamByName('LastDay1').AsString := formatDatetime('YYYY-MM-DD', cbDyeyakFind.Date);
              ParamByName('LastDay2').AsString := formatDatetime('YYYY-MM-DD', cbDyeyakFind2.Date);

          end;
          SQL.Text :=  SQL.Text + SQL_SELECT_DATA_Find_Nai_orderBy;
          ParamByName('Nai1').AsInteger := StrToInt(EdtNai1.Text);
          ParamByName('Nai2').AsInteger := StrToInt(EdtNai2.Text);
          ParamByName('SMS').AsString := '0';

          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');

                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString; //Chart, Name,Jumin,h_juso,C_phone

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress + 1;
                    Waiter_f.Edit1.Text := IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_Birth;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where substring(jumin,3,4)>= :Jumin and substring(jumin,3,4) <= :Jumin2');
          Sql.Add('and (SMS <> :SMS or sms is null)');
          ParamByName('SMS').AsString := '0';
          ParamByName('JUMIN').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('JUMIN2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_BIRTH;
          ParamByName('JUMIN').AsString := FormatDateTime('MMDD',
               CBDYeyakFind.date);
          ParamByName('JUMIN2').AsString := FormatDateTime('MMDD',
               CBDYeyakFind2.date);
          ParamByName('SMS').AsString := '0';
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] := FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] := substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '')
                         then
                        grdChoice.Cells[4, grdChoice.RowCount - 1] := naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=  Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=  FieldByName('C_phone').AsString;
                    //                    Cells[7, RowCount - 1] :=
                    //                         FieldByName('YDay').AsString;
                    //                    Cells[8, RowCount - 1] :=
                    //                         FieldByName('YTime').AsString;
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_Chart;
const
     SQL_SELECT_DATA_FIND_Chart = 'SELECT *  FROM view_gogek' + #13#10 +
          'where chart= :chart' + #13#10
          +
          'and (SMS<>:SMS or sms is null)' + #13#10 +
          'order by name';

begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where chart = :chart ');
          Sql.Add('and (SMS <> :SMS or sms is null)');
          ParamByName('SMS').AsString := '0';
          ParamByName('chart').AsString := edtDpSch.text;
             Open;
     end;

     with DM_f.sqlTemp do
     begin
          Close;
          Sql.Clear;
           SQL.Text := SQL_SELECT_DATA_FIND_chart;
          ParamByName('chart').AsString := edtDpSch.text;
          ParamByName('SMS').AsString := '0';
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);


                     grdChoice.Cells[2,  grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                     grdChoice.Cells[3,  grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                          grdChoice.Cells[4,  grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                          grdChoice.Cells[4,  grdChoice.RowCount - 1] := '0';

                     grdChoice.Cells[5,  grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                     grdChoice.Cells[6,  grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString;
                    //                    Cells[7, RowCount - 1] :=
                    //                         FieldByName('YDay').AsString;
                    //                    Cells[8, RowCount - 1] :=
                    //                         FieldByName('YTime').AsString;
                     grdChoice.Cells[9,  grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_first;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where first_day>= :first_day and first_day <= :first_day2');
          Sql.Add('and (SMS <> :SMS or sms is null)');
          ParamByName('SMS').AsString := '0';
          ParamByName('first_day').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('first_day2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_first;
          ParamByName('first_day').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('first_day2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          ParamByName('SMS').AsString := '0';
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString;
                    //                    Cells[7, RowCount - 1] :=
                    //                         FieldByName('YDay').AsString;
                    //                    Cells[8, RowCount - 1] :=
                    //                         FieldByName('YTime').AsString;
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_last;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where last_day>= :last_day and  last_day <= :last_day2');
          Sql.Add('and (SMS <> :SMS or sms is null)');
          ParamByName('SMS').AsString := '0';
          ParamByName('last_day').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('last_day2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_last;
          ParamByName('last_day').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('last_day2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          ParamByName('SMS').AsString := '0';
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString;
                    //                    Cells[7, RowCount - 1] :=
                    //                         FieldByName('YDay').AsString;
                    //                    Cells[8, RowCount - 1] :=
                    //                         FieldByName('YTime').AsString;
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_JINRYO;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM JINRYO_P ');
          Sql.Add('where JIN_day>= :JIN_day and JIN_day <= :JIN_day2');
          ParamByName('JIN_day').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('JIN_day2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          Open;
     end;

     with DM_f.sqlTemp do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_JINRYO;
          ParamByName('JIN_day').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind.date);
          ParamByName('JIN_day2').AsString := FormatDateTime('YYYY-MM-DD',
               CBDYeyakFind2.date);
          ParamByName('SMS').AsString := '0';
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                   grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString;
                    //                    Cells[7, RowCount - 1] :=
                    //                         FieldByName('YDay').AsString;
                    //                    Cells[8, RowCount - 1] :=
                    //                         FieldByName('YTime').AsString;
                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData_Baby; //2012.2.7
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where (year(getdate()))- (cast(((case when (substring(jumin,7,1)=3) or');
          Sql.Add('(substring(jumin,7,1)=4) then ''20'' else ''19'' end) +  substring(jumin,1,2)) as integer)) <= ''7''');
          Sql.Add('and (SMS <> :SMS or sms is null)');
          ParamByName('SMS').AsString := '0';
          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_BABY;
          ParamByName('SMS').AsString := '0';
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString;

                    if (FieldByName('sms2').AsString = '0') then
                         grdChoice.Cells[6, grdChoice.RowCount - 1] := FieldByName('p_phone').AsString;

                    //                    Cells[6, RowCount - 1] :=
                    //                         FieldByName('YDay').AsString;
                    //                    Cells[7, RowCount - 1] :=
                    //                         FieldByName('YTime').AsString;

                    grdChoice.Cells[9, grdChoice.RowCount - 1] :=
                         copy(FieldByName('JUMIN').AsString, 1, 6);
                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure TSMS_f.SmsSelectData2; //2012.2.7
var
     varCount: integer;
     varQuery: string;
     varP_Phone1,varP_Phone2, varC_phone : string;
     applySend : string;
     varChart, varName : string;
     varPhone, varNai, varBirth, varJuso:string;
begin
     varQuery := LoadGroupDataQuery;

     {
          with dm_f.sqlwork do
          begin
            close;
            sql.clear;
            sql.add('update view_gogek set noSms=''N'' ');
            sql.add('where (noSms is null) or (noSms = '') ');
            dm_f.sqlwork.ExecSQL;
          end;
     }

     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM view_gogek ');
          Sql.Add('where  Name like :Name');
     //     Sql.Add('and ( SMS <> :SMS or sms is null)');
     //     ParamByName('SMS').AsString := '0';
      //    ParamByName('Chart').AsString := '';
          ParamByName('Name').AsString := '%' + EdtDPSch.Text + '%';
          Open;
          varCount := DM_f.Sqlwork.FieldByname('countGogek').AsInteger;




     end;

     with DM_f.sqlTemp do
     begin
          Close;
          Sql.Clear;
          if cbNew.Checked = true then
           SQL.Text := SQL_SELECT_DATA_FIND_Name;
     //     ParamByName('SMS').AsString := '0';
     //     ParamByName('Chart').AsString := '';
          ParamByName('Name').AsString := '%' + EdtDPSch.Text + '%';




               if varviewAll <> true then
               begin

                   if varQuery <> '' then
                   begin

                         sql.Add(' and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ')

                   end;

               end;

               sql.text:=  sql.text + ' order by name      ';




          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue := varCount;

          Waiter_f.Edit1.Text :=
               inttostr(varCount);

          Application.ProcessMessages;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin

                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                         grdChoice.Cells[4, grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                         grdChoice.Cells[4, grdChoice.RowCount - 1] := '0';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);


                    //SMS보내기면 번호 넣어주고.
                     applySend :=  FieldByName('sms').AsString;
                     varC_phone:=  FieldByName('C_phone').AsString;
                    if   (applySend = '1') then
                    begin
                        grdChoice.Cells[6, grdChoice.RowCount - 1] := varC_Phone;
                    end
                    else
                        grdChoice.Cells[6, grdChoice.RowCount - 1] := varC_Phone;


                   //보호자 번호 있으면 라인 추가 해서 넣어주자.
                 {     varP_Phone1:=  FieldByName('p_phone').AsString;
                      varP_Phone2:=  FieldByName('p_phone2').AsString;
                      if ((FieldByName('sms2').AsString = '0'    ) then  //부모 아빠 에게 보내자고 체크
                         begin
                             Cells[5, RowCount - 1] := varP_Phone1 ;
                         end else




                        if (FieldByName('sms3').AsString = '0') then  //부모 엄마 에게 보내자고 체크
                                 Cells[5, RowCount - 1] := varP_Phone2 ;
                     //       else
                     //           Cells[5, RowCount - 1] := '';
                   }



                         //여기서 보호자 전화번호를 읽어와서 행을 추가해주자...
                         varName := substr( FieldByName('Name').AsString,1 ,';');
                         varChart :=FieldByName('Chart').AsString;//

                         DM_f.sqlTemp2.Close;
                         DM_f.sqlTemp2.SQL.Clear;

                         DM_f.sqlTemp2.Sql.Add('SELECT * FROM ma_gogek_phone ');
                         DM_f.sqlTemp2.Sql.Add('where (chart=:chart and chart <> '''')  and (Sms = :Sms) and (kind=''3'' or kind=''4'') ');
                         DM_f.sqlTemp2.ParamByName('SMS').AsString := '0'; //여기서는 0인것이 SMS전송하기로 한거임 불러올거임....
                         DM_f.sqlTemp2.ParamByName('chart').AsString :=  varChart;
                         DM_f.sqlTemp2.Open;
                         DM_f.sqlTemp2.first;

                         if not DM_f.sqlTemp2.IsEmpty then
                         begin
                              while not DM_f.sqlTemp2.eof do
                              begin
                                varPhone := Trim(Dm_f.sqlTemp2.FieldByName('phone').AsString);
                             //   varJuso := '부모';
                                varNai := '0';
                                varBirth := '부모님';
                            //    varChart := trim(FieldByName('Chart').AsString);


                                       grdChoice.AddRow;
                                       grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                                       grdChoice.Cells[2, grdChoice.RowCount - 1] :=  varChart;
                                       grdChoice.Cells[3, grdChoice.RowCount - 1] :=  varName;

                                       grdChoice.Cells[4, grdChoice.RowCount - 1] := varNai;
                                       grdChoice.Cells[5, grdChoice.RowCount - 1] := varJuso;
                                       grdChoice.Cells[6, grdChoice.RowCount - 1] := varPhone;

                                       grdChoice.Cells[7, grdChoice.RowCount - 1] :='';//
                                         //   FieldByName('pDay').AsString;
                                       grdChoice.Cells[8, grdChoice.RowCount - 1] := '';
                                          //  FieldByName('pTime').AsString;
                                       grdChoice.Cells[10, grdChoice.RowCount - 1] := '';
                                          //  FieldByName('remark').AsString;

                                       grdChoice.Cells[9, grdChoice.RowCount - 1] := varBirth;


                                       grdChoice.Cells[11, grdChoice.RowCount - 1] :='';//
                                          //  FieldByName('gubun').AsString;



                                DM_f.sqlTemp2.next;

                         //       goto AddNewLine;




                              end;


                         end;





                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);

               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdChoice.AutoNumberCol(0);
     end;

end;

procedure Tsms_f.btnChoiceClick(Sender: TObject);
begin
     btnChoice.Enabled := false;
     if MemContent.Text <> '' then
     begin
          if chkSendMMS.Checked = false then
          begin
                if length(MemContent.Text) > 90 then
                begin
                      showmessage('메시지가 길어서 문자가 2건 이상으로 나누어 전송됩니다.');
                      ChoicePostData; //SMS나누어 저장 후에
                end;
          end
          else
          begin
                if length(MemContent.Text) > 90 then
                begin
                       showmessage('메시지가 길어서 LMS로 전송됩니다.');
                end;
                ChoicePostData_MMS; //MMS 저장 후에
          end;
                SendSelectData; //그리드에 보여준다.

     end
     else
     begin
          showmessage('본문 내용을 입력하세요');
     end;
     btnChoice.Enabled := true;
end;

procedure TSMS_f.ChoicePostData;
var
     nRow, i, ii, j: Integer;
     MaxSBcode, s, sm: string;
     sw: widestring;
     ReMemoHospital,
          ReMemoHospital2,
          ReMemoDay,
          ReMemoTime,
          ReMemoMinute,
          ReMemoMonth,
          ReMemoTel,
          ReMemoBankCode,
          ReMemoName: string;

     varContentMem:string;

begin

      //------------------------------------------------------------------------------
     Application.ProcessMessages;
     Enabled := false;

     Waiter_f := Twaiter_f.Create(application);
     Waiter_f.Top := PnlChoice.Top + 50;

     Waiter_f.Show;
     Application.ProcessMessages;

     Waiter_f.Gauge1.Progress := 0;

     Waiter_f.Gauge1.MaxValue := GrdChoice.RowCount;
     Waiter_f.Edit1.Text := IntToStr(GrdChoice.RowCount);

     Application.ProcessMessages;
     //------------------------------------------------------------------------------

     for i := 0 to GrdChoice.RowCount - 1 do
     begin
          try
               if GrdChoice.Cells[0, i] = '1' then
               begin

                    if GrdChoice.Cells[6, i] <> '' then //일자
                    begin
                         varMonth := Copy(GrdChoice.Cells[6,
                              i], 6, 2);
                         varDay := Copy(GrdChoice.Cells[6,
                              i], 9, 2);
                    end;
                    if GrdChoice.Cells[7, i] <> '' then //시간
                    begin
                         varTime :=
                              HangeulTime(Copy(GrdChoice.Cells[7,
                              i], 1, 2));

                         if configvalue.varSMSConvMin = '1' then
                         begin

                              if (Copy(GrdChoice.Cells[7, i], 4, 2) < '30') then
                                   varMin := HangeulMin('00')
                              else
                                   varMin := HangeulMin('30');
                         end
                         else
                         begin
                              varMin := HangeulMin(Copy(GrdChoice.Cells[7,
                                   i], 4, 2));
                         end;

                    end;


                    //예약체어명칭 설정(예약구간설정)에서 각 구간별 SMS문구를 지정할 수 있다.
                    //지정된 값이 없으면 memContent.text값을 읽어오자...

                    varContentMem:= LoadGubunContent(GrdChoice.Cells[10,
                                   i]);



                    if  trim(varContentMem)= '' then
                         varContentMem:= memContent.text;




                    ReMemoHospital2 := StringReplace(varContentMem,
                         '+aaaa+',
                         HPName, [rfReplaceAll, rfIgnoreCase]);
                    ReMemoHospital := StringReplace(varContentMem,
                         '+aaa+', HPName,
                         [rfReplaceAll, rfIgnoreCase]);
                    ReMemoDay := StringReplace(RememoHospital, '+dd+',
                         varDay,
                         [rfReplaceAll, rfIgnoreCase]);
                    ReMemoTime := StringReplace(RememoDay, '+hh+',
                         varTime,
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoMinute := StringReplace(RememoTime, '+mm+',
                         varMin,
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoBankCode := StringReplace(RememoMinute,
                         '+xxxx+', '30',
                         [rfReplaceAll, rfIgnoreCase]);
                    ReMemoMonth := StringReplace(RememoBankcode, '+rr+',
                         varMonth, [rfReplaceAll, rfIgnoreCase]);
                    ReMemoTel := StringReplace(RememoMonth, '+ccc+',
                         TelNo,
                         [rfReplaceAll, rfIgnoreCase]);
                    ReMemoName := StringReplace(RememoTel, '+ddd+',
                         GrdChoice.Cells[2, i],
                         [rfReplaceAll,
                         rfIgnoreCase]);
                    if GrdChoice.Cells[6, i] <> '' then
                    ReMemoName := StringReplace(ReMemoName, '+ee+', //요일
                        ReturnWeek2(strtodate(GrdChoice.Cells[6, i])),
                         [rfReplaceAll,
                         rfIgnoreCase])
                   else
                    ReMemoName := StringReplace(ReMemoName, '+ee+',
                          '',
                         [rfReplaceAll,
                         rfIgnoreCase]);



                    Sw := ReMemoName;


                    S := ReMemoName;

                {    with dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;

                         Sql.Add('select * from ma_sms_contents');
                         Sql.Add(' where CLASS=:Class and SML_CLASS=:SML_CLASS');
                         Sql.Add('order by SML_CLASS');
                         ParamByName('Class').AsString :=
                              Copy(EdtContNo.Text, 1, 6);
                         ParamByName('SML_Class').AsString :=
                              Copy(EdtContNo.Text, 7,
                              3);
                         Open;
                    end;
                 }
                    ii := (Length(S) div 90);
                    for j := 0 to ii do
                    begin
                         sm := Trim(Copy_hangul(Trim(s), (90 * j) + 1,
                              90));
                         // 45자씩 자르기

                         with Dm_f.sqlTemp do
                         begin
                              close;
                              sql.clear;
                              sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                              open;
                              MaxSBCode :=
                                   FieldByName('MSBcode').AsString;
                         end;
                         with Dm_f.SqlTemp do
                         begin
                              close;
                              sql.clear;
                              sql.add('select SBChart,SBRegDate from ma_sms_sendlist');
                              Sql.Add('Where (SBChart=:SBChart) and');
                              Sql.Add(' (SBName =:SBName) and');
                              Sql.Add(' (SBRegDate =:SBRegDate) and');
                              Sql.Add(' (SBChoice =:SBChoice) and ');
                              Sql.Add(' (SBSFSMS <>:SBSFSMS) and ');
                              Sql.Add(' (SBMail =:SBMail) and ');
                              Sql.Add(' (SBContent=:SBContent)');

                              //2012.3.22 전화신환이 많은경우 챠트번호들이 다 없다. 따라서 조건식에 이름도 포함

                              ParamByName('SBChart').AsString :=   GrdChoice.Cells[1,   i];
                              ParamByName('SBName').AsString :=  GrdChoice.Cells[2,  i];
                              ParamByName('SBContent').AsString :=  Sm;

                              ParamByName('SBRegDate').AsString :=  FormatDateTime('YYYY-MM-DD',  now);
                              ParamByName('SBCHOICE').AsString :=   '1';
                              ParamByName('SBMail').AsString :=     GrdChoice.Cells[8,  i];
                              ParamByName('SBSFSMS').AsString := '1';
                              //성공하지 않은것만 불러온다.

                              open;

                              if isEmpty then
                              begin

                                   with Dm_f.sqlYeyak do
                                   begin
                                        SQL.Text :=
                                             SQL_INSERT_DATA;
                                        if MaxSBCode <> '' then
                                             ParamByName('SBCODE').AsString := FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                                        else
                                             ParamByName('SBCODE').AsString := '0000000001';
                                        ParamByName('SBChart').AsString := GrdChoice.Cells[1, i];
                                        ParamByName('SBName').AsString := GrdChoice.Cells[2, i];
                                        ParamByName('SBTel').AsString := '';
                                        ParamByName('SBMail').AsString := GrdChoice.Cells[8, i]; //부모핸드폰으로 보내는 경우 구분자생년 월일가 필요
                                        ParamByName('SBHp').AsString := GrdChoice.Cells[5, i];
                                        ParamByName('SBContent').AsString := Sm;
                                        ParamByName('SBRegDate').AsString := FormatDateTime('YYYY-MM-DD', now);
                                        ParamByName('SBZip').AsString := '';
                                        ParamByName('SBAdd').AsString := GrdChoice.Cells[4, i];
                                        ParamByName('SBQty').AsString := '';
                                        ParamByName('SBGroup').AsString := '1';
                                        ParamByName('SBSFSMS').AsString := '';
                                        ParamByName('SBSFMAIL').AsString := '';
                                        ParamByName('SBSFFAX').AsString := '';
                                        ParamByName('SBSFDM').AsString := '';
                                        if CbYeyak.Checked = true then
                                             //예약된거는 1로쓴다.
                                        begin
                                             ParamByName('SBSFRECALL').AsString := '1';
                                             ParamByName('SBSendDate').AsString := formatdatetime('YYYY-MM-DD', YeyakDayEdit.date);
                                             ParamByName('SBSendTime').AsString := cmTime.text + ':' + cmMinute.text;
                                        end
                                        else
                                        begin
                                             ParamByName('SBSFRECALL').AsString := '0';
                                             ParamByName('SBSendDate').AsString := varSendYear + '-' + varSendMonth + '-' + varSendDay;
                                             ParamByName('SBSendTime').AsString := cmTime.text + ':' + cmMinute.text;
                                        end;
                                        ParamByName('SBCHOICE').AsString := '1';

                                        //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
                                        ExecSQL;

                                   end;
                              end;
                         end;
                    end;
               end;
          except

               on E: Exception do
               begin

                    ShowMessage('[데이터 불러오기 지연]' + E.Message);
               end;

          end;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress + 1;
          Waiter_f.Edit1.Text := IntToStr(StrToint(Waiter_f.Edit1.Text) -
               1);
     end;
     Enabled := True;
     Waiter_f.Free;
     Waiter_f := nil;
end;



procedure TSMS_f.ChoicePostData_MMS;
var
     nRow, i, ii, j: Integer;
     MaxSBcode, s, sm: string;
     sw: widestring;
     ReMemoHospital,
          ReMemoHospital2,
          ReMemoDay,
          ReMemoTime,
          ReMemoMinute,
          ReMemoMonth,
          ReMemoTel,
          ReMemoBankCode,
          ReMemoName: string;

     varContentMem:string;
     checkState : boolean;

begin
     //------------------------------------------------------------------------------
     Application.ProcessMessages;
     Enabled := false;

     Waiter_f := Twaiter_f.Create(application);
     Waiter_f.Top := PnlChoice.Top + 50;

     Waiter_f.Show;
     Application.ProcessMessages;

     Waiter_f.Gauge1.Progress := 0;

     Waiter_f.Gauge1.MaxValue := GrdChoice.RowCount;
     Waiter_f.Edit1.Text := IntToStr(GrdChoice.RowCount);

     Application.ProcessMessages;
     //------------------------------------------------------------------------------

     for i := 0 to GrdChoice.RowCount - 1 do
     begin
          try
               GrdChoice.GetCheckBoxState(1,i,checkState);

               if   checkState = true  then
               begin

                    if GrdChoice.Cells[7, i] <> '' then //일자
                    begin
                         varMonth := Copy(GrdChoice.Cells[7,
                              i], 6, 2);
                         varDay := Copy(GrdChoice.Cells[7,
                              i], 9, 2);
                    end;
                    if GrdChoice.Cells[8, i] <> '' then //시간
                    begin
                         varTime :=
                              HangeulTime(Copy(GrdChoice.Cells[8,
                              i], 1, 2));

                         if configvalue.varSMSConvMin = '1' then
                         begin

                              if (Copy(GrdChoice.Cells[8, i], 4, 2) < '30') then
                                   varMin := HangeulMin('00')
                              else
                                   varMin := HangeulMin('30');
                         end
                         else
                         begin
                              varMin := HangeulMin(Copy(GrdChoice.Cells[8,
                                   i], 4, 2));
                         end;

                    end;


                    //예약체어명칭 설정(예약구간설정)에서 각 구간별 SMS문구를 지정할 수 있다.
                    //지정된 값이 없으면 memContent.text값을 읽어오자...

                    varContentMem:= LoadGubunContent(GrdChoice.Cells[11,
                                   i]);



                    if  trim(varContentMem)= '' then
                         varContentMem:= memContent.text;




                    ReMemoHospital2 := StringReplace(varContentMem,
                         '+aaaa+',
                         HPName, [rfReplaceAll, rfIgnoreCase]);

                    ReMemoHospital := StringReplace(varContentMem,
                         '+aaa+', HPName,
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoDay := StringReplace(RememoHospital, '+dd+',
                         varDay,
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoTime := StringReplace(RememoDay, '+hh+',
                         varTime,
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoMinute := StringReplace(RememoTime, '+mm+',
                         varMin,
                         [rfReplaceAll, rfIgnoreCase]);


                    ReMemoBankCode := StringReplace(RememoMinute,
                         '+xxxx+', '30',
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoMonth := StringReplace(RememoBankcode, '+rr+',
                         varMonth, [rfReplaceAll, rfIgnoreCase]);

                    ReMemoTel := StringReplace(RememoMonth, '+ccc+',
                         TelNo,
                         [rfReplaceAll, rfIgnoreCase]);

                    ReMemoName := StringReplace(RememoTel, '+ddd+',
                         GrdChoice.Cells[3, i],
                         [rfReplaceAll,
                         rfIgnoreCase]);


                    if GrdChoice.Cells[7, i] <> '' then
                    ReMemoName := StringReplace(ReMemoName, '+ee+',       //요일
                        ReturnWeek2(strtodate(GrdChoice.Cells[7, i])),
                         [rfReplaceAll,
                         rfIgnoreCase])
                   else
                    ReMemoName := StringReplace(ReMemoName, '+ee+',
                          '',
                         [rfReplaceAll,
                         rfIgnoreCase]);

                    Sw := ReMemoName;


                    S := ReMemoName;

                {    with dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;

                         Sql.Add('select * from ma_sms_contents');
                         Sql.Add(' where CLASS=:Class and SML_CLASS=:SML_CLASS');
                         Sql.Add('order by SML_CLASS');
                         ParamByName('Class').AsString :=
                              Copy(EdtContNo.Text, 1, 6);
                         ParamByName('SML_Class').AsString :=
                              Copy(EdtContNo.Text, 7,
                              3);
                         Open;
                    end;
                 }
                         sm := Trim(s);

                         with Dm_f.sqlTemp do
                         begin
                              close;
                              sql.clear;
                              sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                              open;
                              MaxSBCode :=
                                   FieldByName('MSBcode').AsString;
                         end;
                         with Dm_f.SqlTemp do
                         begin
                              close;
                              sql.clear;
                              sql.add('select SBChart,SBRegDate from ma_sms_sendlist');
                              Sql.Add('Where (SBChart=:SBChart) and');
                              Sql.Add(' (SBName =:SBName) and');
                              Sql.Add(' (SBRegDate =:SBRegDate) and');
                              Sql.Add(' (SBChoice =:SBChoice) and ');
                              Sql.Add(' (SBSFSMS <>:SBSFSMS) and ');
                              Sql.Add(' (SBMail =:SBMail) and ');
                              Sql.Add(' (SBContent=:SBContent)');

                              //2012.3.22 전화신환이 많은경우 챠트번호들이 다 없다. 따라서 조건식에 이름도 포함

                              ParamByName('SBChart').AsString :=   GrdChoice.Cells[2,   i];
                              ParamByName('SBName').AsString :=  GrdChoice.Cells[3,  i];
                              ParamByName('SBContent').AsString :=  Sm;

                              ParamByName('SBRegDate').AsString :=  FormatDateTime('YYYY-MM-DD',  now);
                              ParamByName('SBCHOICE').AsString :=   '1';
                              ParamByName('SBMail').AsString :=     GrdChoice.Cells[9,  i];
                              ParamByName('SBSFSMS').AsString := '1';
                              //성공하지 않은것만 불러온다.

                              open;

                              if isEmpty then
                              begin

                                   with Dm_f.sqlYeyak do
                                   begin
                                        SQL.Text :=
                                             SQL_INSERT_DATA;
                                        if MaxSBCode <> '' then
                                             ParamByName('SBCODE').AsString := FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                                        else
                                             ParamByName('SBCODE').AsString := '0000000001';
                                        ParamByName('SBChart').AsString := GrdChoice.Cells[2, i];
                                        ParamByName('SBName').AsString := GrdChoice.Cells[3, i];
                                        ParamByName('SBTel').AsString := '';
                                        ParamByName('SBMail').AsString := GrdChoice.Cells[9, i]; //부모핸드폰으로 보내는 경우 구분자생년 월일가 필요
                                        ParamByName('SBHp').AsString := GrdChoice.Cells[6, i];
                                        ParamByName('SBContent').AsString := Sm;
                                        ParamByName('SBRegDate').AsString := FormatDateTime('YYYY-MM-DD', now);
                                        ParamByName('SBZip').AsString := '';
                                        ParamByName('SBAdd').AsString := GrdChoice.Cells[5, i];
                                        ParamByName('SBQty').AsString := '';
                                        ParamByName('SBGroup').AsString := '1';
                                        ParamByName('SBSFSMS').AsString := '';
                                        ParamByName('SBSFMAIL').AsString := '';
                                        ParamByName('SBSFFAX').AsString := '';
                                        ParamByName('SBSFDM').AsString := '';
                                        if CbYeyak.Checked = true then
                                             //예약된거는 1로쓴다.
                                        begin
                                             ParamByName('SBSFRECALL').AsString := '1';
                                             ParamByName('SBSendDate').AsString := formatdatetime('YYYY-MM-DD', YeyakDayEdit.date);
                                             ParamByName('SBSendTime').AsString := cmTime.text + ':' + cmMinute.text;
                                        end
                                        else
                                        begin
                                             ParamByName('SBSFRECALL').AsString := '0';
                                             ParamByName('SBSendDate').AsString := varSendYear + '-' + varSendMonth + '-' + varSendDay;
                                             ParamByName('SBSendTime').AsString := cmTime.text + ':' + cmMinute.text;
                                        end;
                                        ParamByName('SBCHOICE').AsString := '1';

                                        //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
                                        ExecSQL;

                                   end;
                              end;
                         end;
               end;
          except

               on E: Exception do
               begin

                    ShowMessage('[데이터 불러오기 지연]' + E.Message);
               end;

          end;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress + 1;
          Waiter_f.Edit1.Text := IntToStr(StrToint(Waiter_f.Edit1.Text) - 1);
     end;
     Enabled := True;
     Waiter_f.Free;
     Waiter_f := nil;
end;



function TSMS_f.loadGubunContent(varGubun:string):string;
begin

     result:='';
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('Select * from ma_promise_chair ');
          Sql.Add('Where chairno=:chairNo');
          paramByName('chairNo').asString:= varGubun;
          open;
          if not isEmpty then
              result:= fieldByName('smsContent').asString;
     end;
end;



procedure TSMS_f.SendSelectData;
const
      SQL_SELECT_DATA_SMS = 'SELECT SBCode, SBChart,SBName,SBTel,SBMail,     '
          +
          #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL' + #13#10 +
          'FROM ma_sms_sendlist' + #13#10 +
          'where SBRegDate =:SBRegDate and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS' + #13#10
          +
          'order by SBCODE                                        ';
var
    varCountGogek: integer;
begin

     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('Select Count(*) As countGogek from ma_sms_sendlist ');
          Sql.Add('Where SBRegDate=:SBRegDate');
          ParamByName('SBRegDate').AsString := varSendYear + '-' +
               varSendMonth
               +
               '-' + varSendDay;
          Open;
          varCountGogek:= FieldByname('countGogek').AsInteger;
     end;
     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_SMS;
          ParamByName('SBRegDate').AsString := varSendYear + '-' +
               varSendMonth
               +
               '-' + varSendDay;
          ParamByName('SBCHOICE').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1'; //성공하지 않은것만 불러온다.
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Top := PnlChoice.Top + 50;

          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=  varCountGogek;
          Waiter_f.Edit1.Text := inttostr(varCountGogek);

          Application.ProcessMessages;

          grdSMS.removeRows(1, grdSMS.Rowcount -1 );

          grdSMS.ColumnHeaders.Add('' );
          grdSMS.ColumnHeaders.Add('성명' );
          grdSMS.ColumnHeaders.Add('챠트'   );
          grdSMS.ColumnHeaders.Add('핸드폰' );
          grdSMS.ColumnHeaders.Add('전화번호');
          grdSMS.ColumnHeaders.Add('메일'   );
          grdSMS.ColumnHeaders.Add('내용'   );
          grdSMS.ColumnHeaders.Add('등록일' );
          grdSMS.ColumnHeaders.Add('예정일' );
          grdSMS.ColumnHeaders.Add('예정시' );
          grdSMS.ColumnHeaders.Add('주소'   );
          grdSMS.ColumnHeaders.Add('통수'   );
          grdSMS.ColumnHeaders.Add('그룹'   );
          grdSMS.ColumnHeaders.Add('송신여부');
          grdSMS.ColumnHeaders.Add('SbCode' );

          if not IsEmpty then
          begin
               while not EOF do
               begin

                    grdSMS.AddRow; // 그리드에 빈 로우를 추가

                    grdSMS.Cells[1, grdSMS.RowCount - 1] := FieldByName('SBName').AsString;
                    grdSMS.Cells[2, grdSMS.RowCount - 1] := FieldByName('SBChart').AsString;
                    grdSMS.Cells[3, grdSMS.rowcount - 1] := FieldByName('SbHp').AsString;
                    grdSMS.Cells[4, grdSMS.rowcount - 1] := FieldByName('SbTel').AsString;
                    grdSMS.Cells[5, grdSMS.rowcount - 1] := FieldByName('SbMail').AsString;
                    grdSMS.Cells[6, grdSMS.rowcount - 1] := FieldByName('SbContent').AsString;
                    grdSMS.Cells[7, grdSMS.rowcount - 1] := FieldByName('SbRegDate').AsString;
                    grdSMS.Cells[8, grdSMS.rowcount - 1] := FieldByName('SBSendDate').AsString;
                    grdSMS.Cells[9, grdSMS.rowcount - 1] := FieldByName('SBSendTime').AsString;
                    grdSMS.Cells[10, grdSMS.rowcount - 1] := FieldByName('SBAdd').AsString;
                    grdSMS.Cells[11, grdSMS.rowcount - 1] := FieldByName('SBQty').AsString;
                    grdSMS.Cells[12, grdSMS.rowcount - 1] := FieldByName('SBGroup').AsString;
                    grdSMS.Cells[13, grdSMS.rowcount - 1] := FieldByName('SBCHOICE').AsString;
                    grdSMS.Cells[14, grdSMS.rowcount - 1] := FieldByName('SBCODE').AsString;

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress + 1;
                    Waiter_f.Edit1.Text := IntToStr(StrToint(Waiter_f.Edit1.Text) - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
          grdSMS.AutoNumberCol(0);
     end;
end;



procedure Tsms_f.btnDetailClick(Sender: TObject);
begin
     //     LoadSmsList;
end;

procedure Tsms_f.LoadSmsList;
begin
     with pnlChoice do
     begin

          Caption := 'SMS를 전송 할 내역';
          DragKind := dkDock;
          ManualFloat(Rect(350, 430, 1000, 720));
          BringToFront;
     end;

end;

procedure TSMS_f.SendMessage_One(varRecvNoTong: string; varRecvNoGuk: string;
     varRecvNoBun: string; contants: string;  sendKind: integer = 0);
var
     Vtong,
          VGuk,
          VBun,
          VName,
          Vtong2,
          VGuk2,
          VBun2,
          VMem,
          VYDay,
          VYTime,
          VTel, MaxSBCode, SRCodeImsi
          : WideString;
          varRecvNum,              //받는번호
                 varSendNum:string;
begin
     Vtong := '';
     VGuk := '';
     VBun := '';
     VName := '';
     Vtong2 := '';
     VGuk2 := '';
     VBun2 := '';
     VMem := '';
     VTel := EdtSendNo.Text;
     varRecvNum := varRecvNoTong + varRecvNoGuk  + varRecvNoBun;//           //받는번호
     varSendNum:= deldash(Vtel);//


     if contants = '' then
     begin
          showmessage('메시지를 입력하세요.');
          MemContent.setfocus;
          exit;
     end;

     Vtong := varRecvNoTong;
     VGuk := varRecvNoGuk;
     VBun := varRecvNoBun;
     VName := '';
     Vtong2 := SubStr(Vtel, 1, '-');
     VGuk2 := SubStr(Vtel, 2, '-');
     VBun2 := SubStr(Vtel, 3, '-');
     VMem := contants;

     with Dm_f.SqlWork do
     begin
          close;
          sql.clear;
          sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
          open;
          MaxSBCode := FieldByName('MSBcode').AsString;
     end;

     // ma_sms_sendresult 에 SRcode 가 이미 존재하는경우 먼저 삭제한다 by son
     if MaxSBCode <> '' then
          SRCodeImsi :=
               FormatFloat('0000000000', (StrToInt(MaxSBcode)
               + 1))
     else
          SRCodeImsi := '0000000001';

     if Cbyeyak.Checked = False then //예약안된것 '1'인것만 에약된거
     begin
           if  chkSendMMS.Checked then
           begin
                   //MMS전송
                 nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust,
                       varRecvNum,              //받는번호
                       varSendNum,              //보내는번호
                       Trim(copy(Vmem, 1,16)),   //제목
                        Trim(VMem),   //내용
                          '',   //예약시간
                          '',  //파일경로 1
                          '',  //파일경로 2
                          ''); //파일경로 3
           end
           else

           begin
                nRet := main_f.smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust,
                     //strtoint(SRCodeImsi)
                     sCustName,
                     VTong, VGuk, VBun,
                     VName,
                     VTong2, VGuk2, VBun2,
                     Trim(VMem), '00000000', '000000', nRem, nUnCost)
           end ;
     end
     else
     begin
          VYDay := DELDash(FormatDateTime('YYYY-MM-DD', YeyakDayEdit.Date));
          VYTime := CMTime.Text +
               CMMinute.Text + '00';

           if  chkSendMMS.Checked then
           begin
             //MMS전송
                VYDay := DELDash(FormatDateTime('YYYYMMDD', YeyakDayEdit.Date));
                VYTime := CMTime.Text +  CMMinute.Text + '00';
               nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust,
                     varRecvNum,              //받는번호
                     varSendNum,              //보내는번호
                     Trim(copy(Vmem, 1,16)),   //제목
                      Trim(VMem),   //내용
                        VYDay + VYTime,   //예약시간
                        '',  //파일경로 1
                        '',  //파일경로 2
                        ''); //파일경로 3
           end
           else
           begin
          //SMS전송
              nRet := main_f.smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust,
                   sCustName,
                   VTong, VGuk, VBun,
                   VName,
                   VTong2, VGuk2, VBun2,
                   Trim(VMem), VYDay, VYTime, nRem, nUnCost);
                   end;
     end;

     with Dm_f.sqlYeyak do
     begin

          close;
          sql.Clear;
          sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
          ParamByName('SRCODE').AsString := SRCodeImsi;
          ExecSQL;

          close;
          sql.Clear;
          SQL.Text := SQL_INSERT_DATA2;
          //if MaxSBCode <> '' then
          //     ParamByName('SRCODE').AsString :=
          //          FormatFloat('0000000000', (StrToInt(MaxSBcode)
          //          + 1))
          //else
          //     ParamByName('SRCODE').AsString := '0000000001';

          ParamByName('SRCODE').AsString := SRCodeImsi;
          ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD',    now);
          ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
          ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
          ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
          ExecSQL;

          {          SQL.Text := SQL_Update_DATA;
                    if MaxSBCode <> '' then
                         ParamByName('SBCode').AsString :=  FormatFloat('0000000000', (StrToInt(MaxSBcode) + 1))
                    else
                         ParamByName('SBCode').AsString := '0000000001';
                    ParamByName('SBSFSMS').AsString := IntTostr(nRet);

                    if Cbyeyak.Checked = False then //예약안된것 '1'인것만 에약된거
                         ParamByName('SBSFRECALL').AsString := '0'
                    else
                         ParamByName('SBSFRECALL').AsString := '1';

                    ParamByName('SBSendDate').AsString :=
                         FormatDateTime('YYYY-MM-DD', now);
                    ParamByName('SBSendTime').AsString :=
                         FormatDateTime('HH:MM', now);
                    ExecSQL;
          }
     end;

     //  postdata_alone(SubStr(grdSendList.Cells[1, i], 2, '-'),
     //         SubStr(grdSendList.Cells[1, i], 3, '-'),
     //         SubStr(grdSendList.Cells[1, i], 1, '-'));

          postdata_alone(varRecvNoTong, varRecvNoGuk, varRecvNoBun);
    if sendKind= 0 then
    begin
     if nRet = 1 then
     begin
          Showmessage('메시지를 전송하였습니다.');

     end
     else
          Showmessage('메시지전송에 실패하였습니다.');
    end;
end;

procedure TSMS_f.PostData_alone(varRecvNoTong: string; varRecvNoGuk: string;
     varRecvNoBun: string); //혼자보내는 고객에 대한 발송정보를 저장한다.
var
     MaxSBcode: string;
begin

     with Dm_f.SqlWork do
     begin
          close;
          sql.clear;
          sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
          open;
          MaxSBCode := FieldByName('MSBcode').AsString;
     end;

     with Dm_f.SqlWork do
     begin
          SQL.Text := SQL_INSERT_DATA;
          if MaxSBCode <> '' then
               ParamByName('SBCODE').AsString :=
                    FormatFloat('0000000000', (StrToInt(MaxSBcode)
                    + 1))
          else
               ParamByName('SBCODE').AsString := '0000000001';
          ParamByName('SBChart').AsString := '';
          ParamByName('SBName').AsString := '';
          ParamByName('SBTel').AsString := '';
          ParamByName('SBMail').AsString := '';
          ParamByName('SBHp').AsString := varRecvNoTong + '-' + varRecvNoGuk
               + '-' + varRecvNoBun;
          ParamByName('SBContent').AsString := memContent.Text;
          ParamByName('SBRegDate').AsString :=
               FormatDateTime('YYYY-MM-DD', now);
          ParamByName('SBZip').AsString := '';
          ParamByName('SBAdd').AsString := '';
          ParamByName('SBQty').AsString := '';
          ParamByName('SBGroup').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1';
          ParamByName('SBSFMAIL').AsString := '';
          ParamByName('SBSFFAX').AsString := '';
          ParamByName('SBSFDM').AsString := '';
          if CbYeyak.Checked = true then //예약된거는 1로쓴다.
          begin
               ParamByName('SBSFRECALL').AsString := '1';
               ParamByName('SBSendDate').AsString :=
                    formatdatetime('YYYY-MM-DD', YeyakDayEdit.date);
               ParamByName('SBSendTime').AsString := CmTime.Text
                    +
                    ':' + CmMinute.Text;
          end
          else
          begin
               ParamByName('SBSFRECALL').AsString := '0';
               ParamByName('SBSendDate').AsString :=
                    ForMatDateTime('YYYY-MM-DD',
                    now);
               ParamByName('SBSendTime').AsString := CmTime.Text
                    +
                    ':' + CmMinute.Text;
          end;
          ParamByName('SBCHOICE').AsString := '1';
          //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL
          ExecSQL;

     end;
end;

procedure Tsms_f.btnSendClick(Sender: TObject);
var
     i: integer;
     nLastmoney: integer;
     nTotalPrice: integer;
     nPerPrice: integer;
     nPermitCount: integer;
     nLeftCount: integer;
     syn: widestring;
     a: olevariant;
     contants: array of string;
     j, ii, k: integer;
     s, sm: string;
begin

     SetLength(contants, 100);

     smsLogin;

{
     nRet := main_f.smscallmsg1.CashCheck(Vid, VPass, sCust, '1', nTotalPrice,
          nPerPrice,
          sYn, nPermitCount, nLeftCount);

     //     LblRest.Caption :=
     //          '총금액' + FormatFloat('###,###,###,##0', nTotalPrice) +
     //          '건당금액' + FormatFloat('###,###,###,##0', nPerPrice) +
     //     '사용허용건수' + FormatFloat('###,###,###,##0', nPermitCount)+
     //     '사용가능건수' + FormatFloat('###,###,###,##0', nLeftCount)+
     //     '사용가능건수' + FormatFloat('###,###,###,##0', nTotalPrice / nPerPrice);
     if nRet = 1 then
          nLastmoney := nTotalPrice div nPerPrice
     else
     begin
          showmessage('연결오류.'+#10#13+ inttostr(nRet));
          exit;
     end;
     //showmessage(inttostr(nLastmoney));
     if grdsms.rowcount > nLastMoney then
     begin

          if Application.MessageBox(pchar('전송가능한 SMS건수가 ' +
               inttostr(grdsms.rowcount - nLastmoney) + '건' + #10#13 +
               '부족합니다.' + #10#13 +
               '충전 후 전송하시겠습니까?(YES)' + #10#13 +
               '그래도 전송하시겠습니까?(NO)'),
               '포인트 부족 확인', MB_YESNO) = IDYES then
          begin
               if not Assigned(SmsUrl_f) then
                    SmsUrl_f := TSmsUrl_f.Create(application);
               SmsUrl_f.Caption := '사이버머니충전';
               SmsUrl_f.Show;
               if configvalue.varSmsCustkind = '0' then
                    SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/infomedi/cash.asp?usercode=' +
                         vId, a, a, a, a)
               else
                    SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/gildata/cash.asp?usercode=' +
                         vId, a, a, a, a);

               exit;
          end
          else
          begin
          end;
     end;

}


     s := MemContent.text;

     if length(s) > 90 then
     begin

        if chkSendMMS.Checked =false then
        begin
          ii := (Length(S) div 90);
          if
               Application.MessageBox(PChar('메시지가 ' + inttostr(ii + 1)
               + '건으로 전송됩니다.' + #10#13 +
               '나누어 전송하시겠습니까?' + #10#13 +
               '그렇지 않으면 LMS로 전송됩니다.'),
               '나누어 전송 확인', MB_YESNO) =
               IDYES then
          begin

               for j := 0 to ii do
               begin
                    contants[j] := Trim(Copy_hangul(Trim(s), (90 * j) +
                         1,
                         90));
                    //  showmessage( contants[j]);
               // 45자씩 자르기
               end;

          end
          else
          begin


               MemContent.setfocus;
               exit;

          end;

       end
       else
       begin

           contants[0] := Trim(s);

       end;
     end
     else
     begin
          contants[0] := Trim(s);

     end;





     //그리드내용 개별 전송
//     grdSendList.Post;


     if grdSendList.Cells[2, 1]  <> '' then
     begin

       try
          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue := grdSendList.rowcount;
          Waiter_f.Edit1.Text :=  inttostr(  grdSendList.rowcount);

          Application.ProcessMessages;


          for i := 1 to grdSendList.rowcount - 1 do
          begin
               if grdSendList.Cells[2, i]  <> '' then
               begin

                    if (SubStr(grdSendList.Cells[2, i] , 1, '-')
                         <> '')
                         and
                         (SubStr(grdSendList.Cells[2, i] , 2,
                         '-') <>
                         '') and
                         (SubStr(grdSendList.Cells[2, i] , 3,
                         '-') <>
                         '') then
                    begin

                         if cbYeyak.checked = false then
                         begin
                              if checkBox1.Checked then //메시지 전송여부 묻지지 않기
                              begin





                                     if  chkSendMMs.Checked = false then
                                     begin
                                               for k := 0 to ii do
                                               begin
                                                    sm := contants[k];
                                                     sm:=   StringReplace(sm, '+ddd+',
                                                       grdSendList.Cells[1, i],
                                                       [rfReplaceAll,
                                                       rfIgnoreCase]);
                                                    SendMessage_One(SubStr(grdSendList.Cells[2,
                                                         i] , 1,
                                                              '-'),
                                                         SubStr(grdSendList.Cells[2,
                                                         i] , 2,
                                                              '-'),
                                                         SubStr(grdSendList.Cells[2,
                                                         i] , 3,
                                                              '-'),
                                                         sm,
                                                         1);
                                               end;
                                      end
                                      else
                                      begin


                                            sm := contants[0];
                                            sm:=   StringReplace(sm, '+ddd+',
                                                       grdSendList.Cells[1, i],
                                                       [rfReplaceAll,
                                                       rfIgnoreCase]);

                                            SendMessage_One(SubStr(grdSendList.Cells[2,
                                                 i] , 1,
                                                      '-'),
                                                 SubStr(grdSendList.Cells[2,
                                                 i] , 2,
                                                      '-'),
                                                 SubStr(grdSendList.Cells[2,
                                                 i] , 3,
                                                      '-'),
                                                 sm,
                                                 1);


                                       end;



                                   ViewRestMoney;


                              end
                              else
                              begin
                                        if Application.MessageBox(PChar(
                                             SubStr(grdSendList.Cells[2, i] , 1,
                                                  '-') + '-' +
                                             SubStr(grdSendList.Cells[2,
                                             i] , 2,
                                                  '-') + '-' +
                                             SubStr(grdSendList.Cells[2,
                                             i] , 3,
                                                  '-') + '님에게' + #10#13
                                             +
                                             '<' +
                                             StringReplace(MemContent.Text, '+ddd+',
                                                       grdSendList.Cells[1, i],
                                                       [rfReplaceAll,
                                                       rfIgnoreCase]) + '>' +
                                             '내용을 <즉시> 전송하시겠습니까?'),
                                             '즉시전송확인', MB_YESNO) =
                                             IDYES then
                                        begin

                                             if  chkSendMMs.Checked = false then
                                             begin
                                                       for k := 0 to ii do
                                                       begin
                                                            sm := contants[k];
                                                            sm:=   StringReplace(sm, '+ddd+',
                                                                     grdSendList.Cells[1, i],
                                                                     [rfReplaceAll,
                                                                     rfIgnoreCase]);
                                                            SendMessage_One(SubStr(grdSendList.Cells[2,
                                                                 i] , 1,
                                                                      '-'),
                                                                 SubStr(grdSendList.Cells[2,
                                                                 i] , 2,
                                                                      '-'),
                                                                 SubStr(grdSendList.Cells[2,
                                                                 i] , 3,
                                                                      '-'),
                                                                 sm,
                                                                 1);
                                                       end;
                                              end
                                              else
                                              begin


                                                    sm := contants[0];
                                                    sm:=   StringReplace(sm, '+ddd+',
                                                       grdSendList.Cells[1, i],
                                                       [rfReplaceAll,
                                                       rfIgnoreCase]);
                                                    SendMessage_One(SubStr(grdSendList.Cells[2,
                                                         i] , 1,
                                                              '-'),
                                                         SubStr(grdSendList.Cells[2,
                                                         i] , 2,
                                                              '-'),
                                                         SubStr(grdSendList.Cells[2,
                                                         i] , 3,
                                                              '-'),
                                                         sm,
                                                         1);


                                               end;

                                        end

                                        else

                                             ViewRestMoney;


                              end;

                         end
                         else
                         begin
                              if
                                   Application.MessageBox(Pchar('선택하신 모든 내용을'
                                   + formatDateTime('YYYY-MM-DD',
                                   YeyakDayEdit.Date) +
                                   '일 '
                                   + CmTime.text
                                   + '시 '
                                   + cmMinute.text
                                   + '분에 '
                                   + '<예약> 전송하시겠습니까?'),
                                   '예약전송확인',
                                   MB_YESNO) = IDYES then
                              begin

                                 if ChkSendMMs.Checked = false then
                                 begin
                                   for k := 0 to ii do
                                   begin
                                        sm := contants[k];
                                         sm:=   StringReplace(sm, '+ddd+',
                                                       grdSendList.Cells[1, i],
                                                       [rfReplaceAll,
                                                       rfIgnoreCase]);
                                        SendMessage_One(SubStr(grdSendList.Cells[2,
                                             i] , 1,
                                                  '-'),
                                             SubStr(grdSendList.Cells[2,
                                             i] , 2,
                                                  '-'),
                                             SubStr(grdSendList.Cells[2,
                                             i] , 3,
                                                  '-'),
                                             sm,
                                             1);
                                   end;
                                 end
                                 else
                                 begin
                                         sm := contants[0];
                                          sm:=   StringReplace(sm, '+ddd+',
                                                       grdSendList.Cells[1, i],
                                                       [rfReplaceAll,
                                                       rfIgnoreCase]);
                                        SendMessage_One(SubStr(grdSendList.Cells[2,
                                             i] , 1,
                                                  '-'),
                                             SubStr(grdSendList.Cells[2,
                                             i] , 2,
                                                  '-'),
                                             SubStr(grdSendList.Cells[2,
                                             i] , 3,
                                                  '-'),
                                             sm,
                                             1);
                                 end;
                              end

                              else

                                   ViewRestMoney;

                         end;
                    end;

               end;

          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress + 1;
          Waiter_f.Edit1.Text :=
               IntToStr(StrToint(Waiter_f.Edit1.Text)   - 1);
          end;
       finally


               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;

       end;

     end
     else
     begin
          //검색된 내용 즉시전송

          if cbYeyak.Checked = false then
          begin
               if grdSms.RowCount > 0 then

               begin
                    if
                         Application.MessageBox('선택하신 모든 내용을 <즉시> 전송하시겠습니까?',
                         '즉시전송확인', MB_YESNO) = IDYES then
                         SendMessage_All
                    else
                         exit;
                    ViewRestMoney;

               end;
          end
          else
          begin

               //검색된 내용 예약 전송

               if CmTime.text > '24' then
                    exit;

               if grdSms.RowCount > 0 then
               begin
                    if
                         Application.MessageBox(Pchar('선택하신 모든 내용을'
                         + formatDateTime('YYYY-MM-DD',
                         YeyakDayEdit.Date) +
                         '일 '
                         + CmTime.text
                         + '시 '
                         + cmMinute.text
                         + '분에 '
                         + '<예약> 전송하시겠습니까?'),
                         '예약전송확인',
                         MB_YESNO) = IDYES then
                         SendMessage_All
                    else
                         exit;
                    ViewRestMoney;
               end;

          end;
     end;

end;


{
procedure TSMS_f.SendMessage_All;
var
     Vtong,
          VGuk,
          VBun,
          VName,
          Vtong2,
          VGuk2,
          VBun2,
          VMem,
          VYDay,
          VYTime,
          VTel
          : WideString;
     vMember: WideString;
     i: integer;
begin
     i := 0;
     Vtong := '';
     VGuk := '';
     VBun := '';
     VName := '';
     Vtong2 := '';
     VGuk2 := '';
     VBun2 := '';
     VMem := '';
     VTel := EdtSendNo.Text;

     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('Select Count(*) As countGogek from ma_sms_sendlist ');
          Sql.Add('Where SBSendDate=:SBSendDate and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS');
          ParamByName('SBSendDate').AsString := ForMatDateTime('YYYY-MM-DD',
               now);
          //          ParamByName('SBSendDate').AsString := varSendYear + '-' + varSendMonth + '-' + varSendDay;
          ParamByName('SBCHOICE').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1';
          //성공하지 않은것만 불러온다.
          Open;
     end;

     with DM_f.SqlTemp, grdSms do
     begin
          Close;
          Sql.Clear;
          Clear; // RealGrid.Clear;
          SQL.Text := SQL_SELECT_DATA_SMS;
          //          ParamByName('SBRegDate').AsString := ForMatDateTime('YYYY-MM-DD', now);
          ParamByName('SBREGDate').AsString := varSendYear + '-' +
               varSendMonth
               +
               '-' + varSendDay;
          ParamByName('SBCHOICE').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1';
          //성공하지 않은것만 불러온다.'1'은 성공한것

          Open;

          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    Vtong := SubStr(FieldByName('SBHp').AsString, 1,
                         '-');
                    VGuk := SubStr(FieldByName('SBHp').AsString, 2,
                         '-');
                    VBun := SubStr(FieldByName('SBHp').AsString, 3,
                         '-');
                    VName := FieldByName('SBName').AsString;
                    Vtong2 := SubStr(Vtel, 1, '-');
                    VGuk2 := SubStr(Vtel, 2, '-');
                    VBun2 := SubStr(Vtel, 3, '-');
                    VMem := FieldByName('SBContent').AsString;
                    if FieldByName('SBCode').AsString <> '' then
                         vmember := FieldByName('SBCode').AsString
                    else
                         vMember := '1';
                    //                    if FieldByName('SBSFRECALL').AsString = '0' then
                    if cbYeyak.Checked = false then
                    begin

                         //예약안된것 '1'인것만 에약된거
                         nRet := main_f.smscallmsg1.SMSSendUnit(1,
                              VId, sCustName,
                              sCust,
                              sCustName,
                              VTong, VGuk, VBun,
                              VName,
                              VTong2, VGuk2, VBun2,
                              Trim(VMem), '00000000', '000000',
                              nRem, nUnCost);
                         if nRet = 1 then
                         begin
                              i := i + 1;
                         end;

                         with Dm_f.sqlYeyak do
                         begin
                              // ma_sms_sendresult 에 SRcode 가 이미 존재하는경우 먼저 삭제한다 by son
                              close;
                              sql.Clear;
                              sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
                              ParamByName('SRCODE').AsString :=
                                   DM_f.SqlTemp.FieldByName('SBCode').AsString;
                              ExecSQL;

                              close;
                              sql.Clear;

                              SQL.Text := SQL_INSERT_DATA2;
                              ParamByName('SRCode').AsString :=
                                   DM_f.SqlTemp.FieldByName('SBCode').AsString;
                              ParamByName('SRDate').AsString :=
                                   FormatDateTime('YYYY-MM-DD',
                                   now);
                              ParamByName('SRTime').AsString :=
                                   '00' + ':' + '00';
                              ParamByName('SRResult').AsString :=
                                   IntTostr(nRet2);
                              //Login
                              ParamByName('SRResult2').AsString :=
                                   IntTostr(nRet);
                              //Send
                              ExecSQL;
                         end;
                         with Dm_f.sqlYeyak do
                         begin
                              SQL.Text := SQL_Update_DATA;
                              ParamByName('SBCode').AsString :=
                                   DM_f.SqlTemp.FieldByName('SBCode').AsString;
                              ParamByName('SBSFSMS').AsString :=
                                   IntTostr(nRet);
                              ParamByName('SBSFRECALL').AsString :=
                                   '0';
                              ParamByName('SBSendDate').AsString :=
                                   FormatDateTime('YYYY-MM-DD',
                                   now);
                              ParamByName('SBSendTime').AsString :=
                                   FormatDateTime('HH:MM', now);

                              ExecSQL;
                         end;

                    end
                    else
                    begin
                         VYDay := DELDash(FormatDateTime('YYYY-MM-DD',
                              YeyakDayEdit.Date));
                         VYTime := CMTime.Text +
                              CMMinute.Text + '00';

                         nRet := main_f.smscallmsg1.SMSSendUnit(1,
                              VId, sCustName,
                              sCust,
                              sCustName,
                              VTong, VGuk, VBun,
                              VName,
                              VTong2, VGuk2, VBun2,
                              Trim(VMem), VYDay, VYTime, nRem,
                              nUnCost);
                         if nRet = 1 then
                         begin
                              i := i + 1;
                         end;

                         with Dm_f.sqlYeyak do
                         begin
                              // ma_sms_sendresult 에 SRcode 가 이미 존재하는경우 먼저 삭제한다 by son
                              close;
                              sql.Clear;
                              sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
                              ParamByName('SRCODE').AsString :=
                                   DM_f.SqlTemp.FieldByName('SBCode').AsString;
                              ExecSQL;

                              close;
                              sql.Clear;

                              SQL.Text := SQL_INSERT_DATA2;
                              ParamByName('SRCode').AsString :=
                                   DM_f.SqlTemp.FieldByName('SBCode').AsString;
                              ParamByName('SRDate').AsString :=
                                   FormatDateTime('YYYY-MM-DD',
                                   YeyakDayEdit.Date);
                              ParamByName('SRTime').AsString :=
                                   CMTime.Text + ':' +
                                   CMMinute.Text;
                              ParamByName('SRResult').AsString :=
                                   IntTostr(nRet2);
                              //Login
                              ParamByName('SRResult2').AsString :=
                                   IntTostr(nRet);
                              //Send
                              ExecSQL;
                         end;

                         with Dm_f.sqlYeyak do
                         begin
                              SQL.Text := SQL_Update_DATA;
                              ParamByName('SBCode').AsString :=
                                   DM_f.SqlTemp.FieldByName('SBCode').AsString;
                              ParamByName('SBSFSMS').AsString :=
                                   IntTostr(nRet);
                              ParamByName('SBSFRECALL').AsString :=
                                   '1';
                              ParamByName('SBSendDate').AsString :=
                                   FormatDateTime('YYYY-MM-DD',
                                   now);

                              //                                   formatdatetime('YYYY-MM-DD', YeyakDayEdit.date);
                              ParamByName('SBSendTime').AsString :=
                                   FormatDateTime('HH:MM', now);

                              //                              CmTime.Text   +  ':' + CmMinute.Text;

                              ExecSQL;
                         end;
                    end;

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;

          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;

          end;
     end;
end;
}

procedure TSMS_f.SendMessage_All;
const
     SQL_UPDATE_DATA = 'UPDATE ma_sms_sendlist SET ' + #13#10 +
          '                    SBSFSMS  = :SBSFSMS, SBSFRECALL=:SBSFRECALL,' + #13#10
          +
          '                    SBSENDDATE  = :SBSENDDATE, SBSENDTIME=:SBSENDTIME' + #13#10
          +
          '              WHERE SBCode=:SBCode';


var
     Vtong,
          VGuk,
          VBun,
          VName,
          Vtong2,
          VGuk2,
          VBun2,
          VMem,
          VYDay,
          VYTime,
          VTel
          : WideString;
     vMember: WideString;
     i, j, SendFail: integer;
begin
     i:=0;
      j := 0;
      sendFail:=0;
     Vtong := '';
     VGuk := '';
     VBun := '';
     VName := '';
     Vtong2 := '';
     VGuk2 := '';
     VBun2 := '';
     VMem := '';
     VTel := EdtSendNo.Text;
//     varRecvNum := varRecvNoTong + varRecvNoGuk  + varRecvNoBun;//           //받는번호
//     varSendNum:= deldash(Vtel);//


    { with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('Select Count(*) As countGogek from ma_sms_sendlist ');
          Sql.Add('Where SBSendDate=:SBSendDate and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS');
          ParamByName('SBSendDate').AsString := ForMatDateTime('YYYY-MM-DD',
               now);
          //          ParamByName('SBSendDate').AsString := varSendYear + '-' + varSendMonth + '-' + varSendDay;
          ParamByName('SBCHOICE').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1';
          //성공하지 않은것만 불러온다.
          Open;
     end;
     }


     try
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue := grdSms.rowcount;
          Waiter_f.Edit1.Text :=  inttostr( grdSms.rowcount);

          Application.ProcessMessages;

          for j:= 0 to grdSms.RowCount - 1 do
          begin

                    Vtong := SubStr(grdsms.Cells[2,j], 1,
                         '-');
                    VGuk := SubStr(grdsms.Cells[2,j], 2,
                         '-');
                    VBun := SubStr(grdsms.Cells[2,j], 3,
                         '-');
                    VName := grdsms.Cells[0,j];
                    Vtong2 := SubStr(Vtel, 1, '-');
                    VGuk2 := SubStr(Vtel, 2, '-');
                    VBun2 := SubStr(Vtel, 3, '-');
                    VMem := grdsms.Cells[5,j];

                    vMember := '1';


                    if cbYeyak.Checked = false then //예약전송이 아닌것
                    begin

                         //예약 안된것 '1'인것만 에약된거
                        if chkSendMMS.checked = false then
                        begin
                               nRet := main_f.smscallmsg1.SMSSendUnit(1,
                                    VId, sCustName,
                                    sCust,
                                    sCustName,
                                    VTong, VGuk, VBun,
                                    VName,
                                    VTong2, VGuk2, VBun2,
                                    Trim(VMem),
                                    '00000000', '000000',
                                    nRem, nUnCost);
                        end
                        else
                        begin

                             if length(Trim(VMem)) > 90 then
                                   nRet := main_f.smscallmsg1.MMSSend('1',
                                   VId, sCust,
                                   VTong+ VGuk+ VBun,              //받는번호
                                   VTong2+ VGuk2+ VBun2,              //보내는번호
                                   Trim(copy(Vmem, 1,16)),   //제목
                                   Trim(VMem),   //내용
                                      '',   //예약시간
                                      '',  //파일경로 1
                                      '',  //파일경로 2
                                      '') //파일경로 3

                              else  //90byte  를 넘지 않으면 SMS로 전송 한다.
                                 nRet := main_f.smscallmsg1.SMSSendUnit(1,
                                    VId, sCustName,
                                    sCust,
                                    sCustName,
                                    VTong, VGuk, VBun,
                                    VName,
                                    VTong2, VGuk2, VBun2,
                                    Trim(VMem),
                                    '00000000', '000000',
                                    nRem, nUnCost);

                        end;



                         if nRet = 1 then
                         begin
                              i := i + 1;
                         end
                         else
                         begin


                              sendFail:=   sendFail + 1 ;


                         end;
                          with Dm_f.sqlYeyak do
                         begin
                              // ma_sms_sendresult 에 SRcode 가 이미 존재하는경우 먼저 삭제한다 by son
                              close;
                              sql.Clear;
                              sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
                              ParamByName('SRCODE').AsString :=
                                   grdsms.Cells[13,j];
                              ExecSQL;

                              close;
                              sql.Clear;

                              SQL.Text := SQL_INSERT_DATA2;
                              ParamByName('SRCode').AsString := grdsms.Cells[13,j];
                              ParamByName('SRDate').AsString :=    FormatDateTime('YYYY-MM-DD',    now);
                              ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
                                 //  '00' + ':' + '00';
                              ParamByName('SRResult').AsString :=    IntTostr(nRet2);
                              //Login
                              ParamByName('SRResult2').AsString :=  IntTostr(nRet);
                              //Send
                              ExecSQL;
                         end;


                         with Dm_f.sqlYeyak do
                         begin
                              SQL.Text := SQL_Update_DATA;
                              ParamByName('SBCode').AsString :=   grdsms.Cells[13,j];
                              ParamByName('SBSFSMS').AsString :=   IntTostr(nRet);
                              ParamByName('SBSFRECALL').AsString :=      '0';
                              ParamByName('SBSendDate').AsString :=   FormatDateTime('YYYY-MM-DD',    now);
                              ParamByName('SBSendTime').AsString :=   FormatDateTime('HH:MM', now);

                              ExecSQL;
                         end;

                    end
                    else
                    begin   //예약전송
                         VYDay := DELDash(FormatDateTime('YYYY-MM-DD',   YeyakDayEdit.Date));
                         VYTime := CMTime.Text + CMMinute.Text + '00';

                         if chkSendMMS.checked = false then
                         begin

                              nRet := main_f.smscallmsg1.SMSSendUnit(1,
                                  VId, sCustName,
                                  sCust,
                                  sCustName,
                                  VTong, VGuk, VBun,
                                  VName,
                                  VTong2, VGuk2, VBun2,
                                  Trim(VMem), VYDay, VYTime, nRem,
                                  nUnCost);



                                  
                         end
                         else
                         begin
                               if length(trim(Vmem)) > 90 then
                                     nRet := main_f.smscallmsg1.MMSSend('1',
                                         VId, sCust,
                                         VTong+ VGuk+ VBun,              //받는번호
                                         VTong2+ VGuk2+ VBun2,              //보내는번호
                                         Trim(copy(Vmem, 1,16)),   //제목
                                         Trim(VMem),   //내용
                                         VYDay + VYTime,   //예약시간
                                            '',  //파일경로 1
                                            '',  //파일경로 2
                                            '') //파일경로 3
                                else  //90byte  를 넘지 않으면 SMS로 전송 한다.
                                     //  nRet := main_f.smscallmsg1.SMSSendUnit(1,
                                     //     VId, sCustName,
                                     //     sCust,
                                     //     sCustName,
                                     //     VTong, VGuk, VBun,
                                     //     VName,
                                     //     VTong2, VGuk2, VBun2,
                                     //     Trim(VMem),
                                     //     '00000000', '000000',
                                     //     nRem, nUnCost);
                                      nRet := main_f.smscallmsg1.SMSSendUnit(1,
                                            VId, sCustName,
                                            sCust,
                                            sCustName,
                                            VTong, VGuk, VBun,
                                            VName,
                                            VTong2, VGuk2, VBun2,
                                            Trim(VMem), VYDay, VYTime, nRem,
                                            nUnCost);
                         end;

                         if nRet = 1 then
                         begin
                              i := i + 1;
                         end
                         else
                         begin


                              sendFail:=   sendFail + 1 ;


                         end;

                         with Dm_f.sqlYeyak do
                         begin
                              // ma_sms_sendresult 에 SRcode 가 이미 존재하는경우 먼저 삭제한다 by son
                              close;
                              sql.Clear;
                              sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
                              ParamByName('SRCODE').AsString :=
                                   grdsms.Cells[13,j];
                              ExecSQL;

                              close;
                              sql.Clear;

                              SQL.Text := SQL_INSERT_DATA2;
                              ParamByName('SRCode').AsString :=     grdsms.Cells[13,j];
                              ParamByName('SRDate').AsString :=      FormatDateTime('YYYY-MM-DD',  YeyakDayEdit.Date);
                              ParamByName('SRTime').AsString :=  CMTime.Text + ':' +  CMMinute.Text;
                              ParamByName('SRResult').AsString :=    IntTostr(nRet2);   //Login
                              ParamByName('SRResult2').AsString :=   IntTostr(nRet);  //Send
                              ExecSQL;
                         end;

                         with Dm_f.sqlYeyak do
                         begin
                              SQL.Text := SQL_Update_DATA;
                              ParamByName('SBCode').AsString :=  grdsms.Cells[13,j];
                              ParamByName('SBSFSMS').AsString :=    IntTostr(nRet);
                              ParamByName('SBSFRECALL').AsString :=     '1';
                              ParamByName('SBSendDate').AsString := formatdatetime('YYYY-MM-DD',now); //formatdatetime('YYYY-MM-DD', YeyakDayEdit.date);
                              ParamByName('SBSendTime').AsString := formatdatetime('HH:MM',now);// CmTime.Text   +  ':' + CmMinute.Text;

                              ExecSQL;
                         end;
                    end;

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;

               if SendFail > 0 then
               begin

                         showmessage('전송실패한 메시지가 '+inttostr( sendFail) +' 건 있습니다.'+#10#13+'결과창에서 확인하십시오.');

                         if not assigned(SmsResult_f) then
                         begin
                              SmsResult_f := TSmsResult_f.Create(Application);
                              SmsResult_f.ShowModal;
                         end
                         else
                         begin
                              SmsResult_f.ShowModal;
                         end;

               end;
      finally
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
      end;

end;


procedure TSMS_f.ViewRestMoney;
var
     sYn: widestring;
     nTotalPrice,
          nPerPrice,
          nPermitCount,
          nLeftCount: integer;
begin

     nRet := main_f.smscallmsg1.CashCheck(Vid, VPass, sCust, '1', nTotalPrice,
          nPerPrice,
          sYn, nPermitCount, nLeftCount);

     //     LblRest.Caption :=
     //          '총금액' + FormatFloat('###,###,###,##0', nTotalPrice) +
     //          '건당금액' + FormatFloat('###,###,###,##0', nPerPrice) +
     //     '사용허용건수' + FormatFloat('###,###,###,##0', nPermitCount)+
     //     '사용가능건수' + FormatFloat('###,###,###,##0', nLeftCount)+
     //     '사용가능건수' + FormatFloat('###,###,###,##0', nTotalPrice / nPerPrice);
     if (nTotalPrice <> 0) and (nPerPrice <> 0) then
          LblRest.Caption := FormatFloat('###,###,###,##0',
               nTotalPrice / nPerPrice)
     else
          LblRest.Caption := '0'

end;

procedure Tsms_f.lblLoginClick(Sender: TObject);
begin
     SMSLOGIN;
end;

procedure TSMS_f.SMSLOGIN;
var
     Vtong,
          VGuk,
          VBun,
          VName,
          Vtong2,
          VGuk2,
          VBun2,
          VMem
          : WideString;
begin
     Vtong := '';
     VGuk := '';
     VBun := '';
     VName := '';
     Vtong2 := '';
     VGuk2 := '';
     VBun2 := '';
     VMem := '';

     nRet2 :=
          main_f.smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName,
      //      main_f.smscallmsg1.SMSLogin('brace', 'ha8743', sCust, sCustName,
          sReqTel1, sReqtel2,
          sReqtel3, nRem, nUnCost);

     //     LblRest.Caption := '"잔액 : "' +
     //          FormatFloat('###,###,###,##0', nRem) +
     //          '원 , 사용가능건수 : '
     //          + FormatFloat('###,###,###,##0', nRem / nUnCost) + '"건"';

{     if (nRem > 0) and (nUncost > 0) then
          LblRest.Caption := FormatFloat('###,###,###,##0', nRem /
               nUnCost) + ' 건'
     else
          Showmessage('사용자 등록을 확인하십시오.');
}
     viewRestMoney;

end;

procedure Tsms_f.Label2Click(Sender: TObject);
begin
     ViewRestMoney;
end;

procedure Tsms_f.lblChargeClick(Sender: TObject);

var
     a: olevariant;
     varurl: string;
begin

     {  if not Assigned(SmsUrl_f) then
              SmsUrl_f := TSmsUrl_f.Create(application);
       SmsUrl_f.Caption := '사이버머니충전';
       SmsUrl_f.Show;
                    if  configvalue.varSmsCustkind = '0'  then
       SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/infomedi/cash.asp?usercode=' +
              vId, a, a, a, a)
              else
       SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/gildata/cash.asp?usercode=' +
              vId, a, a, a, a);
      }

     if configvalue.varSmsCustkind = '0' then
     begin
          varUrl := 'http://smscorp.surem.com/client/infomedi/cash.asp?usercode=' + vid;
          ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), pchar(varUrl), nil, SW_SHOWNORMAL);

     end
     else
     begin
          varUrl := 'http://smscorp.surem.com/client/gildata/cash.asp?usercode=' + vid;
          ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), pchar(varUrl), nil, SW_SHOWNORMAL);
     end;

end;

procedure Tsms_f.Label1Click(Sender: TObject);
var
     a: olevariant;

begin

     if not Assigned(SmsUrl_f) then
          SmsUrl_f := TSmsUrl_f.Create(application);
     SmsUrl_f.Caption := 'SMS(단문메시지) 전송결과조회';
     SmsUrl_f.Show;
     if configvalue.varSmsCustkind = '0' then

          SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/infomedi/result.asp?usercode=' +
               vId, a, a, a, a)
     else
          SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/gildata/result.asp?usercode=' +
               vId, a, a, a, a);

end;

procedure Tsms_f.btnAutosetClick(Sender: TObject);
begin
     LoadAutosaveSet;
     Pnlautosend.left := 126;
     Pnlautosend.top := 67;

     Pnlautosend.Visible := not Pnlautosend.Visible;
end;

procedure TSMS_f.SmsSelectData3(varChart: string);
begin

     with DM_f.sqlTemp do
     begin
          Close;
          Sql.Clear;

          SQL.Text := SQL_SELECT_DATA_CHART;
          ParamByName('SMS').AsString := '0';
          ParamByName('Chart').AsString := varChart;
          Open;

          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                     grdChoice.AddRow;
                     grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                     grdChoice.Cells[2,  grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                     grdChoice.Cells[3,  grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    if (FieldByName('Jumin').AsString <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 1, 2) <> '')
                         and
                         (Copy(trim(delspace(Deldash(FieldByName('Jumin').AsString))), 7, 1) <> '') then
                          grdChoice.Cells[4,  grdChoice.RowCount - 1] :=
                              naiCalc(trim(Deldash(delspace(FieldByName('Jumin').AsString))))
                    else
                          grdChoice.Cells[4,  grdChoice.RowCount - 1] := '0';

                     grdChoice.Cells[5,  grdChoice.RowCount - 1] :=
                         Trim(Dm_f.sqlTemp.FieldByName('h_juso').AsString);
                     grdChoice.Cells[6,  grdChoice.RowCount - 1] :=
                         FieldByName('C_phone').AsString;
                    next;
               end;
               Enabled := True;
          end
          else
          begin
               Enabled := True;
          end;
     end;
     grdChoice.AutoNumberCol(0);
end;

procedure Tsms_f.btnHPClick(Sender: TObject);
var
     i: integer;
     phoneNumber : string;
     donotSend : string;
     patientName : string;
begin


     listbox1.Items.clear;


     with GrdChoice do
     begin
          for i := 1 to RowCount - 1 do
          begin
              { if (length(Cells[5, i]) > 8) then
               begin
                    if  (i > 0) then
                    begin
                      if ( Cells[5, i - 1] <>  Cells[5, i] ) then
                         Cells[0, i].AsBoolean := not Cells[0, i].AsBoolean ;
                    end
                    else
                     Cells[0, i].AsBoolean := not Cells[0, i].AsBoolean ;
               end; }

             phoneNumber := Cells[6, i];
             donotSend   := Cells[12, i];
             patientName := Cells[3, i];
             if cbExclusive.Checked=true then   // (중복번호 제거)
             begin
                //여기서 listbox에 핸드폰 번호를 넣는다.
                if (length(phoneNumber) > 8) and (donotSend <>'1') then
               begin
                 //   if  (i > 0) then
                  //  begin
                                                        //성명                  //전화
                         if listbox1.Items.IndexOf(patientName + phoneNumber) < 0 then
                         setCheckBoxState(1,i, true);
                    //          AddCheckBox(1, i, true , false);
                        //     Cells[0, i]  :=  '1';//not Cells[0, i].AsBoolean ;

                         listbox1.Items.Add(patientName + phoneNumber);
                 //  end;
               end;
             end
             else
             begin
               if (length(phoneNumber) > 8) and (donotSend <>'1') then
               begin
                setCheckBoxState(1,i, true);
                //    Cells[0, i]  := '1' ;
               //        AddCheckBox(1, i, true , false);
               end;




             end;
          end;
     end;

end;

procedure Tsms_f.btnDelClick(Sender: TObject);
var
     i: integer;
begin
     if GrdSms.Rowcount > 1 then
          if Application.MessageBox('전체 내용을 삭제하시겠습니까?', '삭제',
               MB_YESNO) = IDYES then

               with Dm_f.SqlWork, grdSms do
               begin
                    try
                         for i := 1 to rowcount - 1 do
                         begin
                              SQL.Text := SQL_DELETE_DATA_ALL;
                              ParamByName('SBRegDate').AsString :=    cells[7, i];
                              ParamByName('SBCHOICE').AsString :=  '1';
                              ParamByName('SBSFSMS').AsString :=  '1';
                              //성공하지 않은것만 불러온다.
                              ExecSQL;
                         end;

                        removeRows(1, Rowcount -1 );
                        // Clear; // 또는 SelectData;
                    except
                         on E: Exception do
                         begin
                              ShowMessage(E.Message +
                                   ' [삭제오류]');
                         end;
                    end;
               end;

end;

procedure Tsms_f.btnspClick(Sender: TObject);
begin
     ImoPanel.Left := BtnSp.Left;
     ImoPanel.Top := BtnSp.Top + BtnSp.Height + 5;

     {  if BtnSp.Caption = '▼  특수문자' then
         BtnSp.Caption := '▲  특수문자'
       else
         BtnSp.Caption := '▼  특수문자';
     }
     ImoPanel.Visible := not ImoPanel.Visible;

     GrdImo.Cells[0, 0] := '＃';
     GrdImo.Cells[1, 0] := '＆';
     GrdImo.Cells[2, 0] := '＊';
     GrdImo.Cells[3, 0] := '＠';
     GrdImo.Cells[4, 0] := '☆';
     GrdImo.Cells[5, 0] := '※';

     GrdImo.Cells[0, 1] := '＋';
     GrdImo.Cells[1, 1] := '－';
     GrdImo.Cells[2, 1] := '＝';
     GrdImo.Cells[3, 1] := '♀';
     GrdImo.Cells[4, 1] := '♂';
     GrdImo.Cells[5, 1] := '∧';

     GrdImo.Cells[0, 2] := '＜';
     GrdImo.Cells[1, 2] := '＞';
     GrdImo.Cells[2, 2] := '！';
     GrdImo.Cells[3, 2] := '．';
     GrdImo.Cells[4, 2] := '／';
     GrdImo.Cells[5, 2] := '：';

     GrdImo.Cells[0, 3] := '？';
     GrdImo.Cells[1, 3] := '＾';
     GrdImo.Cells[2, 3] := '（';
     GrdImo.Cells[3, 3] := '）';
     GrdImo.Cells[4, 3] := '①';
     GrdImo.Cells[5, 3] := '②';

     GrdImo.Cells[0, 4] := '％';
     GrdImo.Cells[1, 4] := '＄';
     GrdImo.Cells[2, 4] := '';
     GrdImo.Cells[3, 4] := '';
     GrdImo.Cells[4, 4] := '';
     GrdImo.Cells[5, 4] := '';
end;

procedure Tsms_f.BtnNameClick(Sender: TObject);
begin
     // memSmsContentsSave.Text := memSmsContentsSave.Text + (sender as TSpSkinButton).Caption;
     memContent.Text := memContent.Text + (sender as TButton).Caption;
     // showmessage(memSmsContentsSave.SelText);
end;

procedure Tsms_f.btnCharClick(Sender: TObject);
begin
     ImoPanel.Left := BtnSp.Left;
     ImoPanel.Top := BtnSp.Top + BtnSp.Height + 5;

     {  if BtnSp.Caption = '▼  특수문자' then
         BtnSp.Caption := '▲  특수문자'
       else
         BtnSp.Caption := '▼  특수문자';
     }
     ImoPanel.Visible := not ImoPanel.Visible;

     GrdImo.Cells[0, 0] := '＃';
     GrdImo.Cells[1, 0] := '＆';
     GrdImo.Cells[2, 0] := '＊';
     GrdImo.Cells[3, 0] := '＠';
     GrdImo.Cells[4, 0] := '☆';
     GrdImo.Cells[5, 0] := '※';

     GrdImo.Cells[0, 1] := '＋';
     GrdImo.Cells[1, 1] := '－';
     GrdImo.Cells[2, 1] := '＝';
     GrdImo.Cells[3, 1] := '♀';
     GrdImo.Cells[4, 1] := '♂';
     GrdImo.Cells[5, 1] := '∧';

     GrdImo.Cells[0, 2] := '＜';
     GrdImo.Cells[1, 2] := '＞';
     GrdImo.Cells[2, 2] := '！';
     GrdImo.Cells[3, 2] := '．';
     GrdImo.Cells[4, 2] := '／';
     GrdImo.Cells[5, 2] := '：';

     GrdImo.Cells[0, 3] := '？';
     GrdImo.Cells[1, 3] := '＾';
     GrdImo.Cells[2, 3] := '（';
     GrdImo.Cells[3, 3] := '）';
     GrdImo.Cells[4, 3] := '①';
     GrdImo.Cells[5, 3] := '②';

     GrdImo.Cells[0, 4] := '％';
     GrdImo.Cells[1, 4] := '＄';
     GrdImo.Cells[2, 4] := '';
     GrdImo.Cells[3, 4] := '';
     GrdImo.Cells[4, 4] := '';
     GrdImo.Cells[5, 4] := '';

     imoPanel.left := btnChar.Left + btnChar.width;
     imoPanel.top := btnChar.top + btnChar.height;
end;

procedure Tsms_f.lblViewSendMessageClick(Sender: TObject);
var
     varTemp, varTempID: string;
begin
     smsTag := 2;

     varTemp := '';

{     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('select * from  ma_pgpower');
          sql.Add('where PowerId = ''1'' and pgid=:pgid and pgset = ''1''                ');
          parambyname('pgid').AsString := 'btnSunap'; //일자별수납내역
          open;
          if not isEmpty then
          begin
               varTemp := '1';
               varTempID := trim(FieldByName('tongID').AsString);
               if varTempID = '' then
                    varTempID := configvalue.varPassSunap;
          end;
     end;


      PassInput_f := TPassInput_f.Create(application);
      if PassInput_f.Showmodal = mrOK then
      begin
           if PassInput_f.edtpass.text = varTempID then //main_f.v_UserPass then
           begin


           //  if not assigned(SmsResult_f) then
           //  begin
           //       SmsResult_f := TSmsResult_f.Create(Application);
           //       SmsResult_f.ShowModal;
           //  end
           //  else
           //  begin
           //       SmsResult_f.ShowModal;
           //  end;
           end;


      end;
}


             if not assigned(SmsResult_f) then
             begin
                  SmsResult_f := TSmsResult_f.Create(Application);
                  SmsResult_f.ShowModal;
             end
             else
             begin
                  SmsResult_f.ShowModal;
             end;


end;

procedure Tsms_f.lblViewReservMessageClick(Sender: TObject);
begin
     smsTag := 3;
     if not assigned(SmsResult_f) then
     begin
          SmsResult_f := TSmsResult_f.Create(Application);
          SmsResult_f.ShowModal;
     end
     else
     begin
          SmsResult_f.ShowModal;
     end;
end;

procedure Tsms_f.btnDSendClick(Sender: TObject);
begin

     if grdSms.RowCount > 0 then

     begin
          if
               Application.MessageBox('선택하신 모든 내용을 <지금> 전송하시겠습니까?',
               '지금전송확인', MB_YESNO) = IDYES then
               SendMessage_All
          else
               exit;
          ViewRestMoney;

     end;

end;

procedure Tsms_f.FormCreate(Sender: TObject);
begin
     pnlsmsMain.Visible := true;
     pnlSend.Visible := False;
     sbItem.Align := alClient;
     pnlFindResult.Align := alTop;
     pnlsmsMain.Align := alClient;
     grdChoice.Align := alClient;
     grdSMS.Align := alClient;
     pnlSaveButton.Align := alClient;
     pnlSend.Align := alClient;
     pnlChoice.Align := alClient;
     tcViewMode.TabIndex := 0;

end;

procedure Tsms_f.tcViewModeMouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     case tcViewMode.TabIndex of
          0:
               begin
                    pnlsmsMain.Visible := true;
                    pnlSend.Visible := False;
               end;
          1:
               begin
                    pnlsmsMain.Visible := False;
                    pnlSend.Visible := True;
                    SendSelectData;
               end;
     end;

end;

procedure Tsms_f.edtSendNoExit(Sender: TObject);
begin
     edtSendNo.text := call_tel_type(edtSendNo.text);
     //    saveValue('0134', edtSendNo.text, ''); //SMS번호 저장
     //    configvalue.LoadGlobalData_db;

end;

procedure Tsms_f.saveValue(code, val: string; disp: string = '');
var
     varisEmpty: boolean;
begin
     with dm_f.SqlWork do
     begin
          close;
          sql.Clear;
          sql.add('select *  from ma_config ');
          sql.add('where code=:code');
          parambyname('code').AsString := code;
          open;
          varisEmpty := isEmpty;

     end;
     if varisEmpty = false then
     begin
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               sql.add('update  ma_config  set');
               sql.add('val=:val');
               //   sql.add(', remark=:remark');
               sql.add('where code=:code');
               parambyname('code').AsString := code;
               parambyname('val').AsString := val;
               //    parambyname('remark').AsString := disp;
               execsql;
          end;
     end
     else
     begin
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               sql.add('insert into ma_config');
               sql.add('(code, val, remark) values');
               sql.add('(:code, :val, :remark)');
               parambyname('code').AsString := code;
               parambyname('val').AsString := val;
               parambyname('remark').AsString := disp;
               execsql;
          end;
     end;

end;

procedure Tsms_f.btnSp1Click(Sender: TObject);
var
     varleft: integer;
     varTop: integer;
begin
     varLeft := pnlautosend.left + pnlautosend.width;
     varTop := BtnSp1.Top + BtnSp1.Height + 5;
     ImoPanel.Left := varLeft;
     ImoPanel.Top := varTop;

     {  if BtnSp.Caption = '▼  특수문자' then
         BtnSp.Caption := '▲  특수문자'
       else
         BtnSp.Caption := '▼  특수문자';
     }
     ImoPanel.Visible := not ImoPanel.Visible;

     GrdImo.Cells[0, 0] := '＃';
     GrdImo.Cells[1, 0] := '＆';
     GrdImo.Cells[2, 0] := '＊';
     GrdImo.Cells[3, 0] := '＠';
     GrdImo.Cells[4, 0] := '☆';
     GrdImo.Cells[5, 0] := '※';

     GrdImo.Cells[0, 1] := '＋';
     GrdImo.Cells[1, 1] := '－';
     GrdImo.Cells[2, 1] := '＝';
     GrdImo.Cells[3, 1] := '♀';
     GrdImo.Cells[4, 1] := '♂';
     GrdImo.Cells[5, 1] := '∧';

     GrdImo.Cells[0, 2] := '＜';
     GrdImo.Cells[1, 2] := '＞';
     GrdImo.Cells[2, 2] := '！';
     GrdImo.Cells[3, 2] := '．';
     GrdImo.Cells[4, 2] := '／';
     GrdImo.Cells[5, 2] := '：';

     GrdImo.Cells[0, 3] := '？';
     GrdImo.Cells[1, 3] := '＾';
     GrdImo.Cells[2, 3] := '（';
     GrdImo.Cells[3, 3] := '）';
     GrdImo.Cells[4, 3] := '①';
     GrdImo.Cells[5, 3] := '②';

     GrdImo.Cells[0, 4] := '％';
     GrdImo.Cells[1, 4] := '＄';
     GrdImo.Cells[2, 4] := '';
     GrdImo.Cells[3, 4] := '';
     GrdImo.Cells[4, 4] := '';
     GrdImo.Cells[5, 4] := '';

     //   imoPanel.left := btnChar.Left + btnChar.width;
     //   imoPanel.top := btnChar.top + btnChar.height;

end;

procedure Tsms_f.btnAutosetSaveClick(Sender: TObject);
begin
     autoSetSave;

end;

procedure Tsms_f.AutosetSave;
begin
     case tabSms.TabIndex of
          0:
               begin
                    saveValue('0206', inttostr(cbSMS.itemindex),
                         '약속 sms전송여부');
                    saveValue('0207', edtBeforSMS.Text,
                         '약속 sms전송일자');
                    saveValue('0208', cbBeforTime.Text + cbBeforMin.text
                         + '00', '약속 sms전송시간');
                    saveValue('0209', MemSms.text, '약속 sms전송문구');
               end;
          1:
               begin
                    saveValue('0216', inttostr(cbSMS.itemindex),
                         '리콜 sms전송여부');
                    saveValue('0217', edtBeforSMS.Text,
                         '리콜 sms전송일자');
                    saveValue('0218', cbBeforTime.Text + cbBeforMin.text
                         + '00', '리콜 sms전송시간');
                    saveValue('0219', MemSms.text, '리콜 sms전송문구');
               end;
          2:
               begin
                    saveValue('0221', inttostr(cbSMS.itemindex),
                         '미내원sms전송여부');
                    saveValue('0222', edtBeforSMS.Text,
                         '미내원sms전송일자');
                    saveValue('0223', cbBeforTime.Text + cbBeforMin.text
                         + '00', '미내원sms전송시간');
                    saveValue('0224', MemSms.text, '미내원sms전송문구');
               end;
     end;

     configvalue.LoadGlobalData_ini;
     configvalue.LoadGlobalData_db;

end;

procedure Tsms_f.LoadAutosaveSet;
begin

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
                    //리콜 정보 불러오기
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
          2:
               begin
                    //SMS 미내원 정보 불러오기
                    memSMS.text := configvalue.p_minewonSmsContent;

                    if configvalue.p_BeforeSendminewonSms = 1 then
                         cbSMS.ItemIndex := 1
                    else
                         cbSMS.ItemIndex := 0;

                    if configvalue.p_BeforeMinewonSmscheck = 1 then
                         cbCheck.ItemIndex := 1
                    else
                         cbCheck.ItemIndex := 0;

                    edtBeforSMS.Text :=
                         inttostr(configvalue.p_BeforminewonSms);
                    cbBeforTime.Text :=
                         copy(configvalue.p_minewonSmsBeforTime,
                         1, 2);
                    cbBeforMin.Text :=
                         copy(configvalue.p_minewonSmsBeforTime,
                         3, 2);
               end;
     end;

end;

procedure Tsms_f.btnAutosetCloseClick(Sender: TObject);
begin
     ImoPanel.Visible := false;
     Pnlautosend.Visible := false;

end;

procedure Tsms_f.memSMSChange(Sender: TObject);
begin
     lblsmsLength.Caption := 'Size ' + IntToStr(Length(MemSMS.Text)) +
          '/';

end;

procedure Tsms_f.tabSmsChanging(Sender: TObject; var AllowChange: Boolean);
begin
     autosetSave;
end;

procedure Tsms_f.tabSmsChange(Sender: TObject);
begin
     //       showmessage(inttostr(tabSms.TabIndex));
     LoadAutosaveSet;

end;

procedure Tsms_f.wcDSchKindChange(Sender: TObject);
begin

     Label48.Visible := false; // 성명
     EdtDPSch.Visible := false;

     Label49.Visible := false; //검색 시작일
     CbDYeyakFind.Visible := false;

     Label50.Visible := false; //검색 마지막일
     CbDYeyakFind2.Visible := false;

     Label10.Visible := false; //환자구분
     cbGubun.Visible := false;

     Label7.Visible := false; //나이
     EdtNai1.Visible := false;
     EdtNai2.Visible := false;

     cbChair.Visible := false; //체어칸 선택 검색
     cbExcept.visible := false;
     cbKind.Visible := false;
     cbNaiAll.Visible := false;
     if wcDSchKind.Text = '나이' then
     begin

           cbNaiAll.Visible := true;
           Label7.Visible := true; //나이
           EdtNai1.enabled := true;
           EdtNai2.enabled := true;
           EdtNai1.Visible := true;
           EdtNai2.Visible := true;


           Label49.Visible := true; //검색 시작일
           Label49.caption := '최초내원일 시작';
           CbDYeyakFind.Visible := true;

           Label50.Visible := true; //검색 마지막일
           Label50.caption := '최초내원일 마지막';
           CbDYeyakFind2.Visible := true;

     end
     else
          if (wcDSchKind.Text = '전체') or (wcDSchKind.Text = '소아') then
          begin

          end
          else
               if (wcDSchKind.Text = '환자구분') then
               begin
                    Label10.Visible := true; //환자구분
                    cbGubun.Visible := true;

               end
               else
                    if wcDSchKind.Text = '리콜' then
                    begin
                          cbKind.Visible := true;
                              Label49.Visible := true; //검색 시작일
                              CbDYeyakFind.Visible := true;
                              Label50.Visible := true; //검색 마지막일
                              CbDYeyakFind2.Visible := true;

                    end
               else
                    if wcDSchKind.Text = '이름' then
                    begin
                         Label48.caption := '이름';
                         Label48.Visible := true; // 성명
                         EdtDPSch.Visible := true;
                    end
                    else
                    if wcDSchKind.Text = '차트번호' then
                    begin
                         Label48.caption := '차트';
                         Label48.Visible := true; // 성명
                         EdtDPSch.Visible := true;
                    end
                    else
                         if wcDSchKind.Text = '예약' then
                         begin

                              EdtDPSch.Visible := false;
                              cbExcept.visible := true;
                              Label49.Visible := true; //검색 시작일
                              CbDYeyakFind.Visible := true;
                              Label50.Visible := true; //검색 마지막일
                              CbDYeyakFind2.Visible := true;

                              cbChair.Visible := true; //체어칸 선택 검색
                         end
                         else
                              if wcDSchKind.Text = '예약내역' then
                              begin

                                   Label48.Visible := true; // 성명
                                   Label48.caption := '내역';
                                   Label49.Visible := true; //검색 시작일
                                   CbDYeyakFind.Visible := true;
                                   EdtDPSch.Visible := true;
                                   Label50.Visible := true; //검색 마지막일
                                   CbDYeyakFind2.Visible := true;
                                   edtDpsch.text := '정기검진';
                                   cbChair.Visible := true; //체어칸 선택 검색
                              end
                              else // '생일' '진료'  '최초내원' '최종내원' '예약미내원'  '리콜'
                              begin
                                   Label49.Visible := true; //검색 시작일
                                   CbDYeyakFind.Visible := true;
                                   Label50.Visible := true; //검색 마지막일
                                   CbDYeyakFind2.Visible := true;
                              end;

     //if (wcDSchKind.Text = '예약') then
     //    cbDoc.Enabled  := true;

end;

procedure Tsms_f.cbDocChange(Sender: TObject);
begin
     cbTeam.ItemIndex := cbDoc.ItemIndex;
end;

procedure Tsms_f.cbChairClick(Sender: TObject);
begin
     if cbChair.Checked then
          GrdChair.Visible := true
     else
          GrdChair.Visible := false;
end;

procedure TSMS_f.SmsSelectData_GUBUN;
begin
     with DM_f.SqlWork do
     begin
          close;
          Sql.Clear;
          Sql.Add('SELECT count(*) As countGogek');
          Sql.Add('FROM ma_gogek_group ');
          Sql.Add('where gubun=:gubun ');
          ParamByName('gubun').AsString := cbGubun.Text;

          Open;
     end;

     with DM_f.sqlTemp  do
     begin
          Close;
          Sql.Clear;
          SQL.Text := SQL_SELECT_DATA_FIND_GUBUN;

          ParamByName('SMS').AsString := '0';
          ParamByName('gubun').AsString := cbGubun.Text;

          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=
               DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=
               DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;


          grdChoice.ColumnHeaders.Add('');
          grdChoice.ColumnHeaders.Add('확인');
          grdChoice.ColumnHeaders.Add('챠트');
          grdChoice.ColumnHeaders.Add('성명');
          grdChoice.ColumnHeaders.Add('나이');
          grdChoice.ColumnHeaders.Add('주소');
          grdChoice.ColumnHeaders.Add('핸드폰');

          if not IsEmpty then
          begin
               while not EOF do
               begin
                    grdChoice.AddRow;
                    grdChoice.AddCheckBox(1, grdChoice.RowCount - 1, false, true);

                    grdChoice.Cells[2, grdChoice.RowCount - 1] :=
                         FieldByName('Chart').AsString;
                    grdChoice.Cells[3, grdChoice.RowCount - 1] :=
                         substr( FieldByName('Name').AsString,1 ,';');
                    grdChoice.Cells[4, grdChoice.RowCount - 1] := '';

                    grdChoice.Cells[5, grdChoice.RowCount - 1] := FieldByName('h_juso').AsString;
                    grdChoice.Cells[6, grdChoice.RowCount - 1] :=
                         FieldByName('c_phone').AsString;

                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress
                         + 1;
                    Waiter_f.Edit1.Text :=
                         IntToStr(StrToint(Waiter_f.Edit1.Text)
                         - 1);
               end;
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end
          else
          begin
               Enabled := True;
               Waiter_f.Free;
               Waiter_f := nil;
          end;
     grdChoice.AutoNumberCol(0);
     end;

end;

procedure Tsms_f.edtSendNoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin

          edtSendNo.text := call_tel_type(edtSendNo.text);
     end;
end;

procedure Tsms_f.FormDestroy(Sender: TObject);
begin
      sms_f:=nil;
end;

procedure Tsms_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action:=caFree;
end;


procedure Tsms_f.cbNaiAllClick(Sender: TObject);
begin
    if cbNaiAll.Checked then
    begin
     Label49.Visible := false; //검색 시작일
     CbDYeyakFind.Visible := false;

     Label50.Visible := false; //검색 마지막일
     CbDYeyakFind2.Visible := false;
    end
    else
    begin
           Label49.Visible := true; //검색 시작일
           Label49.caption := '최초내원일 시작';
           CbDYeyakFind.Visible := true;

           Label50.Visible := true; //검색 마지막일
           Label50.caption := '최초내원일 마지막';
           CbDYeyakFind2.Visible := true;
    end;
end;

procedure Tsms_f.Button1Click(Sender: TObject);
var
    varFilename : string;
begin
    if openDialog1.Execute then
    begin
      varFilename :=   openDialog1.FileName

    end;
     if fileExists(varfilename) then
      AdvGridExcelIO1.XLSImport(varFilename );

      grdSendList.ColWidths[0] := 15;
      grdSendList.ColWidths[1] := 40;
      grdSendList.ColWidths[2] := 91;
//      grdSendList.ColWidths[3] := 20;

end;

procedure Tsms_f.grdSendListGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
      hAlign:= taCenter;
end;

procedure Tsms_f.grdSendListEditCellDone(Sender: TObject; ACol,
  ARow: Integer);
var
     Str: string;
     i: integer;
begin

      Str := Deldash(grdSendList.Cells[2, aRow]);
      if str <> '' then
           grdSendList.Cells[2, aRow]  :=  call_tel_type(str);

end;


procedure Tsms_f.grdSendListDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if aCol = 0 then
          begin
               if Application.MessageBox(pchar('[' +  grdSendList.cells[2, aRow]
                    + ']' + '의 내용을 삭제하시겠습니까?'),
                    '삭제 확인', MB_OKCANCEL) = 1 then
               begin

                    grdSendList.RemoveRows(aRow,1);
               end;
          end;
end;


procedure Tsms_f.Label11Click(Sender: TObject);
var
     a: olevariant;

begin

     if not Assigned(SmsUrl_f) then
          SmsUrl_f := TSmsUrl_f.Create(application);
     SmsUrl_f.Caption := 'MMS(장문메시지) 전송결과조회';
     SmsUrl_f.Show;
     if configvalue.varSmsCustkind = '0' then

          SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/infomedi/mmsresult.asp?usercode=' +
               vId, a, a, a, a)
     else
          SmsUrl_f.WbSms.Navigate('http://smscorp.surem.com/client/gildata/mmsresult.asp?usercode=' +
               vId, a, a, a, a);

end;



procedure Tsms_f.Button2Click(Sender: TObject);
begin

//Excel Convert

end;

procedure Tsms_f.GrdChoiceClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if aCol= 0 then
     begin
         if ARow > 0 then
          if Application.MessageBox(PChar(grdChoice.Cells[3,  ARow] +
                    '님의 내용을 삭제하시겠습니까?'), '삭제', MB_YESNO)
               = IDYES then
          try
               with grdChoice do
               begin
                    removeRows(ARow, 1);

               end;
          except
               on E: Exception do
               begin

                    ShowMessage(E.Message + ' [삭제오류]');
               end;
          end;
     end;
end;

procedure Tsms_f.GrdSmsClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if (ARow > 0) and (aCol=0) then
          if Application.MessageBox(PChar(grdSms.Cells[1, aRow]
           +
                    '님의 내용을 삭제하시겠습니까?'), '삭제', MB_YESNO)
               = IDYES then

               with Dm_f.SqlWork, grdSms do
               begin
                    //dbMain.StartTransaction;
                    try
                         SQL.Text := SQL_DELETE_DATA;
                         ParamByName('SBCode').AsString := Cells[14,   aRow];
                         ExecSQL;
                         //dbMain.Commit;
                         removeRows(aRow, 1); // 또는 SelectData;
                         post;
                    except
                         on E: Exception do
                         begin
                              //dbMain.Rollback;
                              ShowMessage(E.Message +   ' [삭제오류]');
                         end;
                    end;
               end;
end;

procedure Tsms_f.GrdImoClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

     if pnlAutosend.visible = false then
          MemContent.Text := MemContent.Text +  GrdImo.Cells[Acol, ARow]
     else
          MemSMS.Text :=   MemSMS.Text +  GrdImo.Cells[Acol, ARow];

end;

end.

