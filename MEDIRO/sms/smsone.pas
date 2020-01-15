unit smsone;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     FireDAC.Stan.Intf,

    // FireDAC.Comp.Client,
     uni, db,

     Dialogs, StdCtrls,  ComCtrls, AdvPageControl,
     ExtCtrls,
     AdvGrid, AdvObj, FileCtrl, FlCtrlEx, AdvEdit, ShellCtrls,
  ThumbnailList, AdvPanel, FormSize, ExtDlgs, Grids, BaseGrid, AdvUtil,
  Vcl.Menus;
type

     PMyRec = ^TMyRec;
     TMyRec = record
          Title: string;
          groupkind1 ,
          groupkind2 ,
          groupkind3 : string;
          treePath: string;

     end;

//     PMyRec2 = ^TMyRec2;
//     TMyRec2 = record
//          FName: string;
//
//     end;



     PMyRec3 = ^TMyRec3; // MMS전송용 이미지 폴더
     TMyRec3 = record
          FDirName: string;
     end;

type
     Tsmsone_f = class(TForm)
    pnlMMS: TAdvPanel;
    AdvPanel3: TAdvPanel;
    Label7: TLabel;
    edtSubject: TEdit;
    memMMsContent: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    FormSize1: TFormSize;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    OD: TOpenPictureDialog;
    pnlChoiceMenu: TPanel;
    btnChoice: TButton;
    btnDSend: TButton;
    btnDel: TButton;
    grdSMS: TAdvStringGrid;
    TreeView1: TTreeView;
    AdvPanel1: TAdvPanel;
    tl: TThumbnailList;
    AdvPanel2: TAdvPanel;
    AdvEdit1: TAdvEdit;
    AdvEdit2: TAdvEdit;
    AdvEdit3: TAdvEdit;
    pgSMS: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    pnlBody: TPanel;
    PnldataStorage: TPanel;
    Splitter1: TSplitter;
    SbSms: TScrollBox;
    spSkinPanel1: TPanel;
    lblSendno: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LblMemcontentSize: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblRest: TLabel;
    Label8: TLabel;
    lblChart: TLabel;
    Label9: TLabel;
    btnSend: TButton;
    edtSendNo: TEdit;
    cbYeyak: TCheckBox;
    yeyakDayEdit: TDateTimePicker;
    edtRecvNo: TEdit;
    Button1: TButton;
    edtName: TEdit;
    edtDay: TEdit;
    edtTime: TEdit;
    edtMin: TEdit;
    edtMonth: TEdit;
    Button5: TButton;
    spSkinButton1: TButton;
    pgKind: TPageControl;
    TabSheet4: TTabSheet;
    memContent: TMemo;
    TabSheet5: TTabSheet;
    Memo1: TMemo;
    CmMinute: TComboBox;
    CMTime: TComboBox;
    FlowPanel1: TFlowPanel;
    TreePopUP: TPopupMenu;
    N32: TMenuItem;
    N33: TMenuItem;
    mnuDenete: TMenuItem;
    N1: TMenuItem;
    AdvPanel4: TAdvPanel;
    TVSms: TTreeView;
    AdvPanel5: TAdvPanel;
    spSkinButton13: TButton;
    spSkinButton14: TButton;
    spSkinButton15: TButton;
    spSkinButton16: TButton;
    btnGroupSave: TButton;
    spSkinPanel2: TPanel;
    lblContent: TLabel;
    btnSch: TButton;
    btnAdd: TButton;
    edtSMSsch: TAdvEdit;
    EdtContNo: TEdit;
    pnlContentsSave: TAdvPanel;
    pnlSmsCont: TPanel;
    Image4: TImage;
    memSmsContentsSave: TMemo;
    pnlSaveButton: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    btnSave: TButton;
    btnCls: TButton;
    EdtContname: TEdit;
          procedure btnSendClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure memContentChange(Sender: TObject);
          procedure edtRecvNoExit(Sender: TObject);
          procedure TVSmsClick(Sender: TObject);
          procedure spSkinButton1Click(Sender: TObject);
          procedure btnSchClick(Sender: TObject);
          procedure btnChoiceClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnDSendClick(Sender: TObject);

          procedure edtRecvNoKeyPress(Sender: TObject; var Key: Char);
          procedure edtSendNoExit(Sender: TObject);
          procedure edtSendNoKeyPress(Sender: TObject; var Key: Char);
    procedure TreeView1Click(Sender: TObject);
    procedure tlClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure yeyakDayEditChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pgSMSChange(Sender: TObject);
    procedure pgKindChange(Sender: TObject);
    procedure SbSmsResize(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClsClick(Sender: TObject);
    procedure TVSmsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TVSmsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TVSmsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mnuDeneteClick(Sender: TObject);
    procedure btnGroupSaveClick(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure spSkinButton13Click(Sender: TObject);
    procedure spSkinButton14Click(Sender: TObject);
    procedure spSkinButton15Click(Sender: TObject);
    procedure spSkinButton16Click(Sender: TObject);
    procedure TreePopUPPopup(Sender: TObject);
     private
          { Private declarations }
          mmsMode: boolean;
          varSendYear, varSendMonth, varSendDay: string;
          nRet, nRet2, nRem, nUncost: integer;

          varContentItem ,
             varContentName,
             varContentNo: string;  //text in Memo



          x, y, i, j: integer;

          imgCnt : integer;
          imgHorzCnt : integer;
          imgVertCnt : integer;


          vid, vpass: WideString;
          sCust, sCustName, sReqTel1, sReqtel2, sReqtel3: WideString;

          HpName, WonjangName, TelNo, Email, BankCode, BankName: string;

          lastDir: string;

          procedure SendMessage_One(varRecvNoTong: string; varRecvNoGuk:
               string; varRecvNoBun: string);
          procedure PostData_alone(varRecvNoTong: string; varRecvNoGuk:
               string; varRecvNoBun: string; varName: string; varMMSMode: boolean = false);
          //혼자보내는 고객에 대한 발송정보를 저장한다.
          procedure DrawContent(title, content, ContentNo: string);
          procedure DrawItem(code: string);
          procedure LabelMouseEnter(Sender: TObject);
          procedure LabelMouseLeave(Sender: TObject);
          procedure MakeSMSTreeView;
          procedure MEMOCLICK(Sender: TObject);
          procedure FindDrawItem(Schcode: string);
          //    procedure ChoicePostData(varGrid: TadvStringGrid; checkCol, chartcol,
          //    nameCol, hpCol: integer; varHpname, varTelNo: string);
          procedure SendSelectData;
          procedure SendMessage_All;
          procedure GetDirectories(Tree: TTreeView; Directory: string; Item: TTreeNode; IncludeFiles: Boolean);

          procedure ShowDir(varDir: string);
          procedure loadTreeList;
          procedure ViewRestMoney;
          procedure smsLogin;
          procedure SendMMS(varRecvNoTong, varRecvNoGuk, varRecvNoBun: string);
          procedure ContentSubjectLabelClick(Sender: TObject);
          procedure memContentDelete(Sender: TObject);
          procedure memContentUpdate(Sender: TObject);
          procedure ButtonMouseEnter(Sender: TObject);
          procedure ButtonMouseLeave(Sender: TObject);
          procedure SaveContent(title, content, path: string);
          procedure MemoChange(Sender: TObject);
          procedure resizeFlowPanel;
    procedure TreeView_SelNodeMove(TreeView: TTreeView; Up: Boolean);
    function MakeTereePath(isRoot:boolean; aMiddle  : string=''): string;
     public
          { Public declarations }
          loadKind: integer;
          varMode: integer;
          procedure ChoicePostData(varGrid: TadvStringGrid = nil; checkCol:
               integer = 0; chartcol: integer = 0; nameCol: integer = 0; hpCol:
               integer = 0;
               varHpname: string = ''; varTelNo: string = ''; varNoSMS: integer = 0;
               varRecalDaycol:integer=0);
     end;

const
    thumbWidth        = 123 + 100;
    thumbHeight       = 150 + 170;
    imgBottomMargin   = 5;
    imgTopMargin      = 5;
    imgLeftMargin     = 5;
    imgRightMargin    = 5;
var
     smsone_f: Tsmsone_f;

implementation
uses uConfig, uFunctions, udm, uFormInit, umain, waiter, Rschedule, Recall;
     //callsystem,  Rschedule, JumGeumYeyakMinewon,
  //findList, gogekFind, GubunJumgum, Recall;
{$R *.dfm}
const
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
     SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendresult                    ' +
          #13#10 +
          ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
          +
          ' VALUES                                              ' + #13#10 +
          ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';

procedure TSMSone_f.SendMessage_One(varRecvNoTong: string; varRecvNoGuk: string;
     varRecvNoBun: string);
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
     varMonth, varDay, varTime, varMin: string;
     i, ii, j: integer;

     varRecvNum, varSendNum: string;
     tempQuery : TUniQuery;
begin
    tempQuery := TUniQuery.create(self);
    tempQuery.Connection:= dm_f.UniConnection1 ;

     Vtong := '';
     VGuk := '';
     VBun := '';
     VName := '';
     Vtong2 := '';
     VGuk2 := '';
     VBun2 := '';
     VMem := '';
     VTel := edtSendNo.Text;
     varRecvNum := deldash(edtRecvNo.text);
     varSendNum := deldash(edtSendNo.Text);
  //   CMTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
  //   CMMinute.Text := '00';
     //  lblRest.caption := '0';


     Vtong := varRecvNoTong;
     VGuk := varRecvNoGuk;
     VBun := varRecvNoBun;
     VName := edtName.text;
     Vtong2 := SubStr(Vtel, 1, '-');
     VGuk2 := SubStr(Vtel, 2, '-');
     VBun2 := SubStr(Vtel, 3, '-');


     case pgKind.ActivePageIndex  of
     0:
          begin

            try

               if length(trim(MemContent.text)) = 0 then
               begin
                    showmessage('SMS 메시지를 입력하세요.');
                    MemContent.setfocus;
                    exit;
               end;

               i := Length(MemContent.text);
               ii := (i div 90);
               for j := 0 to ii do
               begin
                    VMem := Trim(Copy_hangul(Trim(MemContent.text), (90 * j) + 1, 90));
                    // VMem := Trim(MemContent.text);
                    if Cbyeyak.Checked = False then //예약안된것 '1'인것만 에약된거
                    begin
                         if mmsMode = false then
                         begin
                          //SMS전송
                              nRet := main_f.smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust,
                                   sCustName,
                                   VTong, VGuk, VBun,
                                   VName,
                                   VTong2, VGuk2, VBun2,
                                   Trim(VMem), '00000000', '000000', nRem, nUnCost);
                           
                         end;
                    end
                    else
                    begin
                         VYDay := DELDash(FormatDateTime('YYYY-MM-DD', YeyakDayEdit.Date));
                         VYTime := CMTime.Text +
                              CMMinute.Text + '00';

                         //SMS전송
                         nRet := main_f.smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust,
                              sCustName,
                              VTong, VGuk, VBun,
                              VName,
                              VTong2, VGuk2, VBun2,
                              Trim(VMem), VYDay, VYTime, nRem, nUnCost);

                    end;

                    exceptlogging('SendMessage_one_SMS_Result=>'+inttostr(nRet));

                    with tempQuery do
                    begin
                         close;
                         sql.clear;
                         sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
                         open;
                         MaxSBCode := FieldByName('MSBcode').AsString;
                    end;

                    with tempQuery do
                    begin
                         // ma_sms_sendresult 에 SRcode 가 이미 존재하는경우 먼저 삭제한다 by son
                         if MaxSBCode <> '' then
                              SRCodeImsi :=
                                   FormatFloat('0000000000', (StrToInt(MaxSBcode)
                                   + 1))
                         else
                              SRCodeImsi := '0000000001';

                         close;
                         sql.Clear;
                         sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
                         ParamByName('SRCODE').AsString := SRCodeImsi;
                         ExecSQL;

                         close;
                         sql.Clear;
                         SQL.Text := SQL_INSERT_DATA2;

                         ParamByName('SRCODE').AsString := SRCodeImsi;
                         ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD',
                              now);
                         ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
                         ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
                         ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
                         ExecSQL;

                    end;

                    postdata_alone(SubStr(edtRecvNo.text, 1, '-'),
                         SubStr(edtRecvNo.text, 2, '-'),
                         SubStr(edtRecvNo.text, 3, '-'), edtName.text, mmsMode);
                end;
            finally
                 tempQuery.free;
            end;
          end;
     1:  //MMS
          begin
              try
                   if length(trim(MemMMsContent.text)) = 0 then
                   begin
                        showmessage('MMS 메시지를 입력하세요.');
                        MemMMSContent.setfocus;
                        exit;
                   end;

                    if Cbyeyak.Checked = False then //예약안된것 '1'인것만 에약된거
                    begin

                              //MMS전송
                             nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust,
                                   varRecvNum,              //받는번호
                                   varSendNum,              //보내는번호
                                   Trim(edtSubject.text),   //제목
                                    Trim(memMMSContent.text),   //내용
                                      '',   //예약시간
                                      advEdit1.text,  //파일경로 1
                                      advEdit2.text,  //파일경로 2
                                      advEdit3.text); //파일경로 3


                    end
                    else
                    begin //예약전송
                         VYDay := DELDash(FormatDateTime('YYYYMMDD', YeyakDayEdit.Date));
                         VYTime := CMTime.Text +
                              CMMinute.Text + '00';
                                 nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust,
                                   varRecvNum,              //받는번호
                                   varSendNum,              //보내는번호
                                   Trim(edtSubject.text),   //제목
                                    Trim(memMMSContent.text),   //내용
                                      VYDay + VYTime,   //예약시간
                                      advEdit1.text,  //파일경로 1
                                      advEdit2.text,  //파일경로 2
                                      advEdit3.text); //파일경로 3


                      //   nRet := main_f.smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust,
                     //        sCustName,
                      //        VTong, VGuk, VBun,
                      //        VName,
                      //        VTong2, VGuk2, VBun2,
                     //        Trim(VMem), VYDay, VYTime, nRem, nUnCost);

                    end;

                    with tempQuery do
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


                    with tempQuery do
                    begin

                         close;
                         sql.Clear;
                         sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
                         ParamByName('SRCODE').AsString := SRCodeImsi;
                         ExecSQL;

                         close;
                         sql.Clear;
                         SQL.Text := SQL_INSERT_DATA2;

                         ParamByName('SRCODE').AsString := SRCodeImsi;
                         ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD',
                              now);
                         ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
                         ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
                         ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
                         ExecSQL;

                    end;


                    //db저장
                    postdata_alone(SubStr(edtRecvNo.text, 1, '-'),
                         SubStr(edtRecvNo.text, 2, '-'),
                         SubStr(edtRecvNo.text, 3, '-'), edtName.text, mmsMode);


              finally
                   tempQuery.free;
              end;

          end;
      end;




     if nRet = 1 then
     begin
          Showmessage('메시지를 전송하였습니다.');

     end
     else
          Showmessage( '메시지전송에 실패하였습니다.' + #10#13 +'오류코드 => '+ SmsErrorCheck(nRet));

end;




procedure TSMSone_f.SendMMS(
     varRecvNoTong: string;
     varRecvNoGuk: string;
     varRecvNoBun: string);
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
     varMonth, varDay, varTime, varMin: string;
     i, ii, j: integer;

     varRecvNum, varSendNum: string;

     tempQuery : TUniQuery;
begin
    tempQuery := TUniQuery.create(self);
    tempQuery.Connection:= dm_f.UniConnection1 ;


     Vtong := '';
     VGuk := '';
     VBun := '';
     VName := '';
     Vtong2 := '';
     VGuk2 := '';
     VBun2 := '';
     VMem := '';
     VTel := edtSendNo.Text;


     Vtong := varRecvNoTong;
     VGuk := varRecvNoGuk;
     VBun := varRecvNoBun;
     VName := edtName.text;
     Vtong2 := SubStr(Vtel, 1, '-');
     VGuk2 := SubStr(Vtel, 2, '-');
     VBun2 := SubStr(Vtel, 3, '-');

     varRecvNum := deldash(Vtong + VGuk + VBun);
     varSendNum := deldash(Vtong2 + VGuk2 + VBun2 );

     if length(trim(MemMMsContent.text)) = 0 then
     begin
          showmessage('MMS 메시지를 입력하세요.');
          MemMMSContent.setfocus;
          exit;
     end;

    if Cbyeyak.Checked = False then //예약안된것 '1'인것만 에약된거
    begin

              //MMS전송
             nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust,
                   varRecvNum,              //받는번호
                   varSendNum,              //보내는번호
                   Trim(edtSubject.text),   //제목
                    Trim(memMMSContent.text),   //내용
                      '',   //예약시간
                      advEdit1.text,  //파일경로 1
                      advEdit2.text,  //파일경로 2
                      advEdit3.text); //파일경로 3


    end
    else
    begin //예약전송
         VYDay := DELDash(FormatDateTime('YYYYMMDD', YeyakDayEdit.Date));
         VYTime := CMTime.Text +
              CMMinute.Text + '00';


         nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust,
           varRecvNum,              //받는번호
           varSendNum,              //보내는번호
           Trim(edtSubject.text),   //제목
            Trim(memMMSContent.text),   //내용
              VYDay + VYTime,   //예약시간
              advEdit1.text,  //파일경로 1
              advEdit2.text,  //파일경로 2
              advEdit3.text); //파일경로 3



    end;
   try
    with tempQuery do
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


    with tempQuery do
    begin
         close;
         sql.Clear;
         sql.add('delete  FROM ma_sms_sendresult where SRCode = :SRCode');
         ParamByName('SRCODE').AsString := SRCodeImsi;
         ExecSQL;

         close;
         sql.Clear;
         SQL.Text := SQL_INSERT_DATA2;

         ParamByName('SRCODE').AsString := SRCodeImsi;
         ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD',
              now);
         ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
         ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
         ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
         ExecSQL;

    end;

   finally
        tempQuery.Free;
   end;
    //db저장
    postdata_alone(SubStr(edtRecvNo.text, 1, '-'),
         SubStr(edtRecvNo.text, 2, '-'),
         SubStr(edtRecvNo.text, 3, '-'), edtName.text, mmsMode);

     if nRet <> 1 then
          Showmessage( '메시지전송에 실패하였습니다.' + #10#13 +'오류코드 => '+ SmsErrorCheck(nRet));

end;

procedure TSMSone_f.PostData_alone(varRecvNoTong: string; varRecvNoGuk: string;
     varRecvNoBun: string; varName: string; varMMSMode: boolean = false);
//혼자보내는 고객에 대한 발송정보를 저장한다.
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
          ParamByName('SBChart').AsString := lblChart.caption;
          ParamByName('SBName').AsString := varname;
          ParamByName('SBTel').AsString := '';
          ParamByName('SBMail').AsString := '';
          ParamByName('SBHp').AsString := varRecvNoTong + '-' + varRecvNoGuk
               + '-' + varRecvNoBun;

          if varMMsMode = false then
               ParamByName('SBContent').AsString := memContent.Text
          else
              // ParamByName('SBContent').AsString := quotedstr( copy(memContent.Text, 1, 100));
               ParamByName('SBContent').AsString := memMMSContent.Text;
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

procedure Tsmsone_f.btnSendClick(Sender: TObject);
var
     i, j, ii: integer;
     sm: string;
begin




     if (SubStr(edtRecvNo.text, 1, '-') = '') or
          (SubStr(edtRecvNo.text, 2, '-') = '') or
          (SubStr(edtRecvNo.text, 3, '-') = '') then
     begin
          showmessage('상대방 전화번호를 입력하세요.');
          edtRecvNo.setfocus;
          exit;
     end;

     case pgKind.ActivePageIndex  of
     0:     //SMS
          begin
               if length(trim(MemContent.text)) = 0 then
               begin
                    showmessage('SMS 메시지를 입력하세요.');
                    MemContent.setfocus;
                    exit;
               end;

               mmsmode := false;
               i := Length(MemContent.text);
               if i > 90 then
                  ii := (i div 90) + 1
               else
                  ii := 1;


               if ii > 1 then
                begin

                         if
                              Application.MessageBox(PChar('메시지가길이가 90byte가 넘어(' + inttostr(i) + 'byte)'
                                    + inttostr(ii) + '건으로 나누어 전송됩니다.'
                         + #10#13 +
                              '전송하시겠습니까?'),
                              '나누어 즉시전송 확인', MB_YESNO) = IDNO then
                         begin

                               MemContent.setfocus;
                               exit;
                         end;
                  end;

               if Application.MessageBox(PChar(
                         SubStr(edtRecvNo.text, 1, '-') + '-' +
                         SubStr(edtRecvNo.text, 2, '-') + '-' +
                    SubStr(edtRecvNo.text, 3, '-') + '님에게' + #10#13
                         +
                         '<' + MemContent.Text + '>' +
                         '내용을 <즉시> 전송하시겠습니까?'),
                         '즉시전송확인', MB_YESNO) = IDYES then
                    begin
                         SendMessage_One(SubStr(edtRecvNo.text, 1, '-'),
                              SubStr(edtRecvNo.text, 2, '-'),
                              SubStr(edtRecvNo.text, 3, '-'));

                    end
                    else
                    begin
                    showmessage('메시지전송이 취소되었습니다.');
                         //ViewRestMoney;
                    end;
          end;
     1:  //MMS
          begin

               if length(trim(MemMMsContent.text)) = 0 then
               begin
                    showmessage('MMS 메시지를 입력하세요.');
                    MemMMSContent.setfocus;
                    exit;
               end;

              if (trim(advEdit1.text) <> '' )
              or ( trim(advEdit2.text) <> '')
              or ( trim(advEdit3.text) <> '')
              then
              begin

               if
                    Application.MessageBox(PChar('그림문자 메시지로 전송되며 250원(12.5건)이 차감됩니다.'
               + #10#13 +
                    '전송하시겠습니까?'),
                    '그림문자 메시지  즉시전송 확인', MB_YESNO) = IDNO then
               begin

                     MemMMSContent.setfocus;
                     exit;
               end;
              end
              else
              begin

                if
                    Application.MessageBox(PChar('1000자 메시지로 전송되며 90원(4.5건) 이 차감됩니다.'
               + #10#13 +
                    '전송하시겠습니까?'),
                    '1000자 메시지  즉시전송 확인', MB_YESNO) = IDNO then
               begin

                     MemMMSContent.setfocus;
                     exit;
               end;
             end;



               mmsMode := true;

               edtSubject.text := copy(memMMSContent.Text, 1, 20);

               SendMessage_One(SubStr(edtRecvNo.text, 1, '-'),
                    SubStr(edtRecvNo.text, 2, '-'),
                    SubStr(edtRecvNo.text, 3, '-'));


          end;
     end;
end;

procedure Tsmsone_f.FormShow(Sender: TObject);

begin
     caption := '메시지전송';

     varSendyear := Copy(FormatDateTime('YYYYMMDD', Now), 1, 4);
     varSendMonth := Copy(FormatDateTime('YYYYMMDD', Now), 5, 2);
     varSendDay := Copy(FormatDateTime('YYYYMMDD', Now), 7, 2);

     if varMode = 0 then
     begin
          // memcontent.text := '';
          pgkind.ActivePageIndex:=0;
          memcontent.setfocus;
          // LblMemcontentSize.Caption := '0/';

     end;

     mmsMode := false;

     EdtContname.Text := '';
     EdtContNo.Text := '';
     edtSMSsch.text := '';
     edtSubject.text:='';
     // tabsheetmms.tabVisible := false;
     CMTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
     CMMinute.Text := '00';

     yeyakdayedit.date := now + 1;
     HpName := configvalue.varsaupname;
     WonjangName := configvalue.varDaepyo;

//     if configvalue.varSmsNo <> '' then
//          TelNo := configvalue.varSmsNo
//     else
//          TelNo := configvalue.varTel1;


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

     pgSms.Align := AlClient;
     grdSms.Align := AlClient;
     PnlBody.Align := AlClient;
     PnlDataStorage.Align := AlClient;
     SbSms.Align := AlClient;
     MakeSmsTreeView;


      pgsms.ActivePageIndex:=1;
      pnlMms.Visible:=false;


        image1.Picture:=nil;
        image2.Picture:=nil;
        image3.Picture:=nil;
       advEdit1.text :='';
       advEdit2.text :='';
       advEdit3.text :='';

         cbYeyak.Checked:=false;  //위에서 예약달력 셋팅이 이루어지므로 true로 변한다. 그래서 초기화

     smsLogin;
     ViewRestMoney;

end;

procedure TSMSone_f.ViewRestMoney;
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


procedure Tsmsone_f.Button1Click(Sender: TObject);
begin
     close;
end;

procedure Tsmsone_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tsmsone_f.FormDestroy(Sender: TObject);
begin
     smsone_f := nil;
end;

procedure Tsmsone_f.memContentChange(Sender: TObject);
begin


     LblMemcontentSize.Caption := IntToStr(Length(MemContent.Text)) + '/';
     //   if LblMemcontentSize.Caption = '' then
     //   begin
     //        varContentNo := '';
     //        varContentName := '';
     //   end;

end;

procedure Tsmsone_f.edtRecvNoExit(Sender: TObject);
begin
     edtRecvNo.text := call_tel_type(edtRecvNo.text);

end;

procedure Tsmsone_f.MakeSMSTreeView;

var
     TreeTemp1: TTreeNode;
     MyRecPtr: PMyRec;
     I: Integer;
begin
     TreeTemp1 := nil;

     for I := TvSms.Items.Count - 1 downto 0 do
     begin
          Dispose(TvSms.Items.Item[I].Data);
          TvSms.Items.Item[I].Destroy;
     end;


     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_datakind');
          Sql.Add(' where Substring(treepath,1,1)=:Kind');
          Sql.Add(' order by iOrder, treepath');
          ParamByName('kind').AsString := '1';
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    New(MyRecPtr);
                    MyRecPtr^.Title :=  FieldByName('GroupKind2').AsString;
                    MyRecPtr^.groupkind1 :=  FieldByName('GroupKind1').AsString;
                    MyRecPtr^.groupkind2 :=  FieldByName('GroupKind2').AsString;
                    MyRecPtr^.groupkind3 :=  FieldByName('GroupKind3').AsString;
                    MyRecPtr^.treePath  := FieldByName('treepath').AsString;

                    if Copy(FieldByName('treepath').AsString, 4, 3) =   '000' then
                    begin
                         TreeTemp1 := TvSms.Items.AddChildObject(nil,
                              FieldByName('GroupKind2').AsString,
                              MyRecPtr);
                         TreeTemp1.ImageIndex := 0;
                         TreeTemp1.SelectedIndex := 1;

                    end
                    else
                         if FieldByName('groupkind3').AsString <> '' then
                         begin
                              TvSms.Items.AddChildObject(TreeTemp1,
                                   FieldByName('GroupKind3').AsString,
                                   MyRecPtr);
                              TreeTemp1.ImageIndex := 2;
                              TreeTemp1.SelectedIndex := 3;

                         end;
                    Next;
               end;
          end;
     end;

end;

procedure Tsmsone_f.DrawContent(title, content, ContentNo: string);
var

     tempPanel ,tempPanelBottom, tempPanelTop: TPanel;
     tempImg: TImage;
     tempMemo: TMemo;
     tempLabel: TLabel;
     tempByte: TLabel;
     tempContentNo: TLabel;
     tempButton: TLabel;
     tempButton2: TLabel;


begin

     tempPanel  := TPanel.Create(smsone_f);
     tempPanelTop  := TPanel.Create(smsone_f);
     tempPanelBottom  := TPanel.Create(smsone_f);

     tempMemo := TMemo.Create(smsone_f);
     tempLabel := TLabel.Create(smsone_f);
     tempByte := TLabel.Create(smsone_f); //문자크기
     tempContentNo := TLabel.Create(smsone_f); //문자번호
     tempButton := TLabel.Create(smsone_f);
     tempButton2 := TLabel.Create(smsone_f);

     with tempPanel do
     begin
          Parent := Flowpanel1;
          alignWithMargins:= true;
         caption:='';
         Ctl3D := false;
         BevelInner := bvNone;
         BevelKind  := bkNone;
         BevelOuter := bvNone;
           showcaption:= false;
          Left := x;
          Top  := y + 15;
          Width  := thumbWidth;
          Height := thumbHeight;
          margins.Top := 5;
          margins.Bottom := 5;
          margins.Left := 5;
          margins.right := 5;

          BorderStyle := bsNone;
     end;

     with tempPanelTop do
     begin
          Parent := tempPanel;
          showcaption:= false;
         caption:='';
         Ctl3D := false;
         BevelInner := bvNone;
         BevelKind  := bkNone;
         BevelOuter := bvNone;
          align := alTop;
          Height := 20;
          BorderStyle := bsNone;
     end;
     with tempByte do
     begin
          Parent := tempPanelTop;
          align:= alRight;
          Width := 50;
          autoSize:= true;
          Alignment := taRightJustify;
          Transparent := True;
          Font.Color := clBlue;
          Caption := IntToStr(Length(Content));
     end;

     with tempContentNo do
     begin
          Parent := tempPanelTop;
          AutoSize := False;
          Left := x;
          Top := y;
          Width := tempMemo.Width;
          Alignment := taLeftJustify;
          Transparent := True;
          Caption := contentno;
          Visible := False;
     end;
     with tempLabel do
     begin
          Parent := tempPanelTop;
          align:= alLeft;
          AutoSize := true;
          curSor := crHandpoint;
          Alignment := taLeftJustify;
          Transparent := True;
          Autosize := True;
          Caption := title;
          OnMouseEnter := LabelMouseEnter;
          OnMouseLeave := LabelMouseLeave;
          OnClick := ContentSubjectLabelClick;
     end;

     with tempMemo do
     begin
          Parent := tempPanel;
          align := alClient;
          Font.Size := 9;
          padding.Bottom := 2;
          padding.Top := 2;
          padding.Left := 2;
          padding.Right := 2;
          ScrollBars := ssVertical;
          Color := $00FFFFC4;
          Font.Name :='맑은고딕';
          Font.Size := 12;
          MaxLength := 0;
          hint:=  Contentno;
          BorderStyle := bsNone;
          OnClick := MemoClick;
          OnChange := MemoChange;
          Text := content;
     end;


     with tempPanelBottom do
     begin
          Parent := tempPanel;
         caption:='';
         Ctl3D := false;
         BevelInner := bvNone;
         BevelKind  := bkNone;
         BevelOuter := bvNone;
          showcaption:= false;
          align := alBottom;
          Height := 20;
          BorderStyle := bsNone;
     end;

     with tempButton do      //   수정
     begin

          Parent := tempPanelBottom;
          align:=alLeft;
          Width := 30;
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

     end;

     with tempButton2 do    //삭제
     begin

          Parent := tempPanelBottom;
          align:=alRight;
          AutoSize := False;
          Width := 30;
          Alignment := taRightJustify;
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
     end;




end;



procedure Tsmsone_f.MemoChange(Sender: TObject);
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

procedure Tsmsone_f.ButtonMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $008DF4CE;
     (Sender as TLabel).Font.Style := [fsUnderline];

end;

procedure Tsmsone_f.ButtonMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := $00FFD8BF;
     (Sender as TLabel).Font.Style := [];

end;


procedure Tsmsone_f.SaveContent(title, content, path: string);
var
     sTreePath: string;
begin

//     with dm_f.SqlWork do
//     begin
//          Close;
//          Sql.Clear;
//          Sql.Add('select * from ma_sms_datakind');
//          sQL.aDD('where TreePath=:TreePath');
//          ParamByName('Treepath').AsString :=  copy(edtContNo.text,1,6);//'116001'; //사용자정의
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
//               ParamByName('TreePath').AsString :=  copy(edtContNo.text,1,6);// '116001';
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
                    ParamByName('Class').AsString :=  copy(edtContNo.text,1,6)// '116001'
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

procedure Tsmsone_f.SbSmsResize(Sender: TObject);
begin
      resizeFlowPanel;
end;

procedure Tsmsone_f.memContentUpdate(Sender: TObject);
begin
  //   varContentNo := (sender as TLabel).Name, 2, '_');

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

procedure Tsmsone_f.memContentDelete(Sender: TObject);
begin
//     varContentNo := SubStr((sender as TLabel).Name, 2, '_');

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


procedure Tsmsone_f.ContentSubjectLabelClick(Sender: TObject);
var
     ReMemContent,
          ReMemoHospital,
          ReMemoHospital2,
          ReMemoTel,
          ReMemoBankCode: string;

begin
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


procedure Tsmsone_f.DrawItem(code: string);
begin
     x := 10;
     y := 8;
     i := 1;
     j := 1;


//     if SbSms.ControlCount > 0 then
//     begin
//          while SbSms.ControlCount > 0 do
//          begin
//               SbSms.Controls[0].Destroy;
//          end;
//     end;


    imgCnt:=0;
    if Flowpanel1.ControlCount > 0 then
    begin
          while Flowpanel1.ControlCount > 0 do
          begin
              Flowpanel1.Controls[0].Destroy;
          end;
    end;
     //80바이트씩 보여주기.................................................................
     {
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

               LblContent.Caption := FieldByName('Title').AsString;

               if not IsEmpty then
               begin
                    while not eof do
                    begin
                         for J := 1 to (Length(FieldByName('content').AsString) div
                              80) + 1 do
                         begin

                              DrawContent(FieldByName('title').AsString,
                                   Copy(Trim(FieldByName('content').AsString), 80 * (j
                                   - 1), 80),
                                   FieldByName('Class').AsString +
                                   FieldByName('SML_Class').AsString);

                              i := i + 1;
                              if x < SbSms.Width - 300 then
                              begin
                                   x := x + 170;
                              end
                              else
                              begin
                                   x := 10;
                                   y := y + 80 + 28;
                              end;
                         end;

                         Next;

                    end;
               end;
          end;

     }



     //전부 보여주기.................................................................
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_sms_contents');
          Sql.Add(' where CLASS=:Code           ');
          Sql.Add('order by SML_CLASS           ');
          ParamByName('Code').AsString := Copy(Code, 1, 6);
          Open;
          First;

          LblContent.Caption := FieldByName('Title').AsString;

          imgCnt :=imgCnt + recordCount;

          if not IsEmpty then
          begin
               while not eof do
               begin
                    DrawContent(FieldByName('title').AsString,
                         Trim(FieldByName('content').AsString),
                         FieldByName('Class').AsString +
                         FieldByName('SML_Class').AsString);
                    i := i + 1;
                    if x < SbSms.Width - 300 then
                    begin
                         x := x + 170 + 90;
                    end
                    else
                    begin
                         x := 10;
                         //                         y := y + 120 + 28;
                         y := y + 120 + 35 + 90;
                    end;

                    Next;

               end;
          end;
     end;
     //전부보여주기....................................................
     resizeFlowPanel;
end;

procedure Tsmsone_f.LabelMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := clBlue;
     (Sender as TLabel).Font.Style := [fsUnderline];
end;

procedure Tsmsone_f.LabelMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := clBlack;
     (Sender as TLabel).Font.Style := [];
end;

procedure TSmsone_f.MEMOCLICK(Sender: TObject);
var
     varMemCont: string;
     vMin:string;
begin

     EdtContNo.Text :=  (Sender as TMEMO).hint;
     varContentNo   :=  (Sender as TMEMO).hint;

     varMemCont := (Sender as TMEMO).text;


     varMemcont := StringReplace(varMemcont, '+aaaa+', HPName,
          [rfReplaceAll, rfIgnoreCase]);
     varMemcont := StringReplace(varMemcont, '+aaa+', HPName,
          [rfReplaceAll, rfIgnoreCase]);
     {       varMemcont := StringReplace(varMemcont, '+dd+', EdtDay.Text,
                   [rfReplaceAll, rfIgnoreCase]);
            varMemcont := StringReplace(varMemcont, '+hh+', EdtTime.Text,
                   [rfReplaceAll,
                   rfIgnoreCase]);
            varMemcont := StringReplace(varMemcont, '+mm+', EdtMin.Text,
                   [rfReplaceAll, rfIgnoreCase]);
            varMemcont := StringReplace(varMemcont, '+xxxx+', '30',
                   [rfReplaceAll, rfIgnoreCase]);
            varMemcont := StringReplace(varMemcont, '+rr+', EdtMonth.Text,
                   [rfReplaceAll, rfIgnoreCase]);
            }
     varMemcont := StringReplace(varMemcont, '+ccc+', TelNo,
          [rfReplaceAll,
          rfIgnoreCase]);


              if configvalue.varSMSConvMin = '1' then
              begin

                if ( EdtMin.Text  < '30' )
                    then
                      EdtMin.Text :=   HangeulMin('00')
                    else
                      EdtMin.Text :=   HangeulMin('30');

              end;

//     varMemcont := StringReplace(varMemcont, '+ddd+', edtName.text,
//             [rfReplaceAll, rfIgnoreCase]);


  //   varmode=0 // 리콜
  //   varmode=1 // 예약

   case  varmode of
   1:  //예약이면.,..
     begin

          varMemcont := StringReplace(varMemcont, '+ddd+', edtName.text,
               [rfReplaceAll, rfIgnoreCase]);

          varMemcont := StringReplace(varMemcont, '+dd+', EdtDay.Text,
               [rfReplaceAll, rfIgnoreCase]);
          varMemcont := StringReplace(varMemcont, '+hh+', EdtTime.Text,
               [rfReplaceAll,
               rfIgnoreCase]);
          varMemcont := StringReplace(varMemcont, '+mm+',  EdtMin.Text,
               [rfReplaceAll, rfIgnoreCase]);
          varMemcont := StringReplace(varMemcont, '+xxxx+', '30',
               [rfReplaceAll, rfIgnoreCase]);
          varMemcont := StringReplace(varMemcont, '+rr+', EdtMonth.Text,
               [rfReplaceAll, rfIgnoreCase]);

     end;
    0:   // 리콜
     begin

     end;
     2:  //메인창에서 전화번호로 보내기    - 이름+DDD+ 가져와라
     begin

          varMemcont := StringReplace(varMemcont, '+ddd+', edtName.text,
               [rfReplaceAll, rfIgnoreCase]);
    end;
   end;

     case PgKind.ActivePageIndex of
     0:  memContent.text := varMemcont;
     1:  memMMSContent.text := varMemcont;
     end;


//   memContent.text := varMemcont;

end;

procedure Tsmsone_f.mnuDeneteClick(Sender: TObject);
begin
      if tvSMS.Selected = nil then
    exit;


  if application.MessageBox(pchar('선택하신 항목의 모든 정보가 삭제됩니다. '+#10#13+
       '삭제를 취소 하시겠습니까?' +#10#13+
       '아니오를 누르면 삭제됩니다.'),
       '메시지내용 삭제 확인', MB_YESNO)
    = 7 then // yes : 6 No : 7
  begin

      if PMyRec(tvSMS.Items.Item[tvSMS.Selected.AbsoluteIndex].Data)^.Treepath <> '' then
      begin
         try
            with dm_f.SqlField do
            begin
              Close;
              Sql.Clear;
              Sql.Add('Delete from ma_sms_datakind where treepath=:treepath');
              ParamByName('treepath').AsString  :=
                    PMyRec(tvSMS.Items.Item[tvSMS.Selected.AbsoluteIndex].Data)^.treepath;
              ExecSql;

              Close;
              Sql.Clear;
              Sql.Add('Delete from ma_sms_contents where class=:class');
              ParamByName('class').AsString  :=
                   PMyRec(tvSMS.Items.Item[tvSMS.Selected.AbsoluteIndex].Data)^.treepath;
              ExecSql;
            end;

                Dispose(tvSMS.Selected.Data);
                tvSMS.Selected.Destroy;
                tvSMS.setfocus;

                if Flowpanel1.ControlCount > 0 then
                begin
                      while Flowpanel1.ControlCount > 0 do
                      begin
                          Flowpanel1.Controls[0].Destroy;
                      end;
                end;



         except

         end;
      end;
  end;

end;



function Tsmsone_f.MakeTereePath(isRoot:boolean;  aMiddle  : string=''): string;
var

  aSmall : string;
begin
  Result := '';


  with dm_f.SqlField do
  begin

    if aMiddle <> '' then
    begin

        Close;
        Sql.Clear;
        Sql.Add('  select isNull(max(Substring(treepath,4,3)), 0) +1  as maxCode from ma_sms_datakind ');
       // Sql.Add('  where    Substring(treepath,1,3)= :aMiddle '); //문자만 고르자...
        Sql.Add('  where Substring(treepath,1,1)=''1'' and  Substring(treepath,2,2)= :amiddle '); //문자만 고르자...
        paramByname('aMiddle').asString := aMiddle;
        Open;

        aSmall :=  FormatFloat('000', FieldByName('maxCode').AsInteger);
    end
    else
    begin

        Close;
        Sql.Clear;
        Sql.Add('  select isNull(max(Substring(treepath,2,2)), 0) +1  as maxCode from ma_sms_datakind ');
        Sql.Add('  where Substring(treepath,1,1)=''1'' '); //문자만 고르자...
        Open;
        aMiddle :=  FormatFloat('00', FieldByName('maxCode').AsInteger);
        aSmall  :=  FormatFloat('000', 1);

    end;


      if isRoot=true then
      begin

          Result := '1'+ aMiddle +'000'
      end
      else
      begin
          Result := '1'+  aMiddle + aSmall;

      end;

  end;
end;


procedure Tsmsone_f.N32Click(Sender: TObject);
var
  MyRecPtr: PMyRec;
  resp: Integer;
  aTereePath : string;
  aCode, aMiddleCode : string;
  aGroupKind2 : string;
begin
  New(MyRecPtr);
//  MyRecPtr^.treePath := '';
//  MyRecPtr^.groupkind1 := '';
//  MyRecPtr^.groupkind2 := '';
//  MyRecPtr^.groupkind3 := '';

  Self.ImeMode := imDontCare;

  aCode        :=   edtContNo.text;


  if (sender as TMenuItem).Tag = 1 then   //항목추가
  begin

    MyRecPtr^.groupkind1 := '문자';

    aMiddleCode  :=   copy(aCode, 2, 2);

    if   tvSms.Selected.Level =0 then  //항목추가
    begin


        aGroupKind2  :=   tvSms.Selected.Text;
        aTereePath            := MakeTereePath(true)   ;
        MyRecPtr^.treepath    := aTereePath  ;

        if MyInputBox('항목명입력  ', '항목명을 입력하십시오  ', MyRecPtr^.groupkind2, #0) then
        begin
          if MyRecPtr^.groupkind2 = '' then Exit;
        end;

        MyRecPtr^.groupkind3 := '';
        tvSms.Selected := tvSms.Items.AddObject(tvSms.Selected, MyRecPtr^.groupkind2, MyRecPtr);

    end
    else
    begin

         aGroupKind2  :=   tvSms.Selected.Parent.Text;

        aTereePath            := MakeTereePath(false, aMiddleCode)   ;
        MyRecPtr^.treepath    := aTereePath  ;
        MyRecPtr^.groupkind2  := aGroupKind2;

        if MyInputBox('항목명입력  ', '항목명을 입력하십시오  ', MyRecPtr^.groupkind3, #0) then
        begin
          if MyRecPtr^.groupkind3 = '' then Exit;
         end;
          tvSms.Selected := tvSms.Items.AddObject(tvSms.Selected, MyRecPtr^.groupkind3, MyRecPtr);

    end;



  end
  else   if (sender as TMenuItem).Tag = 2 then  //아래항목추가
  begin

//    if tvSms.Selected.Level  >= 1 then
//    begin
//      showmessage('여기서는 아래 항목을 추가 할 수 없습니다.');
//      exit;
//    end;
    aMiddleCode := copy(aCode, 2, 2);
    aGroupKind2  :=   tvSms.Selected.Text;
    MyRecPtr^.groupkind2 :=  aGroupKind2;
    MyRecPtr^.treepath   := MakeTereePath(false, aMiddleCode);

    if MyInputBox('항목명입력  ', '항목명을 입력하십시오  ', MyRecPtr^.groupkind3, #0) then
    begin
           // MyRecPtr^.GName := InputBox('명칭입력  ', '묶음처치명을 입력하십시오  ', '');
      if MyRecPtr^.groupkind3 = '' then Exit;
//      resp := Application.MessageBox('묶음처치항목입니까?     ', '분류명/항목구분         ', MB_YESNOCANCEL);
    end;

      tvSms.Selected := tvSms.Items.AddChildObject(tvSms.Selected,
         MyRecPtr^.groupkind3, MyRecPtr);


  end;

  with dm_f.SqlField do
  begin
        Close;
        Sql.Clear;
        Sql.Add('insert into ma_sms_datakind');
        Sql.Add(' ( GroupKind1, GroupKind2, GroupKind3, treepath, iOrder) values');
        Sql.Add(' ( :GroupKind1, :GroupKind2, :GroupKind3, :treepath, :iOrder)');
        ParamByName('GroupKind1').AsString :=  '문자';
        ParamByName('GroupKind2').AsString :=  MyRecPtr^.groupkind2;
        ParamByName('GroupKind3').AsString :=  MyRecPtr^.groupkind3;
        ParamByName('treepath').AsString   :=  MyRecPtr^.treepath;
        ParamByName('iOrder').AsInteger    :=   tvSMS.Items.Count - 1;
        execsql;
  end;

  tvSms.SetFocus;



end;

procedure Tsmsone_f.TVSmsClick(Sender: TObject);
begin
     if TvSms.Selected.HasChildren = False then
     begin
          DrawItem(PMyRec(TvSms.Selected.Data)^.treePath);
     end;
     edtcontno.text := PMyRec(TvSms.Selected.Data)^.treePath;

     varContentno :=  edtcontno.text;
end;

procedure Tsmsone_f.TVSmsDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  AnItem: TTreeNode;
  AttachMode: TNodeAttachMode;
  HT: THitTests;
begin
//  if TVSms.Selected = nil
//     then Exit;
//
//  HT := TVSms.GetHitTestInfoAt(X, Y);
//  AnItem := TVSms.GetNodeAt(X, Y);
//  if (HT - [htOnItem, htOnIcon, htNowhere, htOnIndent] <> HT) then
//  begin
//    if (htOnItem in HT) or (htOnIcon in HT) then AttachMode := naAddChild
//    else if htNowhere in HT then AttachMode := naAdd
//    else if htOnIndent in HT then AttachMode := naInsert;
//
//    TVSms.Selected.MoveTo(AnItem, AttachMode);
//  end;
//

end;

procedure Tsmsone_f.TVSmsDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
// if (Source is TTreeView) then Accept := True;
end;

procedure Tsmsone_f.TVSmsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
    TrNode : TTreeNode;
begin
      TrNode := TVSms.GetNodeAt(X, Y);
      if (TrNode.Index < 0) then
          Exit;

      TVSms.Selected := TrNode;
end;

procedure Tsmsone_f.spSkinButton13Click(Sender: TObject);
begin
  tvSMs.FullCollapse;
end;

procedure Tsmsone_f.spSkinButton14Click(Sender: TObject);
begin
  tvSMs.FullExpand;
end;

procedure Tsmsone_f.spSkinButton15Click(Sender: TObject);
begin
  if tvSms.Selected <> nil then
  begin
    TreeView_SelNodeMove(tvSms, True);
    tvSms.SetFocus;
  end;
end;

procedure Tsmsone_f.spSkinButton16Click(Sender: TObject);
begin
 if tvSms.Selected <> nil then
  begin
    TreeView_SelNodeMove(tvSms, False);
    tvSms.SetFocus;
  end;
end;

procedure Tsmsone_f.spSkinButton1Click(Sender: TObject);
begin
     MakeSmsTreeView;

end;



procedure Tsmsone_f.TreeView_SelNodeMove(TreeView: TTreeView; Up: Boolean);
var
  SelNode, DestNode: TTreeNode;
begin
  TreeView.Items.BeginUpdate;
  try
    SelNode := TreeView.Selected;
    if SelNode <> nil then
    begin
      if Up then
        DestNode := SelNode.GetPrev
      else
        DestNode := SelNode.GetNext;
      while (DestNode <> nil) and ((DestNode.Level > SelNode.Level) or
        (DestNode.Parent <> SelNode.Parent)) do
      begin
        if DestNode.Level < SelNode.Level then
          Exit;
        if Up then
          DestNode := DestNode.GetPrev
        else
          DestNode := DestNode.GetNext;
      end;
      if (DestNode <> nil) and ((DestNode.Level = SelNode.Level) and
        (DestNode.Parent = SelNode.Parent)) then
      begin
        if Up then
        begin
          if DestNode.AbsoluteIndex = 0 then
            SelNode.MoveTo(DestNode, naAddFirst)
          else
            SelNode.MoveTo(DestNode, naInsert);
        end
        else
        begin
          if SelNode.AbsoluteIndex = 0 then
            DestNode.MoveTo(SelNode, naAddFirst)
          else
            DestNode.MoveTo(SelNode, naInsert);
        end;
      end;
    end;
  finally
    TreeView.Items.EndUpdate;
  end;
end;


////////////////////////////////////////////////////////////////////////////////

procedure TSmsone_f.FindDrawItem(Schcode: string);
begin
     x := 10;
     y := 8;
     i := 1;
     j := 1;
     if SbSms.ControlCount > 0 then
     begin
          while SbSms.ControlCount > 0 do
          begin
               SbSms.Controls[0].Destroy;
          end;
     end;

     //80바이트로 잘라서 보여주기....................................................
     {     with dm_f.SqlWork do
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
                         for j := 1 to (Length(FieldByName('content').AsString) div
                              80) + 1 do
                         begin

                              DrawContent(FieldByName('title').AsString,
                                   Copy(Trim(FieldByName('content').AsString), 80 * (J
                                   - 1), 80),
                                   FieldByName('Class').AsString +
                                   FieldByName('SML_Class').AsString);
                              i := i + 1;
                              if x < SbSms.Width - 300 then
                              begin
                                   x := x + 170;
                              end
                              else
                              begin
                                   x := 10;
                                   y := y + 80 + 28;
                              end;
                         end;
                         Next;
                    end;
               end;
          end;
     //80바이트로 잘라서 보여주기....................................................
     }
     //전부 보여주기.................................................................
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
                    if x < SbSms.Width - 300 then
                    begin
                         x := x + 170 + 90;
                    end
                    else
                    begin
                         x := 10;
                         //전체 세로크기 :메모의 세로크기를 바꾸면 이갓도 바꾸자
//                         y := y + 120 + 28;
                         y := y + 120 + 35 + 90;
                    end;
                    Next;
               end;
          end;
     end;
     //전부보여주기....................................................

end;

procedure Tsmsone_f.btnSaveClick(Sender: TObject);
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

     SaveContent(EdtContName.Text, StringReplace(memSmsContentsSave.Text,
          HPName,
          '+aaa+', [rfReplaceAll,
          rfIgnoreCase]), EdtContNo.text);

     edtContName.Enabled := False;

     pnlContentsSave.Visible := true;
end;

procedure Tsmsone_f.btnSchClick(Sender: TObject);
begin
     if EdtSmsSch.Text <> '' then
          FindDrawItem(EdtSmsSch.Text);

end;

procedure Tsmsone_f.btnChoiceClick(Sender: TObject);
begin
     btnChoice.Enabled := false;
     if (MemContent.Text <> '')
         or ( MemMMSContent.Text  <> '') then
     begin
          case loadKind of
               1:
                    begin
                    end;

               //   ChoicePostData(callsystem_f.grdcall, 1, 3, 2, 8, '',
               //        edtsendno.text);
               2:
                    ChoicePostData(rschedule_f.grdbirth, 1, 3, 4, 5, '',
                         edtsendno.text, 8);
               3:
                    ChoicePostData(rschedule_f.grdcall, 1, 3, 2, 8, '',
                         edtsendno.text);
               5: ;
                //    ChoicePostData(JumGeumYeyakMinewon_f.grdNew, 1, 3, 2, 11, '',   //grid, check, chart, name, hp, 병원명, 병원전화, SMS전송금지
                //         edtsendno.text);
               6:; //접수
                 //   ChoicePostData(findlist_f.grdDaegi, 1, 5, 4, 16, '',   //grid, check, chart, name, hp, 병원명, 병원전화, SMS전송금지
                 //        edtsendno.text);
               7:; //예약
                 //   ChoicePostData(findlist_f.grdDaegi, 1, 5, 4, 16, '',   //grid, check, chart, name, hp, 병원명, 병원전화, SMS전송금지
                 //        edtsendno.text);
               8:; //환자검색 리스트
                 //   ChoicePostData(gogekfind_f.grdFind, 1, 2, 3, 9, '',   //grid, check, chart, name, hp, 병원명, 병원전화, SMS전송금지
                 //        edtsendno.text);
               9: ;//고객구분점검
                  //  ChoicePostData(gubunJumGum_f.grdPrm, 1, 2, 3, 9, '',   //grid, check, chart, name, hp, 병원명, 병원전화, SMS전송금지
                  //       edtsendno.text);
               10: //리콜
                    ChoicePostData(recall_f.grdRecall,   15, 4, 5, 6,'', edtsendno.text ,0, 1   //grid, check, chart, name, hp, 병원명, 병원전화, SMS전송금지
                         );
          end;
          //  ChoicePostData; //저장 후에
          SendSelectData; //그리드에 보여준다.
     end
     else
          showmessage('본문 내용을 입력하세요');
     btnChoice.Enabled := true;

end;

procedure Tsmsone_f.btnClsClick(Sender: TObject);
begin
     pnlContentsSave.Visible := false;
end;

procedure Tsmsone_f.ChoicePostData(varGrid: TadvStringGrid = nil; checkCol:
     integer = 0; chartcol: integer = 0; nameCol: integer = 0; hpCol: integer = 0;
     varHpname: string = ''; varTelNo: string = ''; varNoSMS: integer = 0; varRecalDayCol:integer=0);
//ChoicePostData(varGrid:TadvStringGrid=nil; checkCol=0, chartcol=0, nameCol=0, hpCol:integer=0;
//varHpname='',varTelNo='':string);
var
     nRow, i, ii, j: Integer;
     MaxSBcode, s, sm: string;
     sw: widestring;

     varRemark: string;
     stat, stat2: boolean;

begin

     //------------------------------------------------------------------------------
     Application.ProcessMessages;
     //  Enabled := false;

     Waiter_f := Twaiter_f.Create(application);
     //    Waiter_f.Top := PnlChoice.Top + 50;

     Waiter_f.Show;
     Application.ProcessMessages;

     Waiter_f.Gauge1.Progress := 0;

     Waiter_f.Gauge1.MaxValue := varGrid.RowCount;
     Waiter_f.Edit1.Text := IntToStr(varGrid.RowCount);

     Application.ProcessMessages;
     //------------------------------------------------------------------------------

     for i := 0 to varGrid.RowCount - 1 do
     begin
          try
               varGrid.GetCheckBoxState(checkCol, i, stat);
               varGrid.GetCheckBoxState(varNosms, i, stat2);
               if (stat = true) and (stat2 = false) then

               begin

                  case  pgkind.ActivePageIndex of
                  0://SMS
                    varRemark := StringReplace(MemContent.Text,
                         '+aaaa+',
                         varHPName, [rfReplaceAll, rfIgnoreCase]);
                  1://MMS
                   varRemark := StringReplace(memMMsContent.Text,
                         '+aaaa+',
                         varHPName, [rfReplaceAll, rfIgnoreCase]);
                  end;

                    varRemark := StringReplace(varRemark,
                         '+aaa+', sCustName,
                         [rfReplaceAll, rfIgnoreCase]);
                    varRemark := StringReplace(varRemark, '+ccc+',
                         varTelNo,
                         [rfReplaceAll, rfIgnoreCase]);
                    varRemark := StringReplace(varRemark, '+ddd+',
                         trim(vargrid.Cells[NameCol, i]),
                         [rfReplaceAll,
                         rfIgnoreCase]);
                    varRemark := StringReplace(varRemark, '+aaa+',
                         scustName,
                         [rfReplaceAll,
                         rfIgnoreCase]);

                    varRemark := StringReplace(varRemark, '+dd+', substr(vargrid.Cells[varRecalDayCol, i],3,'-'),
                           [rfReplaceAll, rfIgnoreCase]);
//                    varRemark := StringReplace(varRemark, '+hh+', EdtTime.Text,
//                           [rfReplaceAll,
//                           rfIgnoreCase]);
//                    varRemark := StringReplace(varRemark, '+mm+', EdtMin.Text,
//                           [rfReplaceAll, rfIgnoreCase]);
                    varRemark := StringReplace(varRemark, '+xxxx+', '30',
                           [rfReplaceAll, rfIgnoreCase]);
                    varRemark := StringReplace(varRemark, '+rr+',  substr(vargrid.Cells[varRecalDayCol, i],2,'-'),
                           [rfReplaceAll, rfIgnoreCase]);



                    Sw := varRemark;
                    S := varRemark;

                    with dm_f.SqlWork do
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

                  case pgKind.ActivePageIndex  of


                      0:  ii := (Length(S) div 90);
                      1:  ii :=0 ;


                  end;

                    for j := 0 to ii do
                    begin




                       case pgKind.ActivePageIndex  of


                            0:  sm := Trim(Copy_hangul(Trim(s), (90 * j) + 1,  90));   // 45자씩 자르기
                            1:  sm := Trim(s);


                       end;


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
                              Sql.Add(' (SBRegDate=:SBRegDate) and');
                              Sql.Add(' (SBChoice=:SBChoice) and ');
                              Sql.Add(' (SBSFSMS<>:SBSFSMS) and ');
                              Sql.Add(' (SBContent=:SBContent)');

                              ParamByName('SBChart').AsString :=
                                   varGrid.Cells[chartcol, i];
                              ParamByName('SBContent').AsString :=
                                   Sm;

                              ParamByName('SBRegDate').AsString :=
                                   FormatDateTime('YYYY-MM-DD',
                                   now);
                              ParamByName('SBCHOICE').AsString :=
                                   '1';
                              ParamByName('SBSFSMS').AsString :=
                                   '1';
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
                                        ParamByName('SBChart').AsString := vargrid.Cells[ChartCol, i];
                                        ParamByName('SBName').AsString := vargrid.Cells[NameCol, i];
                                        ParamByName('SBTel').AsString := '';
                                        ParamByName('SBMail').AsString := '';
                                        ParamByName('SBHp').AsString := vargrid.Cells[hpCol, i];
                                        ParamByName('SBContent').AsString := Sm;
                                        ParamByName('SBRegDate').AsString := FormatDateTime('YYYY-MM-DD', now);
                                        ParamByName('SBZip').AsString := '';
                                        ParamByName('SBAdd').AsString := '';
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

procedure Tsmsone_f.SendSelectData;
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
     end;

     GrdSms.RowCount := 1;

     with DM_f.sqlTemp do
     begin

          Close;
          Sql.Clear;

          SQL.Text := SQL_SELECT_DATA_SMS;
          ParamByName('SBRegDate').AsString := varSendYear + '-' +
               varSendMonth
               +
               '-' + varSendDay;
          ParamByName('SBCHOICE').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1';
          //성공하지 않은것만 불러온다.
          Open;
          Application.ProcessMessages;
          Enabled := false;

          Waiter_f := Twaiter_f.Create(application);
          //   Waiter_f.Top := PnlChoice.Top + 50;

          Waiter_f.Show;
          Application.ProcessMessages;

          Waiter_f.Gauge1.Progress := 0;

          Waiter_f.Gauge1.MaxValue :=  DM_f.Sqlwork.FieldByname('countGogek').AsInteger;
          Waiter_f.Edit1.Text :=  DM_f.Sqlwork.FieldByname('countGogek').AsString;

          Application.ProcessMessages;


          if not IsEmpty then
          begin
               while not EOF do
               begin

                    {
                     with grdSendList do
                     begin
                          AddRow;
                          Cells[0, RowCount - 1].AsString := FieldByName('SBName').AsString;
                          Cells[1, RowCount - 1].AsString := FieldByName('SbHp').AsString;
                     end;
                    }
                    with  GrdSms do
                    begin
                        AddRow; // 그리드에 빈 로우를 추가

                        Cells[1, RowCount - 1] := FieldByName('SBName').AsString;
                        Cells[2, RowCount - 1] := FieldByName('SBChart').AsString;
                        Cells[3, RowCount - 1] := FieldByName('SbHp').AsString;
                        Cells[4, RowCount - 1] := FieldByName('SbTel').AsString;
                        Cells[5, RowCount - 1] := FieldByName('SbMail').AsString;
                        Cells[6, RowCount - 1] := FieldByName('SbContent').AsString;
                        Cells[7, RowCount - 1] := FieldByName('SbRegDate').AsString;
                        Cells[8, RowCount - 1] := FieldByName('SBSendDate').AsString;
                        Cells[9, RowCount - 1] := FieldByName('SBSendTime').AsString;
                        Cells[10, RowCount - 1] := FieldByName('SBAdd').AsString;
                        Cells[11, RowCount - 1] := FieldByName('SBQty').AsString;
                        Cells[12, RowCount - 1] := FieldByName('SBGroup').AsString;
                        Cells[13, RowCount - 1] := FieldByName('SBCHOICE').AsString;
                        Cells[14, RowCount - 1] := FieldByName('SBCODE').AsString;
                        AutoSizeRow(RowCount - 1);
                    end;
                    Application.ProcessMessages;
                    next;
                    Waiter_f.Gauge1.Progress := Waiter_f.Gauge1.Progress + 1;
                    Waiter_f.Edit1.Text :=   IntToStr(StrToint(Waiter_f.Edit1.Text)  - 1);
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

     GrdSms.AutoNumberCol(0);
end;

procedure Tsmsone_f.btnDelClick(Sender: TObject);
const
     SQL_DELETE_DATA_ALL = 'DELETE FROM ma_sms_sendlist                      '
          +
          #13#10 +
          'where SBRegDate =:SBRegDate and SBCHOICE=:SBCHOICE and SBSFSMS<>:SBSFSMS';

var
     i: integer;
begin
     if GrdSms.Rowcount > 1 then
          if Application.MessageBox('전체 내용을 삭제하시겠습니까?', '삭제',
               MB_YESNO) = IDYES then

               with Dm_f.SqlWork  do
               begin
                    try


                         for i := 1 to grdSms.rowcount - 1 do
                         begin
                              SQL.Text := SQL_DELETE_DATA_ALL;
                              ParamByName('SBRegDate').AsString := grdSms.cells[7, i];
                              ParamByName('SBCHOICE').AsString  :=   '1';
                              ParamByName('SBSFSMS').AsString   :=   '1';
                              //성공하지 않은것만 불러온다.
                              ExecSQL;
                         end;

                         grdSms.RowCount :=1;

                    except
                         on E: Exception do
                         begin
                              ShowMessage(E.Message +  ' [삭제오류]');
                         end;
                    end;
               end;

end;

procedure Tsmsone_f.btnDSendClick(Sender: TObject);
var
 i: integer;
      Vtong,
          VGuk,
          VBun : string;

begin

     if grdSms.RowCount > 1 then
     begin

          case pgKind.ActivePageIndex  of
           0:     //SMS
                begin

                      if
                           Application.MessageBox('선택하신 모든 내용을 <지금> 전송하시겠습니까?',
                           '지금전송확인', MB_YESNO) = IDYES then
                           SendMessage_All
                      else
                           exit;


                end;
            1:   //MMS
                begin
                  if
                     Application.MessageBox('선택하신 모든 내용을 <지금> MMS전송하시겠습니까?',
                           '지금 MMS전송확인', MB_YESNO) = IDYES then
                     begin
                           for i:= 1 to grdSMS.RowCount - 1 do
                           begin

                                Vtong := SubStr(grdSMS.Cells[3,i] , 1,   '-');
                                VGuk  := SubStr(grdSMS.Cells[3,i] , 2,   '-');
                                VBun  := SubStr(grdSMS.Cells[3,i] , 3,   '-');

                                SendMMS(Vtong, VGuk , VBun);
                           end;
                     end
                     else
                     begin
                          exit;
                     end;
                end;
          end;

     end
     else
     begin
          showmessage('선택된 내용이 없습니다.');
     end;

end;

procedure Tsmsone_f.btnGroupSaveClick(Sender: TObject);
var
  i: Integer;
begin
  if Application.MessageBox('현재 모든 내역을 저장하시겠습니까?', '확인', MB_OKCANCEL) = 1 then
  begin
    try
//      if not assigned(Progress_f) then Progress_f := TProgress_f.Create(application);
//      Progress_f.Label1.Caption := '전체 묶음 편집내역을 저장중입니다. 시스템에 따라 다소 시간이 걸립니다.';
//      Progress_f.Show;

      dm_f.UniConnection1.StartTransaction;
     if tvSMS.Items.Count > 0 then
        begin
          try
           with dm_f.SqlFind do
           begin
            Close;
            Sql.Clear;
           // select * from ma_sms_datakind
           // order by treepath

            Sql.Add('delete from ma_sms_datakind');
            Sql.Add('where groupkind1=''문자'' ');
            execSql;
//            Progress_f.ProgressBar1.Max := tvGroups.Items.Count - 1;
//            Progress_f.ProgressBar1.Min := 1;
//            Progress_f.ProgressBar1.Position := 1;

            for i := 0 to tvSMS.Items.Count - 1 do
            begin
            //  if PMyRec(tvSMS.Items.Item[i].Data)^.treePath  = '' then
            //  begin
                         //분류
                Close;
                Sql.Clear;
                Sql.Add('insert into ma_sms_datakind (Groupkind1, Groupkind2, Groupkind3, treepath, iOrder)');
                Sql.Add(' values (:Groupkind1, :Groupkind2, :Groupkind3, :treepath , :iOrder)');

            //    if tvSMS.Items.Item[i].Level = 1 then
                ParamByName('iOrder').AsString     := inttostr(i);
                ParamByName('Groupkind1').AsString := '문자';
                ParamByName('Groupkind2').AsString := PMyRec(tvSMS.Items.Item[i].Data)^.Groupkind2 ;
                ParamByName('Groupkind3').AsString := PMyRec(tvSMS.Items.Item[i].Data)^.Groupkind3 ;
                ParamByName('treepath').AsString   := PMyRec(tvSMS.Items.Item[i].Data)^.treePath ;
                ExecSql;
            //  end;
            end;
        //    Progress_f.ProgressBar1.Position := Progress_f.ProgressBar1.Max;
            Showmessage('저장되었습니다');
           end;
          except
            on E : Exception do begin
            dm_f.uniConnection1.Rollback;
            Showmessage('저장이 취소되었습니다.' + #13#10 + E.Message);
          end;
        end;
      end;





    finally
     // Progress_f.Hide;
    end;

    dm_f.uniConnection1.Commit;

  end;

end;

procedure Tsmsone_f.SendMessage_All;
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

     with DM_f.SqlTemp do
     begin
          Close;
          Sql.Clear;

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

procedure Tsmsone_f.edtRecvNoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin

          edtRecvNo.text := call_tel_type(edtRecvNo.text);
     end;
end;

procedure Tsmsone_f.edtSendNoExit(Sender: TObject);
begin
     edtSendNo.text := call_tel_type(edtSendNo.text);
end;

procedure Tsmsone_f.edtSendNoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin

          edtSendNo.text := call_tel_type(edtSendNo.text);
     end;
end;

{1 or 79 (O-영문)	호출요청성공
-1	INVALID_SOCKET (Socket 연결 실패, Connect 실패)
-2	잘못된 패킷 사이즈 전송
-3	잘못된 패킷 사이즈 수신
11	전화번호 이상
21 (!)	Connect 실패
22 (“)	데이터 Send 실패
23 (#)	Ack Receive 실패
67 (C)	잔액부족
68 (D)	고객사 코드 이상
69 (E)	예기치 않은 오류
73 (I)	미등록 회원 또는 기본료미납
77 (M)	호출할 메시지의 내용이 없음.
78 (N)	국번 or 전화번호 뒤 4자리 이상
80 (P)	이통사번호 이상
82 (R)	‘700’,’800’ 금지업체
84 (T)	예약일자 이상
85 (U)	호출 URL이 없음
90 (Z)	수신거부 등록번호
88(X) or 99 (c-소문자)	데이터 포맷 오류, 기타 오류
}

procedure  Tsmsone_f.GetDirectories(Tree: TTreeView; Directory: string; Item: TTreeNode; IncludeFiles: Boolean);
var
   SearchRec: TSearchRec;
   ItemTemp: TTreeNode;
   MyRecPtr3: PMyRec3;

begin
   Tree.Items.BeginUpdate;
   if Directory[Length(Directory)] <> '\' then Directory := Directory + '\';
   if FindFirst(Directory + '*.*', faDirectory, SearchRec) = 0 then
   begin
     repeat
       if (SearchRec.Attr and faDirectory = faDirectory)  and (SearchRec.Name[1] <> '.') then
       begin
           New(MyRecPtr3);
           MyRecPtr3^.FdirName :=Directory +SearchRec.Name;

           if (SearchRec.Attr and faDirectory > 0) then
            // Item := Tree.Items.AddChild(Item, SearchRec.Name, MyRecPtr3);
               Item := Tree.Items.AddChildObject(Item,
                              SearchRec.Name,
                              MyRecPtr3);


             { TreeTemp1 := TvSms.Items.AddChildObject(nil,
                              FieldByName('GroupKind2').AsString,
                              MyRecPtr);
                         TreeTemp1.ImageIndex := 0;
                         TreeTemp1.SelectedIndex := 1;}




           ItemTemp := Item.Parent;
           GetDirectories(Tree, Directory + SearchRec.Name, Item, IncludeFiles);
           Item := ItemTemp;
                     


       end
   //    else if IncludeFiles then   //디렉터리 밑에 있는 파일도 가져오자...
   //      if SearchRec.Name[1] <> '.' then
   //        Tree.Items.AddChild(Item, SearchRec.Name);
     until FindNext(SearchRec) <> 0;
     FindClose(SearchRec);
   end;
   Tree.Items.EndUpdate;
end;

procedure Tsmsone_f.loadTreeList;
 var
   Node: TTreeNode;
   Path: string;
   Dir: string;
begin

        Dir := extractFilePath(paramstr(0))+'MMSImages';
        Screen.Cursor := crHourGlass;
        TreeView1.Items.BeginUpdate;
        try
          TreeView1.Items.Clear;
          GetDirectories(TreeView1, Dir, nil, True);
        finally
          Screen.Cursor := crDefault;
          TreeView1.Items.EndUpdate;
        end;

        ShowDir(PMyRec3(Treeview1.items[0].Data)^.Fdirname );
end;


procedure Tsmsone_f.TreePopUPPopup(Sender: TObject);
begin
      if tvSms.Selected.Level >=1 then
            n33.enabled := false
      else
            n33.enabled := true;

end;

procedure Tsmsone_f.TreeView1Click(Sender: TObject);
begin
       // showmessage(PMyRec3(Treeview1.Selected.Data)^.Fdirname);
 ShowDir(PMyRec3(Treeview1.Selected.Data)^.Fdirname);

end;
procedure Tsmsone_f.ShowDir(varDir:string);
begin
       // showmessage(PMyRec3(Treeview1.Selected.Data)^.Fdirname);
  if lastDir = varDir then exit;

  lastDir := varDir;

  tl.BeginUpdate;
  try
    tl.ShowFolder(varDir+'\*.*');
  finally
    tl.EndUpdate;
  end;


end;

procedure Tsmsone_f.tlClick(Sender: TObject);
begin
  if tl.ItemIndex >= 0 then
  begin
       if   advEdit1.text ='' then
       begin
          advEdit1.text := tl.Thumbnails.Items[tl.ItemIndex].FileName ;
          image1.Picture.LoadFromFile(advEdit1.text );
       end
       else
           if  advEdit2.text ='' then
            begin
                 advEdit2.text := tl.Thumbnails.Items[tl.ItemIndex].FileName ;
                 image2.Picture.LoadFromFile(advEdit2.text );
            end
       else
           if  advEdit3.text ='' then
               begin
                advEdit3.text := tl.Thumbnails.Items[tl.ItemIndex].FileName;
                image3.Picture.LoadFromFile(advEdit3.text );
              end;
  end;
end;

procedure Tsmsone_f.Button2Click(Sender: TObject);
begin
       image1.Picture:=nil;
       advEdit1.text :='';
end;

procedure Tsmsone_f.Button3Click(Sender: TObject);
begin
       image2.Picture:=nil;
       advEdit2.text :='';

end;

procedure Tsmsone_f.Button4Click(Sender: TObject);
begin
       image3.Picture:=nil;
       advEdit3.text :='';

end;

procedure Tsmsone_f.yeyakDayEditChange(Sender: TObject);
begin
     cbYeyak.Checked:=true;
end;

procedure Tsmsone_f.Button5Click(Sender: TObject);
begin
   smsLogin;
end;
procedure Tsmsone_f.smsLogin;
var
     nRet2, nTotal, nCall:integer;
      sReqTel1, sReqtel2,
          sReqtel3:widestring;
begin
      nRet2 :=
          main_f.smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName,
           sReqTel1, sReqtel2,
          sReqtel3, nTotal,nCall );

end;

procedure Tsmsone_f.Button6Click(Sender: TObject);
begin
   if OD.Execute  then
   begin

       if   advEdit1.text = '' then
       begin
          advEdit1.text := OD.FileName ;
          image1.Picture.LoadFromFile(advEdit1.text );
       end
       else
           if  advEdit2.text ='' then
            begin
                 advEdit2.text := OD.FileName ;
                 image2.Picture.LoadFromFile(advEdit2.text );
            end
       else
           if  advEdit3.text ='' then
               begin
                advEdit3.text :=OD.FileName;
                image3.Picture.LoadFromFile(advEdit3.text );
              end;
   end;
end;

procedure Tsmsone_f.btnAddClick(Sender: TObject);
var
     sPath: string;
begin
     edtContName.text := ''; // varContentName;

//     edtContNo.text := varContentno;

     memSmsContentsSave.Text := '';
     edtContName.Enabled := true;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
//          Sql.Add('select * from ma_sms_contents');
//          sQL.aDD('where Class=:Class');
//          sQL.aDD('order by  Class, Sml_Class');

          Sql.Add('  select isnull( max([SML_CLASS]) , 0) +1 as MaxCode from ma_sms_contents   ');
          Sql.Add('  where class=:class                                              ');
          ParamByName('Class').AsString := Copy(edtcontno.text, 1,  6);
          Open;

          sPath := FormatFloat('000', FieldByName('MaxCode').AsInteger );

     end;
     edtcontno.text := Copy(edtcontno.text, 1, 6) + sPath;
     //     edtcontname.SetFocus;
     pnlContentsSave.Visible := true;
     pnlContentsSave.Caption.text := 'SMS 컨텐츠 추가';
 //    pnlContentsSave.DragKind := dkDock;
     //pnlinfo.ManualFloat(Rect(700, 200, 1000, 700));
 //    pnlContentsSave.ManualFloat(Rect(350, 140, 515, 360));
     pnlContentsSave.BringToFront;

end;

procedure Tsmsone_f.FormCreate(Sender: TObject);
begin
    with grdSms do
    begin
        rowcount:=1;
        ColWidths[4]:=0;
        ColWidths[5]:=0;
        ColWidths[7]:=0;
        ColWidths[8]:=0;
        ColWidths[9]:=0;
        ColWidths[10]:=0;
        ColWidths[11]:=0;
        ColWidths[12]:=0;
        ColWidths[13]:=0;
        ColWidths[14]:=0;
        
    end;

  //  flowpanel1.Align := alClient;
    flowPanel1.Left:=0;
    flowPanel1.Top:=0;
    pgKind.ActivePageIndex := 0;

    initAdvGrid(grdSMS, true);

end;

procedure Tsmsone_f.pgSMSChange(Sender: TObject);
begin
  case  pgSms.activePageindex of
  2:
  begin
       loadTreeList;
   end;
   end;
end;

procedure Tsmsone_f.pgKindChange(Sender: TObject);
begin
      case pgKind.activepageindex of
          0:
          begin
              pnlMms.Visible:=false;
          end;
          1:
          begin

               pnlMms.Visible:=true;
               memMMSContent.text:='';
               memMMSContent.setfocus;
                loadTreeList;
            //   pgSms.ActivePageIndex:=2;
          //     memMMSContent.text :=      memContent.text;
                 memMMsContent.text :=  memContent.text;
          end;
      end;
end;



procedure Tsmsone_f.resizeFlowPanel;
begin

       sbSMS.VertScrollBar.Visible := true;
       sbSMS.HorzScrollBar.Visible := false;

       flowPanel1.Width := sbSMS.Width - 15;

       if flowPanel1.Width  <= 0 then
       exit;
       if  thumbHeight   <= 0 then
       exit;
       if  thumbWidth   <= 0 then
       exit;
       if  imgCnt   <= 0 then
       exit;


        imgHorzCnt :=  round( flowPanel1.Width  /
                   (thumbWidth+imgLeftMargin+ imgRightMargin)  - 0.5);
                                                        //마진 left 5, right 5을 더해 줘라
       if imgHorzCnt  <= 0 then
         exit;



       imgVertCnt :=  round(imgCnt / imgHorzCnt ) + 1;

       if imgVertCnt <= 0 then
          exit;

       flowPanel1.Height := imgVertCnt
               * (thumbHeight + imgBottomMargin+ imgTopMargin) + imgBottomMargin*2;
       sbSMS.HorzScrollBar.Range :=  flowPanel1.Width     ;    // set the range to an higher number
       sbSMS.VertScrollBar.Range :=  flowPanel1.Height    ;    // set the range to an higher number
 end;



end.





{
procedure Tsmsone_f.MakeImagePanels;
var
     temppanel : array of Tadvpanel;
     temppanel2 : array of Tadvpanel;
     jpgImage : TJpegImage;
     imagename2:string;
     g, e:integer;

     imageFullName:string;

begin
     //1. 이미지용 판넬생성
     //2. 라벨용 판넬 생성
     //3. 라벨 생성
     //4. 이미지 생성

     application.processmessages;

     setlength(tempPanel, 1000);
     setlength(tempPanel2, 1000);
     setlength(tempLabel, 1000);
     setlength(tempImg, 1000);

      k:=0;
      x := 20;
      y := 15;
      i := 1;
      j := 1;

      for e := 0 to grdFileList.rowCount - 1 - 1 do
   //   for e := 0 to lbFileList.items.Count - 1 do
      begin

           tempPanel[e] := TadvPanel.Create(self);
           tempPanel2[e] := TadvPanel.Create(self);

          // tempImg[e] := TImage.Create(self);
           tempImg[imageCnt] := TImage.Create(self);
           tempLabel[e] := TLabel.Create(self);
           tempLabel[imageCnt] := TLabel.Create(self);



           with tempPanel[e] do
           begin
                   Parent := tempScrollBox[GroupIndex];//SbItem;
                   Left := x;
                   Top := y + 5;
                   Width := 163;
                   Height := 157;


           end;
           with tempPanel2[e] do
           begin
                   Parent := tempPanel[e];

                   color:=clwhite;
                   align:=alTop ;
                   Height := 20;


           end;

          // with tempLabel[e] do
           with tempLabel[imageCnt] do
           begin
                   Parent := tempPanel2[e];
                   align:=alClient ;
                   color:=clGreen;
                   caption:='';
                   font.color:=clWhite;
                   onMouseleave:=TempLabelMouseLeave;
                   onMouseEnter:=TempLabelMouseEnter;

           end;


           with tempImg[imageCnt] do
       //    with tempImg[e] do
           begin
                   Parent := tempPanel[e];
                   align := alClient;

                   center := true;
                   Stretch := true;
                   proportional :=true;
                   showhint := true;

                   onClick := tempImgClick;
                   PopupMenu:= popupmenu1;

                   OnContextPopup := TempImgContextPopup;
                   Picture.LoadFromFile(extractfilepath(paramstr(0)) + 'picture\logo.bmp')  ;
           end;

           //이미지를 쓰레드로 읽으면서 각 이미지 배열에 불러온다.

           // imageFullName:= lbFileList.items[e] ;
            imageFullName:= grdFileList.cells[1, e + 1] ;  //이미지 Path
            imageName2:= ExtractURLFileName( imageFullName);
            if trim( grdFileList.cells[2, e + 1]) <> '' then
                tempLabel[imageCnt].Caption:= grdFileList.cells[2, e + 1]  //Image Caption //  fieldByName('imageCap').AsString
            else
                  tempLabel[imageCnt].Caption:=  imageName2;
            DownloadThread:=
                TDownloadThread.Create(imageFullName ,
                extractFilepath(paramstr(0))+'images\'+ imagename2,  imageCnt);

            imageCnt :=  imageCnt + 1; //각 그룹에 생성된 image 인덱스를 찾아가야한다.



          k := k + 1;
          i := i + 1;
          //   if x < SbItem.Width - 300 then

          if x < tempScrollBox[GroupIndex].Width - 300 then
          begin
               x := x + 200;
          end
          else
          begin
               x := 20;
               y := y + 180;
          end;

      end;

end;
}


 


