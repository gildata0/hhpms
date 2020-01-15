unit telrec;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,  Dialogs, ExtCtrls,   StdCtrls,  Buttons, Menus, AdvProgressBar;

type
       Ttelrec_f = class(TForm)
              lblTelDate: TLabel;
              edtName: TEdit;
              edtChart: TEdit;
              edtTel: TEdit;
              memTelRec: TMemo;
              lblTime: TLabel;
              Timer1: TTimer;
              progressbar: TAdvProgressBar;
              lblTrcode: TLabel;
              Label1: TLabel;
              Label2: TLabel;
              edtReceiver: TEdit;
              edtTransfer: TEdit;
              Label3: TLabel;
              cbSubject: TComboBox;
              rgCheck: TRadioGroup;
              cbTransfer: TComboBox;
              cbReceiver: TComboBox;
              lblTransferID: TLabel;
              lblreceverID: TLabel;
              lblWorkID: TLabel;
    btnRefresh: TButton;
    btnTelMem: TButton;
    btnMemSend: TButton;
    btnSchName: TButton;
    btnSchTelNo: TButton;
    spSkinButton2: TButton;
    spSkinLabel1: TLabel;
    spSkinLabel5: TLabel;
    spSkinLabel2: TLabel;
    spSkinLabel3: TLabel;
    spSkinLabel4: TLabel;
    spSkinLabel7: TLabel;
    spSkinLabel6: TLabel;
    pnlTelNoRegi: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
              procedure FormShow(Sender: TObject);
              procedure Timer1Timer(Sender: TObject);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
              procedure Button2Click(Sender: TObject);
              procedure btnRefreshClick(Sender: TObject);
              procedure btnTelMemClick(Sender: TObject);
              procedure cbTransferChange(Sender: TObject);
              procedure cbReceiverChange(Sender: TObject);
    procedure btnSchTelNoClick(Sender: TObject);

       private
              { Private declarations }
              loadresult: integer; //환자 검색 결과,
              TelRegiCase: integer;
              procedure FieldClear;
              procedure LoadCombo;
       public
              { Public declarations }
              varMode: integer;
              CurrentFile: string;
              l_time: integer;
       end;

var
       telrec_f: Ttelrec_f;
       HangeulNumber: string;
implementation

uses uDM, ufunctions, uGogekData,    FindGogek;
{$R *.dfm}

procedure Ttelrec_f.FieldClear;
begin
       edtName.Text := '';
       edtChart.Text := '';
       edttel.Text := '';
       memTelRec.Text := '';
       edtTransfer.text := '';
       edtReceiver.text := '';
       lblWorkID.Caption := '';
end;

procedure Ttelrec_f.FormShow(Sender: TObject);
begin

       with telrec_f do
       begin
              caption := '통화 기록';
       end;

       l_Time := 0;

       if varMode = 0 then
              fieldclear;

       LoadCombo;

end;

procedure Ttelrec_f.Timer1Timer(Sender: TObject);
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

procedure Ttelrec_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       timer1.Enabled := false;
       Action := Cafree;
end;

procedure Ttelrec_f.FormDestroy(Sender: TObject);
begin
       telrec_f := nil;
end;

procedure Ttelrec_f.Button2Click(Sender: TObject);
begin
       l_time := 0;
       timer1.Enabled := not timer1.Enabled;
end;

procedure Ttelrec_f.btnRefreshClick(Sender: TObject);
begin
       close;
end;

procedure Ttelrec_f.btnTelMemClick(Sender: TObject);
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
              cbreceiver.text, // edtReceiver.text,
              cbtransfer.text, // edttransfer.text,
              inttostr(rgCheck.ItemIndex),
              edttel.text, // TrNumber
              'R') //   //송수신 구분 : T:송신 R:수신 //T가 아니면 모두 수신
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

procedure Ttelrec_f.LoadCombo;
begin
       with dm_f.SqlWork do
       begin
              cbTransfer.items.Clear;
              cbReceiver.items.Clear;
              Close;
              Sql.Clear;
              Sql.Add('Select * from ma_Sawon_basic ');
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

procedure Ttelrec_f.cbTransferChange(Sender: TObject);
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

procedure Ttelrec_f.cbReceiverChange(Sender: TObject);
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

procedure Ttelrec_f.btnSchTelNoClick(Sender: TObject);
var
   str, str2:string;

begin


       Str := Deldash(edtTel.text);

       if str <> '' then
              Str2 := Copy(str, 1, 3) + '-'
                     + Copy(str, 4, length(str) - 7) + '-'
                     + Copy(str, length(str) - 3, 4);

       with Dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select b.name, b.chart  from ma_gogek_phone a join ma_gogek_basic b on a.chart=b.chart');
              Sql.Add('Where phone=:Phone ');
              ParamByName('phone').AsString := Str2;
              open;
              if not isEmpty then
              begin

                     edtChart.text := FieldByname('Chart').AsString;
                     edtName.text:= FieldByname('Name').AsString;

              end

              else
              begin
                     edtChart.text := '';//FieldByname('Chart').AsString;
                     edtName.text:= '';//FieldByname('Name').AsString;
              end;
       end;

end;

end.

