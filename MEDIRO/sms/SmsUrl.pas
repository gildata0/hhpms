unit SmsUrl;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, OleCtrls, SHDocVw, AdvGlowButton, ExtCtrls, AdvPanel;

type
     TSmsUrl_f = class(TForm)
          WbSms: TWebBrowser;
    AdvPanel1: TAdvPanel;
    AdvGlowButton1: TAdvGlowButton;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     SmsUrl_f: TSmsUrl_f;

implementation

{$R *.dfm}
uses uMain;
procedure TSmsUrl_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TSmsUrl_f.FormDestroy(Sender: TObject);
begin
     SmsUrl_f := nil;
end;

procedure TSmsUrl_f.AdvGlowButton1Click(Sender: TObject);
begin
     Close;

end;

end.

