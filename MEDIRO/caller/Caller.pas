unit Caller;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
              Forms,
       Dialogs, AdvGlowButton, StdCtrls, EllipsLabel, ExtCtrls, AdvPanel,
              KTPCBizLib_TLB;

type
       TCaller_f = class(TForm)
              AdvPanel1: TAdvPanel;
              AdvPanel2: TAdvPanel;
              AdvGlowButton1: TAdvGlowButton;
              ComboSendCallNum: TComboBox;
              AdvGlowButton2: TAdvGlowButton;
              Label1: TLabel;
              textCalleeNumber: TComboBox;
              AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel1: TLabel;
              procedure FormShow(Sender: TObject);
              procedure AdvGlowButton2Click(Sender: TObject);
              procedure FormDestroy(Sender: TObject);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure AdvGlowButton1Click(Sender: TObject);
              procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
       private
              { Private declarations }
       public
              varChart, varName:string;
              { Public declarations }
       end;

var
       Caller_f: TCaller_f;

implementation
uses uMain, udm, uKtcid, phoneRec;// telrec, phoneRec, gogekAlret, Cid, ;

{$R *.dfm}

procedure TCaller_f.FormShow(Sender: TObject);
begin
       caption := '전화걸기';
       ktcid_f.GetPhoneList(ComboSendCallNum);
end;

procedure TCaller_f.AdvGlowButton2Click(Sender: TObject);
begin
       Close;
end;

procedure TCaller_f.FormDestroy(Sender: TObject);
begin
       Caller_f := nil;
end;

procedure TCaller_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action := caFree;
end;

procedure TCaller_f.AdvGlowButton1Click(Sender: TObject);
var
       strSelectedCaller: string;
begin

       if not ktcid_f.bLogin then
              Exit;

       if textCalleeNumber.GetTextLen < 8 then
       begin
              ShowMessage('전화번호를 입력해 주세요');
              Exit;
       end;

       strSelectedCaller := comboSendCallNum.Items[comboSendCallNum.ItemIndex];
       if (length(strSelectedCaller) < 8) then
       begin
              ShowMessage('전화걸기를 할 번호가 없습니다.');
              Exit;
       end;

       case ktcid_f.ctrlKTOpenAPI.SendCTC(strSelectedCaller,
              textCalleeNumber.Text) of
              200:
                     begin
                            Exit;
                     end;
              2000:
                     begin
                            ShowMessage('로그인 되어 있지 않음');
                     end;
              3000:
                     begin
                            ShowMessage('수신/발신 번호가 동일');
                     end;
              4004:
                     begin
                            ShowMessage('전화걸기를 할 수 있는 전화번호가 아님');
                     end;
              4101:
                     begin
                            ShowMessage('핸드폰에 전화를 걸 권한이 없음');
                     end;
              4102:
                     begin
                            ShowMessage('국제전화를 걸 권한이 없음');
                     end;
              4103:
                     begin
                            ShowMessage('시내전화를 걸 권한이 없음');
                     end;
              4104:
                     begin
                            ShowMessage('시외 전화를 걸 권한이 없음');
                     end;
       end;
end;

procedure TCaller_f.AdvGlowButton3Click(Sender: TObject);
begin

       if not assigned(Phonerec_f) then
              Phonerec_f :=
                     TPhonerec_f.Create(application);
       with Phonerec_f do
       begin
              varMode := 1;
              cbSubject.itemindex :=0;
                   //  pgCallman.activepageindex + 1;
              //예약미내원연락
              //telrec_f를 열때 1이면 fieldclear를 하지 않는다.
              //edtTel.text := cells[7, aRow];

              edtChart.TEXT := varChart;//cells[3, aRow];
              edtName.text := varName;//cells[2, aRow];
              cbTel.Text :=textCalleeNumber.text ;
              memTelRec.text:='';
              Show;

       end;

end;

procedure TCaller_f.AdvGlowButton4Click(Sender: TObject);
begin

 main_f.showGogekAlret(main_f.edtChart.text, main_f.edtname.text);

      { if not assigned(gogekalret_f) then
              gogekalret_f := Tgogekalret_f.Create(application);


       if main_f.edtChart.text <> '' then
              gogekalret_f.gogekalretFrame_fr1.PromiseSelect(main_f.edtChart.text);

     //  with gogekalret_f.gogekalretFrame_fr1 do
         with gogekalret_f do
       begin
              //  Caption := edtname.text + '(' + edtChart.Text +
              //   ')님의 상세기록';
              //

              caption := '상세기록보기';
              top := Caller_f.Top + Caller_f.Height;
              left := Caller_f.Left;
              varChartNo := main_f.edtChart.text;

              Show;
       end;
      }
end;

end.

