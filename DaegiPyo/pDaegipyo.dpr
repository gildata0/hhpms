program pDaegipyo;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {main_f},
  uDm in 'Dm\uDm.pas' {dm_f: TDataModule},
  setting in 'setting\setting.pas' {setting_f},
  uConst in 'class\uConst.pas',
  uExtensions in 'class\uExtensions.pas',
  uFunctions in 'class\uFunctions.pas',
  uLoadValue in 'class\uLoadValue.pas',
  ClientModuleUnit1 in 'class\ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  ClientClassesUnit1 in 'class\ClientClassesUnit1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.CreateForm(Tdm_f, dm_f);
  Application.Run;
end.
