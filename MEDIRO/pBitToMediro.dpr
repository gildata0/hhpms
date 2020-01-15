program pBitToMediro;

uses
  Vcl.Forms,
  uBitToMediro in 'BitToMediropack\uBitToMediro.pas' {Form1},
  uDm in 'BitToMediropack\uDm.pas' {DM_f: TDataModule},
  uConfig in 'class\uConfig.pas',
  uFunctions in 'class\uFunctions.pas',
  uLoadValue in 'class\uLoadValue.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_f, DM_f);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
