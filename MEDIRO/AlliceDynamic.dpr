program AlliceDynamic;

uses
  Vcl.Forms,
  uAllice in 'Allice\uAllice.pas' {allice_f},
  uDm in 'Dm\uDm.pas' {dm_f: TDataModule},
  uConfig in 'class\uConfig.pas',
  uLoadValue in 'class\uLoadValue.pas',
  uFunctions in 'class\uFunctions.pas',
  uSysinfo in 'class\uSysinfo.pas',
  uJinryoCalc in 'class\uJinryoCalc.pas',
  uTeeth in 'class\uTeeth.pas',
  uGogekData in 'class\uGogekData.pas',
  uInputTeakJung in 'jinryo\uInputTeakJung.pas' {InputTeakJung_f};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_f, dm_f);
  Application.CreateForm(Tallice_f, allice_f);
  Application.Run;
end.
