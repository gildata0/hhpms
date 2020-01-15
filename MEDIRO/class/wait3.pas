unit wait3;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, AdvProgressBar;

type
     Twait3_f = class(TForm)
          Label1: TLabel;
          Label2: TLabel;
    pgLoading: TAdvProgressBar;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     wait3_f: Twait3_f;

implementation

{$R *.dfm}

procedure Twait3_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Twait3_f.FormDestroy(Sender: TObject);
begin
     wait3_f := nil;
end;

end.

