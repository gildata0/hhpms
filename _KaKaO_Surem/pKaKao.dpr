program pKaKao;

uses
  Vcl.Forms,
  ukakaoApi in 'ukakaoApi.pas' {Form1},
  uDM in 'uDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
