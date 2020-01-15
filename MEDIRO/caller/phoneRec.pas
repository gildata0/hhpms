unit phoneRec;

interface
uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,  ExtCtrls, StdCtrls,
     Buttons,  Menus, AdvProgressBar;
type
     TphoneRec_f = class(TForm)
          memTelRec: TMemo;
          lblTime: TLabel;
          Timer1: TTimer;
    pnlTelNoRegi: TPanel;
    progressbar: TAdvProgressBar;
    lblTrcode: TLabel;
    Label1: TLabel;
    spSkinLabel2: TLabel;
    spSkinLabel3: TLabel;
    spSkinLabel4: TLabel;
    edtName: TEdit;
    edtChart: TEdit;
    edtTel: TEdit;
    cbtel: TComboBox;
    spSkinButton4: TButton;
    spSkinButton5: TButton;
    spSkinPanel2: TPanel;
    lblTelDate: TLabel;
    Label2: TLabel;
    lblTransferID: TLabel;
    lblreceverID: TLabel;
    lblWorkID: TLabel;
    spSkinLabel1: TLabel;
    spSkinLabel5: TLabel;
    edtReceiver: TEdit;
    edtTransfer: TEdit;
    cbTransfer: TComboBox;
    cbReceiver: TComboBox;
    btnMemSend: TButton;
    spSkinPanel1: TPanel;
    Label3: TLabel;
    spSkinLabel7: TLabel;
    spSkinLabel6: TLabel;
    cbSubject: TComboBox;
    rgCheck: TRadioGroup;
    spSkinButton2: TButton;
    spSkinPanel3: TPanel;
    btnRefresh: TButton;
    btnTelMem: TButton;
    spSkinButton1: TButton;
          procedure FormShow(Sender: TObject);
          procedure Timer1Timer(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure edtNameKeyPress(Sender: TObject; var Key: Char);
          procedure btnRefreshClick(Sender: TObject);
          procedure btnTelMemClick(Sender: TObject);
          procedure spSkinButton1Click(Sender: TObject);
          procedure btnMemSendClick(Sender: TObject);
          procedure cbTransferChange(Sender: TObject);
          procedure cbReceiverChange(Sender: TObject);

     private
          { Private declarations }
          loadresult: integer; //환자 검색 결과,
          TelRegiCase: integer;
          procedure FieldClear;
          procedure LoadCombo;
     public
          { Public declarations }
          varMode:integer;
          CurrentFile: string;
          l_time: integer;
     end;

var
     phoneRec_f: TphoneRec_f;
     HangeulNumber: string;
implementation

uses uConfig, uDM, ufunctions, uGogekData,uGogekData_find, uMain
   , cidView, FindGogek;   //, telregi,
  // Promisemain, inputPromise, callsystem;

{$R *.dfm}

procedure TphoneRec_f.FieldClear;
begin
     edtName.Text := '';
     edtChart.Text := '';
     cbtel.Text := '';
     memTelRec.Text := '';
     edtTransfer.text := '';
     edtReceiver.text := '';
     lblWorkID.Caption := '';
end;

procedure TphoneRec_f.FormShow(Sender: TObject);
begin

     with PhoneRec_f do
     begin
          caption := '통화 기록';
     end;

     l_Time := 0;

     if varMode=0 then
     fieldclear;

     LoadCombo;

end;

procedure TphoneRec_f.Timer1Timer(Sender: TObject);
var
     l_clock, l_min, l_second: Integer;
begin
     application.ProcessMessages;
     l_clock := 0;
     l_min := 0;
     l_second := 0;
     l_clock := ((l_time div 60) div 60) mod 60;
     l_min := (l_time div 60) mod 60;
     l_second := l_time mod 60;
     inc(l_time);
     LblTime.caption := Format('%-2.2d:%-2.2d:%-2.2d', [l_Clock, l_min,
          l_second]);
end;

procedure TphoneRec_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     timer1.Enabled := false;
     Action := Cafree;
end;

procedure TphoneRec_f.FormDestroy(Sender: TObject);
begin
     Phonerec_f := nil;
end;

procedure TphoneRec_f.Button2Click(Sender: TObject);
begin
     l_time := 0;
     timer1.Enabled := not timer1.Enabled;
end;

procedure TphoneRec_f.edtNameKeyPress(Sender: TObject; var Key: Char);
begin

     if Key = #13 then
     begin
          if (edtname.text <> '') then
          begin
               loadResult := LoadGogekData_name(edtname.text, progressbar,0, varViewAll);
               case loadResult of
                    1: //mrOk정보있는 경우
                         begin

                              //기존환자정보를 뿌려주고
                              edtname.text := ma_paname;
                              edtChart.text := ma_chart;

                              {TODO 1 -oha -cMake Function:치료중단 안내나, 중단한 가족이있을경우 알려준다.}
                              {TODO 1 -oha -cMake Function: 소개 감사, 선물감사}
                         end;
                    2: //mrCancel취소한경우
                         begin
                              edtname.SetFocus;
                         end;
                    6: //mrYes새로 입력한경우
                         begin
                              edtchart.SetFocus;
                         end;
               end;

          end;
     end;

end;

procedure TphoneRec_f.btnRefreshClick(Sender: TObject);
begin
     close;
end;

procedure TphoneRec_f.btnTelMemClick(Sender: TObject);
var
     maxtrcode: string;
begin

     MaxTrCode := formatDateTime('MMDDhhmmss', now);

     if TelRecSave(
          MaxTrCode, //;
          edtname.text, //TrName;
          edtChart.text, //TrChart;
          FormatDateTime('YYYY-MM-DD', now)
          //+ Copy(TelDate, 1, 2) + '-' +
          //Copy(TelDate, 3, 2)
          , //TrDate;
          FormatDateTime('HH:MM', now),
          //Copy(TelDate, 5, 2) + ':' + Copy(TelDate, 7, 2), //TrTime;
          lblTime.Caption, //TriTime;
          memTelRec.Text, //   TrRemark
          cbSubject.text,
          edtname.text, // edtReceiver.text,
          cbtransfer.text, // edttransfer.text,
          inttostr(rgCheck.ItemIndex),
          cbtel.text,  // TrNumber
          'M')    //송수신 구분 : M:송신 R:수신 //T가 아니면 모두 수신
     = true then
     begin
          showmessage('저장하였습니다.');

     end
     else
     begin
          showmessage('다시 저장하십시오.');
     end;


     {
        TelRecUpdate2(LblTrCode.Caption, edtname.text, edtChart.text,
             lblTime.Caption,
             memTelRec.Text);
             }
end;

procedure TphoneRec_f.spSkinButton1Click(Sender: TObject);
var
     i: integer;
     varInterval: integer;
        varDay: string;
begin
//       varDay := formatDateTime('YYYY-MM-DD', now);
//       if not assigned(Promisemain_f) then
//              Promisemain_f := TPromisemain_f.Create(application);
//       Promisemain_f.PlannerCalendarGroup1.Date := strtodate(varDay);
//       Promisemain_f.dpsdate.Date := strtodate(varDay);
//       Promisemain_f.dpfdate.Date := strtodate(varDay);
//
//       Promisemain_f.WindowState := wsnormal;
//
//       main_f.PromiseMode := true;
//       Promisemain_f.Show;
//       Promisemain_f.SelectPromise(0);
//       PromiseMain_f.searchPromise(edtname.Text);
//
//      //  main_f.fieldSet;
//
//   {  if not assigned(Promisemain_f) then
//          Promisemain_f := TPromisemain_f.Create(application);
//     main_f.PromiseMode := true;
//
//
//     Promisemain_f.Show;
// }
//  {   if main_f.PromiseMode = true then
//     begin
//          varInterval := Promisemain_f.timeinterval;
//          //Shift키를 누르고 드래그 해서 다중 선택 후 더블 클릭한다.
//          if not assigned(inputPromise_f) then
//          begin
//               inputPromise_f := TinputPromise_f.Create(Application);
//          end;
//          inputPromise_f.cbSoyo.items.clear;
//
//          for i := 1 to 30 do
//          begin
//               inputPromise_f.cbSoyo.items.Add(inttostr(varinterval * i));
//          end;
//
//          inputPromise_f.lblAppointNo.Caption := '';
//          inputPromise_f.Datetimepicker1.Date := promiseMain_f.dpsDate.date;
//          inputPromise_f.cbsTime.Text :=
//               mintotime((promiseMain_f.Planner1.selitemBegin +
//               Promisemain_f.StartTime) * varinterval);
//          inputPromise_f.cbfTime.Text :=
//               mintotime((promiseMain_f.Planner1.selItemEnd +
//               Promisemain_f.StartTime) * varinterval);
//          inputPromise_f.cbSoyo.ItemIndex := promiseMain_f.Planner1.selItemEnd -
//               promiseMain_f.Planner1.selitemBegin - 1;
//          inputPromise_f.cbGugan.ItemIndex :=
//               promiseMain_f.Planner1.SelPosition;
//          inputPromise_f.cbJundam.Text := '';
//          inputPromise_f.cbTeam.Text := main_f.cbDamTeam.Text;
//
//          inputPromise_f.edtname.text := edtname.text;
//          inputPromise_f.edtChart.text := edtChart.text;
//          inputPromise_f.edtTel.text := edttel.text;
//          inputPromise_f.memSulsik.text := '';
//          inputPromise_f.edtWhisper.text := '';
//
//          inputPromise_f.Show;
//     end;
//     }
end;

procedure TphoneRec_f.btnMemSendClick(Sender: TObject);
var
     MaxSwCode: string;
begin
     {   if lblReceverId.Caption <> '' then
        begin
             with Dm_f.SqlWork do
             begin
                  CLOSE;
                  Sql.Clear;
                  Sql.Add('Select isnull(Max(swCode),0) +1 As MSwCode from ma_sawon_work');
                  Open;
                  MaxSwCode := FormatFloat('000000',
                       (StrToInt(FieldByName('MSWCode').AsString)));
             end;
             with Dm_f.SqlWork do
             begin
                  CLOSE;
                  Sql.Clear;
                  Sql.Add('Select * from ma_sawon_work');
                  Sql.Add('Where SwCode=:SwCode');
                  ParamByName('SwCode').AsString := lblWorkID.Caption;
                  Open;
             end;

             if Dm_F.SqlWork.IsEmpty then
             begin

                  SawonWorkSave(
                       MaxSwCode,
                       lblReceverId.Caption , // SwId
                       cbreceiver.Text, // SwName
                       DeDate.Text, // SwDate
                       CmTime.Text + ':' + CmMinute.Text, // SwTime
                       MemWork.Text, // SwWork
                       '', //SwRemark
                       IntToStr(rgProcess.ItemIndex), //SwProcess
                       '전화', //SwSect
                       cbtransfer.text); //SwRefer
                  lblWorkID.Caption := MaxSwCode;
             end
             else
             begin

                  SawonWorkUpdate(
                       lblWorkID.Caption,
                       lblReceverId.Caption , // SwId
                       cbreceiver.Text, // SwName
                       DeDate.Text, // SwDate
                       CmTime.Text + ':' + CmMinute.Text, // SwTime
                       MemWork.Text, // SwWork
                       '', //SwRemark
                       IntToStr(rgProcess.ItemIndex), //SwProcess
                       '전화', //SwSect
                       cbTransfer.text); //SwRefer
             end;
        end
        else
             showmessage('사원을 선택하세요.');
       }
end;

procedure TphoneRec_f.LoadCombo;
begin
     with dm_f.SqlWork do
     begin
          cbTransfer.items.Clear;
          cbReceiver.items.Clear;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('order by saname ');
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTransfer.items.add(FieldByName('saname').AsString);
                    cbReceiver.items.add(FieldByName('saname').AsString);
                    next;
               end;
               cbReceiver.ItemIndex := 0;
               cbTransfer.ItemIndex := 0;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].Values.add(dm_f.Chief);

          end;
     end;
end;

procedure TphoneRec_f.cbTransferChange(Sender: TObject);
begin

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('where saname=:saname ');
          paramByName('saname').AsString := cbTransfer.Text;
          Open;
          if not isEmpty then
          begin
               lblTransferid.Caption := fieldByname('saID').asString;
          end;
     end;
end;

procedure TphoneRec_f.cbReceiverChange(Sender: TObject);
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('where saname=:saname ');
          paramByName('saname').AsString := cbReceiver.Text;
          Open;
          if not isEmpty then
          begin
               lblReceverid.Caption := fieldByname('saID').asString;
          end;
     end;

end;

end.

