program PReferAlert;

uses
  Vcl.Forms,
  uMain in 'ReferAlert\uMain.pas' {main_f},
  uDm in 'Dm\uDm.pas' {dm_f: TDataModule},
  uConfig in 'class\uConfig.pas',
  uFunctions in 'class\uFunctions.pas',
  uLoadValue in 'class\uLoadValue.pas',
  uGogekData in 'class\uGogekData.pas',
  uSysinfo in 'class\uSysinfo.pas',
  uJinryoCalc in 'class\uJinryoCalc.pas',
  uTeeth in 'class\uTeeth.pas',
  mapSend in 'sms\mapSend.pas' {mapSend_f},
  uInputTeakJung in 'jinryo\uInputTeakJung.pas' {InputTeakJung_f},
  uReferHospPatList in 'subForms\uReferHospPatList.pas' {referHospPatList_f},
  uReferHospPatListFrame in 'subForms\uReferHospPatListFrame.pas' {ReferHospPatListFrame_fr: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_f, dm_f);
  Application.CreateForm(Tmain_f, main_f);
  Application.CreateForm(TInputTeakJung_f, InputTeakJung_f);
  Application.CreateForm(TreferHospPatList_f, referHospPatList_f);
  Application.Run;
end.
