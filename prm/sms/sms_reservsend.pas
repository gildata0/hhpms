unit sms_reservsend;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls, PlannerCal, StdCtrls, EllipsLabel, AdvGlowButton,
     AdvPanel;

type
     Tsms_reservsend_f = class(TForm)
          pnlBottom: TAdvPanel;
          btnCls: TAdvGlowButton;
          btnSend: TAdvGlowButton;
          AdvPanel1: TAdvPanel;
          cbTime: TComboBox;
          EllipsLabel19: TEllipsLabel;
          cbMin: TComboBox;
          EllipsLabel20: TEllipsLabel;
          PlannerCalendar1: TPlannerCalendar;
          lblDate: TEllipsLabel;
    Label1: TLabel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnClsClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure PlannerCalendar1MouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     sms_reservsend_f: Tsms_reservsend_f;

implementation

{$R *.dfm}

procedure Tsms_reservsend_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tsms_reservsend_f.FormDestroy(Sender: TObject);
begin
     sms_reservsend_f := nil;
end;

procedure Tsms_reservsend_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure Tsms_reservsend_f.FormShow(Sender: TObject);
begin
     caption := '예약전송 일자 등록';
     CbTime.Text := Copy(FormatDateTime('HHMM', Now + 120), 1, 2);
     CbMin.Text := '00';
     plannerCalendar1.Date := now + 1;
     lblDate.Caption := formatdatetime('YYYY-MM-DD', now + 1);

end;

procedure Tsms_reservsend_f.PlannerCalendar1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     lblDate.Caption := formatdatetime('YYYY-MM-DD',  plannerCalendar1.Date);

end;

end.

