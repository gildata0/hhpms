unit largeview;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,  FormSize, ExtCtrls;

type
     TlargeView_f = class(TForm)
    FormSize1: TFormSize;
    ImgView321: TImage;
          procedure ImgView321Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     largeView_f: TlargeView_f;

implementation

{$R *.dfm}

procedure TlargeView_f.ImgView321Click(Sender: TObject);
begin
     close;
end;

procedure TlargeView_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TlargeView_f.FormDestroy(Sender: TObject);
begin
    largeView_f:=nil;
end;

end.

