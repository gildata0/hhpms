// 
// Created by the DataSnap proxy generator.
// 2018-02-19 ¿ÀÈÄ 1:48:37
// 

unit ClientClassesUnit1;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.FireDACJSONReflect, Data.DBXJSONReflect;

type

  IDSRestCachedTFDJSONDataSets = interface;

  TServerMethods1Client = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FGetConnectionCommand: TDSRestCommand;
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FGetDocuInfoCommand: TDSRestCommand;
    FGetDocuInfoCommand_Cache: TDSRestCommand;
    FGetDocuInfo_ChartCommand: TDSRestCommand;
    FGetDocuInfo_ChartCommand_Cache: TDSRestCommand;
    FGetNewonDongGiCommand: TDSRestCommand;
    FGetNewonDongGiCommand_Cache: TDSRestCommand;
    FGetPatientInfoChartCommand: TDSRestCommand;
    FGetPatientInfoChartCommand_Cache: TDSRestCommand;
    FGetPatientInfoNameCommand: TDSRestCommand;
    FGetPatientInfoNameCommand_Cache: TDSRestCommand;
    FGetPatInfo_termCommand: TDSRestCommand;
    FGetPatInfo_termCommand_Cache: TDSRestCommand;
    FGetPatientInfoJubsuCommand: TDSRestCommand;
    FGetPatientInfoJubsuCommand_Cache: TDSRestCommand;
    FisDataEmptyCommand: TDSRestCommand;
    FsaveDocuCommand: TDSRestCommand;
    FinsertDocuCommand: TDSRestCommand;
    FupdateDocuCommand: TDSRestCommand;
    FGetImgListInfoCommand: TDSRestCommand;
    FGetImgListInfoCommand_Cache: TDSRestCommand;
    FGetImgListDateCommand: TDSRestCommand;
    FGetImgListDateCommand_Cache: TDSRestCommand;
    FsaveOlearyCommand: TDSRestCommand;
    FGetOlearyDataCommand: TDSRestCommand;
    FGetOlearyDataCommand_Cache: TDSRestCommand;
    FGetOlearyData_dayCommand: TDSRestCommand;
    FGetOlearyData_dayCommand_Cache: TDSRestCommand;
    FGetPerioData_chart_dayCommand: TDSRestCommand;
    FGetPerioData_chart_dayCommand_Cache: TDSRestCommand;
    FGetPerioData_chart_allCommand: TDSRestCommand;
    FGetPerioData_chart_allCommand_Cache: TDSRestCommand;
    FsaveChijuCommand: TDSRestCommand;
    FGetChartDataCommand: TDSRestCommand;
    FGetChartDataCommand_Cache: TDSRestCommand;
    FGetConnection_easydentCommand: TDSRestCommand;
    FGetImgListInfo_dentroCommand: TDSRestCommand;
    FGetImgListInfo_dentroCommand_Cache: TDSRestCommand;
    FGetImgListDate_dentroCommand: TDSRestCommand;
    FGetImgListDate_dentroCommand_Cache: TDSRestCommand;
    FGetImageKind_dentroCommand: TDSRestCommand;
    FGetImageKind_dentroCommand_Cache: TDSRestCommand;
    FsaveOralExamCommand: TDSRestCommand;
    FGetOralExamDataCommand: TDSRestCommand;
    FGetOralExamDataCommand_Cache: TDSRestCommand;
    FGetPerioSelfDataCommand: TDSRestCommand;
    FGetPerioSelfDataCommand_Cache: TDSRestCommand;
    FsavePerioSelfCommand: TDSRestCommand;
    FGetTeethInfo_chart_allCommand: TDSRestCommand;
    FGetTeethInfo_chart_allCommand_Cache: TDSRestCommand;
    FGetTeethInfoDataCommand: TDSRestCommand;
    FGetTeethInfoDataCommand_Cache: TDSRestCommand;
    FSaveTeethInfoCommand: TDSRestCommand;
    FMemoSaveCommand: TDSRestCommand;
    FGetMemoCommand: TDSRestCommand;
    FGetMemoCommand_Cache: TDSRestCommand;
    FcntMissingCommand: TDSRestCommand;
    FGetImageInfoCommand: TDSRestCommand;
    FGetImageInfoCommand_Cache: TDSRestCommand;
    FGetImgPatientInfoChartCommand: TDSRestCommand;
    FGetImgPatientInfoChartCommand_Cache: TDSRestCommand;
    FGetImgPatientInfoJubsuCommand: TDSRestCommand;
    FGetImgPatientInfoJubsuCommand_Cache: TDSRestCommand;
    FGetImgPatientInfoNameCommand: TDSRestCommand;
    FGetImgPatientInfoNameCommand_Cache: TDSRestCommand;
    FGetImgPatInfo_termCommand: TDSRestCommand;
    FGetImgPatInfo_termCommand_Cache: TDSRestCommand;
    FPicSave_FtpPathCommand: TDSRestCommand;
    FGetPictureInfoCommand: TDSRestCommand;
    FGetPictureInfoCommand_Cache: TDSRestCommand;
    FSaveImageInfo_promiseCommand: TDSRestCommand;
    FGetImageInfo_promiseCommand: TDSRestCommand;
    FGetImageInfo_promiseCommand_Cache: TDSRestCommand;
    FGetTreeDataCommand: TDSRestCommand;
    FGetTreeDataCommand_Cache: TDSRestCommand;
    FtpChargeSaveCommand: TDSRestCommand;
    FDtxSaveCommand: TDSRestCommand;
    FGetPlanDataCommand: TDSRestCommand;
    FGetPlanDataCommand_Cache: TDSRestCommand;
    FGetPlanListCommand: TDSRestCommand;
    FGetPlanListCommand_Cache: TDSRestCommand;
    FGetReportInfoCommand: TDSRestCommand;
    FGetReportInfoCommand_Cache: TDSRestCommand;
    FReportSaveCommand: TDSRestCommand;
    FGetPromiseInfoCommand: TDSRestCommand;
    FGetPromiseInfoCommand_Cache: TDSRestCommand;
    FsavePromiseDataCommand: TDSRestCommand;
    FAllsavePromiseDataCommand: TDSRestCommand;
    FGetPromiseDataInfoCommand: TDSRestCommand;
    FGetPromiseDataInfoCommand_Cache: TDSRestCommand;
    FSavePromiseCommand: TDSRestCommand;
    FGetNoticeCommand: TDSRestCommand;
    FGetNoticeCommand_Cache: TDSRestCommand;
    FsaveNoticeCommand: TDSRestCommand;
    FGetJubsuCommand: TDSRestCommand;
    FGetJubsuCommand_Cache: TDSRestCommand;
    FsaveJubsuCommand: TDSRestCommand;
    FGetPatientInfoNAMENCHARTCommand: TDSRestCommand;
    FGetPatientInfoNAMENCHARTCommand_Cache: TDSRestCommand;
    FGetHpInfo_basicCommand: TDSRestCommand;
    FGetHpInfo_basicCommand_Cache: TDSRestCommand;
    FsaveHpinfo_basicCommand: TDSRestCommand;
    FGetHpInfo_BLECommand: TDSRestCommand;
    FGetHpInfo_BLECommand_Cache: TDSRestCommand;
    FsaveHpinfo_BLECommand: TDSRestCommand;
    FGetHpInfo_HTTPCommand: TDSRestCommand;
    FGetHpInfo_HTTPCommand_Cache: TDSRestCommand;
    FsaveHpinfo_HTTPCommand: TDSRestCommand;
    FsavePatientDeviceCommand: TDSRestCommand;
    FGetPatientDeviceCommand: TDSRestCommand;
    FGetPatientDeviceCommand_Cache: TDSRestCommand;
    FsaveQnaCommand: TDSRestCommand;
    FGetQna_MaxQidCommand: TDSRestCommand;
    FGetQna_MaxQidCommand_Cache: TDSRestCommand;
    FGetQnaListCommand: TDSRestCommand;
    FGetQnaListCommand_Cache: TDSRestCommand;
    FGetJubsuListCommand: TDSRestCommand;
    FGetJubsuListCommand_Cache: TDSRestCommand;
    FGetHelperPatientInfoCommand: TDSRestCommand;
    FGetHelperPatientInfoCommand_Cache: TDSRestCommand;
    FsavePushCommand: TDSRestCommand;
    FGetPushListCommand: TDSRestCommand;
    FGetPushListCommand_Cache: TDSRestCommand;
    FGetPatientInfoLoginInfoCommand: TDSRestCommand;
    FGetPatientInfoLoginInfoCommand_Cache: TDSRestCommand;
    FPromiseData_hanaro_gubunCommand: TDSRestCommand;
    FDeleteImageInfo_PromiseCommand: TDSRestCommand;
    FsaveMakedCouponCommand: TDSRestCommand;
    FsavePublishedCouponCommand: TDSRestCommand;
    FsavePersonalPublishedCouponCommand: TDSRestCommand;
    FGetMakedCouponListCommand: TDSRestCommand;
    FGetMakedCouponListCommand_Cache: TDSRestCommand;
    FGetHelperPatient_CouponList_InfoCommand: TDSRestCommand;
    FGetHelperPatient_CouponList_InfoCommand_Cache: TDSRestCommand;
    FsaveFaqCommand: TDSRestCommand;
    FGetFaqListCommand: TDSRestCommand;
    FGetFaqListCommand_Cache: TDSRestCommand;
    FsaveGogekBasicCommand: TDSRestCommand;
    FGetPatientInfoIDCommand: TDSRestCommand;
    FGetPatientInfoIDCommand_Cache: TDSRestCommand;
    FGetHPInfoCommand: TDSRestCommand;
    FGetHPInfoCommand_Cache: TDSRestCommand;
    FChangeJubsuCommand: TDSRestCommand;
    FDeleteNoticeCommand: TDSRestCommand;
    FDeleteFAQCommand: TDSRestCommand;
    FDeletePushCommand: TDSRestCommand;
    FGetJubsuListForCountCommand: TDSRestCommand;
    FGetJubsuListForCountCommand_Cache: TDSRestCommand;
    FGetLoginListCommand: TDSRestCommand;
    FGetLoginListCommand_Cache: TDSRestCommand;
    FGetNewMemberCountCommand: TDSRestCommand;
    FGetNewMemberCountCommand_Cache: TDSRestCommand;
    FGetPointListCommand: TDSRestCommand;
    FGetPointListCommand_Cache: TDSRestCommand;
    FGetPointSumCommand: TDSRestCommand;
    FGetPointSumCommand_Cache: TDSRestCommand;
    FGetHelperPatientInfo_onlyPatientCommand: TDSRestCommand;
    FGetHelperPatientInfo_onlyPatientCommand_Cache: TDSRestCommand;
    FUpdateGogekBasic_idJoinCommand: TDSRestCommand;
    FGetNewQnaListCommand: TDSRestCommand;
    FGetNewQnaListCommand_Cache: TDSRestCommand;
    FSaveParentCommand: TDSRestCommand;
    FupdateIsparentCommand: TDSRestCommand;
    FupdateIsUseParentCommand: TDSRestCommand;
    FGetParentChartListCommand: TDSRestCommand;
    FGetParentChartListCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function GetConnection(AUserName: string; APAssword: string; ADatabase: string; AHost: string; const ARequestFilter: string = ''): Boolean;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function GetDocuInfo(const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetDocuInfo_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetDocuInfo_Chart(AChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetDocuInfo_Chart_Cache(AChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetNewonDongGi(const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetNewonDongGi_Cache(const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPatientInfoChart(AChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientInfoChart_Cache(AChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPatientInfoName(AName: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientInfoName_Cache(AName: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPatInfo_term(fDay: string; Lday: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatInfo_term_Cache(fDay: string; Lday: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPatientInfoJubsu(fDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientInfoJubsu_Cache(fDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function isDataEmpty(varChart: string; docCode: string; const ARequestFilter: string = ''): string;
    function saveDocu(varChart: string; varName: string; docCode: string; fileName: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function insertDocu(varChart: string; docCode: string; fileName: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function updateDocu(ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetImgListInfo(varChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgListInfo_Cache(varChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImgListDate(varChart: string; varDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgListDate_Cache(varChart: string; varDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveOleary(varChart: string; varJinday: string; P1: Double; p2: Double; P3: Double; P4: Double; bTeethCnt: Integer; vPoint: Double; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetOlearyData(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetOlearyData_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetOlearyData_day(varchart: string; varDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetOlearyData_day_Cache(varchart: string; varDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPerioData_chart_day(varchart: string; varDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPerioData_chart_day_Cache(varchart: string; varDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPerioData_chart_all(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPerioData_chart_all_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveChiju(chart: string; inputdate: string; t_no: string; t_1: Integer; t_2: Integer; t_3: Integer; t_4: Integer; t_5: Integer; t_6: Integer; T_noR: Integer; T_1R: Integer; T_2R: Integer; T_3R: Integer; T_4R: Integer; T_5R: Integer; T_6R: Integer; bleeding: Integer; pus: Integer; mobility: Integer; calculus: Integer; furcation: Integer; R_1: Integer; R_2: Integer; R_3: Integer; R_4: Integer; R_5: Integer; R_6: Integer; chartid: Integer; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetChartData(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetChartData_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetConnection_easydent(AUserName: string; APAssword: string; ADatabase: string; AHost: string; const ARequestFilter: string = ''): Boolean;
    function GetImgListInfo_dentro(varChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgListInfo_dentro_Cache(varChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImgListDate_dentro(varChart: string; varDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgListDate_dentro_Cache(varChart: string; varDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImageKind_dentro(varChart: string; varDay: string; nPosition: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImageKind_dentro_Cache(varChart: string; varDay: string; nPosition: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveOralExam(varChart: string; varJinday: string; tbcount: Integer; method: Integer; interval: Integer; paste: Integer; brush: Integer; pick: Integer; gagle: Integer; floss: Integer; scale: Integer; smoke: Integer; drink: Integer; remark: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetOralExamData(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetOralExamData_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPerioSelfData(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPerioSelfData_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function savePerioSelf(varChart: string; varJinday: string; munDap: Double; point: Integer; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetTeethInfo_chart_all(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetTeethInfo_chart_all_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetTeethInfoData(varchart: string; varJinday: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetTeethInfoData_Cache(varchart: string; varJinday: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function SaveTeethInfo(varChart: string; varJinday: string; varTeethNo: string; missing: Integer; discoloration: Integer; rootTx: Integer; impalnt: Integer; bridge: Integer; rootillness: Integer; abrasion: Integer; needTreat: Integer; observe: Integer; extract: Integer; sensitivity: Integer; restoration: Integer; crown: Integer; caries: Integer; rootcaries: Integer; denture: Integer; rootrest: Integer; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function MemoSave(varChart: string; varKind: string; varCode: string; varRemark: string; varDay: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetMemo(varChart: string; varKind: string; varCode: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetMemo_Cache(varChart: string; varKind: string; varCode: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function cntMissing(varChart: string; const ARequestFilter: string = ''): Integer;
    function GetImageInfo(AChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImageInfo_Cache(AChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImgPatientInfoChart(AChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgPatientInfoChart_Cache(AChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImgPatientInfoJubsu(fDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgPatientInfoJubsu_Cache(fDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImgPatientInfoName(AName: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgPatientInfoName_Cache(AName: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetImgPatInfo_term(fDay: string; Lday: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImgPatInfo_term_Cache(fDay: string; Lday: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function PicSave_FtpPath(varChart: string; varFile: string; varFileType: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPictureInfo(AChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPictureInfo_Cache(AChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function SaveImageInfo_promise(varHospID: string; varChart: string; varCount: string; varFolderName: string; varUserID: string; varFileName: string; varKind: string; varRemark: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetImageInfo_promise(varHospID: string; varChart: string; varKind: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetImageInfo_promise_Cache(varHospID: string; varChart: string; varKind: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetTreeData(aID: string; aFlag: Integer; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetTreeData_Cache(aID: string; aFlag: Integer; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function tpChargeSave(varChart: string; varKind: Integer; varDay: string; akind: string; plansort: string; jinryosort: string; bohum: string; kamak: string; total: string; subtotal: string; chart_id: string; Council: string; team: string; doctor: string; Remark: string; KamKind: string; hyun: string; card: string; etc: string; monthly: string; monthgeumek: string; bochul: string; gyojung: string; imp: string; mf: string; makeDate: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function DtxSave(dtxID: string; varchart: string; seqcode: Integer; jin_day: string; kind: string; description: string; tbName: string; cremark: string; cprice: string; ccnt: string; ckumak: Double; portion: string; doctor: string; Council: string; team: string; dcp: Double; dcw: Double; aKind: string; Choice: string; Chk: string; fil: string; nOrd: Integer; dTxOrder: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPlanData(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPlanData_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPlanList(varchart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPlanList_Cache(varchart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetReportInfo(AChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetReportInfo_Cache(AChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function ReportSave(varChart: string; JinDay: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPromiseInfo(varChart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPromiseInfo_Cache(varChart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function savePromiseData(akind: string; hpid: string; bKind: string; idn: string; pchart: string; pname: string; pday: string; ptime: string; premark: string; pos: string; pcancel: string; pjundam: string; pdam: string; pteam: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function AllsavePromiseData(akind: string; hpid: string; bKind: string; idn: string; pchart: string; pname: string; pday: string; ptime: string; premark: string; pos: string; pcancel: string; pjundam: string; pdam: string; pteam: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPromiseDataInfo(varHospID: string; varChart: string; varDay: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPromiseDataInfo_Cache(varHospID: string; varChart: string; varDay: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function SavePromise(varDay: string; varGubun: string; varTime: string; varRemark: string; varmemo: string; varTeam: string; varDoc: string; varChart: string; varName: string; vartel: string; varInterval: string; varAlret: string; varLock: string; varJundam: string; vardam: string; varColor: string; varJundam2: string; varNosms: string; varF_color: string; varF_size: string; varF_bold: Boolean; varTelyeyak: string; varIdn: Integer; varPos: string; modUser: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetNotice(hospid: string; aUse: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetNotice_Cache(hospid: string; aUse: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveNotice(noticeID: string; hospid: string; subject: string; title: string; remark: string; aUser: string; aUse: string; regday: string; modday: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetJubsu(hospid: string; jin_day: string; jubsu: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetJubsu_Cache(hospid: string; jin_day: string; jubsu: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveJubsu(hospid: string; chart: string; jin_day: string; jin_time: TDateTime; jubsu: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPatientInfoNAMENCHART(AHPID: string; AID: string; APASS: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientInfoNAMENCHART_Cache(AHPID: string; AID: string; APASS: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetHpInfo_basic(hpID: string; Code: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHpInfo_basic_Cache(hpID: string; Code: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveHpinfo_basic(hpCertno: string; hpName: string; hpID: string; hpPhone: string; hpChief: string; hpKind: string; hpSaupNo: string; hpAddress: string; hpUpjong: string; hpJongmok: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetHpInfo_BLE(hpID: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHpInfo_BLE_Cache(hpID: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveHpinfo_BLE(hpID: string; BLEid: string; Major: string; Minor: string; inUse: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetHpInfo_HTTP(hpID: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHpInfo_HTTP_Cache(hpID: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveHpinfo_HTTP(hpID: string; hpHttp1: string; hpHttp2: string; hpHttp3: string; hpHttp4: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function savePatientDevice(hospid: string; chart: string; DeviceID: string; regday: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPatientDevice(AHPID: string; Achart: string; ADevice: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientDevice_Cache(AHPID: string; Achart: string; ADevice: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveQna(aKind: string; hospid: string; chart: string; subject: string; title: string; remark: string; aUser: string; regday: TDateTime; modday: TDateTime; qid: Integer; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetQna_MaxQid(hospid: string; chart: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetQna_MaxQid_Cache(hospid: string; chart: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetQnaList(hospid: string; chart: string; answerKind: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetQnaList_Cache(hospid: string; chart: string; answerKind: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetJubsuList(hospid: string; jin_day: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetJubsuList_Cache(hospid: string; jin_day: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetHelperPatientInfo(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHelperPatientInfo_Cache(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function savePush(aKind: string; hospid: string; chart: string; subject: string; title: string; remark: string; aUser: string; regday: TDateTime; modday: TDateTime; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPushList(hospid: string; chart: string; regday1: string; regday2: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPushList_Cache(hospid: string; chart: string; regday1: string; regday2: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPatientInfoLoginInfo(AHPID: string; AName: string; ABirth: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientInfoLoginInfo_Cache(AHPID: string; AName: string; ABirth: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function PromiseData_hanaro_gubun(akind: string; hpid: string; bKind: string; idn: string; pteam: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function DeleteImageInfo_Promise(ID: Integer; out Error: string; const ARequestFilter: string = ''): Boolean;
    function saveMakedCoupon(hpid: string; makeDate: TDateTime; couponHeaderCode: string; couponName: string; Remark: string; StartDate: TDateTime; EndDate: TDateTime; MaxCount: Integer; PublishedCount: Integer; UsedCount: Integer; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function savePublishedCoupon(hpid: string; couponHeaderCode: string; couponCode: string; publishedDate: TDateTime; publisher: string; kind: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function savePersonalPublishedCoupon(hpid: string; chart: string; couponHeaderCode: string; couponCode: string; usedDate: TDateTime; publishedDate: TDateTime; Used: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetMakedCouponList(hpid: string; regday1: string; regday2: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetMakedCouponList_Cache(hpid: string; regday1: string; regday2: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetHelperPatient_CouponList_Info(hospid: string; aValue: string; kind: Integer; couponHeaderCode: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHelperPatient_CouponList_Info_Cache(hospid: string; aValue: string; kind: Integer; couponHeaderCode: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveFaq(faqID: string; hospid: string; subject: string; title: string; remark: string; aUser: string; regday: string; modday: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetFaqList(hospid: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetFaqList_Cache(hospid: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function saveGogekBasic(hpID: string; hname: string; chart: string; jumin: string; birth: string; gender: string; email: string; password: string; kinveyId: string; kinveyPass: string; deviceID: string; mod_day: string; reg_day: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetPatientInfoID(AHPID: string; AID: string; APASS: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPatientInfoID_Cache(AHPID: string; AID: string; APASS: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetHPInfo(hospid: string; certno: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHPInfo_Cache(hospid: string; certno: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function ChangeJubsu(hospid: string; chart: string; jin_day: string; jin_time: TDateTime; jubsu: string; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function DeleteNotice(noticeID: string; hospid: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function DeleteFAQ(noticeID: string; hospid: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function DeletePush(noticeID: string; hospid: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetJubsuListForCount(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetJubsuListForCount_Cache(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetLoginList(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetLoginList_Cache(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetNewMemberCount(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetNewMemberCount_Cache(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPointList(hospid: string; chart: string; certno: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPointList_Cache(hospid: string; chart: string; certno: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetPointSum(hospid: string; chart: string; certno: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetPointSum_Cache(hospid: string; chart: string; certno: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function GetHelperPatientInfo_onlyPatient(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetHelperPatientInfo_onlyPatient_Cache(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function UpdateGogekBasic_idJoin(hpID: string; Idn: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function GetNewQnaList(hospid: string; chart: string; answerKind: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetNewQnaList_Cache(hospid: string; chart: string; answerKind: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
    function SaveParent(hpid: string; chart: string; parentchart: string; isuse: string; regday: TDateTime; modday: TDateTime; out ID: string; out Error: string; const ARequestFilter: string = ''): Boolean;
    function updateIsparent(hpid: string; chart: string; isParent: string; modday: TDateTime; const ARequestFilter: string = ''): Boolean;
    function updateIsUseParent(hpid: string; chart: string; ParentChart: string; isUse: string; modday: TDateTime; const ARequestFilter: string = ''): Boolean;
    function GetParentChartList(hpid: string; chart: string; certno: string; const ARequestFilter: string = ''): TFDJSONDataSets;
    function GetParentChartList_Cache(hpid: string; chart: string; certno: string; const ARequestFilter: string = ''): IDSRestCachedTFDJSONDataSets;
  end;

  IDSRestCachedTFDJSONDataSets = interface(IDSRestCachedObject<TFDJSONDataSets>)
  end;

  TDSRestCachedTFDJSONDataSets = class(TDSRestCachedObject<TFDJSONDataSets>, IDSRestCachedTFDJSONDataSets, IDSRestCachedCommand)
  end;

const
  TServerMethods1_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TServerMethods1_GetConnection: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'AUserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'APAssword'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ADatabase'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AHost'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_GetDocuInfo: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetDocuInfo_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetDocuInfo_Chart: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetDocuInfo_Chart_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetNewonDongGi: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetNewonDongGi_Cache: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPatientInfoChart: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientInfoChart_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPatientInfoName: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientInfoName_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPatInfo_term: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Lday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatInfo_term_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Lday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPatientInfoJubsu: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientInfoJubsu_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_isDataEmpty: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'docCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_saveDocu: array [0..6] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'docCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'fileName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_insertDocu: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'docCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'fileName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_updateDocu: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'ID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetImgListInfo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgListInfo_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImgListDate: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgListDate_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveOleary: array [0..10] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJinday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'P1'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'p2'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'P3'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'P4'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'bTeethCnt'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'vPoint'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetOlearyData: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetOlearyData_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetOlearyData_day: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetOlearyData_day_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPerioData_chart_day: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPerioData_chart_day_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPerioData_chart_all: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPerioData_chart_all_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveChiju: array [0..30] of TDSRestParameterMetaData =
  (
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'inputdate'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 't_no'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 't_1'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 't_2'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 't_3'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 't_4'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 't_5'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 't_6'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_noR'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_1R'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_2R'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_3R'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_4R'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_5R'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'T_6R'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'bleeding'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pus'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'mobility'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'calculus'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'furcation'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'R_1'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'R_2'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'R_3'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'R_4'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'R_5'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'R_6'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'chartid'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetChartData: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetChartData_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetConnection_easydent: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'AUserName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'APAssword'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ADatabase'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AHost'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetImgListInfo_dentro: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgListInfo_dentro_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImgListDate_dentro: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgListDate_dentro_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImageKind_dentro: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'nPosition'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImageKind_dentro_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'nPosition'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveOralExam: array [0..16] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJinday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'tbcount'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'method'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'interval'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'paste'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'brush'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'pick'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'gagle'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'floss'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'scale'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'smoke'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'drink'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetOralExamData: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetOralExamData_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPerioSelfData: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPerioSelfData_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_savePerioSelf: array [0..6] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJinday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'munDap'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'point'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetTeethInfo_chart_all: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetTeethInfo_chart_all_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetTeethInfoData: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJinday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetTeethInfoData_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJinday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_SaveTeethInfo: array [0..22] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJinday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varTeethNo'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'missing'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'discoloration'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'rootTx'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'impalnt'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'bridge'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'rootillness'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'abrasion'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'needTreat'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'observe'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'extract'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'sensitivity'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'restoration'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'crown'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'caries'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'rootcaries'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'denture'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'rootrest'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_MemoSave: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varRemark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetMemo: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetMemo_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_cntMissing: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 6; TypeName: 'Integer')
  );

  TServerMethods1_GetImageInfo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImageInfo_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImgPatientInfoChart: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgPatientInfoChart_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImgPatientInfoJubsu: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgPatientInfoJubsu_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImgPatientInfoName: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgPatientInfoName_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetImgPatInfo_term: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Lday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImgPatInfo_term_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'fDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Lday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_PicSave_FtpPath: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varFile'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varFileType'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPictureInfo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPictureInfo_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_SaveImageInfo_promise: array [0..10] of TDSRestParameterMetaData =
  (
    (Name: 'varHospID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varCount'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varFolderName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varUserID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varFileName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varRemark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetImageInfo_promise: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varHospID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetImageInfo_promise_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varHospID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetTreeData: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aFlag'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetTreeData_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'aID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aFlag'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_tpChargeSave: array [0..28] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varKind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'akind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'plansort'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jinryosort'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'bohum'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kamak'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'total'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'subtotal'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart_id'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Council'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'team'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'doctor'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'KamKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hyun'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'card'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'etc'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'monthly'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'monthgeumek'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'bochul'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'gyojung'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'imp'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'mf'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'makeDate'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_DtxSave: array [0..25] of TDSRestParameterMetaData =
  (
    (Name: 'dtxID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'seqcode'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'description'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'tbName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'cremark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'cprice'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ccnt'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ckumak'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'portion'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'doctor'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Council'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'team'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'dcp'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'dcw'; Direction: 1; DBXType: 7; TypeName: 'Double'),
    (Name: 'aKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Choice'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Chk'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'fil'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'nOrd'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'dTxOrder'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPlanData: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPlanData_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPlanList: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPlanList_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetReportInfo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetReportInfo_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'AChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_ReportSave: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'JinDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPromiseInfo: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPromiseInfo_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_savePromiseData: array [0..16] of TDSRestParameterMetaData =
  (
    (Name: 'akind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'bKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'idn'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pname'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ptime'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'premark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pos'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pcancel'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pjundam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pdam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pteam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_AllsavePromiseData: array [0..16] of TDSRestParameterMetaData =
  (
    (Name: 'akind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'bKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'idn'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pname'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ptime'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'premark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pos'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pcancel'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pjundam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pdam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pteam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPromiseDataInfo: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varHospID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPromiseDataInfo_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'varHospID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_SavePromise: array [0..27] of TDSRestParameterMetaData =
  (
    (Name: 'varDay'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varGubun'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varTime'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varRemark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varmemo'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varTeam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varDoc'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'vartel'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varInterval'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varAlret'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varLock'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJundam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'vardam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varColor'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varJundam2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varNosms'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varF_color'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varF_size'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varF_bold'; Direction: 1; DBXType: 4; TypeName: 'Boolean'),
    (Name: 'varTelyeyak'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'varIdn'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'varPos'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'modUser'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetNotice: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUse'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetNotice_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUse'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveNotice: array [0..11] of TDSRestParameterMetaData =
  (
    (Name: 'noticeID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'subject'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUser'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUse'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'modday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetJubsu: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jubsu'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetJubsu_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jubsu'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveJubsu: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_time'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'jubsu'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPatientInfoNAMENCHART: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'APASS'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientInfoNAMENCHART_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'APASS'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetHpInfo_basic: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Code'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHpInfo_basic_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Code'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveHpinfo_basic: array [0..12] of TDSRestParameterMetaData =
  (
    (Name: 'hpCertno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpPhone'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpChief'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpSaupNo'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpAddress'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpUpjong'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpJongmok'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetHpInfo_BLE: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHpInfo_BLE_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveHpinfo_BLE: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'BLEid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Major'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Minor'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'inUse'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetHpInfo_HTTP: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHpInfo_HTTP_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveHpinfo_HTTP: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpHttp1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpHttp2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpHttp3'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpHttp4'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_savePatientDevice: array [0..6] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'DeviceID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPatientDevice: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Achart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ADevice'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientDevice_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Achart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ADevice'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveQna: array [0..12] of TDSRestParameterMetaData =
  (
    (Name: 'aKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'subject'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUser'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'modday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'qid'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetQna_MaxQid: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetQna_MaxQid_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetQnaList: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'answerKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetQnaList_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'answerKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetJubsuList: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetJubsuList_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetHelperPatientInfo: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aValue'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHelperPatientInfo_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aValue'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_savePush: array [0..11] of TDSRestParameterMetaData =
  (
    (Name: 'aKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'subject'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUser'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'modday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPushList: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPushList_Cache: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPatientInfoLoginInfo: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ABirth'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientInfoLoginInfo_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ABirth'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_PromiseData_hanaro_gubun: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'akind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'bKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'idn'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'pteam'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_DeleteImageInfo_Promise: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'ID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_saveMakedCoupon: array [0..12] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'makeDate'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'couponHeaderCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'couponName'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'StartDate'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'EndDate'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'MaxCount'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'PublishedCount'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'UsedCount'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_savePublishedCoupon: array [0..8] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'couponHeaderCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'couponCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'publishedDate'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'publisher'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_savePersonalPublishedCoupon: array [0..9] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'couponHeaderCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'couponCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'usedDate'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'publishedDate'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'Used'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetMakedCouponList: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetMakedCouponList_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetHelperPatient_CouponList_Info: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aValue'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'couponHeaderCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHelperPatient_CouponList_Info_Cache: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aValue'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'couponHeaderCode'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveFaq: array [0..10] of TDSRestParameterMetaData =
  (
    (Name: 'faqID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'subject'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'remark'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aUser'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'modday'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetFaqList: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetFaqList_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_saveGogekBasic: array [0..15] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hname'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jumin'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'birth'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'gender'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'email'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'password'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kinveyId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kinveyPass'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'deviceID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'mod_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'reg_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetPatientInfoID: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'APASS'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPatientInfoID_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'AHPID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'AID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'APASS'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetHPInfo: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHPInfo_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_ChangeJubsu: array [0..7] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_time'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'jubsu'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_DeleteNotice: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'noticeID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_DeleteFAQ: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'noticeID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_DeletePush: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'noticeID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetJubsuListForCount: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetJubsuListForCount_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetLoginList: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetLoginList_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetNewMemberCount: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetNewMemberCount_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day1'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'jin_day2'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPointList: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPointList_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetPointSum: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetPointSum_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_GetHelperPatientInfo_onlyPatient: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aValue'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetHelperPatientInfo_onlyPatient_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'aValue'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'kind'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_UpdateGogekBasic_idJoin: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hpID'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Idn'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetNewQnaList: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'answerKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetNewQnaList_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hospid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'answerKind'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TServerMethods1_SaveParent: array [0..8] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'parentchart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'isuse'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'regday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'modday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: 'ID'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: 'Error'; Direction: 2; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_updateIsparent: array [0..4] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'isParent'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'modday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_updateIsUseParent: array [0..5] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'ParentChart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'isUse'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'modday'; Direction: 1; DBXType: 11; TypeName: 'TDateTime'),
    (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean')
  );

  TServerMethods1_GetParentChartList: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TFDJSONDataSets')
  );

  TServerMethods1_GetParentChartList_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'hpid'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'chart'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'certno'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

implementation

procedure TServerMethods1Client.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TServerMethods1."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TServerMethods1_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TServerMethods1Client.GetConnection(AUserName: string; APAssword: string; ADatabase: string; AHost: string; const ARequestFilter: string): Boolean;
begin
  if FGetConnectionCommand = nil then
  begin
    FGetConnectionCommand := FConnection.CreateCommand;
    FGetConnectionCommand.RequestType := 'GET';
    FGetConnectionCommand.Text := 'TServerMethods1.GetConnection';
    FGetConnectionCommand.Prepare(TServerMethods1_GetConnection);
  end;
  FGetConnectionCommand.Parameters[0].Value.SetWideString(AUserName);
  FGetConnectionCommand.Parameters[1].Value.SetWideString(APAssword);
  FGetConnectionCommand.Parameters[2].Value.SetWideString(ADatabase);
  FGetConnectionCommand.Parameters[3].Value.SetWideString(AHost);
  FGetConnectionCommand.Execute(ARequestFilter);
  Result := FGetConnectionCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare(TServerMethods1_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare(TServerMethods1_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetDocuInfo(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetDocuInfoCommand = nil then
  begin
    FGetDocuInfoCommand := FConnection.CreateCommand;
    FGetDocuInfoCommand.RequestType := 'GET';
    FGetDocuInfoCommand.Text := 'TServerMethods1.GetDocuInfo';
    FGetDocuInfoCommand.Prepare(TServerMethods1_GetDocuInfo);
  end;
  FGetDocuInfoCommand.Execute(ARequestFilter);
  if not FGetDocuInfoCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetDocuInfoCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetDocuInfoCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetDocuInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetDocuInfo_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetDocuInfoCommand_Cache = nil then
  begin
    FGetDocuInfoCommand_Cache := FConnection.CreateCommand;
    FGetDocuInfoCommand_Cache.RequestType := 'GET';
    FGetDocuInfoCommand_Cache.Text := 'TServerMethods1.GetDocuInfo';
    FGetDocuInfoCommand_Cache.Prepare(TServerMethods1_GetDocuInfo_Cache);
  end;
  FGetDocuInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetDocuInfoCommand_Cache.Parameters[0].Value.GetString);
end;

function TServerMethods1Client.GetDocuInfo_Chart(AChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetDocuInfo_ChartCommand = nil then
  begin
    FGetDocuInfo_ChartCommand := FConnection.CreateCommand;
    FGetDocuInfo_ChartCommand.RequestType := 'GET';
    FGetDocuInfo_ChartCommand.Text := 'TServerMethods1.GetDocuInfo_Chart';
    FGetDocuInfo_ChartCommand.Prepare(TServerMethods1_GetDocuInfo_Chart);
  end;
  FGetDocuInfo_ChartCommand.Parameters[0].Value.SetWideString(AChart);
  FGetDocuInfo_ChartCommand.Execute(ARequestFilter);
  if not FGetDocuInfo_ChartCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetDocuInfo_ChartCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetDocuInfo_ChartCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetDocuInfo_ChartCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetDocuInfo_Chart_Cache(AChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetDocuInfo_ChartCommand_Cache = nil then
  begin
    FGetDocuInfo_ChartCommand_Cache := FConnection.CreateCommand;
    FGetDocuInfo_ChartCommand_Cache.RequestType := 'GET';
    FGetDocuInfo_ChartCommand_Cache.Text := 'TServerMethods1.GetDocuInfo_Chart';
    FGetDocuInfo_ChartCommand_Cache.Prepare(TServerMethods1_GetDocuInfo_Chart_Cache);
  end;
  FGetDocuInfo_ChartCommand_Cache.Parameters[0].Value.SetWideString(AChart);
  FGetDocuInfo_ChartCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetDocuInfo_ChartCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetNewonDongGi(const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetNewonDongGiCommand = nil then
  begin
    FGetNewonDongGiCommand := FConnection.CreateCommand;
    FGetNewonDongGiCommand.RequestType := 'GET';
    FGetNewonDongGiCommand.Text := 'TServerMethods1.GetNewonDongGi';
    FGetNewonDongGiCommand.Prepare(TServerMethods1_GetNewonDongGi);
  end;
  FGetNewonDongGiCommand.Execute(ARequestFilter);
  if not FGetNewonDongGiCommand.Parameters[0].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetNewonDongGiCommand.Parameters[0].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetNewonDongGiCommand.Parameters[0].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetNewonDongGiCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetNewonDongGi_Cache(const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetNewonDongGiCommand_Cache = nil then
  begin
    FGetNewonDongGiCommand_Cache := FConnection.CreateCommand;
    FGetNewonDongGiCommand_Cache.RequestType := 'GET';
    FGetNewonDongGiCommand_Cache.Text := 'TServerMethods1.GetNewonDongGi';
    FGetNewonDongGiCommand_Cache.Prepare(TServerMethods1_GetNewonDongGi_Cache);
  end;
  FGetNewonDongGiCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetNewonDongGiCommand_Cache.Parameters[0].Value.GetString);
end;

function TServerMethods1Client.GetPatientInfoChart(AChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientInfoChartCommand = nil then
  begin
    FGetPatientInfoChartCommand := FConnection.CreateCommand;
    FGetPatientInfoChartCommand.RequestType := 'GET';
    FGetPatientInfoChartCommand.Text := 'TServerMethods1.GetPatientInfoChart';
    FGetPatientInfoChartCommand.Prepare(TServerMethods1_GetPatientInfoChart);
  end;
  FGetPatientInfoChartCommand.Parameters[0].Value.SetWideString(AChart);
  FGetPatientInfoChartCommand.Execute(ARequestFilter);
  if not FGetPatientInfoChartCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientInfoChartCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientInfoChartCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientInfoChartCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientInfoChart_Cache(AChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientInfoChartCommand_Cache = nil then
  begin
    FGetPatientInfoChartCommand_Cache := FConnection.CreateCommand;
    FGetPatientInfoChartCommand_Cache.RequestType := 'GET';
    FGetPatientInfoChartCommand_Cache.Text := 'TServerMethods1.GetPatientInfoChart';
    FGetPatientInfoChartCommand_Cache.Prepare(TServerMethods1_GetPatientInfoChart_Cache);
  end;
  FGetPatientInfoChartCommand_Cache.Parameters[0].Value.SetWideString(AChart);
  FGetPatientInfoChartCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientInfoChartCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetPatientInfoName(AName: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientInfoNameCommand = nil then
  begin
    FGetPatientInfoNameCommand := FConnection.CreateCommand;
    FGetPatientInfoNameCommand.RequestType := 'GET';
    FGetPatientInfoNameCommand.Text := 'TServerMethods1.GetPatientInfoName';
    FGetPatientInfoNameCommand.Prepare(TServerMethods1_GetPatientInfoName);
  end;
  FGetPatientInfoNameCommand.Parameters[0].Value.SetWideString(AName);
  FGetPatientInfoNameCommand.Execute(ARequestFilter);
  if not FGetPatientInfoNameCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientInfoNameCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientInfoNameCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientInfoNameCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientInfoName_Cache(AName: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientInfoNameCommand_Cache = nil then
  begin
    FGetPatientInfoNameCommand_Cache := FConnection.CreateCommand;
    FGetPatientInfoNameCommand_Cache.RequestType := 'GET';
    FGetPatientInfoNameCommand_Cache.Text := 'TServerMethods1.GetPatientInfoName';
    FGetPatientInfoNameCommand_Cache.Prepare(TServerMethods1_GetPatientInfoName_Cache);
  end;
  FGetPatientInfoNameCommand_Cache.Parameters[0].Value.SetWideString(AName);
  FGetPatientInfoNameCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientInfoNameCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetPatInfo_term(fDay: string; Lday: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatInfo_termCommand = nil then
  begin
    FGetPatInfo_termCommand := FConnection.CreateCommand;
    FGetPatInfo_termCommand.RequestType := 'GET';
    FGetPatInfo_termCommand.Text := 'TServerMethods1.GetPatInfo_term';
    FGetPatInfo_termCommand.Prepare(TServerMethods1_GetPatInfo_term);
  end;
  FGetPatInfo_termCommand.Parameters[0].Value.SetWideString(fDay);
  FGetPatInfo_termCommand.Parameters[1].Value.SetWideString(Lday);
  FGetPatInfo_termCommand.Execute(ARequestFilter);
  if not FGetPatInfo_termCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatInfo_termCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatInfo_termCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatInfo_termCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatInfo_term_Cache(fDay: string; Lday: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatInfo_termCommand_Cache = nil then
  begin
    FGetPatInfo_termCommand_Cache := FConnection.CreateCommand;
    FGetPatInfo_termCommand_Cache.RequestType := 'GET';
    FGetPatInfo_termCommand_Cache.Text := 'TServerMethods1.GetPatInfo_term';
    FGetPatInfo_termCommand_Cache.Prepare(TServerMethods1_GetPatInfo_term_Cache);
  end;
  FGetPatInfo_termCommand_Cache.Parameters[0].Value.SetWideString(fDay);
  FGetPatInfo_termCommand_Cache.Parameters[1].Value.SetWideString(Lday);
  FGetPatInfo_termCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatInfo_termCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.GetPatientInfoJubsu(fDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientInfoJubsuCommand = nil then
  begin
    FGetPatientInfoJubsuCommand := FConnection.CreateCommand;
    FGetPatientInfoJubsuCommand.RequestType := 'GET';
    FGetPatientInfoJubsuCommand.Text := 'TServerMethods1.GetPatientInfoJubsu';
    FGetPatientInfoJubsuCommand.Prepare(TServerMethods1_GetPatientInfoJubsu);
  end;
  FGetPatientInfoJubsuCommand.Parameters[0].Value.SetWideString(fDay);
  FGetPatientInfoJubsuCommand.Execute(ARequestFilter);
  if not FGetPatientInfoJubsuCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientInfoJubsuCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientInfoJubsuCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientInfoJubsuCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientInfoJubsu_Cache(fDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientInfoJubsuCommand_Cache = nil then
  begin
    FGetPatientInfoJubsuCommand_Cache := FConnection.CreateCommand;
    FGetPatientInfoJubsuCommand_Cache.RequestType := 'GET';
    FGetPatientInfoJubsuCommand_Cache.Text := 'TServerMethods1.GetPatientInfoJubsu';
    FGetPatientInfoJubsuCommand_Cache.Prepare(TServerMethods1_GetPatientInfoJubsu_Cache);
  end;
  FGetPatientInfoJubsuCommand_Cache.Parameters[0].Value.SetWideString(fDay);
  FGetPatientInfoJubsuCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientInfoJubsuCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.isDataEmpty(varChart: string; docCode: string; const ARequestFilter: string): string;
begin
  if FisDataEmptyCommand = nil then
  begin
    FisDataEmptyCommand := FConnection.CreateCommand;
    FisDataEmptyCommand.RequestType := 'GET';
    FisDataEmptyCommand.Text := 'TServerMethods1.isDataEmpty';
    FisDataEmptyCommand.Prepare(TServerMethods1_isDataEmpty);
  end;
  FisDataEmptyCommand.Parameters[0].Value.SetWideString(varChart);
  FisDataEmptyCommand.Parameters[1].Value.SetWideString(docCode);
  FisDataEmptyCommand.Execute(ARequestFilter);
  Result := FisDataEmptyCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.saveDocu(varChart: string; varName: string; docCode: string; fileName: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveDocuCommand = nil then
  begin
    FsaveDocuCommand := FConnection.CreateCommand;
    FsaveDocuCommand.RequestType := 'GET';
    FsaveDocuCommand.Text := 'TServerMethods1.saveDocu';
    FsaveDocuCommand.Prepare(TServerMethods1_saveDocu);
  end;
  FsaveDocuCommand.Parameters[0].Value.SetWideString(varChart);
  FsaveDocuCommand.Parameters[1].Value.SetWideString(varName);
  FsaveDocuCommand.Parameters[2].Value.SetWideString(docCode);
  FsaveDocuCommand.Parameters[3].Value.SetWideString(fileName);
  FsaveDocuCommand.Execute(ARequestFilter);
  ID := FsaveDocuCommand.Parameters[4].Value.GetWideString;
  Error := FsaveDocuCommand.Parameters[5].Value.GetWideString;
  Result := FsaveDocuCommand.Parameters[6].Value.GetBoolean;
end;

function TServerMethods1Client.insertDocu(varChart: string; docCode: string; fileName: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FinsertDocuCommand = nil then
  begin
    FinsertDocuCommand := FConnection.CreateCommand;
    FinsertDocuCommand.RequestType := 'GET';
    FinsertDocuCommand.Text := 'TServerMethods1.insertDocu';
    FinsertDocuCommand.Prepare(TServerMethods1_insertDocu);
  end;
  FinsertDocuCommand.Parameters[0].Value.SetWideString(varChart);
  FinsertDocuCommand.Parameters[1].Value.SetWideString(docCode);
  FinsertDocuCommand.Parameters[2].Value.SetWideString(fileName);
  FinsertDocuCommand.Execute(ARequestFilter);
  ID := FinsertDocuCommand.Parameters[3].Value.GetWideString;
  Error := FinsertDocuCommand.Parameters[4].Value.GetWideString;
  Result := FinsertDocuCommand.Parameters[5].Value.GetBoolean;
end;

function TServerMethods1Client.updateDocu(ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FupdateDocuCommand = nil then
  begin
    FupdateDocuCommand := FConnection.CreateCommand;
    FupdateDocuCommand.RequestType := 'GET';
    FupdateDocuCommand.Text := 'TServerMethods1.updateDocu';
    FupdateDocuCommand.Prepare(TServerMethods1_updateDocu);
  end;
  FupdateDocuCommand.Parameters[0].Value.SetWideString(ID);
  FupdateDocuCommand.Execute(ARequestFilter);
  Error := FupdateDocuCommand.Parameters[1].Value.GetWideString;
  Result := FupdateDocuCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.GetImgListInfo(varChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgListInfoCommand = nil then
  begin
    FGetImgListInfoCommand := FConnection.CreateCommand;
    FGetImgListInfoCommand.RequestType := 'GET';
    FGetImgListInfoCommand.Text := 'TServerMethods1.GetImgListInfo';
    FGetImgListInfoCommand.Prepare(TServerMethods1_GetImgListInfo);
  end;
  FGetImgListInfoCommand.Parameters[0].Value.SetWideString(varChart);
  FGetImgListInfoCommand.Execute(ARequestFilter);
  if not FGetImgListInfoCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgListInfoCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgListInfoCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgListInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgListInfo_Cache(varChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgListInfoCommand_Cache = nil then
  begin
    FGetImgListInfoCommand_Cache := FConnection.CreateCommand;
    FGetImgListInfoCommand_Cache.RequestType := 'GET';
    FGetImgListInfoCommand_Cache.Text := 'TServerMethods1.GetImgListInfo';
    FGetImgListInfoCommand_Cache.Prepare(TServerMethods1_GetImgListInfo_Cache);
  end;
  FGetImgListInfoCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetImgListInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgListInfoCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetImgListDate(varChart: string; varDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgListDateCommand = nil then
  begin
    FGetImgListDateCommand := FConnection.CreateCommand;
    FGetImgListDateCommand.RequestType := 'GET';
    FGetImgListDateCommand.Text := 'TServerMethods1.GetImgListDate';
    FGetImgListDateCommand.Prepare(TServerMethods1_GetImgListDate);
  end;
  FGetImgListDateCommand.Parameters[0].Value.SetWideString(varChart);
  FGetImgListDateCommand.Parameters[1].Value.SetWideString(varDay);
  FGetImgListDateCommand.Execute(ARequestFilter);
  if not FGetImgListDateCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgListDateCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgListDateCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgListDateCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgListDate_Cache(varChart: string; varDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgListDateCommand_Cache = nil then
  begin
    FGetImgListDateCommand_Cache := FConnection.CreateCommand;
    FGetImgListDateCommand_Cache.RequestType := 'GET';
    FGetImgListDateCommand_Cache.Text := 'TServerMethods1.GetImgListDate';
    FGetImgListDateCommand_Cache.Prepare(TServerMethods1_GetImgListDate_Cache);
  end;
  FGetImgListDateCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetImgListDateCommand_Cache.Parameters[1].Value.SetWideString(varDay);
  FGetImgListDateCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgListDateCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.saveOleary(varChart: string; varJinday: string; P1: Double; p2: Double; P3: Double; P4: Double; bTeethCnt: Integer; vPoint: Double; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveOlearyCommand = nil then
  begin
    FsaveOlearyCommand := FConnection.CreateCommand;
    FsaveOlearyCommand.RequestType := 'GET';
    FsaveOlearyCommand.Text := 'TServerMethods1.saveOleary';
    FsaveOlearyCommand.Prepare(TServerMethods1_saveOleary);
  end;
  FsaveOlearyCommand.Parameters[0].Value.SetWideString(varChart);
  FsaveOlearyCommand.Parameters[1].Value.SetWideString(varJinday);
  FsaveOlearyCommand.Parameters[2].Value.SetDouble(P1);
  FsaveOlearyCommand.Parameters[3].Value.SetDouble(p2);
  FsaveOlearyCommand.Parameters[4].Value.SetDouble(P3);
  FsaveOlearyCommand.Parameters[5].Value.SetDouble(P4);
  FsaveOlearyCommand.Parameters[6].Value.SetInt32(bTeethCnt);
  FsaveOlearyCommand.Parameters[7].Value.SetDouble(vPoint);
  FsaveOlearyCommand.Execute(ARequestFilter);
  ID := FsaveOlearyCommand.Parameters[8].Value.GetWideString;
  Error := FsaveOlearyCommand.Parameters[9].Value.GetWideString;
  Result := FsaveOlearyCommand.Parameters[10].Value.GetBoolean;
end;

function TServerMethods1Client.GetOlearyData(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetOlearyDataCommand = nil then
  begin
    FGetOlearyDataCommand := FConnection.CreateCommand;
    FGetOlearyDataCommand.RequestType := 'GET';
    FGetOlearyDataCommand.Text := 'TServerMethods1.GetOlearyData';
    FGetOlearyDataCommand.Prepare(TServerMethods1_GetOlearyData);
  end;
  FGetOlearyDataCommand.Parameters[0].Value.SetWideString(varchart);
  FGetOlearyDataCommand.Execute(ARequestFilter);
  if not FGetOlearyDataCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetOlearyDataCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetOlearyDataCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetOlearyDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetOlearyData_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetOlearyDataCommand_Cache = nil then
  begin
    FGetOlearyDataCommand_Cache := FConnection.CreateCommand;
    FGetOlearyDataCommand_Cache.RequestType := 'GET';
    FGetOlearyDataCommand_Cache.Text := 'TServerMethods1.GetOlearyData';
    FGetOlearyDataCommand_Cache.Prepare(TServerMethods1_GetOlearyData_Cache);
  end;
  FGetOlearyDataCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetOlearyDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetOlearyDataCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetOlearyData_day(varchart: string; varDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetOlearyData_dayCommand = nil then
  begin
    FGetOlearyData_dayCommand := FConnection.CreateCommand;
    FGetOlearyData_dayCommand.RequestType := 'GET';
    FGetOlearyData_dayCommand.Text := 'TServerMethods1.GetOlearyData_day';
    FGetOlearyData_dayCommand.Prepare(TServerMethods1_GetOlearyData_day);
  end;
  FGetOlearyData_dayCommand.Parameters[0].Value.SetWideString(varchart);
  FGetOlearyData_dayCommand.Parameters[1].Value.SetWideString(varDay);
  FGetOlearyData_dayCommand.Execute(ARequestFilter);
  if not FGetOlearyData_dayCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetOlearyData_dayCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetOlearyData_dayCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetOlearyData_dayCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetOlearyData_day_Cache(varchart: string; varDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetOlearyData_dayCommand_Cache = nil then
  begin
    FGetOlearyData_dayCommand_Cache := FConnection.CreateCommand;
    FGetOlearyData_dayCommand_Cache.RequestType := 'GET';
    FGetOlearyData_dayCommand_Cache.Text := 'TServerMethods1.GetOlearyData_day';
    FGetOlearyData_dayCommand_Cache.Prepare(TServerMethods1_GetOlearyData_day_Cache);
  end;
  FGetOlearyData_dayCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetOlearyData_dayCommand_Cache.Parameters[1].Value.SetWideString(varDay);
  FGetOlearyData_dayCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetOlearyData_dayCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.GetPerioData_chart_day(varchart: string; varDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPerioData_chart_dayCommand = nil then
  begin
    FGetPerioData_chart_dayCommand := FConnection.CreateCommand;
    FGetPerioData_chart_dayCommand.RequestType := 'GET';
    FGetPerioData_chart_dayCommand.Text := 'TServerMethods1.GetPerioData_chart_day';
    FGetPerioData_chart_dayCommand.Prepare(TServerMethods1_GetPerioData_chart_day);
  end;
  FGetPerioData_chart_dayCommand.Parameters[0].Value.SetWideString(varchart);
  FGetPerioData_chart_dayCommand.Parameters[1].Value.SetWideString(varDay);
  FGetPerioData_chart_dayCommand.Execute(ARequestFilter);
  if not FGetPerioData_chart_dayCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPerioData_chart_dayCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPerioData_chart_dayCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPerioData_chart_dayCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPerioData_chart_day_Cache(varchart: string; varDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPerioData_chart_dayCommand_Cache = nil then
  begin
    FGetPerioData_chart_dayCommand_Cache := FConnection.CreateCommand;
    FGetPerioData_chart_dayCommand_Cache.RequestType := 'GET';
    FGetPerioData_chart_dayCommand_Cache.Text := 'TServerMethods1.GetPerioData_chart_day';
    FGetPerioData_chart_dayCommand_Cache.Prepare(TServerMethods1_GetPerioData_chart_day_Cache);
  end;
  FGetPerioData_chart_dayCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetPerioData_chart_dayCommand_Cache.Parameters[1].Value.SetWideString(varDay);
  FGetPerioData_chart_dayCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPerioData_chart_dayCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.GetPerioData_chart_all(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPerioData_chart_allCommand = nil then
  begin
    FGetPerioData_chart_allCommand := FConnection.CreateCommand;
    FGetPerioData_chart_allCommand.RequestType := 'GET';
    FGetPerioData_chart_allCommand.Text := 'TServerMethods1.GetPerioData_chart_all';
    FGetPerioData_chart_allCommand.Prepare(TServerMethods1_GetPerioData_chart_all);
  end;
  FGetPerioData_chart_allCommand.Parameters[0].Value.SetWideString(varchart);
  FGetPerioData_chart_allCommand.Execute(ARequestFilter);
  if not FGetPerioData_chart_allCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPerioData_chart_allCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPerioData_chart_allCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPerioData_chart_allCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPerioData_chart_all_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPerioData_chart_allCommand_Cache = nil then
  begin
    FGetPerioData_chart_allCommand_Cache := FConnection.CreateCommand;
    FGetPerioData_chart_allCommand_Cache.RequestType := 'GET';
    FGetPerioData_chart_allCommand_Cache.Text := 'TServerMethods1.GetPerioData_chart_all';
    FGetPerioData_chart_allCommand_Cache.Prepare(TServerMethods1_GetPerioData_chart_all_Cache);
  end;
  FGetPerioData_chart_allCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetPerioData_chart_allCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPerioData_chart_allCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.saveChiju(chart: string; inputdate: string; t_no: string; t_1: Integer; t_2: Integer; t_3: Integer; t_4: Integer; t_5: Integer; t_6: Integer; T_noR: Integer; T_1R: Integer; T_2R: Integer; T_3R: Integer; T_4R: Integer; T_5R: Integer; T_6R: Integer; bleeding: Integer; pus: Integer; mobility: Integer; calculus: Integer; furcation: Integer; R_1: Integer; R_2: Integer; R_3: Integer; R_4: Integer; R_5: Integer; R_6: Integer; chartid: Integer; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveChijuCommand = nil then
  begin
    FsaveChijuCommand := FConnection.CreateCommand;
    FsaveChijuCommand.RequestType := 'GET';
    FsaveChijuCommand.Text := 'TServerMethods1.saveChiju';
    FsaveChijuCommand.Prepare(TServerMethods1_saveChiju);
  end;
  FsaveChijuCommand.Parameters[0].Value.SetWideString(chart);
  FsaveChijuCommand.Parameters[1].Value.SetWideString(inputdate);
  FsaveChijuCommand.Parameters[2].Value.SetWideString(t_no);
  FsaveChijuCommand.Parameters[3].Value.SetInt32(t_1);
  FsaveChijuCommand.Parameters[4].Value.SetInt32(t_2);
  FsaveChijuCommand.Parameters[5].Value.SetInt32(t_3);
  FsaveChijuCommand.Parameters[6].Value.SetInt32(t_4);
  FsaveChijuCommand.Parameters[7].Value.SetInt32(t_5);
  FsaveChijuCommand.Parameters[8].Value.SetInt32(t_6);
  FsaveChijuCommand.Parameters[9].Value.SetInt32(T_noR);
  FsaveChijuCommand.Parameters[10].Value.SetInt32(T_1R);
  FsaveChijuCommand.Parameters[11].Value.SetInt32(T_2R);
  FsaveChijuCommand.Parameters[12].Value.SetInt32(T_3R);
  FsaveChijuCommand.Parameters[13].Value.SetInt32(T_4R);
  FsaveChijuCommand.Parameters[14].Value.SetInt32(T_5R);
  FsaveChijuCommand.Parameters[15].Value.SetInt32(T_6R);
  FsaveChijuCommand.Parameters[16].Value.SetInt32(bleeding);
  FsaveChijuCommand.Parameters[17].Value.SetInt32(pus);
  FsaveChijuCommand.Parameters[18].Value.SetInt32(mobility);
  FsaveChijuCommand.Parameters[19].Value.SetInt32(calculus);
  FsaveChijuCommand.Parameters[20].Value.SetInt32(furcation);
  FsaveChijuCommand.Parameters[21].Value.SetInt32(R_1);
  FsaveChijuCommand.Parameters[22].Value.SetInt32(R_2);
  FsaveChijuCommand.Parameters[23].Value.SetInt32(R_3);
  FsaveChijuCommand.Parameters[24].Value.SetInt32(R_4);
  FsaveChijuCommand.Parameters[25].Value.SetInt32(R_5);
  FsaveChijuCommand.Parameters[26].Value.SetInt32(R_6);
  FsaveChijuCommand.Parameters[27].Value.SetInt32(chartid);
  FsaveChijuCommand.Execute(ARequestFilter);
  ID := FsaveChijuCommand.Parameters[28].Value.GetWideString;
  Error := FsaveChijuCommand.Parameters[29].Value.GetWideString;
  Result := FsaveChijuCommand.Parameters[30].Value.GetBoolean;
end;

function TServerMethods1Client.GetChartData(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetChartDataCommand = nil then
  begin
    FGetChartDataCommand := FConnection.CreateCommand;
    FGetChartDataCommand.RequestType := 'GET';
    FGetChartDataCommand.Text := 'TServerMethods1.GetChartData';
    FGetChartDataCommand.Prepare(TServerMethods1_GetChartData);
  end;
  FGetChartDataCommand.Parameters[0].Value.SetWideString(varchart);
  FGetChartDataCommand.Execute(ARequestFilter);
  if not FGetChartDataCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetChartDataCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetChartDataCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetChartDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetChartData_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetChartDataCommand_Cache = nil then
  begin
    FGetChartDataCommand_Cache := FConnection.CreateCommand;
    FGetChartDataCommand_Cache.RequestType := 'GET';
    FGetChartDataCommand_Cache.Text := 'TServerMethods1.GetChartData';
    FGetChartDataCommand_Cache.Prepare(TServerMethods1_GetChartData_Cache);
  end;
  FGetChartDataCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetChartDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetChartDataCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetConnection_easydent(AUserName: string; APAssword: string; ADatabase: string; AHost: string; const ARequestFilter: string): Boolean;
begin
  if FGetConnection_easydentCommand = nil then
  begin
    FGetConnection_easydentCommand := FConnection.CreateCommand;
    FGetConnection_easydentCommand.RequestType := 'GET';
    FGetConnection_easydentCommand.Text := 'TServerMethods1.GetConnection_easydent';
    FGetConnection_easydentCommand.Prepare(TServerMethods1_GetConnection_easydent);
  end;
  FGetConnection_easydentCommand.Parameters[0].Value.SetWideString(AUserName);
  FGetConnection_easydentCommand.Parameters[1].Value.SetWideString(APAssword);
  FGetConnection_easydentCommand.Parameters[2].Value.SetWideString(ADatabase);
  FGetConnection_easydentCommand.Parameters[3].Value.SetWideString(AHost);
  FGetConnection_easydentCommand.Execute(ARequestFilter);
  Result := FGetConnection_easydentCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.GetImgListInfo_dentro(varChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgListInfo_dentroCommand = nil then
  begin
    FGetImgListInfo_dentroCommand := FConnection.CreateCommand;
    FGetImgListInfo_dentroCommand.RequestType := 'GET';
    FGetImgListInfo_dentroCommand.Text := 'TServerMethods1.GetImgListInfo_dentro';
    FGetImgListInfo_dentroCommand.Prepare(TServerMethods1_GetImgListInfo_dentro);
  end;
  FGetImgListInfo_dentroCommand.Parameters[0].Value.SetWideString(varChart);
  FGetImgListInfo_dentroCommand.Execute(ARequestFilter);
  if not FGetImgListInfo_dentroCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgListInfo_dentroCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgListInfo_dentroCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgListInfo_dentroCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgListInfo_dentro_Cache(varChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgListInfo_dentroCommand_Cache = nil then
  begin
    FGetImgListInfo_dentroCommand_Cache := FConnection.CreateCommand;
    FGetImgListInfo_dentroCommand_Cache.RequestType := 'GET';
    FGetImgListInfo_dentroCommand_Cache.Text := 'TServerMethods1.GetImgListInfo_dentro';
    FGetImgListInfo_dentroCommand_Cache.Prepare(TServerMethods1_GetImgListInfo_dentro_Cache);
  end;
  FGetImgListInfo_dentroCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetImgListInfo_dentroCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgListInfo_dentroCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetImgListDate_dentro(varChart: string; varDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgListDate_dentroCommand = nil then
  begin
    FGetImgListDate_dentroCommand := FConnection.CreateCommand;
    FGetImgListDate_dentroCommand.RequestType := 'GET';
    FGetImgListDate_dentroCommand.Text := 'TServerMethods1.GetImgListDate_dentro';
    FGetImgListDate_dentroCommand.Prepare(TServerMethods1_GetImgListDate_dentro);
  end;
  FGetImgListDate_dentroCommand.Parameters[0].Value.SetWideString(varChart);
  FGetImgListDate_dentroCommand.Parameters[1].Value.SetWideString(varDay);
  FGetImgListDate_dentroCommand.Execute(ARequestFilter);
  if not FGetImgListDate_dentroCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgListDate_dentroCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgListDate_dentroCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgListDate_dentroCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgListDate_dentro_Cache(varChart: string; varDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgListDate_dentroCommand_Cache = nil then
  begin
    FGetImgListDate_dentroCommand_Cache := FConnection.CreateCommand;
    FGetImgListDate_dentroCommand_Cache.RequestType := 'GET';
    FGetImgListDate_dentroCommand_Cache.Text := 'TServerMethods1.GetImgListDate_dentro';
    FGetImgListDate_dentroCommand_Cache.Prepare(TServerMethods1_GetImgListDate_dentro_Cache);
  end;
  FGetImgListDate_dentroCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetImgListDate_dentroCommand_Cache.Parameters[1].Value.SetWideString(varDay);
  FGetImgListDate_dentroCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgListDate_dentroCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.GetImageKind_dentro(varChart: string; varDay: string; nPosition: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImageKind_dentroCommand = nil then
  begin
    FGetImageKind_dentroCommand := FConnection.CreateCommand;
    FGetImageKind_dentroCommand.RequestType := 'GET';
    FGetImageKind_dentroCommand.Text := 'TServerMethods1.GetImageKind_dentro';
    FGetImageKind_dentroCommand.Prepare(TServerMethods1_GetImageKind_dentro);
  end;
  FGetImageKind_dentroCommand.Parameters[0].Value.SetWideString(varChart);
  FGetImageKind_dentroCommand.Parameters[1].Value.SetWideString(varDay);
  FGetImageKind_dentroCommand.Parameters[2].Value.SetWideString(nPosition);
  FGetImageKind_dentroCommand.Execute(ARequestFilter);
  if not FGetImageKind_dentroCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImageKind_dentroCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImageKind_dentroCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImageKind_dentroCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImageKind_dentro_Cache(varChart: string; varDay: string; nPosition: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImageKind_dentroCommand_Cache = nil then
  begin
    FGetImageKind_dentroCommand_Cache := FConnection.CreateCommand;
    FGetImageKind_dentroCommand_Cache.RequestType := 'GET';
    FGetImageKind_dentroCommand_Cache.Text := 'TServerMethods1.GetImageKind_dentro';
    FGetImageKind_dentroCommand_Cache.Prepare(TServerMethods1_GetImageKind_dentro_Cache);
  end;
  FGetImageKind_dentroCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetImageKind_dentroCommand_Cache.Parameters[1].Value.SetWideString(varDay);
  FGetImageKind_dentroCommand_Cache.Parameters[2].Value.SetWideString(nPosition);
  FGetImageKind_dentroCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImageKind_dentroCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.saveOralExam(varChart: string; varJinday: string; tbcount: Integer; method: Integer; interval: Integer; paste: Integer; brush: Integer; pick: Integer; gagle: Integer; floss: Integer; scale: Integer; smoke: Integer; drink: Integer; remark: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveOralExamCommand = nil then
  begin
    FsaveOralExamCommand := FConnection.CreateCommand;
    FsaveOralExamCommand.RequestType := 'GET';
    FsaveOralExamCommand.Text := 'TServerMethods1.saveOralExam';
    FsaveOralExamCommand.Prepare(TServerMethods1_saveOralExam);
  end;
  FsaveOralExamCommand.Parameters[0].Value.SetWideString(varChart);
  FsaveOralExamCommand.Parameters[1].Value.SetWideString(varJinday);
  FsaveOralExamCommand.Parameters[2].Value.SetInt32(tbcount);
  FsaveOralExamCommand.Parameters[3].Value.SetInt32(method);
  FsaveOralExamCommand.Parameters[4].Value.SetInt32(interval);
  FsaveOralExamCommand.Parameters[5].Value.SetInt32(paste);
  FsaveOralExamCommand.Parameters[6].Value.SetInt32(brush);
  FsaveOralExamCommand.Parameters[7].Value.SetInt32(pick);
  FsaveOralExamCommand.Parameters[8].Value.SetInt32(gagle);
  FsaveOralExamCommand.Parameters[9].Value.SetInt32(floss);
  FsaveOralExamCommand.Parameters[10].Value.SetInt32(scale);
  FsaveOralExamCommand.Parameters[11].Value.SetInt32(smoke);
  FsaveOralExamCommand.Parameters[12].Value.SetInt32(drink);
  FsaveOralExamCommand.Parameters[13].Value.SetWideString(remark);
  FsaveOralExamCommand.Execute(ARequestFilter);
  ID := FsaveOralExamCommand.Parameters[14].Value.GetWideString;
  Error := FsaveOralExamCommand.Parameters[15].Value.GetWideString;
  Result := FsaveOralExamCommand.Parameters[16].Value.GetBoolean;
end;

function TServerMethods1Client.GetOralExamData(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetOralExamDataCommand = nil then
  begin
    FGetOralExamDataCommand := FConnection.CreateCommand;
    FGetOralExamDataCommand.RequestType := 'GET';
    FGetOralExamDataCommand.Text := 'TServerMethods1.GetOralExamData';
    FGetOralExamDataCommand.Prepare(TServerMethods1_GetOralExamData);
  end;
  FGetOralExamDataCommand.Parameters[0].Value.SetWideString(varchart);
  FGetOralExamDataCommand.Execute(ARequestFilter);
  if not FGetOralExamDataCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetOralExamDataCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetOralExamDataCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetOralExamDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetOralExamData_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetOralExamDataCommand_Cache = nil then
  begin
    FGetOralExamDataCommand_Cache := FConnection.CreateCommand;
    FGetOralExamDataCommand_Cache.RequestType := 'GET';
    FGetOralExamDataCommand_Cache.Text := 'TServerMethods1.GetOralExamData';
    FGetOralExamDataCommand_Cache.Prepare(TServerMethods1_GetOralExamData_Cache);
  end;
  FGetOralExamDataCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetOralExamDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetOralExamDataCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetPerioSelfData(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPerioSelfDataCommand = nil then
  begin
    FGetPerioSelfDataCommand := FConnection.CreateCommand;
    FGetPerioSelfDataCommand.RequestType := 'GET';
    FGetPerioSelfDataCommand.Text := 'TServerMethods1.GetPerioSelfData';
    FGetPerioSelfDataCommand.Prepare(TServerMethods1_GetPerioSelfData);
  end;
  FGetPerioSelfDataCommand.Parameters[0].Value.SetWideString(varchart);
  FGetPerioSelfDataCommand.Execute(ARequestFilter);
  if not FGetPerioSelfDataCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPerioSelfDataCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPerioSelfDataCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPerioSelfDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPerioSelfData_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPerioSelfDataCommand_Cache = nil then
  begin
    FGetPerioSelfDataCommand_Cache := FConnection.CreateCommand;
    FGetPerioSelfDataCommand_Cache.RequestType := 'GET';
    FGetPerioSelfDataCommand_Cache.Text := 'TServerMethods1.GetPerioSelfData';
    FGetPerioSelfDataCommand_Cache.Prepare(TServerMethods1_GetPerioSelfData_Cache);
  end;
  FGetPerioSelfDataCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetPerioSelfDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPerioSelfDataCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.savePerioSelf(varChart: string; varJinday: string; munDap: Double; point: Integer; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsavePerioSelfCommand = nil then
  begin
    FsavePerioSelfCommand := FConnection.CreateCommand;
    FsavePerioSelfCommand.RequestType := 'GET';
    FsavePerioSelfCommand.Text := 'TServerMethods1.savePerioSelf';
    FsavePerioSelfCommand.Prepare(TServerMethods1_savePerioSelf);
  end;
  FsavePerioSelfCommand.Parameters[0].Value.SetWideString(varChart);
  FsavePerioSelfCommand.Parameters[1].Value.SetWideString(varJinday);
  FsavePerioSelfCommand.Parameters[2].Value.SetDouble(munDap);
  FsavePerioSelfCommand.Parameters[3].Value.SetInt32(point);
  FsavePerioSelfCommand.Execute(ARequestFilter);
  ID := FsavePerioSelfCommand.Parameters[4].Value.GetWideString;
  Error := FsavePerioSelfCommand.Parameters[5].Value.GetWideString;
  Result := FsavePerioSelfCommand.Parameters[6].Value.GetBoolean;
end;

function TServerMethods1Client.GetTeethInfo_chart_all(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetTeethInfo_chart_allCommand = nil then
  begin
    FGetTeethInfo_chart_allCommand := FConnection.CreateCommand;
    FGetTeethInfo_chart_allCommand.RequestType := 'GET';
    FGetTeethInfo_chart_allCommand.Text := 'TServerMethods1.GetTeethInfo_chart_all';
    FGetTeethInfo_chart_allCommand.Prepare(TServerMethods1_GetTeethInfo_chart_all);
  end;
  FGetTeethInfo_chart_allCommand.Parameters[0].Value.SetWideString(varchart);
  FGetTeethInfo_chart_allCommand.Execute(ARequestFilter);
  if not FGetTeethInfo_chart_allCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetTeethInfo_chart_allCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetTeethInfo_chart_allCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetTeethInfo_chart_allCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetTeethInfo_chart_all_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetTeethInfo_chart_allCommand_Cache = nil then
  begin
    FGetTeethInfo_chart_allCommand_Cache := FConnection.CreateCommand;
    FGetTeethInfo_chart_allCommand_Cache.RequestType := 'GET';
    FGetTeethInfo_chart_allCommand_Cache.Text := 'TServerMethods1.GetTeethInfo_chart_all';
    FGetTeethInfo_chart_allCommand_Cache.Prepare(TServerMethods1_GetTeethInfo_chart_all_Cache);
  end;
  FGetTeethInfo_chart_allCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetTeethInfo_chart_allCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetTeethInfo_chart_allCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetTeethInfoData(varchart: string; varJinday: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetTeethInfoDataCommand = nil then
  begin
    FGetTeethInfoDataCommand := FConnection.CreateCommand;
    FGetTeethInfoDataCommand.RequestType := 'GET';
    FGetTeethInfoDataCommand.Text := 'TServerMethods1.GetTeethInfoData';
    FGetTeethInfoDataCommand.Prepare(TServerMethods1_GetTeethInfoData);
  end;
  FGetTeethInfoDataCommand.Parameters[0].Value.SetWideString(varchart);
  FGetTeethInfoDataCommand.Parameters[1].Value.SetWideString(varJinday);
  FGetTeethInfoDataCommand.Execute(ARequestFilter);
  if not FGetTeethInfoDataCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetTeethInfoDataCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetTeethInfoDataCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetTeethInfoDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetTeethInfoData_Cache(varchart: string; varJinday: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetTeethInfoDataCommand_Cache = nil then
  begin
    FGetTeethInfoDataCommand_Cache := FConnection.CreateCommand;
    FGetTeethInfoDataCommand_Cache.RequestType := 'GET';
    FGetTeethInfoDataCommand_Cache.Text := 'TServerMethods1.GetTeethInfoData';
    FGetTeethInfoDataCommand_Cache.Prepare(TServerMethods1_GetTeethInfoData_Cache);
  end;
  FGetTeethInfoDataCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetTeethInfoDataCommand_Cache.Parameters[1].Value.SetWideString(varJinday);
  FGetTeethInfoDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetTeethInfoDataCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.SaveTeethInfo(varChart: string; varJinday: string; varTeethNo: string; missing: Integer; discoloration: Integer; rootTx: Integer; impalnt: Integer; bridge: Integer; rootillness: Integer; abrasion: Integer; needTreat: Integer; observe: Integer; extract: Integer; sensitivity: Integer; restoration: Integer; crown: Integer; caries: Integer; rootcaries: Integer; denture: Integer; rootrest: Integer; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FSaveTeethInfoCommand = nil then
  begin
    FSaveTeethInfoCommand := FConnection.CreateCommand;
    FSaveTeethInfoCommand.RequestType := 'GET';
    FSaveTeethInfoCommand.Text := 'TServerMethods1.SaveTeethInfo';
    FSaveTeethInfoCommand.Prepare(TServerMethods1_SaveTeethInfo);
  end;
  FSaveTeethInfoCommand.Parameters[0].Value.SetWideString(varChart);
  FSaveTeethInfoCommand.Parameters[1].Value.SetWideString(varJinday);
  FSaveTeethInfoCommand.Parameters[2].Value.SetWideString(varTeethNo);
  FSaveTeethInfoCommand.Parameters[3].Value.SetInt32(missing);
  FSaveTeethInfoCommand.Parameters[4].Value.SetInt32(discoloration);
  FSaveTeethInfoCommand.Parameters[5].Value.SetInt32(rootTx);
  FSaveTeethInfoCommand.Parameters[6].Value.SetInt32(impalnt);
  FSaveTeethInfoCommand.Parameters[7].Value.SetInt32(bridge);
  FSaveTeethInfoCommand.Parameters[8].Value.SetInt32(rootillness);
  FSaveTeethInfoCommand.Parameters[9].Value.SetInt32(abrasion);
  FSaveTeethInfoCommand.Parameters[10].Value.SetInt32(needTreat);
  FSaveTeethInfoCommand.Parameters[11].Value.SetInt32(observe);
  FSaveTeethInfoCommand.Parameters[12].Value.SetInt32(extract);
  FSaveTeethInfoCommand.Parameters[13].Value.SetInt32(sensitivity);
  FSaveTeethInfoCommand.Parameters[14].Value.SetInt32(restoration);
  FSaveTeethInfoCommand.Parameters[15].Value.SetInt32(crown);
  FSaveTeethInfoCommand.Parameters[16].Value.SetInt32(caries);
  FSaveTeethInfoCommand.Parameters[17].Value.SetInt32(rootcaries);
  FSaveTeethInfoCommand.Parameters[18].Value.SetInt32(denture);
  FSaveTeethInfoCommand.Parameters[19].Value.SetInt32(rootrest);
  FSaveTeethInfoCommand.Execute(ARequestFilter);
  ID := FSaveTeethInfoCommand.Parameters[20].Value.GetWideString;
  Error := FSaveTeethInfoCommand.Parameters[21].Value.GetWideString;
  Result := FSaveTeethInfoCommand.Parameters[22].Value.GetBoolean;
end;

function TServerMethods1Client.MemoSave(varChart: string; varKind: string; varCode: string; varRemark: string; varDay: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FMemoSaveCommand = nil then
  begin
    FMemoSaveCommand := FConnection.CreateCommand;
    FMemoSaveCommand.RequestType := 'GET';
    FMemoSaveCommand.Text := 'TServerMethods1.MemoSave';
    FMemoSaveCommand.Prepare(TServerMethods1_MemoSave);
  end;
  FMemoSaveCommand.Parameters[0].Value.SetWideString(varChart);
  FMemoSaveCommand.Parameters[1].Value.SetWideString(varKind);
  FMemoSaveCommand.Parameters[2].Value.SetWideString(varCode);
  FMemoSaveCommand.Parameters[3].Value.SetWideString(varRemark);
  FMemoSaveCommand.Parameters[4].Value.SetWideString(varDay);
  FMemoSaveCommand.Execute(ARequestFilter);
  ID := FMemoSaveCommand.Parameters[5].Value.GetWideString;
  Error := FMemoSaveCommand.Parameters[6].Value.GetWideString;
  Result := FMemoSaveCommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.GetMemo(varChart: string; varKind: string; varCode: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetMemoCommand = nil then
  begin
    FGetMemoCommand := FConnection.CreateCommand;
    FGetMemoCommand.RequestType := 'GET';
    FGetMemoCommand.Text := 'TServerMethods1.GetMemo';
    FGetMemoCommand.Prepare(TServerMethods1_GetMemo);
  end;
  FGetMemoCommand.Parameters[0].Value.SetWideString(varChart);
  FGetMemoCommand.Parameters[1].Value.SetWideString(varKind);
  FGetMemoCommand.Parameters[2].Value.SetWideString(varCode);
  FGetMemoCommand.Execute(ARequestFilter);
  if not FGetMemoCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetMemoCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetMemoCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetMemoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetMemo_Cache(varChart: string; varKind: string; varCode: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetMemoCommand_Cache = nil then
  begin
    FGetMemoCommand_Cache := FConnection.CreateCommand;
    FGetMemoCommand_Cache.RequestType := 'GET';
    FGetMemoCommand_Cache.Text := 'TServerMethods1.GetMemo';
    FGetMemoCommand_Cache.Prepare(TServerMethods1_GetMemo_Cache);
  end;
  FGetMemoCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetMemoCommand_Cache.Parameters[1].Value.SetWideString(varKind);
  FGetMemoCommand_Cache.Parameters[2].Value.SetWideString(varCode);
  FGetMemoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetMemoCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.cntMissing(varChart: string; const ARequestFilter: string): Integer;
begin
  if FcntMissingCommand = nil then
  begin
    FcntMissingCommand := FConnection.CreateCommand;
    FcntMissingCommand.RequestType := 'GET';
    FcntMissingCommand.Text := 'TServerMethods1.cntMissing';
    FcntMissingCommand.Prepare(TServerMethods1_cntMissing);
  end;
  FcntMissingCommand.Parameters[0].Value.SetWideString(varChart);
  FcntMissingCommand.Execute(ARequestFilter);
  Result := FcntMissingCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.GetImageInfo(AChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImageInfoCommand = nil then
  begin
    FGetImageInfoCommand := FConnection.CreateCommand;
    FGetImageInfoCommand.RequestType := 'GET';
    FGetImageInfoCommand.Text := 'TServerMethods1.GetImageInfo';
    FGetImageInfoCommand.Prepare(TServerMethods1_GetImageInfo);
  end;
  FGetImageInfoCommand.Parameters[0].Value.SetWideString(AChart);
  FGetImageInfoCommand.Execute(ARequestFilter);
  if not FGetImageInfoCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImageInfoCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImageInfoCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImageInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImageInfo_Cache(AChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImageInfoCommand_Cache = nil then
  begin
    FGetImageInfoCommand_Cache := FConnection.CreateCommand;
    FGetImageInfoCommand_Cache.RequestType := 'GET';
    FGetImageInfoCommand_Cache.Text := 'TServerMethods1.GetImageInfo';
    FGetImageInfoCommand_Cache.Prepare(TServerMethods1_GetImageInfo_Cache);
  end;
  FGetImageInfoCommand_Cache.Parameters[0].Value.SetWideString(AChart);
  FGetImageInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImageInfoCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetImgPatientInfoChart(AChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgPatientInfoChartCommand = nil then
  begin
    FGetImgPatientInfoChartCommand := FConnection.CreateCommand;
    FGetImgPatientInfoChartCommand.RequestType := 'GET';
    FGetImgPatientInfoChartCommand.Text := 'TServerMethods1.GetImgPatientInfoChart';
    FGetImgPatientInfoChartCommand.Prepare(TServerMethods1_GetImgPatientInfoChart);
  end;
  FGetImgPatientInfoChartCommand.Parameters[0].Value.SetWideString(AChart);
  FGetImgPatientInfoChartCommand.Execute(ARequestFilter);
  if not FGetImgPatientInfoChartCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgPatientInfoChartCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgPatientInfoChartCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgPatientInfoChartCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgPatientInfoChart_Cache(AChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgPatientInfoChartCommand_Cache = nil then
  begin
    FGetImgPatientInfoChartCommand_Cache := FConnection.CreateCommand;
    FGetImgPatientInfoChartCommand_Cache.RequestType := 'GET';
    FGetImgPatientInfoChartCommand_Cache.Text := 'TServerMethods1.GetImgPatientInfoChart';
    FGetImgPatientInfoChartCommand_Cache.Prepare(TServerMethods1_GetImgPatientInfoChart_Cache);
  end;
  FGetImgPatientInfoChartCommand_Cache.Parameters[0].Value.SetWideString(AChart);
  FGetImgPatientInfoChartCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgPatientInfoChartCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetImgPatientInfoJubsu(fDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgPatientInfoJubsuCommand = nil then
  begin
    FGetImgPatientInfoJubsuCommand := FConnection.CreateCommand;
    FGetImgPatientInfoJubsuCommand.RequestType := 'GET';
    FGetImgPatientInfoJubsuCommand.Text := 'TServerMethods1.GetImgPatientInfoJubsu';
    FGetImgPatientInfoJubsuCommand.Prepare(TServerMethods1_GetImgPatientInfoJubsu);
  end;
  FGetImgPatientInfoJubsuCommand.Parameters[0].Value.SetWideString(fDay);
  FGetImgPatientInfoJubsuCommand.Execute(ARequestFilter);
  if not FGetImgPatientInfoJubsuCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgPatientInfoJubsuCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgPatientInfoJubsuCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgPatientInfoJubsuCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgPatientInfoJubsu_Cache(fDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgPatientInfoJubsuCommand_Cache = nil then
  begin
    FGetImgPatientInfoJubsuCommand_Cache := FConnection.CreateCommand;
    FGetImgPatientInfoJubsuCommand_Cache.RequestType := 'GET';
    FGetImgPatientInfoJubsuCommand_Cache.Text := 'TServerMethods1.GetImgPatientInfoJubsu';
    FGetImgPatientInfoJubsuCommand_Cache.Prepare(TServerMethods1_GetImgPatientInfoJubsu_Cache);
  end;
  FGetImgPatientInfoJubsuCommand_Cache.Parameters[0].Value.SetWideString(fDay);
  FGetImgPatientInfoJubsuCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgPatientInfoJubsuCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetImgPatientInfoName(AName: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgPatientInfoNameCommand = nil then
  begin
    FGetImgPatientInfoNameCommand := FConnection.CreateCommand;
    FGetImgPatientInfoNameCommand.RequestType := 'GET';
    FGetImgPatientInfoNameCommand.Text := 'TServerMethods1.GetImgPatientInfoName';
    FGetImgPatientInfoNameCommand.Prepare(TServerMethods1_GetImgPatientInfoName);
  end;
  FGetImgPatientInfoNameCommand.Parameters[0].Value.SetWideString(AName);
  FGetImgPatientInfoNameCommand.Execute(ARequestFilter);
  if not FGetImgPatientInfoNameCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgPatientInfoNameCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgPatientInfoNameCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgPatientInfoNameCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgPatientInfoName_Cache(AName: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgPatientInfoNameCommand_Cache = nil then
  begin
    FGetImgPatientInfoNameCommand_Cache := FConnection.CreateCommand;
    FGetImgPatientInfoNameCommand_Cache.RequestType := 'GET';
    FGetImgPatientInfoNameCommand_Cache.Text := 'TServerMethods1.GetImgPatientInfoName';
    FGetImgPatientInfoNameCommand_Cache.Prepare(TServerMethods1_GetImgPatientInfoName_Cache);
  end;
  FGetImgPatientInfoNameCommand_Cache.Parameters[0].Value.SetWideString(AName);
  FGetImgPatientInfoNameCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgPatientInfoNameCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetImgPatInfo_term(fDay: string; Lday: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImgPatInfo_termCommand = nil then
  begin
    FGetImgPatInfo_termCommand := FConnection.CreateCommand;
    FGetImgPatInfo_termCommand.RequestType := 'GET';
    FGetImgPatInfo_termCommand.Text := 'TServerMethods1.GetImgPatInfo_term';
    FGetImgPatInfo_termCommand.Prepare(TServerMethods1_GetImgPatInfo_term);
  end;
  FGetImgPatInfo_termCommand.Parameters[0].Value.SetWideString(fDay);
  FGetImgPatInfo_termCommand.Parameters[1].Value.SetWideString(Lday);
  FGetImgPatInfo_termCommand.Execute(ARequestFilter);
  if not FGetImgPatInfo_termCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImgPatInfo_termCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImgPatInfo_termCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImgPatInfo_termCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImgPatInfo_term_Cache(fDay: string; Lday: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImgPatInfo_termCommand_Cache = nil then
  begin
    FGetImgPatInfo_termCommand_Cache := FConnection.CreateCommand;
    FGetImgPatInfo_termCommand_Cache.RequestType := 'GET';
    FGetImgPatInfo_termCommand_Cache.Text := 'TServerMethods1.GetImgPatInfo_term';
    FGetImgPatInfo_termCommand_Cache.Prepare(TServerMethods1_GetImgPatInfo_term_Cache);
  end;
  FGetImgPatInfo_termCommand_Cache.Parameters[0].Value.SetWideString(fDay);
  FGetImgPatInfo_termCommand_Cache.Parameters[1].Value.SetWideString(Lday);
  FGetImgPatInfo_termCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImgPatInfo_termCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.PicSave_FtpPath(varChart: string; varFile: string; varFileType: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FPicSave_FtpPathCommand = nil then
  begin
    FPicSave_FtpPathCommand := FConnection.CreateCommand;
    FPicSave_FtpPathCommand.RequestType := 'GET';
    FPicSave_FtpPathCommand.Text := 'TServerMethods1.PicSave_FtpPath';
    FPicSave_FtpPathCommand.Prepare(TServerMethods1_PicSave_FtpPath);
  end;
  FPicSave_FtpPathCommand.Parameters[0].Value.SetWideString(varChart);
  FPicSave_FtpPathCommand.Parameters[1].Value.SetWideString(varFile);
  FPicSave_FtpPathCommand.Parameters[2].Value.SetWideString(varFileType);
  FPicSave_FtpPathCommand.Execute(ARequestFilter);
  ID := FPicSave_FtpPathCommand.Parameters[3].Value.GetWideString;
  Error := FPicSave_FtpPathCommand.Parameters[4].Value.GetWideString;
  Result := FPicSave_FtpPathCommand.Parameters[5].Value.GetBoolean;
end;

function TServerMethods1Client.GetPictureInfo(AChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPictureInfoCommand = nil then
  begin
    FGetPictureInfoCommand := FConnection.CreateCommand;
    FGetPictureInfoCommand.RequestType := 'GET';
    FGetPictureInfoCommand.Text := 'TServerMethods1.GetPictureInfo';
    FGetPictureInfoCommand.Prepare(TServerMethods1_GetPictureInfo);
  end;
  FGetPictureInfoCommand.Parameters[0].Value.SetWideString(AChart);
  FGetPictureInfoCommand.Execute(ARequestFilter);
  if not FGetPictureInfoCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPictureInfoCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPictureInfoCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPictureInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPictureInfo_Cache(AChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPictureInfoCommand_Cache = nil then
  begin
    FGetPictureInfoCommand_Cache := FConnection.CreateCommand;
    FGetPictureInfoCommand_Cache.RequestType := 'GET';
    FGetPictureInfoCommand_Cache.Text := 'TServerMethods1.GetPictureInfo';
    FGetPictureInfoCommand_Cache.Prepare(TServerMethods1_GetPictureInfo_Cache);
  end;
  FGetPictureInfoCommand_Cache.Parameters[0].Value.SetWideString(AChart);
  FGetPictureInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPictureInfoCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.SaveImageInfo_promise(varHospID: string; varChart: string; varCount: string; varFolderName: string; varUserID: string; varFileName: string; varKind: string; varRemark: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FSaveImageInfo_promiseCommand = nil then
  begin
    FSaveImageInfo_promiseCommand := FConnection.CreateCommand;
    FSaveImageInfo_promiseCommand.RequestType := 'GET';
    FSaveImageInfo_promiseCommand.Text := 'TServerMethods1.SaveImageInfo_promise';
    FSaveImageInfo_promiseCommand.Prepare(TServerMethods1_SaveImageInfo_promise);
  end;
  FSaveImageInfo_promiseCommand.Parameters[0].Value.SetWideString(varHospID);
  FSaveImageInfo_promiseCommand.Parameters[1].Value.SetWideString(varChart);
  FSaveImageInfo_promiseCommand.Parameters[2].Value.SetWideString(varCount);
  FSaveImageInfo_promiseCommand.Parameters[3].Value.SetWideString(varFolderName);
  FSaveImageInfo_promiseCommand.Parameters[4].Value.SetWideString(varUserID);
  FSaveImageInfo_promiseCommand.Parameters[5].Value.SetWideString(varFileName);
  FSaveImageInfo_promiseCommand.Parameters[6].Value.SetWideString(varKind);
  FSaveImageInfo_promiseCommand.Parameters[7].Value.SetWideString(varRemark);
  FSaveImageInfo_promiseCommand.Execute(ARequestFilter);
  ID := FSaveImageInfo_promiseCommand.Parameters[8].Value.GetWideString;
  Error := FSaveImageInfo_promiseCommand.Parameters[9].Value.GetWideString;
  Result := FSaveImageInfo_promiseCommand.Parameters[10].Value.GetBoolean;
end;

function TServerMethods1Client.GetImageInfo_promise(varHospID: string; varChart: string; varKind: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetImageInfo_promiseCommand = nil then
  begin
    FGetImageInfo_promiseCommand := FConnection.CreateCommand;
    FGetImageInfo_promiseCommand.RequestType := 'GET';
    FGetImageInfo_promiseCommand.Text := 'TServerMethods1.GetImageInfo_promise';
    FGetImageInfo_promiseCommand.Prepare(TServerMethods1_GetImageInfo_promise);
  end;
  FGetImageInfo_promiseCommand.Parameters[0].Value.SetWideString(varHospID);
  FGetImageInfo_promiseCommand.Parameters[1].Value.SetWideString(varChart);
  FGetImageInfo_promiseCommand.Parameters[2].Value.SetWideString(varKind);
  FGetImageInfo_promiseCommand.Execute(ARequestFilter);
  if not FGetImageInfo_promiseCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetImageInfo_promiseCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetImageInfo_promiseCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetImageInfo_promiseCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetImageInfo_promise_Cache(varHospID: string; varChart: string; varKind: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetImageInfo_promiseCommand_Cache = nil then
  begin
    FGetImageInfo_promiseCommand_Cache := FConnection.CreateCommand;
    FGetImageInfo_promiseCommand_Cache.RequestType := 'GET';
    FGetImageInfo_promiseCommand_Cache.Text := 'TServerMethods1.GetImageInfo_promise';
    FGetImageInfo_promiseCommand_Cache.Prepare(TServerMethods1_GetImageInfo_promise_Cache);
  end;
  FGetImageInfo_promiseCommand_Cache.Parameters[0].Value.SetWideString(varHospID);
  FGetImageInfo_promiseCommand_Cache.Parameters[1].Value.SetWideString(varChart);
  FGetImageInfo_promiseCommand_Cache.Parameters[2].Value.SetWideString(varKind);
  FGetImageInfo_promiseCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetImageInfo_promiseCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetTreeData(aID: string; aFlag: Integer; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetTreeDataCommand = nil then
  begin
    FGetTreeDataCommand := FConnection.CreateCommand;
    FGetTreeDataCommand.RequestType := 'GET';
    FGetTreeDataCommand.Text := 'TServerMethods1.GetTreeData';
    FGetTreeDataCommand.Prepare(TServerMethods1_GetTreeData);
  end;
  FGetTreeDataCommand.Parameters[0].Value.SetWideString(aID);
  FGetTreeDataCommand.Parameters[1].Value.SetInt32(aFlag);
  FGetTreeDataCommand.Execute(ARequestFilter);
  if not FGetTreeDataCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetTreeDataCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetTreeDataCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetTreeDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetTreeData_Cache(aID: string; aFlag: Integer; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetTreeDataCommand_Cache = nil then
  begin
    FGetTreeDataCommand_Cache := FConnection.CreateCommand;
    FGetTreeDataCommand_Cache.RequestType := 'GET';
    FGetTreeDataCommand_Cache.Text := 'TServerMethods1.GetTreeData';
    FGetTreeDataCommand_Cache.Prepare(TServerMethods1_GetTreeData_Cache);
  end;
  FGetTreeDataCommand_Cache.Parameters[0].Value.SetWideString(aID);
  FGetTreeDataCommand_Cache.Parameters[1].Value.SetInt32(aFlag);
  FGetTreeDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetTreeDataCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.tpChargeSave(varChart: string; varKind: Integer; varDay: string; akind: string; plansort: string; jinryosort: string; bohum: string; kamak: string; total: string; subtotal: string; chart_id: string; Council: string; team: string; doctor: string; Remark: string; KamKind: string; hyun: string; card: string; etc: string; monthly: string; monthgeumek: string; bochul: string; gyojung: string; imp: string; mf: string; makeDate: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FtpChargeSaveCommand = nil then
  begin
    FtpChargeSaveCommand := FConnection.CreateCommand;
    FtpChargeSaveCommand.RequestType := 'GET';
    FtpChargeSaveCommand.Text := 'TServerMethods1.tpChargeSave';
    FtpChargeSaveCommand.Prepare(TServerMethods1_tpChargeSave);
  end;
  FtpChargeSaveCommand.Parameters[0].Value.SetWideString(varChart);
  FtpChargeSaveCommand.Parameters[1].Value.SetInt32(varKind);
  FtpChargeSaveCommand.Parameters[2].Value.SetWideString(varDay);
  FtpChargeSaveCommand.Parameters[3].Value.SetWideString(akind);
  FtpChargeSaveCommand.Parameters[4].Value.SetWideString(plansort);
  FtpChargeSaveCommand.Parameters[5].Value.SetWideString(jinryosort);
  FtpChargeSaveCommand.Parameters[6].Value.SetWideString(bohum);
  FtpChargeSaveCommand.Parameters[7].Value.SetWideString(kamak);
  FtpChargeSaveCommand.Parameters[8].Value.SetWideString(total);
  FtpChargeSaveCommand.Parameters[9].Value.SetWideString(subtotal);
  FtpChargeSaveCommand.Parameters[10].Value.SetWideString(chart_id);
  FtpChargeSaveCommand.Parameters[11].Value.SetWideString(Council);
  FtpChargeSaveCommand.Parameters[12].Value.SetWideString(team);
  FtpChargeSaveCommand.Parameters[13].Value.SetWideString(doctor);
  FtpChargeSaveCommand.Parameters[14].Value.SetWideString(Remark);
  FtpChargeSaveCommand.Parameters[15].Value.SetWideString(KamKind);
  FtpChargeSaveCommand.Parameters[16].Value.SetWideString(hyun);
  FtpChargeSaveCommand.Parameters[17].Value.SetWideString(card);
  FtpChargeSaveCommand.Parameters[18].Value.SetWideString(etc);
  FtpChargeSaveCommand.Parameters[19].Value.SetWideString(monthly);
  FtpChargeSaveCommand.Parameters[20].Value.SetWideString(monthgeumek);
  FtpChargeSaveCommand.Parameters[21].Value.SetWideString(bochul);
  FtpChargeSaveCommand.Parameters[22].Value.SetWideString(gyojung);
  FtpChargeSaveCommand.Parameters[23].Value.SetWideString(imp);
  FtpChargeSaveCommand.Parameters[24].Value.SetWideString(mf);
  FtpChargeSaveCommand.Parameters[25].Value.SetWideString(makeDate);
  FtpChargeSaveCommand.Execute(ARequestFilter);
  ID := FtpChargeSaveCommand.Parameters[26].Value.GetWideString;
  Error := FtpChargeSaveCommand.Parameters[27].Value.GetWideString;
  Result := FtpChargeSaveCommand.Parameters[28].Value.GetBoolean;
end;

function TServerMethods1Client.DtxSave(dtxID: string; varchart: string; seqcode: Integer; jin_day: string; kind: string; description: string; tbName: string; cremark: string; cprice: string; ccnt: string; ckumak: Double; portion: string; doctor: string; Council: string; team: string; dcp: Double; dcw: Double; aKind: string; Choice: string; Chk: string; fil: string; nOrd: Integer; dTxOrder: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FDtxSaveCommand = nil then
  begin
    FDtxSaveCommand := FConnection.CreateCommand;
    FDtxSaveCommand.RequestType := 'GET';
    FDtxSaveCommand.Text := 'TServerMethods1.DtxSave';
    FDtxSaveCommand.Prepare(TServerMethods1_DtxSave);
  end;
  FDtxSaveCommand.Parameters[0].Value.SetWideString(dtxID);
  FDtxSaveCommand.Parameters[1].Value.SetWideString(varchart);
  FDtxSaveCommand.Parameters[2].Value.SetInt32(seqcode);
  FDtxSaveCommand.Parameters[3].Value.SetWideString(jin_day);
  FDtxSaveCommand.Parameters[4].Value.SetWideString(kind);
  FDtxSaveCommand.Parameters[5].Value.SetWideString(description);
  FDtxSaveCommand.Parameters[6].Value.SetWideString(tbName);
  FDtxSaveCommand.Parameters[7].Value.SetWideString(cremark);
  FDtxSaveCommand.Parameters[8].Value.SetWideString(cprice);
  FDtxSaveCommand.Parameters[9].Value.SetWideString(ccnt);
  FDtxSaveCommand.Parameters[10].Value.SetDouble(ckumak);
  FDtxSaveCommand.Parameters[11].Value.SetWideString(portion);
  FDtxSaveCommand.Parameters[12].Value.SetWideString(doctor);
  FDtxSaveCommand.Parameters[13].Value.SetWideString(Council);
  FDtxSaveCommand.Parameters[14].Value.SetWideString(team);
  FDtxSaveCommand.Parameters[15].Value.SetDouble(dcp);
  FDtxSaveCommand.Parameters[16].Value.SetDouble(dcw);
  FDtxSaveCommand.Parameters[17].Value.SetWideString(aKind);
  FDtxSaveCommand.Parameters[18].Value.SetWideString(Choice);
  FDtxSaveCommand.Parameters[19].Value.SetWideString(Chk);
  FDtxSaveCommand.Parameters[20].Value.SetWideString(fil);
  FDtxSaveCommand.Parameters[21].Value.SetInt32(nOrd);
  FDtxSaveCommand.Parameters[22].Value.SetWideString(dTxOrder);
  FDtxSaveCommand.Execute(ARequestFilter);
  ID := FDtxSaveCommand.Parameters[23].Value.GetWideString;
  Error := FDtxSaveCommand.Parameters[24].Value.GetWideString;
  Result := FDtxSaveCommand.Parameters[25].Value.GetBoolean;
end;

function TServerMethods1Client.GetPlanData(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPlanDataCommand = nil then
  begin
    FGetPlanDataCommand := FConnection.CreateCommand;
    FGetPlanDataCommand.RequestType := 'GET';
    FGetPlanDataCommand.Text := 'TServerMethods1.GetPlanData';
    FGetPlanDataCommand.Prepare(TServerMethods1_GetPlanData);
  end;
  FGetPlanDataCommand.Parameters[0].Value.SetWideString(varchart);
  FGetPlanDataCommand.Execute(ARequestFilter);
  if not FGetPlanDataCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPlanDataCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPlanDataCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPlanDataCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPlanData_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPlanDataCommand_Cache = nil then
  begin
    FGetPlanDataCommand_Cache := FConnection.CreateCommand;
    FGetPlanDataCommand_Cache.RequestType := 'GET';
    FGetPlanDataCommand_Cache.Text := 'TServerMethods1.GetPlanData';
    FGetPlanDataCommand_Cache.Prepare(TServerMethods1_GetPlanData_Cache);
  end;
  FGetPlanDataCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetPlanDataCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPlanDataCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetPlanList(varchart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPlanListCommand = nil then
  begin
    FGetPlanListCommand := FConnection.CreateCommand;
    FGetPlanListCommand.RequestType := 'GET';
    FGetPlanListCommand.Text := 'TServerMethods1.GetPlanList';
    FGetPlanListCommand.Prepare(TServerMethods1_GetPlanList);
  end;
  FGetPlanListCommand.Parameters[0].Value.SetWideString(varchart);
  FGetPlanListCommand.Execute(ARequestFilter);
  if not FGetPlanListCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPlanListCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPlanListCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPlanListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPlanList_Cache(varchart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPlanListCommand_Cache = nil then
  begin
    FGetPlanListCommand_Cache := FConnection.CreateCommand;
    FGetPlanListCommand_Cache.RequestType := 'GET';
    FGetPlanListCommand_Cache.Text := 'TServerMethods1.GetPlanList';
    FGetPlanListCommand_Cache.Prepare(TServerMethods1_GetPlanList_Cache);
  end;
  FGetPlanListCommand_Cache.Parameters[0].Value.SetWideString(varchart);
  FGetPlanListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPlanListCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.GetReportInfo(AChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetReportInfoCommand = nil then
  begin
    FGetReportInfoCommand := FConnection.CreateCommand;
    FGetReportInfoCommand.RequestType := 'GET';
    FGetReportInfoCommand.Text := 'TServerMethods1.GetReportInfo';
    FGetReportInfoCommand.Prepare(TServerMethods1_GetReportInfo);
  end;
  FGetReportInfoCommand.Parameters[0].Value.SetWideString(AChart);
  FGetReportInfoCommand.Execute(ARequestFilter);
  if not FGetReportInfoCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetReportInfoCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetReportInfoCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetReportInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetReportInfo_Cache(AChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetReportInfoCommand_Cache = nil then
  begin
    FGetReportInfoCommand_Cache := FConnection.CreateCommand;
    FGetReportInfoCommand_Cache.RequestType := 'GET';
    FGetReportInfoCommand_Cache.Text := 'TServerMethods1.GetReportInfo';
    FGetReportInfoCommand_Cache.Prepare(TServerMethods1_GetReportInfo_Cache);
  end;
  FGetReportInfoCommand_Cache.Parameters[0].Value.SetWideString(AChart);
  FGetReportInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetReportInfoCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.ReportSave(varChart: string; JinDay: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FReportSaveCommand = nil then
  begin
    FReportSaveCommand := FConnection.CreateCommand;
    FReportSaveCommand.RequestType := 'GET';
    FReportSaveCommand.Text := 'TServerMethods1.ReportSave';
    FReportSaveCommand.Prepare(TServerMethods1_ReportSave);
  end;
  FReportSaveCommand.Parameters[0].Value.SetWideString(varChart);
  FReportSaveCommand.Parameters[1].Value.SetWideString(JinDay);
  FReportSaveCommand.Execute(ARequestFilter);
  ID := FReportSaveCommand.Parameters[2].Value.GetWideString;
  Error := FReportSaveCommand.Parameters[3].Value.GetWideString;
  Result := FReportSaveCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.GetPromiseInfo(varChart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPromiseInfoCommand = nil then
  begin
    FGetPromiseInfoCommand := FConnection.CreateCommand;
    FGetPromiseInfoCommand.RequestType := 'GET';
    FGetPromiseInfoCommand.Text := 'TServerMethods1.GetPromiseInfo';
    FGetPromiseInfoCommand.Prepare(TServerMethods1_GetPromiseInfo);
  end;
  FGetPromiseInfoCommand.Parameters[0].Value.SetWideString(varChart);
  FGetPromiseInfoCommand.Execute(ARequestFilter);
  if not FGetPromiseInfoCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPromiseInfoCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPromiseInfoCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPromiseInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPromiseInfo_Cache(varChart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPromiseInfoCommand_Cache = nil then
  begin
    FGetPromiseInfoCommand_Cache := FConnection.CreateCommand;
    FGetPromiseInfoCommand_Cache.RequestType := 'GET';
    FGetPromiseInfoCommand_Cache.Text := 'TServerMethods1.GetPromiseInfo';
    FGetPromiseInfoCommand_Cache.Prepare(TServerMethods1_GetPromiseInfo_Cache);
  end;
  FGetPromiseInfoCommand_Cache.Parameters[0].Value.SetWideString(varChart);
  FGetPromiseInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPromiseInfoCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.savePromiseData(akind: string; hpid: string; bKind: string; idn: string; pchart: string; pname: string; pday: string; ptime: string; premark: string; pos: string; pcancel: string; pjundam: string; pdam: string; pteam: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsavePromiseDataCommand = nil then
  begin
    FsavePromiseDataCommand := FConnection.CreateCommand;
    FsavePromiseDataCommand.RequestType := 'GET';
    FsavePromiseDataCommand.Text := 'TServerMethods1.savePromiseData';
    FsavePromiseDataCommand.Prepare(TServerMethods1_savePromiseData);
  end;
  FsavePromiseDataCommand.Parameters[0].Value.SetWideString(akind);
  FsavePromiseDataCommand.Parameters[1].Value.SetWideString(hpid);
  FsavePromiseDataCommand.Parameters[2].Value.SetWideString(bKind);
  FsavePromiseDataCommand.Parameters[3].Value.SetWideString(idn);
  FsavePromiseDataCommand.Parameters[4].Value.SetWideString(pchart);
  FsavePromiseDataCommand.Parameters[5].Value.SetWideString(pname);
  FsavePromiseDataCommand.Parameters[6].Value.SetWideString(pday);
  FsavePromiseDataCommand.Parameters[7].Value.SetWideString(ptime);
  FsavePromiseDataCommand.Parameters[8].Value.SetWideString(premark);
  FsavePromiseDataCommand.Parameters[9].Value.SetWideString(pos);
  FsavePromiseDataCommand.Parameters[10].Value.SetWideString(pcancel);
  FsavePromiseDataCommand.Parameters[11].Value.SetWideString(pjundam);
  FsavePromiseDataCommand.Parameters[12].Value.SetWideString(pdam);
  FsavePromiseDataCommand.Parameters[13].Value.SetWideString(pteam);
  FsavePromiseDataCommand.Execute(ARequestFilter);
  ID := FsavePromiseDataCommand.Parameters[14].Value.GetWideString;
  Error := FsavePromiseDataCommand.Parameters[15].Value.GetWideString;
  Result := FsavePromiseDataCommand.Parameters[16].Value.GetBoolean;
end;

function TServerMethods1Client.AllsavePromiseData(akind: string; hpid: string; bKind: string; idn: string; pchart: string; pname: string; pday: string; ptime: string; premark: string; pos: string; pcancel: string; pjundam: string; pdam: string; pteam: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FAllsavePromiseDataCommand = nil then
  begin
    FAllsavePromiseDataCommand := FConnection.CreateCommand;
    FAllsavePromiseDataCommand.RequestType := 'GET';
    FAllsavePromiseDataCommand.Text := 'TServerMethods1.AllsavePromiseData';
    FAllsavePromiseDataCommand.Prepare(TServerMethods1_AllsavePromiseData);
  end;
  FAllsavePromiseDataCommand.Parameters[0].Value.SetWideString(akind);
  FAllsavePromiseDataCommand.Parameters[1].Value.SetWideString(hpid);
  FAllsavePromiseDataCommand.Parameters[2].Value.SetWideString(bKind);
  FAllsavePromiseDataCommand.Parameters[3].Value.SetWideString(idn);
  FAllsavePromiseDataCommand.Parameters[4].Value.SetWideString(pchart);
  FAllsavePromiseDataCommand.Parameters[5].Value.SetWideString(pname);
  FAllsavePromiseDataCommand.Parameters[6].Value.SetWideString(pday);
  FAllsavePromiseDataCommand.Parameters[7].Value.SetWideString(ptime);
  FAllsavePromiseDataCommand.Parameters[8].Value.SetWideString(premark);
  FAllsavePromiseDataCommand.Parameters[9].Value.SetWideString(pos);
  FAllsavePromiseDataCommand.Parameters[10].Value.SetWideString(pcancel);
  FAllsavePromiseDataCommand.Parameters[11].Value.SetWideString(pjundam);
  FAllsavePromiseDataCommand.Parameters[12].Value.SetWideString(pdam);
  FAllsavePromiseDataCommand.Parameters[13].Value.SetWideString(pteam);
  FAllsavePromiseDataCommand.Execute(ARequestFilter);
  ID := FAllsavePromiseDataCommand.Parameters[14].Value.GetWideString;
  Error := FAllsavePromiseDataCommand.Parameters[15].Value.GetWideString;
  Result := FAllsavePromiseDataCommand.Parameters[16].Value.GetBoolean;
end;

function TServerMethods1Client.GetPromiseDataInfo(varHospID: string; varChart: string; varDay: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPromiseDataInfoCommand = nil then
  begin
    FGetPromiseDataInfoCommand := FConnection.CreateCommand;
    FGetPromiseDataInfoCommand.RequestType := 'GET';
    FGetPromiseDataInfoCommand.Text := 'TServerMethods1.GetPromiseDataInfo';
    FGetPromiseDataInfoCommand.Prepare(TServerMethods1_GetPromiseDataInfo);
  end;
  FGetPromiseDataInfoCommand.Parameters[0].Value.SetWideString(varHospID);
  FGetPromiseDataInfoCommand.Parameters[1].Value.SetWideString(varChart);
  FGetPromiseDataInfoCommand.Parameters[2].Value.SetWideString(varDay);
  FGetPromiseDataInfoCommand.Execute(ARequestFilter);
  if not FGetPromiseDataInfoCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPromiseDataInfoCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPromiseDataInfoCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPromiseDataInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPromiseDataInfo_Cache(varHospID: string; varChart: string; varDay: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPromiseDataInfoCommand_Cache = nil then
  begin
    FGetPromiseDataInfoCommand_Cache := FConnection.CreateCommand;
    FGetPromiseDataInfoCommand_Cache.RequestType := 'GET';
    FGetPromiseDataInfoCommand_Cache.Text := 'TServerMethods1.GetPromiseDataInfo';
    FGetPromiseDataInfoCommand_Cache.Prepare(TServerMethods1_GetPromiseDataInfo_Cache);
  end;
  FGetPromiseDataInfoCommand_Cache.Parameters[0].Value.SetWideString(varHospID);
  FGetPromiseDataInfoCommand_Cache.Parameters[1].Value.SetWideString(varChart);
  FGetPromiseDataInfoCommand_Cache.Parameters[2].Value.SetWideString(varDay);
  FGetPromiseDataInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPromiseDataInfoCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.SavePromise(varDay: string; varGubun: string; varTime: string; varRemark: string; varmemo: string; varTeam: string; varDoc: string; varChart: string; varName: string; vartel: string; varInterval: string; varAlret: string; varLock: string; varJundam: string; vardam: string; varColor: string; varJundam2: string; varNosms: string; varF_color: string; varF_size: string; varF_bold: Boolean; varTelyeyak: string; varIdn: Integer; varPos: string; modUser: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FSavePromiseCommand = nil then
  begin
    FSavePromiseCommand := FConnection.CreateCommand;
    FSavePromiseCommand.RequestType := 'GET';
    FSavePromiseCommand.Text := 'TServerMethods1.SavePromise';
    FSavePromiseCommand.Prepare(TServerMethods1_SavePromise);
  end;
  FSavePromiseCommand.Parameters[0].Value.SetWideString(varDay);
  FSavePromiseCommand.Parameters[1].Value.SetWideString(varGubun);
  FSavePromiseCommand.Parameters[2].Value.SetWideString(varTime);
  FSavePromiseCommand.Parameters[3].Value.SetWideString(varRemark);
  FSavePromiseCommand.Parameters[4].Value.SetWideString(varmemo);
  FSavePromiseCommand.Parameters[5].Value.SetWideString(varTeam);
  FSavePromiseCommand.Parameters[6].Value.SetWideString(varDoc);
  FSavePromiseCommand.Parameters[7].Value.SetWideString(varChart);
  FSavePromiseCommand.Parameters[8].Value.SetWideString(varName);
  FSavePromiseCommand.Parameters[9].Value.SetWideString(vartel);
  FSavePromiseCommand.Parameters[10].Value.SetWideString(varInterval);
  FSavePromiseCommand.Parameters[11].Value.SetWideString(varAlret);
  FSavePromiseCommand.Parameters[12].Value.SetWideString(varLock);
  FSavePromiseCommand.Parameters[13].Value.SetWideString(varJundam);
  FSavePromiseCommand.Parameters[14].Value.SetWideString(vardam);
  FSavePromiseCommand.Parameters[15].Value.SetWideString(varColor);
  FSavePromiseCommand.Parameters[16].Value.SetWideString(varJundam2);
  FSavePromiseCommand.Parameters[17].Value.SetWideString(varNosms);
  FSavePromiseCommand.Parameters[18].Value.SetWideString(varF_color);
  FSavePromiseCommand.Parameters[19].Value.SetWideString(varF_size);
  FSavePromiseCommand.Parameters[20].Value.SetBoolean(varF_bold);
  FSavePromiseCommand.Parameters[21].Value.SetWideString(varTelyeyak);
  FSavePromiseCommand.Parameters[22].Value.SetInt32(varIdn);
  FSavePromiseCommand.Parameters[23].Value.SetWideString(varPos);
  FSavePromiseCommand.Parameters[24].Value.SetWideString(modUser);
  FSavePromiseCommand.Execute(ARequestFilter);
  ID := FSavePromiseCommand.Parameters[25].Value.GetWideString;
  Error := FSavePromiseCommand.Parameters[26].Value.GetWideString;
  Result := FSavePromiseCommand.Parameters[27].Value.GetBoolean;
end;

function TServerMethods1Client.GetNotice(hospid: string; aUse: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetNoticeCommand = nil then
  begin
    FGetNoticeCommand := FConnection.CreateCommand;
    FGetNoticeCommand.RequestType := 'GET';
    FGetNoticeCommand.Text := 'TServerMethods1.GetNotice';
    FGetNoticeCommand.Prepare(TServerMethods1_GetNotice);
  end;
  FGetNoticeCommand.Parameters[0].Value.SetWideString(hospid);
  FGetNoticeCommand.Parameters[1].Value.SetWideString(aUse);
  FGetNoticeCommand.Execute(ARequestFilter);
  if not FGetNoticeCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetNoticeCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetNoticeCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetNoticeCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetNotice_Cache(hospid: string; aUse: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetNoticeCommand_Cache = nil then
  begin
    FGetNoticeCommand_Cache := FConnection.CreateCommand;
    FGetNoticeCommand_Cache.RequestType := 'GET';
    FGetNoticeCommand_Cache.Text := 'TServerMethods1.GetNotice';
    FGetNoticeCommand_Cache.Prepare(TServerMethods1_GetNotice_Cache);
  end;
  FGetNoticeCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetNoticeCommand_Cache.Parameters[1].Value.SetWideString(aUse);
  FGetNoticeCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetNoticeCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.saveNotice(noticeID: string; hospid: string; subject: string; title: string; remark: string; aUser: string; aUse: string; regday: string; modday: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveNoticeCommand = nil then
  begin
    FsaveNoticeCommand := FConnection.CreateCommand;
    FsaveNoticeCommand.RequestType := 'GET';
    FsaveNoticeCommand.Text := 'TServerMethods1.saveNotice';
    FsaveNoticeCommand.Prepare(TServerMethods1_saveNotice);
  end;
  FsaveNoticeCommand.Parameters[0].Value.SetWideString(noticeID);
  FsaveNoticeCommand.Parameters[1].Value.SetWideString(hospid);
  FsaveNoticeCommand.Parameters[2].Value.SetWideString(subject);
  FsaveNoticeCommand.Parameters[3].Value.SetWideString(title);
  FsaveNoticeCommand.Parameters[4].Value.SetWideString(remark);
  FsaveNoticeCommand.Parameters[5].Value.SetWideString(aUser);
  FsaveNoticeCommand.Parameters[6].Value.SetWideString(aUse);
  FsaveNoticeCommand.Parameters[7].Value.SetWideString(regday);
  FsaveNoticeCommand.Parameters[8].Value.SetWideString(modday);
  FsaveNoticeCommand.Execute(ARequestFilter);
  ID := FsaveNoticeCommand.Parameters[9].Value.GetWideString;
  Error := FsaveNoticeCommand.Parameters[10].Value.GetWideString;
  Result := FsaveNoticeCommand.Parameters[11].Value.GetBoolean;
end;

function TServerMethods1Client.GetJubsu(hospid: string; jin_day: string; jubsu: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetJubsuCommand = nil then
  begin
    FGetJubsuCommand := FConnection.CreateCommand;
    FGetJubsuCommand.RequestType := 'GET';
    FGetJubsuCommand.Text := 'TServerMethods1.GetJubsu';
    FGetJubsuCommand.Prepare(TServerMethods1_GetJubsu);
  end;
  FGetJubsuCommand.Parameters[0].Value.SetWideString(hospid);
  FGetJubsuCommand.Parameters[1].Value.SetWideString(jin_day);
  FGetJubsuCommand.Parameters[2].Value.SetWideString(jubsu);
  FGetJubsuCommand.Execute(ARequestFilter);
  if not FGetJubsuCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetJubsuCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetJubsuCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetJubsuCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetJubsu_Cache(hospid: string; jin_day: string; jubsu: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetJubsuCommand_Cache = nil then
  begin
    FGetJubsuCommand_Cache := FConnection.CreateCommand;
    FGetJubsuCommand_Cache.RequestType := 'GET';
    FGetJubsuCommand_Cache.Text := 'TServerMethods1.GetJubsu';
    FGetJubsuCommand_Cache.Prepare(TServerMethods1_GetJubsu_Cache);
  end;
  FGetJubsuCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetJubsuCommand_Cache.Parameters[1].Value.SetWideString(jin_day);
  FGetJubsuCommand_Cache.Parameters[2].Value.SetWideString(jubsu);
  FGetJubsuCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetJubsuCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.saveJubsu(hospid: string; chart: string; jin_day: string; jin_time: TDateTime; jubsu: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveJubsuCommand = nil then
  begin
    FsaveJubsuCommand := FConnection.CreateCommand;
    FsaveJubsuCommand.RequestType := 'GET';
    FsaveJubsuCommand.Text := 'TServerMethods1.saveJubsu';
    FsaveJubsuCommand.Prepare(TServerMethods1_saveJubsu);
  end;
  FsaveJubsuCommand.Parameters[0].Value.SetWideString(hospid);
  FsaveJubsuCommand.Parameters[1].Value.SetWideString(chart);
  FsaveJubsuCommand.Parameters[2].Value.SetWideString(jin_day);
  FsaveJubsuCommand.Parameters[3].Value.AsDateTime := jin_time;
  FsaveJubsuCommand.Parameters[4].Value.SetWideString(jubsu);
  FsaveJubsuCommand.Execute(ARequestFilter);
  ID := FsaveJubsuCommand.Parameters[5].Value.GetWideString;
  Error := FsaveJubsuCommand.Parameters[6].Value.GetWideString;
  Result := FsaveJubsuCommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.GetPatientInfoNAMENCHART(AHPID: string; AID: string; APASS: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientInfoNAMENCHARTCommand = nil then
  begin
    FGetPatientInfoNAMENCHARTCommand := FConnection.CreateCommand;
    FGetPatientInfoNAMENCHARTCommand.RequestType := 'GET';
    FGetPatientInfoNAMENCHARTCommand.Text := 'TServerMethods1.GetPatientInfoNAMENCHART';
    FGetPatientInfoNAMENCHARTCommand.Prepare(TServerMethods1_GetPatientInfoNAMENCHART);
  end;
  FGetPatientInfoNAMENCHARTCommand.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientInfoNAMENCHARTCommand.Parameters[1].Value.SetWideString(AID);
  FGetPatientInfoNAMENCHARTCommand.Parameters[2].Value.SetWideString(APASS);
  FGetPatientInfoNAMENCHARTCommand.Execute(ARequestFilter);
  if not FGetPatientInfoNAMENCHARTCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientInfoNAMENCHARTCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientInfoNAMENCHARTCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientInfoNAMENCHARTCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientInfoNAMENCHART_Cache(AHPID: string; AID: string; APASS: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientInfoNAMENCHARTCommand_Cache = nil then
  begin
    FGetPatientInfoNAMENCHARTCommand_Cache := FConnection.CreateCommand;
    FGetPatientInfoNAMENCHARTCommand_Cache.RequestType := 'GET';
    FGetPatientInfoNAMENCHARTCommand_Cache.Text := 'TServerMethods1.GetPatientInfoNAMENCHART';
    FGetPatientInfoNAMENCHARTCommand_Cache.Prepare(TServerMethods1_GetPatientInfoNAMENCHART_Cache);
  end;
  FGetPatientInfoNAMENCHARTCommand_Cache.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientInfoNAMENCHARTCommand_Cache.Parameters[1].Value.SetWideString(AID);
  FGetPatientInfoNAMENCHARTCommand_Cache.Parameters[2].Value.SetWideString(APASS);
  FGetPatientInfoNAMENCHARTCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientInfoNAMENCHARTCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetHpInfo_basic(hpID: string; Code: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHpInfo_basicCommand = nil then
  begin
    FGetHpInfo_basicCommand := FConnection.CreateCommand;
    FGetHpInfo_basicCommand.RequestType := 'GET';
    FGetHpInfo_basicCommand.Text := 'TServerMethods1.GetHpInfo_basic';
    FGetHpInfo_basicCommand.Prepare(TServerMethods1_GetHpInfo_basic);
  end;
  FGetHpInfo_basicCommand.Parameters[0].Value.SetWideString(hpID);
  FGetHpInfo_basicCommand.Parameters[1].Value.SetWideString(Code);
  FGetHpInfo_basicCommand.Execute(ARequestFilter);
  if not FGetHpInfo_basicCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHpInfo_basicCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHpInfo_basicCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHpInfo_basicCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHpInfo_basic_Cache(hpID: string; Code: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHpInfo_basicCommand_Cache = nil then
  begin
    FGetHpInfo_basicCommand_Cache := FConnection.CreateCommand;
    FGetHpInfo_basicCommand_Cache.RequestType := 'GET';
    FGetHpInfo_basicCommand_Cache.Text := 'TServerMethods1.GetHpInfo_basic';
    FGetHpInfo_basicCommand_Cache.Prepare(TServerMethods1_GetHpInfo_basic_Cache);
  end;
  FGetHpInfo_basicCommand_Cache.Parameters[0].Value.SetWideString(hpID);
  FGetHpInfo_basicCommand_Cache.Parameters[1].Value.SetWideString(Code);
  FGetHpInfo_basicCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHpInfo_basicCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.saveHpinfo_basic(hpCertno: string; hpName: string; hpID: string; hpPhone: string; hpChief: string; hpKind: string; hpSaupNo: string; hpAddress: string; hpUpjong: string; hpJongmok: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveHpinfo_basicCommand = nil then
  begin
    FsaveHpinfo_basicCommand := FConnection.CreateCommand;
    FsaveHpinfo_basicCommand.RequestType := 'GET';
    FsaveHpinfo_basicCommand.Text := 'TServerMethods1.saveHpinfo_basic';
    FsaveHpinfo_basicCommand.Prepare(TServerMethods1_saveHpinfo_basic);
  end;
  FsaveHpinfo_basicCommand.Parameters[0].Value.SetWideString(hpCertno);
  FsaveHpinfo_basicCommand.Parameters[1].Value.SetWideString(hpName);
  FsaveHpinfo_basicCommand.Parameters[2].Value.SetWideString(hpID);
  FsaveHpinfo_basicCommand.Parameters[3].Value.SetWideString(hpPhone);
  FsaveHpinfo_basicCommand.Parameters[4].Value.SetWideString(hpChief);
  FsaveHpinfo_basicCommand.Parameters[5].Value.SetWideString(hpKind);
  FsaveHpinfo_basicCommand.Parameters[6].Value.SetWideString(hpSaupNo);
  FsaveHpinfo_basicCommand.Parameters[7].Value.SetWideString(hpAddress);
  FsaveHpinfo_basicCommand.Parameters[8].Value.SetWideString(hpUpjong);
  FsaveHpinfo_basicCommand.Parameters[9].Value.SetWideString(hpJongmok);
  FsaveHpinfo_basicCommand.Execute(ARequestFilter);
  ID := FsaveHpinfo_basicCommand.Parameters[10].Value.GetWideString;
  Error := FsaveHpinfo_basicCommand.Parameters[11].Value.GetWideString;
  Result := FsaveHpinfo_basicCommand.Parameters[12].Value.GetBoolean;
end;

function TServerMethods1Client.GetHpInfo_BLE(hpID: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHpInfo_BLECommand = nil then
  begin
    FGetHpInfo_BLECommand := FConnection.CreateCommand;
    FGetHpInfo_BLECommand.RequestType := 'GET';
    FGetHpInfo_BLECommand.Text := 'TServerMethods1.GetHpInfo_BLE';
    FGetHpInfo_BLECommand.Prepare(TServerMethods1_GetHpInfo_BLE);
  end;
  FGetHpInfo_BLECommand.Parameters[0].Value.SetWideString(hpID);
  FGetHpInfo_BLECommand.Execute(ARequestFilter);
  if not FGetHpInfo_BLECommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHpInfo_BLECommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHpInfo_BLECommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHpInfo_BLECommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHpInfo_BLE_Cache(hpID: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHpInfo_BLECommand_Cache = nil then
  begin
    FGetHpInfo_BLECommand_Cache := FConnection.CreateCommand;
    FGetHpInfo_BLECommand_Cache.RequestType := 'GET';
    FGetHpInfo_BLECommand_Cache.Text := 'TServerMethods1.GetHpInfo_BLE';
    FGetHpInfo_BLECommand_Cache.Prepare(TServerMethods1_GetHpInfo_BLE_Cache);
  end;
  FGetHpInfo_BLECommand_Cache.Parameters[0].Value.SetWideString(hpID);
  FGetHpInfo_BLECommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHpInfo_BLECommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.saveHpinfo_BLE(hpID: string; BLEid: string; Major: string; Minor: string; inUse: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveHpinfo_BLECommand = nil then
  begin
    FsaveHpinfo_BLECommand := FConnection.CreateCommand;
    FsaveHpinfo_BLECommand.RequestType := 'GET';
    FsaveHpinfo_BLECommand.Text := 'TServerMethods1.saveHpinfo_BLE';
    FsaveHpinfo_BLECommand.Prepare(TServerMethods1_saveHpinfo_BLE);
  end;
  FsaveHpinfo_BLECommand.Parameters[0].Value.SetWideString(hpID);
  FsaveHpinfo_BLECommand.Parameters[1].Value.SetWideString(BLEid);
  FsaveHpinfo_BLECommand.Parameters[2].Value.SetWideString(Major);
  FsaveHpinfo_BLECommand.Parameters[3].Value.SetWideString(Minor);
  FsaveHpinfo_BLECommand.Parameters[4].Value.SetWideString(inUse);
  FsaveHpinfo_BLECommand.Execute(ARequestFilter);
  ID := FsaveHpinfo_BLECommand.Parameters[5].Value.GetWideString;
  Error := FsaveHpinfo_BLECommand.Parameters[6].Value.GetWideString;
  Result := FsaveHpinfo_BLECommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.GetHpInfo_HTTP(hpID: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHpInfo_HTTPCommand = nil then
  begin
    FGetHpInfo_HTTPCommand := FConnection.CreateCommand;
    FGetHpInfo_HTTPCommand.RequestType := 'GET';
    FGetHpInfo_HTTPCommand.Text := 'TServerMethods1.GetHpInfo_HTTP';
    FGetHpInfo_HTTPCommand.Prepare(TServerMethods1_GetHpInfo_HTTP);
  end;
  FGetHpInfo_HTTPCommand.Parameters[0].Value.SetWideString(hpID);
  FGetHpInfo_HTTPCommand.Execute(ARequestFilter);
  if not FGetHpInfo_HTTPCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHpInfo_HTTPCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHpInfo_HTTPCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHpInfo_HTTPCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHpInfo_HTTP_Cache(hpID: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHpInfo_HTTPCommand_Cache = nil then
  begin
    FGetHpInfo_HTTPCommand_Cache := FConnection.CreateCommand;
    FGetHpInfo_HTTPCommand_Cache.RequestType := 'GET';
    FGetHpInfo_HTTPCommand_Cache.Text := 'TServerMethods1.GetHpInfo_HTTP';
    FGetHpInfo_HTTPCommand_Cache.Prepare(TServerMethods1_GetHpInfo_HTTP_Cache);
  end;
  FGetHpInfo_HTTPCommand_Cache.Parameters[0].Value.SetWideString(hpID);
  FGetHpInfo_HTTPCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHpInfo_HTTPCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.saveHpinfo_HTTP(hpID: string; hpHttp1: string; hpHttp2: string; hpHttp3: string; hpHttp4: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveHpinfo_HTTPCommand = nil then
  begin
    FsaveHpinfo_HTTPCommand := FConnection.CreateCommand;
    FsaveHpinfo_HTTPCommand.RequestType := 'GET';
    FsaveHpinfo_HTTPCommand.Text := 'TServerMethods1.saveHpinfo_HTTP';
    FsaveHpinfo_HTTPCommand.Prepare(TServerMethods1_saveHpinfo_HTTP);
  end;
  FsaveHpinfo_HTTPCommand.Parameters[0].Value.SetWideString(hpID);
  FsaveHpinfo_HTTPCommand.Parameters[1].Value.SetWideString(hpHttp1);
  FsaveHpinfo_HTTPCommand.Parameters[2].Value.SetWideString(hpHttp2);
  FsaveHpinfo_HTTPCommand.Parameters[3].Value.SetWideString(hpHttp3);
  FsaveHpinfo_HTTPCommand.Parameters[4].Value.SetWideString(hpHttp4);
  FsaveHpinfo_HTTPCommand.Execute(ARequestFilter);
  ID := FsaveHpinfo_HTTPCommand.Parameters[5].Value.GetWideString;
  Error := FsaveHpinfo_HTTPCommand.Parameters[6].Value.GetWideString;
  Result := FsaveHpinfo_HTTPCommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.savePatientDevice(hospid: string; chart: string; DeviceID: string; regday: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsavePatientDeviceCommand = nil then
  begin
    FsavePatientDeviceCommand := FConnection.CreateCommand;
    FsavePatientDeviceCommand.RequestType := 'GET';
    FsavePatientDeviceCommand.Text := 'TServerMethods1.savePatientDevice';
    FsavePatientDeviceCommand.Prepare(TServerMethods1_savePatientDevice);
  end;
  FsavePatientDeviceCommand.Parameters[0].Value.SetWideString(hospid);
  FsavePatientDeviceCommand.Parameters[1].Value.SetWideString(chart);
  FsavePatientDeviceCommand.Parameters[2].Value.SetWideString(DeviceID);
  FsavePatientDeviceCommand.Parameters[3].Value.SetWideString(regday);
  FsavePatientDeviceCommand.Execute(ARequestFilter);
  ID := FsavePatientDeviceCommand.Parameters[4].Value.GetWideString;
  Error := FsavePatientDeviceCommand.Parameters[5].Value.GetWideString;
  Result := FsavePatientDeviceCommand.Parameters[6].Value.GetBoolean;
end;

function TServerMethods1Client.GetPatientDevice(AHPID: string; Achart: string; ADevice: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientDeviceCommand = nil then
  begin
    FGetPatientDeviceCommand := FConnection.CreateCommand;
    FGetPatientDeviceCommand.RequestType := 'GET';
    FGetPatientDeviceCommand.Text := 'TServerMethods1.GetPatientDevice';
    FGetPatientDeviceCommand.Prepare(TServerMethods1_GetPatientDevice);
  end;
  FGetPatientDeviceCommand.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientDeviceCommand.Parameters[1].Value.SetWideString(Achart);
  FGetPatientDeviceCommand.Parameters[2].Value.SetWideString(ADevice);
  FGetPatientDeviceCommand.Execute(ARequestFilter);
  if not FGetPatientDeviceCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientDeviceCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientDeviceCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientDeviceCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientDevice_Cache(AHPID: string; Achart: string; ADevice: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientDeviceCommand_Cache = nil then
  begin
    FGetPatientDeviceCommand_Cache := FConnection.CreateCommand;
    FGetPatientDeviceCommand_Cache.RequestType := 'GET';
    FGetPatientDeviceCommand_Cache.Text := 'TServerMethods1.GetPatientDevice';
    FGetPatientDeviceCommand_Cache.Prepare(TServerMethods1_GetPatientDevice_Cache);
  end;
  FGetPatientDeviceCommand_Cache.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientDeviceCommand_Cache.Parameters[1].Value.SetWideString(Achart);
  FGetPatientDeviceCommand_Cache.Parameters[2].Value.SetWideString(ADevice);
  FGetPatientDeviceCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientDeviceCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.saveQna(aKind: string; hospid: string; chart: string; subject: string; title: string; remark: string; aUser: string; regday: TDateTime; modday: TDateTime; qid: Integer; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveQnaCommand = nil then
  begin
    FsaveQnaCommand := FConnection.CreateCommand;
    FsaveQnaCommand.RequestType := 'GET';
    FsaveQnaCommand.Text := 'TServerMethods1.saveQna';
    FsaveQnaCommand.Prepare(TServerMethods1_saveQna);
  end;
  FsaveQnaCommand.Parameters[0].Value.SetWideString(aKind);
  FsaveQnaCommand.Parameters[1].Value.SetWideString(hospid);
  FsaveQnaCommand.Parameters[2].Value.SetWideString(chart);
  FsaveQnaCommand.Parameters[3].Value.SetWideString(subject);
  FsaveQnaCommand.Parameters[4].Value.SetWideString(title);
  FsaveQnaCommand.Parameters[5].Value.SetWideString(remark);
  FsaveQnaCommand.Parameters[6].Value.SetWideString(aUser);
  FsaveQnaCommand.Parameters[7].Value.AsDateTime := regday;
  FsaveQnaCommand.Parameters[8].Value.AsDateTime := modday;
  FsaveQnaCommand.Parameters[9].Value.SetInt32(qid);
  FsaveQnaCommand.Execute(ARequestFilter);
  ID := FsaveQnaCommand.Parameters[10].Value.GetWideString;
  Error := FsaveQnaCommand.Parameters[11].Value.GetWideString;
  Result := FsaveQnaCommand.Parameters[12].Value.GetBoolean;
end;

function TServerMethods1Client.GetQna_MaxQid(hospid: string; chart: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetQna_MaxQidCommand = nil then
  begin
    FGetQna_MaxQidCommand := FConnection.CreateCommand;
    FGetQna_MaxQidCommand.RequestType := 'GET';
    FGetQna_MaxQidCommand.Text := 'TServerMethods1.GetQna_MaxQid';
    FGetQna_MaxQidCommand.Prepare(TServerMethods1_GetQna_MaxQid);
  end;
  FGetQna_MaxQidCommand.Parameters[0].Value.SetWideString(hospid);
  FGetQna_MaxQidCommand.Parameters[1].Value.SetWideString(chart);
  FGetQna_MaxQidCommand.Execute(ARequestFilter);
  if not FGetQna_MaxQidCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetQna_MaxQidCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetQna_MaxQidCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetQna_MaxQidCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetQna_MaxQid_Cache(hospid: string; chart: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetQna_MaxQidCommand_Cache = nil then
  begin
    FGetQna_MaxQidCommand_Cache := FConnection.CreateCommand;
    FGetQna_MaxQidCommand_Cache.RequestType := 'GET';
    FGetQna_MaxQidCommand_Cache.Text := 'TServerMethods1.GetQna_MaxQid';
    FGetQna_MaxQidCommand_Cache.Prepare(TServerMethods1_GetQna_MaxQid_Cache);
  end;
  FGetQna_MaxQidCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetQna_MaxQidCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetQna_MaxQidCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetQna_MaxQidCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.GetQnaList(hospid: string; chart: string; answerKind: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetQnaListCommand = nil then
  begin
    FGetQnaListCommand := FConnection.CreateCommand;
    FGetQnaListCommand.RequestType := 'GET';
    FGetQnaListCommand.Text := 'TServerMethods1.GetQnaList';
    FGetQnaListCommand.Prepare(TServerMethods1_GetQnaList);
  end;
  FGetQnaListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetQnaListCommand.Parameters[1].Value.SetWideString(chart);
  FGetQnaListCommand.Parameters[2].Value.SetWideString(answerKind);
  FGetQnaListCommand.Execute(ARequestFilter);
  if not FGetQnaListCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetQnaListCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetQnaListCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetQnaListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetQnaList_Cache(hospid: string; chart: string; answerKind: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetQnaListCommand_Cache = nil then
  begin
    FGetQnaListCommand_Cache := FConnection.CreateCommand;
    FGetQnaListCommand_Cache.RequestType := 'GET';
    FGetQnaListCommand_Cache.Text := 'TServerMethods1.GetQnaList';
    FGetQnaListCommand_Cache.Prepare(TServerMethods1_GetQnaList_Cache);
  end;
  FGetQnaListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetQnaListCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetQnaListCommand_Cache.Parameters[2].Value.SetWideString(answerKind);
  FGetQnaListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetQnaListCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetJubsuList(hospid: string; jin_day: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetJubsuListCommand = nil then
  begin
    FGetJubsuListCommand := FConnection.CreateCommand;
    FGetJubsuListCommand.RequestType := 'GET';
    FGetJubsuListCommand.Text := 'TServerMethods1.GetJubsuList';
    FGetJubsuListCommand.Prepare(TServerMethods1_GetJubsuList);
  end;
  FGetJubsuListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetJubsuListCommand.Parameters[1].Value.SetWideString(jin_day);
  FGetJubsuListCommand.Execute(ARequestFilter);
  if not FGetJubsuListCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetJubsuListCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetJubsuListCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetJubsuListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetJubsuList_Cache(hospid: string; jin_day: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetJubsuListCommand_Cache = nil then
  begin
    FGetJubsuListCommand_Cache := FConnection.CreateCommand;
    FGetJubsuListCommand_Cache.RequestType := 'GET';
    FGetJubsuListCommand_Cache.Text := 'TServerMethods1.GetJubsuList';
    FGetJubsuListCommand_Cache.Prepare(TServerMethods1_GetJubsuList_Cache);
  end;
  FGetJubsuListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetJubsuListCommand_Cache.Parameters[1].Value.SetWideString(jin_day);
  FGetJubsuListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetJubsuListCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.GetHelperPatientInfo(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHelperPatientInfoCommand = nil then
  begin
    FGetHelperPatientInfoCommand := FConnection.CreateCommand;
    FGetHelperPatientInfoCommand.RequestType := 'GET';
    FGetHelperPatientInfoCommand.Text := 'TServerMethods1.GetHelperPatientInfo';
    FGetHelperPatientInfoCommand.Prepare(TServerMethods1_GetHelperPatientInfo);
  end;
  FGetHelperPatientInfoCommand.Parameters[0].Value.SetWideString(hospid);
  FGetHelperPatientInfoCommand.Parameters[1].Value.SetWideString(aValue);
  FGetHelperPatientInfoCommand.Parameters[2].Value.SetInt32(kind);
  FGetHelperPatientInfoCommand.Execute(ARequestFilter);
  if not FGetHelperPatientInfoCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHelperPatientInfoCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHelperPatientInfoCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHelperPatientInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHelperPatientInfo_Cache(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHelperPatientInfoCommand_Cache = nil then
  begin
    FGetHelperPatientInfoCommand_Cache := FConnection.CreateCommand;
    FGetHelperPatientInfoCommand_Cache.RequestType := 'GET';
    FGetHelperPatientInfoCommand_Cache.Text := 'TServerMethods1.GetHelperPatientInfo';
    FGetHelperPatientInfoCommand_Cache.Prepare(TServerMethods1_GetHelperPatientInfo_Cache);
  end;
  FGetHelperPatientInfoCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetHelperPatientInfoCommand_Cache.Parameters[1].Value.SetWideString(aValue);
  FGetHelperPatientInfoCommand_Cache.Parameters[2].Value.SetInt32(kind);
  FGetHelperPatientInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHelperPatientInfoCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.savePush(aKind: string; hospid: string; chart: string; subject: string; title: string; remark: string; aUser: string; regday: TDateTime; modday: TDateTime; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsavePushCommand = nil then
  begin
    FsavePushCommand := FConnection.CreateCommand;
    FsavePushCommand.RequestType := 'GET';
    FsavePushCommand.Text := 'TServerMethods1.savePush';
    FsavePushCommand.Prepare(TServerMethods1_savePush);
  end;
  FsavePushCommand.Parameters[0].Value.SetWideString(aKind);
  FsavePushCommand.Parameters[1].Value.SetWideString(hospid);
  FsavePushCommand.Parameters[2].Value.SetWideString(chart);
  FsavePushCommand.Parameters[3].Value.SetWideString(subject);
  FsavePushCommand.Parameters[4].Value.SetWideString(title);
  FsavePushCommand.Parameters[5].Value.SetWideString(remark);
  FsavePushCommand.Parameters[6].Value.SetWideString(aUser);
  FsavePushCommand.Parameters[7].Value.AsDateTime := regday;
  FsavePushCommand.Parameters[8].Value.AsDateTime := modday;
  FsavePushCommand.Execute(ARequestFilter);
  ID := FsavePushCommand.Parameters[9].Value.GetWideString;
  Error := FsavePushCommand.Parameters[10].Value.GetWideString;
  Result := FsavePushCommand.Parameters[11].Value.GetBoolean;
end;

function TServerMethods1Client.GetPushList(hospid: string; chart: string; regday1: string; regday2: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPushListCommand = nil then
  begin
    FGetPushListCommand := FConnection.CreateCommand;
    FGetPushListCommand.RequestType := 'GET';
    FGetPushListCommand.Text := 'TServerMethods1.GetPushList';
    FGetPushListCommand.Prepare(TServerMethods1_GetPushList);
  end;
  FGetPushListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetPushListCommand.Parameters[1].Value.SetWideString(chart);
  FGetPushListCommand.Parameters[2].Value.SetWideString(regday1);
  FGetPushListCommand.Parameters[3].Value.SetWideString(regday2);
  FGetPushListCommand.Execute(ARequestFilter);
  if not FGetPushListCommand.Parameters[4].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPushListCommand.Parameters[4].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPushListCommand.Parameters[4].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPushListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPushList_Cache(hospid: string; chart: string; regday1: string; regday2: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPushListCommand_Cache = nil then
  begin
    FGetPushListCommand_Cache := FConnection.CreateCommand;
    FGetPushListCommand_Cache.RequestType := 'GET';
    FGetPushListCommand_Cache.Text := 'TServerMethods1.GetPushList';
    FGetPushListCommand_Cache.Prepare(TServerMethods1_GetPushList_Cache);
  end;
  FGetPushListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetPushListCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetPushListCommand_Cache.Parameters[2].Value.SetWideString(regday1);
  FGetPushListCommand_Cache.Parameters[3].Value.SetWideString(regday2);
  FGetPushListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPushListCommand_Cache.Parameters[4].Value.GetString);
end;

function TServerMethods1Client.GetPatientInfoLoginInfo(AHPID: string; AName: string; ABirth: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientInfoLoginInfoCommand = nil then
  begin
    FGetPatientInfoLoginInfoCommand := FConnection.CreateCommand;
    FGetPatientInfoLoginInfoCommand.RequestType := 'GET';
    FGetPatientInfoLoginInfoCommand.Text := 'TServerMethods1.GetPatientInfoLoginInfo';
    FGetPatientInfoLoginInfoCommand.Prepare(TServerMethods1_GetPatientInfoLoginInfo);
  end;
  FGetPatientInfoLoginInfoCommand.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientInfoLoginInfoCommand.Parameters[1].Value.SetWideString(AName);
  FGetPatientInfoLoginInfoCommand.Parameters[2].Value.SetWideString(ABirth);
  FGetPatientInfoLoginInfoCommand.Execute(ARequestFilter);
  if not FGetPatientInfoLoginInfoCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientInfoLoginInfoCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientInfoLoginInfoCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientInfoLoginInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientInfoLoginInfo_Cache(AHPID: string; AName: string; ABirth: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientInfoLoginInfoCommand_Cache = nil then
  begin
    FGetPatientInfoLoginInfoCommand_Cache := FConnection.CreateCommand;
    FGetPatientInfoLoginInfoCommand_Cache.RequestType := 'GET';
    FGetPatientInfoLoginInfoCommand_Cache.Text := 'TServerMethods1.GetPatientInfoLoginInfo';
    FGetPatientInfoLoginInfoCommand_Cache.Prepare(TServerMethods1_GetPatientInfoLoginInfo_Cache);
  end;
  FGetPatientInfoLoginInfoCommand_Cache.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientInfoLoginInfoCommand_Cache.Parameters[1].Value.SetWideString(AName);
  FGetPatientInfoLoginInfoCommand_Cache.Parameters[2].Value.SetWideString(ABirth);
  FGetPatientInfoLoginInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientInfoLoginInfoCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.PromiseData_hanaro_gubun(akind: string; hpid: string; bKind: string; idn: string; pteam: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FPromiseData_hanaro_gubunCommand = nil then
  begin
    FPromiseData_hanaro_gubunCommand := FConnection.CreateCommand;
    FPromiseData_hanaro_gubunCommand.RequestType := 'GET';
    FPromiseData_hanaro_gubunCommand.Text := 'TServerMethods1.PromiseData_hanaro_gubun';
    FPromiseData_hanaro_gubunCommand.Prepare(TServerMethods1_PromiseData_hanaro_gubun);
  end;
  FPromiseData_hanaro_gubunCommand.Parameters[0].Value.SetWideString(akind);
  FPromiseData_hanaro_gubunCommand.Parameters[1].Value.SetWideString(hpid);
  FPromiseData_hanaro_gubunCommand.Parameters[2].Value.SetWideString(bKind);
  FPromiseData_hanaro_gubunCommand.Parameters[3].Value.SetWideString(idn);
  FPromiseData_hanaro_gubunCommand.Parameters[4].Value.SetWideString(pteam);
  FPromiseData_hanaro_gubunCommand.Execute(ARequestFilter);
  ID := FPromiseData_hanaro_gubunCommand.Parameters[5].Value.GetWideString;
  Error := FPromiseData_hanaro_gubunCommand.Parameters[6].Value.GetWideString;
  Result := FPromiseData_hanaro_gubunCommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.DeleteImageInfo_Promise(ID: Integer; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FDeleteImageInfo_PromiseCommand = nil then
  begin
    FDeleteImageInfo_PromiseCommand := FConnection.CreateCommand;
    FDeleteImageInfo_PromiseCommand.RequestType := 'GET';
    FDeleteImageInfo_PromiseCommand.Text := 'TServerMethods1.DeleteImageInfo_Promise';
    FDeleteImageInfo_PromiseCommand.Prepare(TServerMethods1_DeleteImageInfo_Promise);
  end;
  FDeleteImageInfo_PromiseCommand.Parameters[0].Value.SetInt32(ID);
  FDeleteImageInfo_PromiseCommand.Execute(ARequestFilter);
  Error := FDeleteImageInfo_PromiseCommand.Parameters[1].Value.GetWideString;
  Result := FDeleteImageInfo_PromiseCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.saveMakedCoupon(hpid: string; makeDate: TDateTime; couponHeaderCode: string; couponName: string; Remark: string; StartDate: TDateTime; EndDate: TDateTime; MaxCount: Integer; PublishedCount: Integer; UsedCount: Integer; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveMakedCouponCommand = nil then
  begin
    FsaveMakedCouponCommand := FConnection.CreateCommand;
    FsaveMakedCouponCommand.RequestType := 'GET';
    FsaveMakedCouponCommand.Text := 'TServerMethods1.saveMakedCoupon';
    FsaveMakedCouponCommand.Prepare(TServerMethods1_saveMakedCoupon);
  end;
  FsaveMakedCouponCommand.Parameters[0].Value.SetWideString(hpid);
  FsaveMakedCouponCommand.Parameters[1].Value.AsDateTime := makeDate;
  FsaveMakedCouponCommand.Parameters[2].Value.SetWideString(couponHeaderCode);
  FsaveMakedCouponCommand.Parameters[3].Value.SetWideString(couponName);
  FsaveMakedCouponCommand.Parameters[4].Value.SetWideString(Remark);
  FsaveMakedCouponCommand.Parameters[5].Value.AsDateTime := StartDate;
  FsaveMakedCouponCommand.Parameters[6].Value.AsDateTime := EndDate;
  FsaveMakedCouponCommand.Parameters[7].Value.SetInt32(MaxCount);
  FsaveMakedCouponCommand.Parameters[8].Value.SetInt32(PublishedCount);
  FsaveMakedCouponCommand.Parameters[9].Value.SetInt32(UsedCount);
  FsaveMakedCouponCommand.Execute(ARequestFilter);
  ID := FsaveMakedCouponCommand.Parameters[10].Value.GetWideString;
  Error := FsaveMakedCouponCommand.Parameters[11].Value.GetWideString;
  Result := FsaveMakedCouponCommand.Parameters[12].Value.GetBoolean;
end;

function TServerMethods1Client.savePublishedCoupon(hpid: string; couponHeaderCode: string; couponCode: string; publishedDate: TDateTime; publisher: string; kind: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsavePublishedCouponCommand = nil then
  begin
    FsavePublishedCouponCommand := FConnection.CreateCommand;
    FsavePublishedCouponCommand.RequestType := 'GET';
    FsavePublishedCouponCommand.Text := 'TServerMethods1.savePublishedCoupon';
    FsavePublishedCouponCommand.Prepare(TServerMethods1_savePublishedCoupon);
  end;
  FsavePublishedCouponCommand.Parameters[0].Value.SetWideString(hpid);
  FsavePublishedCouponCommand.Parameters[1].Value.SetWideString(couponHeaderCode);
  FsavePublishedCouponCommand.Parameters[2].Value.SetWideString(couponCode);
  FsavePublishedCouponCommand.Parameters[3].Value.AsDateTime := publishedDate;
  FsavePublishedCouponCommand.Parameters[4].Value.SetWideString(publisher);
  FsavePublishedCouponCommand.Parameters[5].Value.SetWideString(kind);
  FsavePublishedCouponCommand.Execute(ARequestFilter);
  ID := FsavePublishedCouponCommand.Parameters[6].Value.GetWideString;
  Error := FsavePublishedCouponCommand.Parameters[7].Value.GetWideString;
  Result := FsavePublishedCouponCommand.Parameters[8].Value.GetBoolean;
end;

function TServerMethods1Client.savePersonalPublishedCoupon(hpid: string; chart: string; couponHeaderCode: string; couponCode: string; usedDate: TDateTime; publishedDate: TDateTime; Used: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsavePersonalPublishedCouponCommand = nil then
  begin
    FsavePersonalPublishedCouponCommand := FConnection.CreateCommand;
    FsavePersonalPublishedCouponCommand.RequestType := 'GET';
    FsavePersonalPublishedCouponCommand.Text := 'TServerMethods1.savePersonalPublishedCoupon';
    FsavePersonalPublishedCouponCommand.Prepare(TServerMethods1_savePersonalPublishedCoupon);
  end;
  FsavePersonalPublishedCouponCommand.Parameters[0].Value.SetWideString(hpid);
  FsavePersonalPublishedCouponCommand.Parameters[1].Value.SetWideString(chart);
  FsavePersonalPublishedCouponCommand.Parameters[2].Value.SetWideString(couponHeaderCode);
  FsavePersonalPublishedCouponCommand.Parameters[3].Value.SetWideString(couponCode);
  FsavePersonalPublishedCouponCommand.Parameters[4].Value.AsDateTime := usedDate;
  FsavePersonalPublishedCouponCommand.Parameters[5].Value.AsDateTime := publishedDate;
  FsavePersonalPublishedCouponCommand.Parameters[6].Value.SetWideString(Used);
  FsavePersonalPublishedCouponCommand.Execute(ARequestFilter);
  ID := FsavePersonalPublishedCouponCommand.Parameters[7].Value.GetWideString;
  Error := FsavePersonalPublishedCouponCommand.Parameters[8].Value.GetWideString;
  Result := FsavePersonalPublishedCouponCommand.Parameters[9].Value.GetBoolean;
end;

function TServerMethods1Client.GetMakedCouponList(hpid: string; regday1: string; regday2: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetMakedCouponListCommand = nil then
  begin
    FGetMakedCouponListCommand := FConnection.CreateCommand;
    FGetMakedCouponListCommand.RequestType := 'GET';
    FGetMakedCouponListCommand.Text := 'TServerMethods1.GetMakedCouponList';
    FGetMakedCouponListCommand.Prepare(TServerMethods1_GetMakedCouponList);
  end;
  FGetMakedCouponListCommand.Parameters[0].Value.SetWideString(hpid);
  FGetMakedCouponListCommand.Parameters[1].Value.SetWideString(regday1);
  FGetMakedCouponListCommand.Parameters[2].Value.SetWideString(regday2);
  FGetMakedCouponListCommand.Execute(ARequestFilter);
  if not FGetMakedCouponListCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetMakedCouponListCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetMakedCouponListCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetMakedCouponListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetMakedCouponList_Cache(hpid: string; regday1: string; regday2: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetMakedCouponListCommand_Cache = nil then
  begin
    FGetMakedCouponListCommand_Cache := FConnection.CreateCommand;
    FGetMakedCouponListCommand_Cache.RequestType := 'GET';
    FGetMakedCouponListCommand_Cache.Text := 'TServerMethods1.GetMakedCouponList';
    FGetMakedCouponListCommand_Cache.Prepare(TServerMethods1_GetMakedCouponList_Cache);
  end;
  FGetMakedCouponListCommand_Cache.Parameters[0].Value.SetWideString(hpid);
  FGetMakedCouponListCommand_Cache.Parameters[1].Value.SetWideString(regday1);
  FGetMakedCouponListCommand_Cache.Parameters[2].Value.SetWideString(regday2);
  FGetMakedCouponListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetMakedCouponListCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetHelperPatient_CouponList_Info(hospid: string; aValue: string; kind: Integer; couponHeaderCode: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHelperPatient_CouponList_InfoCommand = nil then
  begin
    FGetHelperPatient_CouponList_InfoCommand := FConnection.CreateCommand;
    FGetHelperPatient_CouponList_InfoCommand.RequestType := 'GET';
    FGetHelperPatient_CouponList_InfoCommand.Text := 'TServerMethods1.GetHelperPatient_CouponList_Info';
    FGetHelperPatient_CouponList_InfoCommand.Prepare(TServerMethods1_GetHelperPatient_CouponList_Info);
  end;
  FGetHelperPatient_CouponList_InfoCommand.Parameters[0].Value.SetWideString(hospid);
  FGetHelperPatient_CouponList_InfoCommand.Parameters[1].Value.SetWideString(aValue);
  FGetHelperPatient_CouponList_InfoCommand.Parameters[2].Value.SetInt32(kind);
  FGetHelperPatient_CouponList_InfoCommand.Parameters[3].Value.SetWideString(couponHeaderCode);
  FGetHelperPatient_CouponList_InfoCommand.Execute(ARequestFilter);
  if not FGetHelperPatient_CouponList_InfoCommand.Parameters[4].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHelperPatient_CouponList_InfoCommand.Parameters[4].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHelperPatient_CouponList_InfoCommand.Parameters[4].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHelperPatient_CouponList_InfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHelperPatient_CouponList_Info_Cache(hospid: string; aValue: string; kind: Integer; couponHeaderCode: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHelperPatient_CouponList_InfoCommand_Cache = nil then
  begin
    FGetHelperPatient_CouponList_InfoCommand_Cache := FConnection.CreateCommand;
    FGetHelperPatient_CouponList_InfoCommand_Cache.RequestType := 'GET';
    FGetHelperPatient_CouponList_InfoCommand_Cache.Text := 'TServerMethods1.GetHelperPatient_CouponList_Info';
    FGetHelperPatient_CouponList_InfoCommand_Cache.Prepare(TServerMethods1_GetHelperPatient_CouponList_Info_Cache);
  end;
  FGetHelperPatient_CouponList_InfoCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetHelperPatient_CouponList_InfoCommand_Cache.Parameters[1].Value.SetWideString(aValue);
  FGetHelperPatient_CouponList_InfoCommand_Cache.Parameters[2].Value.SetInt32(kind);
  FGetHelperPatient_CouponList_InfoCommand_Cache.Parameters[3].Value.SetWideString(couponHeaderCode);
  FGetHelperPatient_CouponList_InfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHelperPatient_CouponList_InfoCommand_Cache.Parameters[4].Value.GetString);
end;

function TServerMethods1Client.saveFaq(faqID: string; hospid: string; subject: string; title: string; remark: string; aUser: string; regday: string; modday: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveFaqCommand = nil then
  begin
    FsaveFaqCommand := FConnection.CreateCommand;
    FsaveFaqCommand.RequestType := 'GET';
    FsaveFaqCommand.Text := 'TServerMethods1.saveFaq';
    FsaveFaqCommand.Prepare(TServerMethods1_saveFaq);
  end;
  FsaveFaqCommand.Parameters[0].Value.SetWideString(faqID);
  FsaveFaqCommand.Parameters[1].Value.SetWideString(hospid);
  FsaveFaqCommand.Parameters[2].Value.SetWideString(subject);
  FsaveFaqCommand.Parameters[3].Value.SetWideString(title);
  FsaveFaqCommand.Parameters[4].Value.SetWideString(remark);
  FsaveFaqCommand.Parameters[5].Value.SetWideString(aUser);
  FsaveFaqCommand.Parameters[6].Value.SetWideString(regday);
  FsaveFaqCommand.Parameters[7].Value.SetWideString(modday);
  FsaveFaqCommand.Execute(ARequestFilter);
  ID := FsaveFaqCommand.Parameters[8].Value.GetWideString;
  Error := FsaveFaqCommand.Parameters[9].Value.GetWideString;
  Result := FsaveFaqCommand.Parameters[10].Value.GetBoolean;
end;

function TServerMethods1Client.GetFaqList(hospid: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetFaqListCommand = nil then
  begin
    FGetFaqListCommand := FConnection.CreateCommand;
    FGetFaqListCommand.RequestType := 'GET';
    FGetFaqListCommand.Text := 'TServerMethods1.GetFaqList';
    FGetFaqListCommand.Prepare(TServerMethods1_GetFaqList);
  end;
  FGetFaqListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetFaqListCommand.Execute(ARequestFilter);
  if not FGetFaqListCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetFaqListCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetFaqListCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetFaqListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetFaqList_Cache(hospid: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetFaqListCommand_Cache = nil then
  begin
    FGetFaqListCommand_Cache := FConnection.CreateCommand;
    FGetFaqListCommand_Cache.RequestType := 'GET';
    FGetFaqListCommand_Cache.Text := 'TServerMethods1.GetFaqList';
    FGetFaqListCommand_Cache.Prepare(TServerMethods1_GetFaqList_Cache);
  end;
  FGetFaqListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetFaqListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetFaqListCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethods1Client.saveGogekBasic(hpID: string; hname: string; chart: string; jumin: string; birth: string; gender: string; email: string; password: string; kinveyId: string; kinveyPass: string; deviceID: string; mod_day: string; reg_day: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FsaveGogekBasicCommand = nil then
  begin
    FsaveGogekBasicCommand := FConnection.CreateCommand;
    FsaveGogekBasicCommand.RequestType := 'GET';
    FsaveGogekBasicCommand.Text := 'TServerMethods1.saveGogekBasic';
    FsaveGogekBasicCommand.Prepare(TServerMethods1_saveGogekBasic);
  end;
  FsaveGogekBasicCommand.Parameters[0].Value.SetWideString(hpID);
  FsaveGogekBasicCommand.Parameters[1].Value.SetWideString(hname);
  FsaveGogekBasicCommand.Parameters[2].Value.SetWideString(chart);
  FsaveGogekBasicCommand.Parameters[3].Value.SetWideString(jumin);
  FsaveGogekBasicCommand.Parameters[4].Value.SetWideString(birth);
  FsaveGogekBasicCommand.Parameters[5].Value.SetWideString(gender);
  FsaveGogekBasicCommand.Parameters[6].Value.SetWideString(email);
  FsaveGogekBasicCommand.Parameters[7].Value.SetWideString(password);
  FsaveGogekBasicCommand.Parameters[8].Value.SetWideString(kinveyId);
  FsaveGogekBasicCommand.Parameters[9].Value.SetWideString(kinveyPass);
  FsaveGogekBasicCommand.Parameters[10].Value.SetWideString(deviceID);
  FsaveGogekBasicCommand.Parameters[11].Value.SetWideString(mod_day);
  FsaveGogekBasicCommand.Parameters[12].Value.SetWideString(reg_day);
  FsaveGogekBasicCommand.Execute(ARequestFilter);
  ID := FsaveGogekBasicCommand.Parameters[13].Value.GetWideString;
  Error := FsaveGogekBasicCommand.Parameters[14].Value.GetWideString;
  Result := FsaveGogekBasicCommand.Parameters[15].Value.GetBoolean;
end;

function TServerMethods1Client.GetPatientInfoID(AHPID: string; AID: string; APASS: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPatientInfoIDCommand = nil then
  begin
    FGetPatientInfoIDCommand := FConnection.CreateCommand;
    FGetPatientInfoIDCommand.RequestType := 'GET';
    FGetPatientInfoIDCommand.Text := 'TServerMethods1.GetPatientInfoID';
    FGetPatientInfoIDCommand.Prepare(TServerMethods1_GetPatientInfoID);
  end;
  FGetPatientInfoIDCommand.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientInfoIDCommand.Parameters[1].Value.SetWideString(AID);
  FGetPatientInfoIDCommand.Parameters[2].Value.SetWideString(APASS);
  FGetPatientInfoIDCommand.Execute(ARequestFilter);
  if not FGetPatientInfoIDCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPatientInfoIDCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPatientInfoIDCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPatientInfoIDCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPatientInfoID_Cache(AHPID: string; AID: string; APASS: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPatientInfoIDCommand_Cache = nil then
  begin
    FGetPatientInfoIDCommand_Cache := FConnection.CreateCommand;
    FGetPatientInfoIDCommand_Cache.RequestType := 'GET';
    FGetPatientInfoIDCommand_Cache.Text := 'TServerMethods1.GetPatientInfoID';
    FGetPatientInfoIDCommand_Cache.Prepare(TServerMethods1_GetPatientInfoID_Cache);
  end;
  FGetPatientInfoIDCommand_Cache.Parameters[0].Value.SetWideString(AHPID);
  FGetPatientInfoIDCommand_Cache.Parameters[1].Value.SetWideString(AID);
  FGetPatientInfoIDCommand_Cache.Parameters[2].Value.SetWideString(APASS);
  FGetPatientInfoIDCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPatientInfoIDCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetHPInfo(hospid: string; certno: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHPInfoCommand = nil then
  begin
    FGetHPInfoCommand := FConnection.CreateCommand;
    FGetHPInfoCommand.RequestType := 'GET';
    FGetHPInfoCommand.Text := 'TServerMethods1.GetHPInfo';
    FGetHPInfoCommand.Prepare(TServerMethods1_GetHPInfo);
  end;
  FGetHPInfoCommand.Parameters[0].Value.SetWideString(hospid);
  FGetHPInfoCommand.Parameters[1].Value.SetWideString(certno);
  FGetHPInfoCommand.Execute(ARequestFilter);
  if not FGetHPInfoCommand.Parameters[2].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHPInfoCommand.Parameters[2].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHPInfoCommand.Parameters[2].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHPInfoCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHPInfo_Cache(hospid: string; certno: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHPInfoCommand_Cache = nil then
  begin
    FGetHPInfoCommand_Cache := FConnection.CreateCommand;
    FGetHPInfoCommand_Cache.RequestType := 'GET';
    FGetHPInfoCommand_Cache.Text := 'TServerMethods1.GetHPInfo';
    FGetHPInfoCommand_Cache.Prepare(TServerMethods1_GetHPInfo_Cache);
  end;
  FGetHPInfoCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetHPInfoCommand_Cache.Parameters[1].Value.SetWideString(certno);
  FGetHPInfoCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHPInfoCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethods1Client.ChangeJubsu(hospid: string; chart: string; jin_day: string; jin_time: TDateTime; jubsu: string; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FChangeJubsuCommand = nil then
  begin
    FChangeJubsuCommand := FConnection.CreateCommand;
    FChangeJubsuCommand.RequestType := 'GET';
    FChangeJubsuCommand.Text := 'TServerMethods1.ChangeJubsu';
    FChangeJubsuCommand.Prepare(TServerMethods1_ChangeJubsu);
  end;
  FChangeJubsuCommand.Parameters[0].Value.SetWideString(hospid);
  FChangeJubsuCommand.Parameters[1].Value.SetWideString(chart);
  FChangeJubsuCommand.Parameters[2].Value.SetWideString(jin_day);
  FChangeJubsuCommand.Parameters[3].Value.AsDateTime := jin_time;
  FChangeJubsuCommand.Parameters[4].Value.SetWideString(jubsu);
  FChangeJubsuCommand.Execute(ARequestFilter);
  ID := FChangeJubsuCommand.Parameters[5].Value.GetWideString;
  Error := FChangeJubsuCommand.Parameters[6].Value.GetWideString;
  Result := FChangeJubsuCommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.DeleteNotice(noticeID: string; hospid: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FDeleteNoticeCommand = nil then
  begin
    FDeleteNoticeCommand := FConnection.CreateCommand;
    FDeleteNoticeCommand.RequestType := 'GET';
    FDeleteNoticeCommand.Text := 'TServerMethods1.DeleteNotice';
    FDeleteNoticeCommand.Prepare(TServerMethods1_DeleteNotice);
  end;
  FDeleteNoticeCommand.Parameters[0].Value.SetWideString(noticeID);
  FDeleteNoticeCommand.Parameters[1].Value.SetWideString(hospid);
  FDeleteNoticeCommand.Execute(ARequestFilter);
  Error := FDeleteNoticeCommand.Parameters[2].Value.GetWideString;
  Result := FDeleteNoticeCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.DeleteFAQ(noticeID: string; hospid: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FDeleteFAQCommand = nil then
  begin
    FDeleteFAQCommand := FConnection.CreateCommand;
    FDeleteFAQCommand.RequestType := 'GET';
    FDeleteFAQCommand.Text := 'TServerMethods1.DeleteFAQ';
    FDeleteFAQCommand.Prepare(TServerMethods1_DeleteFAQ);
  end;
  FDeleteFAQCommand.Parameters[0].Value.SetWideString(noticeID);
  FDeleteFAQCommand.Parameters[1].Value.SetWideString(hospid);
  FDeleteFAQCommand.Execute(ARequestFilter);
  Error := FDeleteFAQCommand.Parameters[2].Value.GetWideString;
  Result := FDeleteFAQCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.DeletePush(noticeID: string; hospid: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FDeletePushCommand = nil then
  begin
    FDeletePushCommand := FConnection.CreateCommand;
    FDeletePushCommand.RequestType := 'GET';
    FDeletePushCommand.Text := 'TServerMethods1.DeletePush';
    FDeletePushCommand.Prepare(TServerMethods1_DeletePush);
  end;
  FDeletePushCommand.Parameters[0].Value.SetWideString(noticeID);
  FDeletePushCommand.Parameters[1].Value.SetWideString(hospid);
  FDeletePushCommand.Execute(ARequestFilter);
  Error := FDeletePushCommand.Parameters[2].Value.GetWideString;
  Result := FDeletePushCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.GetJubsuListForCount(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetJubsuListForCountCommand = nil then
  begin
    FGetJubsuListForCountCommand := FConnection.CreateCommand;
    FGetJubsuListForCountCommand.RequestType := 'GET';
    FGetJubsuListForCountCommand.Text := 'TServerMethods1.GetJubsuListForCount';
    FGetJubsuListForCountCommand.Prepare(TServerMethods1_GetJubsuListForCount);
  end;
  FGetJubsuListForCountCommand.Parameters[0].Value.SetWideString(hospid);
  FGetJubsuListForCountCommand.Parameters[1].Value.SetWideString(jin_day1);
  FGetJubsuListForCountCommand.Parameters[2].Value.SetWideString(jin_day2);
  FGetJubsuListForCountCommand.Execute(ARequestFilter);
  if not FGetJubsuListForCountCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetJubsuListForCountCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetJubsuListForCountCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetJubsuListForCountCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetJubsuListForCount_Cache(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetJubsuListForCountCommand_Cache = nil then
  begin
    FGetJubsuListForCountCommand_Cache := FConnection.CreateCommand;
    FGetJubsuListForCountCommand_Cache.RequestType := 'GET';
    FGetJubsuListForCountCommand_Cache.Text := 'TServerMethods1.GetJubsuListForCount';
    FGetJubsuListForCountCommand_Cache.Prepare(TServerMethods1_GetJubsuListForCount_Cache);
  end;
  FGetJubsuListForCountCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetJubsuListForCountCommand_Cache.Parameters[1].Value.SetWideString(jin_day1);
  FGetJubsuListForCountCommand_Cache.Parameters[2].Value.SetWideString(jin_day2);
  FGetJubsuListForCountCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetJubsuListForCountCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetLoginList(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetLoginListCommand = nil then
  begin
    FGetLoginListCommand := FConnection.CreateCommand;
    FGetLoginListCommand.RequestType := 'GET';
    FGetLoginListCommand.Text := 'TServerMethods1.GetLoginList';
    FGetLoginListCommand.Prepare(TServerMethods1_GetLoginList);
  end;
  FGetLoginListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetLoginListCommand.Parameters[1].Value.SetWideString(jin_day1);
  FGetLoginListCommand.Parameters[2].Value.SetWideString(jin_day2);
  FGetLoginListCommand.Execute(ARequestFilter);
  if not FGetLoginListCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetLoginListCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetLoginListCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetLoginListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetLoginList_Cache(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetLoginListCommand_Cache = nil then
  begin
    FGetLoginListCommand_Cache := FConnection.CreateCommand;
    FGetLoginListCommand_Cache.RequestType := 'GET';
    FGetLoginListCommand_Cache.Text := 'TServerMethods1.GetLoginList';
    FGetLoginListCommand_Cache.Prepare(TServerMethods1_GetLoginList_Cache);
  end;
  FGetLoginListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetLoginListCommand_Cache.Parameters[1].Value.SetWideString(jin_day1);
  FGetLoginListCommand_Cache.Parameters[2].Value.SetWideString(jin_day2);
  FGetLoginListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetLoginListCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetNewMemberCount(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetNewMemberCountCommand = nil then
  begin
    FGetNewMemberCountCommand := FConnection.CreateCommand;
    FGetNewMemberCountCommand.RequestType := 'GET';
    FGetNewMemberCountCommand.Text := 'TServerMethods1.GetNewMemberCount';
    FGetNewMemberCountCommand.Prepare(TServerMethods1_GetNewMemberCount);
  end;
  FGetNewMemberCountCommand.Parameters[0].Value.SetWideString(hospid);
  FGetNewMemberCountCommand.Parameters[1].Value.SetWideString(jin_day1);
  FGetNewMemberCountCommand.Parameters[2].Value.SetWideString(jin_day2);
  FGetNewMemberCountCommand.Execute(ARequestFilter);
  if not FGetNewMemberCountCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetNewMemberCountCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetNewMemberCountCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetNewMemberCountCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetNewMemberCount_Cache(hospid: string; jin_day1: string; jin_day2: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetNewMemberCountCommand_Cache = nil then
  begin
    FGetNewMemberCountCommand_Cache := FConnection.CreateCommand;
    FGetNewMemberCountCommand_Cache.RequestType := 'GET';
    FGetNewMemberCountCommand_Cache.Text := 'TServerMethods1.GetNewMemberCount';
    FGetNewMemberCountCommand_Cache.Prepare(TServerMethods1_GetNewMemberCount_Cache);
  end;
  FGetNewMemberCountCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetNewMemberCountCommand_Cache.Parameters[1].Value.SetWideString(jin_day1);
  FGetNewMemberCountCommand_Cache.Parameters[2].Value.SetWideString(jin_day2);
  FGetNewMemberCountCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetNewMemberCountCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetPointList(hospid: string; chart: string; certno: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPointListCommand = nil then
  begin
    FGetPointListCommand := FConnection.CreateCommand;
    FGetPointListCommand.RequestType := 'GET';
    FGetPointListCommand.Text := 'TServerMethods1.GetPointList';
    FGetPointListCommand.Prepare(TServerMethods1_GetPointList);
  end;
  FGetPointListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetPointListCommand.Parameters[1].Value.SetWideString(chart);
  FGetPointListCommand.Parameters[2].Value.SetWideString(certno);
  FGetPointListCommand.Execute(ARequestFilter);
  if not FGetPointListCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPointListCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPointListCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPointListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPointList_Cache(hospid: string; chart: string; certno: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPointListCommand_Cache = nil then
  begin
    FGetPointListCommand_Cache := FConnection.CreateCommand;
    FGetPointListCommand_Cache.RequestType := 'GET';
    FGetPointListCommand_Cache.Text := 'TServerMethods1.GetPointList';
    FGetPointListCommand_Cache.Prepare(TServerMethods1_GetPointList_Cache);
  end;
  FGetPointListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetPointListCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetPointListCommand_Cache.Parameters[2].Value.SetWideString(certno);
  FGetPointListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPointListCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetPointSum(hospid: string; chart: string; certno: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetPointSumCommand = nil then
  begin
    FGetPointSumCommand := FConnection.CreateCommand;
    FGetPointSumCommand.RequestType := 'GET';
    FGetPointSumCommand.Text := 'TServerMethods1.GetPointSum';
    FGetPointSumCommand.Prepare(TServerMethods1_GetPointSum);
  end;
  FGetPointSumCommand.Parameters[0].Value.SetWideString(hospid);
  FGetPointSumCommand.Parameters[1].Value.SetWideString(chart);
  FGetPointSumCommand.Parameters[2].Value.SetWideString(certno);
  FGetPointSumCommand.Execute(ARequestFilter);
  if not FGetPointSumCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetPointSumCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetPointSumCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPointSumCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetPointSum_Cache(hospid: string; chart: string; certno: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetPointSumCommand_Cache = nil then
  begin
    FGetPointSumCommand_Cache := FConnection.CreateCommand;
    FGetPointSumCommand_Cache.RequestType := 'GET';
    FGetPointSumCommand_Cache.Text := 'TServerMethods1.GetPointSum';
    FGetPointSumCommand_Cache.Prepare(TServerMethods1_GetPointSum_Cache);
  end;
  FGetPointSumCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetPointSumCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetPointSumCommand_Cache.Parameters[2].Value.SetWideString(certno);
  FGetPointSumCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetPointSumCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.GetHelperPatientInfo_onlyPatient(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetHelperPatientInfo_onlyPatientCommand = nil then
  begin
    FGetHelperPatientInfo_onlyPatientCommand := FConnection.CreateCommand;
    FGetHelperPatientInfo_onlyPatientCommand.RequestType := 'GET';
    FGetHelperPatientInfo_onlyPatientCommand.Text := 'TServerMethods1.GetHelperPatientInfo_onlyPatient';
    FGetHelperPatientInfo_onlyPatientCommand.Prepare(TServerMethods1_GetHelperPatientInfo_onlyPatient);
  end;
  FGetHelperPatientInfo_onlyPatientCommand.Parameters[0].Value.SetWideString(hospid);
  FGetHelperPatientInfo_onlyPatientCommand.Parameters[1].Value.SetWideString(aValue);
  FGetHelperPatientInfo_onlyPatientCommand.Parameters[2].Value.SetInt32(kind);
  FGetHelperPatientInfo_onlyPatientCommand.Execute(ARequestFilter);
  if not FGetHelperPatientInfo_onlyPatientCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetHelperPatientInfo_onlyPatientCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetHelperPatientInfo_onlyPatientCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetHelperPatientInfo_onlyPatientCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetHelperPatientInfo_onlyPatient_Cache(hospid: string; aValue: string; kind: Integer; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetHelperPatientInfo_onlyPatientCommand_Cache = nil then
  begin
    FGetHelperPatientInfo_onlyPatientCommand_Cache := FConnection.CreateCommand;
    FGetHelperPatientInfo_onlyPatientCommand_Cache.RequestType := 'GET';
    FGetHelperPatientInfo_onlyPatientCommand_Cache.Text := 'TServerMethods1.GetHelperPatientInfo_onlyPatient';
    FGetHelperPatientInfo_onlyPatientCommand_Cache.Prepare(TServerMethods1_GetHelperPatientInfo_onlyPatient_Cache);
  end;
  FGetHelperPatientInfo_onlyPatientCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetHelperPatientInfo_onlyPatientCommand_Cache.Parameters[1].Value.SetWideString(aValue);
  FGetHelperPatientInfo_onlyPatientCommand_Cache.Parameters[2].Value.SetInt32(kind);
  FGetHelperPatientInfo_onlyPatientCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetHelperPatientInfo_onlyPatientCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.UpdateGogekBasic_idJoin(hpID: string; Idn: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FUpdateGogekBasic_idJoinCommand = nil then
  begin
    FUpdateGogekBasic_idJoinCommand := FConnection.CreateCommand;
    FUpdateGogekBasic_idJoinCommand.RequestType := 'GET';
    FUpdateGogekBasic_idJoinCommand.Text := 'TServerMethods1.UpdateGogekBasic_idJoin';
    FUpdateGogekBasic_idJoinCommand.Prepare(TServerMethods1_UpdateGogekBasic_idJoin);
  end;
  FUpdateGogekBasic_idJoinCommand.Parameters[0].Value.SetWideString(hpID);
  FUpdateGogekBasic_idJoinCommand.Parameters[1].Value.SetWideString(Idn);
  FUpdateGogekBasic_idJoinCommand.Execute(ARequestFilter);
  Error := FUpdateGogekBasic_idJoinCommand.Parameters[2].Value.GetWideString;
  Result := FUpdateGogekBasic_idJoinCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.GetNewQnaList(hospid: string; chart: string; answerKind: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetNewQnaListCommand = nil then
  begin
    FGetNewQnaListCommand := FConnection.CreateCommand;
    FGetNewQnaListCommand.RequestType := 'GET';
    FGetNewQnaListCommand.Text := 'TServerMethods1.GetNewQnaList';
    FGetNewQnaListCommand.Prepare(TServerMethods1_GetNewQnaList);
  end;
  FGetNewQnaListCommand.Parameters[0].Value.SetWideString(hospid);
  FGetNewQnaListCommand.Parameters[1].Value.SetWideString(chart);
  FGetNewQnaListCommand.Parameters[2].Value.SetWideString(answerKind);
  FGetNewQnaListCommand.Execute(ARequestFilter);
  if not FGetNewQnaListCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetNewQnaListCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetNewQnaListCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetNewQnaListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetNewQnaList_Cache(hospid: string; chart: string; answerKind: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetNewQnaListCommand_Cache = nil then
  begin
    FGetNewQnaListCommand_Cache := FConnection.CreateCommand;
    FGetNewQnaListCommand_Cache.RequestType := 'GET';
    FGetNewQnaListCommand_Cache.Text := 'TServerMethods1.GetNewQnaList';
    FGetNewQnaListCommand_Cache.Prepare(TServerMethods1_GetNewQnaList_Cache);
  end;
  FGetNewQnaListCommand_Cache.Parameters[0].Value.SetWideString(hospid);
  FGetNewQnaListCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetNewQnaListCommand_Cache.Parameters[2].Value.SetWideString(answerKind);
  FGetNewQnaListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetNewQnaListCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethods1Client.SaveParent(hpid: string; chart: string; parentchart: string; isuse: string; regday: TDateTime; modday: TDateTime; out ID: string; out Error: string; const ARequestFilter: string): Boolean;
begin
  if FSaveParentCommand = nil then
  begin
    FSaveParentCommand := FConnection.CreateCommand;
    FSaveParentCommand.RequestType := 'GET';
    FSaveParentCommand.Text := 'TServerMethods1.SaveParent';
    FSaveParentCommand.Prepare(TServerMethods1_SaveParent);
  end;
  FSaveParentCommand.Parameters[0].Value.SetWideString(hpid);
  FSaveParentCommand.Parameters[1].Value.SetWideString(chart);
  FSaveParentCommand.Parameters[2].Value.SetWideString(parentchart);
  FSaveParentCommand.Parameters[3].Value.SetWideString(isuse);
  FSaveParentCommand.Parameters[4].Value.AsDateTime := regday;
  FSaveParentCommand.Parameters[5].Value.AsDateTime := modday;
  FSaveParentCommand.Execute(ARequestFilter);
  ID := FSaveParentCommand.Parameters[6].Value.GetWideString;
  Error := FSaveParentCommand.Parameters[7].Value.GetWideString;
  Result := FSaveParentCommand.Parameters[8].Value.GetBoolean;
end;

function TServerMethods1Client.updateIsparent(hpid: string; chart: string; isParent: string; modday: TDateTime; const ARequestFilter: string): Boolean;
begin
  if FupdateIsparentCommand = nil then
  begin
    FupdateIsparentCommand := FConnection.CreateCommand;
    FupdateIsparentCommand.RequestType := 'GET';
    FupdateIsparentCommand.Text := 'TServerMethods1.updateIsparent';
    FupdateIsparentCommand.Prepare(TServerMethods1_updateIsparent);
  end;
  FupdateIsparentCommand.Parameters[0].Value.SetWideString(hpid);
  FupdateIsparentCommand.Parameters[1].Value.SetWideString(chart);
  FupdateIsparentCommand.Parameters[2].Value.SetWideString(isParent);
  FupdateIsparentCommand.Parameters[3].Value.AsDateTime := modday;
  FupdateIsparentCommand.Execute(ARequestFilter);
  Result := FupdateIsparentCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.updateIsUseParent(hpid: string; chart: string; ParentChart: string; isUse: string; modday: TDateTime; const ARequestFilter: string): Boolean;
begin
  if FupdateIsUseParentCommand = nil then
  begin
    FupdateIsUseParentCommand := FConnection.CreateCommand;
    FupdateIsUseParentCommand.RequestType := 'GET';
    FupdateIsUseParentCommand.Text := 'TServerMethods1.updateIsUseParent';
    FupdateIsUseParentCommand.Prepare(TServerMethods1_updateIsUseParent);
  end;
  FupdateIsUseParentCommand.Parameters[0].Value.SetWideString(hpid);
  FupdateIsUseParentCommand.Parameters[1].Value.SetWideString(chart);
  FupdateIsUseParentCommand.Parameters[2].Value.SetWideString(ParentChart);
  FupdateIsUseParentCommand.Parameters[3].Value.SetWideString(isUse);
  FupdateIsUseParentCommand.Parameters[4].Value.AsDateTime := modday;
  FupdateIsUseParentCommand.Execute(ARequestFilter);
  Result := FupdateIsUseParentCommand.Parameters[5].Value.GetBoolean;
end;

function TServerMethods1Client.GetParentChartList(hpid: string; chart: string; certno: string; const ARequestFilter: string): TFDJSONDataSets;
begin
  if FGetParentChartListCommand = nil then
  begin
    FGetParentChartListCommand := FConnection.CreateCommand;
    FGetParentChartListCommand.RequestType := 'GET';
    FGetParentChartListCommand.Text := 'TServerMethods1.GetParentChartList';
    FGetParentChartListCommand.Prepare(TServerMethods1_GetParentChartList);
  end;
  FGetParentChartListCommand.Parameters[0].Value.SetWideString(hpid);
  FGetParentChartListCommand.Parameters[1].Value.SetWideString(chart);
  FGetParentChartListCommand.Parameters[2].Value.SetWideString(certno);
  FGetParentChartListCommand.Execute(ARequestFilter);
  if not FGetParentChartListCommand.Parameters[3].Value.IsNull then
  begin
    FUnMarshal := TDSRestCommand(FGetParentChartListCommand.Parameters[3].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TFDJSONDataSets(FUnMarshal.UnMarshal(FGetParentChartListCommand.Parameters[3].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetParentChartListCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TServerMethods1Client.GetParentChartList_Cache(hpid: string; chart: string; certno: string; const ARequestFilter: string): IDSRestCachedTFDJSONDataSets;
begin
  if FGetParentChartListCommand_Cache = nil then
  begin
    FGetParentChartListCommand_Cache := FConnection.CreateCommand;
    FGetParentChartListCommand_Cache.RequestType := 'GET';
    FGetParentChartListCommand_Cache.Text := 'TServerMethods1.GetParentChartList';
    FGetParentChartListCommand_Cache.Prepare(TServerMethods1_GetParentChartList_Cache);
  end;
  FGetParentChartListCommand_Cache.Parameters[0].Value.SetWideString(hpid);
  FGetParentChartListCommand_Cache.Parameters[1].Value.SetWideString(chart);
  FGetParentChartListCommand_Cache.Parameters[2].Value.SetWideString(certno);
  FGetParentChartListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedTFDJSONDataSets.Create(FGetParentChartListCommand_Cache.Parameters[3].Value.GetString);
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FGetConnectionCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetDocuInfoCommand.DisposeOf;
  FGetDocuInfoCommand_Cache.DisposeOf;
  FGetDocuInfo_ChartCommand.DisposeOf;
  FGetDocuInfo_ChartCommand_Cache.DisposeOf;
  FGetNewonDongGiCommand.DisposeOf;
  FGetNewonDongGiCommand_Cache.DisposeOf;
  FGetPatientInfoChartCommand.DisposeOf;
  FGetPatientInfoChartCommand_Cache.DisposeOf;
  FGetPatientInfoNameCommand.DisposeOf;
  FGetPatientInfoNameCommand_Cache.DisposeOf;
  FGetPatInfo_termCommand.DisposeOf;
  FGetPatInfo_termCommand_Cache.DisposeOf;
  FGetPatientInfoJubsuCommand.DisposeOf;
  FGetPatientInfoJubsuCommand_Cache.DisposeOf;
  FisDataEmptyCommand.DisposeOf;
  FsaveDocuCommand.DisposeOf;
  FinsertDocuCommand.DisposeOf;
  FupdateDocuCommand.DisposeOf;
  FGetImgListInfoCommand.DisposeOf;
  FGetImgListInfoCommand_Cache.DisposeOf;
  FGetImgListDateCommand.DisposeOf;
  FGetImgListDateCommand_Cache.DisposeOf;
  FsaveOlearyCommand.DisposeOf;
  FGetOlearyDataCommand.DisposeOf;
  FGetOlearyDataCommand_Cache.DisposeOf;
  FGetOlearyData_dayCommand.DisposeOf;
  FGetOlearyData_dayCommand_Cache.DisposeOf;
  FGetPerioData_chart_dayCommand.DisposeOf;
  FGetPerioData_chart_dayCommand_Cache.DisposeOf;
  FGetPerioData_chart_allCommand.DisposeOf;
  FGetPerioData_chart_allCommand_Cache.DisposeOf;
  FsaveChijuCommand.DisposeOf;
  FGetChartDataCommand.DisposeOf;
  FGetChartDataCommand_Cache.DisposeOf;
  FGetConnection_easydentCommand.DisposeOf;
  FGetImgListInfo_dentroCommand.DisposeOf;
  FGetImgListInfo_dentroCommand_Cache.DisposeOf;
  FGetImgListDate_dentroCommand.DisposeOf;
  FGetImgListDate_dentroCommand_Cache.DisposeOf;
  FGetImageKind_dentroCommand.DisposeOf;
  FGetImageKind_dentroCommand_Cache.DisposeOf;
  FsaveOralExamCommand.DisposeOf;
  FGetOralExamDataCommand.DisposeOf;
  FGetOralExamDataCommand_Cache.DisposeOf;
  FGetPerioSelfDataCommand.DisposeOf;
  FGetPerioSelfDataCommand_Cache.DisposeOf;
  FsavePerioSelfCommand.DisposeOf;
  FGetTeethInfo_chart_allCommand.DisposeOf;
  FGetTeethInfo_chart_allCommand_Cache.DisposeOf;
  FGetTeethInfoDataCommand.DisposeOf;
  FGetTeethInfoDataCommand_Cache.DisposeOf;
  FSaveTeethInfoCommand.DisposeOf;
  FMemoSaveCommand.DisposeOf;
  FGetMemoCommand.DisposeOf;
  FGetMemoCommand_Cache.DisposeOf;
  FcntMissingCommand.DisposeOf;
  FGetImageInfoCommand.DisposeOf;
  FGetImageInfoCommand_Cache.DisposeOf;
  FGetImgPatientInfoChartCommand.DisposeOf;
  FGetImgPatientInfoChartCommand_Cache.DisposeOf;
  FGetImgPatientInfoJubsuCommand.DisposeOf;
  FGetImgPatientInfoJubsuCommand_Cache.DisposeOf;
  FGetImgPatientInfoNameCommand.DisposeOf;
  FGetImgPatientInfoNameCommand_Cache.DisposeOf;
  FGetImgPatInfo_termCommand.DisposeOf;
  FGetImgPatInfo_termCommand_Cache.DisposeOf;
  FPicSave_FtpPathCommand.DisposeOf;
  FGetPictureInfoCommand.DisposeOf;
  FGetPictureInfoCommand_Cache.DisposeOf;
  FSaveImageInfo_promiseCommand.DisposeOf;
  FGetImageInfo_promiseCommand.DisposeOf;
  FGetImageInfo_promiseCommand_Cache.DisposeOf;
  FGetTreeDataCommand.DisposeOf;
  FGetTreeDataCommand_Cache.DisposeOf;
  FtpChargeSaveCommand.DisposeOf;
  FDtxSaveCommand.DisposeOf;
  FGetPlanDataCommand.DisposeOf;
  FGetPlanDataCommand_Cache.DisposeOf;
  FGetPlanListCommand.DisposeOf;
  FGetPlanListCommand_Cache.DisposeOf;
  FGetReportInfoCommand.DisposeOf;
  FGetReportInfoCommand_Cache.DisposeOf;
  FReportSaveCommand.DisposeOf;
  FGetPromiseInfoCommand.DisposeOf;
  FGetPromiseInfoCommand_Cache.DisposeOf;
  FsavePromiseDataCommand.DisposeOf;
  FAllsavePromiseDataCommand.DisposeOf;
  FGetPromiseDataInfoCommand.DisposeOf;
  FGetPromiseDataInfoCommand_Cache.DisposeOf;
  FSavePromiseCommand.DisposeOf;
  FGetNoticeCommand.DisposeOf;
  FGetNoticeCommand_Cache.DisposeOf;
  FsaveNoticeCommand.DisposeOf;
  FGetJubsuCommand.DisposeOf;
  FGetJubsuCommand_Cache.DisposeOf;
  FsaveJubsuCommand.DisposeOf;
  FGetPatientInfoNAMENCHARTCommand.DisposeOf;
  FGetPatientInfoNAMENCHARTCommand_Cache.DisposeOf;
  FGetHpInfo_basicCommand.DisposeOf;
  FGetHpInfo_basicCommand_Cache.DisposeOf;
  FsaveHpinfo_basicCommand.DisposeOf;
  FGetHpInfo_BLECommand.DisposeOf;
  FGetHpInfo_BLECommand_Cache.DisposeOf;
  FsaveHpinfo_BLECommand.DisposeOf;
  FGetHpInfo_HTTPCommand.DisposeOf;
  FGetHpInfo_HTTPCommand_Cache.DisposeOf;
  FsaveHpinfo_HTTPCommand.DisposeOf;
  FsavePatientDeviceCommand.DisposeOf;
  FGetPatientDeviceCommand.DisposeOf;
  FGetPatientDeviceCommand_Cache.DisposeOf;
  FsaveQnaCommand.DisposeOf;
  FGetQna_MaxQidCommand.DisposeOf;
  FGetQna_MaxQidCommand_Cache.DisposeOf;
  FGetQnaListCommand.DisposeOf;
  FGetQnaListCommand_Cache.DisposeOf;
  FGetJubsuListCommand.DisposeOf;
  FGetJubsuListCommand_Cache.DisposeOf;
  FGetHelperPatientInfoCommand.DisposeOf;
  FGetHelperPatientInfoCommand_Cache.DisposeOf;
  FsavePushCommand.DisposeOf;
  FGetPushListCommand.DisposeOf;
  FGetPushListCommand_Cache.DisposeOf;
  FGetPatientInfoLoginInfoCommand.DisposeOf;
  FGetPatientInfoLoginInfoCommand_Cache.DisposeOf;
  FPromiseData_hanaro_gubunCommand.DisposeOf;
  FDeleteImageInfo_PromiseCommand.DisposeOf;
  FsaveMakedCouponCommand.DisposeOf;
  FsavePublishedCouponCommand.DisposeOf;
  FsavePersonalPublishedCouponCommand.DisposeOf;
  FGetMakedCouponListCommand.DisposeOf;
  FGetMakedCouponListCommand_Cache.DisposeOf;
  FGetHelperPatient_CouponList_InfoCommand.DisposeOf;
  FGetHelperPatient_CouponList_InfoCommand_Cache.DisposeOf;
  FsaveFaqCommand.DisposeOf;
  FGetFaqListCommand.DisposeOf;
  FGetFaqListCommand_Cache.DisposeOf;
  FsaveGogekBasicCommand.DisposeOf;
  FGetPatientInfoIDCommand.DisposeOf;
  FGetPatientInfoIDCommand_Cache.DisposeOf;
  FGetHPInfoCommand.DisposeOf;
  FGetHPInfoCommand_Cache.DisposeOf;
  FChangeJubsuCommand.DisposeOf;
  FDeleteNoticeCommand.DisposeOf;
  FDeleteFAQCommand.DisposeOf;
  FDeletePushCommand.DisposeOf;
  FGetJubsuListForCountCommand.DisposeOf;
  FGetJubsuListForCountCommand_Cache.DisposeOf;
  FGetLoginListCommand.DisposeOf;
  FGetLoginListCommand_Cache.DisposeOf;
  FGetNewMemberCountCommand.DisposeOf;
  FGetNewMemberCountCommand_Cache.DisposeOf;
  FGetPointListCommand.DisposeOf;
  FGetPointListCommand_Cache.DisposeOf;
  FGetPointSumCommand.DisposeOf;
  FGetPointSumCommand_Cache.DisposeOf;
  FGetHelperPatientInfo_onlyPatientCommand.DisposeOf;
  FGetHelperPatientInfo_onlyPatientCommand_Cache.DisposeOf;
  FUpdateGogekBasic_idJoinCommand.DisposeOf;
  FGetNewQnaListCommand.DisposeOf;
  FGetNewQnaListCommand_Cache.DisposeOf;
  FSaveParentCommand.DisposeOf;
  FupdateIsparentCommand.DisposeOf;
  FupdateIsUseParentCommand.DisposeOf;
  FGetParentChartListCommand.DisposeOf;
  FGetParentChartListCommand_Cache.DisposeOf;
  inherited;
end;

end.
