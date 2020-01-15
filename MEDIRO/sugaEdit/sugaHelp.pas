unit sugaHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TsugaHelp_f = class(TForm)
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sugaHelp_f: TsugaHelp_f;

implementation

{$R *.dfm}

procedure TsugaHelp_f.FormShow(Sender: TObject);
begin
       caption:='수가편집기 도움말';
end;

procedure TsugaHelp_f.FormDestroy(Sender: TObject);
begin
        sugaHelp_f := nil;
end;

procedure TsugaHelp_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         action:=caFree;
end;

end.
