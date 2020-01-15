unit uOutPatient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  AdvDateTimePicker;

type
  TOutPatient_f = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    AdvDateTimePicker1: TAdvDateTimePicker;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutPatient_f: TOutPatient_f;

implementation

{$R *.dfm}

end.
