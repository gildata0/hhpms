program sugaEdit;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Main_f},
  progress in 'progress.pas' {Progress_f},
  sugaHelp in 'sugaHelp.pas' {sugaHelp_f},
  SugaProp in 'SugaProp.pas' {SugaProp_f},
  SugaRegi in 'SugaRegi.pas' {SugaRegi_f},
  uDm in '..\Dm\uDm.pas' {dm_f: TDataModule},
  uFunctions in '..\class\uFunctions.pas',
  uLoadValue in '..\class\uLoadValue.pas',
  uConfig in '..\class\uConfig.pas',
  SangSeek in '..\jinryo\SangSeek.pas' {SangSeek_f},
  uFormInit in '..\class\uFormInit.pas',
  uPharmInfo in '..\subForms\uPharmInfo.pas' {PharmInfo_f},
  uPharmInfoRest in '..\Dm\uPharmInfoRest.pas' {dmPharmInfoRest_f: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_f, dm_f);
  Application.CreateForm(TMain_f, Main_f);
  Application.Run;
end.
