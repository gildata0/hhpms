program OrderInfo;

uses
  Vcl.Forms,
  uLoadValue in 'class\uLoadValue.pas',
  uFunctions in 'class\uFunctions.pas',
  uConfig in 'class\uConfig.pas',
  uOrderInfo in 'OrderInfo\uOrderInfo.pas' {orderInfo_f},
  uDm in 'OrderInfo\uDm.pas' {DM_f: TDataModule},
  uGogekData in 'class\uGogekData.pas',
  uSysinfo in 'class\uSysinfo.pas',
  uJinryoCalc in 'class\uJinryoCalc.pas',
  uTeeth in 'class\uTeeth.pas',
  uInputTeakJung in 'jinryo\uInputTeakJung.pas' {InputTeakJung_f};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '°Ë»ç';
  Application.CreateForm(TDM_f, DM_f);
  Application.CreateForm(TorderInfo_f, orderInfo_f);
  Application.Run;
end.
