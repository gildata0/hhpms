unit progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TProgress_f = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Progress_f: TProgress_f;

implementation

{$R *.dfm}

procedure TProgress_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

