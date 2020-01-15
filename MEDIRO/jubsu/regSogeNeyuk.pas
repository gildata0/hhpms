unit regSogeNeyuk;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, AdvGlowButton, StdCtrls, EllipsLabel, AdvEdit ,
     ExtCtrls , DB;

type
     TregSogeNeyuk_f = class(TForm)
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Panel2: TPanel;
    edtSogeja: TAdvEdit;
    edtHomePhone: TAdvEdit;
    memSogeContent: TMemo;
    edtCharacteristic: TAdvEdit;
    cmbSogePath: TComboBox;
    edtSogeSite: TAdvEdit;
    edtCellPhone: TAdvEdit;
    Panel3: TPanel;
    edtname: TAdvEdit;
    edtChart: TAdvEdit;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel5: TLabel;
    lblSogePaht: TLabel;
    EllipsLabel6: TLabel;
    EllipsLabel7: TLabel;
    EllipsLabel8: TLabel;
    EllipsLabel9: TLabel;
          procedure FormCreate(Sender: TObject);
          procedure edtHomePhoneExit(Sender: TObject);
          procedure btnOkClick(Sender: TObject);
          procedure edtCellPhoneExit(Sender: TObject);
          procedure edtSogejaKeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);

     private
          varSogeGroup: array of string;
          x, y, i: Integer;
          procedure FieldClear;
          procedure LoadscSogeContent;

          procedure SetCharacteristic(barCode: string);

          { Private declarations }
     public
          varMode:integer;
          procedure FieldSetting;
          function GetSogeContent: string;
          function GetSogeja: string;
          { Public declarations }
     end;

var
     regSogeNeyuk_f: TregSogeNeyuk_f;

implementation

uses uDM, uFunctions, uGogekData, uMain;

{$R *.dfm}

procedure TregSogeNeyuk_f.FieldClear();
begin
     edtSogeja.Text := '';
     edtHomePhone.Text := '';
     edtCellPhone.Text := '';
     cmbSogePath.Text := '';
     //cmbsogePath.Items.Clear;
     edtCharacteristic.Text := '';
     edtSogeSite.Text := '';
     memSogeContent.Text := '';

end;

procedure TregSogeNeyuk_f.LoadscSogeContent();
begin

end;

procedure TregSogeNeyuk_f.SetCharacteristic(barCode: string);
var
     Count: integer;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_basic');
          Sql.Add(' where Code like :Code and Code<> :code2');
          ParamByName('Code').AsString := barCode + '%';
          ParamByName('Code2').AsString := barCode + '000';
          Open;

          if not isEmpty then
          begin
               while not Eof do
               begin
                    cmbSogePath.Items.Add(FieldByName('disp').AsString);

                    next;
               end;
          end;
     end;

end;

procedure TregSogeNeyuk_f.FieldSetting();
const
       SelectReferer = 'select * from ma_gogek_referer';
       SelectReferer_where1 = 'where id = :id';
       SelectRefer = 'select * from ma_gogek_refer';
       SelectRefer_where1 = 'where referer_id = :id';
begin
     edtname.Text := ma_Paname;   //gogek_f.getPatientName;
     edtChart.Text := ma_Chart;   //gogek_f.getPatientChart;
     SetCharacteristic('022');

    // edtSogeja.Text :=  gogek_f.edtSoge.Text;
     edtSogeja.Text :=  ma_refer;

     with dm_f.SqlWork do
     begin

              Close;
              SQL.Clear;
              sql.text := SelectReferer;
              sql.text := sql.Text + selectReferer_where1;
              ParamByName('id').AsString  := ma_referid;
              Open;
              if not IsEmpty then
              begin
                  edtSogeja.Text :=  FieldByName('name').AsString;
                  edtHomePhone.Text := FieldByName('hphone').AsString;
                  edtCellPhone.Text := FieldByName('cphone').AsString;
                  edtCharacteristic.Text := FieldByName('remark').AsString;
                  edtSogeSite.Text := FieldByName('address').AsString;
              end;

              Close;
              SQL.Clear;
              sql.text := SelectRefer;
              sql.text := sql.Text + selectRefer_where1;
              ParamByName('id').AsString := ma_referid;
              Open;
              if not IsEmpty then
              begin
                  cmbSogePath.Text  := FieldByName('kind').AsString;
                  memSogeContent.Text := FieldByName('remark').AsString;
              end;
     end;



end;

procedure TregSogeNeyuk_f.FormCreate(Sender: TObject);
begin
     FieldClear();
     FieldSetting();
     //LoadMotiveGroup('022');
     //DisplayCheckGroup();
     LoadscSogeContent();

end;

function TregSogeNeyuk_f.GetSogeContent(): string;
begin
     main_f.donggiMemo1.Text := memSogeContent.Text;
end;

function TregSogeNeyuk_f.GetSogeja(): string;
begin
     main_f.edtSoge2.Text := edtsogeja.Text;
end;

procedure TregSogeNeyuk_f.edtHomePhoneExit(Sender: TObject);
begin
     edtHomePhone.Text := call_tel_type(edtHomePhone.Text);
end;

procedure TregSogeNeyuk_f.btnOkClick(Sender: TObject);
var
    maxId:integer;
    varSogeChart:string;
    varSogePhone:string;
begin
     maxId:=  GetRefererID + 1;
     varSogeChart:= 'R' + inttostr(  maxId);
     varSogePhone := edtCellPhone.text;
     if varMode <> 1 then
     begin

     //새로 등록된 소개자 저장
     SaveReferer(
          '',      //Id
          'R' + inttostr( maxId),      //Chart
          edtSogeja.Text,
          edtHomePhone.Text,
          edtCellPhone.Text,
          edtCharacteristic.Text,
          edtSogeSite.Text,
          FormatDateTime('YYYY-MM-DD', now));

     //소개 경로 저장
     SaveRefer(cmbSogePath.Text,
               memSogeContent.Text,
               FormatDateTime('YYYY-MM-DD', now)  );


     if   assigned(main_f) then
     begin
         main_f.edtSoge2.Text := edtSogeja.Text;
         main_f.donggiMemo1.Text  := memSogeContent.Text;
         main_f.lblSogeIdn.Caption := intTostr( maxId);
         main_f.lblSogeChart.Text := varSogeChart;
         main_f.lblSogePhone.caption := varSogePhone;
     end;

     main_f.edtSoge.text := edtSogeja.Text;
    // main_f.memSoge.Text := memSogeContent.Text;
     main_f.lblSogeId.Caption := intTostr( maxId);
     main_f.lblSogeChart.Text := varSogeChart;
     main_f.lblSogePhone.caption := varSogePhone; //소개자전화번호는 저장할때만 가져온다.

     end;

     close;

end;

procedure TregSogeNeyuk_f.edtCellPhoneExit(Sender: TObject);
begin
     edtCellPhone.Text := call_tel_type(edtCellPhone.Text);
end;

procedure TregSogeNeyuk_f.edtSogejaKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end
end;

procedure TregSogeNeyuk_f.FormShow(Sender: TObject);
begin
     caption:='소개자 등록';
     edthomePhone.SetFocus;






end;

procedure TregSogeNeyuk_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TregSogeNeyuk_f.FormDestroy(Sender: TObject);
begin
     regSogeNeyuk_f := nil;
end;

procedure TregSogeNeyuk_f.AdvGlowButton1Click(Sender: TObject);
begin
    close;
end;

end.

