unit cancelJumgum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TcancelJumgum_f = class(TForm)
    Label1: TLabel;
    cMprscType: TComboBox;
    Label2: TLabel;
    cJumin1: TEdit;
    cJumin2: TEdit;
    Label11: TLabel;
    cPrscDd: TEdit;
    Label3: TLabel;
    cPrscAdmSym: TEdit;
    Label4: TLabel;
    cGrantNo: TEdit;
    Label5: TLabel;
    cReasonCd: TComboBox;
    Label6: TLabel;
    cReasonMsg: TEdit;
    BtnCheckCancel: TButton;
    Button1: TButton;
    Label7: TLabel;
    cMakerCd: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure BtnCheckCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bOk : Boolean;
  end;

var
  cancelJumgum_f: TcancelJumgum_f;

implementation

{$R *.dfm}

procedure TcancelJumgum_f.Button1Click(Sender: TObject);
begin
  bOk := false;
  close;
end;

procedure TcancelJumgum_f.BtnCheckCancelClick(Sender: TObject);
begin
  bOk := true;
  close;
end;

end.
