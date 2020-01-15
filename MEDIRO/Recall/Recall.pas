unit Recall;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs,  StdCtrls,ComCtrls,
       ExtCtrls,  AdvProgressBar, Grids,
       BaseGrid, AdvGrid, AdvEdit, Mask, Buttons, AdvObj,
  Menus, AdvGlowButton, AdvPanel, AdvUtil, AdvCombo, ColCombo;

type
       Trecall_f = class(TForm)
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    Panel2: TPanel;
    Label1: TLabel;
    N1: TMenuItem;
    Panel8: TPanel;
    lblanotherid: TLabel;
    EdtRcCode: TEdit;
    wLabel88: TLabel;
    cbSMS: TCheckBox;
    BtnDel: TButton;
    BtnSave: TButton;
    BtnNew: TButton;
    btnMod: TButton;
    btnCancel: TButton;
    pnlRecall: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    progressbar: TAdvProgressBar;
    btnRecallTerm: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    lblcPhone: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    EdtRecallName: TEdit;
    memRecallRemark: TMemo;
    EdtRecallTel: TEdit;
    EdtRecallChart: TEdit;
    memRecallBigo: TMemo;
    edtDamdang: TComboBox;
    btnRepeat: TButton;
    ListBox1: TListBox;
    wLabel80: TLabel;
    wLabel81: TLabel;
    wLabel82: TLabel;
    wLabel83: TLabel;
    wLabel86: TLabel;
    wLabel87: TLabel;
    wLabel89: TLabel;
    wLabel90: TLabel;
    wLabel91: TLabel;
    wLabel2: TLabel;
    wLabel5: TLabel;
    cbTime: TComboBox;
    cbMin: TComboBox;
    cbKind: TComboBox;
    deRecall: TDateTimePicker;
    DeCheckDay: TDateTimePicker;
    dtStart: TDateTimePicker;
    grdRecall: TAdvStringGrid;
    pnlMemo: TAdvPanel;
    Memo1: TMemo;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    edtCode: TEdit;
    Panel1: TPanel;
    Label15: TLabel;
    wLabel1: TLabel;
    EdtSch2: TAdvEdit;
    rbChart: TRadioButton;
    rbTerm: TRadioButton;
    BtnRecallSch: TButton;
    BtnPrt: TButton;
    btnSMS: TButton;
    dpRecall1: TDateTimePicker;
    dpRecall2: TDateTimePicker;
    cbMinewon: TCheckBox;
    Panel4: TPanel;
    CbCheck: TCheckBox;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    Label2: TLabel;
    Label3: TLabel;
              procedure BtnNewClick(Sender: TObject);
              procedure btnModClick(Sender: TObject);
              procedure BtnSaveClick(Sender: TObject);
              procedure BtnDelClick(Sender: TObject);
              procedure BtnPrtClick(Sender: TObject);
              procedure BtnRecallSchClick(Sender: TObject);
              procedure FormShow(Sender: TObject);
              procedure EdtRecallNameKeyPress(Sender: TObject; var Key: Char);
              procedure EdtRecallChartKeyPress(Sender: TObject; var Key: Char);
              procedure EdtSch2KeyPress(Sender: TObject; var Key: Char);
              procedure GrdRecallMouseDown(Sender: TObject; Button:
                     TMouseButton;
                     Shift: TShiftState; X, Y: Integer);
              procedure grdRecallRowChanging(Sender: TObject; OldRow,
                     NewRow: Integer; var Allow: Boolean);
              procedure btnRecallTermClick(Sender: TObject);
              procedure rbChartClick(Sender: TObject);
              procedure rbTermClick(Sender: TObject);
              procedure EdtRecallTelChange(Sender: TObject);
              procedure btnCancelClick(Sender: TObject);
    procedure cbKindChange(Sender: TObject);
    procedure cbKindClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnRepeatClick(Sender: TObject);
    procedure CbCheckClick(Sender: TObject);
    procedure btnSMSClick(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure grdRecallClickCell(Sender: TObject; ARow, ACol: Integer);
       private
              { Private declarations }

              loadRecallTerm : boolean; // ���ݳ��� �����Ҷ� ����Ʈ�̸� ��¥�� �Ⱓ���� �ڵ����� �ٲ��.


              function ma_recallSave(varDate:string; varTime:string): integer; //ma_recall����
              {procedure ma_recallPost;}
              procedure RecallCodeSet;
              procedure FieldSet;
              procedure savegogekPhone(id, chart, phone, sms, kind, reg_day:  string);

              procedure btnSet(varCond: integer);
              procedure UpdateSmsSendStatus;
              procedure loadRecallSayu;
              function isHoliday(varDate: TdateTime): boolean;
    procedure LoadTreatRoomList;

       public
              { Public declarations }

              varRecallKind: string;
              procedure FieldClear;
              procedure FieldClear1;
              procedure FieldClear2;
              procedure loadSawon;

              procedure Selectma_recallChart;

       end;

var
       recall_f: Trecall_f;

implementation

uses  uConfig, dateUtils, uDM, umain, uGogekData, uFormInit,
      uGogekData_find, uFunctions, smsone, uSendSMS, recallRepeat;//RRecallPrt, recallRepeat, ;

const
       SQL_SELECT_ma_recall_chartFIND =
              'SELECT *' + #13#10 +
              ', (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone  from ma_recall ' + #13#10
              +
              'Where    Rcchart = :RcChart ' + #13#10
              +
              'order by RcDate         ';
       SQL_SELECT_DATA_FIND_RECALL = 'SELECT RCChart,RCname,RCDATE,RCTime,RcTEL'
              +
              #13#10 +
              ', (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone from ma_recall' + #13#10
              +
              'where   RCDATE = :RCDATE   ' + #13#10 +
              'order by RCNAME                                        ';

       SQL_SELECT_ma_recall =
              'SELECT *' + #13#10 +
              ', (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone from ma_recall  ' + #13#10
              +
              'where RCDATE >= :RCDATE1 and  RCDATE <= :RCDATE2   ' + #13#10 +
              'order by RcDate         ';
       SQL_SELECT_ma_recall_date =
              'SELECT *' + #13#10 +
              ', (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone from ma_recall  ' + #13#10
              +
              'where   RCDATE >= :RCDATE1 and  RCDATE <= :RCDATE2   ' + #13#10 +
              'order by RcDate         ';
       SQL_SELECT_ma_recallFIND =
              'SELECT *' + #13#10 +
              ', (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone  from ma_recall ' + #13#10
              +
              'Where    rcRemark like :rcRemark and (RcDate >= :RcDate1 and RcDate <= :RcDate2 )  ' + #13#10
              +
              'order by RcDate         ';
       SQL_SELECT_ma_recallFIND_cbMinewon =
              'SELECT *' + #13#10 +
              ', (select top 1 phone from ma_gogek_phone where kind=''2'' and ma_gogek_phone.chart=ma_recall.rcChart)   as cphone   from ma_recall ' + #13#10
              +
              'Where  rcRemark like :rcRemark and RcCheck=:RcCheck  and (RcDate >= :RcDate1 and RcDate <= :RcDate2 )  ' + #13#10 +
              'order by RcDate         ';

       SQL_DELETE_ma_recall =
              'DELETE' + #13#10 +
              ' FROM   ma_recall' + #13#10 +
              'Where RCCode=:RcCode         ';
       SQL_INSERT_ma_recall =
              'INSERT INTO ma_recall       ' + #13#10 +
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
              'team,                     ' + #13#10 +
              'doc_code,                 ' + #13#10 +
              'pos,                      ' + #13#10 +
              'anotherid,                ' + #13#10 +
              'RcKind,                   ' + #13#10 +
              'sms,                      ' + #13#10 +
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
              ':team,                    ' + #13#10 +
              ':doc_code,                ' + #13#10 +
              ':pos,                     ' + #13#10 +
              ':anotherid,               ' + #13#10 +
              ':RcKind,                  ' + #13#10 +
              ':sms,                     ' + #13#10 +
              ':RcBigo)                  ';

       SQL_UPDATE_ma_recall =
              'UPDATE ma_recall SET            ' + #13#10 +
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
              'RcKind      =:RcKind ,        ' + #13#10 +
              'team        =:team ,          ' + #13#10 +
              'doc_code    =:doc_code ,      ' + #13#10 +
              'pos     =:pos ,               ' + #13#10 +
              'anotherid     =:anotherid ,    ' + #13#10 +
              'sms       =:sms ,    ' + #13#10 +
              'RcBigo      =:RcBigo          ' + #13#10 +
              'WHERE RCcode=:RCCode          ';

{$R *.dfm}

procedure TRecall_f.btnSet(varCond: integer);
begin
       case varCond of
              0: //�߰� ������
                     begin
                            btnNew.enabled := false;
                            btnMod.enabled := false;
                            btnSave.enabled := true;
                            btncancel.enabled := true;
                            btnDel.enabled := false;
                            //btnPrt.enabled := false;
                            pnlRecall.enabled := true;
                     end;
              1: //���� ������
                     begin
                            btnNew.enabled := false;
                            btnMod.enabled := false;
                            btnSave.enabled := true;
                            btncancel.enabled := true;
                            btnDel.enabled := false;
                            //btnPrt.enabled := false;
                            pnlRecall.enabled := true;
                     end;
              2: //��Ҵ�����
                     begin
                            btnNew.enabled := true;
                            btnMod.enabled := false;
                            btnSave.enabled := false;
                            btncancel.enabled := false;
                            btnDel.enabled := false;
                            //btnPrt.enabled := true;
                            pnlRecall.enabled := false;

                     end;
              3: //fieldset�Ǹ�
                     begin
                            btnNew.enabled := true;
                            btnMod.enabled := true;
                            btnSave.enabled := false;
                            btncancel.enabled := false;
                            btnDel.enabled := true;
                            //btnPrt.enabled := true;
                            pnlRecall.enabled := false;

                     end;
       end;
end;

procedure TRecall_f.RecallCodeSet;
begin
       with Dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select Max(RCcode) As MaxRcCode from ma_recall');
              Open;
              if FieldByName('MaxRcCode').AsString <> '' then
                     EdtRcCode.Text := formatFloat('00000000',
                            FieldByName('MaxRcCode').AsInteger + 1)
              else
                     EdtRcCode.Text := '00000001';

       end;

end;

procedure Trecall_f.BtnNewClick(Sender: TObject);
begin

       btnSet(0);
       PnlRecall.Enabled := true;

       DeCheckDay.Date := now;
       DeRecall.Date := now;
       CbCheck.Checked := False;
       EdtSch2.Text := '';
       EdtDamDang.Text := '';
       EdtRecallChart.text := '';
       EdtRecallName.text := '';
       EdtRecallTel.Text := '';
       lblCphone.caption := '';
       MemReCallRemark.Text := '';
       memRecallBigo.text := '';
       CbTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
       CbMin.Text := '00';
       RecallCodeSet;
       EdtRecallName.SetFocus;

end;

procedure Trecall_f.btnModClick(Sender: TObject);
begin
       btnSet(1);
       if EdtRcCode.Text <> '' then
       begin
              PnlRecall.Enabled := true;
              EdtRecallName.SetFocus;

            //  Selectma_recallChart;

       end;

end;

procedure Trecall_f.BtnSaveClick(Sender: TObject);
var
       varDate: string;
       varRDate: string;
       varTong, varGuk, varBun, varSDate, varSendTime, varContent, varPos:
              string;

       varCancelDate: string;
       varAfterSendDate: integer;

begin
      if ( trim(edtRecallname.text)='') or (trim(edtRecallChart.text)='') then
      begin
         // showmessage('ȯ�ڸ� ������ �� �����Ͻÿ�.');


        MessageBoxA(recall_f.handle,'ȯ�ڸ� ������ �� �����Ͻʽÿ�.','�˸�',   + mb_Ok
        +MB_TOPMOST + MB_ICONHAND);

          edtRecallname.setfocus;
          exit;
      end;

       btnset(3);

       varAfterSendDate := configvalue.p_BeforRecallSms;
       //���� ��ĥ���� �������ΰ�?
       varSDate := formatDateTime('YYYYMMDD', deRecall.Date -
              varAfterSendDate);


       varCancelDate := formatDateTime('YYYYMMDD',  deRecall.date - varAfterSendDate) ;
               // formatDateTime('YYYYMMDD', strtodate(grdrecall.Cells[1,  grdrecall.row]) - varAfterSendDate);
             //���� ���� ���� , �������� -  varAfterSendDate(��ĥ��)


       varSendTime := configvalue.p_recallSmsBeforTime;
       //������ �ð�, ȯ�漳������ ���ؼ� �ϰ�����
       varContent := configvalue.p_RecallSmsContent; //����Ȯ�� �޽���
       varRDate := formatDateTime('YYYY-MM-DD', deRecall.Date); //��������

       varTong := substr(edtRecallTel.text, 1, '-');
       varGuk := substr(edtRecallTel.text, 2, '-');
       varBun := substr(edtRecallTel.text, 3, '-');

       varDate := formatDateTime('YYYY-MM-DD', now); //���� insert����


       if EdtRcCode.Text <> '' then
       begin
              case ma_recallSave(varRDate, cbtime.text+':'+cbMin.text ) of
                     1: //insert success
                            begin
                           //    showmessage('����Ǿ����ϴ�.');


                              MessageBoxA(recall_f.handle,'�Է��Ͻ� ������ ���� �Ǿ����ϴ�.','�˸�',   + mb_Ok
                              +MB_TOPMOST + MB_ICONINFORMATION)//


                            end;
                     2: //Update success
                            begin

                                   if cbSms.Checked then
                                   begin
                                      //SMS�� ���� �� ��
                                             CancelSMS(main_f.SMSCALLMSG1,
                                             '', //varGogekName: string;
                                             '', //varGogekId: string;
                                             substr(edtRecallTel.text, 1, '-'),
                                             substr(edtRecallTel.text, 2, '-'),
                                             substr(edtRecallTel.text, 3, '-'),
                                             varCancelDate);
                                  end;
                              MessageBoxA(recall_f.handle,'�Է��Ͻ� ������ ���� �Ǿ����ϴ�.','�˸�',   + mb_Ok
                              +MB_TOPMOST + MB_ICONINFORMATION)//
                            end;
              end;

              if cbSms.Checked then
              begin
                     //SMS��������

                     if SendMessage_One(main_f.SMSCALLMSG1,
                            edtRecallname.text,
                            edtRecallChart.text, varRDate,
                            '', varTong, varGuk,
                            //varDate:��������.varTime:����ð�.
                            varBun,
                            varSDate, varsendTime,
                            varContent) <> 1 then
                     begin
                          //  showmessage('SMS���۽���');
                              MessageBoxA(recall_f.handle,'SMS���ۿ� ���� �Ͽ����ϴ�.','�˸�',   + mb_Ok
                              +MB_TOPMOST + MB_ICONHAND)//
                     end
                     else
                     begin

                           updateSmsSendStatus;

                     end;

              end;

              if trim(edtRecallTel.text) <> '' then
                     savegogekPhone('', edtRecallchart.Text,
                            edtRecallTel.text,
                            '1', //sms���ۿ���
                            '2', //kind 1:�Ϲ���ȭ 2:�޴���
                            vardate);
              //���� �Ŀ��� �������� �ٲ� ������ ��ȯ.
              lblcphone.caption := edtRecallTel.text;

              PnlRecall.Enabled := false;

              Selectma_recallChart ;

       end;

end;

procedure Trecall_f.savegogekPhone(id, chart,
       phone: string;
       sms: string;
       kind: string;
       reg_day: string);
const
       dataSelect = 'select id from ma_gogek_phone' + #10#13 +
              'where chart=:chart and phone=:phone';
       dataAllSelect = 'select * from ma_gogek_phone' + #10#13 +
              'where chart=:chart and phone=:phone and kind=:kind and sms=:sms and reg_day=:reg_day';

       dataInsert =
              'insert into ma_gogek_phone' + #10#13 +
              '( chart, phone, kind, sms, reg_day) values' + #10#13 +
              '( :chart, :phone, :kind, :sms, :reg_day)';
       dataUpdate =
              'update ma_gogek_phone set' + #10#13 +
              'phone=:phone' + #10#13
              +
              'where id= :id';
var
       varaPhone: string;

begin
       varaPhone := lblcphone.caption;
       try
              //�����ÿ��� �Է�â�� ������ ������...�� ���Ѵ�.
              if phone <> '' then
              begin
                     with dm_f.SqlWork do
                     begin
                            close;
                            sql.clear;
                            sql.text := dataselect;
                            paramByname('chart').asstring := chart;
                            //�ҷ��� ��ȭ��ȣ�� ���� ���� ã��.
                            paramByname('phone').asstring := varaphone;
                            open;
                            if isEmpty then
                            begin
                                   close;
                                   sql.clear;
                                   sql.text := dataInsert;
                                   ParamByName('chart').AsString := chart;
                                   ParamByName('sms').AsString := sms;
                                   ParamByName('kind').AsString := kind;
                                   ParamByName('reg_day').AsString := reg_day;
                            end
                            else
                            begin
                                   id := fieldByName('id').asString;
                                   close;
                                   sql.clear;
                                   sql.text := dataupdate;
                                   ParamByName('id').AsString := id;
                            end;
                            ParamByName('phone').AsString := phone;
                            execsql;

                     end;
              end;
       except
              on E: Exception do
              begin
                     ExceptLogging('save_gogek_phone' + E.Message);
              end;
       end;
end;

procedure Trecall_f.BtnDelClick(Sender: TObject);
var
       varAfterSendDate: integer;
       varSdate: string;
begin
       if EdtRcCode.Text <> '' then
       begin
              if Application.MessageBox(PChar(EdtRecallName.text +
                     '���� ���������� �����Ͻʴϱ�?'), '����', MB_YESNO) = IDYES
                            then

                     try
                            with Dm_f.SqlWork do
                            begin
                                   SQL.Text := SQL_DELETE_ma_recall;
                                   ParamByName('RcCode').AsString :=
                                          EdtRcCode.Text;
                                   ExecSQL;
                            end;

                            varAfterSendDate :=
                                   configvalue.p_BeforrecallSms;
                            //���� ��ĥ���� ���´°�?
                            varSDate := formatDateTime('YYYYMMDD', derecall.Date
                                   -
                                   varAfterSendDate);

                            if isEmptyPromise(edtRecalltel.text, varSDate) =
                                   false then
                            begin
                                   showmessage('���� �� ���� ���� �޽����� �ֽ��ϴ�.');
                                   exit;
                            end;

                              if cbSms.Checked then
                              begin

                                   CancelSMS(main_f.SMSCALLMSG1,
                                          '', //varGogekName: string;
                                          '', //varGogekId: string;
                                          substr(edtRecalltel.text, 1, '-'),
                                          substr(edtRecalltel.text, 2, '-'),
                                          substr(edtRecalltel.text, 3, '-'),
                                          varSDate);
                               end;

                     except
                            on E: Exception do
                            begin
                                   ShowMessage(E.Message +
                                          ' [ma_recall��������]');
                            end;
                     end;

                     Selectma_recallChart ;

       end;

end;

procedure Trecall_f.BtnPrtClick(Sender: TObject);
begin
//var
//     RRecallPrt_f: TRRecallPrt_f;
//begin
//     RRecallPrt_f := TRRecallPrt_f.CreateFrm(Self, grdRecall);
//     try
//          with RRecallPrt_f, QuickRep1 do
//          begin
//                varDate1:=  dpRecall1.date;
//               varDate2:=  dpRecall2.date;
//              PreviewModal;
//               //Print;
//          end;
//     finally
//          RRecallPrt_f.Free;
//     end;
end;
{var
       RecallPrint_f: TRecallPrint_f;
begin
       RecallPrint_f := TRecallPrint_f.CreateFrm(Self, grdRecall);
       try
              with RecallPrint_f, QuickRep1 do
              begin
                     PreviewModal;
                     //print;
              end;
       finally
              RecallPrint_f.Free;
       end;

end;
}

procedure Trecall_f.BtnRecallSchClick(Sender: TObject);
begin

      Selectma_recallChart;

end;

{
1 ��������
2 �ð�   ..����

3 ��Ʈ��ȣ
4  �̸�
5  ����ó
6���ݳ���
7 Ȯ��
8 �����   ...���� 3
9  �޸� RcBigo
10 RcCheckDay
11 RcRegDate
12 RcCode
13 RcKind
14 anotherid
15 SMS - Check
         }



procedure Trecall_f.Selectma_recallChart;
var
       i, reccount: integer;
       kind:integer;
       varFlag: string;
begin




           if rbChart.Checked then
           begin
              varFlag := edtRecallChart.Text;
              kind := 0;
           end
           else
           begin
                  varFlag := edtSch2.Text;
               kind := 1;
           end;


       with Dm_f.SqlWork do
       begin

             case kind of

             0:
                  begin
                     SQL.Text := SQL_SELECT_ma_recall_chartFIND;
                     ParamByName('RcChart').AsString := varFlag;
                  end;
             1:
                 begin
                  if cbMinewon.Checked = False then
                  begin
                         SQL.Text := SQL_SELECT_ma_recallFIND;
                         ParamByName('RcRemark').AsString := '%' + varFlag + '%';
                         ParamByName('RCDATE1').AsString := FormatDateTime('YYYY-MM-DD',  dPrECALL1.Date);
                         ParamByName('RCDATE2').AsString := FormatDateTime('YYYY-MM-DD',  DpRecall2.Date);
                  end
                  else
                  begin
                         SQL.Text := SQL_SELECT_ma_recallFIND_cbMinewon;
                         ParamByName('RcRemark').AsString := '%' + varFlag + '%';
                         ParamByName('RcCheck').AsString := '0';
                         ParamByName('RCDATE1').AsString := FormatDateTime('YYYY-MM-DD',  dPrECALL1.Date);
                         ParamByName('RCDATE2').AsString :=  FormatDateTime('YYYY-MM-DD',  DpRecall2.Date);

                  end;

                 end;

             end;

              Open;
              if not IsEmpty then
              begin
                     grdrecall.beginUpdate;
                     recCount := recordCount;
                     grdrecall.RowCount := reccount + 1;
                     grdrecall.FixedRows := 1;

                     while not EOF do
                     begin

 {
1��������
2�����
3�����
4��Ʈ��ȣ
5�̸�
6����ó
7��������
8Ȯ��
9�޸�



Kind
SMS
}
                            for i := 1 to recCount do
                            begin
                                   grdrecall.Cells[1, i] :=   FieldByName('RcDate').AsString;
                                   grdrecall.Cells[2, i] :=    loadJinjryosil(FieldByName('Team').AsString) ;
                                   grdrecall.Cells[3, i] :=    LoadDocNameFromSawonWithID(FieldByName('doc_code').AsString) ;
                                   grdrecall.Cells[4, i] :=   FieldByName('RcChart').AsString;
                                   grdrecall.Cells[5, i] :=   FieldByName('RcName').AsString;
                                   grdrecall.Cells[6, i] :=   FieldByName('cphone').AsString;
                                   //FieldByName('RcTel').AsString;
                                   grdrecall.Cells[7, i] :=   StringReplace(FieldByName('RcRemark').AsString, '()', '', [rfReplaceAll]);

                                   if FieldByName('RcCheck').AsString = '1' then
                                      grdrecall.Cells[8, i] := 'O'
                                   else
                                      grdrecall.Cells[8, i] := 'X';

                                   grdrecall.Cells[9, i] :=    FieldByName('RcBigo').AsString; //����
                                   grdrecall.Cells[10, i] :=   FieldByName('RcCheckDay').AsString;
                                   grdrecall.Cells[11, i] :=   FieldByName('RcRegDate').AsString;  //����
                                   grdrecall.Cells[12, i] :=   FieldByName('RcCode').AsString; //����
                                   grdrecall.Cells[13, i] :=   FieldByName('RcKind').AsString; //����
                                   grdrecall.Cells[14, i] :=   FieldByName('anotherid').AsString;  //����

                                   grdrecall.AddCheckBox(15,i,true,false);
                                   grdrecall.Cells[16, i] :=   FieldByName('team').AsString;  //team
                                   grdrecall.Cells[17, i] :=   FieldByName('doc_code').AsString;  //doc_code

                                   Dm_f.SqlWork.Next;
                            end;
                     end;
                     grdrecall.AutoNumberCol(0);
                     grdrecall.endUpdate;
              end
              else
              begin
                     grdrecall.RowCount := 1;
              end;
       end;
end;



procedure Trecall_f.FieldSet;
var
       varremark: string;

  team_key: string;
  treatRoomCode : string;
begin
  // showmessage('');

        btnSet(3);

       if grdRecall.Rowcount > 1 then

              with grdrecall do
              begin

                     {varremark := Cells[7, Row];
                     varremark := StringReplace(varremark,
                            '<FONT color="clBlue" size=9>', '', [rfReplaceAll]);
                     varremark := StringReplace(varremark,
                            '<FONT color="clRed" size=9>', '', [rfReplaceAll]);
                     varremark := StringReplace(varremark,
                            '<FONT color="clBlack" size=9>', '',
                            [rfReplaceAll]);
                     varremark := StringReplace(varremark, '</FONT>', '',
                            [rfReplaceAll]);
                     varremark := StringReplace(varremark, '</B>', '',
                            [rfReplaceAll]);
                     varremark := StringReplace(varremark, '<B>', '',
                            [rfReplaceAll]);
                     varremark := StringReplace(varremark, '()', '',
                            [rfReplaceAll]);
                      }


 {
1��������
2�����
3�����
4��Ʈ��ȣ
5�̸�
6����ó
7��������
8Ȯ��
9�޸�



13Kind
14 SMS
}
                     edtRccode.text := Cells[12, Row];

                     lblanotherid.caption := Cells[14, Row];

                     DeRecall.Date := strToDate(Cells[1, Row]);
                     EdtRecallChart.text :=trim( Cells[4, Row]);
                     EdtRecallName.text := trim(Cells[5, Row]);
                     EdtRecallTel.Text := trim(Cells[6, Row]);
                     lblCphone.caption := trim(Cells[6, Row]);
                     MemReCallRemark.Text := StrippedCells[7, Row];

                     EdtDamDang.Text := '';
                     //   varremark;
                     CbTime.Text := '00';
                     CbMin.Text := '00';
                     if Cells[8, Row] = 'O' then   // 1=O
                            CbCheck.Checked := true
                     else
                            CbCheck.Checked := False;

                     memRecallBigo.text := Cells[9, Row];
                     DeCheckDay.Date := strToDate(Cells[10, Row]);

                     treatRoomCode :=  trim(Cells[16, Row]);

                     cbTreatRoom.ItemIndex :=
                             cbTreatRoom.ComboItems.IndexInColumnOf(0, treatRoomCode)  ;

                     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
                     LoadDoclist(cbDoc, team_key);

                     cbdoc.ItemIndex :=
                             cbDoc.ComboItems.IndexInColumnOf(4, Cells[17, Row] )

              end;
end;

function Trecall_f.ma_recallSave(varDate:string; varTime:string): integer; //ma_recall����
var
       nRow: integer;
       maxRCode: string;
begin
       if varRecallKind = '' then
              varRecallKind := '1';


       //varRecallKind (rcKind)
       //1: Recall
       //2: Chart_Recall
       //3: Happycall
       //4: ���ฮ��
       //5: �˶�����



       result := 0;

       with Dm_f.SqlWork do
       begin

              Close;
              Sql.Clear;
              Sql.Add('Select Rccode from ma_recall');
              Sql.Add('Where RcCode=:RcCode');
              ParamByName('RcCode').AsString := EdtRcCode.Text;
              Open;
              if not IsEmpty then
                     try
                            with Dm_f.SqlWork do
                            begin
                                   SQL.Text := SQL_UPDATE_ma_recall;
                                   ParamByName('RcCode').AsString :=  EdtRcCode.Text;
                                   ParamByName('RcDate').AsString :=  varDate;  //formatDatetime('YYYY-MM-DD',   DeRecall.date);
                                   ParamByName('RcTime').AsString :=  varTime;// CbTime.text  + ':' +   CbMin.Text;
                                   ParamByName('RcRegDate').AsString :=     FormatDateTime('YYYY-MM-DD', Now);    //�����
                                   ParamByName('RcDamDang').AsString :=   EdtDamDang.Text;
                                   ParamByName('RcChart').AsString :=    EdtRecallChart.text;
                                   ParamByName('RcName').AsString :=  EdtRecallName.text;
                                   ParamByName('RcTel').AsString :=  EdtRecallTel.Text;
                                   ParamByName('RcRemark').AsString :=     MemReCallRemark.Text;
                                   ParamByName('RcKind').AsString :=    varRecallKind;
                                   ParamByName('RcCheck').AsBoolean :=   CbCheck.Checked;
                                   ParamByName('pos').AsString := '';
                                   ParamByName('team').AsString     := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
                                   ParamByName('doc_Code').AsString := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 4]);
                                   ParamByName('sms').AsString := '';
                                   ParamByName('anotherid').AsString :=   lblanotherid.caption;

                                 //  if CbCheck.Checked = False then
                                 //         ParamByName('RcCheckDay').AsString :=    ''
                                 //  else
                                          ParamByName('RcCheckDay').AsString :=
                                            formatdateTime('YYYY-MM-DD', DeCheckDay.date);  //������

                                   ParamByName('RcBigo').AsString :=  memRecallBigo.text;
                                   result := 2;

                                   ExecSQL;

                            end;
                     except
                            on E: Exception do
                            begin
                                   result := 0;
                                   ShowMessage(E.Message +   ' [ma_recall���� ����]');
                            end;
                     end
              else
                     try
                            with Dm_f.SqlWork do
                            begin
                                   SQL.Text := SQL_INSERT_ma_recall;
                                   ParamByName('RcCode').AsString :=    EdtRcCode.Text;
                                   ParamByName('RcDate').AsString :=    varDate;  //formatDatetime('YYYY-MM-DD', DeRecall.date);
                                   ParamByName('RcTime').AsString :=    varTime;//  CbTime.text   + ':' + CbMin.Text;
                                   ParamByName('RcRegDate').AsString :=  FormatDateTime('YYYY-MM-DD', Now);
                                   ParamByName('RcDamDang').AsString :=   EdtDamDang.Text;
                                   ParamByName('RcChart').AsString :=  EdtRecallChart.text;
                                   ParamByName('RcName').AsString := EdtRecallName.text;
                                   ParamByName('RcTel').AsString :=   EdtRecallTel.Text;
                                   ParamByName('RcRemark').AsString :=  MemReCallRemark.Text;
                                   ParamByName('RcCheck').AsBoolean :=   CbCheck.Checked;
                                   ParamByName('RcKind').AsString :=    varRecallKind;
                               //    if CbCheck.Checked = False then
                               //           ParamByName('RcCheckDay').AsString :=    ''
                               //    else
                                          ParamByName('RcCheckDay').AsString :=
                                               formatdateTime('YYYY-MM-DD', DeCheckDay.date);
                                   ParamByName('RcBigo').AsString :=  memRecallBigo.text;
                                   ParamByName('sms').AsString := '';
                                   ParamByName('pos').AsString := '';
                                   ParamByName('team').AsString     := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
                                   ParamByName('doc_Code').AsString := trim(cbDoc.ColumnItems[cbDoc.ItemIndex, 4]);
                                   ParamByName('anotherid').AsString :=   lblanotherid.caption;


                                   result := 1;
                                   ExecSQL;
                            end;
                     except
                            on E: Exception do
                            begin
                                   result := 0;
                                   ShowMessage(E.Message +
                                          ' [ma_recall ���� ����]');
                            end;
                     end;
       end;
end;

{procedure Trecall_f.ma_recallPost; //ma_recall����
var
     nRow: Integer;
begin
     with Dm_f.SqlWork, grdRecall do
     begin
          //dbMain.StartTransaction;
         // RDBMS ���� �ּ��� ���� �ּ���, Ʈ����� ó�� ���
          try
               for nRow := 0 to i do
               begin
                    if RowState[nRow] = wrUpdated then
                         SQL.Text := SQL_UPDATE_ma_recall
                    else if RowState[nRow] = wrInserted then
                         SQL.Text := SQL_INSERT_ma_recall;
                    if (RowState[nRow] = wrUpdated) or (RowState[nRow] =
                         wrInserted) then
                    begin
                         if (Cells[0, nRow] <> '') and (Cells[1,
                              nRow] <> '') then
                         begin
                              ParamByName('RcCode').AsString := Cells[0, nRow];
                              ParamByName('RcDate').AsString := Cells[1, nRow];
                              ParamByName('RcRegDate').AsString := Cells[2, nRow];
                              ParamByName('RcDamDang').AsString := Cells[3, nRow];
                              ParamByName('RcChart').AsString := Cells[4, nRow];
                              ParamByName('RcName').AsString := Cells[5, nRow];
                              ParamByName('RcTel').AsString := Cells[6, nRow];
                              ParamByName('RcRemark').AsString := Cells[7, nRow];
                              ParamByName('RcCheck').AsString := Cells[8, nRow];
                              ParamByName('RcCheckDay').AsString := Cells[9, nRow];
                              ParamByName('RcBigo').AsString := Cells[10, nRow];
                              ExecSQL;
                         end;
                    end;
               end;
               //dbMain.Commit;
               for nRow := 0 to i                do
                    RowState[nRow] := wrNormal;
               Refresh;
          except
               on E: Exception do
               begin
                    //dbMain.Rollback;
                    ShowMessage(E.Message + ' [ma_recall�������]');
               end;
          end;
     end;
end; }

procedure Trecall_f.loadSawon;
begin
       edtDamdang.items.Clear;
       with Dm_f.sqlwork do
       begin

              Close;
              Sql.Clear;
              Sql.Add('Select * from ma_Sawon_basic');
              //Sql.Add('Where sajikgub=''2'' ');
              Sql.Add(' where  sajikGub <> ''1'' and nouse <> ''1'' ');
              Open;
              if not isEmpty then
              begin
                     while not eof do
                     begin
                            edtDamdang.items.add(FieldByName('saname').AsString);
                            next;
                     end;
                     //   cbDam.itemindex:=0;
              end;
       end;
end;


procedure Trecall_f.loadRecallSayu;
var
      varCode : string;
begin
          varCode := '082'; //���ݻ���
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
                    loadrecallterm := false;
                    cbKind.items.clear;
                    while not eof do
                    begin
                         cbKind.items.Add(fieldByName('disp').asString);
                         next;
                    end;
               end;
          end;
end;

procedure Trecall_f.FieldClear;
begin
       PnlRecall.Enabled := true;

       DeCheckDay.Date := now;
       DeRecall.Date := now;
       CbCheck.Checked := False;
       EdtSch2.Text := '';
       EdtDamDang.Text := '';
       EdtRecallChart.text := '';
       EdtRecallName.text := '';
       EdtRecallTel.Text := '';
       lblCphone.caption := '';
       MemReCallRemark.Text := '';
       memRecallBigo.text := '';

       lblanotherid.caption := ''; //�˶��ݿ� �˶����̵�...

       CbTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
       deRecall.Date := now;
       dpRecall1.Date := now;
       dpRecall2.Date := now;

       CbMin.Text := '00';
       grdRecall.rowcount := 1;

       cbKind.Text := '';
       listBox1.Clear;
       RecallCodeSet;
       //     EdtRecallName.SetFocus;
end;

procedure Trecall_f.FormShow(Sender: TObject);
begin
       caption := '���� ���';
       {     fieldclear;
            edtrecallchart.text:=main_f.edtChart.text;
            edtrecallname.text:=main_f.edtname.text;
            edtrecalltel.text:=main_f.edtcphone.text;
            lblCphone.caption:=main_f.edtcphone.text;
       }
            //main_f.panelSet(pnlRecallMain, alClient);
            //main_f.GridSet(grdRecall, true, pnlRecallMain, alclient, 0, 0, 0, 0);

       loadRecallTerm := true; // ���ݳ��� �����Ҷ� ����Ʈ�̸� ��¥�� �Ⱓ���� �ڵ����� �ٲ��.
       dtStart.Date := now;
       with grdRecall do
       begin
              ColWidths[10] := 0;
              ColWidths[11] := 0;
              ColWidths[12] := 0;
              ColWidths[14] := 0;
              ColWidths[16] := 0;//team
              ColWidths[17] := 0;//doc_code;
       end;
       if configvalue.p_BeforeSendRecallSms = 1 then
              cbSms.checked := true
       else
              cbSms.checked := false;
       btnSet(0);
      // FieldClear;

      loadSawon;
      loadRecallSayu;
      LoadTreatRoomList;

       initAdvGrid(grdRecall);

end;

procedure Trecall_f.grdRecallClickCell(Sender: TObject; ARow, ACol: Integer);
var
   state: boolean;
begin

    if ACol = 15 then
    begin
       grdrecall.GetCheckBoxState(ACol,aRow, state ) ;
   //    if state = true then
          grdrecall.AddCheckBox(ACol,aRow, not state,false);

    end;
end;

procedure Trecall_f.EdtRecallNameKeyPress(Sender: TObject; var Key: Char);
var
       loadResult: integer;
begin
       if Key = #13 then
       begin

              if (EdtRecallname.text <> '') then
              begin

                     loadResult := LoadGogekData_name(EdtRecallname.text,  progressbar,0, varViewAll);     //2011.8
                     case loadResult of
                            1: //mrOk�����ִ� ���
                                   begin

                                          //����ȯ�������� �ѷ��ְ�
                                          EdtRecallChart.Text :=
                                                 ma_chart;
                                          EdtRecallname.Text :=
                                                 ma_paname;
                                          EdtRecallTel.Text :=
                                                 ma_c_Phone;
                                          lblcphone.caption :=
                                                 ma_c_Phone;

                                          derecall.Setfocus;

                                          {TODO 1 -oha -cMake Function:ġ���ߴ� �ȳ���, �ߴ��� ������������� �˷��ش�.}
                                          {TODO 1 -oha -cMake Function: �Ұ� ����, ��������}
                                   end;
                            2: //mrCancel����Ѱ��
                                   begin
                                          EdtRecallname.SetFocus;
                                   end;
                            6: //mrYes���� �Է��Ѱ��
                                   begin
                                          EdtRecallname.SetFocus;
                                   end;
                     end;

              end;
       end;
end;

procedure Trecall_f.EdtRecallChartKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
       begin
              SelectNext(sender as TWinControl, True, True);
              Key := #0;
       end;

end;

procedure Trecall_f.EdtSch2KeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
       begin
              Selectma_recallChart;
              Key := #0;
       end;

end;

procedure Trecall_f.GrdRecallMouseDown(Sender: TObject;
       Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
       fieldset;
end;

procedure Trecall_f.grdRecallRowChanging(Sender: TObject; OldRow,
       NewRow: Integer; var Allow: Boolean);
begin
       fieldset;

end;

procedure Trecall_f.btnRecallTermClick(Sender: TObject);
var
    varDate : tDateTime;
    varInterval : integer;
begin
       varInterval:= (sender as TspeedButton).Tag;
       //�������ڰ� �Ͽ���, �Ǵ� ������ �̸� �������� �ƴ� �������� ����������.
       //������üũ�� ����. �����Ͽ��� �Ͽ��ϰ� ������ ������ ����.
       varDate:=   dtStart.Date +  varInterval;
       while isHoliday(varDate) = true do
       begin
             varDate := varDate + 1;
       end;
         deRecall.Date := varDate;

end;

procedure Trecall_f.rbChartClick(Sender: TObject);
begin

       fieldclear1;
       Selectma_recallChart ;


end;

procedure Trecall_f.FieldClear1;
begin
       wLabel1.Visible := false;
       Label15.Visible := false;
       dpRecall1.Visible := false;
       dpRecall2.Visible := false;
       EdtSch2.Visible := false;
       cbMinewon.Visible := false;
       BtnRecallSch.Enabled := false;
       listBox1.Clear;

end;

procedure Trecall_f.FieldClear2;
begin
       wLabel1.Visible := true;
       Label15.Visible := true;
       dpRecall1.Visible := true;
       dpRecall2.Visible := true;
       EdtSch2.Visible := true;
       cbMinewon.Visible := true;
       BtnRecallSch.Enabled := true;
       listBox1.Clear;

end;

procedure Trecall_f.rbTermClick(Sender: TObject);
begin
       fieldclear2;
       Selectma_recallChart;

end;

procedure Trecall_f.EdtRecallTelChange(Sender: TObject);
begin
       edtRecallTel.Text := call_tel_type(edtRecallTel.Text);
       edtRecallTel.SelStart := length(edtRecalltel.text);

end;

procedure Trecall_f.btnCancelClick(Sender: TObject);
begin
       btnSet(2);
       FieldClear;
end;

procedure Trecall_f.cbKindChange(Sender: TObject);
begin

    memRecallRemark.Text :=  cbKind.Text;


end;

procedure Trecall_f.cbKindClick(Sender: TObject);
begin
    if       loadRecallTerm = false  then // ���ݳ��� �����Ҷ� ����Ʈ�̸� ��¥�� �Ⱓ���� �ڵ����� �ٲ��.
    exit;

    
    if cbkind.ItemIndex = 0 then      //6 ����
       deRecall.Date := now + 180
    else if cbkind.ItemIndex = 1 then   //6
       deRecall.Date := now + 180
    else if cbkind.ItemIndex = 2 then  //3
       deRecall.Date := now + 90
    else if cbkind.ItemIndex = 3 then   //6
       deRecall.Date := now + 180
    else if cbkind.ItemIndex = 4 then   //1��
       deRecall.Date := now + 365
    else if cbkind.ItemIndex = 5 then     //3
       deRecall.Date := now + 90
    else if cbkind.ItemIndex = 6 then     //1
       deRecall.Date := now + 30
    else if cbkind.ItemIndex = 7 then    //3
       deRecall.Date := now + 90
    else if cbkind.ItemIndex = 8 then      //1
       deRecall.Date := now + 30
    else if cbkind.ItemIndex = 9 then   //2
       deRecall.Date := now + 60
    else if cbkind.ItemIndex = 10 then   //3
       deRecall.Date := now + 90
    else if cbkind.ItemIndex = 11 then   //6
       deRecall.Date := now + 180;

end;

procedure Trecall_f.cbTreatRoomSelect(Sender: TObject);
var
  team_key: string;
begin
  // showmessage('');
  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex, 0];
  LoadDoclist(cbDoc, team_key);

end;



procedure Trecall_f.N3Click(Sender: TObject);
const
       SQL_UPDATE_ma_recall =
              'UPDATE ma_recall SET          ' + #13#10 +
              'RcCheck   =:RcCheck           ' + #13#10 +
              'WHERE RCcode=:RCCode          ';

begin
       if grdRecall.cells[12, grdRecall.row] = '' then
          exit;

       with Dm_f.SqlWork do
       begin
              SQL.Text := SQL_UPDATE_ma_recall;
              ParamByName('RcCode').AsString :=
                     grdRecall.cells[12, grdRecall.row];;

              if grdRecall.cells[7, grdRecall.row] = 'X' then
                 ParamByName('RcCheck').AsString := '1'
              else
                 ParamByName('RcCheck').AsString := '0';
              execsql;
       end;

       if grdRecall.cells[7, grdRecall.row] = 'X' then
          grdRecall.cells[7, grdRecall.row] := 'O'
       else
          grdRecall.cells[7, grdRecall.row] := 'X';

       FieldSet;



end;

procedure Trecall_f.UpdateSmsSendStatus;
const
       SQL_UPDATE_ma_recall =
              'UPDATE ma_recall SET          ' + #13#10 +
              'sms   =:sms            ' + #13#10 +
              'WHERE RCcode=:RCCode          ';

begin
       if grdRecall.cells[12, grdRecall.row] = '' then
          exit;

       with Dm_f.SqlWork do
       begin
              SQL.Text := SQL_UPDATE_ma_recall;
              ParamByName('RcCode').AsString :=
                     grdRecall.cells[12, grdRecall.row];
              ParamByName('sms').AsString := '1';

              execsql;
       end;
 


end;



procedure Trecall_f.N4Click(Sender: TObject);
begin

        if grdRecall.cells[12, grdRecall.row] = '' then
          exit;
        memo1.text:= grdRecall.Cells[6, grdRecall.Row];
        edtCode.text:= grdRecall.Cells[12, grdRecall.Row];
        pnlMemo.Visible := true;
end;

procedure Trecall_f.AdvGlowButton1Click(Sender: TObject);
const
       SQL_UPDATE_ma_recall =
              'update  ma_recall set RcRemark =:RcRemark  ' + #13#10 +
              'WHERE RCcode=:RCCode          ';
begin

       if edtCode.text = '' then
          exit;

          with Dm_f.SqlWork do
          begin
              SQL.Text := SQL_UPDATE_ma_recall;
              ParamByName('RcCode').AsString :=
                                     edtCode.text;
              ParamByName('RcRemark').AsString :=  Memo1.Text;
              execsql;
          end;


          pnlMemo.Visible := false;
          grdRecall.cells[6, grdRecall.Row] := Memo1.Text;
          FieldSet;




end;

procedure Trecall_f.AdvGlowButton6Click(Sender: TObject);
begin
    pnlMemo.Visible := false;
end;

procedure Trecall_f.N6Click(Sender: TObject);
const
       SQL_UPDATE_ma_recall =
              'delete from ma_recall           ' + #13#10 +
              'WHERE RCcode=:RCCode          ';

begin
       if grdRecall.cells[12, grdRecall.row] = '' then
          exit;

              if Application.MessageBox(PChar(grdRecall.Cells[1, grdRecall.Row] +
                     '���� ���������� �����Ͻʴϱ�?'), '����', MB_YESNO) = IDYES
                            then

              try
                            with Dm_f.SqlWork do
                            begin
                               SQL.Text := SQL_UPDATE_ma_recall;
                               ParamByName('RcCode').AsString :=
                                     grdRecall.cells[12, grdRecall.row];
                               execsql;
                            end;

                     except
                            on E: Exception do
                            begin
                                   ShowMessage(E.Message +
                                          ' [ma_recall��������]');
                            end;
             end;


             Selectma_recallChart  ;






end;

procedure Trecall_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action:=caFree;
end;

procedure Trecall_f.FormDestroy(Sender: TObject);
begin
       recall_f := nil;
end;

function Trecall_f.isHoliday(varDate:TdateTime) : boolean;
var
     i: integer;
     varYear, VarMonth, Varday: Variant;
begin
     result := false;
     if ReturnWeek2(varDate) = '��' then
     begin
              result:=true;
              exit;
     end;

     with dm_f.sqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from gonghyu where gh_day=:gh_day'  );
          ParamByName('gh_day').AsString := FormatDateTime('YYYY-MM-DD', varDate);
          Open;
          First;
          if not isEmpty then
          begin
              result:=true;
              exit;
          end;

          
     end;
end;

procedure Trecall_f.btnRepeatClick(Sender: TObject);
var
   i : integer;
   varDate : string;

       varRDate: string;
       varTong, varGuk, varBun, varSDate, varSendTime, varContent, varPos:
              string;

       varCancelDate: string;
       varAfterSendDate: integer;

begin
     recallrepeat_f := Trecallrepeat_f.Create(self);

     recallrepeat_f.datetimePicker1.date :=   dtStart.Date;
     recallrepeat_f.datetimePicker2.date :=
            IncYear(  dtStart.Date,10);


    if  recallrepeat_f.showmodal = mrOk then
    begin


         //������ �����ϰ�....
         configvalue.saveValue('0362', recallrepeat_f.edtDay.text, '��X��');
         configvalue.saveValue('0363', recallrepeat_f.edtWeek.text, '��X��');
         configvalue.saveValue('0364', recallrepeat_f.edtMonth.text , '��X��');
         configvalue.saveValue('0365', recallrepeat_f.edtYear.text, '��X��');

         //����â�� listbox1�� ������ ������.

          recall_f.ListBox1.Items:= recallrepeat_f.ListBox1.Items;



         // showmessage('');
         for i:=  0  to  listBox1.Count - 1  do
         begin
          varDate:= listBox1.Items[i];


           RecallCodeSet;
          ma_recallSave(varDate,   //formatDateTime('YYYY-MM-DD', deRecall.Date),
             cbtime.text+':'+cbMin.text ) ;


          Selectma_recallChart;


         //������ SMS���� Set
               if cbSms.Checked then
               begin

                     varAfterSendDate := configvalue.p_BeforRecallSms; //���� ��ĥ���� �������ΰ�?

                     varSDate :=      formatDateTime('YYYYMMDD', incDay( strtoDate(varDate), -1 *  varAfterSendDate));


                     varCancelDate := formatDateTime('YYYYMMDD',  deRecall.date  - varAfterSendDate) ;
                             // formatDateTime('YYYYMMDD', strtodate(grdrecall.Cells[1,  grdrecall.row]) - varAfterSendDate);
                           //���� ���� ���� , �������� -  varAfterSendDate(��ĥ��)


                     varSendTime := configvalue.p_recallSmsBeforTime;    //������ �ð�, ȯ�漳������ ���ؼ� �ϰ�����
                     varContent := configvalue.p_RecallSmsContent; //����Ȯ�� �޽���
                     varRDate := varDate; //��������

                     varTong := substr(edtRecallTel.text, 1, '-');
                     varGuk := substr(edtRecallTel.text, 2, '-');
                     varBun := substr(edtRecallTel.text, 3, '-');


                     //SMS��������

                    if SendMessage_One(main_f.SMSCALLMSG1,
                            edtRecallname.text,
                            edtRecallChart.text, varRDate,
                            '', varTong, varGuk,
                            //varDate:��������.varTime:����ð�.
                            varBun,
                            varSDate, varsendTime,
                            varContent) <> 1 then
                     begin
                          //  showmessage('SMS���۽���');
                              MessageBoxA(recall_f.handle,'SMS���ۿ� ���� �Ͽ����ϴ�.','�˸�',   + mb_Ok
                              +MB_TOPMOST + MB_ICONHAND)//
                     end
                     else
                     begin

                           updateSmsSendStatus;

                     end;

              end;









         end;
    end;


{     if   recallrepeat_f.radioGroup1.ItemIndex > 0 then
         recallrepeat_f.btnApply.Enabled := true
         else
           recallrepeat_f.btnApply.Enabled := false;
}
end;

procedure Trecall_f.CbCheckClick(Sender: TObject);
begin
 DeCheckDay.date:=now;
end;

procedure Trecall_f.btnSMSClick(Sender: TObject);
begin
     if not assigned(smsone_f) then
          smsone_f :=
               Tsmsone_f.Create(application);
     smsone_f.varmode := 0;
     smsone_f.edtName.text := '';
     smsone_f.edtRecvno.text := '';
     smsone_f.memContent.text := '';

     //smsone_f.memcontent.setfocus;
     smsone_f.LblMemcontentSize.Caption := '0/';
     smsone_f.loadKind := 10;//����

     smsone_f.Showmodal;
end;



procedure Trecall_f.LoadTreatRoomList;
var
    team_key : string;
begin
    with cbTreatRoom do
    begin
      Columns.Clear;
      ComboItems.Clear;
    end;



    with dm_f.sqlWork do
    begin
    close;
    SQL.Clear;
    SQL.text :=
                'Select * from ma_basic                                   ' +
       #13#10 + 'where  (code like  ''093%'') and (code <> ''09300'')     ' +
       #13#10 + 'and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'' )               ' +
       #13#10 + 'order by disp                                            ';
    // 'order by val,code                                        ';

    open;
    if not isEmpty then
    begin

      with cbTreatRoom do
      begin
        with Columns.Add do
        begin
          width := 0;
          Font.Style := [fsBold];
          Font.Name := '���� ���';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 0;
          Font.Color := ClBlue;
          Font.Style := [fsBold];
          Font.Name := '���� ���';
          Font.Size := 12;
        end;
        with Columns.Add do
        begin
          width := 200;
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
      // cbTreatRoom.items.add('����ũ');
      // cbTreatRoom.ItemIndex := 0;
    end;

  end;

  team_key := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
  LoadDoclist(cbDoc, team_key);
end;
end.



     //������ �����ϰ�....
     configvalue.saveValue('0362', edtDay.text, '��X��');
     configvalue.saveValue('0363', edtWeek.text, '��X��');
     configvalue.saveValue('0364', edtMonth.text , '��X��');
     configvalue.saveValue('0365', edtYear.text, '��X��');

     //����â�� listbox1�� ������ ������.

      recall_f.ListBox1.Items:= ListBox1.Items;



