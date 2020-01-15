program jeryo;

uses
  Forms,
  main in 'main\main.pas' {main_f},
  dm in 'dm\dm.pas' {dm_f: TDataModule},
  pummokReg in 'pummok\pummokReg.pas' {pummokReg_f},
  uSysinfo in 'function\uSysinfo.pas',
  DynamicPrint in 'DynamicPrint\DynamicPrint.pas' {DynamicPrint_f},
  BasicCode in 'pummok\BasicCode.pas' {BasicCode_f},
  ibchulist in 'ibChu\ibchulist.pas' {ibchulist_f},
  ibgo in 'pummok\ibgo.pas' {ibgo_f},
  prtbasicCode in 'pummok\prtbasicCode.pas' {prtbasicCode_f},
  BasicInfo in 'basicInfo\BasicInfo.pas' {basicInfo_f},
  pummokList in 'pummok\pummokList.pas' {pummokList_f},
  ibgolist in 'ibgo\ibgolist.pas' {ibgolist_f},
  ibchuReg in 'ibChu\ibchuReg.pas' {ibchuReg_f},
  chulgoReg in 'Chulgo\chulgoReg.pas' {chulgoReg_f},
  chulgoList in 'Chulgo\chulgoList.pas' {chulgolist_f},
  sawon in 'sawon\sawon.pas' {Sawon_f},
  jego in 'jego\jego.pas' {jego_f},
  baljuReg in 'balju\baljuReg.pas' {baljuReg_f},
  wait in 'wait\wait.pas' {wait_f},
  chulgoMain in 'Chulgo\chulgoMain.pas' {chulgoMain_f},
  findpummok in 'pummok\findpummok.pas' {findPummok_f},
  baljulist in 'balju\baljulist.pas' {baljulist_f},
  uJegoset in 'class\uJegoset.pas',
  uFunctions in 'function\uFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '재료관리 ver.1.0';
  Application.CreateForm(Tdm_f, dm_f);
  Application.CreateForm(Tmain_f, main_f);
  Application.Run;
end.
