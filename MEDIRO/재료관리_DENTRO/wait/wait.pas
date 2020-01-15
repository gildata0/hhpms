unit wait;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, EllipsLabel, AdvPanel, ExtCtrls;

type
     Twait_f = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
     private
    { Private declarations }
     public
    { Public declarations }
     end;

var
     wait_f: Twait_f;

implementation

{$R *.dfm}

procedure Twait_f.FormShow(Sender: TObject);
begin
     caption := '';
end;

procedure Twait_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Twait_f.FormDestroy(Sender: TObject);
begin
     wait_f := nil;
end;

end.

