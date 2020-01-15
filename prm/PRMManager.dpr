program PRMManager;

uses
  Forms,
  main in 'main.pas' {main_f},
  dm in 'dm\dm.pas' {dm_f: TDataModule},
  prtDm1 in 'prtDm1.pas' {prtDm1_f},
  editAdd in 'editAdd.pas' {editAdd_f},
  prtStat in 'PmStat\prtStat.pas' {prtStat_f},
  changeChart in 'changeChart.pas' {changeChart_f},
  DetailSearch in 'search\DetailSearch.pas' {detailSearch_f},
  uFunctions in 'function\uFunctions.pas',
  uLoadValue in 'function\uLoadValue.pas',
  dbsetting in 'dbsetting.pas' {dbsetting_f},
  saveContent in 'sms\saveContent.pas' {saveContent_f},
  sms_reservsend in 'sms\sms_reservsend.pas' {sms_reservsend_f},
  Statistics3 in 'statt\Statistics3.pas' {Statistics3_f};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'PRM';
  Application.CreateForm(Tdm_f, dm_f);
  Application.Run;
end.
