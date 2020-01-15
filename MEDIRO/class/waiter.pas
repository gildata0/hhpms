unit waiter;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Gauges, StdCtrls, Buttons;

type
     TWaiter_f = class(TForm)
          Gauge1: TGauge;
          Edit1: TEdit;
          Label1: TLabel;
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Waiter_f: TWaiter_f;

implementation

{$R *.dfm}

procedure TWaiter_f.FormShow(Sender: TObject);
begin
     caption := '지금 처리중입니다!';
     Application.ProcessMessages;
end;

procedure TWaiter_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     Sms_f.Enabled := True;

end;

end.

