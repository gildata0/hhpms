program Documan;

uses
  Vcl.Forms,
  doc_main in 'Document\doc_main.pas' {Main_f},
  findPt in 'Document\findPt.pas' {findPt_f},
  uDm in 'Dm\uDm.pas' {dm_f: TDataModule},
  uFunctions in 'class\uFunctions.pas',
  uLoadValue in 'class\uLoadValue.pas',
  uConfig in 'class\uConfig.pas',
  SangSeek in 'jinryo\SangSeek.pas' {SangSeek_f},
  uSysinfo in 'class\uSysinfo.pas',
  uTeeth in 'class\uTeeth.pas',
  uFormInit in 'class\uFormInit.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_f, dm_f);
  Application.CreateForm(TMain_f, Main_f);
  Application.Run;
end.
