program AutoSmsServer;

uses
  Forms,
  setting in 'setting.pas' {setting_f},
  Unit2 in 'Unit2.pas' {sendSMS_f},
  main in 'main.pas' {main_f},
  uSysinfo in '..\class\uSysinfo.pas',
  uDm in '..\Dm\uDm.pas' {dm_f: TDataModule},
  uConfig in '..\class\uConfig.pas',
  uLoadValue in '..\class\uLoadValue.pas',
  uFunctions in '..\class\uFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'AutoSmsServer';
  Application.CreateForm(Tdm_f, dm_f);
  Application.CreateForm(Tmain_f, main_f);
  Application.Run;
end.
