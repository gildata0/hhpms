unit nIlsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin ;

type
  TnIlsu_f = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    RxSpinEdit1: TSpinEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
          { Private declarations }
  public
          { Public declarations }
  end;

var
  nIlsu_f: TnIlsu_f;
implementation

uses wonwe;

{$R *.dfm}

procedure TnIlsu_f.BitBtn1Click(Sender: TObject);
begin
  if label2.Caption = 'Ã³¹æ' then
    Wonwe_f.nIlsu := IntToStr(Round(RxSpinEdit1.value)) ;
 // else Wonnae_f.nIlsu := IntToStr(Round(RxSpinEdit1.value));

    Close;
end;

end.

