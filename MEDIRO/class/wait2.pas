unit wait2;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, AdvProgressBar;

type
     Twait2_f = class(TForm)
          Label1: TLabel;
          Label2: TLabel;
    pgLoading: TAdvProgressBar;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     wait2_f: Twait2_f;

implementation

{$R *.dfm}

procedure Twait2_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Twait2_f.FormDestroy(Sender: TObject);
begin
     wait2_f := nil;
end;

procedure Twait2_f.FormShow(Sender: TObject);
begin
      caption:='처리중입니다';
end;

end.

