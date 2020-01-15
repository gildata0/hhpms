unit passInput;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons,   ExtCtrls;

type
     TPassInput_f = class(TForm)
          Label1: TLabel;
          edtPass: TEdit;
    cbSave: TCheckBox;
    Label2: TLabel;
    spSkinPanel1: TPanel;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
     private
    { Private declarations }
     public
    { Public declarations }
     end;

var
     PassInput_f: TPassInput_f;

implementation
uses uMain;
{$R *.dfm}

procedure TPassInput_f.FormShow(Sender: TObject);
begin
     Caption := '사용자확인';
     //ToDo : 항상 맨위로 올라오게 하자.
     SetWindowPos(Self.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TPassInput_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TPassInput_f.FormDestroy(Sender: TObject);
begin
     PassInput_f := nil;
end;

procedure TPassInput_f.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
           modalresult:=mrOk;
        end;
end;

end.

