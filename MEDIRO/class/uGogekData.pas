unit uGogekData;

interface

uses
  Forms,
  SysUtils,
  Dialogs,
  Classes,
  IniFiles,
{$IFDEF MSWINDOWS}
  Windows, ShellApi,
{$ENDIF}
{$IFDEF POSIX}
  Posix.SysSysctl,
{$ENDIF}
  Controls,
  ComCtrls,
  stdCtrls, math,
  ExtCtrls, JPEG, graphics,
  AdvProgressBar,
  colCombo,
  advEdit,
  Vcl.CheckLst, AdvGrid,
  Winsock,

  uni, db,

  IdHTTP, IdURI,
  IdFTP, IdFTPList, IdFTPCommon, IdGlobal;
type
   TinfoJubsu = record
       doc_code  : string;
       treatRoom : string;
       isInpat   : string;
       rpPk      : string;
end;


//  TQueryThread = class(TThread)
//  private
//    FDatabase: TuniConnection;//DataBase;
//    FQuery: TUniQuery;
////    FDatasource: TDatasource;
//    FQueryException: Exception;
//    procedure ConnectDataSource;
//    procedure ShowQryError;
//  protected
//    procedure Execute; override;
//  public
//    constructor Create(
//      DataBase: TuniConnection;
//      Query   : TUniQuery); virtual;
//  end;



type
    TinfoReferHosp = record
            ReferHospID: string; // 의뢰병원Tabble ID
            ReferHospName: string; // 의뢰병원name
            ReferHospCode: string; // 의뢰병원Code
            ReferHospDoc: string; // 의뢰병원 원장명
            RHosp: string; // 의뢰병원 PACS
            RHospID: string; // 의뢰병원

                      {
          SELECT [id]
                ,[refercode]
                ,[hospname]
                ,[remark]
                ,[rhospPhone]
                ,[rhospPhone2]
                ,[rhosp]
                ,[rhospID]
                ,[regDay]
            FROM [dbo].[ma_referhosp]
            GO         }
end;

type
  { [LocExeNam] [varchar](100) NOT NULL,
    [LocUidCod] [char](8) NOT NULL,
    [LocIpAddr] [varchar](100) NOT NULL,
    [LocChtDtm] [char](12) NOT NULL,
    [LocOcmNum] [varchar](20) NULL,
    [LocPCNam] [varchar](50) NULL,
  }
  TLockStatResult = record
    aResult: boolean;
    LocUidCod: string;
    LocExeNam: string;
    LocIpAddr: string;
    LocPCNam: string;
    LocLevCod: string;
    LocUidCod_host: string;
    LocExeNam_host: string;
    LocIpAddr_host: string;
    LocPCNam_host: string;
    LocLevCod_host: string;

  end;

type

  TSignInfo = record
    signDate: string;
    parentname: string;
    parentPhone: string;
    parentJumin: string;
    lawRelation: string;

  end;

type

  TPosition = record
    X: integer;
    Y: integer;

  end;

type

  TOfficeInfo = record
    OfficeRemark: string;
    OfficeGubun: string;
    OfficeName: string;
    OfficeJikwi: string;
  end;

type
  TCallBack = procedure(Position, Size: Longint; filename: string); { export; }

type
  pTeam = ^TTeamInfo;

  TTeamInfo = record
    team_key: string;
    team_doctor1: string;
  end;

type
  PMyRec = ^TMyRec;

  TMyRec = record
    PName: string;
    PChart: string;
    PreferName: string;
    PreferChart: string;
    PNaewonilsu: integer;
    Pkeyman: string;
    PSumsunapEk: string;
    PSumMisuek: string;
    Pfamid: string;
  end;

type // Find_Chk_item_Row ==> Find Grid Row
  TGridFindText = record
    varCol: integer;
    varRow: integer;
  end;

var
    nJubsuCnt        : integer;
    nInPatCnt        : integer;
    nSunapTotalCnt   : integer;
    nSunapWaitCnt    : integer;
    nSunapCnt        : integer;
    nPromiseCnt      : integer;
    nWaitCnt         : integer;


  isNeyukLoad: boolean; // 내원이력을 클릭해서 자료 가져옴.

  // Referal Pad
  ma_rp_active: boolean;
  ma_rp_RequestPK: integer;
  ma_rp_RequestUserToken: string; // HPACS를 열때 필요한 병원 ID

  ma_idn: integer;
  ma_Sogeidn: integer;
  ma_Chart: string;
  ma_Jumin_error: string;
  ma_Chamgo: string;
  ma_Chamgo2: string;
  ma_famid: string;
  ma_PiboName: string;
  ma_Piboid: string;
  ma_Kiho: string;
  ma_ReferKind: string;
  ma_o_Juso2: string;
  ma_o_jikwi: string;
  ma_o_phone: string;
  ma_c_Phone: string;
  ma_Mail: string;
  ma_Paname: string;

  ma_jubsu_date: TdateTime;

  ma_PaEngName: string;
  ma_SogeName: string;
  ma_SogePhone: string;
  ma_h_juso: string;
  ma_h_id: string;
  ma_h_zip: string;
  ma_h_phone: string;
  ma_refer: string;
  ma_referid: string;
  ma_extra: string;
  ma_Special: string;
  ma_pregnan: string; // 임신여부
  ma_o_zip: string;
  ma_kwan: string;
  ma_jumin: string;

  ma_ReferHospID: string; // 의뢰병원Tabble ID
  ma_ReferHospName: string; // 의뢰병원name
  ma_ReferHospCode: string; // 의뢰병원Code
  ma_ReferHospDoc: string; // 의뢰병원 원장명
  ma_RHosp: string; // 의뢰병원 PACS
  ma_RHospID: string; // 의뢰병원

  ma_refer_neyuk: string;

  ma_GaipKind: string;

  ma_hira_Jong: string; // hira taked JongBeul
  ma_jongbeul: string;
  ma_ChasangNo: string; // 차상위등록번호 C코드

  ma_choje: integer; // 초재
  ma_healthSanCode: integer; // 검진코드
  ma_jinTime: string;
  ma_PatIn: integer; // 입원코드

  ma_isBohum100:string;

  ma_oldchart: string;

  ma_jumin_y: string;
  ma_last: string;
  ma_kamen: string;
  ma_jumin_Check: string;
  ma_first: string;
  ma_office: string;

  ma_apply_Day: string;
  ma_K_Number: string;

  ma_budam: string;

  ma_sanjung: string; // 2011.11.9

  ma_teakrye: string;
  ma_teakryeCode: string; // ma_gogek_basic

  ma_janek: string;

  ma_artTeeth1: string; // 2012.7.1
  ma_artTeeth2: string; // 2012.7.1
  ma_artYoyang1: string;
  ma_artYoyang2: string;

  // ver.2.133 임플란트 등록번호
  ma_implTeeth1: string;
  ma_implTeeth2: string;

  ma_implYoyang1: string;
  ma_implYoyang2: string;

  ma_jangeil: string;
  ma_cancelDay: string;
  ma_overseas: string; // Y, N

  ma_RestrictCd: string; // 급여제한 여부  "01 : 무자격자 02 : 보험료체납 급여제한자"
  ma_JohoiDate: string;

  ma_Sunkiho1, ma_Sunkiho2, ma_Sunkiho3, ma_Sunkiho4: string;

  ma_team: string;
  ma_doc: string;
  ma_hyg: string;

  ma_jubsuteam: string;
  ma_jubsudoc: string;
  ma_jubsuhyg: string;

  ma_birth: string;
  ma_moon: string;
  ma_sms: string;
  ma_sms2: string;
  ma_sms3: string;
  ma_SogeChart: string;

  ma_jeju43: string;

  ma_piboJuso, ma_piboZip, ma_pibophone, ma_infosave, ma_chartSaveOk, ma_pname1,
    ma_pname2: string;

  varviewAll: boolean;
  varLoadOrderKind: string; // 접수리스트 순서표시 - 내림/오름
  EasyMode: integer;

  varTreeFontSize: integer;
  varTreeViewArray: array of TTreeview;

  famcode: integer; // 가족코드
  varPidn2: string;

  Jabo_ID: string; // 자동차보험 ID ===  select ID, * from ma_car_info

  PatImagename: string; // Enlarge Image Name

  FamilySearch: string; // 가족차트 구분법
  PromiseMode: boolean;
  starttime, finishtime, timeinterval, rowinterval, columncount: integer;

  isLoading: boolean; // 환자를 검색해서 불러오는 중이다.
  loadResult: integer; // 환자 검색 결과,

  isReferer: boolean; // 협진환자를 불렀다 true  fieldSet 에서 초기화

  loadResultSoge: integer;
  LoadResultReferHosp: integer;

  cidFormCount: integer;

  isPromiseRegi: boolean;
  PromiseIdn: string;

  picpath: string;
  picpath_face: string;

  currentDir: string;
  pickind: string;

  nStatus : integer;  //대기표 갱신을 위한 전역변수

  V_PGKIND, V_UserId, V_UserPass, V_UserName, V_DptName, V_UserCd, V_Version,
    V_Dbip, V_fileip, V_Power: string;

  // 수납 그리드에서 불러가는 값들
  ma_Jubsu_ID: string;
  ma_SunapChoje: integer;
  ma_SunapJong: integer;
  ma_sunapGumjin: integer;
  ma_PrIdn: string;
  ma_sunapDate: string;
  ma_InOut: boolean; // 입원/외래 구분  true : In / false : out
  ma_jinryo_pid: string;

  // 수납저장시에 수납에서 별도 원장을 선택할 필요가 없다.
  // 진료실코드, 원장코드 , 원장명을 변수로 잡아서 대기그리드와 수납그리드를 선택할땨 가져오자.

  ma_docCode: string;
  ma_docName: string;
  ma_treatRoom: string;

  ma_sunapChong, ma_sunapChung, ma_sunapBonin1, ma_sunapBonin, ma_misuEk: integer;

  isParent, isSelf: boolean;
  CurrentNode: TTreeNode;
  CurrentPos: Char;
  GhostNode: TTreeNode;
  nodeIndex: integer;

  varGogekGroup: array of string;

  dispchart2: string;

  qi, qitree, qifind: integer;
  referchart: string;
  b_referchart: string;
  b_chart: string;

  o_referChart: string; // 검색하는 chart의 소개자chart

  varNewonDongGiGroup: array of string;
  varSogeGroup: array of string;
  tempDongGiCheckBox: array of TCheckBox;

  X, Y, i: integer; // 소개 콤보 불러오는 변수들



  //

  varGridTag: string;
  varGridprIdn: string;
  varGridChair: string;
  varGridPrTeam: string;
  varGridJubsuId: string;

procedure ClearGogekValue;
function GetRefererID: integer;
function GetReferHospID: integer;

function GetFavoriteOrderNo: integer;
function deleteFavoriteSuga(id: string): boolean;

procedure SeqUpdate(chartNo: string);
function ChartNoCreate(TeamKind: string; varname: string = '';
  varjumin: string = ''): string;
function ChartRuleProof(VarChart: string): boolean;

function isEmptyGogekBasic(chart: string): boolean;
function isChartNoEmpty(VarChart: string): boolean;

function saveGogekBasic(chart: string; paname: string; paEngName: string;
  jumin: string; pibo_id: string; kwan: string; refer_id: string;
  fam_id: string; special: string; birth: string; moon: string;
  first_day: string; last_day: string; reg_day: string; team: string;
  Doc: string; Hyg: string; refer_chart: string; refer_name: string;
  refer_neyuk: string; chamgo: string; bontype: string; janek: string;
  sms: string; artTeeth1: string; artTeeth2: string; sanjung: string;
  sms2: string; sms3: string; infoSave: string; pname1: string; pname2: string;
  chartSaveOk: string; Pregnan: string; chasangNo: string): boolean;
function isEmptyChart(chart: string): boolean;

function updateGogekTeam(chart: string; Doc: string; Hyg: string;
  team: string): boolean;

function saveGogekpibo(id, chart: string; PName: string; k_number: string;
  jongbyul: string; h_zip: string; juso: string; kiho: string; phone: string;
  apply_day: string; reg_day: string; bontype: string; janek: string;
  bonsanjung: string; teakrye: string; teakryecode: string; artTeeth1: string;
  artTeeth2: string; implTeeth1: string; implTeeth2: string;
  implYoyang1: string; implYoyang2: string; artYoyang1: string;
  artYoyang2: string; sunkiho1: string; sunkiho2: string; sunkiho3: string;
  sunkiho4: string; Pregnan: string; chasangNo: string; johoidate: string;
  jange: string; restricted: string; cancelDt: string; hira_Jong: string;
  sedejuNm: string): string;

function saveGogekPhone(id, chart, phone: string; sms: string; kind: string;
  reg_day: string; varname: string): string;
function saveGogekEmail(chart, email: string; reg_day: string): boolean;

function saveGogekReferHosp(chart, refercode: string; docname: string;
  jin_day: string): boolean;

function saveGogek43(chart, jungno: string; reg_day: string): boolean;
function saveGogekAddress(id, chart, postid, zipcode, juso, kind: string;
  reg_day: string): string;


function LoadEngSangName(s_key: string): string;


function DeleteGogekPhone(id: integer): boolean;
function LoadGogekPhone(chart, kind: string): string;

function jubsuSave(VarChart, varTeam, varDoc, varHyg, vargubun, varday: string;
  varTime: TdateTime; varFirst, varjumin, varArea, varname, varcphone,
  varprmemo, varprremark, varpridn, varprtime: string; jongbyul: integer;
  choje: integer; sanjung: string; // teakrye
  teakryecode: string; health: integer; Pregnan: string; chasangNo: string;
  bontype: string; yujikum: string; kwamok: string; treatRoom: string;
  isInpat: string; inPat_Time: string; rpPK: integer; isOutPat: string;
  outPat_Time: string; jaboID: integer; doc_code: string; isJiwon:string;
  isBohum100 : string;
  artTeeth1: string = ''; artTeeth2: string = ''; implTeeth1: string = '';
  implTeeth2: string = ''; varJubsuKind: integer = 0): integer;

function ChangeStatus(varname: string; varday: TdateTime; varTeam: string;
  doc_code: string; VarChart: string; varStat: string; vargubun: string;
  varJubsuID: string; varChair: string = '0'): boolean;

function Update_jubsuRpPk(varID : integer; Jubsu_rpPk:integer): boolean;


function ChangeStatus_JubsuID(varID: string): boolean;
// 아이디로 대기상태 변경, 같은 체어에 환자 있을때 미리있던 체어를 수납대기로 보낸다.
function Update_jubsuChamgo(varID, varChamgo: string): boolean; // 대기 참고사항 변경

function ChangeStatus_JubsuID_OutPat(varID: string; outPat_Time: TdateTime)
  : boolean; // 접수 아이디로 퇴원처리
function ChangeStatus_JubsuID_Cancel_INpat(varID: string): boolean;
// 접수 아이디로 입원취소 처리
function ChangeStatus_JubsuID_Cancel_OutPat(varID: string): boolean;
// 접수 아이디로 퇴원취소 처리

function saveBonType(VarChart, varbontype, varsanjung, varartTeeth1,
  varartTeeth2, varYoyang1, varYoyang2, varimplTeeth1, varimplTeeth2,
  varimplYoyang1, varimplYoyang2, varSunkiho1, varSunkiho2, varSunkiho3,
  varSunkiho: string): boolean;

// function Loadpiboinfo(pname, k_number, kiho: string): Boolean;
function LoadGroupDataQuery(Querykind: integer = 0): string;
function LoadSunapDataQuery: string;
function LoadChartDataQuery: string;
function LoadPlanDataQuery: string;

function Loadpiboinfo(chart: string): boolean;
function LoadGubunName(GubunCode: string): string;

function loadTeamName(varTeam: string): string;
function loadTeamKey(varTeamName: string): string;

function GogekExist(chart: string): boolean;

// 진료항목명
function loadHanMokName(varCode: string): string;

function loadJinjryosil(varCode: string): string;

function loadJongByulName(varCode: string): string;
function loadChojeName(varCode: string): string;

procedure SawonWorkUpdate(SwCode: string; SwId: string; SwName: string;
  SwDate: string; SwTime: string; SwWork: string; SwRemark: string;
  SwProcess: string; SwSect: string; SwRefer: string; modday: TdateTime;
  sect: string; endday: TdateTime; SwDisp: string; endtime: string; SwTitle:string);
procedure SawonWorkSave(SwCode: string; SwId: string; SwName: string;
  SwDate: string; SwTime: string; SwWork: string; SwRemark: string;
  SwProcess: string; SwSect: string; SwRefer: string; regday: TdateTime;
  modday: TdateTime; sect: string; endday: TdateTime; SwDisp: string;
  endtime: string; SwTitle:string);

procedure TelRecUpdate(TrCode: string; TrName: string; TrChart: string;
  TrDate: string; TrTime: string; TriTime: string; TrRemark: string;
  subject: string; receiver: string; transfer: string; degree: string;
  TrNumber: string);
function TelRecUpdate2(TrCode: string; TrName: string; TrChart: string;
  TriTime: string; TrRemark: string): boolean;
function TelRecSave(TrCode: string; TrName: string; TrChart: string;
  TrDate: string; TrTime: string; TriTime: string; TrRemark: string;
  subject: string; receiver: string; transfer: string; degree: string;
  TrNumber: string; gubun: string; TrCode2: string = ''): boolean;
procedure Savereferer(varID, VarChart, varSogeja, varHomePhone, varcellPhone,
  varCharactreristic, varSogeSite, varRegDay: string);
procedure SaveRefer(varSogepath, varSogeContent, varRegDay: string);
function CheckJubsu(varDate: TDate; varDate2: TDate; VarChart: string): boolean;

function LoadJubsuinfo(chart: string; varJinday: string): boolean;
function LoadTeaminfo(chart: string): string;

function loadInfoJubsu(jubsu_id: string): TinfoJubsu;
//ToDO : 자주 접수상태를 변경하는 경우가 발생하는데 의사가 환자를 열어놓은 상태에서
//접수대에서 바꿔는경우 상태가 전달되지 않아 의사가 저장을 한 후 새로 접수된 상태로 환자를
//꺼내면 저장한 진료정보가 보이지 않는다.
//의사가 완료나 보류를 할때 접수아이디로 접수상태를 다시 체크해서 접수된 원장/진료실로 저장하자.

function SaveToBmpData(VarChart: string; varday: string; varKind: string;
  varFile: string; sunapEk: integer = 0; sunapday: string = '';
  sunapneyuk: string = ''; varX: integer = 0; varY: integer = 0;
  varFile2: string = ''; parentname: string = ''; parentPhone: string = '';
  parentJumin: string = ''; lawRelation: string = ''): boolean;
function LoadToBmpData(VarChart: string; varday: string; varKind: string;
  varPic: Timage; varFile: string): string;
function LoadToBmpData2(VarChart: string; varday: string; varKind: string;
  varPic: Timage; varFile: string; varPic2: Timage = nil; varFile2: string = '')
  : TSignInfo;
// function LoadToBmpData_Tablet(varChart: string; varDay: string; varKind: string; varPic: Timage; varFile: string): string;

function LoadToBmpData_position(VarChart: string; varday: string;
  varKind: string; varPic: Timage; varFile: string): TPosition;

function chongMisuCalc(chartNo: string; varView: boolean = false): double;
function chongMisuCalc2(chartNo: string): double;
function getCardYoyul(varCardName: string): double;

procedure JinryoPYoungsunumUpdate(chart, jin_day, youngsu_num: string);

procedure updateJinryoP_isRes(jinryo_pid: string; isRes: string);
// 검사를 전송하면 1, 전송전 0

procedure updateJinryoP_PiboInfo(jubsu_id: string;
  k_number, kiho, piboName: string); // 피보험자 없는 경우 청구점검에서 업데이트,

procedure JinryoPSunapekInit(jinryo_pid: string); // 수납 취소시 수납금액 초기화

procedure JinryoPSunapStateUpdate(jinryo_pid, sunapState: string);

function NewYoungsuNo(jin_day: TdateTime): string;
function makeNewYoungsu(jin_day: TdateTime): string;
function ChangeJubsuFast(varday: string; VarChart: string;
  varStaus: string): boolean;
function ChangeJubsuOrderNum(varday: string; VarChart: string;
  varNorder: integer): boolean;

function updateGogekRemark(chart: string; chamgo: string): boolean;

function saveOffice(chart: string; gubun: string; jikName: string;
  jikWi: string; reg_day: string): boolean;
function LoadOffice(chart: string): TOfficeInfo;

function saveModelNo(chart: string; Mno: string; reg_day: string): boolean;
function LoadModelNo(chart: string): string;

function LoadReferHospID(hospCode: string): string;
function LoadReferHospName(hospCode: string): string;
function LoadReferHospInfo_from_ma_referHosp(refercode: string): TinfoReferHosp;


procedure  AlterTable;



// imageinfo Save
procedure DbSave(VarChart: string; varDate: TdateTime; varFileKind: string;
  varFileName: string; varShotType: string = '3'; varKind: string = '';
  varOrigFileName: string = ''; varFoldername: string = '';
  varUpperFolder: string = '');

// procedure ClipboardSave(varChart, varFileName: string);

procedure insertImgStorage(VarChart: string; varKind, nord: integer;
  filename: string; varDate: string; aKind: string; treatkind: string = '000';
  treatorder: string = '0'; destfolder2: string = '');
procedure UpdateImgStorage(filename: string; treatkind: string = '000';
  treatorder: string = '0'; destfolder2: string = '');

function DeleteImgStorage(VarChart: string; varKind: integer; nord: integer;
  filename: string): boolean;
function UpdateUsedImageinfo(VarChart: string; filename: string;
  varUsed: string; varDate: string): boolean;
function DeleteImageinfo(VarChart: string; filename: string): boolean;
function RenameCapImageinfo(VarChart: string; filename: string;
  cap: string): boolean;
function RenameFolderCapImageinfo(VarChart: string; UpperFolder: string;
  filename: string; cap: string): boolean;

function LoadTeam_PromiseGubun(varTeam: string): string; // pr_gubun필드값으로 쿼리 생성
function LoadTeam_PromiseGubunCount(vargubun: string): integer;
// pr_gubun필드값으로 postion갯수 파악
function LoadTeam_PromiseGubunCount_team(varTeam: string): integer;
// 팀에 사용된 Position 갯수
function LoadTeam_PromiseGubunStart(varTeam: string): integer;
// 첫 숫자로 컬럼 시작위치 재설정용

// Vceph폴더 찾기
procedure find_fileInfo(varKind: integer; path, VarChart: string;
  varFolder1: string = ''; destFolder: string = ''; destfolder2: string = '');

procedure AllSync_Vceph(VarChart: string; varPath: string);

// function  LoadPatientGroupData(varChart: string): string;
// function  LoadNewonDonggi(varKind, varChart: string; varCount:
// integer; savekind: integer = 0) : string;
procedure FastFileCopy(const InFileName, OutFileName: string;
  CallBack: TCallBack);

procedure SaveInitoDB(varKind, varname: string);
function LoadIniFromDB(varKind, varname: string): boolean;
procedure saveImagechartinfo(VarChart: string; varCount: string;
  varFoldername: string; varUserID: string; varFileName: string;
  varKind: string = '');
procedure saveRecFile(VarChart: string; varCount: string; varFoldername: string;
  varUserID: string; varFileName: string; varKind: string = '');
procedure updateImagechartinfo(VarChart: string; varIndex: integer;
  varKind: string = '');
procedure DeleteImagechart(VarChart: string; varFileName, varFoldername: string;
  varKind: string = '');
procedure updateImagechartToSunapJangbu(VarChart: string;
  varFileName, varFoldername: string);

procedure insertSnj2(varday: string; varHyun, varHyunReceipt, varCard,
  varTong: integer); // 년마감 별도 디비 저장

function isSendAllowSMS(VarChart: string): boolean;
function LoadPlanName(VarChart: string): string;
function LoadFirstDay(chart: string): string;

function LoadJuminNo(chart: string): string;

procedure ReviewTree_pat(varCahrt: string; varName1: string; ParentNo: string;
  Treeview: TTreeview; TreeNode: TTreeNode);
procedure ReviewTree_sub_pat(ParentNo: string; Treeview: TTreeview;
  TreeNode: TTreeNode);
function LoadPath(VarChart: string): string;
procedure FreeTreeItem(aTree: TTreeview);
function GetTeamCode(Strings: TStrings; iItemIndex: integer): string;

procedure DisplayNewonDongGiGroup(scroll: TScrollBox; GroupRemark: string);
procedure LoadNewonDongGiGroup(scroll: TScrollBox; varCode: string);
procedure LoadNewonDongGiGroup2(fpanel: TFlowPanel; varCode: string);

procedure ClearNewonDongGiGroup(scroll: TScrollBox; varCode: string);
function LoadNewonDongGiData(scroll: TScrollBox; VarChart: string): string;
function LoadNewonDongGiData2(fpanel: TFlowPanel; VarChart: string): string;

procedure CreateTable;
procedure CreateTrigger;

procedure AltergogekView;
function DatabaseUpdate(varDBname: string): string;
procedure TableUpdate;
procedure insertDefaultData;
function LoadVipNumber(VarChart: string): string;
procedure SaveVipNumber(VarChart, idno, vipnumber: string);

function UpdatePromiseCPhone(idn: integer; VarChart: string;
  varcphone: string): boolean;
function UpdatePromiseNewRegi(varIdn: string; VarChart: string): boolean;
function isNewPatient(VarChart: string): boolean;
function PatientDeleteAll(VarChart: string; deleteKind: integer = 0): boolean;
function PatientDelete_sunap(VarChart: string): boolean;
function PatientDelete_plan(VarChart: string): boolean;
function PatientDelete_chart(VarChart: string): boolean;
function LoadPatientGroupData(VarChart: string; delimiter: string = '/')
  : TstringList; // 환자구분
function LoadPatientSectFromChart_s(VarChart: string): string;
// 진료구분 신환, 진단, 1차교정...
function LoadPatientStatusFromChart_s(VarChart, varJinday: string): string;
// 진료상태 , 기준일을 기점 이후 예약, 접수내역있으면 치료중, 없으면 치료중단

function SMSManagerUpdate(VarChart: string): boolean;

procedure DobuneNewonSave(VarChart: string; varday: string; varKind: string);

procedure SaveChartSignData(varChartSeq: double; varKind: string;
  varFile: string);
function LoadChartSignData(varChartSeq: double; varKind: string; varPic: Timage;
  varFile: string): boolean;
procedure insertInsurenceCode;

function saveDbcert(varChartComment, varSignCert, varElectsignedData,
  varPKCS7SignedData, varTimeStamp, varChartSseq: widestring): boolean;
function UpdateChart_Scert(varChartSseq: string): boolean;

function changeChartNo(oldChart: string; newchart: string): boolean;

procedure getSugaUpdte;
procedure getSugaUpdte2017;
procedure getSugaUpdte201707;

procedure getSugaUpdte201801; // Procedure 업데이트

function ChartSizeUp: boolean;
procedure insertSangByung(s_key, s_kor_name, s_eng_name, use, rate, sinsul,
  bul: string);
function selectPromiseCount(chart: string; pday: string): integer;

// Face image save functions
procedure PicDelete(VarChart: string);
procedure PicSave(VarChart, varFile, varFileType: string);
procedure ftpFaceImageSave(chart: string; varFileName: widestring);
procedure PicSave_FtpPath(VarChart, varFile, varFileType: string);
function FtpImageUp(VIdFtp: TidFtp; filename: TFileName; FolderName: string;
  HostIp: string; folder2: string = ''; varSaveFilename: string = ''): boolean;
procedure FTPMakedir(VIdFtp: TidFtp; TargetDir, DirMake: string);
function FindDirectory(VIdFtp: TidFtp; TargetDir, DirMake: string): boolean;

procedure LoadDocList(DocList: TColumnComboBox; team_key: string);
procedure LoadDocList2(DocList: TColumnComboBox; team_key: string); // 버릴거...


function LoadDocName(team, doc_code: string):string;
function LoadDocEngName(team, doc_code: string):string;

function LoadDocNameFromSawon(team_key: string): string;
function LoadDocNameFromTeam(team_key: string): string;
function LoadDocNameFromSawonWithID(saID: string): string;
function LoadDocEngNameFromSawonWithID(saID: string): string;
function LoadDocEngNameFromSawonWithMyunhu(saID: string): string;  //면허번호로 영문 원장이름 불러오기


function loadWonJuminNo(saID: string): string;

// Referalcode Jinryo Save
function saveReferalPad_Jinryo(jins_key: string; requestPK: integer): boolean;

// Bit Orderinfo 옵티멈
function saveOrderInfo(ikind: integer; orderID: string; accessionID: string;
  jin_sid: string; chart: string; hname: string; ename: string; birth: string;
  gender: string; age: string; su_kor_name: string; su_eng_name: string;
  doctor: string; sector: string; order_day: string; order_time: string;
  su_key: string; jin_ilsu: string; reserve_time: string; emergency: string;
  sect: string; modality: string; studyID: string; treatRoom: string;
  docname: string; referHospCode: string; remark:string; isHealth:string): boolean;

function saveOrderInfo_updateEngName( // Worklist 환자정보 수정
  orderDay: string; chart: string; hname: string; ename: string; birth: string;
  gender: string; age: string; referhospcode:string): boolean;


function saveOrderInfo_updateIhealth(orderDay: string; chart: string;
 // Worklist 기초 건강정보 수정
  ikind: string): boolean;


function returnJongByul(iJongByul: integer): string;
function returnChojae(iChojae: integer): string;

function LoadReferHosp_Doc(hospCode: string): TstringList;

function SaveRefererHosp(refercode, hospName, rhospPhone, rhospPhone2, remark,
  rHosp, rhospID, regday: string): boolean;
function DeleteRefererHosp(refercode : string): boolean;

procedure SaveRefererHosp_Doc(refercode, docname, DocPhone, DocCode,
  regday: string);

procedure loadChkList(richEdit: Trichedit; chart: string);

Function loadLockState(chart: string; jin_day: string): TLockStatResult;
Function loadLockState2(chart: string; jin_day: string; IPAddr: string)
  : TLockStatResult;

Function ReleaseLockAnother(chart, LocExeNam, LocUidCod,
  LocIpAddr: string): boolean;
Function ReleaseLockAll(LocExeNam, LocUidCod, LocIpAddr: string): boolean;
Function ReleaseLockOneChart(chart, LocExeNam, LocUidCod, LocIpAddr: string)
  : boolean; // 강제로 끊기

Function ExcuteLock(LocExeNam, LocUidCod, LocIpAddr, LocChtNum,
  LocPCNam: string): boolean;
Function GetIPAddress(): String;
function GetLocalComputerName: string;

function updateJinryo_p_Team(chart, jin_day, team, doc_code, old_Team,
  old_doc_code: string): boolean;
function updateJinryo_s_Team(chart, jin_day, team, doc_code, old_Team,
  old_doc_code: string): boolean;
function updateJinryo_o_Team(chart, jin_day, team, doc_code, old_Team,
  old_doc_code: string): boolean;
function updateHxCC_Team(chart, jin_day, team, doc_code, team_old, doc_code_old: string): boolean;
function updateHxCC_Team_jubsuID(chart, jin_day, jubsu_id , team,doc_code:string): boolean;

function updateJinryo_s_GubGu(chart, jin_day, team, doc_code: string;
  gub_gu: string): boolean;
//  gub_gu: integer): boolean;

function LoadGogekData_chart(chart: string; varStatusBar: TadvProgressbar;
  viewAll: boolean = false): boolean;
procedure LoadGogekValue;

function JinryoPSave(jubsu_id, chart, jin_day, kwamok, jongbeul, k_number,
  piboName, kiho, dup, nai, chojae, gasan, gub_gu, chong, chung, kamak,
  sunsugeum, misugeum, sunapak, junsanchaek, jubsuak, youngsu_num, kam_code,
  kam_rate, kam_sayu, jin_gu, kyulkwa, doc_code, jinryosil, jin_time, jin_user,
  sunap, gongsang, jojae11, jojae21, bonin, bonin1, makam, jusa, whan_day,
  whan_time, whan_user, account, whanbulak, card, cardcode, cardname, JojaeIn,
  JojaeOut, extra, wonwes, team, remark, chart_id, cmemo, SunsuCard, SunsuTong,
  SunsuCash, sunsucardcode, sunsucardname, sunsutongcode, sunsutongname, Cash,
  Tong, TongName, TongCode, Makam_day, Makam_time, Makam_chk, wein, Tjung,
  HwakinNo, bontype, yujikum, Makam_Sabun, car_Id, satGasan: string;
  Pregnan: string; sanjungTeakRye: string;
  isInpat: string;
  isBohum100:string;
  isJiwon:string;
  isAnother: string = ''): integer;
procedure JinryoPUpdate(jubsu_id, chart, jin_day, jongbeul, k_number, piboName,
  kiho, dup, nai, chojae, gasan, gub_gu, chong, chung, jubsuak, kyulkwa,
  doc_code, jin_time, jin_user, sunap, gongsang, bonin, bonin1, extra, team,
  wein, Tjung, HwakinNo, bontype, yujikum, car_Id, satGasan, Pregnan,
  sanjungTeakRye, Makam_Sabun: string; isInpat: string; isBohum100:string; isJiwon:string);

procedure SunapView(vkind: string; Agrid: TadvStringGrid; out nCount:integer; chart: string = '';
  daeGiDate: string = '');

procedure CountDaegi(jin_day:string; isAF:boolean;
    out nJubsuCnt:integer;
    out nWaitCnt:integer;
    out nInPatCnt:integer;
    out nPromiseCnt:integer;
    out nSunapTotalCnt:integer;
    out nSunapWaitCnt:integer;
    out nSunapCnt:integer);

function LoadExample_Teakrye(val: string): string;

function checkClientProxynRun: boolean;
function SaveTJung(kind: integer; TjungID, jubsu_id, chart, jin_day, RefTyp,
  jin_skey, julNo, RefCod, RefCmt, modday, userID, su_key: string): boolean;

function Find_Chk_item_Row(varGrid: TadvStringGrid; Chk_item: string)
  : TGridFindText;
procedure loadTjungHx(advstringGrid: TadvStringGrid;
  chart, jin_day, jubsu_id: string; kind: integer = 0);
procedure SaveCC(memo: TRichEdit;//Tmemo;
  Jubsu_ID: string; chart: string; treatRoom: string;
  doc_code: string; jin_day: string; isInpat: string);


  procedure SaveLabRemark(
     memo: Tmemo;
     Jubsu_ID: string;
     chart: string;
     jin_day: string );


function countSunapdaegi(startDay, finalday: string): integer;

function saveRequest(
  rpPk  : integer;
  aState: string; // , char(1),>
  refercode : string;
  userToken: string; // , varchar(80),>
  patientID: string; // , nvarchar(50),>
  jwt: string; // , varchar(350),>
  jwtExpTime: string; // , char(13),>
  cosign: string; // , char(1),>
  hospitalEmail: string; // , varchar(30),>
  hospitalName: string; // , nvarchar(50),>
  hospitalPhone: string; // , varchar(13),>
  doctorName: string; // , nvarchar(50),>
  patientName: string; // , nvarchar(50),>
  patientPhone: string; // , varchar(13),>
  content: string; // , ntext,>
  viewHospital: string; // , char(1),>
  viewAdmin: string; // , char(1),>
  dynCatePK: integer; // , int,>
  dynContent: string; // , ntext,>
  dynDate: TdateTime; // , smalldatetime,>
  studyDate: TdateTime; // , smalldatetime,>
  requestDate: TdateTime; // , smalldatetime,>
  modifyDate: TdateTime; // , smalldatetime,>)
  out id: integer): boolean;

  function  saveRequestComplete(
           requestPK        : integer;// int,>
           chartNo          : string;//, nvarchar(50),>
           yearNo           : string;// nvarchar(50),>
           residentNo       : string;//, varchar(14),>
           patientName      : string;//, nvarchar(50),>
           patientAddr      : string;//, nvarchar(150),>
           patientPhone     : string;//, varchar(13),>
           disease          : integer;//, tinyint,>
           diseaseComment1  : string;// ntext,>
           diseaseComment2  : string;// , ntext,>
           comment          : string;// , ntext,>
           doctorName       : string;// , nvarchar(50),>
           hospitalName     : string;// , nvarchar(50),>
           hospitalAddr     : string;// , nvarchar(150),>
           hospitalPhone    : string;// , varchar(13),>
           publicationDate  : TdateTime;// , date,>
           requestDate      : TdateTime;// , smalldatetime,>)
           out ID : integer) : boolean;

function updateTblStatus(nowDate: TdateTime): boolean;

function updateStatusCnt(nowDate: TdateTime; gubun:string; doc_Code, team : string): boolean;


const
  ageFilterQry =
    'select DISTINCT chart from ma_gogek_basic                                '
    + #10#13 +
    'where                                                                    '
    + #10#13 +
    ' case when isNumeric(jumin) = 1 then                                     '
    + #10#13 +
    ' Cast(Year(GetDate()) As Integer) -                                      '
    + #10#13 +
    '         Cast(SubString((                                                '
    + #10#13 +
    '         Case  When SubString(jumin, 7, 1) = ''1'' Then ''19'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''2'' Then ''19'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''3'' Then ''20'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''4'' Then ''20'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''5'' Then ''19'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''6'' Then ''19'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''7'' Then ''20'' + jumin   '
    + #10#13 +
    '               When SubString(jumin, 7, 1) = ''8'' Then ''20'' + jumin   '
    + #10#13 +
    '         Else ''20'' + jumin End),1,4) As Integer)                       '
    + #10#13 +
    ' else 0 end  >= 20                                                       ';

var
  varOfficeGubunArray: array [0 .. 19] of string = (
    '',
    '초등학교 1학년',
    '초등학교 2학년',
    '초등학교 3학년',
    '초등학교 4학년',
    '초등학교 5학년',
    '초등학교 6학년',
    '중학교 1학년',
    '중학교 2학년',
    '중학교 3학년',
    '고등학교 1학년',
    '고등학교 2학년',
    '고등학교 3학년',
    '대학교 1학년',
    '대학교 2학년',
    '대학교 3학년',
    '대학교 4학년',
    '대학원 1학년',
    '대학원 2학년',
    '대학원 3학년'
  );

function LoadNextPromiseDay(VarChart, varPday: String): string;
function LoadNextRecallDay(VarChart, varPday: String): string;

function isHavingJinryo(jubsu_id: string; VarChart: string; varday: string;
  varTeam: string; doc_code: string; isInpat: string): boolean;

function JubsuDelete(jubsu_id: string; VarChart: string; varday: string;
  varTeam: string; doc_code: string; isInpat: string;
  jubsuDatetime:Tdatetime;
  isNHIC: boolean = false): boolean;
function JinryoDelete(jinryo_pid: string; VarChart: string; varday: string;
  varTeam: string; doc_code: string; isInpat: string): boolean;

function loadStopState(VarChart: string): boolean;

function hasSunapFinalinfo(VarChart: string): boolean;
function SunapFinalDate(VarChart: string): string;
function LoadReceiptMessage: string;

function isFilter(VarChart, varQuery: string): boolean;
function LoadYeyakCount(varDate: TdateTime; varTeam: string): integer;
function LoadNewPatientCount(varDate: TdateTime; varTeam: string): integer;
function convStat(vargubun: string): string;
function LoadRecallNPromise(VarChart: string): integer;
procedure LoadPhoneList(VarChart: string; varCombo: TCombobox;
  varEdit: Tadvedit);

// -----------------------------------------------------------------------------------------------
// Ray 정보 저장
function RaySave(saveKind: integer; VarChart: string; varname: string;
  varBirth: string; varSex: string): integer;
function ResultCheck(varConst: string): string;
function SendRayMsg(const Url: string; var msgReturn: string;
  var Error: integer): boolean;
function RaycheckExist(VarChart: string): string;
// -----------------------------------------------------------------------------------------------

function saveLabOrderEwha(HSP_NUM: string; ORD_DATE: string; ORD_NUM: string;
  ITM_SEQ: string; PSN_NAME: string; PSN_SEX: string; PSN_AGE: string;
  PSN_ID: string; CHT_NUM: string; HSP_DEPT: string; HSP_WARD: string;
  HSP_DOCTOR: string; SAMPLE_DATE: string; HLAB_CODE: string; HSUB_CODE: string;
  HLAB_NAME: string; LAB_CODE: string; LAB_NAME: string; LAB_UNIT: string;
  INSU_CODE: string; LAB_STAT: string; LAB_RESULT: string; DESC_RESULT1: string;
  DESC_RESULT2: string; DESC_RESULT3: string; DESC_RESULT4: string;
  DESC_RESULT5: string; RSLT_DATE: string; RSLT_TIME: string; DR_NUM: string;
  DR_NAME: string; ABN_VALUE: string; REF_VALUE: string; RQST_DATE: string;
  RQST_TIME: string; RCPT_DATE: string; RCPT_TIME: string; RCPT_NUM: string;
  SEND_DATE: string; SEND_TIME: string; DOWN_DATE: string;
  DOWN_TIME: string): boolean;
// -----------------------------------------------------------------------------------------------
procedure LoadPatientFace(chartNo: string; imgaePic: Timage);
// -----------------------------------------------------------------------------------------------

procedure ChangeStatus2(jin_day: TdateTime; JubsuID: string; chart: string;
  kind: string; varTeam: string; doc_code: string);

procedure gridColSelect(Agrid: TadvStringGrid; aRect: Trect;
  aCheckListBox: TCheckListBox);
function ChangeJubsuStatus(JubsuID: string; team: string; // 진료실
  Doc: string; // 담당의
  doc_code: string; jongbyul: integer; // 종별
  choje: integer; // 초재
  health: integer; // 검진종류
  treatRoom: string; // 진료실
  isInpat: integer): boolean; // 입원구분

function ChangeRPStatus(pk: integer;
  aState: string;
  patientID: string;
  patientName: string;
  dynDate: TdateTime;
  isDelete:boolean = false): boolean;

procedure updateGogekAddress(id, Latitude, Longitude: string);

   //당일의 의뢰병원 정보 가져오기
procedure  loadReferHospInfo(chart : string; jin_day : string );

procedure gridColSet(kind : integer;
                       Agrid: TadvStringGrid;
                       aCheckListBox: TCheckListBox);


implementation

uses uConfig, uDm, uFunctions,   uRisSave, uSysinfo, uJinryoCalc;//, uMain;
// uHLClass,
// uTcpCs;

procedure ClearGogekValue;
begin
  ma_idn := -1;
  ma_Chart := '';
  ma_apply_Day := '';
  ma_K_Number := '';
  ma_Jumin_error := '';
  ma_Chamgo := '';
  ma_Chamgo2 := '';
  ma_PiboName := '';
  ma_famid := '';
  ma_Piboid := '';
  ma_Kiho := '';
  ma_ReferKind := '';
  ma_o_Juso2 := '';
  ma_o_jikwi := '';
  ma_o_phone := '';
  ma_c_Phone := '';
  ma_Mail := '';
  ma_Paname := '';
  ma_PaEngName := '';
  ma_h_juso := '';
  ma_h_id := '';
  ma_h_zip := '';
  ma_h_phone := '';
  ma_refer := '';
  ma_referid := '';
  ma_extra := '';
  ma_Special := '';
  ma_pregnan := ''; // 임신여부

  ma_ReferHospName := '';
  ma_ReferHospCode := '';
  ma_ReferHospDoc := '';
  ma_RHosp := ''; // 의뢰병원 PACS ID
  ma_RHospID := ''; // 의뢰병원

  ma_Refer_Neyuk :='';//의뢰내역

  ma_ChasangNo := ''; // 차상위 C 코드

  ma_o_zip := '';
  ma_jongbeul := '';
  ma_kwan := '';
  ma_jumin := '';
  ma_oldchart := '';
  ma_jumin_y := '';
  ma_last := '';
  ma_kamen := '';
  ma_jumin_Check := '';
  ma_first := '';
  ma_office := '';
  ma_budam := '';

  ma_sanjung := ''; // 2011.11.9

  ma_teakrye := '';
  ma_teakryeCode := '';

  ma_janek := '0';

  ma_artTeeth1 := ''; // 2012.7.1
  ma_artTeeth2 := ''; // 2012.7.1
  ma_artYoyang1 := '';
  ma_artYoyang2 := '';

  ma_implTeeth1 := '';
  ma_implTeeth2 := '';

  ma_implYoyang1 := '';
  ma_implYoyang2 := '';

  ma_team := '';
  ma_doc := '';
  ma_hyg := '';

  ma_jubsuteam := '';
  ma_jubsudoc := '';
  ma_jubsuhyg := '';

  ma_birth := '';

  ma_moon := '';
  ma_sms := '';
  ma_sms2 := ''; // 2012.2.7
  ma_sms3 := '';
  ma_SogeChart := '';
  ma_Sogeidn := 0;

  ma_infosave := '';
  ma_chartSaveOk := '';
  ma_pname1 := '';
  ma_pname2 := '';
  ma_jeju43 := '';
end;

function isEmptyChart(chart: string): boolean;
const
  dataSelect = 'select * from ma_gogek_basic' + #10#13 + 'where chart=:chart';

begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('chart').asstring := chart;
    open;
    if isEmpty then
    begin
      result := true;
    end
    else
    begin
      result := false;
    end;
  end;
end;

function updateGogekTeam(chart: string; Doc: string; Hyg: string;
  team: string): boolean;
const
  updateSelect = 'update ma_gogek_basic set' + #10#13 +
    'team=:team, doc=:doc, hyg=:hyg' + #10#13 + 'where chart=:chart';

begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := updateSelect;
      paramByname('chart').asstring := chart;
      paramByname('team').asstring := team;
      paramByname('doc').asstring := Doc;
      paramByname('hyg').asstring := Hyg;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('Save updateselect' + E.Message);
      result := false;

    end;

  end;
end;

function updateGogekRemark(chart: string; chamgo: string): boolean;
const
  updateSelect = 'update ma_gogek_basic set' + #10#13 + 'chamgo=:chamgo' +
    #10#13 + 'where chart=:chart';

begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := updateSelect;
      paramByname('chart').asstring := chart;
      paramByname('chamgo').asstring := chamgo;

      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('updateGogekRemark' + E.Message);
      result := false;

    end;
  end;
end;

function LoadModelNo(chart: string): string;
const
  dataSelect = 'select * from ma_Chart_Mno' + #10#13 + 'where chart=:chart  ';

begin

  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('chart').asstring := chart;
    open;
    first;
    if not isEmpty then
    begin
      result := fieldByName('Mno').asstring;

    end;
  end;
end;

function LoadReferHospID(hospCode: string): string;
const
  dataSelect = 'select * from ma_referhosp' + #10#13 + 'where rHosp=:rHosp  ';

begin

  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('rHosp').asstring := hospCode;
    open;
    first;
    if not isEmpty then
    begin
      result := trim(fieldByName('referCode').asstring);

    end;
  end;
end;

function LoadReferHospInfo_from_ma_referHosp(refercode: string): TinfoReferHosp;
const
  dataSelect = 'select * from ma_referhosp' + #10#13 +
    'where refercode=:refercode  ';

begin

                      {
          SELECT [id]
                ,[refercode]
                ,[hospname]
                ,[remark]
                ,[rhospPhone]
                ,[rhospPhone2]
                ,[rhosp]
                ,[rhospID]
                ,[regDay]
            FROM [dbo].[ma_referhosp]
            GO         }


      result.ReferHospID  := '';  // 의뢰병원Tabble ID

      result.ReferHospName:= ''; // 의뢰병원name
      result.ReferHospCode:= '';// 의뢰병원Code
      result.ReferHospDoc := ''; // 의뢰병원 원장명
      result.RHosp        := ''; // 의뢰병원 PACS
      result.RHospID      := ''; // 의뢰병원 email

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('refercode').asstring := refercode;
    open;
    first;
    if not isEmpty then
    begin
{    TinfoReferHosp = record
            ReferHospID: string; // 의뢰병원Tabble ID
            ReferHospName: string; // 의뢰병원name
            ReferHospCode: string; // 의뢰병원Code
            ReferHospDoc: string; // 의뢰병원 원장명
            RHosp: string; // 의뢰병원 PACS
            RHospID: string; // 의뢰병원     }

      result.ReferHospID  := trim(fieldByName('ID').asstring);  // 의뢰병원Tabble ID

      result.ReferHospName:= trim(fieldByName('hospName').asstring); // 의뢰병원name
      result.ReferHospCode:= trim(fieldByName('refercode').asstring);// 의뢰병원Code
      result.ReferHospDoc := ''; // 의뢰병원 원장명
      result.RHosp        := trim(fieldByName('RHosp').asstring); // 의뢰병원 PACS
      result.RHospID      := trim(fieldByName('RHospID').asstring); // 의뢰병원 email

    end;
  end;
end;



function LoadReferHospName(hospCode: string): string;
const
  dataSelect = 'select * from ma_referhosp' + #10#13 +
    'where refercode=:refercode  ';

begin

  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('refercode').asstring := hospCode;
    open;
    first;
    if not isEmpty then
    begin
      result := trim(fieldByName('hospName').asstring);

    end;
  end;
end;

function LoadOffice(chart: string): TOfficeInfo;
const
  dataSelect = 'select * from ma_gogek_office' + #10#13 +
    'where chart=:chart order by reg_day desc ';
var
  varGrade: string;
  vargubun: string;
  varRegDay: TdateTime;
  varYearSu, varMonth: integer;
  varGrade2: integer;

begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('chart').asstring := chart;
    open;
    first;
    if not isEmpty then
    begin
      result.OfficeGubun := fieldByName('gubun').asstring;
      result.OfficeName := fieldByName('Name').asstring;
      result.OfficeJikwi := fieldByName('Jikwi').asstring;

      vargubun := fieldByName('gubun').asstring;
      if (vargubun = '초등학교') or (vargubun = '중학교') or (vargubun = '고등학교') or
        (vargubun = '대학교') or (vargubun = '대학원') then
      begin

        varRegDay := strtoDate(fieldByName('reg_day').asstring);
        varGrade := fieldByName('jikwi').asstring;

        varGrade2 := 0;
        for i := 1 to 19 do
        begin

          if varOfficeGubunArray[i] = vargubun + ' ' + varGrade + '학년' then
          begin

            varGrade2 := i;
            break;
          end;

        end;
        varYearSu := YearSu(varRegDay, now); // 두해 사이의 차 +1 이다.

        if varYearSu > 1 then
        begin
          // varOfficeGubunArray[]
          if Checkint(varGrade) = true then
          begin

            // 1.  당해년도 1월 ~ 2월
            // 2.  당해년도 3 ~ 12월 ~ 다음해 1월2월

            // varYearSu = 1
            // varYearSu = 2
            // varYearSu > 2
            // 3  4  5  6  7  8  9  10  11  12  1  2
            // 1, 2월 이면 yearSu -1

            varMonth := dateMonth(now);
            case varMonth of
              1, 2:
                varGrade := varOfficeGubunArray[varGrade2 + varYearSu - 1 - 1];
              3 .. 12:
                varGrade := varOfficeGubunArray[varGrade2 + varYearSu - 1]
                // if ((varYearSu > 2) and (formatdatetime('MM-DD', now) < '03-01') )
                // or ((varYearSu = 2) and (formatdatetime('MM-DD', now) >= '03-01')) then
                //
                // varGrade :=varOfficeGubunArray[ varGrade2+ varYearSu - 1 ]
                // else
                // varGrade :=varOfficeGubunArray[ varGrade2 ];

            end;
          end;
          if varGrade2 = 0 then
          begin
            varGrade := varOfficeGubunArray[varGrade2];

          end;

          result.OfficeRemark := fieldByName('name').asstring + ' ' + varGrade;
        end
        else
          result.OfficeRemark := fieldByName('name').asstring +
            fieldByName('gubun').asstring + ' ' + varGrade + '학년'
      end
      else
      begin
        result.OfficeRemark := fieldByName('name').asstring + ' ' +
          fieldByName('jikwi').asstring;
      end;

    end;
  end;
end;

function saveModelNo(chart: string; Mno: string; reg_day: string): boolean;
const
  dataSelect = 'select * from ma_Chart_Mno ' + #10#13 + 'where chart=:chart ';
  // and gubun=:gubun ';
  dataInsert = 'insert into ma_Chart_Mno ' + #10#13 +
    '( chart, Mno ,regDay) values' + #10#13 + '( :chart, :Mno,  :regDay) ';

  dataUpdate = 'update ma_Chart_Mno set' + #10#13 +
    'mNo= :mNo,   regday=:regday' + #10#13 + 'where chart=:chart';
begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      open;
      if isEmpty then
      begin
        close;
        sql.clear;
        sql.text := dataInsert;
      end
      else
      begin
        close;
        sql.clear;
        sql.text := dataUpdate;

      end;
      paramByname('chart').asstring := chart;
      paramByname('mNo').asstring := Mno;
      paramByname('regday').asstring := reg_day;

      execsql;
    end;
    result := true;
  except
    on E: Exception do
    begin
      ExceptLogging('Save ma_chart_Mno' + E.Message);
      result := false;

    end;

  end;

end;

function saveOffice(chart: string; gubun: string; jikName: string;
  jikWi: string; reg_day: string): boolean;
const
  dataSelect = 'select * from ma_gogek_office' + #10#13 +
    'where chart=:chart and gubun=:gubun ';
  dataInsert = 'insert into ma_gogek_office' + #10#13 +
    '( chart, name, jikwi, gubun,reg_Day) values' + #10#13 +
    '( :chart, :name, :jikwi, :gubun, :reg_Day) ';

  dataUpdate = 'update ma_gogek_office set' + #10#13 +
    'name= :name,  jikWi=:jikWi,  gubun=:gubun, reg_day=:reg_day' + #10#13 +
    'where chart=:chart and gubun=:gubun';
begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      paramByname('gubun').asstring := gubun;
      open;

      if isEmpty then
      begin
        close;
        sql.clear;
        sql.text := dataInsert;
      end
      else
      begin
        close;
        sql.clear;
        sql.text := dataUpdate;

      end;
      paramByname('gubun').asstring := gubun;
      paramByname('name').asstring := jikName;
      paramByname('jikwi').asstring := jikWi;
      paramByname('reg_day').asstring := reg_day;
      paramByname('chart').asstring := chart;

      execsql;
    end;
    result := true;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_Office' + E.Message);
      result := false;

    end;

  end;

end;

function saveGogekBasic(chart: string; paname: string; paEngName: string;
  jumin: string; pibo_id: string; kwan: string; refer_id: string;
  fam_id: string; special: string; birth: string; moon: string;
  first_day: string; last_day: string; reg_day: string; team: string;
  Doc: string; Hyg: string; refer_chart: string; refer_name: string;
  refer_neyuk: string; chamgo: string; bontype: string; janek: string;
  sms: string; artTeeth1: string; artTeeth2: string; sanjung: string;
  sms2: string; sms3: string; infoSave: string; pname1: string; pname2: string;
  chartSaveOk: string; Pregnan: string; chasangNo: string): boolean;
const
  dataSelect = 'select * from ma_gogek_basic' + #10#13 + 'where chart=:chart';

  dataInsert = 'insert into ma_gogek_basic' + #10#13 +
    '( chart, name, NameEng, jumin, pibo_id,kwan, refer_id, fam_id, infosave, pname1, pname2,  chartSaveOk, pregnan, chasangNo,'
    + #10#13 +
    ' special,birth,moon, first_day, last_day, reg_day,refer_chart,refer_name,refer_neyuk, team, doc, hyg, chamgo, bontype, janek, SMS,bonsanjung,sms2,sms3,artTeeth1,artTeeth2, modDay ) values'
    + #10#13 +
    '( :chart, :name, :nameEng, :jumin, :pibo_id,:kwan,  :refer_id,  :fam_id, :infosave, :pname1, :pname2,  :chartSaveOk, :pregnan, :chaSangNo,  '
    + #10#13 +
    '  :special, :birth,:moon,  :first_day,  :last_day,  :reg_day, :refer_chart, :refer_name,:refer_neyuk, :team, :doc, :hyg, :chamgo, :bontype, :janek,:SMS, :bonsanjung, :sms2,:sms3, :artTeeth1, :artTeeth2, :modDay)';
  dataUpdate = 'update ma_gogek_basic set' + #10#13 +
    'name= :name, NameEng=:NameEng, jumin= :jumin, pibo_id= :pibo_id, artTeeth1=:artTeeth1, artTeeth2=:artTeeth2, infosave=:infosave, pname1=:pname1, pname2=:pname2,  chartSaveOk=:chartSaveOk,'
    + #10#13 +
    'refer_id= :refer_id, fam_id= :fam_id,kwan=:kwan, special= :special, modDay=:modDay, pregnan =:pregnan, chaSangNo=:chasangNo, '
    + #10#13 +
    'birth= :birth, moon= :moon, team=:team, doc=:doc, hyg=:hyg, chamgo=:chamgo, bontype=:bontype,  janek=:janek, sms=:sms, bonsanjung=:bonsanjung, sms3=:sms3, '
    + #10#13 +
    'first_day= :first_day, last_day= :last_day, mod_day= :mod_day, refer_chart=:refer_chart, refer_name=:refer_name, refer_neyuk=:refer_neyuk, sms2=:sms2 '
    + #10#13 + 'where chart= :chart';

begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      open;
      if isEmpty then
      begin
        close;
        sql.clear;
        sql.text := dataInsert;
        paramByname('reg_day').asstring := reg_day;
      end
      else
      begin
        close;
        sql.clear;
        sql.text := dataUpdate;
        paramByname('mod_day').asstring := reg_day;

      end;
      paramByname('chart').asstring := chart;
      paramByname('name').asstring := paname;
      paramByname('NameEng').asstring := paEngName;
      paramByname('jumin').asstring := jumin;
      paramByname('pibo_id').asstring := pibo_id;
      paramByname('kwan').asstring := kwan;
      paramByname('refer_id').asstring := refer_id;
      paramByname('fam_id').asstring := fam_id;
      paramByname('special').asstring := special;
      paramByname('birth').asstring := birth;
      paramByname('moon').asstring := moon;
      paramByname('first_day').asstring := first_day;
      paramByname('last_day').asstring := last_day;
      paramByname('refer_chart').asstring := refer_chart;
      paramByname('refer_name').asstring := refer_name;
      paramByname('refer_neyuk').asstring := refer_neyuk; // 소개내역...관계로 수정
      paramByname('team').asstring := team;
      paramByname('doc').asstring := Doc;
      paramByname('hyg').asstring := Hyg;
      paramByname('chamgo').asstring := chamgo;
      paramByname('bontype').asstring := bontype;
      paramByname('janek').asstring := janek;
      paramByname('sms').asstring := sms;
      paramByname('sms2').asstring := sms2; // 2012.2.7
      paramByname('sms3').asstring := sms3;
      paramByname('bonsanjung').asstring := sanjung;
      paramByname('artTeeth1').asstring := artTeeth1; // 2012.7.1
      paramByname('artTeeth2').asstring := artTeeth2; // 2012.7.1
      paramByname('modDay').AsDateTime := now; // 2012.7.1
      paramByname('infosave').asstring := infoSave; // 개인정보 동의 여부 1:true
      paramByname('chartSaveOk').asstring := chartSaveOk; // 차트정보저장 1:true
      paramByname('pname1').asstring := pname1; // 보호자1
      paramByname('pname2').asstring := pname2; // 보호자2
      paramByname('pregnan').asstring := Pregnan; // 임신여부
      paramByname('chasangNo').asstring := chasangNo; // ChasangNo 차상위 C 번호
      execsql;

    end;
    result := true;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_basic' + E.Message);
      result := false;

    end;

  end;
end;

function saveGogekpibo(id, chart: string; PName: string; k_number: string;
  jongbyul: string; h_zip: string; juso: string; kiho: string; phone: string;
  apply_day: string; reg_day: string; bontype: string; janek: string;
  bonsanjung: string; teakrye: string; teakryecode: string; artTeeth1: string;
  artTeeth2: string; implTeeth1: string; implTeeth2: string;
  implYoyang1: string; implYoyang2: string; artYoyang1: string;
  artYoyang2: string; sunkiho1: string; sunkiho2: string; sunkiho3: string;
  sunkiho4: string; Pregnan: string; chasangNo: string; johoidate: string;
  jange: string; restricted: string; cancelDt: string; hira_Jong: string;
  sedejuNm: string
  // Hira Jong // 1: 지역가입자 2: 지역세대원 4:임의계속직장가입자 5:직장가입자  // 6:직장피부양자 7:의료급여1종 8:의료급여2종
  ): string;
const
  dataSelect = 'select * from ma_gogek_pibo' + #10#13 +
    'where  chart=:chart  and johoidate = :johoidate';

  PiboSelect = 'select top 1 * from ma_gogek_pibo' + #10#13 +
    'where chart=:chart order by  ';

  dataInsert = 'insert into ma_gogek_pibo' + #10#13 +
    '( chart, name, k_number, jongbyul, juso, h_zip, kiho,' + #10#13 +
    ' phone, apply_day, reg_day,                        ' + #10#13 +
    'bontype,  ' + #10#13 + 'janek       ,' + #10#13 + 'bonsanjung  ,' + #10#13
    + 'teakrye  ,' + #10#13 + 'teakryecode  ,' + #10#13 + 'artTeeth1   ,' +
    #10#13 + 'artTeeth2   ,' + #10#13 + 'implTeeth1  ,' + #10#13 +
    'implTeeth2  ,' + #10#13 + 'implYoyang1 ,' + #10#13 + 'implYoyang2 ,' +
    #10#13 + 'artYoyang1  ,' + #10#13 + 'artYoyang2  ,' + #10#13 +
    'sunkiho1    ,' + #10#13 + 'sunkiho2    ,' + #10#13 + 'sunkiho3    ,' +
    #10#13 + 'sunkiho4    ,' + #10#13 + 'pregnan     ,' + #10#13 +
    'chaSangNo   ,' + #10#13 + 'johoidate   ,' + #10#13 + 'jange       ,' +
    #10#13 + 'restricted  ,' + #10#13 + 'cancelDt    ,' + #10#13 +
    'hira_jong   ,' + #10#13 + 'sedejuNm    ' + #10#13 + ') values' + #10#13 +
    '( :chart, :name, :k_number, :jongbyul, :juso,:h_zip, :kiho,' + #10#13 +
    '  :phone, :apply_day, :reg_day ,' + ':bontype,  ' + #10#13 +
    ':janek       ,' + #10#13 + ':bonsanjung  ,' + #10#13 + ':teakrye  ,' +
    #10#13 + ':teakryecode  ,' + #10#13 + ':artTeeth1   ,' + #10#13 +
    ':artTeeth2   ,' + #10#13 + ':implTeeth1  ,' + #10#13 + ':implTeeth2  ,' +
    #10#13 + ':implYoyang1 ,' + #10#13 + ':implYoyang2 ,' + #10#13 +
    ':artYoyang1  ,' + #10#13 + ':artYoyang2  ,' + #10#13 + ':sunkiho1    ,' +
    #10#13 + ':sunkiho2    ,' + #10#13 + ':sunkiho3    ,' + #10#13 +
    ':sunkiho4    ,' + #10#13 + ':pregnan     ,' + #10#13 + ':chaSangNo   ,' +
    #10#13 + ':johoidate   ,' + #10#13 + ':jange       ,' + #10#13 +
    ':restricted  ,' + #10#13 + ':cancelDt    ,' + #10#13 + ':hira_jong   ,' +
    #10#13 + ':sedejuNm    ' + #10#13 + ')';

  dataUpdate = 'update ma_gogek_pibo set' + #10#13 +
    'name=:name, k_number=:k_number, jongbyul=:jongbyul, juso=:juso,h_zip=:h_zip, kiho=:kiho, '
    + #10#13 + 'phone=:phone, apply_day=:apply_day, ' + #10#13 +
    'reg_Day           = :reg_Day       , ' + #10#13 +
    'bontype          = :bontype       , ' + #10#13 +
    'janek            = :janek        , ' + #10#13 +
    'bonsanjung       = :bonsanjung   , ' + #10#13 +
    'teakrye          = :teakrye   , ' + #10#13 +
    'teakryecode      = :teakryecode   , ' + #10#13 +
    'artTeeth1        = :artTeeth1    , ' + #10#13 +
    'artTeeth2        = :artTeeth2    , ' + #10#13 +
    'implTeeth1       = :implTeeth1   , ' + #10#13 +
    'implTeeth2       = :implTeeth2   , ' + #10#13 +
    'implYoyang1      = :implYoyang1  , ' + #10#13 +
    'implYoyang2      = :implYoyang2  , ' + #10#13 +
    'artYoyang1       = :artYoyang1   , ' + #10#13 +
    'artYoyang2       = :artYoyang2   , ' + #10#13 +
    'sunkiho1         = :sunkiho1     , ' + #10#13 +
    'sunkiho2         = :sunkiho2     , ' + #10#13 +
    'sunkiho3         = :sunkiho3     , ' + #10#13 +
    'sunkiho4         = :sunkiho4     , ' + #10#13 +
    'pregnan          = :pregnan      , ' + #10#13 +
    'chaSangNo        = :chaSangNo    , ' + #10#13 +
    'jange            = :jange        , ' + #10#13 +
    'restricted       = :restricted   , ' + #10#13 +
    'cancelDt         = :cancelDt      , ' + #10#13 +
    'hira_jong        = :hira_jong    , ' + #10#13 +
    'sedejuNm         = :sedejuNm     ' + #10#13 +
    'where chart= :chart and johoidate=:johoidate';

  dataAllSelect = 'select * from ma_gogek_pibo' + #10#13 +
    'where name=:name and k_number=:k_number and  jongbyul=:jongbyul and  h_zip=:h_zip and juso=:juso and kiho=:kiho and '
    + #10#13 + 'phone=:phone  and johoidate=:johoidate';

begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      paramByname('johoidate').asstring := johoidate;
      open;

      if isEmpty then
      begin
        close;
        sql.clear;
        sql.text := dataInsert;
      end
      else
      begin
        close;
        sql.clear;
        sql.text := dataUpdate;
        // paramByname('chart').asstring := chart;
      end;
      paramByname('johoiDate').asstring := johoidate;
      paramByname('chart').asstring := chart;
      paramByname('name').asstring := PName;
      paramByname('k_number').asstring := k_number;
      paramByname('jongbyul').asstring := jongbyul;
      paramByname('juso').asstring := juso;
      paramByname('h_zip').asstring := h_zip;
      paramByname('kiho').asstring := kiho;
      paramByname('phone').asstring := phone;
      paramByname('apply_day').asstring := apply_day;
      paramByname('reg_day').asstring := reg_day;

      paramByname('bontype').asstring := bontype;
      paramByname('teakrye').asstring := teakrye;
      paramByname('teakryecode').asstring := teakryecode;
      paramByname('janek').asstring := janek;
      paramByname('bonsanjung').asstring := bonsanjung;
      paramByname('artTeeth1').asstring := artTeeth1;
      paramByname('artTeeth2').asstring := artTeeth2;
      paramByname('implTeeth1').asstring := implTeeth1;
      paramByname('implTeeth2').asstring := implTeeth2;
      paramByname('implYoyang1').asstring := implYoyang1;
      paramByname('implYoyang2').asstring := implYoyang2;
      paramByname('artYoyang1').asstring := artYoyang1;
      paramByname('artYoyang2').asstring := artYoyang2;
      paramByname('sunkiho1').asstring := sunkiho1;
      paramByname('sunkiho2').asstring := sunkiho2;
      paramByname('sunkiho3').asstring := sunkiho3;
      paramByname('sunkiho4').asstring := sunkiho4;
      paramByname('pregnan').asstring := Pregnan;
      paramByname('chaSangNo').asstring := chasangNo;
      // ParamByName('johoidate').AsString :=    johoidate   ;
      paramByname('jange').asstring := jange;
      paramByname('restricted').asstring := restricted;
      paramByname('cancelDt').asstring := cancelDt;
      paramByname('hira_jong').asstring := hira_Jong;
      paramByname('sedejuNm').asstring := sedejuNm;

      execsql;

      close;
      sql.clear;
      sql.text := dataAllSelect;
      paramByname('name').asstring := PName;
      paramByname('k_number').asstring := k_number;
      paramByname('jongbyul').asstring := jongbyul;
      paramByname('juso').asstring := juso;
      paramByname('h_zip').asstring := h_zip;
      paramByname('kiho').asstring := kiho;
      paramByname('phone').asstring := phone;
      // ParamByName('apply_day').AsString := apply_day;
      paramByname('johoidate').asstring := johoidate;
      open;
      if not isEmpty then
      begin
        result := fieldByName('id').asstring;
      end;
    end;

  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_pibo' + E.Message);
      result := '0';

    end;
  end;
end;

// function Loadpiboinfo(  pname, k_number, kiho: string): boolean;
function Loadpiboinfo(chart: string): boolean;
const
  // dataSelect = 'select * from ma_gogek_pibo' + #10#13 +
  // 'where name=:name and  k_number=:k_number and kiho=:kiho';
  dataSelect = 'select top 1 * from ma_gogek_pibo' + #10#13 +
    'where chart = :chart order by apply_day desc, id desc';
  // and name=:name and  k_number=:k_number and kiho=:kiho';

begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      // ParamByName('name').AsString := pname;
      // ParamByName('k_number').AsString := k_number;
      // ParamByName('kiho').AsString := kiho;
      open;
      if not isEmpty then
      begin
        result := true;
        // ma_piboJuso := fieldByName('juso').AsString;
        // ma_piboZip := fieldByName('h_zip').AsString;
        // ma_pibophone := fieldByName('phone').AsString;

      end;
    end;

  except
    on E: Exception do
    begin
      ExceptLogging('Load_gogek_pibo' + E.Message);
      result := false;

    end;
  end;
end;

function saveGogekPhone(id, chart, phone: string; sms: string; kind: string;
  reg_day: string; varname: string): string;
const
  dataSelect = 'select * from ma_gogek_phone' + #10#13 + 'where id=:id';
  dataAllSelect = 'select * from ma_gogek_phone' + #10#13 +
    'where chart=:chart and phone=:phone and kind=:kind and sms=:sms and reg_day=:reg_day';

  dataInsert = 'insert into ma_gogek_phone' + #10#13 +
    '( chart, phone, kind, sms, reg_day, name) values' + #10#13 +
    '( :chart, :phone, :kind, :sms, :reg_day, :name)';
  dataUpdate = 'update ma_gogek_phone set' + #10#13 +
    'chart=:chart, phone=:phone, kind=:kind, sms=:sms, reg_day=:reg_day, name=:name'
    + #10#13 + 'where id= :id';

begin
  try
    // 삭제시에는 입력창을 눌러서 지워라...고 말한다.
    if phone <> '' then
    begin
      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.text := dataSelect;
        paramByname('id').asstring := id;
        open;
        if isEmpty then
        begin
          close;
          sql.clear;
          sql.text := dataInsert;
        end
        else
        begin
          close;
          sql.clear;
          sql.text := dataUpdate;
          paramByname('id').asstring := id;
        end;

        paramByname('chart').asstring := chart;
        paramByname('phone').asstring := phone;
        paramByname('sms').asstring := sms;
        paramByname('kind').asstring := kind;
        paramByname('reg_day').asstring := reg_day;
        paramByname('name').asstring := varname;
        execsql;

        close;
        sql.clear;
        sql.text := dataAllSelect;
        paramByname('chart').asstring := chart;
        paramByname('phone').asstring := phone;
        paramByname('sms').asstring := sms;
        paramByname('kind').asstring := kind;
        paramByname('reg_day').asstring := reg_day;
        open;
        if not isEmpty then
        begin
          result := fieldByName('id').asstring;
        end
        else
        begin
          result := '0';
        end;

      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_phone' + E.Message);
      result := '0';

    end;
  end;
end;


function LoadEngSangName(s_key: string): string;
const
  dataSelect = 'select * from sangbyung' + #10#13 +
    'where s_key = :s_key  ';
begin
  result := '';
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('s_key').asstring := s_key;
      open;
      if not isEmpty then
      begin
        result := fieldByName('s_eng_name').asstring ;
      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('LoadEngSangName  ' + E.Message);
      result := '';

    end;
  end;
end;

function LoadGogekPhone(chart, kind: string): string;
const
  dataSelect = 'select * from ma_gogek_phone' + #10#13 +
    'where chart=:chart and kind=:kind  ';
begin
  result := '';
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      paramByname('kind').asstring := kind;
      open;
      if not isEmpty then
      begin
        result := fieldByName('id').asstring + ':' +
          fieldByName('phone').asstring;
      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('load_gogek_phone  ' + E.Message);
      result := '';

    end;
  end;
end;

function DeleteGogekPhone(id: integer): boolean;
const
  dataDelete = 'delete from ma_gogek_phone  ' + #10#13 + 'where id= :id';

begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataDelete;
      paramByname('id').asinteger := id;
      execsql;

    end;
    result := true;
  except
    on E: Exception do
    begin
      ExceptLogging('delete_gogek_phone' + E.Message);
      result := false;

    end;
  end;
end;

function saveGogekEmail(chart, email: string; reg_day: string): boolean;
const
  dataSelect = 'select * from ma_gogek_email' + #10#13 + 'where chart=:chart';

  dataInsert = 'insert into ma_gogek_email' + #10#13 +
    '( chart, email, reg_day) values' + #10#13 + '( :chart, :email, :reg_day)';
  dataUpdate = 'update ma_gogek_email set' + #10#13 +
    'email=:email, reg_day=:reg_day' + #10#13 + 'where chart= :chart';
  dataDelete = 'delete from ma_gogek_email' + #10#13 + 'where chart= :chart';

begin
  try

    if trim(email) <> '' then
    begin
      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.text := dataSelect;
        paramByname('chart').asstring := chart;
        open;
        if isEmpty then
        begin
          close;
          sql.clear;
          sql.text := dataInsert;
        end
        else
        begin
          close;
          sql.clear;
          sql.text := dataUpdate;
        end;
        paramByname('chart').asstring := chart;
        paramByname('email').asstring := email;
        paramByname('reg_day').asstring := reg_day;
        execsql;

      end;
      result := true;
    end
    else
    begin
      try
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.text := dataDelete;
          paramByname('chart').asstring := chart;
          execsql;

        end;
        result := true;
      except
        on E: Exception do
        begin
          ExceptLogging('delete_gogek_email' + E.Message);
          result := false;

        end;
      end;

    end;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_email' + E.Message);
      result := false;

    end;
  end;
end;

function saveGogekReferHosp(chart, refercode: string; docname: string;
  jin_day: string): boolean;
const
  dataSelect = 'select * from ma_gogek_referHosp' + #10#13 +
    'where chart=:chart and jin_day=:jin_day';

  dataInsert = 'insert into ma_gogek_referHosp' + #10#13 +
    '( chart, refercode, docname, jin_day) values' + #10#13 +
    '( :chart, :refercode, :docname, :jin_day)';
  dataUpdate = 'update ma_gogek_referHosp set           ' + #10#13 +
    'refercode=:refercode, docname =:docname ' + #10#13 +
    'where chart= :chart and jin_day=:jin_day';
  dataDelete = 'delete from ma_gogek_referHosp' + #10#13 +
    'where chart= :chart';

begin
  try

    if trim(refercode) <> '' then
    begin
      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.text := dataSelect;
        paramByname('chart').asstring := chart;
        paramByname('jin_day').asstring := jin_day;
        open;
        if isEmpty then
        begin
          close;
          sql.clear;
          sql.text := dataInsert;
        end
        else
        begin
          close;
          sql.clear;
          sql.text := dataUpdate;
        end;
        paramByname('chart').asstring := chart;
        paramByname('refercode').asstring := refercode;
        paramByname('docName').asstring := docname;
        paramByname('jin_day').asstring := jin_day;
        execsql;

      end;
      result := true;
    end
    else
    begin
      try
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.text := dataDelete;
          paramByname('chart').asstring := chart;
          execsql;

        end;
        result := true;
      except
        on E: Exception do
        begin
          ExceptLogging('delete_gogek_refercode' + E.Message);
          result := false;

        end;
      end;

    end;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_refercode' + E.Message);
      result := false;

    end;
  end;
end;

function saveGogek43(chart, jungno: string; reg_day: string): boolean;
const
  dataSelect = 'select * from ma_gogek_43' + #10#13 + 'where chart=:chart';

  dataInsert = 'insert into ma_gogek_43' + #10#13 +
    '( chart, jungno, reg_day) values' + #10#13 +
    '( :chart, :jungno, :reg_day)';
  dataUpdate = 'update ma_gogek_43 set' + #10#13 +
    'jungno=:jungno, reg_day=:reg_day' + #10#13 + 'where chart= :chart';
  dataDelete = 'delete from ma_gogek_43' + #10#13 + 'where chart= :chart';

begin
  try

    if trim(jungno) <> '' then
    begin
      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.text := dataSelect;
        paramByname('chart').asstring := chart;
        open;
        if isEmpty then
        begin
          close;
          sql.clear;
          sql.text := dataInsert;
        end
        else
        begin
          close;
          sql.clear;
          sql.text := dataUpdate;
        end;
        paramByname('chart').asstring := chart;
        paramByname('jungno').asstring := jungno;
        paramByname('reg_day').asstring := reg_day;
        execsql;

      end;
      result := true;
    end
    else
    begin
      try
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.text := dataDelete;
          paramByname('chart').asstring := chart;
          execsql;

        end;
        result := true;
      except
        on E: Exception do
        begin
          ExceptLogging('delete_gogek_43' + E.Message);
          result := false;

        end;
      end;

    end;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_43' + E.Message);
      result := false;

    end;
  end;
end;

function saveGogekAddress(id, chart, postid, zipcode, juso, kind: string;
  reg_day: string): string;
const
  dataSelect = 'select * from ma_gogek_address' + #10#13 + 'where id=:id';
  dataAllSelect = 'select * from ma_gogek_address' + #10#13 +
    'where chart=:chart and postid=:postid and  zipcode=:zipcode and  juso=:juso and  kind=:kind and  reg_day=:reg_day';

  dataInsert = 'insert into ma_gogek_address' + #10#13 +
    '( chart, postid, zipcode, juso, kind, reg_day)  values' + #10#13 +
    '(:chart, :postid, :zipcode, :juso, :kind, :reg_day)';
  dataUpdate = 'update ma_gogek_address set' + #10#13 +
    'chart=:chart, postid=:postid, zipcode=:zipcode, juso=:juso, kind=:kind, reg_day=:reg_day'
    + #10#13 + 'where id= :id';
  dataDelete = 'delete from ma_gogek_address' + #10#13 + 'where id= :id';

begin
  try

    if trim(juso) <> '' then
    begin
      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.text := dataSelect;
        paramByname('id').asstring := id;
        open;
        if isEmpty then
        begin
          close;
          sql.clear;
          sql.text := dataInsert;
        end
        else
        begin
          close;
          sql.clear;
          sql.text := dataUpdate;
          paramByname('id').asstring := id;
        end;
        paramByname('chart').asstring := chart;
        paramByname('postid').asstring := postid;
        paramByname('zipcode').asstring := zipcode;
        paramByname('juso').asstring := juso;
        paramByname('kind').asstring := kind;
        paramByname('reg_day').asstring := reg_day;
        execsql;
        close;
        sql.clear;
        sql.text := dataAllSelect;
        paramByname('chart').asstring := chart;
        paramByname('postid').asstring := postid;
        paramByname('zipcode').asstring := zipcode;
        paramByname('juso').asstring := juso;
        paramByname('kind').asstring := kind;
        paramByname('reg_day').asstring := reg_day;
        open;
        if not isEmpty then
        begin
          result := fieldByName('id').asstring;
        end;
      end;

    end
    else
    begin
      try
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.text := dataDelete;
          paramByname('id').asstring := id;
          execsql;

        end;
        result := id;
      except
        on E: Exception do
        begin
          ExceptLogging('delete_gogek_address' + E.Message);
          result := '0';

        end;
      end;

    end;
  except
    on E: Exception do
    begin
      ExceptLogging('save_gogek_address' + E.Message);
      result := '0';

    end;
  end;
end;



function LoadJubsuinfo(chart: string; varJinday: string): boolean;
const
  SelectJubsu = 'select * from ma_jubsu ' + #10#13 +
    ' where jin_day=:jin_day and chart= :chart';

var
  VarChart: string;

  RecCount, roC, i: integer;
  stime: integer;
begin
  // result 1: ok
  // result 2: close
  // result 3: New
  roC := 1;
  stime := gettickcount;
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.text := SelectJubsu;
    paramByname('jin_day').asstring := varJinday;
    paramByname('chart').asstring := chart;
    open;
    if not isEmpty then
    begin
      result := true;
      ma_jubsuteam := fieldByName('team').asstring;
      ma_jubsudoc := fieldByName('doc').asstring;
      ma_jubsuhyg := fieldByName('hyg').asstring;

    end
    else
    begin
      result := false;
    end;
  end;
end;

function loadInfoJubsu(jubsu_id: string): TinfoJubsu;
const
  SelectJubsu = 'select * from ma_jubsu ' + #10#13 +
    ' where id= :jubsu_id';
begin
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.text := SelectJubsu;
    paramByname('jubsu_id').asstring := jubsu_id;
    open;
    if not isEmpty then
    begin
         result.doc_code   :=  FieldByname('doc_code').asString ;
         result.treatRoom  :=  FieldByname('treatRoom').asString ;
         result.isInpat    :=  FieldByname('isInpat').asString ;
         result.rpPk       :=  FieldByname('rpPK').asString ;
    end
    else
    begin
         result.doc_code    :=  '' ;
         result.treatRoom   :=  '' ;
         result.isInpat     :=  '' ;
         result.rpPk        :=  '0' ;
    end;
  end;
end;

function LoadTeaminfo(chart: string): string;
const
  SelectTeam = 'select * from ma_gogek_basic ' + #10#13 +
    ' where  chart= :chart';
begin
  result := '1';
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.text := SelectTeam;
    paramByname('chart').asstring := chart;
    open;
    if not isEmpty then
    begin
      if fieldByName('team').asstring <> '' then
        result := fieldByName('team').asstring;
    end
    else
    begin
      result := '1';
    end;
  end;
end;

function GetRefererID: integer;
const
  QUERY = 'select max(id) as maxid from ma_gogek_referer';
var
  index: integer;
begin
  with dm_f.sqlcalc do
  begin
    close;
    sql.clear;

    sql.text := QUERY;
    open();

    // ShowMessage('here2:' + FieldByName('maxid').AsString);//<--Go

    index := fieldByName('maxid').asinteger;

  end;
  if index = 0 then
  begin

    with dm_f.sqlcalc do
    begin
      close;
      sql.add(' DBCC CHECKIDENT(''ma_gogek_referer'',RESEED,0) ');
      execsql;
    end;
  end;
  result := index;
end;

function GetReferHospID: integer;
const
  QUERY = 'select isnull(  max(  convert(int, substring(  referCode,6,5) ,121) ), 0)  +1  as maxid '
    + #10#13 + ' from ma_referHosp where referCode like ''chosp%'' ';
var
  index: integer;
begin
  with dm_f.sqlcalc do
  begin
    close;
    sql.clear;

    sql.text := QUERY;
    open();

    // ShowMessage('here2:' + FieldByName('maxid').AsString);//<--Go

    index := fieldByName('maxid').asinteger;

  end;

  result := index;
end;

function deleteFavoriteSuga(id: string): boolean;
const
  QUERY = 'delete from ma_favorite_suga  where  Id=:Id    ';
var
  index: integer;
  //
begin

  result := false;
  try
    with dm_f.sqlcalc do
    begin
      close;
      sql.clear;

      sql.text := QUERY;
      paramByname('ID').asstring := id;
      execsql();

      result := true;

    end;
  except
    on E: Exception do
    begin
      ExceptLogging('deleteFavoriteSuga' + E.Message);
      result := false;

    end;
  end;

end;

function GetFavoriteOrderNo: integer;
const
  QUERY = ' select isnull( max( nOrder), 0) +1  as maxid ' + #10#13 +
    ' from ma_favorite_suga                        ';
var
  index: integer;
begin
  with dm_f.sqlcalc do
  begin
    close;
    sql.clear;

    sql.text := QUERY;
    open();

    // ShowMessage('here2:' + FieldByName('maxid').AsString);//<--Go

    index := fieldByName('maxid').asinteger;

  end;

  result := index;
end;

function ChartRuleProof(VarChart: string): boolean;
var
  path: string;
  FormInit: TIniFile;
  VarChartRule: string;
begin
  path := GetConfigDir + 'db.ini';
  FormInit := TIniFile.Create(path);
  VarChartRule := FormInit.ReadString('기타정보', '챠트번호규칙', '4');
  if VarChart <> '' then
  begin
    case StrCase(VarChartRule, ['0', '1', '2', '3', '4', '5', '6']) of
      // 00 + 00 + - + 0000     +     000
      // 팀  년도 대쉬 일자(월일)    연번
      1:
        begin

          if (Checkint(Copy(VarChart, 1, 4)) = true) and
            (Checkint(Copy(VarChart, 6, 7)) = true) and
            (Copy(VarChart, 5, 1) = '-') then
            result := true
          else
            result := false;

        end;
      // 00 + 00 + 00 + 000
      // 년도 월    일  연번
      2:
        begin
          if Checkint(VarChart) = true then
            result := true
          else
            result := false;

        end;
      // 소아교정구분
      // 00 + 00 + 00 + 00
      // 년도 월    일  연번
      3:
        begin
          if Checkint(VarChart) = true then
            result := true
          else
            result := false;
        end;
      // 채워진 연번
      4:
        begin
          if Checkint(VarChart) = true then
            result := true
          else
            result := false;
        end;
      // 연번으로만(숫자)
      5:
        begin
          if Checkint(VarChart) = true then
            result := true
          else
            result := false;
        end;
      // 사용자정의
      6:
        begin
          result := true;
        end;
    end;
  end
  else
  begin
    result := true;
  end;

end;

procedure SeqUpdate(chartNo: string);
var
  lastChart: integer;
  lastChart1: integer;
  lastChartDate: integer;
  lastChartDate1: integer;
  lastChartMonth: integer;
  lastChartMonth1: integer;
  lastChartYear: integer;
  lastChartYear1: integer;
  HdSerial: string;
  PcName: string;

  VarChartRule: string;

  myIpAddr: string;
begin
  myIpAddr := GetIPAddress;

  VarChartRule := configvalue.VarChartRule;
  { with dm_f.SqlWork do
    begin
    close;
    Sql.Clear;
    sql.Add('select * from SeqNo');
    open;
    if not isEmpty then
    begin
    lastChart:=    fieldByname('seqNumber').AsString := intToStr((lastChart));
    fieldByname('seqDateNumber').AsString :=
    intToStr((lastChartDate));
    fieldByname('seqMonthNumber').AsString :=
    intToStr((lastChartMonth));
    fieldByname('seqYearNumber').AsString :=
    intToStr((lastChartYear));
    fieldByname('seqDate').AsString :=
    formatDateTime('YYYY-MM-DD', now);

    end;
    end;

    case strCase(VarChartRule, ['1', '2', '3', '4', '5', '6', '7', '8', '9',
    '10', 11']) of
    1, 2, 3, 9, 11: //-로 연결
    begin
    strToint(substr(edtChart.text, 2, '-')) >
    LastChart :=
    strToint(edtChart.text);
    end;
    4, 5, 7, 8: //숫자만
    begin
    end;
    end;
  }
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from SeqNo');
    open;
    if not isEmpty then
    begin

      if VarChartRule = '10' then
      begin
        if Checkint(chartNo) then
        begin
          if strtoint(chartNo) mod 10 > 0 then
          // 10으로 나눈 몫이 0보다 크면 마지막 챠트는 그대로
          begin
            lastChart := strtoint(chartNo);
            // fieldByname('Seqnumber').Asinteger;
            // strToint(chartNo) div 10 * 10
          end
          else
          begin
            lastChart := strtoint(chartNo) div
            // fieldByname('Seqnumber').Asinteger div
              10 * 10 + 10;
          end;
        end
        else
        begin
          lastChart := fieldByName('Seqnumber').asinteger div 10 * 10 + 10;
        end;
      end
      else
      begin
        lastChart := fieldByName('Seqnumber').asinteger + 1;
      end;

    end
    else
    begin
      lastChart := 1;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from SeqNo');
    sql.add('where SeqDate=:SeqDate');
    paramByname('seqDate').asstring := formatdatetime('YYYY-MM-DD', now);
    open;
    if not isEmpty then
    begin
      lastChartDate := fieldByName('SeqDateNumber').asinteger + 1;
    end
    else
    begin
      lastChartDate := 1;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from SeqNo');
    sql.add('where SeqDate like :SeqDate');
    paramByname('seqDate').asstring := formatdatetime('YYYY-MM', now) + '%';
    open;
    if not isEmpty then
    begin
      lastChartMonth := fieldByName('SeqMonthNumber').asinteger + 1;
    end
    else
    begin
      lastChartMonth := 1;
    end;
  end;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from SeqNo');
    sql.add('where SeqDate like :SeqDate');
    paramByname('seqDate').asstring := formatdatetime('YYYY', now) + '%';
    open;
    if not isEmpty then
    begin
      if fieldByName('SeqYearNumber').asstring <> '' then
        lastChartYear := fieldByName('SeqYearNumber').asinteger + 1
      else
        lastChartYear := 1;
    end
    else
    begin
      lastChartYear := 1;
    end;
  end;

  // ToDO : 누군가 새로 생성한 차트번호를 같이 생성시키면 안된다.

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from TempChart');
    sql.add('where TempSeq=:tempSeq');
    paramByname('TempSeq').asstring := myIpAddr; // PcName + '/:' + HdSerial;

    open;
    if not isEmpty then
    begin
      lastChart1 := fieldByName('TempChartNo').asinteger;
    end
    else
    begin
      lastChart1 := 1;
    end;
  end;

  if lastChart1 > lastChart then
    lastChart := lastChart1
  else
    lastChart := lastChart;

  if lastChart1 > lastChartDate then
    lastChartDate := lastChart1
  else
    lastChartDate := lastChartDate;

  if lastChart1 > lastChartMonth then
    lastChartMonth := lastChart1
  else
    lastChartMonth := lastChartMonth;
  if lastChart1 > lastChartYear then
    lastChartYear := lastChart1
  else
    lastChartYear := lastChartYear;

  // dm_f.zConnection.StartTransaction;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('delete  from SeqNo');
      execsql;

      close;
      sql.clear;
      sql.add('insert into SeqNo');
      sql.add('(SeqNumber, SeqDate, seqDateNumber, seqMonthNumber, seqYearNumber) values');
      sql.add('(:SeqNumber, :SeqDate, :seqDateNumber, :seqMonthNumber,:seqYearNumber)');
      paramByname('seqNumber').asstring := inttostr((lastChart));
      paramByname('seqDateNumber').asstring := inttostr((lastChartDate));
      paramByname('seqMonthNumber').asstring := inttostr((lastChartMonth));
      paramByname('seqYearNumber').asstring := inttostr((lastChartYear));
      paramByname('seqDate').asstring := formatdatetime('YYYY-MM-DD', now);
      execsql;
    end;
    // dm_f.zConnection.Commit;
  except
    on E: Exception do
    begin
      // dm_f.zConnection.Rollback;
      showmessage(E.Message + ' [저장오류]');
    end;
  end;

end;

function ChartNoCreate(TeamKind: string; varname: string = '';
  varjumin: string = ''): string;
var
  // MaxChart1: integer;
  // MaxChartDate1: integer;
  // MaxChartMonth1: integer;
  // MaxChartYear1: integer;
  MaxChart: integer;
  MaxChartDate: integer;
  MaxChartMonth: integer;
  MaxChartYear: integer;
  // Path: string;
  // FormInit: TIniFile;
  HdSerial: string;
  PcName: string;
  SysInfo: SystemInfoRecord;
  VarChartRule: string;
  varChartNo: string;
  i: integer;
  myIpAddr: string;

  nUsedChartCnt: integer;
  nAddOrder: integer;
begin
  // sysinfo := GetAllSystemInfo;

  // HdSerial := 'HdSerial';//Sysinfo.VolumeSerial;
  // PcName := 'PcName';/// trim(Sysinfo.ComputerName);
  ///
  ///
  myIpAddr := GetIPAddress;

  // Path := GetConfigDir + 'db.ini';
  // FormInit := TIniFile.Create(Path);

  VarChartRule := configvalue.VarChartRule;
  // FormInit.ReadString('기타정보', '챠트번호규칙', '4');

  // tempchartDelete
  // try
  // //   dm_f.Database1.StartTransaction;
  // with dm_f.SqlWork do
  // begin
  // close;
  // Sql.Clear;
  // sql.Add('delete  from tempChart');
  // sql.Add('where tempSeq= :tempSeq');
  // paramByname('tempSeq').AsString := myIpAddr;// PcName + '/:' +    HdSerial;
  // execSql;
  // end;
  // //        dm_f.Database1.Commit;
  // except
  // on E: Exception do
  // begin
  // ExceptLogging('chartno create' + E.Message);
  //
  // end;
  // end;
  // ==============================================================================
  // [<ChartNoCreate  차트번호생성>
  // 1. tempchart에 기존에 생성해놓고 안쓴 번호가 있는지 찾고  지금 사용중 아닌( inUse <> ''1'') 번호를   가져온다.
  // 2-1. 1에서 번호가 없으면 seqno에서 [새번호] (max+1) 를 가져오고  seqno를 새번호로 업데이트시킨다.
  // 2-2. 1에서 번호가 있으면 가장 작은 번호를 [새번호]로 가져온다.
  // 3. tempchart에 2에서 생성한 [새번호]를 적어 놓는다.
  // 4. 저장되면 tempchart에 있는 [새번호]를 지운다.]

  //

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.add('Select count(*) as usedChartCnt from TempChart');
    sql.add('where inUse <> ''1'' ');
    open;
    nUsedChartCnt := fieldByName('usedChartCnt').asinteger;
  end;

  if nUsedChartCnt <= 0 then
  begin

    nAddOrder := 1; // 새차트번호seqno는 1을 더해주고 기존 tempchart에서 가져오면 0 더하지말자.

    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add('select * from SeqNo');
      open;
      if not isEmpty then
      begin
        if Checkint(trim(fieldByName('Seqnumber').asstring)) = false then
        begin
          MaxChart := 0;
        end
        else
        begin
          MaxChart := fieldByName('Seqnumber').asinteger;
        end;
      end
      else
      begin
        MaxChart := 0;
      end;
    end;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('select * from SeqNo');
      sql.add('where SeqDate=:SeqDate');
      paramByname('seqDate').asstring := formatdatetime('YYYY-MM-DD', now);
      open;
      if not isEmpty then
      begin
        if Checkint(trim(fieldByName('SeqDatenumber').asstring)) = false then
        begin
          MaxChartDate := 0;
        end
        else
        begin
          MaxChartDate := fieldByName('SeqDatenumber').asinteger;
        end;
      end
      else
      begin
        MaxChartDate := 0;
      end;
    end;

    // 월별 조회 ===============================================================
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('select * from SeqNo');
      sql.add('where SeqDate like :SeqDate');
      paramByname('seqDate').asstring := formatdatetime('YYYY-MM', now) + '%';
      open;
      if not isEmpty then
      begin
        if Checkint(trim(fieldByName('SeqMonthnumber').asstring)) = false then
        begin
          MaxChartMonth := 0;
        end
        else
        begin
          MaxChartMonth := fieldByName('SeqMonthnumber').asinteger;
        end;
      end
      else
      begin
        MaxChartMonth := 0;
      end;
    end;
    // =========================================================================

    // 년도별 조회 ===============================================================
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('select * from SeqNo');
      sql.add('where SeqDate like :SeqDate');
      paramByname('seqDate').asstring := formatdatetime('YYYY', now) + '%';
      open;
      if not isEmpty then
      begin
        if Checkint(trim(fieldByName('SeqYearnumber').asstring)) = false then
        begin
          MaxChartYear := 0;
        end
        else
        begin
          MaxChartYear := fieldByName('SeqYearnumber').asinteger;
        end;
      end
      else
      begin
        MaxChartYear := 0;
      end;
    end;
  end
  else
  begin

    // =========================================================================
    // tempchart에 기존에 생성해놓고 안쓴 번호가 있는지 찾아서 가져온다.
    // 여러개가 있으면 가장 작은 값을 가져오자.
    nAddOrder := 0; // 새차트번호seqno는 1을 더해주고 기존 tempchart에서 가져오면 0 더하지말자.

    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select Min(Cast(TempChartNo as integer)) As MaxChartNo from TempChart');
      sql.add('where inUse <> ''1'' ');
      open;
      if fieldByName('MaxChartNo').asinteger <> 0 then
      begin
        MaxChart := fieldByName('MaxChartNo').asinteger;
      end
      else
      begin
        MaxChart := 0;
      end;
    end;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select Min(Cast(TempDateChartNo as integer)) As MaxChartNo from TempChart');
      sql.add('where TempDateSeq=:TempDateSeq and inUse <> ''1''');
      paramByname('TempDateSeq').asstring := formatdatetime('YYYY-MM-DD', now);
      open;
      if fieldByName('MaxChartNo').asinteger <> 0 then
      begin
        MaxChartDate := fieldByName('MaxChartNo').asinteger;
      end
      else
      begin
        MaxChartDate := 0;
      end;
    end;

    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select Min(Cast(TempMonthChartNo as integer)) As MaxChartNo from TempChart');
      sql.add('where TempDateSeq=:TempDateSeq and inUse <> ''1'' ');
      paramByname('TempDateSeq').asstring := formatdatetime('YYYY-MM', now);
      open;
      if fieldByName('MaxChartNo').asinteger <> 0 then
      begin
        MaxChartMonth := fieldByName('MaxChartNo').asinteger;
      end
      else
      begin
        MaxChartMonth := 0;
      end;
    end;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select Min(Cast(TempYearChartNo as integer)) As MaxChartNo from TempChart');
      sql.add('where TempDateSeq=:TempDateSeq and inUse <> ''1''');
      paramByname('TempDateSeq').asstring := formatdatetime('YYYY', now);
      open;
      if fieldByName('MaxChartNo').asinteger <> 0 then
      begin
        MaxChartYear := fieldByName('MaxChartNo').asinteger;
      end
      else
      begin
        MaxChartYear := 0;
      end;
    end;

  end;
  // tempchartSave
  // dm_f.Database1.StartTransaction;
  try
    with dm_f.SqlWork do
    begin

      // tempchart에 새로 생성한 [새번호]를 적어 놓는다.
      if nUsedChartCnt <= 0 then
      begin

        // TempChart Save
        // 차트번호 규칙에서 1을 더하기때문에 TempChart에 넣을때는 1을 더하지 말자.
        close;
        sql.clear;
        sql.add('insert into tempChart');
        sql.add('(tempSeq, tempChartNo, tempDateSeq, tempDateChartNo,');
        sql.add(' tempMonthChartNo,  tempYearChartNo, inUse) values');
        sql.add('(:tempSeq, :tempChartNo, :tempDateSeq, :TempDateChartNo, ');
        sql.add(':tempMonthChartNo, :tempYearChartNo, :inUse)');
        paramByname('tempSeq').asstring := myIpAddr;
        // PcName + '/:' +   HdSerial;
        paramByname('tempChartNo').asinteger := MaxChart + 1;
        paramByname('tempDateChartNo').asinteger := MaxChartDate + 1;
        paramByname('tempMonthChartNo').asinteger := MaxChartMonth + 1;
        paramByname('tempYearChartNo').asinteger := MaxChartYear + 1;
        paramByname('inUse').asstring := '1'; // 지금 사용중이다.
        paramByname('TempDateSeq').asstring :=
          formatdatetime('YYYY-MM-DD', now);
        execsql;

        // SeqNo Update
        close;
        sql.clear;
        sql.add('delete  from SeqNo');
        execsql;

        close;
        sql.clear;
        sql.add('insert into SeqNo');
        sql.add('(SeqNumber, SeqDate, seqDateNumber, seqMonthNumber, seqYearNumber) values');
        sql.add('(:SeqNumber, :SeqDate, :seqDateNumber, :seqMonthNumber,:seqYearNumber)');
        paramByname('seqNumber').asstring := inttostr((MaxChart + 1));
        paramByname('seqDateNumber').asstring := inttostr((MaxChartDate + 1));
        paramByname('seqMonthNumber').asstring := inttostr((MaxChartMonth + 1));
        paramByname('seqYearNumber').asstring := inttostr((MaxChartYear + 1));
        paramByname('seqDate').asstring := formatdatetime('YYYY-MM-DD', now);
        execsql;

      end
      else
      begin
        // tempChart 에서 가져온 경우에는 사용중임을 알려줘라. inUse ='1'

        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add('update  tempChart set');
          sql.add(' inUse = ''1'' ');
          sql.add('where TempChartNo= :TempChartNo');
          paramByname('TempChartNo').asstring := inttostr(MaxChart);
          execsql;
        end;

      end;
    end;
    // dm_f.zConnection.Commit;
  except
    on E: Exception do
    begin
      // dm_f.zConnection.Rollback;
      showmessage(E.Message + ' [저장오류]');
    end;
  end;



  // SeqUpdate(chartNo:string);

  case StrCase(VarChartRule, ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
    '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21']) of
    // 00 + 00 + - + 0000
    // 팀  년도 대쉬 일자(월일)
    1:
      begin

        if TeamKind <> '' then
          result := FormatFloat('00', strtoint(TeamKind)) +
            formatdatetime('YY', now) + '-' + formatdatetime('MMDD', now) +
            FormatFloat('000', MaxChartDate + nAddOrder)
        else
          result := FormatFloat('00', 0) + formatdatetime('YY', now) + '-' +
            formatdatetime('MMDD', now) + FormatFloat('000',
            MaxChartDate + nAddOrder);
      end;
    // 00 + 00 + 00 + 00
    // 년도 월    일  연번
    2:
      begin

        result := formatdatetime('YYMMDD', now) +
          FormatFloat('000', MaxChartDate + nAddOrder);
      end;
    // 소아교정구분
    // 00 + 00 + 00 + 00
    // 년도 월    일  연번
    3:
      begin

        result := formatdatetime('YYMMDD', now) +
          FormatFloat('000', MaxChartDate + nAddOrder);
      end;
    // 채워진 연번
    4:
      begin

        result := FormatFloat('00000000', MaxChart + nAddOrder);
      end;
    // 연번으로만(숫자)
    5:
      begin
        result := inttostr(MaxChart + 1);
      end;
    // 사용자정의
    6:
      begin
        result := '';
      end;
    7: // 연번('0000000') 이어서
      begin
        result := FormatFloat('00000000', MaxChart + nAddOrder);
      end;
    8: // 연번(숫자) 이어서
      begin
        result := inttostr(MaxChart + nAddOrder);
      end;
    // 00 + 00 + 00
    // 년도 월     연번
    9:
      begin

        result := Copy(formatdatetime('YYYY', now), 3, 2) +
          formatdatetime('MM', now) + FormatFloat('000',
          MaxChartMonth + nAddOrder);
      end;
    10:
      begin
        if MaxChart mod 10 > 0 then
          MaxChart := MaxChart div 10 * 10 + 10
        else
          MaxChart := MaxChart div 10 * 10;
        result := FormatFloat('00000000', MaxChart);
      end;

    11: // 년도+연번
      begin

        result := Copy(formatdatetime('YYYY', now), 3, 2) + '-' +
          FormatFloat('000', MaxChartYear + nAddOrder);
      end;

    12: // 접두어 + 연번(숫자) 이어서
      begin
        result := 'J-' + inttostr(MaxChart + nAddOrder);
      end;
    13: // 성명+주민년월
      begin
        result := varname + Copy(varjumin, 1, 4);
      end;
    14: // 생년월일 + 연번
      begin
        for i := 0 to 20 do
        begin
          if i = 0 then
            varChartNo := Copy(varjumin, 1, 6)
          else
            varChartNo := Copy(varjumin, 1, 6) + FormatFloat('00', i);

          if isEmptyGogekBasic(varChartNo) then
          begin
            result := varChartNo;
            break;
          end;
        end;
      end;
    15: // 생년월일 + 성명
      begin
        result := Copy(varjumin, 1, 6) + varname;
      end;
    16: // 년도+ 연번(0없음)
      begin

        result := Copy(formatdatetime('YYYY', now), 3, 2) + '-' +
          inttostr(MaxChartYear + nAddOrder);
      end;
    17: // 성명 + 생년월일
      begin
        result := varname + Copy(varjumin, 1, 6);
      end;
    // 00 + 00 + 00 + 00
    // 년도 월    일  연번
    18:
      begin

        result := formatdatetime('YYMMDD', now) +
          FormatFloat('00', MaxChartDate + nAddOrder);
      end;
    19: // 생년월일 + '-'+ 연번
      begin

        for i := 0 to 20 do
        begin
          { if i = 0 then
            begin
            if  copy(varjumin, 1, 6) <> '' then
            varChartno := copy(varjumin, 1, 6)  + '-1'
            else
            varChartno :='';
            end
            else
            varChartno := copy(varjumin, 1, 6) + '-' + inttostr(i);
          }

          if i > 0 then
          begin
            if Copy(varjumin, 1, 6) <> '' then
              varChartNo := Copy(varjumin, 1, 6) + '-' + inttostr(i)
            else
              varChartNo := '';
          end
          else
            varChartNo := Copy(varjumin, 1, 6);

          if isEmptyGogekBasic(varChartNo) then
          begin
            result := varChartNo;
            break;
          end;
        end;
      end;

    20: // 생년월일 + '-'+ 연번  ( -1 부터)
      begin

        i := 1;
        if Copy(varjumin, 1, 6) <> '' then
          varChartNo := Copy(varjumin, 1, 6) + '-' + inttostr(i)
        else
          exit;

        while not isEmptyGogekBasic(varChartNo) do
        begin
          i := i + 1;
          // break;
          // if  copy(varjumin, 1, 6) <> '' then
          varChartNo := Copy(varjumin, 1, 6) + '-' + inttostr(i);
          // else
          // varChartno :='';

        end;
        // varChartno := copy(varjumin, 1, 6)  + '-' +   inttostr(i);

        result := varChartNo;

        { if i > 0 then
          begin
          if  copy(varjumin, 1, 6) <> '' then
          varChartno := copy(varjumin, 1, 6) + '-' + inttostr(i)
          else
          varChartno :='';
          end
          else
          varChartno := copy(varjumin, 1, 6)  + '-' + '1' ;

          if isEmptyGogekBasic(varChartno) then
          begin
          Result := varChartno;
          break;
          end;
        }
      end;

    21: // 년도+연번  (-없음)
      begin

        result := formatdatetime('YYYY', now) + FormatFloat('000',
          MaxChartYear + nAddOrder);
      end;

  end;
  // FormInit.Free;
end;

function isChartNoEmpty(VarChart: string): boolean;
begin
  // 우편번호 찾기
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_gogek_basic');
    sql.add('Where chart=:chart');
    paramByname('chart').asstring := VarChart;
    open;
    result := isEmpty;
  end;
end;

function FindJuso(TargetZip: string): string;
begin
  // 우편번호 찾기
  if TargetZip <> '' then
  begin
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select * from post');
      sql.add('Where zipcode=:ZIpcode');
      paramByname('ZipCode').asstring := TargetZip;
      open;
      if not isEmpty then
        result := fieldByName('ZipCode').asstring + '^' + ' ' +
          trim(fieldByName('Sido').asstring) + ' ' +
          trim(fieldByName('GuGun').asstring) + ' ' +
          trim(fieldByName('DOng').asstring) + '^' + ' ' +
          trim(fieldByName('Ri').asstring) + ' ' +
          trim(fieldByName('Bunji').asstring);
      exit;
    end;
  end;
end;

function updateStatusCnt(nowDate: TdateTime;gubun:string; doc_Code, team : string): boolean;
begin
   result:= false;
   try
     with dm_f.sqlTimer2 do
     begin
       close;
       sql.clear;

       sql.add('select ID from tblStatus_Cnt   WHERE jin_day = :jin_day ');
       sql.Add('and  doc_code =:doc_code and team=:team');
       paramByName('jin_day').asString:= formatDateTime( 'YYYY-MM-DD', nowDate);
       paramByName('doc_code').asString        := doc_Code;
       paramByName('team').asString            := team;
       open;

       if isEmpty then
       begin
              close;
              sql.clear;
              sql.add('insert into tblStatus_Cnt ');
              sql.add('(jin_day ,cntJubsu ,cntBoryu,cntPromise,cntSunapWait , ');
              sql.add(' cntSunapFinish, cntIbWon ,doc_code ,team     ) values ');
              sql.add('(:jin_day ,:cntJubsu ,:cntBoryu,:cntPromise,:cntSunapWait , ');
              sql.add(' :cntSunapFinish, :cntIbWon ,:doc_code ,:team     )  ');
              paramByName('jin_day').asString         := formatDateTime( 'YYYY-MM-DD', nowDate);
              paramByName('cntJubsu').asInteger       := 0;
              paramByName('cntBoryu').asInteger       := 0;
              paramByName('cntPromise').asInteger     := 0;
              paramByName('cntSunapWait').asInteger   := 0;
              paramByName('cntSunapFinish').asInteger := 0;
              paramByName('cntIbWon').asInteger       := 0;
              paramByName('doc_code').asString        := doc_Code;
              paramByName('team').asString            := team;
              execsql;

       end;
     end;



   except

         result:= false;
         exit;
   end;


   try
           with dm_f.sqlTimer2 do
           begin
               close;
               sql.clear;

                case strCase(gubun,['0','1','2','3','4','5','6', '10'])  of
                  0, 7: //접수
                     begin
                         sql.add('UPDATE tblStatus_Cnt SET ');
                         sql.Add('cntJubsu = cntJubsu + 1  ');
                     end;
                  1: //진료시작 - 진료중
                     begin
                         sql.add('UPDATE tblStatus_Cnt SET ');
                         sql.Add('cntTreat = cntTreat + 1  ');
                     end;
                  2:  //수납대기 - 진료마침
                     begin
                         sql.add('UPDATE tblStatus_Cnt SET ');
                         sql.Add('cntSunapWait = cntSunapWait + 1  ');
                     end;

                  3: //수납완료
                     begin
                         sql.add('UPDATE tblStatus_Cnt SET ');
                         sql.Add('cntSunapFinish = cntSunapFinish + 1  ');
                     end;
                  4:  //보류
                     begin
                         sql.add('UPDATE tblStatus_Cnt SET ');
                         sql.Add('cntBoryu = cntBoryu + 1  ');
                     end;

                  5, 6:  //숙박 입원  6: ; //납병동 입원
                     begin
                         sql.add('UPDATE tblStatus_Cnt SET ');
                         sql.Add('cntIbwon = cntIbwon + 1  ');
                     end;

                 end;


               sql.Add('where jin_day = :jin_day');
               sql.Add('and  doc_code =:doc_code and team=:team');
               paramByName('jin_day').asString         := formatDateTime( 'YYYY-MM-DD', nowDate);
               paramByName('doc_code').asString        := doc_Code;
               paramByName('team').asString            := team;
               execsql;

           end;
      result:= true;
   except

   end;
end;

function updateTblStatus(nowDate: TdateTime): boolean;
begin
   result:= false;
   try
     with dm_f.sqlTimer2 do
    begin
      close;
      sql.clear;
      sql.add('select status from tblstatus   WHERE jin_day = :jin_day');
      paramByName('jin_day').asString:= formatDateTime( 'YYYY-MM-DD', nowDate);
      open;
       if not isEmpty then
       begin
              close;
              sql.clear;
              sql.add('UPDATE tblstatus SET status = status + 1 WHERE jin_day = :jin_day');
               paramByName('jin_day').asString:= formatDateTime( 'YYYY-MM-DD', nowDate);
              execsql;
       end
       else
       begin
              close;
              sql.clear;
              sql.add('insert into tblstatus (status, jin_day) values (:status, :jin_day)');
              paramByName('Status').asString := '1';
              paramByName('jin_day').asString:= formatDateTime( 'YYYY-MM-DD', nowDate);
              execsql;

       end;
      result:= true;


    end;
   except

   end;

end;


function FindDDD(TargetJuso: string): string;
var
  SrcJuso, SeekStr: string;

begin
  if TargetJuso <> '' then
  begin
    // DDD 번호 찾아오기
    SrcJuso := trim(TargetJuso);
    SeekStr := Copy(SrcJuso, 1, 4);

    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select * From DDD Where City = :City');
      paramByname('City').asstring := SeekStr;
      open;
      result := fieldByName('Code').asstring;
    end;
  end;
end;

function jubsuSave(
  VarChart: string;
  varTeam: string;
  varDoc: string;
  varHyg: string;
  vargubun: string;
  varday: string;
  varTime: TdateTime;
  varFirst: string;
  varjumin: string;
  varArea: string;
  varname: string;
  varcphone: string;
  varprmemo: string;
  varprremark: string;
  varpridn: string;
  varprtime: string;
  jongbyul: integer;
  choje: integer;
  sanjung: string;
  // teakrye
  teakryecode: string; // teakryeCode
  health: integer;
  Pregnan: string;
  chasangNo: string;
  bontype: string;
  yujikum: string;
  kwamok: string;
  treatRoom: string;
  isInpat: string;
  inPat_Time: string;
  rpPK: integer;
  isOutPat: string;
  outPat_Time: string;
  jaboID: integer;
  doc_code: string;
  isJiwon:string;
  isBohum100 : string;
  artTeeth1: string = '';
  artTeeth2: string = '';
  implTeeth1: string = '';
  implTeeth2: string = '';
  varJubsuKind: integer = 0): integer;
var
  varMaxnOrder: integer;
  varJubsuID: integer;

begin
  if VarChart = '' then
  begin
    result := -1;
    exit;
  end;
  if (varTeam = '') or (varTeam = '0') then
  begin
    varTeam := '1';
  end;

  result := -1;

  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('select isNull(Max(nOrder), 0 ) as MaxnOrder from ma_jubsu');
      sql.add('where  jin_day=:jin_day');
      paramByname('Jin_Day').asstring := varday;
      open;

      varMaxnOrder := fieldByName('maxNorder').asinteger + 1;

      close;
      sql.clear;
      sql.add('select * from ma_jubsu');
      sql.add('where chart=:chart and jin_day=:jin_day and jongbyul=:jongbyul');
      sql.add('and team=:team and isInPat=:isInPat and doc_code=:doc_code    ');
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('team').asstring := varTeam;
      paramByname('doc_code').asstring := doc_code;
      paramByname('jongbyul').asinteger := jongbyul;
      paramByname('isInPat').asstring := isInpat;
      open;

      varJubsuID := fieldByName('ID').asinteger;

      if isEmpty then
      begin
        close;
        sql.clear;
        sql.add('insert into ma_jubsu                                                                    ');
        sql.add('(Chart, team, doc,hyg, gubun, jin_day, jin_time, jongbyul, rpPk,                        ');
        sql.add(' teakrye, teakRyeCode, treatRoom,  isInpat, inPat_Time, outPat_time, jaboID,            ');
        sql.add(' first_day,   Jumin, area, choje, name, c_phone, health,  pregnan,                      ');
        sql.add(' chasangno, bontype,  isOutPat,   doc_code, isBohum100, isJiwon,                                          ');
        sql.add(' yujikum,  kwamok,  artteeth1,  artteeth2,  implteeth1,   implteeth2,                   ');
        sql.add(' pr_memo, pr_remark, pr_idn, pr_time, nOrder) values                                    ');
        sql.add('(:Chart, :team, :doc, :hyg, :gubun, :jin_day, :jin_time, :jongbyul, :rpPK,              ');
        sql.add(' :teakrye,:teakRyeCode, :treatRoom, :isInpat, :inPat_Time, :outPat_time, :jaboID,       ');
        sql.add(' :first_day,  :Jumin, :area, :choje, :name, :c_phone, :health,  :pregnan,               ');
        sql.add(' :chasangno, :bontype, :isOutPat, :doc_code,  :isBohum100,  :isJiwon,                                            ');
        sql.add(' :yujikum,  :kwamok,  :artteeth1,  :artteeth2,  :implteeth1,   :implteeth2,             ');
        sql.add(' :pr_memo, :pr_remark, :pr_idn, :pr_time, :nOrder)                                      ');
        paramByname('Chart').asstring := VarChart;
        paramByname('team').asstring := varTeam;
        paramByname('doc').asstring := varDoc;
        paramByname('doc_code').asstring := doc_code;
        paramByname('hyg').asstring := varHyg;
        paramByname('Gubun').asstring := vargubun;
        paramByname('isInpat').asstring := isInpat;
        paramByname('isOutpat').asstring := isOutPat;
        paramByname('inPat_Time').asstring := inPat_Time;
        paramByname('outPat_Time').asstring := outPat_Time;
        paramByname('jaboID').asinteger := jaboID;
        paramByname('rpPK').asinteger := rpPK;
        paramByname('Jin_Day').asstring := varday;
        paramByname('Jin_time').AsDateTime := varTime;
        paramByname('jongbyul').asinteger := jongbyul;
        paramByname('kwamok').asstring := kwamok;
        paramByname('teakrye').asstring := sanjung;
        paramByname('teakryeCode').asstring := teakryecode;
        paramByname('first_Day').asstring := varFirst;
        paramByname('Jumin').asstring := Copy(varjumin, 1, 8);
        paramByname('Area').asstring := varArea;
        paramByname('Choje').asinteger := choje;
        paramByname('name').asstring := varname;
        paramByname('c_phone').asstring := varcphone;
        paramByname('pr_memo').asstring := varprmemo;
        paramByname('pr_remark').asstring := varprremark;
        paramByname('pr_idn').asstring := varpridn;
        paramByname('pr_time').asstring := varprtime;
        paramByname('nOrder').asinteger := varMaxnOrder;
        paramByname('treatRoom').asstring := treatRoom;

        paramByname('isBohum100').asstring := isBohum100;
        paramByname('isJiwon').asstring := isJiwon;

        paramByname('health').asinteger := health;
        paramByname('pregnan').asstring := Pregnan;
        paramByname('chasangno').asstring := chasangNo;

        paramByname('bontype').asstring := bontype;
        paramByname('yujikum').asstring := yujikum;
        paramByname('artteeth1').asstring := artTeeth1;
        paramByname('artteeth2').asstring := artTeeth2;
        paramByname('implteeth1').asstring := implTeeth1;
        paramByname('implteeth2').asstring := implTeeth2;

        {
          showmessage(
          'varChart=        '+ '  ' +         varChart + #10#13+
          'varTeam=        '+ '  ' +          varTeam + #10#13+
          'varDoc=        '+ '  ' +           varDoc + #10#13+
          'varHyg=        '+ '  ' +           varHyg + #10#13+
          'varGubun=        '+ '  ' +         varGubun + #10#13+
          'varDay=        '+ '  ' +           varDay + #10#13+
          'varTime=        '+ '  ' +          formatdatetime('YYYY-MM-DD',varTime) + #10#13+
          'varFirst=        '+ '  ' +         varFirst + #10#13+
          'varJumin=        '+ '  ' +         varJumin + #10#13+    //13자리
          'varArea=        '+ '  ' +          varArea + #10#13+
          'varchoje=        '+ '  ' +         varchoje + #10#13+
          'varname=        '+ '  ' +          varname + #10#13+
          'varcphone=        '+ '  ' +        varcphone + #10#13+
          'varprmemo=        '+ '  ' +        varprmemo + #10#13+
          'varprremark=        '+ '  ' +      varprremark + #10#13+
          'varpridn=        '+ '  ' +         varpridn + #10#13+
          'varprtime=        '+ '  ' +        varprtime + #10#13+
          'varMaxNorder=        '+ '  ' +     inttostr(varMaxNorder) ) ;
        }

        execsql;

        close;
        sql.clear;
        sql.text := ' select @@Identity as sid';
        open;

        varJubsuID := fieldByName('sid').asinteger;

        close;
        sql.clear;
        sql.add('Update  ma_gogek_basic Set');
        sql.add('last_day=:last_day');
        sql.add('Where chart=:chart');
        paramByname('last_Day').asstring := varday;
        paramByname('chart').asstring := VarChart;
        execsql;

        // Dm_f.zConnection.Commit;

        // '10'접수
        // '0', '진료대기'
        if (varJubsuKind = 1) or (configvalue.varDaegiSound = '1') then
          DoSound('Success');

        result := varJubsuID;
      end
      else
      begin
        // 대기 정보를 바꿈.
        close;
        sql.clear;
        sql.add('Update  ma_jubsu Set');
        sql.add(' gubun=:gubun');
        sql.add(' ,doc_code=:doc_code ');
        sql.add(' ,isJiwon=:isJiwon ');
        sql.add(' ,team=:team  ');
        // Sql.Add(' ,outPat_Time=:outPat_Time');
        // Sql.Add(' ,JaboID=:JaboID ');//sunaptime=:sunaptime, jinstime=:jinstime, jinftime=:jinftime');
        sql.add(' ,doc=:doc ');
        sql.add(' ,hyg=:hyg');
        sql.add(' ,isBohum100=:isBohum100');

        sql.add(' ,jongbyul=:jongbyul');
        // Sql.Add(' ,kwamok=:kwamok ');
        // Sql.Add(' ,teakrye=:teakrye ');
        sql.add(' ,choje=:choje ');
        // Sql.Add(' ,isOutpat=:isOutpat ');
        // Sql.Add(' ,yujikum=:yujikum ');
        // Sql.Add(' ,artteeth1=:artteeth1,  artteeth2=:artteeth2  ');
        sql.add(' ,treatRoom=:treatRoom         ');
        // Sql.Add(' ,health=:health, ');
        // Sql.Add(' ,pregnan=:pregnan,');
        // Sql.Add(' ,chasangno=:chasangno ');
        // Sql.Add(' ,bontype=:bontype');
        // Sql.Add(' ,rpPk=:rpPk         ');
        // Sql.Add(' ,implteeth1=:implteeth1,   implteeth2=:implteeth2');
        // Sql.Add(' ,isInpat=:isInpat');
        // Sql.Add(' ,inPat_Time=:inPat_Time       ');
        // Sql.Add(' Where chart=:chart and jin_day=:jin_day and team=:team                      ');
        sql.add(' Where ID=:ID                                                                ');
        // ParamByName('chart').AsString          := varChart;
        // ParamByName('jin_Day').AsString        := varDay;

        paramByname('ID').asinteger := varJubsuID;
        paramByname('team').asstring := varTeam;

        paramByname('isJiwon').asstring := isJiwon;

        paramByname('doc').asstring := varDoc;
        paramByname('doc_code').asstring := doc_code;
        paramByname('hyg').asstring := varHyg;

        paramByname('Gubun').asstring := vargubun;

        // ParamByName('isInpat').AsString        :=  isInpat;
        // ParamByName('isOutpat').AsString       :=  isOutpat;
        // ParamByName('inPat_Time').AsString     :=  inPat_Time;
        // ParamByName('outPat_Time').AsString    :=  outPat_Time;
        // ParamByName('jaboID').AsInteger        :=  jaboID;

        // ParamByName('rpPk').asInteger          :=  rpPk;

        paramByname('jongbyul').asinteger := jongbyul;
        // ParamByName('kwamok').AsString         := kwamok;
        // ParamByName('teakrye').AsString        := sanjung;

        paramByname('treatRoom').asstring := treatRoom;
        paramByname('choje').asinteger := choje;
        paramByname('isBohum100').asString := isBohum100;


        // ParamByName('health').AsInteger        :=       health    ;
        // ParamByName('pregnan').AsString        :=       pregnan   ;
        // ParamByName('chasangno').AsString      :=       chasangno ;
        // ParamByName('bontype').AsString        :=       bontype    ;
        // ParamByName('yujikum').AsString        :=       yujikum    ;
        // ParamByName('artteeth1').AsString      :=       artteeth1  ;
        // ParamByName('artteeth2').AsString      :=       artteeth2  ;
        // ParamByName('implteeth1').AsString     :=       implteeth1 ;
        // ParamByName('implteeth2').AsString     :=       implteeth2 ;

        execsql;

        // Dm_f.zConnection.Commit;

        // Dm_f.zConnection.Rollback;
        if (varJubsuKind = 1) or (configvalue.varDaegiSound = '1') then
          DoSound('Already');
        result := varJubsuID;
      end;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      if (varJubsuKind = 1) or (configvalue.varDaegiSound = '1') then
        DoSound('Fail');
      result := -1;
      showmessage(' [접수오류]' + E.Message);
    end;

  end;
end;

function ChangeStatus(
    varname: string;
    varday: TdateTime;
    varTeam: string;
    doc_code: string;
    VarChart: string;
    varStat: string;
    vargubun: string;
    varJubsuID: string;
    varChair: string = '0'): boolean;
var
  i: integer;
begin
  try

    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('gubun=:gubun ');

      if vargubun = '10' then // 접수
      begin
        //ToDo: RIS로 취소데이터 보낼때 vargubun = '10'으로 보내고 vargubun := '0'으로 쓴다.
        //왜냐하면 접수를 취소할때  jin_time은 바뀌면 안된다. jin_time==> Ris에서 키로 쓰인다.
        vargubun := '0';
        sql.add(' ,jubsu_time = :jubsu_time');
        paramByname('jubsu_time').AsDateTime := now; // varTime;
      end
      else if vargubun = '0' then // 체어(접수)
      begin
        // Sql.Add(' ,jinstime=:jinstime');
        sql.add(' ,jin_time=:jin_time');//jubsu_time=:jubsu_time');
        sql.add(' ,chair=:chair');
        paramByname('chair').asstring := varChair;
        paramByname('Jin_Time').AsDateTime := now; // varTime;
//        paramByname('jubsu_time').AsDateTime := now; // varTime;
      end
      else if vargubun = '1' then // 진료시작
      begin
        sql.add(' ,jinstime=:jinstime');
        sql.add(' ,chair=:chair');
        paramByname('chair').asstring := varChair;
        paramByname('JinsTime').AsDateTime := now; // varTime;
      end
      else if vargubun = '2' then  //진료 마침시간
      begin
        sql.add(' , jinftime=:jinstime');
        paramByname('JinsTime').AsDateTime := now; // varTime;

      end

      else // isInpat 1:숙박입원중 2: 낮병동입원중  3: 숙박퇴원  4: 낮병동퇴원
        if vargubun = '5' then // 숙박입원중  ==> 입원시간 바꾸자.
        begin
          sql.add(' , inPat_time=:inPat_time, isInPat=:isInPat, isOutPat=:isOutPat');
          paramByname('inPat_time').AsDateTime := varday; // now; //varTime;
          paramByname('isInPat').asstring  := '1';
          paramByname('isOutPat').asstring := '0';

        end
        else if vargubun = '6' then // 낮병동입원중==> 입원시간 바꾸자.
        begin
          sql.add(' , inPat_time=:inPat_time, isInPat=:isInPat, isOutPat=:isOutPat');
          paramByname('inPat_time').AsDateTime := varday; // now; //varTime;
          paramByname('isInPat').asstring      := '2';
          paramByname('isOutPat').asstring     := '0';

        end
      //ToDO: 퇴원시 아래 함수 사용해서 isOutPat값을 1로 한다. - 진료실에서 퇴원시 사용
      //  function ChangeStatus_JubsuID_OutPat(varID: string;  outPat_Time: TdateTime): boolean;

        else if vargubun = '3' then   //수납
        begin
          sql.add(' , sunaptime=:jinstime'); //수납시간
          paramByname('JinsTime').AsDateTime := now; // varTime;

        end;
      //   vargubun = '4' 보류

      // else
      // if varGubun = '0' then
      // Sql.Add(' jin_time=:jinstime');

      // Sql.Add('where chart=:Chart and jin_day=:jin_day ');
      // sql.Add(' and team=:team and doc_code=:doc_code');

      sql.add('where ID=:ID ');

      paramByname('Gubun').asstring := vargubun;

      paramByname('ID').asstring := varJubsuID;

      // ParamByName('Jin_Day').AsString  := formatDateTime('YYYY-MM-DD',varDay);
      // ParamByName('Chart').AsString    := varChart;
      // ParamByName('team').AsString     := varTeam;
      // ParamByName('doc_code').AsString := doc_code;
      execsql;
      // Dm_f.zConnection.Commit;
      result := true;


      if  updateStatusCnt(now, vargubun,  doc_Code, varTeam )  = true then
       begin

           //ToDo : tblStatus 에 값을 변경 -> 1증가
           updateTblStatus(now);

       end;


    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기상태변경오류]' + E.Message);
    end;

  end;

end;

function Update_jubsuChamgo(varID, varChamgo: string): boolean;
// 아이디로 대기상태 변경, 같은 체어에 환자 있을때 미리있던 체어를 수납대기로 보낸다.
var
  i: integer;
begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('chamgo=:chamgo ');
      sql.add('where id=:Id');

      paramByname('chamgo').asstring := varChamgo;
      paramByname('ID').asstring := varID;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기 chamgo 변경오류]' + E.Message);
    end;

  end;

end;


function Update_jubsuRpPk(varID : integer; Jubsu_rpPk:integer): boolean;
var
  i: integer;
begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('rpPk=:rpPk ');
      sql.add('where id=:Id');

      paramByname('rpPk').asInteger := Jubsu_rpPk;
      paramByname('ID').asInteger := varID;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기 rpPk 변경오류]' + E.Message);
    end;

  end;

end;

function ChangeStatus_JubsuID(varID: string): boolean;
// 아이디로 대기상태 변경, 같은 체어에 환자 있을때 미리있던 체어를 수납대기로 보낸다.
var
  i: integer;
begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('gubun=:gubun ');

      sql.add(' , jinftime=:jinstime');
      paramByname('JinsTime').AsDateTime := now; // varTime;

      sql.add('where id=:Id');

      paramByname('Gubun').asstring := '2';
      paramByname('ID').asstring := varID;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기상태변경오류]' + E.Message);
    end;

  end;

end;

function ChangeStatus_JubsuID_OutPat(varID: string;
  outPat_Time: TdateTime): boolean;
// 접수 아이디로 퇴원처리
var
  i: integer;
begin

  // isInpat 1:숙박입원중 2: 낮병동입원중
  // isOutPat 1:  퇴원
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('isOutPat = :isOutPat , outPat_time=:outPat_time');
      sql.add('where id=:Id');

      paramByname('outPat_time').AsDateTime := outPat_Time; // now; //varTime;
      paramByname('isOutPat').asstring := '1';
      paramByname('ID').asstring := varID;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기상태변경오류]' + E.Message);
    end;

  end;

end;

function ChangeStatus_JubsuID_Cancel_INpat(varID: string): boolean;
// 접수 아이디로 입원취소 처리
var
  i: integer;
begin

  // isInpat 0: 외래  1:숙박입원중 2: 낮병동입원중
  // isOutPat 1:  퇴원
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('isInPat = :isInPat ');
      sql.add('where id=:Id');
      paramByname('isInPat').asstring := '0';
      paramByname('ID').asstring := varID;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기상태변경오류]' + E.Message);
    end;

  end;

end;

function ChangeStatus_JubsuID_Cancel_OutPat(varID: string): boolean;
// 접수 아이디로 퇴원취소 처리
var
  i: integer;
begin

  // isInpat 0: 외래  1:숙박입원중 2: 낮병동입원중
  // isOutPat 1:  퇴원
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('isOutPat = :isOutPat ');
      sql.add('where id=:Id');
      paramByname('isOutPat').asstring := '0';
      paramByname('ID').asstring := varID;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기상태변경오류]' + E.Message);
    end;

  end;

end;



// 2012.7.1

function saveBonType(VarChart, varbontype, varsanjung, varartTeeth1,
  varartTeeth2, varYoyang1, varYoyang2, varimplTeeth1, varimplTeeth2,
  varimplYoyang1, varimplYoyang2, varSunkiho1, varSunkiho2, varSunkiho3,
  varSunkiho: string): boolean;
const
  selectGogek = 'Select * From ma_gogek_basic' + #10#13 +
    'Where Chart = :Chart';
  // updateBontype = 'Update ma_gogek_basic Set' + #10#13 +
  // 'bontype=:bontype, bonsanjung=:bonsanjung ' + #10#13 +
  // 'Where chart=:chart';

  updateBontype = 'Update ma_gogek_basic Set               ' + #10#13 +
    'bontype=:bontype, bonsanjung=:bonsanjung,          ' + #10#13 +
    'artTeeth1=:artTeeth1, artTeeth2=:artTeeth2,        ' + #10#13 +
    'artYoyang1=:artYoyang1, artYoyang2=:artYoyang2,    ' + #10#13 +
    'implTeeth1=:implTeeth1, implTeeth2=:implTeeth2,    ' + #10#13 +
    'implYoyang1=:implYoyang1, implYoyang2=:implYoyang2, ' + #10#13 +
  // [SunKiho1]
    'SunKiho1=:SunKiho1, SunKiho2=:SunKiho2,    ' + #10#13 +
    'SunKiho3=:SunKiho3, SunKiho=:SunKiho    ' + #10#13 +
    'Where chart=:chart                                 ';

begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := selectGogek;
      paramByname('Chart').asstring := VarChart;
      open;
      if not isEmpty then
        with dm_f.sqlTemp do
        begin
          close;
          sql.clear;
          sql.text := updateBontype;
          paramByname('chart').asstring := VarChart;
          paramByname('bontype').asstring := varbontype;
          paramByname('bonsanjung').asstring := varsanjung;
          paramByname('artTeeth1').asstring := varartTeeth1;
          paramByname('artTeeth2').asstring := varartTeeth2;
          paramByname('artYoyang1').asstring := varYoyang1;
          paramByname('artYoyang2').asstring := varYoyang2;

          paramByname('implTeeth1').asstring := varimplTeeth1;
          paramByname('implTeeth2').asstring := varimplTeeth2;
          paramByname('implYoyang1').asstring := varimplYoyang1;
          paramByname('implYoyang2').asstring := varimplYoyang2;

          execsql;
          // Dm_f.zConnection.Commit;

          result := true;
        end;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [BONTYPE저장오류]' + E.Message);
    end;

  end;
end;

function GogekExist(chart: string): boolean;
begin
  result := false;
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('Select * From ma_gogek_basic');
    sql.add('Where chart= :chart');
    paramByname('chart').asstring := trim(chart);
    open;
    if not isEmpty then
    begin
      result := true;
    end;
  end;

end;

function loadTeamName(varTeam: string): string;
begin
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('Select * From ma_team');
    sql.add('Where team_name= :team_name');
    paramByname('team_name').asstring := varTeam;
    open;
    if not isEmpty then
    begin
      result := fieldByName('team_doctor1').asstring;
    end
    else
    begin
      result := '';
    end;
  end;

end;

function loadChojeName(varCode: string): string;
begin
  with dm_f.sqlTemp15 do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_basic                                   ');
    sql.add('where  (code like  ''000%'') and (code <> ''000000'')     ');
    sql.add('and inuse <>  ''0''                                      ');
    sql.add('and val= :val');
    paramByname('val').asstring := varCode;
    open;
    if not isEmpty then
    begin
      result := fieldByName('disp').asstring;
    end
    else
    begin
      result := '';
    end;
  end;

end;

function loadJongByulName(varCode: string): string;
begin
  with dm_f.sqlTemp15 do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_basic                                   ');
    sql.add('where  (code like  ''002%'') and (code <> ''002000'')     ');
    sql.add('and inuse <>  ''0''                                      ');
    sql.add('and val= :val');
    paramByname('val').asstring := varCode;
    open;
    if not isEmpty then
    begin
      result := fieldByName('disp').asstring;
    end
    else
    begin
      result := '';
    end;
  end;

end;

function loadJinjryosil(varCode: string): string;
begin
  with dm_f.sqlTemp15 do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_basic                                   ');
    sql.add('where  (code like  ''093%'') and (code <> ''09300'')     ');
    sql.add('and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'' )   ');
    sql.add('and val= :val');
    paramByname('val').asstring := varCode;
    open;
    if not isEmpty then
    begin
      result := fieldByName('disp').asstring;
    end
    else
    begin
      result := '';
    end;
  end;

end;

function loadTeamKey(varTeamName: string): string;
begin
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('Select * From ma_team');
    sql.add('Where team_doctor1= :team_doctor1');
    paramByname('team_doctor1').asstring := varTeamName;
    open;
    if not isEmpty then
    begin
      result := fieldByName('team_key').asstring;
    end
    else
    begin
      result := ' ';
    end;
  end;

end;

function loadHanMokName(varCode: string): string;
begin
  with dm_f.sqlTemp15 do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_basic                                   ');
    sql.add('where  (code like  ''015%'') and (code <> ''015000'')     ');
    sql.add('and inuse <>  ''0''                                      ');
    sql.add('and val= :val');
    paramByname('val').asstring := varCode;
    open;
    if not isEmpty then
    begin
      result := fieldByName('disp').asstring;
    end
    else
    begin
      result := '';
    end;
  end;

end;

procedure SawonWorkSave(SwCode: string; SwId: string; SwName: string;
  SwDate: string; SwTime: string; SwWork: string; SwRemark: string;
  SwProcess: string; SwSect: string; SwRefer: string; regday: TdateTime;
  modday: TdateTime; sect: string; endday: TdateTime; SwDisp: string;
  endtime: string; SwTitle:string);
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Insert into ma_sawon_work');
    sql.add('(');
    sql.add('SwCode,SwId,SwName,SwDate,SwTime,SwWork,');
    sql.add('SwRemark,SwProcess,SwRefer, SwSect, regday, modday, sect, endday, endtime, swdisp, swTitle');
    sql.add(')Values');
    sql.add('(');
    sql.add(':SwCode,:SwId,:SwName,:SwDate,:SwTime,:SwWork,');
    sql.add(':SwRemark,:SwProcess,:SwRefer, :SwSect,  :regday, :modday, :sect, :endday, :endtime, :swDisp,:swTitle');
    sql.add(')');
    paramByname('SwTitle').asstring := SwTitle;
    paramByname('SwCode').asstring := SwCode;
    paramByname('SwId').asstring := SwId;
    paramByname('SwName').asstring := SwName;
    paramByname('SwDate').asstring := SwDate;
    paramByname('SwDisp').asstring := SwDate;
    paramByname('SwTime').asstring := SwTime;
    paramByname('SwWork').asstring := SwWork;
    paramByname('SwRemark').asstring := SwRemark;
    paramByname('SwProcess').asstring := SwProcess;
    paramByname('SwRefer').asstring := SwRefer;
    paramByname('SwSect').asstring := SwSect;
    paramByname('regday').AsDateTime := regday;
    paramByname('modday').AsDateTime := modday;
    paramByname('sect').asstring := sect;
    paramByname('endday').AsDateTime := endday;
    paramByname('endtime').asstring := endtime;
    execsql;
  end;

end;

procedure SawonWorkUpdate(SwCode: string; SwId: string; SwName: string;
  SwDate: string; SwTime: string; SwWork: string; SwRemark: string;
  SwProcess: string; SwSect: string; SwRefer: string; modday: TdateTime;
  sect: string; endday: TdateTime; SwDisp: string; endtime: string; SwTitle:string);
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Update ma_sawon_work Set');
    sql.add('SwId=:SwId,SwName=:SwName,SwDate=:SwDate,SwTime=:SwTime,SwWork=:SwWork, SwTitle=:SwTitle,');
    sql.add('SwRemark=:SwRemark,SwProcess=:SwProcess,SwRefer=:SwRefer, SwSect=:SwSect, ');
    sql.add(' modDay=:modDay, sect=:sect, endday=:endDay, endtime=:endTime, swDisp=:swDisp');
    sql.add('Where SwCode=:SwCode');
    paramByname('SwTitle').asstring := SwTitle;
    paramByname('SwCode').asstring := SwCode;
    paramByname('SwId').asstring := SwId;
    paramByname('SwName').asstring := SwName;
    paramByname('SwDate').asstring := SwDate;
    paramByname('SwTime').asstring := SwTime;
    paramByname('SwWork').asstring := SwWork;
    paramByname('SwRemark').asstring := SwRemark;
    paramByname('SwProcess').asstring := SwProcess;
    paramByname('SwRefer').asstring := SwRefer;
    paramByname('SwSect').asstring := SwSect;
    paramByname('Sect').asstring := sect;
    paramByname('modday').AsDateTime := modday;
    paramByname('endday').AsDateTime := endday;
    paramByname('endtime').asstring := endtime;
    paramByname('swDisp').asstring := SwDisp;
    execsql;
  end;
end;

procedure TelRecUpdate(TrCode: string; TrName: string; TrChart: string;
  TrDate: string; TrTime: string; TriTime: string; TrRemark: string;
  subject: string; receiver: string; transfer: string; degree: string;
  TrNumber: string);
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Update ma_telrec Set');
    sql.add('TrName=:TrName,TrChart=:TrChart,');
    sql.add('TrDate=:TrDate,TrTime=:TrTime,TriTime=:TrITime,');
    sql.add('receiver=:receiver,transfer =:transfer,');
    sql.add('subject= :subject, degree=:degree,');
    sql.add('TrRemark=:TrRemark,TrNumber=:TrNumber');
    sql.add('Where TrCode=:TrCode');
    paramByname('TrCode').asstring := TrCode;
    paramByname('TrName').asstring := TrName;
    paramByname('TrChart').asstring := TrChart;
    paramByname('TrDate').asstring := TrDate;
    paramByname('TrTime').asstring := TrTime;
    paramByname('TriTime').asstring := TriTime;
    paramByname('TrRemark').asstring := TrRemark;
    paramByname('TrNumber').asstring := TrNumber;
    paramByname('transfer').asstring := transfer;
    paramByname('receiver').asstring := receiver;
    paramByname('degree').asstring := degree;
    paramByname('subject').asstring := subject;

    execsql;
  end;
end;

function TelRecUpdate2(TrCode: string; TrName: string; TrChart: string;
  TriTime: string; TrRemark: string): boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Update ma_TelRec Set');
      sql.add('TrName=:TrName,TrChart=:TrChart,');
      sql.add('TriTime=:TriTime,');
      sql.add('TrRemark=:TrRemark');
      sql.add('Where TrCode=:TrCode');
      paramByname('TrCode').asstring := TrCode;
      paramByname('TrName').asstring := TrName;
      paramByname('TrChart').asstring := TrChart;
      paramByname('TriTime').asstring := TriTime;
      paramByname('TrRemark').asstring := TrRemark;
      execsql;
      result := true;
    end;
  except
    result := false;
  end;
end;

function TelRecSave(TrCode: string; TrName: string; TrChart: string;
  TrDate: string; TrTime: string; TriTime: string; TrRemark: string;
  subject: string; receiver: string; transfer: string; degree: string;
  TrNumber: string; gubun: string; TrCode2: string = ''): boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Insert into ma_telrec');
      sql.add('(');
      sql.add('TrCode,TrName,TrChart,');
      sql.add('TrDate,TrTime,TriTime,');
      sql.add('receiver, transfer, subject, degree,');
      sql.add('TrRemark,TrNumber, gubun, telSeqcode');
      sql.add(')Values');
      sql.add('(');
      sql.add(':TrCode,:TrName,:TrChart,');
      sql.add(':TrDate,:TrTime,:TriTime,');
      sql.add(':receiver, :transfer, :subject, :degree,');
      sql.add(':TrRemark,:TrNumber,:gubun, :TelSeqCode');
      sql.add(')');
      paramByname('TrCode').asstring := TrCode;
      paramByname('TrName').asstring := TrName;
      paramByname('TrChart').asstring := TrChart;
      paramByname('TrDate').AsDateTime := StrToDateTime(TrDate);
      paramByname('TrTime').asstring := TrTime;
      paramByname('TriTime').asstring := TriTime;
      paramByname('TrRemark').asstring := TrRemark;
      paramByname('TrNumber').asstring := TrNumber;
      paramByname('transfer').asstring := transfer;
      paramByname('receiver').asstring := receiver;
      paramByname('degree').asstring := degree;
      paramByname('subject').asstring := subject;
      paramByname('gubun').asstring := gubun;
      paramByname('TelSeqcode').asstring := TrCode2;
      execsql;
    end;
    result := true;
    ExceptLogging('save_Terec OK:' + #10#13 + TrCode);
  except

    on E: Exception do
    begin
      ExceptLogging('save_Terec fail :' + #10#13 + receiver + ':' + TrRemark +
        ':' + transfer + #10#13 + E.Message);
      result := false;

    end;
  end;
end;

procedure Savereferer(varID, VarChart, varSogeja, varHomePhone, varcellPhone,
  varCharactreristic, varSogeSite, varRegDay: string);
var
  isSogeSaved: boolean;
begin

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.add('select * from ma_gogek_referer');
    sql.add('where id=:id');
    paramByname('id').asstring := varID;
    open;
    if isEmpty then
    begin
      isSogeSaved := false;
    end
    else
    begin
      isSogeSaved := true;
    end;
  end;
  if isSogeSaved = false then
  begin
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;

      sql.add('insert into ma_gogek_referer');
      sql.add(' (chart, name, hphone, cphone, remark, address, reg_day) values(');
      sql.add(':chart, :name, :hphone, :cphone, :remark, :address, :reg_day)');
      paramByname('chart').asstring := VarChart;
      paramByname('name').asstring := varSogeja;
      paramByname('hphone').asstring := varHomePhone;
      paramByname('cphone').asstring := varcellPhone;
      paramByname('remark').asstring := varCharactreristic;
      paramByname('address').asstring := varSogeSite;
      paramByname('reg_day').asstring := varRegDay;

      execsql;
    end;
  end;

end;

procedure SaveRefer(varSogepath, varSogeContent, varRegDay: string);
var
  referer_id: string;

const
  sqlQry = 'select Max(id) as refCount from ma_gogek_referer';
begin
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.text := sqlQry;
    open;
    referer_id := fieldByName('refCount').asstring;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;

    sql.add('insert into ma_gogek_refer (referer_id, kind, remark, reg_day) values (');
    sql.add(':referer_id, :kind, :remark, :reg_day)');
    paramByname('referer_id').asstring := referer_id;
    paramByname('kind').asstring := varSogepath;
    paramByname('remark').asstring := varSogeContent;
    paramByname('reg_day').asstring := varRegDay;
    execsql;

  end;
end;

function CheckJubsu(varDate: TDate; varDate2: TDate; VarChart: string): boolean;
begin
  result := false;

  if varDate2 > varDate then
  begin
    result := true;
    exit;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_jubsu');
    sql.add('where chart=:chart and jin_day=:jin_day');
    paramByname('Jin_Day').asstring := formatdatetime('YYYY-MM-DD', varDate);
    paramByname('Chart').asstring := VarChart;
    open;
    if isEmpty then
    begin
      result := false;
    end
    else
    begin
      result := true;
    end;
  end;

end;

function isEmptyGogekBasic(chart: string): boolean;
const
  dataSelect = 'select * from ma_gogek_basic' + #10#13 + 'where chart=:chart';

begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := dataSelect;
    paramByname('chart').asstring := chart;
    open;
    if isEmpty then
    begin
      result := true;
    end
    else
    begin
      result := false;
    end;
  end;
end;

function SaveToBmpData(VarChart: string; varday: string; varKind: string;
  varFile: string; sunapEk: integer = 0; sunapday: string = '';
  sunapneyuk: string = ''; varX: integer = 0; varY: integer = 0;
  varFile2: string = ''; parentname: string = ''; parentPhone: string = '';
  parentJumin: string = ''; lawRelation: string = ''): boolean;
begin
  result := false;
  try
    with dm_f.sqlTemp do
    begin
      close;
      sql.clear;
      sql.add('select * from signData');
      sql.add('where signDay=:signDay and chart=:chart and  kind=:kind and sunapNeyuk=:sunapNeyuk ');
      paramByname('signDay').asstring := varday;
      paramByname('chart').asstring := VarChart;
      paramByname('kind').asstring := varKind;
      paramByname('sunapNeyuk').asstring := sunapneyuk;
      open;
      if isEmpty then
      begin
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add('insert into signData');
          sql.add('(signDay, chart, kind, jikCode, signData, signData2, sunapek, sunapday, ');
          sql.add(' parentName, parentJumin, phone , lawRelation, ');
          sql.add(' sunapNeyuk, pointX, pointY) values');
          sql.add('(:signDay, :chart, :kind, :jikCode, :signData, :signData2, :sunapEk, :sunapDay, ');
          sql.add(' :parentName, :parentJumin, :phone , :lawRelation, ');
          sql.add(' :sunapNeyuk, :pointX, :pointY)');
          paramByname('signDay').asstring := varday;
          paramByname('chart').asstring := VarChart;
          paramByname('kind').asstring := varKind;
          paramByname('parentName').asstring := parentname;
          paramByname('parentJumin').asstring := parentJumin;
          paramByname('phone').asstring := parentPhone;
          paramByname('lawRelation').asstring := lawRelation;
          paramByname('sunapek').asinteger := sunapEk;
          paramByname('sunapDay').asstring := sunapday;
          paramByname('sunapNeyuk').asstring := sunapneyuk;
          paramByname('pointX').asinteger := varX;
          paramByname('pointY').asinteger := varY;
          paramByname('jikCode').asstring := ''; // varJikCode;
          if FileExists(pchar(varFile)) then
          begin
            paramByname('signData').LoadFromFile(varFile, ftBlob);
          end
          else
          begin
            paramByname('signData').AsBlob := nil;
          end;

          if FileExists(pchar(varFile2)) then
          begin
            paramByname('signData2').LoadFromFile(varFile2, ftBlob);
          end
          else
          begin
            paramByname('signData2').AsBlob := nil;
          end;
          execsql;
        end;
      end
      else
      begin
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add('update signData set');
          sql.add(' signData=:signData,  signData2=:signData2, sunapek=:sunapek, sunapDay=:sunapDay , ');
          sql.add(' parentName=:parentName, parentJumin=:parentJumin, phone=:phone , lawRelation=:lawRelation, ');
          sql.add(' pointX= :pointX, pointY = :pointY');
          sql.add(' where signDay=:signDay and chart=:chart and  kind=:kind and sunapNeyuk=:sunapNeyuk');
          paramByname('signDay').asstring := varday;
          paramByname('chart').asstring := VarChart;
          paramByname('kind').asstring := varKind;
          if FileExists(pchar(varFile)) then
          begin
            paramByname('signData').LoadFromFile(varFile, ftBlob);
          end
          else
          begin
            paramByname('signData').AsBlob := nil;
          end;

          if FileExists(pchar(varFile2)) then
          begin
            paramByname('signData2').LoadFromFile(varFile2, ftBlob);
          end
          else
          begin
            paramByname('signData2').AsBlob := nil;
          end;

          paramByname('parentName').asstring := parentname;
          paramByname('parentJumin').asstring := parentJumin;
          paramByname('phone').asstring := parentPhone;
          paramByname('lawRelation').asstring := lawRelation;

          paramByname('sunapek').asinteger := sunapEk;
          paramByname('sunapDay').asstring := sunapday;
          paramByname('sunapNeyuk').asstring := sunapneyuk;
          paramByname('pointX').asinteger := varX;
          paramByname('pointY').asinteger := varY;
          execsql;
        end;
      end;
    end;
    result := true;

  except

    on E: Exception do
    begin
      showmessage('SaveSignData: ' + E.Message);
      ExceptLogging('Tmain_f.SaveSignData:' + E.Message);
    end;

  end;

  // deletefile(pchar(varfile));
end;

function LoadToBmpData_position(VarChart: string; varday: string;
  varKind: string; varPic: Timage; varFile: string): TPosition;
var
  aString: TstringList;
  MemSize: integer;
  BStream: TStream;
  A: string;
  Buffer: array of Byte;
  i: integer;

begin
  // if FileExists(pchar(varFile)) then
  // deleteFile(varFile);
  result.X := 0;
  result.Y := 0;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add(' select * from signData');
    sql.add(' where chart=:chart'); // signDay=:signDay ');
    sql.add(' and kind=:kind ');
    sql.add(' order by signday');
    // paramByName('signDay').asString := varDay;
    paramByname('chart').asstring := VarChart;
    paramByname('kind').asstring := varKind;
    open;
    last;
    if not isEmpty then
    begin
      if trim(fieldByName('signData').asstring) <> '' then
      begin
        try
          result.X := fieldByName('pointX').asinteger;
          result.Y := fieldByName('pointY').asinteger;

          BStream := CreateBlobStream(fieldByName('signData'), bmRead);
          MemSize := BStream.Size;
          SetLength(Buffer, MemSize);
          Inc(MemSize);
          BStream.Read(Pointer(Buffer)^, MemSize);
          for i := 0 to MemSize - 1 do
          begin
            A := A + Char(Buffer[i]);
          end;

          try
            aString := TstringList.Create;
            aString.add(A);
            aString.SaveToFile(varFile);

            varPic.Picture.LoadFromFile(varFile);
          finally
            aString.Free;
          end;

        finally
          BStream.Free;

        end;

      end
      else
      begin

        // showmessage('Load Sign.');
      end;

    end
    else
    begin
      result.X := 0;
      result.Y := 0;

    end;

  end;
end;

function LoadToBmpData2(VarChart: string; varday: string; varKind: string;
  varPic: Timage; varFile: string; varPic2: Timage = nil; varFile2: string = '')
  : TSignInfo;
var
  aString: TstringList;
  MemSize: integer;
  BStream: TStream;
  A: string;
  B: string;
  Buffer: array of Byte;
  i: integer;

begin
  // if FileExists(pchar(varFile)) then
  // deleteFile(varFile);
  result.signDate := '';
  result.parentname := '';
  result.parentPhone := '';
  result.lawRelation := '';
  result.parentJumin := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add(' select * from signData');
    sql.add(' where chart=:chart'); // signDay=:signDay ');
    sql.add(' and kind=:kind ');
    sql.add(' order by signday');
    // paramByName('signDay').asString := varDay;
    paramByname('chart').asstring := VarChart;
    paramByname('kind').asstring := varKind;
    open;
    last;
    if not isEmpty then
    begin
      if trim(fieldByName('signData').asstring) <> '' then
      begin
        try
          BStream := CreateBlobStream(fieldByName('signData'), bmRead);
          varPic.Picture.LoadFromStream(BStream);
          // MemSize := BStream.Size;
          // SetLength(Buffer, MemSize);
          // Inc(MemSize);
          // BStream.Read(Pointer(Buffer)^, MemSize);
          // for i := 0 to Memsize - 1 do
          // begin
          // A := A + Char(Buffer[i]);
          // end;
          //
          // try
          // aString := TStringList.Create;
          // aString.Add(A);
          // aString.SaveToFile(varFile);
          //
          // varPic.Picture.LoadFromFile(varFile);
          // finally
          // aString.Free;
          // end;

        finally
          BStream.Free;

        end;
      end;
      if trim(fieldByName('signData2').asstring) <> '' then
      begin
        try
          BStream := CreateBlobStream(fieldByName('signData2'), bmRead);
          MemSize := BStream.Size;
          SetLength(Buffer, MemSize);
          Inc(MemSize);
          BStream.Read(Pointer(Buffer)^, MemSize);
          for i := 0 to MemSize - 1 do
          begin
            B := B + Char(Buffer[i]);
          end;

          try
            aString := TstringList.Create;
            aString.add(B);
            aString.SaveToFile(varFile2);

            varPic2.Picture.LoadFromFile(varFile2);
          finally
            aString.Free;
          end;

        finally
          BStream.Free;

        end;
      end;
      // result := fieldByName('signDay').asString;

      result.signDate := fieldByName('signDay').asstring;
      result.parentname := fieldByName('parentName').asstring;
      result.parentPhone := fieldByName('Phone').asstring;
      result.lawRelation := fieldByName('lawRelation').asstring;
      result.parentJumin := fieldByName('parentJumin').asstring;

    end
    else
    begin
      result.signDate := '';
      result.parentname := '';
      result.parentPhone := '';
      result.lawRelation := '';
      result.parentJumin := '';

    end;

  end;
end;

function LoadToBmpData(VarChart: string; varday: string; varKind: string;
  varPic: Timage; varFile: string): string;
var
  aString: TstringList;
  MemSize: integer;
  BStream: TStream;
  A: string;
  Buffer: array of Byte;
  i: integer;

begin
  // if FileExists(pchar(varFile)) then
  // deleteFile(varFile);
  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add(' select * from signData');
    sql.add(' where chart=:chart'); // signDay=:signDay ');
    sql.add(' and kind=:kind ');
    sql.add(' order by signday');
    // paramByName('signDay').asString := varDay;
    paramByname('chart').asstring := VarChart;
    paramByname('kind').asstring := varKind;
    open;
    last;
    if not isEmpty then
    begin
      if trim(fieldByName('signData').asstring) <> '' then
      begin
        try
          BStream := CreateBlobStream(fieldByName('signData'), bmRead);
          MemSize := BStream.Size;
          SetLength(Buffer, MemSize);
          Inc(MemSize);
          BStream.Read(Pointer(Buffer)^, MemSize);
          for i := 0 to MemSize - 1 do
          begin
            A := A + Char(Buffer[i]);
          end;

          try
            aString := TstringList.Create;
            aString.add(A);
            aString.SaveToFile(varFile);

            varPic.Picture.LoadFromFile(varFile);
          finally
            aString.Free;
          end;

        finally
          BStream.Free;

        end;

      end
      else
      begin

        // showmessage('Load Sign.');
      end;
      result := fieldByName('signDay').asstring;
    end
    else
    begin
      result := '';

    end;

  end;
end;

function LoadChartSignData(varChartSeq: double; varKind: string; varPic: Timage;
  varFile: string): boolean;
var
  aString: TstringList;
  MemSize: integer;
  BStream: TStream;
  A: string;
  Buffer: array of Byte;
  i: integer;

begin
  // if FileExists(pchar(varFile)) then
  // deleteFile(varFile);
  result := false;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add(' select * from ma_chart_s');
    sql.add(' where chartSeq=:chartSeq');
    sql.add(' and signkind=:signkind ');
    paramByname('chartSeq').asFloat := varChartSeq;
    paramByname('signkind').asstring := varKind;
    open;
    last;
    if not isEmpty then
    begin
      if trim(fieldByName('signData').asstring) <> '' then
      begin
        try
          BStream := CreateBlobStream(fieldByName('signData'), bmRead);
          MemSize := BStream.Size;
          SetLength(Buffer, MemSize);
          Inc(MemSize);
          BStream.Read(Pointer(Buffer)^, MemSize);
          for i := 0 to MemSize - 1 do
          begin
            A := A + Char(Buffer[i]);
          end;

          try
            aString := TstringList.Create;
            aString.add(A);
            aString.SaveToFile(varFile);
            varPic.Picture.LoadFromFile(varFile);
          finally
            aString.Free;
          end;

          result := true;

        finally
          BStream.Free;

        end;

      end
      else
      begin

        // showmessage('Load Sign.');
      end;
    end
    else
    begin

    end;

  end;

end;

procedure SaveChartSignData(varChartSeq: double; varKind: string;
  varFile: string);
var
  signKind: string;
  isSigned: boolean;
begin
  if FileExists(pchar(varFile)) = false then
  begin

    showmessage('생성된 싸인파일이 없습니다.');
    exit;
  end;

  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_Chart_s');
    sql.add('where ChartSeq=:ChartSeq   ');
    paramByname('chartSeq').asFloat := varChartSeq;
    open;
    if not isEmpty then
    begin
      signKind := fieldByName('signKind').asstring;
      if signKind = '' then // 아직 싸인되지 않은 상태...
      begin
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add('update ma_chart_s set');
          sql.add(' signData = :signData, signKind=:signKind ');
          sql.add(' where ChartSeq=:ChartSeq  ');
          paramByname('chartSeq').asFloat := varChartSeq;
          paramByname('signKind').asstring := varKind;
          if FileExists(pchar(varFile)) then
          begin
            paramByname('signData').LoadFromFile(varFile, ftBlob);
          end
          else
          begin
            paramByname('signData').AsBlob := nil; // nil;
          end;
          execsql;
        end;
      end
      else
      begin
        if Application.MessageBox(pchar('기존 싸인파일을 수정하시겠습니까?'), '싸인파일 수정',
          MB_YESNO) = IDYES then
        begin

          with dm_f.SqlWork do
          begin
            close;
            sql.clear;
            sql.add('update ma_chart_s set');
            sql.add(' signData = :signData, signKind=:signKind ');
            sql.add(' where ChartSeq=:ChartSeq  ');
            paramByname('chartSeq').asFloat := varChartSeq;
            paramByname('signKind').asstring := varKind;
            if FileExists(pchar(varFile)) then
            begin
              paramByname('signData').LoadFromFile(varFile, ftBlob);
            end
            else
            begin
              paramByname('signData').AsBlob := nil; // nil;
            end;
            execsql;
          end;

        end
        else
        begin
        end;

      end;

    end;
  end;
  // deletefile(pchar(varfile));
end;

function chongMisuCalc(chartNo: string; varView: boolean = false): double;
var
  planChong, sunapMisuChong, SunapBohumChong, SunapBohumMisuChong, MisuChong,
    sunapChong, BohumChong, bibochong, etcChong: integer;
  GamChong: integer;

  ChongYujikum, napbuGeumEk: integer;

  varQuery: string;
  varQuery2: string;

  varMisuInitDay: string;

  duplicateBibo: integer; // 상담금액과 중복된 비급여 비용, 비급여 항목에도 입력된것
begin

  with dm_f.SqlWork do
  begin
    // 기존 미수금 초기화
    close;
    sql.clear;
    sql.add('select * from ma_sunap_misu_init');
    sql.add(' where chart=:chart');
    paramByname('chart').asstring := chartNo;
    open;
    if not isEmpty then
    begin
      varMisuInitDay := fieldByName('regDate').asstring;
      // result:=0;
      // exit;
    end
    else
    begin
      varMisuInitDay := '';
    end;
  end;

  varQuery := LoadSunapDataQuery;
  varQuery2 := LoadPlanDataQuery;

  with dm_f.SqlWork do
  begin
    // 비급여진료 비용
    close;
    sql.clear;
    sql.add('select SUM(isnull(Bonin1,0)) as biboChong from ma_sunap');
    sql.add(' where chart=:chart');
    paramByname('chart').asstring := chartNo;

    if varView <> true then
    begin
      if varQuery <> '' then
        sql.add('and  (' + varQuery + ' or skind is null )');

    end;

    if varMisuInitDay <> '' then
    begin
      sql.add('and   sDay > :sDay');
      paramByname('sDay').asstring := varMisuInitDay;
    end;

    open;
    if not isEmpty then
    begin
      bibochong := fieldByName('biboChong').asinteger;
    end
    else
    begin

      bibochong := 0;
    end;

    // 급여진료 비용
    close;
    sql.clear;
    sql.add(' select SUM(isnull(Bohum,0)) as bohumChong from ma_sunap');
    sql.add(' where chart=:chart');
    // Sql.Add(' and (usebohum <> ''1'' or usebohum is null) ');
    sql.add(' and (usebohum <> ''1'' ) ');
    paramByname('chart').asstring := chartNo;

    if varView <> true then
    begin
      if varQuery <> '' then
        sql.add('and  (' + varQuery + ' or skind is null )');

    end;

    if varMisuInitDay <> '' then
    begin
      sql.add('and   sDay > :sDay');
      paramByname('sDay').asstring := varMisuInitDay;
    end;

    open;
    if not isEmpty then
    begin
      BohumChong := fieldByName('bohumChong').asinteger;
    end
    else
    begin
      BohumChong := 0;
    end;

    // 기타 비용
    close;
    sql.clear;
    sql.add('select SUM(isnull(etc,0)) as etcChong from ma_sunap');
    sql.add(' where chart=:chart');
    paramByname('chart').asstring := chartNo;

    if varView <> true then
    begin
      if varQuery <> '' then
        sql.add('and  (' + varQuery + ' or skind is null )');

    end;

    if varMisuInitDay <> '' then
    begin
      sql.add('and   sDay > :sDay');
      paramByname('sDay').asstring := varMisuInitDay;
    end;

    open;
    if not isEmpty then
    begin
      etcChong := fieldByName('etcChong').asinteger;
    end
    else
    begin

      etcChong := 0;
    end;

    close;
    sql.clear;
    sql.add('select sum(isnull(sunapek,0) + isnull(Gammyunek,0)) as SunapChong from ma_sunap');
    sql.add(' where chart=:chart ');

    { if isinBohum = true then //보험금액 포함이면...
      begin
      Sql.Add(' and sday >= :sDay');
      ParamByName('sDay').AsString :=
      jinryo_f.cbjindan.ColumnItems[jinryo_f.cbjindan.itemindex,
      1];
      end;
    }
    paramByname('chart').asstring := chartNo;

    if varView <> true then
    begin
      if varQuery <> '' then
        sql.add('and  (' + varQuery + ' or skind is null )');

    end;

    if varMisuInitDay <> '' then
    begin
      sql.add('and   sDay > :sDay');
      paramByname('sDay').asstring := varMisuInitDay;
    end;

    open;

    if not isEmpty then
    begin
      sunapChong := fieldByName('SunapChong').asinteger;
    end
    else
    begin

      sunapChong := 0;

    end;

    if varView = true then
    begin // 전체 보기면  ma_tpcharge에서 가져오고 그렇지 않으면 dtx에서 합하자.
      close;
      sql.clear;
      sql.add('select  ');
      sql.add('sum(isnull(subtotal,0)) as sSubtotal');
      sql.add(' from ma_tpcharge');
      sql.add(' where chart=:chart');
      // and chart_id=:chart_id');
      paramByname('chart').asstring := chartNo;
      // ParamByName('chart_id').AsString := varplanid;

      if varView <> true then
      begin
        if varQuery2 <> '' then
          sql.add('and  (' + varQuery2 + ' or akind is null )');

      end;

      if varMisuInitDay <> '' then
      begin
        sql.add('and   jin_Day > :sDay');
        paramByname('sDay').asstring := varMisuInitDay;
      end;

      open;
      if not isEmpty then
      begin
        planChong := fieldByName('sSubTotal').asinteger;
      end
      else
      begin
        planChong := 0;
      end;
    end
    else
    begin

      close;
      sql.clear;
      sql.add('select  ');
      // Sql.Add('sum(isnull(ckumak,0)) - sum(isnull(dcw,0)) as sSubtotal');
      sql.add('sum(isnull(ckumak,0))  as sSubtotal');
      sql.add(' from dtx');
      sql.add(' where chart=:chart');
      sql.add(' and  chk = ''1'' ');

      // and chart_id=:chart_id');
      paramByname('chart').asstring := chartNo;
      // ParamByName('chart_id').AsString := varplanid;

      if varView <> true then
      begin
        if varQuery2 <> '' then
          sql.add('and  (' + varQuery2 + ' or akind is null )');

      end;

      if varMisuInitDay <> '' then
      begin
        sql.add('and   jin_Day > :sDay');
        paramByname('sDay').asstring := varMisuInitDay;
      end;

      open;
      if not isEmpty then
      begin
        planChong := fieldByName('sSubTotal').asinteger;
      end
      else
      begin
        planChong := 0;
      end;

      close;
      sql.clear;
      sql.add('select  ');
      sql.add('sum(isnull(kamak,0))  as sSubtotal');
      sql.add(' from ma_tpCharge');
      sql.add(' where chart=:chart');
      // and chart_id=:chart_id');
      paramByname('chart').asstring := chartNo;
      // ParamByName('chart_id').AsString := varplanid;

      if varView <> true then
      begin
        if varQuery2 <> '' then
          sql.add('and  (' + varQuery2 + ' or akind is null )');

      end;

      if varMisuInitDay <> '' then
      begin
        sql.add('and   jin_Day > :sDay');
        paramByname('sDay').asstring := varMisuInitDay;
      end;

      open;
      if not isEmpty then
      begin
        GamChong := fieldByName('sSubTotal').asinteger;
      end
      else
      begin
        GamChong := 0;
      end;

      planChong := planChong - GamChong;

    end;

    close;
    sql.clear;
    sql.add('select sum(isnull(misuek,0)) as misuek from ma_sunap');
    sql.add('where chart=:chart');
    paramByname('chart').asstring := chartNo;

    if varView <> true then
    begin
      if varQuery <> '' then
        sql.add('and  (' + varQuery + ' or skind is null )');

    end;

    if varMisuInitDay <> '' then
    begin
      sql.add('and   sDay > :sDay');
      paramByname('sDay').asstring := varMisuInitDay;
    end;

    open;
    if not isEmpty then
    begin
      MisuChong := fieldByName('misuek').asinteger;
    end
    else
    begin
      MisuChong := 0;
    end;


    // Sunap_Bibo에 저장되어있던 금액  , 제외에 체크한 데이터. 제외에 체크하면

    close;
    sql.clear;
    sql.add('Select sum(geumek) as totBiboGeumek from ma_sunap_bibo');
    sql.add('where chart=:chart  and bibocheck =''1''  ');

    paramByname('chart').asstring := chartNo;
    open;
    if not isEmpty then
    begin
      duplicateBibo := fieldByName('totBiboGeumek').asinteger;
    end
    else
    begin
      duplicateBibo := 0;
    end;

    // 이미 납부한 금액
    close;
    sql.clear;
    sql.add('Select sum(geumek) as napbuGeumEk from ma_sunap_napbu');
    sql.add('where chart=:chart ');

    paramByname('chart').asstring := chartNo;
    open;
    napbuGeumEk := fieldByName('napbuGeumEk').asinteger;

    // 보호환자 유지금액
    close;
    sql.clear;
    sql.add('select SUM(isnull(  convert(int, Yujikum,121)   ,0)) as ChongYujikum from jinryo_p');
    sql.add(' where chart=:chart');
    paramByname('chart').asstring := chartNo;
    open;
    if not isEmpty then
    begin
      ChongYujikum := fieldByName('ChongYujikum').asinteger;
    end
    else
    begin

      ChongYujikum := 0;
    end;

  end;
  // misuek은 당일의 미수금액을 계산한것뿐인데  미수금액을 구하고 또 미수총금액을 더해줘야 하는가?
  // result := planChong + biboChong + etcChong + bohumChong - SunapChong - duplicateBibo; // +    misuChong;
  // 미수금액에서 중복 비보험빼주자.
  // 온양 함께...

  result := planChong + bibochong + etcChong + BohumChong - sunapChong -
    ChongYujikum - napbuGeumEk; // 중복비보빼는부분 좀더 검토,...20160705
  // if misuChong = 0 then                                                              //이미 납부한 금액도 빼주자.
  // result := 0;

end;

function chongMisuCalc2(chartNo: string): double;
var

  aSql: string;
begin

  aSql :=   'select                                                                             '
    + #10 + '  misugeum                                                                         '
    + #10 + ' -isnull( (select sum(sunapak) from jinryo_p a                                     '
    + #10 + '       where a.jinryo_pid in                                                       '
    + #10 + '	      (select m.misu_pid from ma_misuSunap m                                      '
    + #10 + '		     where m.jinryo_pid=p.jinryo_pid and chart=p.chart) ) , 0) as  misugeum,    '
    + #10 + '(select name from ma_gogek_basic where chart= p.chart) as hName,                   '
    + #10 + 'isnull( (select sum(sunapak) from jinryo_p a                                       '
    + #10 + '       where a.jinryo_pid in                                                       '
    + #10 + '	      (select m.misu_pid from ma_misuSunap m                                      '
    + #10 + '		     where m.jinryo_pid=p.jinryo_pid and chart=p.chart) ) , 0) ,                '
    + #10 + '    team,chong, chung, bonin, bonin1,kamak, sunapak, jongbeul, * from jinryo_p p   '
    + #10 + 'where misugeum                                                                     '
    + #10 + ' -isnull( (select sum(sunapak) from jinryo_p a                                     '
    + #10 + '       where a.jinryo_pid in                                                       '
    + #10 + '	      (select m.misu_pid from ma_misuSunap m                                      '
    + #10 + '		     where m.jinryo_pid=p.jinryo_pid and chart=p.chart) ) , 0) > 0              '
    + #10 + 'and chart=:chart                                                                 ';

  with dm_f.SqlWork do
  begin

    result := 0;

    // 보호환자 유지금액
    close;
    sql.clear;
    sql.text := aSql;
    paramByname('chart').asstring := chartNo;
    open;
    if not isEmpty then
    begin

      while not eof do
      begin
         result := result + fieldByName('misugeum').asinteger;
         next;
      end;
    end
    else
    begin

      result := 0;
    end;

  end;

end;

function makeNewYoungsu(jin_day: TdateTime): string;
begin
  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select isnull(max(youngsu_num), 0) + 1 as newNum  from jinryo_p where jin_day=:jin_day');
    paramByname('jin_day').asstring := formatdatetime('YYYY-MM-DD', jin_day);
    open;
    result := formatdatetime('yyyymmdd', jin_day) + '-' +
      FormatFloat('000', fieldByName('NewNum').asinteger);
  end;
end;

function NewYoungsuNo(jin_day: TdateTime): string;
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear; // isnull(Max(fam_id),0) +1
    sql.add('select isnull(max(youngsu_num), 0) +1 as newNum  from jinryo_p where jin_day=:jin_day');
    paramByname('jin_day').asstring := formatdatetime('YYYY-MM-DD', jin_day);
    open;
    result := fieldByName('NewNum').asstring;
  end;
end;

function getCardYoyul(varCardName: string): double;
begin
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add(' select yoyul from ma_basic_Card');
    sql.add(' where Cardname=:cardName');
    paramByname('cardName').asstring := varCardName;
    open;
    if not isEmpty then
      result := fieldByName('YoYul').asFloat
    else
      result := 0;
  end;
end;

procedure JinryoPSunapekInit(jinryo_pid: string);
begin
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add(' Update Jinryo_p Set                               ');
    sql.add(' sunapak = 0, card= 0, cash=0, tong=0,             ');
    sql.add(' tongreceipt=0, hyunReceipt=0, kamak=0, misugeum=0 ');
    sql.add(' Where jinryo_pid=:jinryo_pid  ');

    paramByname('jinryo_pid').asstring := jinryo_pid;
    execsql;

  end;
end;

procedure updateJinryoP_PiboInfo(jubsu_id: string;
  k_number, kiho, piboName: string);
begin
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add('Update Jinryo_p Set');
    sql.add(' k_number=:k_number, kiho=:kiho, piboName =:piboName     ');
    sql.add(' Where jubsu_id=:jubsu_id  ');
    paramByname('k_number').asstring := k_number;
    paramByname('kiho').asstring := kiho;
    paramByname('piboName').asstring := piboName;
    paramByname('jubsu_id').asstring := jubsu_id;
    execsql;

  end;
end;

procedure updateJinryoP_isRes(jinryo_pid: string; isRes: string);
begin
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add('Update Jinryo_p Set');
    sql.add('isRes =:isRes      ');
    sql.add(' Where jinryo_pid=:jinryo_pid  ');
    paramByname('isRes').asstring := isRes;
    paramByname('jinryo_pid').asstring := jinryo_pid;
    execsql;

  end;
end;

procedure JinryoPYoungsunumUpdate(chart, jin_day, youngsu_num: string);
begin
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add('Update Jinryo_p Set');
    sql.add('youngsu_num=:youngsu_num ');
    sql.add('Where chart=:chart and jin_day=:jin_day  ');
    paramByname('chart').asstring := chart;
    paramByname('jin_day').asstring := jin_day;
    paramByname('youngsu_num').asstring := youngsu_num;
    execsql;

  end;
end;

procedure JinryoPSunapStateUpdate(jinryo_pid, sunapState: string);
begin
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add('Update Jinryo_p Set');
    sql.add('sunap=:sunap ');
    sql.add('Where jinryo_pid=:jinryo_pid  ');
    // ParamByName('chart').AsString := chart;
    // ParamByName('jin_day').AsString := jin_day;
    // ParamByName('doc_code').AsString := doc_code;
    // ParamByName('team').AsString := team;
    paramByname('jinryo_pid').asstring := jinryo_pid;
    paramByname('sunap').asstring := sunapState;
    execsql;

  end;
end;

function ChangeJubsuOrderNum(varday: string; VarChart: string;
  varNorder: integer): boolean;
begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('nOrder= :nOrder');
      sql.add('where jin_day=:jin_Day and chart=:chart and gubun=''0'' ');
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('nOrder').asinteger := varNorder;
      execsql;
      // Dm_f.zConnection.Commit;
      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [대기순서변경오류]' + E.Message);
    end;

  end;

end;

function ChangeJubsuFast(varday: string; VarChart: string;
  varStaus: string): boolean;
begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('update  ma_jubsu set');
      sql.add('fChart= :fChart');
      sql.add('where jin_day=:jin_Day and chart=:chart ');
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('fChart').asstring := varStaus;
      execsql;

      result := true;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [빠른진료변경오류]' + E.Message);
    end;

  end;

end;

{ function  LoadPatientGroupData(varChart: string): string;
  var
  varComponentCount: integer;
  begin
  result:='';
  with dm_f.SqlWork do
  begin
  Close;
  Sql.Clear;
  Sql.Add('select * from ma_gogek_group');
  Sql.Add('where Chart=:chart');
  ParamByName('Chart').AsString := varChart;
  open;

  if not isEmpty then
  begin
  while not eof do
  begin
  if result = '' then
  result:=          fieldByName('gubun').asString
  else
  result:=   result+', '+       fieldByName('gubun').asString;

  next;
  end;
  end;
  end;

  end;

  function  LoadNewonDonggi(varKind, varChart: string; varCount:
  integer; savekind: integer = 0) : string;
  var
  varComponentCount: integer;
  begin

  result:='';
  with dm_f.SqlWork do
  begin

  Close;
  Sql.Clear;
  Sql.Add('select * from ma_gogek_munjin');
  Sql.Add('where Chart=:chart');
  Sql.Add('and kind=:kind and val <> ''0'' ');
  ParamByName('Chart').AsString := varChart;
  ParamByName('kind').AsString := varkind;
  open;

  if not isEmpty then
  begin
  while not eof do
  begin

  if result = '' then
  result:=fieldByname('valCap').asString
  else
  result:=result+', '+ fieldByname('valCap').asString;
  next;
  end;
  end;

  Close;
  Sql.Clear;
  Sql.Add('select * from ma_gogek_munjin');
  Sql.Add('where Chart=:chart');
  Sql.Add('and kind=:kind and val = ''0'' ');
  ParamByName('Chart').AsString := varChart;
  ParamByName('kind').AsString := varkind;
  open;
  if not isEmpty then
  begin
  if fieldByname('valcap').asString <> '' then
  result:= result + '|'+ fieldByname('valcap').asString;
  end;

  end;
  end;
}

procedure DbSave(VarChart: string; varDate: TdateTime; varFileKind: string;
  varFileName: string; varShotType: string = '3'; varKind: string = '';
  varOrigFileName: string = ''; varFoldername: string = '';
  varUpperFolder: string = '');
var

  varID, varOVERCheck, varChartNo, varFileType, varLocation, varnPosition,
    varCephType: string;
  varSave: boolean;

begin
  with dm_f.SqlWork do
  begin
    close;

    sql.clear;
    sql.add('select   isNull(MAX(CONVERT(int,id, 120)),0) + 1  as MaxId from Imageinfo');
    open;
    varID := fieldByName('maxID').asstring;
  end;

  varOVERCheck := '0';

  varFileType := varFileKind;
  // varShotType := '3';

  varLocation := '0';
  varnPosition := '0';
  varCephType := '0';

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from Imageinfo');
    sql.add('where  Date=:Date');
    // ParamByName('Date').asString :=  formatdatetime('yyyy-mm-dd hh:mm:ss.zzz', varDate);
    paramByname('Date').AsDateTime := varDate;
    open;
    varSave := isEmpty;
  end;
  if varSave = true then
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Insert Into Imageinfo');
      sql.add('( Date, OVERCheck, ChartNo, FileType, ShotType, Location, nPosition, CephType, origFilename, ');
      sql.add(' used, panoset, filename, akind, imagegroup, imagetag, imageremark,imageorder, foldername, upperFolder) Values');
      sql.add('( :Date, :OVERCheck, :ChartNo, :FileType, :ShotType, :Location, :nPosition, :CephType,:origFilename,');
      sql.add(' :used, :panoset, :filename, :aKind, :imagegroup, :imagetag, :imageremark,:imageorder, :foldername, :upperFolder)');
      // ParamByName('ID').asString := trim(varID);
      paramByname('Date').AsDateTime := varDate;
      // ParamByName('Date').asDateTime :=  formatdatetime('yyyy-mm-dd hh:mm:ss.zzz', varDate);
      paramByname('OVERCheck').asstring := trim(varOVERCheck);
      paramByname('ChartNo').asstring := trim(VarChart);
      paramByname('FileType').asstring := trim(varFileType);
      paramByname('ShotType').asstring := trim(varShotType);
      paramByname('Location').asstring := trim(varLocation);
      paramByname('nPosition').asstring := trim(varnPosition);
      paramByname('CephType').asstring := trim(varCephType);
      paramByname('used').asstring := '0';
      // 썸네일에 편집했는가?->ma_imgStorage에 써진경우 '1'로 바뀜
      // 업데이트는 하지말것.이미 편집했을지도 모르므로.
      paramByname('panoset').asstring := '0';
      paramByname('filename').asstring := varFileName;
      paramByname('akind').asstring := varKind;
      paramByname('imagegroup').asstring := '';
      paramByname('imagetag').asstring := '';
      paramByname('imageremark').asstring := '';
      paramByname('imageorder').asstring := '';
      paramByname('origfilename').asstring := varOrigFileName;
      paramByname('foldername').asstring := varFoldername;
      paramByname('upperFolder').asstring := varUpperFolder;

      execsql;
    end;
end;
//
// procedure ClipboardSave(varChart, varFileName: string);
// var
// varThumbName, varSaveFileName,
// varfileName2: string;
// i: integer;
// varNow, varNow2: Tdatetime;
// tjpg: TJPEGImage;
// Bitmap1: TBitmap;
// Bitmap2: TBitmap;
// varShot: string;
// varKind: string;
// varFilepath2, varExt: string;
// begin
// screen.Cursor := crHourglass;
// varShot := '3';
//
// varfileName2 := copy(extractfilename(varfilename), 2, 4) +
// '-' +
// copy(extractfilename(varfilename), 6, 2) + '-' +
// copy(extractfilename(varfilename), 8, 2) + ' ' +
// copy(extractfilename(varfilename), 11, 2) + ':' +
// copy(extractfilename(varfilename), 13, 2) + ':' +
// copy(extractfilename(varfilename), 15, 2);
// varNow2 := strtodatetime(varfileName2);
// //strtodatetime('2010-08-25 13:00:03.234');  //iyyyymmdd_hhnnss
//
// varFilepath2 := extractFilePath(paramStr(0)) + 'temp\Thumbnails\';
// varExt := LowerCase(ExtractFileExt(varfilename));
//
// //  varThumbname := copy(extractfilename(varfilename), 1, length(extractfilename(varfilename)) - 4) + 't' +varExt;
// varThumbname := copy(extractfilename(varfilename), 1, length(extractfilename(varfilename)) - 4) + 't' + varExt;
// varSaveFileName := varThumbname;
// varThumbname := varFilepath2 + varThumbname;
//
// varExt := LowerCase(ExtractFileExt(varfilename));
// if varExt = '.jpg' then
// varKind := '2'
// else
// if varExt = '.bmp' then
// varKind := '1'
// else
// varKind := '3';
//
// //이미지의 이름을 만들어서 다시 저장
// //======================================
// //화면에 저장하는 파일을 보여주자
// //이름을 바꿔서 불러와야 한다.
// //  varFilename := extractFilePath(paramStr(0)) +
// //       'temp\images\' + copy(ExtractFileName(varfileName), 1,
// //       length(ExtractFileName(varfileName)) - 5) + varExt;
//
// //======================================
// try
// if dm_f.ImageUpload(varfileName, //여기서  t를 뺀 파일이름을 새로 만들어서 업로드한다...
// configvalue.varserverIp, 9887) = true then
// begin
// DbSave(varChart, varNow2,
// varKind, varsaveFileName, varShot);
//
// end
// else
// begin
// showmessage('이미지 저장 실패');
// end;
//
// if dm_f.ImageUpload(varThumbname,
// configvalue.varserverIp, 9887) = true then
// begin
// end
// else
// begin
// showmessage('썸네일 이미지 저장 실패');
// end;
//
// except
// on E: Exception do
// begin
// showmessage('[이미지파일 서버저장 실패.]' +
// #10#13 +
// E.Message);
// ExceptLogging('[이미지파일 서버저장 실패.]' +
// #10#13 +
// E.Message);
// screen.Cursor := crDefault;
// end;
//
// end;
//
// screen.Cursor := crDefault;
// end;

procedure insertImgStorage(VarChart: string; varKind: integer; nord: integer;
  filename: string; varDate: string; aKind: string; treatkind: string = '000';
  treatorder: string = '0'; destfolder2: string = '');
const

  sqlinsert2 = ' INSERT INTO ma_imgstorage' + #10#13 +
    '  ([chart]                 ' + #10#13 + '  ,[kind]                  ' +
    #10#13 + '  ,[nord]                  ' + #10#13 +
    '  ,[regdate]               ' + #10#13 + '  ,[imgdate]               ' +
    #10#13 + '  ,[filename]              ' + #10#13 +
    '  ,[aKind]                 ' + #10#13 + '  ,[fileDir]                 ' +
    #10#13 + '  ,[treatKind]                 ' + #10#13 +
    '  ,[treatorder]                 ' + #10#13 +
    '  ,[reguser] )                ' + #10#13 +
    'VALUES                          ' + #10#13 + ' (:chart                   '
    + #10#13 + ' ,:kind                    ' + #10#13 +
    ' ,:nord                    ' + #10#13 + ' ,:regdate                 ' +
    #10#13 + ' ,:imgdate                 ' + #10#13 +
    ' ,:filename                ' + #10#13 + ' ,:aKind                   ' +
    #10#13 + ' ,:fileDir                 ' + #10#13 +
    ' ,:treatkind               ' + #10#13 + ' ,:treatorder              ' +
    #10#13 + ' ,:reguser                ) ';

begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlinsert2;
    paramByname('chart').asstring := VarChart;
    paramByname('kind').asinteger := varKind;
    paramByname('nord').asinteger := nord;
    paramByname('regdate').asstring := formatdatetime('YYYY-MM-DD', now);
    paramByname('imgdate').asstring := varDate;
    paramByname('filename').asstring := filename;
    paramByname('reguser').asstring := '1';
    paramByname('aKind').asstring := aKind;
    paramByname('treatKind').asstring := treatkind;
    paramByname('treatorder').asstring := treatorder;
    paramByname('fileDir').asstring := destfolder2;
    execsql;
  end;

end;

procedure UpdateImgStorage(filename: string; treatkind: string = '000';
  treatorder: string = '0'; destfolder2: string = '');
const

  sqlUpdate2 = ' update ma_imgstorage set' + #10#13 +
    '  treatKind =:treatkind, treatorder= :treatorder, fileDir=:filedir        '
    + #10#13 + '  where filename=:filename ';

begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlUpdate2;
    paramByname('filename').asstring := filename;
    paramByname('treatKind').asstring := treatkind;
    paramByname('treatorder').asstring := treatorder;
    paramByname('fileDir').asstring := destfolder2;
    execsql;
  end;

end;

function UpdateUsedImageinfo(VarChart: string; filename: string;
  varUsed: string; varDate: string): boolean;
const

  sqlQry = 'update imageinfo set   ' + #10#13 + '  used=:used               ' +
    #10#13 + '  where chartno=:chartno   ' + #10#13 +
    '  and filename=:filename        ';
  // '  and date=:date               ';
begin

  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := sqlQry; // c20090402 153210_0000t
      paramByname('chartno').asstring := VarChart;
      paramByname('filename').asstring := filename;
      // parambyName('date').asDatetime :=strtodatetime(varDate);
      paramByname('used').asstring := varUsed;
      execsql;
    end;
    result := true;
  except
    result := false;
    exit;
  end;

end;

function DeleteImgStorage(VarChart: string; varKind: integer; nord: integer;
  filename: string): boolean;
const

  sqlDelete2 = ' delete from ma_imgstorage  ' + #10#13 +
    ' where chart=:chart                ' + #10#13 +
    ' and kind=:kind                    ' + #10#13 +
    ' and nord=:nord                    ' + #10#13 +
    ' and fileName=:filename            ';

begin
  try
    with dm_f.SqlWork do
    begin
      // showmessage(inttostr(varKind) + ';nOrd:' + inttostr(nOrd) + ';' + filename);
      close;
      sql.clear;
      sql.text := sqlDelete2;
      paramByname('chart').asstring := VarChart;
      paramByname('kind').asinteger := varKind;
      paramByname('nord').asinteger := nord;
      paramByname('filename').asstring := filename;
      execsql;
    end;
    result := true;
  except
    result := false;
  end;

end;

function DeleteImageinfo(VarChart: string; filename: string): boolean;
const

  sqlDelete2 = ' delete from imageinfo  ' + #10#13 +
    ' where chartno=:chart                ' + #10#13 +
    ' and fileName=:filename            ';

begin
  try
    with dm_f.SqlWork do
    begin
      // showmessage(inttostr(varKind) + ';nOrd:' + inttostr(nOrd) + ';' + filename);
      close;
      sql.clear;
      sql.text := sqlDelete2;
      paramByname('chart').asstring := VarChart;
      paramByname('filename').asstring := filename;
      execsql;
    end;
    result := true;
  except
    result := false;
  end;

end;

function RenameCapImageinfo(VarChart: string; filename: string;
  cap: string): boolean;
const

  sqlUpdate2 = ' update imageinfo set                                       ' +
    #10#13 + ' imagecap = :imageCap , OrigFileName = :OrigFileName               '
    + #10#13 +
    ' where chartno = :chart  and fileName = :filename                  ';

begin
  try
    with dm_f.SqlWork do
    begin
      // showmessage(inttostr(varKind) + ';nOrd:' + inttostr(nOrd) + ';' + filename);
      close;
      sql.clear;
      sql.text := sqlUpdate2;
      paramByname('chart').asstring := VarChart;
      paramByname('filename').asstring := filename;
      paramByname('imageCap').asstring := cap;
      paramByname('OrigFileName').asstring := cap;
      execsql;

    end;
    result := true;
  except
    result := false;
  end;

end;

function RenameFolderCapImageinfo(VarChart: string; UpperFolder: string;
  filename: string; cap: string): boolean;
const

  sqlUpdate2 = ' update imageinfo set                                       ' +
    #10#13 + ' fileName = :newFolderName , FolderName = :newFolderName               '
    + #10#13 +
    ' where chartno = :chart  and upperFolder = :upperFolder  and  FolderName = :oldFoldername ';

begin
  try
    with dm_f.SqlWork do
    begin
      // showmessage(inttostr(varKind) + ';nOrd:' + inttostr(nOrd) + ';' + filename);
      close;
      sql.clear;
      sql.text := sqlUpdate2;
      paramByname('chart').asstring := VarChart;
      paramByname('upperFolder').asstring := UpperFolder;
      paramByname('oldFoldername').asstring := filename;
      paramByname('newfolderName').asstring := cap;
      execsql;

    end;
    result := true;
  except
    result := false;
  end;

end;

function LoadTeam_PromiseGubun(varTeam: string): string;
var
  vargubun: string;
  i, scanCount: integer;
  szArrString: TArrString;
begin
  result := '';
  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_team');
    sql.add('where team_name=:team_name  ');
    paramByname('team_name').asstring := varTeam;
    open;
    if not isEmpty then
    begin
      vargubun := fieldByName('pr_gubun').asstring;
    end
    else
      vargubun := '';
  end;
  // 쉼표로 구분된 문자열
  if trim(vargubun) <> '' then
  begin

    scanCount := LoadTeam_PromiseGubunCount(vargubun);

    for i := 1 to scanCount do
    begin
      if result = '' then
        result := ' gubun = ' + '''' + substr(vargubun, i, ',') + ''''
      else
        result := result + ' or ' + ' gubun = ' + '''' +
          substr(vargubun, i, ',') + '''';

    end;

  end;
end;

function LoadTeam_PromiseGubunCount(vargubun: string): integer;
var
  szArrString: TArrString;
begin
  result := 0;
  if trim(vargubun) <> '' then
  begin

    SetLength(szArrString, 1);
    result := ScanString(pchar(vargubun), szArrString, ',', ',');

  end;
end;

function LoadTeam_PromiseGubunCount_team(varTeam: string): integer;
var
  vargubun: string;
  i, scanCount: integer;
  szArrString: TArrString;
begin
  result := 0;
  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_team');
    sql.add('where team_name=:team_name  ');
    paramByname('team_name').asstring := varTeam;
    open;
    if not isEmpty then
    begin
      vargubun := fieldByName('pr_gubun').asstring;
    end
    else
      vargubun := '';
  end;
  // 쉼표로 구분된 문자열
  if trim(vargubun) <> '' then
  begin

    result := LoadTeam_PromiseGubunCount(vargubun);

  end;
end;

function LoadTeam_PromiseGubunStart(varTeam: string): integer;
var
  vargubun: string;
  i, scanCount: integer;
  szArrString: TArrString;
begin
  result := 0;
  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_team');
    sql.add('where team_name=:team_name  ');
    paramByname('team_name').asstring := varTeam;
    open;
    if not isEmpty then
    begin
      vargubun := fieldByName('pr_gubun').asstring;
    end
    else
      vargubun := '';
  end;
  // 쉼표로 구분된 문자열
  if trim(vargubun) <> '' then
  begin

    result := strtoint(substr(vargubun, 1, ','));

  end;
end;

procedure find_fileInfo(varKind: integer; path: string; VarChart: string;
  varFolder1: string = ''; destFolder: string = ''; destfolder2: string = '');
var
  srchFile: TsearchRec;
  tmppath, strname: string;
  chknum, len, varSec: integer;
  varType: string;
  varTrue: boolean;
  varGetDate: string;
  varGetTime: string;
  varGetMin: string;
  varGetSec: string;
  varImageGuid: string;
  varImgName: string;

  ASystemTime: TSystemTime;
  dtFileCreationTime: TdateTime;
  varCase: integer;

  scanCount: integer;
  szArrString: TArrString;
  varFileName: string;
  varFileType: string;

  varTreatKind: string;

  varTreatOrder: string;

  path2: string;
  varThumbName: string;
begin

  chknum := 0;
  tmppath := path + '\*.*';
  FindFirst(tmppath, faAnyFile, srchFile);
  tmppath := srchFile.name;

  path2 := '\\' + configvalue.varImg5IP + '\' + configvalue.varimg5Root;
  // '\images';   //VCeph데이터를 저장하기 위한 폴더(IOS60)

  while chknum = 0 do
  begin
    chknum := findnext(srchFile);
    tmppath := srchFile.name;
    len := Length(tmppath);
    if (srchFile.name <> '.') and (srchFile.name <> '..') and (chknum = 0) then
    begin
      if srchFile.attr = fadirectory then
      begin
        // 디렉토리일 경우 자기자신을 다시 호출한다.
        find_fileInfo(varKind, path + '\' + srchFile.name, VarChart, destFolder,
          destfolder2);
      end
      else
      begin

        // FileTimeToSystemTime(srchfile.FindData.ftCreationTime, ASystemTime);
        FileTimeToSystemTime(srchFile.FindData.ftLastWriteTime, ASystemTime);

        dtFileCreationTime := SystemTimeToDateTime(ASystemTime);

        if (LowerCase(ExtractFileExt(path + '\' + srchFile.name)) = '.jpg') then
        begin
          varFileName := substr(srchFile.name, 1, '.');

          if pos('-', varFileName) > 0 then
          begin
            varTreatKind := substr(substr(varFileName, 3, '_'), 1, '-');
            varTreatOrder := substr(substr(varFileName, 3, '_'), 2, '-');
          end
          else
          begin
            varTreatKind := substr(varFileName, 3, '_');
            varTreatOrder := '0';
          end;

          SetLength(szArrString, 1);
          scanCount := ScanString(pchar(varFileName), szArrString, '_', '_');

          if scanCount = 4 then
            varFileType := substr(varFileName, 4, '_')
          else if scanCount > 4 then
            varFileType := substr(varFileName, 4, '_') + '_' +
              substr(varFileName, 5, '_');

          varCase := StrCase(varFileType, ['lateral_tracing', // 0
            'Floantal_tracing', // 1
            'lat_film', // 2
            'fro_film', // 3
            'orthopan', // 4  파노라마
            'extra_6', // 5   TMJ
            'extra_2', // 6   Mx I1
            'lower_model', // 7
            'extra_10', // 8     모델CO 정면
            'extra_11', // 9      모델CO 우측면
            'extra_12', // 10    모델CO 좌측면
            'extra_14', // 11   Facial Mid Line
            'model_photo', // 12  Model Photo
            'intraoral_photo', // 13  intraoral photo
            'extra_4', // 14   Mn I
            'intraoral_upper', // 15
            'intraoral_lower', // 16
            'extra_7', // 17 OJ
            'extra_1', // 18   Photo45
            'extra_3', // 19   Mx I2
            'extra_5', // 20   MP3
            'smile_photo', // 21    Smile
            'front_model', // 22
            'extra_9', // 23 OB
            'intraoral_front', // 24  //Intraoral Flont
            'extra_000', // 'intraoral_right', //25 차트자리로 비워두기...
            'extra_000', // 'intraoral_left', //26   차트자리로 비워두기...
            'lat_photo', // 27   셉
            'extra_000', // 'fro_photo', //28   셉,  차트자리로 비워두기...
            'right_model', // 29
            'left_model', // 30
            'upper_model', // 31
            'extra_13', // 32
            'etc1', // 33
            'etc1', // 34
            'etc2', // 35
            'extra_8', // 36
            'extra_15', // 37
            'extra_16', // 38
            'extra_17', // 39
            'extra_18', // 40
            'extra_19', // 41
            'extra_20' // 42
            ]);

          if varCase >= 0 then
          begin

            case varCase of

              0 .. 42:
                begin
                  varType := inttostr(varCase);

                end;

            end;
          end
          else
          begin
            varType := '42';
          end;
          varTrue := true;

        end
        else

          varTrue := false;

        varImgName := srchFile.name;

        varThumbName := substr(varImgName, 1, '.') + '_tmb.bmp';

        if varTrue = true then
        begin
          // 1.복사
          // 이것은 원래 V-ceph파일 경로를 참조하지 못할경우에만 한다.
          // copyfiles(srchfile.name, );
          { if not directoryExists(path2 + '\' + varchart) then
            ForceDirectories(path2 + '\' + varchart);

            if not directoryExists(path2 + '\' + destFolder + '\' + varchart + '\thumb') then
            ForceDirectories(path2 + '\' + destFolder + '\' + varchart + '\thumb');

            copyfile(pchar(path + '\' + srchfile.name), pchar(path2 + '\' + destFolder + '\' + varchart + '\' + varImgName), true);

            copyfile(pchar(path + '\' + 'thumb\' + varThumbName), pchar(path2 + '\' + destFolder + '\' + varchart + '\thumb\' + varThumbName), true);
          }




          // Todo : path2가 없는 경우 찾기위해 시간소비가 많다.

          // if not directoryExists(path2 + '\' + varFolder1) then
          // ForceDirectories(path2 + '\' + varFolder1);

          // if not directoryExists(path2 + '\' + varFolder1 + '\' + destFolder + '\thumb') then
          // ForceDirectories(path2 + '\' + varFolder1 + '\' + destFolder + '\thumb');

          { //이미지를 공유폴더에 저장
            copyfile(pchar(path + '\' + srchfile.name),
            pchar(path2 + '\' + varFolder1 + '\' + destFolder + '\' + varImgName), true);
            //썹네일 저장
            copyfile(pchar(path + '\' + 'thumb\' + varThumbName),
            pchar(path2 + '\' + varFolder1 + '\' + destFolder + '\thumb\' + varThumbName), true);
          }
          { 복사하지말고
            DB에만 넣고
            공유폴더에서 파일을 불러서
            이미지를 보여주자...

            FastFileCopy(pchar(path + '\' + srchfile.name),
            pchar(path2 + '\' + varFolder1 + '\' + destFolder + '\' + varImgName), @FastFileCopyCallBack);
            FastFileCopy(pchar(path + '\' + 'thumb\' + varThumbName),
            pchar(path2 + '\' + varFolder1 + '\' + destFolder + '\thumb\' + varThumbName), @FastFileCopyCallBack);

          }      // FastFileCopy
          // showmessage('4');

          // 2.DB에 넣기
          try
            // showmessage('5');
            with dm_f.sqlTemp do
            begin
              close;
              sql.clear;
              sql.add('select * from Imageinfo');
              sql.add('where chartno=:chartno and filename=:filename');
              paramByname('filename').value := varImgName;
              paramByname('ChartNo').value := trim(VarChart);
              open;
              if isEmpty then
              begin
                // showmessage('6');

                with dm_f.sqlTemp2 do
                begin
                  close;
                  sql.clear;
                  sql.add('Insert Into Imageinfo');
                  sql.add('( Date, OVERCheck, ChartNo, FileType, ShotType, Location, nPosition, CephType, used, panoset, filename, aKind, origFilename) Values');
                  sql.add('( :Date, :OVERCheck, :ChartNo, :FileType, :ShotType, :Location, :nPosition, :CephType, :used, :panoset, :filename, :aKind, :origFilename)');
                  paramByname('Date').value := dtFileCreationTime;
                  paramByname('OVERCheck').asstring := '';
                  paramByname('ChartNo').asstring := trim(VarChart);
                  paramByname('FileType').asstring := '1';
                  paramByname('ShotType').asstring := varType;
                  paramByname('Location').asstring := '';
                  paramByname('nPosition').asstring := '';
                  paramByname('CephType').asstring := '';
                  paramByname('used').asstring := '1';
                  paramByname('panoset').asstring := '0';
                  paramByname('filename').asstring := varImgName;
                  paramByname('aKind').asstring := '11';

                  paramByname('origFilename').asstring := destfolder2;
                  // 폴더명을 저장해주자...폴더명은 수시로 바뀌기 때문에(VCeph에서 이름을 바꾸면 파일이름이 바뀐다.)

                  execsql;

                end;

                // ma_imgstorage에도 넣어준다.
                insertImgStorage(trim(VarChart), strtoint(varType), 1,
                  varThumbName, formatdatetime('YYYY-MM-DD',
                  dtFileCreationTime), '11', varTreatKind, varTreatOrder,
                  destfolder2);

              end
              else
              begin

                with dm_f.sqlTemp2 do
                begin
                  close;
                  sql.clear;
                  sql.add('update Imageinfo set');
                  sql.add('ShotType=:ShotType , origFilename=:origFilename where chartno=:chartno and filename= :filename');

                  paramByname('chartno').asstring := trim(VarChart);

                  paramByname('ShotType').asstring := varType;
                  paramByname('filename').asstring := varImgName;
                  paramByname('origFilename').asstring := destfolder2;
                  // 폴더명을 저장해주자...폴더명은 수시로 바뀌기 때문에(VCeph에서 이름을 바꾸면 파일이름이 바뀐다.)

                  execsql;

                end;

                UpdateImgStorage(varThumbName, varTreatKind, varTreatOrder,
                  destfolder2);

              end;

            end;

          except
            on E: Exception do
            begin

            end;
          end;

        end;

      end;
    end;
  end;

  { with Dm_f.SqlTemp do
    begin

    Close;
    Sql.Clear;
    sql.text := 'insert into ma_imgstorage  ' + #10#13 +
    'select chartno, shottype, ''1'',  convert(varchar, [date], 23),  ' + #10#13 +
    'convert(varchar, getdate(), 23), replace([filename], ''.jpg'', ''_tmb.bmp'') , ''1'', ''11''  from imageinfo   ' + #10#13 +
    'where akind=''11''  and chartno= ' + '''' + trim(varchart) + '''';
    execsql;
    end;
    end;
  }
end;

procedure AllSync_Vceph(VarChart: string; varPath: string);
var
  i: integer;
  varImgGetDate: TdateTime;
  varFileType: string;
  varFileName: string;
  varNumero: string;
  varFileExt: string;
  varname: string;
  varDate: string;
  varPtsn, varImsn, varType, varTime: string;
  varDate2: TdateTime;
  varDir: string;
  scanCount: integer;
  varDir1: string;
  varDir2: string;
  szArrString: TArrString;

begin

  SetLength(szArrString, 1);
  scanCount := ScanString(pchar(varPath), szArrString, '\', '\');
  varDir1 := substr(varPath, scanCount - 1, '\');
  varDir2 := substr(varPath, scanCount, '\');
  // 파일을 찾아서 DB에 써주고 MI서버가 참조하는 공유폴더에 복사해준다.
  // 공유폴더 경로가 4가지 이다.
  // 공유폴더 경로는 공유폴더 + varPath의 마지막 경로이다.

  // find_fileInfo(5, varPath + '\' + varChart, varChart, varDir2);
  find_fileInfo(5, varPath, VarChart, varDir1, VarChart, varDir2);

end;

procedure FastFileCopy(const InFileName, OutFileName: string;
  CallBack: TCallBack);
const
  BufSize = 3 * 20 * 4096; { 48Kbytes gives me the best results }
type
  PBuffer = ^TBuffer;
  TBuffer = array [1 .. BufSize] of Byte;
var
  Size: DWORD;
  Buffer: PBuffer;
  infile, outfile: file;
  SizeDone, SizeFile: Longint;
begin
  if (InFileName <> OutFileName) then
  begin
    Buffer := nil;
    Assign(infile, InFileName);
    Reset(infile, 1);
    try
      SizeFile := FileSize(infile);
      Assign(outfile, OutFileName);
      Rewrite(outfile, 1);
      try
        SizeDone := 0;
        New(Buffer);
        repeat
          BlockRead(infile, Buffer^, BufSize, Size);
          Inc(SizeDone, Size);
          CallBack(SizeDone, SizeFile, OutFileName);

          BlockWrite(outfile, Buffer^, Size)
        until Size < BufSize;
        FileSetDate(TFileRec(outfile).Handle,
          FileGetDate(TFileRec(infile).Handle));
      finally
        if Buffer <> nil then
          Dispose(Buffer);
        CloseFile(outfile)
      end;
    finally
      CloseFile(infile);
    end;
  end
  else
    raise EInOutError.Create('File cannot be copied onto itself')
end; { FastFileCopy }

procedure SaveInitoDB(varKind, varname: string);
begin

  try
    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add(' delete from ma_config_etc ');
      sql.add(' where kind = :kind ');
      paramByname('kind').value := varKind;
      execsql;

      close;
      sql.clear;
      sql.add(' Insert Into ma_config_etc ');
      sql.add(' (kind, contents) ');
      sql.add(' VALUES( :kind, :contents) ');
      paramByname('kind').value := varKind;

      paramByname('contents').LoadFromFile(extractfilepath(paramstr(0)) +
        varname, ftBlob);
      execsql;

      Application.MessageBox(pchar('입력하신 정보가 저장 되었습니다.'), '알림',
        mb_ok + mb_IconInformation);

    end;
  except
    on E: Exception do
      ExceptLogging('Tdm_f.saveiniToDb Insert:' + E.Message);
  end;
end;

function LoadIniFromDB(varKind, varname: string): boolean;
var
  BinSize: integer;
  nFileStream: Tfilestream;
  BinData: array of Byte;
  S: string;
  i: integer;

  aString: TstringList;
  MemSize: integer;
  BStream: TStream;
  A: string;
  Buffer: array of Byte;
begin

  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('select * from ma_config_etc ');
      sql.add('where kind= :kind');
      paramByname('kind').asstring := varKind;

      open;

      if not isEmpty then
      begin
        try

          BStream := CreateBlobStream(fieldByName('contents'), bmRead);
          MemSize := BStream.Size;
          SetLength(Buffer, MemSize);
          Inc(MemSize);
          BStream.Read(Pointer(Buffer)^, MemSize);
          for i := 0 to MemSize - 1 do
          begin
            A := A + Char(Buffer[i]);
          end;

          try
            aString := TstringList.Create;
            aString.add(A);
            aString.SaveToFile(extractfilepath(paramstr(0)) + varname);
          finally
            aString.Free;
          end;

          result := true;

        finally
          BStream.Free;

        end;

        S := extractfilepath(paramstr(0)) + varname;
        nFileStream := Tfilestream.Create(S, fmOpenRead);
        BinSize := nFileStream.Size;
        SetLength(BinData, BinSize);

        nFileStream.Position := 0;
        for i := 0 to BinSize - 1 do
        begin
          nFileStream.Read(BinData[i], 1);
        end;
        nFileStream.Free;

      end
      else
      begin
        result := false;
      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('Tdm_f.LoadDBini:' + E.Message);
      result := false;
    end;
  end;
end;

procedure saveImagechartinfo(VarChart: string; varCount: string;
  varFoldername: string; varUserID: string; varFileName: string;
  varKind: string = '');
begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('insert into ma_chart_scan');
    sql.add(
      '   (chart ,  filename ,	folder ,folder2,	nOrd , regday ,	reguser, inuse, kind) values');
    sql.add('   (:chart ,  :filename ,	:folder ,	:folder2, :nOrd , :regday ,	:reguser, :inUse,:kind) ');
    paramByname('chart').asstring := VarChart;
    paramByname('filename').asstring := ExtractFilename(varFileName);
    // edtfilename.text);
    paramByname('folder').asstring := formatdatetime('yyyymmdd', now);
    paramByname('folder2').asstring := varFoldername;
    paramByname('nOrd').asstring := varCount;
    paramByname('regday').asstring := formatdatetime('yyyy-mm-dd', now);
    paramByname('reguser').asstring := varUserID;
    paramByname('inUse').asstring := '1';
    paramByname('kind').asstring := varKind;
    execsql;
  end;
end;

procedure saveRecFile(VarChart: string; varCount: string; varFoldername: string;
  varUserID: string; varFileName: string; varKind: string = '');
begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('insert into ma_chart_rec');
    sql.add(
      '   (chart ,  filename ,	folder ,folder2,	nOrd , regday ,	reguser, inuse, kind) values');
    sql.add('   (:chart ,  :filename ,	:folder ,	:folder2, :nOrd , :regday ,	:reguser, :inUse,:kind) ');
    paramByname('chart').asstring := VarChart;
    paramByname('filename').asstring := ExtractFilename(varFileName);
    // edtfilename.text);
    paramByname('folder').asstring := formatdatetime('yyyymmdd', now);
    paramByname('folder2').asstring := varFoldername;
    paramByname('nOrd').asstring := varCount;
    paramByname('regday').asstring := formatdatetime('yyyy-mm-dd', now);
    paramByname('reguser').asstring := varUserID;
    paramByname('inUse').asstring := '1';
    paramByname('kind').asstring := varKind;
    execsql;
  end;
end;

procedure updateImagechartinfo(VarChart: string; varIndex: integer;
  varKind: string = '');
begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('update ma_chart_scan set');
    sql.add(' inUse= ''0'' ');
    sql.add(' where chart=:chart and nord=:nOrd and kind=:kind');
    paramByname('chart').asstring := VarChart;
    paramByname('nOrd').asinteger := varIndex;
    paramByname('kind').asstring := varKind;
    execsql;
  end;
end;

procedure updateImagechartToSunapJangbu(VarChart: string;
  varFileName, varFoldername: string);
begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('update ma_chart_scan set');
    sql.add(' kind = ''1'' ');
    sql.add(' where chart=:chart  and fileName=:fileName and folder2=:folder2');
    paramByname('chart').asstring := VarChart;
    paramByname('fileName').asstring := varFileName;
    paramByname('Folder2').asstring := varFoldername;
    execsql;
  end;
end;

procedure DeleteImagechart(VarChart: string; varFileName, varFoldername: string;
  varKind: string = '');
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('delete from ma_chart_scan');
    sql.add(' where chart=:chart  and fileName=:fileName and folder2=:folder2 and kind=:kind');
    paramByname('chart').asstring := VarChart;
    paramByname('fileName').asstring := varFileName;
    paramByname('Folder2').asstring := varFoldername;
    paramByname('kind').asstring := varKind;
    execsql;
  end;
end;

procedure insertSnj2(varday: string; varHyun, varHyunReceipt, varCard,
  varTong: integer);
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from snj2');
    sql.add(' where sDay=:sDay ');
    paramByname('sDay').asstring := varday;
    open;
    if not isEmpty then
    begin

      close;
      sql.clear;
      sql.add('update snj2 set');
      sql.add('hyun=:hyun, hyunReceipt=:hyunReceipt, card=:card, tong=:tong');
      sql.add('where sday = :sday');
    end
    else
    begin
      close;
      sql.clear;
      sql.add('insert into snj2 ');
      sql.add('(sDay , hyun, hyunReceipt, card, tong) values');
      sql.add('(:sDay, :hyun, :hyunReceipt, :card, :tong) ');
    end;
    paramByname('sday').asstring := varday;
    paramByname('hyun').asinteger := varHyun;
    paramByname('hyunreceipt').asinteger := varHyunReceipt;
    paramByname('card').asinteger := varCard;
    paramByname('tong').asinteger := varTong;

    execsql;

  end;
end;

function isSendAllowSMS(VarChart: string): boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('select sms  from ma_gogek_basic');
      sql.add('where Chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      open;
      if not isEmpty then
      begin
        if fieldByName('sms').asstring <> '0' then
          result := true;
      end
      else
      begin
        // 고객 데이터가 없으면 보내도 될까?
        result := true;
      end;
    end;
  except
    on E: Exception do
    begin
      showmessage(' [고객데이터검색오류]' + E.Message);
    end;

  end;

end;

function LoadFirstDay(chart: string): string;
const
  dataSelect = 'select * from ma_gogek_basic' + #10#13 + 'where chart=:chart ';
begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      open;
      if not isEmpty then
      begin
        result := fieldByName('first_day').asstring;
      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('load_firstday' + E.Message);
      result := '';

    end;
  end;
end;

function LoadJuminNo(chart: string): string;
const
  dataSelect = 'select * from ma_gogek_basic' + #10#13 + 'where chart=:chart ';
begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('chart').asstring := chart;
      open;
      if not isEmpty then
      begin
        result := fieldByName('jumin').asstring;
      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('load_Jumin' + E.Message);
      result := '';

    end;
  end;
end;

function LoadPlanName(VarChart: string): string;
begin
  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select name from ma_gogek_basic');
    sql.add('where chart=:chart');
    paramByname('chart').asstring := VarChart;
    open;
    result := fieldByName('name').asstring;
  end;
end;

procedure ReviewTree_pat(varCahrt: string; varName1: string; ParentNo: string;
  Treeview: TTreeview; TreeNode: TTreeNode);
var
  varname, referName: string;
  dispName, dispChart: string;
  ChildNode: TTreeNode;
  ChildNode2: TTreeNode;
  VarChart: string;
  PRegNo: string;
  varQuery: TuniQuery;
  varQuery2: TuniQuery;
  MyRecPtr: PMyRec;
  i: integer;
  varPath: string;
begin
  // todo: 여기서 검색하는 환자의 내원동기를 찾아서 써준다.
  New(MyRecPtr);
  MyRecPtr^.PreferChart := ''; // dispChart;
  MyRecPtr^.PreferName := ''; // dispName;

  varPath := LoadPath(ParentNo);

  TreeNode := Treeview.Items.AddObjectFirst(Treeview.TopItem, varPath,
    MyRecPtr);

  // TreeNode := treeview2.Items.AddChildFirst(treeview2.TopItem, '내원동기');

  qi := qi + 1;
  varQuery := TuniQuery.Create(Application);
  varQuery.name := 'sqlrefer_pat' + inttostr(qi + 1);
  varQuery.Connection := dm_f.SqlWork.Connection;

  try
    // if copy(ParentNo, 1, 1) = 'R' then
    // parentNo := copy(ParentNo, 2, length(parentNo));
    varQuery.sql.text :=
      'select * from refer_view                                     ' + #10#13 +
      ' Where  refer_chart <> ''''  AND                             ' + #10#13 +
      ' ( chart=:Chart or  refer_chart  =:chart )                   ' + #10#13 +
      ' group by  chart, name, refer_chart, refer_name, fam_id      ' + #10#13 +
      ' order by refer_name asc                                     ';
    varQuery.paramByname('chart').asstring := ParentNo;
    varQuery.open;
    if varQuery.RecordCount > 0 then
    begin
      for i := 0 to 0 do // varQuery.RecordCount - 1 do
      begin
        // 검색하는 사람의 조상을 찾아서 그 조상의 하부 트리를 불러오기 때문에
        // 한번만 불러서   ReviewTree_sub_pat로 정리하자....
        Application.ProcessMessages;
        // label17.Caption := inttostr(i);

        dispName := varQuery.fieldByName('refer_Name').value;
        dispChart := varQuery.fieldByName('refer_chart').value;
        New(MyRecPtr);

        MyRecPtr^.PChart := varQuery.fieldByName('chart').value;
        MyRecPtr^.PName := varQuery.fieldByName('Name').value;

        MyRecPtr^.PreferChart := dispChart;
        MyRecPtr^.PreferName := dispName;

        // MyRecPtr^.PNaewonilsu := naewonCheck(dispChart);
        // MyRecPtr^.PSumSunapek := SunapekCheck(dispChart);
        // MyRecPtr^.PSumMisuek := MisuekCheck(dispChart);
        // MyRecPtr^.PFamId := findFamid(dispChart); //varQuery.FieldByName('fam_id').Value;

        ChildNode := Treeview.Items.AddChildObject(TreeNode,
          dispName + '(' + dispChart + ')' +
          // '(' + inttostr(MyRecPtr^.PNaewonilsu) + ')' +
          '   ' + MyRecPtr^.PSumsunapEk + ' / ' + MyRecPtr^.PSumMisuek,
          MyRecPtr);

        if dispChart = VarChart then
          ChildNode.ImageIndex := 2
        else
          ChildNode.ImageIndex := 1;

        ReviewTree_sub_pat(dispChart, Treeview, ChildNode);

        varQuery.Next;

        Application.ProcessMessages;

      end;
      TreeNode.Expand(true);
    end
    else
    begin
      Application.ProcessMessages;

      dispName := varName1;
      dispChart := VarChart;
      New(MyRecPtr);

      MyRecPtr^.PChart := VarChart;
      MyRecPtr^.PName := varName1;

      MyRecPtr^.PreferChart := VarChart;
      MyRecPtr^.PreferName := varName1;

      // MyRecPtr^.PNaewonilsu := naewonCheck(main_f.edtChart.text);
      // MyRecPtr^.PSumSunapek := SunapekCheck(main_f.edtChart.text);
      // MyRecPtr^.PSumMisuek := MisuekCheck(main_f.edtChart.text);
      // MyRecPtr^.PFamId := findFamid(main_f.edtChart.text); //varQuery.FieldByName('fam_id').Value;

      ChildNode := Treeview.Items.AddChildObject(TreeNode,
        varName1 + '(' + VarChart + ')' +
        // '(' + inttostr(MyRecPtr^.PNaewonilsu) + ')' +
        '   ' + MyRecPtr^.PSumsunapEk + ' / ' + MyRecPtr^.PSumMisuek, MyRecPtr);

      ChildNode.ImageIndex := 2;

      Application.ProcessMessages;

    end;
  finally
    varQuery.close;
    varQuery.Free;
  end;
end;

procedure ReviewTree_sub_pat(ParentNo: string; Treeview: TTreeview;
  TreeNode: TTreeNode);
var
  varname, referName: string;
  dispName, dispChart: string;
  ChildNode: TTreeNode;
  ChildNode2: TTreeNode;
  VarChart: string;
  PRegNo: string;
  varQuery: TuniQuery;
  varQuery2: TuniQuery;
  MyRecPtr: PMyRec;
  i: integer;
begin
  qi := qi + 1;
  varQuery := TuniQuery.Create(Application);
  varQuery.name := 'sqlSogae_pat' + inttostr(qi + 1);
  varQuery.Connection := dm_f.SqlWork.Connection;

  try
    // if copy(ParentNo, 1, 1) = 'R' then
    // parentNo := copy(ParentNo, 2, length(parentNo));
    varQuery.sql.text := 'select * from refer_view ' + #10#13 +
      'Where refer_chart=' + '''' + ParentNo + '''' + #10#13 +
      ' order by refer_chart desc';

    varQuery.open;
    if varQuery.RecordCount > 0 then
    begin
      for i := 0 to varQuery.RecordCount - 1 do
      begin
        Application.ProcessMessages;
        // label17.Caption := inttostr(i);

        referName := varQuery.fieldByName('refer_Name').value;
        referchart := varQuery.fieldByName('refer_chart').value;
        dispName := varQuery.fieldByName('Name').value;
        dispChart := varQuery.fieldByName('chart').value;

        New(MyRecPtr);

        MyRecPtr^.PreferChart := dispChart;
        MyRecPtr^.PreferName := dispName;

        MyRecPtr^.PChart := varQuery.fieldByName('chart').value;
        MyRecPtr^.PName := varQuery.fieldByName('Name').value;

        // MyRecPtr^.PNaewonilsu := naewonCheck(dispChart);
        // MyRecPtr^.PSumSunapek := SunapekCheck(dispChart);
        // MyRecPtr^.PSumMisuek := MisuekCheck(dispChart);
        // MyRecPtr^.PFamId := varQuery.FieldByName('fam_id').Value;

        if b_referchart <> dispChart then
        begin

          b_chart := varQuery.fieldByName('chart').asstring;

          b_referchart := referchart;
          ChildNode := Treeview.Items.AddChildObject(TreeNode,
            dispName + '(' + dispChart + ')' +
            // '(' + inttostr(MyRecPtr^.PNaewonilsu) + ')' +
            '   ' + MyRecPtr^.PSumsunapEk + ' / ' + MyRecPtr^.PSumMisuek,
            MyRecPtr);
          if dispChart = ParentNo then
            ChildNode.ImageIndex := 2
          else
            ChildNode.ImageIndex := 1;
          ReviewTree_sub_pat(dispChart, Treeview, ChildNode);
        end;

        { if isSelf then
          begin //검색 chart와 dispchart가 같고  refer_chart가 b_Chart와 다르면
          if b_chart <> referChart then
          exit;
          end;

          if b_referchart <> dispChart then
          begin
          if dispChart = main_f.edtChart.text then
          begin
          b_chart := varQuery.FieldByName('chart').AsString;
          isSelf := true;
          end;

          application.ProcessMessages;
          b_referchart := referchart;
          if isParent = false then
          begin
          ChildNode := TreeView.Items.AddChildObject(TreeNode, dispName + '(' + dispChart + ')' + MyRecPtr^.PSumSunapek + '/' + MyRecPtr^.PSumMisuek, MyRecPtr);
          end
          else
          begin
          if dispchart = main_f.edtChart.text then
          begin
          ChildNode := TreeView.Items.AddChildObject(TreeNode, dispName + '(' + dispChart + ')' + MyRecPtr^.PSumSunapek + '/' + MyRecPtr^.PSumMisuek, MyRecPtr);
          end;
          end;

          if o_referChart = dispChart then
          begin
          isParent := true;
          showmessage(dispchart);
          end
          else
          begin
          isParent := false;

          end;

          ReviewTree_sub_pat(dispchart,TreeView,  ChildNode);

          end;
        }
        varQuery.Next;

        Application.ProcessMessages;

      end;
      TreeNode.Expand(true);

    end
    else

    begin

    end;
  finally
    varQuery.close;
    varQuery.Free;
  end;
end;

function LoadPath(VarChart: string): string;
var
  varComponentCount: integer;
begin
  result := '내원경로';
  { with dm_f.SqlWork do
    begin
    Close;
    Sql.Clear;
    Sql.Add('select * from ma_gogek_munjin');
    Sql.Add('where Chart=:chart');
    Sql.Add('and kind=:kind');
    ParamByName('Chart').AsString := varChart;
    ParamByName('kind').AsString := 'dong';
    open;

    if not isEmpty then
    begin
    if fieldByName('cap1').asString <> '' then
    result := fieldByName('cap1').asString
    else
    result := RetRKind(fieldByName('val').asString);
    end
    else
    result := '내원경로';
    end;
  }
end;

procedure FreeTreeItem(aTree: TTreeview);
var
  i: integer;
begin
  for i := aTree.Items.Count - 1 downto 0 do
  begin
    Dispose(aTree.Items.Item[i].Data);
    aTree.Items.Item[i].Destroy;
  end;
end;

function GetTeamCode(Strings: TStrings; iItemIndex: integer): string;
var
  iIndex: integer;
  p: pTeam;
begin
  result := '';

  for iIndex := 0 to Strings.Count - 1 do
  begin
    if (iIndex = iItemIndex) then
    begin
      p := pTeam(Strings.Objects[iIndex]);
      result := p^.team_key;
      break;
    end;
  end;
end;

procedure DisplayNewonDongGiGroup(scroll: TScrollBox; GroupRemark: string);
var
  tempCheckBox: TCheckBox;
begin

  SetLength(varSogeGroup, 200);

  tempCheckBox := TCheckBox.Create(scroll);

  with tempCheckBox do
  begin
    Parent := scroll;
    Left := X;
    Top := Y;
    Font.Size := 9;
    Width := 200;
    Height := 17;
    Color := clWhite;
    Font.Size := 9;
    Font.name := '굴림';
    Font.Color := clBlue;
    Name := 'sc' + 'NewonDongGi' + inttostr(i);
    // ShowMessage('CheckBox.Name: ' + Name);
    varSogeGroup[i] := GroupRemark;
    caption := GroupRemark;
    showhint := true;
    // Hint := Name;
    Hint := GroupRemark;
    // showmessage('00'+groupRemark);
  end;

  // memGroup.Name := tempCheckBox.Name;
  // memGroup.Text := tempCheckBox.Caption;

end;

procedure LoadNewonDongGiGroup(scroll: TScrollBox; varCode: string);
begin
  X := 10; // checkBox의 초기 Left값
  Y := 2; // checkBox의 초기 Top값
  i := 0;
  // sbGroup의 내용을 모두 지운다.
  if scroll.ControlCount > 0 then
  begin
    while scroll.ControlCount > 0 do
    begin
      scroll.Controls[0].Destroy;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic');
    sql.add(' where Code like :Code and Code<> :code2');
    sql.add('order by Code');
    paramByname('Code').asstring := varCode + '%';
    paramByname('Code2').asstring := varCode + '000';
    // ShowMessage(varCode + ',' +Sql.Text);
    open;
    first;

    if not isEmpty then
    begin
      while not eof do
      begin
        // ShowMessage(FieldByName('disp').AsString);
        DisplayNewonDongGiGroup(scroll, fieldByName('disp').asstring);

        if X < scroll.Width - 85 then
        begin
          // x := x + 120; //checkBox의 Left증가값
          Y := Y + 20;
        end
        else
        begin // 줄바꿔서
          X := 10; // checkBox의 초기 Left값
          Y := Y + 20; // checkBox의 Top 증가 값

        end;

        i := i + 1; // 이름 명 변경
        Next;
      end;
    end;
  end;

end;

procedure LoadNewonDongGiGroup2(fpanel: TFlowPanel; varCode: string);
var
  i: integer;
begin
  // fpanel 내용을 모두 지운다.
  if fpanel.ControlCount > 0 then
  begin
    while fpanel.ControlCount > 0 do
    begin
      fpanel.Controls[0].Destroy;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic');
    sql.add(' where Code like :Code and Code<> :code2');
    sql.add('order by sortOrder');
    paramByname('Code').asstring := varCode + '%';
    paramByname('Code2').asstring := varCode + '000';
    // ShowMessage(varCode + ',' +Sql.Text);
    open;
    first;

    if not isEmpty then
    begin
      i := 0;
      SetLength(tempDongGiCheckBox, RecordCount);
      // SetLength(varSogeGroup, 200);

      while not eof do
      begin
        // ShowMessage(FieldByName('disp').AsString);
        tempDongGiCheckBox[i] := TCheckBox.Create(fpanel);
        tempDongGiCheckBox[i].Parent := fpanel;
        tempDongGiCheckBox[i].caption := fieldByName('disp').asstring;
        tempDongGiCheckBox[i].name := 'sc' + 'NewonDongGi' + inttostr(i);
        // varSogeGroup[i] :=  fieldByName('disp').asString;
        i := i + 1; // 이름 명 변경
        Next;
      end;
    end;
  end;

end;

procedure ClearNewonDongGiGroup(scroll: TScrollBox; varCode: string);
var
  varGroup: integer;
  varGroupCount: integer;
begin
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('select count(*) as GroupCount from ma_basic');
    sql.add(' where Code like :Code and Code<> :code2');
    paramByname('Code').asstring := varCode + '%';
    paramByname('Code2').asstring := varCode + '000';
    open;
    last;
    if not isEmpty then
      varGroupCount := fieldByName('GroupCount').asinteger
    else
      varGroupCount := 0;

  end;
  if varGroupCount > 0 then
  begin
    for varGroup := 0 to varGroupCount - 1 do
    begin
      if scroll.ControlCount > 0 then
      begin
        (scroll.FindComponent(('scNewonDongGi') + inttostr(varGroup))
          as TCheckBox).checked := false;
      end;
    end;

  end;

end;

function LoadNewonDongGiData(scroll: TScrollBox; VarChart: string): string;
var
  varComponentCount: integer;
  varCheckedCap, varDataCap: string;
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_gogek_munjin');
    sql.add('where Chart=:chart');
    paramByname('Chart').asstring := VarChart;
    open;

    if not isEmpty then
    begin
      while not eof do
      begin

        if (fieldByName('kind').asstring = 'dong') and
          (fieldByName('val').asstring = '0') then
        begin
          result := fieldByName('valcap').asstring;
        end;

        for varComponentCount := 0 to 100 do
        begin
          varCheckedCap := fieldByName('val').asstring;
          varDataCap := varSogeGroup[varComponentCount];
          if varDataCap = varCheckedCap then
            (scroll.FindComponent('scNewonDongGi' + inttostr(varComponentCount))
              as TCheckBox).checked := true;
        end;

        Next;
      end;
    end;
  end;

end;

function LoadNewonDongGiData2(fpanel: TFlowPanel; VarChart: string): string;
var
  varComponentCount: integer;
  varCheckedCap, varDataCap: string;
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_gogek_munjin');
    sql.add('where Chart=:chart');
    paramByname('Chart').asstring := VarChart;
    open;

    if not isEmpty then
    begin
      while not eof do
      begin

        if (fieldByName('kind').asstring = 'dong') and
          (fieldByName('val').asstring = '0') then
        begin
          result := fieldByName('valcap').asstring;
        end;

        for varComponentCount := 0 to fpanel.ControlCount - 1 do // 100 do
        begin
          varCheckedCap := fieldByName('val').asstring;
          // varDataCap := varSogeGroup[varComponentCount];

          varDataCap := tempDongGiCheckBox[varComponentCount].caption;

          if varDataCap = varCheckedCap then
            (fpanel.FindComponent('scNewonDongGi' + inttostr(varComponentCount))
              as TCheckBox).checked := true;
        end;

        Next;
      end;
    end;
  end;

end;

procedure CreateTrigger;
const

  sqlText_TEMP_recall_insert = 'CREATE TRIGGER TEMP_recall_insert         ' +
    #10#13 + 'ON ma_recall                              ' + #10#13 +
    'FOR INSERT                                ' + #10#13 +
    'AS                                        ' + #10#13 +
    'INSERT INTO promise_temp                  ' + #10#13 +
    ' ([idn], [pday]                           ' + #10#13 +
    '           ,[ptime]                       ' + #10#13 +
    '           ,[jubsuday]                    ' + #10#13 +
    '           ,[team]                        ' + #10#13 +
    '           ,[name]                        ' + #10#13 +
    '           ,[chart]                       ' + #10#13 +
    '           ,[gubun]                       ' + #10#13 +
    '           ,[tel]                         ' + #10#13 +
    '           ,[remark]                      ' + #10#13 +
    '           ,[pos]                         ' + #10#13 +
    '           ,[cancel]                      ' + #10#13 +
    '           ,[pjundam]                     ' + #10#13 +
    '           ,[pdam]                        ' + #10#13 +
    '           ,[pInterval]                   ' + #10#13 +
    '           ,[pnaewon]                     ' + #10#13 +
    '           ,[pgugan]                      ' + #10#13 +
    '           ,[pcolor]                      ' + #10#13 +
    '           ,[alret]                       ' + #10#13 +
    '           ,[plock]                       ' + #10#13 +
    '           ,[sendedReserveSms]            ' + #10#13 +
    '           ,[memodam]                     ' + #10#13 +
    '           ,[moduser]                     ' + #10#13 +
    '           ,[modday]                      ' + #10#13 +
    '           ,[sms]                         ' + #10#13 +
    '           ,[nosms]                       ' + #10#13 +
    '           ,[f_color]                     ' + #10#13 +
    '           ,[f_size]                      ' + #10#13 +
    '           ,[f_bold]                      ' + #10#13 +
    '           ,[doc]                         ' + #10#13 +
    '           ,[nowSmsSend]                  ' + #10#13 +
    '           ,[akind]                       ' + #10#13 +
    '           ,[bkind])                      ' + #10#13 +
    'select                                    ' + #10#13 +
    '[id], [rcdate]                            ' + #10#13 +
    '           ,[rctime]                      ' + #10#13 +
    '           ,[rcregdate]                   ' + #10#13 +
    '           ,''''--[pjundam]               ' + #10#13 +
    '           ,[rcname]                      ' + #10#13 +
    '           ,[rcchart]                     ' + #10#13 +
    '           ,''''--[gubun]                 ' + #10#13 +
    '           ,[rctel]                       ' + #10#13 +
    '           ,[rcremark]                    ' + #10#13 +
    '           ,[rccheck]--[pos]              ' + #10#13 +
    '           ,''''--[cancel]                ' + #10#13 +
    '           ,[rcdamdang] --[pjundam]       ' + #10#13 +
    '           ,''''--[pdam]                ' + #10#13 +
    '           ,''30''--[pInterval]           ' + #10#13 +
    '           ,''''--[pnaewon]               ' + #10#13 +
    '           ,''''--[pgugan]                ' + #10#13 +
    '           ,''''--[pcolor]                ' + #10#13 +
    '           ,''''--[alret]                 ' + #10#13 +
    '           ,''''--[plock]                 ' + #10#13 +
    '           ,''''--[sendedReserveSms]      ' + #10#13 +
    '           ,''''--[memodam]               ' + #10#13 +
    '           ,''''--[moduser]               ' + #10#13 +
    '           ,[rccheckday]--[modday]          ' + #10#13 +
  // 리콜 다녀간 날짜가 들어간다.
    '           ,''''--[sms]                   ' + #10#13 +
    '           ,''''--[nosms]                 ' + #10#13 +
    '           ,''''--[f_color]               ' + #10#13 +
    '           ,''''--[f_size]                ' + #10#13 +
    '           ,''''--[f_bold]                ' + #10#13 +
    '           ,''''--[doc]                   ' + #10#13 +
    '           ,''''--[nowSmsSend]            ' + #10#13 +
    '           ,''I''                         ' + #10#13 +
    '           ,''2''                         ' + #10#13 +
    ' FROM inserted                            ';

  sqlText_TEMP_recall_UPDATE = 'CREATE TRIGGER TEMP_recall_UPDATE         ' +
    #10#13 + 'ON ma_recall                              ' + #10#13 +
    'FOR UPDATE                                ' + #10#13 +
    'AS                                        ' + #10#13 +
    'INSERT INTO promise_temp                  ' + #10#13 +
    ' ([idn], [pday]                           ' + #10#13 +
    '           ,[ptime]                       ' + #10#13 +
    '           ,[jubsuday]                    ' + #10#13 +
    '           ,[team]                        ' + #10#13 +
    '           ,[name]                        ' + #10#13 +
    '           ,[chart]                       ' + #10#13 +
    '           ,[gubun]                       ' + #10#13 +
    '           ,[tel]                         ' + #10#13 +
    '           ,[remark]                      ' + #10#13 +
    '           ,[pos]                         ' + #10#13 +
    '           ,[cancel]                      ' + #10#13 +
    '           ,[pjundam]                     ' + #10#13 +
    '           ,[pdam]                        ' + #10#13 +
    '           ,[pInterval]                   ' + #10#13 +
    '           ,[pnaewon]                     ' + #10#13 +
    '           ,[pgugan]                      ' + #10#13 +
    '           ,[pcolor]                      ' + #10#13 +
    '           ,[alret]                       ' + #10#13 +
    '           ,[plock]                       ' + #10#13 +
    '           ,[sendedReserveSms]            ' + #10#13 +
    '           ,[memodam]                     ' + #10#13 +
    '           ,[moduser]                     ' + #10#13 +
    '           ,[modday]                      ' + #10#13 +
    '           ,[sms]                         ' + #10#13 +
    '           ,[nosms]                       ' + #10#13 +
    '           ,[f_color]                     ' + #10#13 +
    '           ,[f_size]                      ' + #10#13 +
    '           ,[f_bold]                      ' + #10#13 +
    '           ,[doc]                         ' + #10#13 +
    '           ,[nowSmsSend]                  ' + #10#13 +
    '           ,[akind]                       ' + #10#13 +
    '           ,[bkind])                      ' + #10#13 +
    'select                                    ' + #10#13 +
    '[id], [rcdate]                            ' + #10#13 +
    '           ,[rctime]                      ' + #10#13 +
    '           ,[rcregdate]                   ' + #10#13 +
    '           ,''''--[pjundam]               ' + #10#13 +
    '           ,[rcname]                      ' + #10#13 +
    '           ,[rcchart]                     ' + #10#13 +
    '           ,''''--[gubun]                 ' + #10#13 +
    '           ,[rctel]                       ' + #10#13 +
    '           ,[rcremark]                    ' + #10#13 +
    '           ,[rccheck]--[pos]              ' + #10#13 +
    '           ,''''--[cancel]                ' + #10#13 +
    '           ,[rcdamdang] --[pjundam]       ' + #10#13 +
    '           ,''''--[pdam]                 ' + #10#13 +
    '           ,''30''--[pInterval]           ' + #10#13 +
    '           ,''''--[pnaewon]               ' + #10#13 +
    '           ,''''--[pgugan]                ' + #10#13 +
    '           ,''''--[pcolor]                ' + #10#13 +
    '           ,''''--[alret]                 ' + #10#13 +
    '           ,''''--[plock]                 ' + #10#13 +
    '           ,''''--[sendedReserveSms]      ' + #10#13 +
    '           ,''''--[memodam]               ' + #10#13 +
    '           ,''''--[moduser]               ' + #10#13 +
    '           ,[rccheckday]--[modday]          ' + #10#13 +
  // 리콜 다녀간 날짜가 들어간다.
    '           ,''''--[sms]                   ' + #10#13 +
    '           ,''''--[nosms]                 ' + #10#13 +
    '           ,''''--[f_color]               ' + #10#13 +
    '           ,''''--[f_size]                ' + #10#13 +
    '           ,''''--[f_bold]                ' + #10#13 +
    '           ,''''--[doc]                   ' + #10#13 +
    '           ,''''--[nowSmsSend]            ' + #10#13 +
    '           ,''U''                         ' + #10#13 +
    '           ,''2''                         ' + #10#13 +
    ' FROM inserted                            ';

  sqlText_TEMP_recall_DELETE = 'CREATE TRIGGER TEMP_recall_DELETE         ' +
    #10#13 + 'ON ma_recall                              ' + #10#13 +
    'FOR DELETE                                ' + #10#13 +
    'AS                                        ' + #10#13 +
    'INSERT INTO promise_temp                  ' + #10#13 +
    ' ([idn], [pday]                           ' + #10#13 +
    '           ,[ptime]                       ' + #10#13 +
    '           ,[jubsuday]                    ' + #10#13 +
    '           ,[team]                        ' + #10#13 +
    '           ,[name]                        ' + #10#13 +
    '           ,[chart]                       ' + #10#13 +
    '           ,[gubun]                       ' + #10#13 +
    '           ,[tel]                         ' + #10#13 +
    '           ,[remark]                      ' + #10#13 +
    '           ,[pos]                         ' + #10#13 +
    '           ,[cancel]                      ' + #10#13 +
    '           ,[pjundam]                     ' + #10#13 +
    '           ,[pdam]                        ' + #10#13 +
    '           ,[pInterval]                   ' + #10#13 +
    '           ,[pnaewon]                     ' + #10#13 +
    '           ,[pgugan]                      ' + #10#13 +
    '           ,[pcolor]                      ' + #10#13 +
    '           ,[alret]                       ' + #10#13 +
    '           ,[plock]                       ' + #10#13 +
    '           ,[sendedReserveSms]            ' + #10#13 +
    '           ,[memodam]                     ' + #10#13 +
    '           ,[moduser]                     ' + #10#13 +
    '           ,[modday]                      ' + #10#13 +
    '           ,[sms]                         ' + #10#13 +
    '           ,[nosms]                       ' + #10#13 +
    '           ,[f_color]                     ' + #10#13 +
    '           ,[f_size]                      ' + #10#13 +
    '           ,[f_bold]                      ' + #10#13 +
    '           ,[doc]                         ' + #10#13 +
    '           ,[nowSmsSend]                  ' + #10#13 +
    '           ,[akind]                       ' + #10#13 +
    '           ,[bkind])                      ' + #10#13 +
    'select                                    ' + #10#13 +
    '[id], [rcdate]                            ' + #10#13 +
    '           ,[rctime]                      ' + #10#13 +
    '           ,[rcregdate]                   ' + #10#13 +
    '           ,''''--[pjundam]               ' + #10#13 +
    '           ,[rcname]                      ' + #10#13 +
    '           ,[rcchart]                     ' + #10#13 +
    '           ,''''--[gubun]                 ' + #10#13 +
    '           ,[rctel]                       ' + #10#13 +
    '           ,[rcremark]                    ' + #10#13 +
    '           ,[rccheck]--[pos]              ' + #10#13 +
    '           ,''''--[cancel]                ' + #10#13 +
    '           ,[rcdamdang] --[pjundam]       ' + #10#13 +
    '           ,''''--[pdam]                  ' + #10#13 +
    '           ,''30''--[pInterval]           ' + #10#13 +
    '           ,''''--[pnaewon]               ' + #10#13 +
    '           ,''''--[pgugan]                ' + #10#13 +
    '           ,''''--[pcolor]                ' + #10#13 +
    '           ,''''--[alret]                 ' + #10#13 +
    '           ,''''--[plock]                 ' + #10#13 +
    '           ,''''--[sendedReserveSms]      ' + #10#13 +
    '           ,''''--[memodam]               ' + #10#13 +
    '           ,''''--[moduser]               ' + #10#13 +
    '           ,[rccheckday]--[modday]          ' + #10#13 +
    '           ,''''--[sms]                   ' + #10#13 +
    '           ,''''--[nosms]                 ' + #10#13 +
    '           ,''''--[f_color]               ' + #10#13 +
    '           ,''''--[f_size]                ' + #10#13 +
    '           ,''''--[f_bold]                ' + #10#13 +
    '           ,''''--[doc]                   ' + #10#13 +
    '           ,''''--[nowSmsSend]            ' + #10#13 +
    '           ,''D''                         ' + #10#13 +
    '           ,''2''                         ' + #10#13 +
    ' FROM deleted                            ';

  sqlText_TEMP_promise_insert =
  // 'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[TEMP_promise_insert]'')) ' + #10#13 +
    'CREATE TRIGGER TEMP_promise_insert                                                                   '
    + #10#13 +
    'ON ma_promise                                                                                        '
    + #10#13 +
    'FOR INSERT                                                                                           '
    + #10#13 +
    'AS                                                                                                   '
    + #10#13 +
    'INSERT INTO promise_temp                                                                             '
    + #10#13 +
    ' ([idn], [pday]                                                                                      '
    + #10#13 +
    '           ,[ptime]                                                                                  '
    + #10#13 +
    '           ,[jubsuday]                                                                               '
    + #10#13 +
    '           ,[team]                                                                                   '
    + #10#13 +
    '           ,[name]                                                                                   '
    + #10#13 +
    '           ,[chart]                                                                                  '
    + #10#13 +
    '           ,[gubun]                                                                                  '
    + #10#13 +
    '           ,[tel]                                                                                    '
    + #10#13 +
    '           ,[remark]                                                                                 '
    + #10#13 +
    '           ,[pos]                                                                                    '
    + #10#13 +
    '           ,[cancel]                                                                                 '
    + #10#13 +
    '           ,[pjundam]                                                                                '
    + #10#13 +
    '           ,[pdam]                                                                                   '
    + #10#13 +
    '           ,[pInterval]                                                                              '
    + #10#13 +
    '           ,[pnaewon]                                                                                '
    + #10#13 +
    '           ,[pgugan]                                                                                 '
    + #10#13 +
    '           ,[pcolor]                                                                                 '
    + #10#13 +
    '           ,[alret]                                                                                  '
    + #10#13 +
    '           ,[plock]                                                                                  '
    + #10#13 +
    '           ,[sendedReserveSms]                                                                       '
    + #10#13 +
    '           ,[memodam]                                                                                '
    + #10#13 +
    '           ,[moduser]                                                                                '
    + #10#13 +
    '           ,[modday]                                                                                 '
    + #10#13 +
    '           ,[sms]                                                                                    '
    + #10#13 +
    '           ,[nosms]                                                                                  '
    + #10#13 +
    '           ,[f_color]                                                                                '
    + #10#13 +
    '           ,[f_size]                                                                                 '
    + #10#13 +
    '           ,[f_bold]                                                                                 '
    + #10#13 +
    '           ,[doc]                                                                                    '
    + #10#13 +
    '           ,[nowSmsSend]                                                                             '
    + #10#13 +
    '           ,[akind]                                                                                 '
    + #10#13 +
    '           ,[bkind])                                                                                 '
    + #10#13 +
    'select                                                                                               '
    + #10#13 +
    '[idn], [pday]                                                                                        '
    + #10#13 +
    '           ,[ptime]                                                                                  '
    + #10#13 +
    '           ,[jubsuday]                                                                               '
    + #10#13 +
    '           ,[team]                                                                                   '
    + #10#13 +
    '           ,[name]                                                                                   '
    + #10#13 +
    '           ,[chart]                                                                                  '
    + #10#13 +
    '           ,[gubun]                                                                                  '
    + #10#13 +
    '           ,[tel]                                                                                    '
    + #10#13 +
    '           ,[remark]                                                                                 '
    + #10#13 +
    '           ,[pos]                                                                                    '
    + #10#13 +
    '           ,[cancel]                                                                                 '
    + #10#13 +
    '           ,[pjundam]                                                                                '
    + #10#13 +
    '           ,[pdam]                                                                                   '
    + #10#13 +
    '           ,[pInterval]                                                                              '
    + #10#13 +
    '           ,[pnaewon]                                                                                '
    + #10#13 +
    '           ,[pgugan]                                                                                 '
    + #10#13 +
    '           ,[pcolor]                                                                                 '
    + #10#13 +
    '           ,[alret]                                                                                  '
    + #10#13 +
    '           ,[plock]                                                                                  '
    + #10#13 +
    '           ,[sendedReserveSms]                                                                       '
    + #10#13 +
    '           ,[memodam]                                                                                '
    + #10#13 +
    '           ,[moduser]                                                                                '
    + #10#13 +
    '           ,[modday]                                                                                 '
    + #10#13 +
    '           ,[sms]                                                                                    '
    + #10#13 +
    '           ,[nosms]                                                                                  '
    + #10#13 +
    '           ,[f_color]                                                                                '
    + #10#13 +
    '           ,[f_size]                                                                                 '
    + #10#13 +
    '           ,[f_bold]                                                                                 '
    + #10#13 +
    '           ,[doc]                                                                                    '
    + #10#13 +
    '           ,[nowSmsSend]                                                                             '
    + #10#13 +
    '           ,''I''                                                                                    '
    + #10#13 +
    '           ,''1''                                                                                  '
    + #10#13 +
    ' FROM inserted                                                                                      ';

  sqlText_TEMP_promise_update =
  // 'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[TEMP_promise_update]'')) ' + #10#13 +
    'CREATE TRIGGER TEMP_promise_update                                                                   '
    + #10#13 +
    'ON ma_promise                                                                                        '
    + #10#13 +
    'FOR UPDATE                                                                                           '
    + #10#13 +
    'AS                                                                                                   '
    + #10#13 +
    'INSERT INTO promise_temp                                                                             '
    + #10#13 +
    ' ([idn], [pday]                                                                                      '
    + #10#13 +
    '           ,[ptime]                                                                                  '
    + #10#13 +
    '           ,[jubsuday]                                                                               '
    + #10#13 +
    '           ,[team]                                                                                   '
    + #10#13 +
    '           ,[name]                                                                                   '
    + #10#13 +
    '           ,[chart]                                                                                  '
    + #10#13 +
    '           ,[gubun]                                                                                  '
    + #10#13 +
    '           ,[tel]                                                                                    '
    + #10#13 +
    '           ,[remark]                                                                                 '
    + #10#13 +
    '           ,[pos]                                                                                    '
    + #10#13 +
    '           ,[cancel]                                                                                 '
    + #10#13 +
    '           ,[pjundam]                                                                                '
    + #10#13 +
    '           ,[pdam]                                                                                   '
    + #10#13 +
    '           ,[pInterval]                                                                              '
    + #10#13 +
    '           ,[pnaewon]                                                                                '
    + #10#13 +
    '           ,[pgugan]                                                                                 '
    + #10#13 +
    '           ,[pcolor]                                                                                 '
    + #10#13 +
    '           ,[alret]                                                                                  '
    + #10#13 +
    '           ,[plock]                                                                                  '
    + #10#13 +
    '           ,[sendedReserveSms]                                                                       '
    + #10#13 +
    '           ,[memodam]                                                                                '
    + #10#13 +
    '           ,[moduser]                                                                                '
    + #10#13 +
    '           ,[modday]                                                                                 '
    + #10#13 +
    '           ,[sms]                                                                                    '
    + #10#13 +
    '           ,[nosms]                                                                                  '
    + #10#13 +
    '           ,[f_color]                                                                                '
    + #10#13 +
    '           ,[f_size]                                                                                 '
    + #10#13 +
    '           ,[f_bold]                                                                                 '
    + #10#13 +
    '           ,[doc]                                                                                    '
    + #10#13 +
    '           ,[nowSmsSend]                                                                             '
    + #10#13 +
    '           ,[akind]                                                                                 '
    + #10#13 +
    '           ,[bkind])                                                                                 '
    + #10#13 +
    'select                                                                                               '
    + #10#13 +
    '[idn], [pday]                                                                                        '
    + #10#13 +
    '           ,[ptime]                                                                                  '
    + #10#13 +
    '           ,[jubsuday]                                                                               '
    + #10#13 +
    '           ,[team]                                                                                   '
    + #10#13 +
    '           ,[name]                                                                                   '
    + #10#13 +
    '           ,[chart]                                                                                  '
    + #10#13 +
    '           ,[gubun]                                                                                  '
    + #10#13 +
    '           ,[tel]                                                                                    '
    + #10#13 +
    '           ,[remark]                                                                                 '
    + #10#13 +
    '           ,[pos]                                                                                    '
    + #10#13 +
    '           ,[cancel]                                                                                 '
    + #10#13 +
    '           ,[pjundam]                                                                                '
    + #10#13 +
    '           ,[pdam]                                                                                   '
    + #10#13 +
    '           ,[pInterval]                                                                              '
    + #10#13 +
    '           ,[pnaewon]                                                                                '
    + #10#13 +
    '           ,[pgugan]                                                                                 '
    + #10#13 +
    '           ,[pcolor]                                                                                 '
    + #10#13 +
    '           ,[alret]                                                                                  '
    + #10#13 +
    '           ,[plock]                                                                                  '
    + #10#13 +
    '           ,[sendedReserveSms]                                                                       '
    + #10#13 +
    '           ,[memodam]                                                                                '
    + #10#13 +
    '           ,[moduser]                                                                                '
    + #10#13 +
    '           ,[modday]                                                                                 '
    + #10#13 +
    '           ,[sms]                                                                                    '
    + #10#13 +
    '           ,[nosms]                                                                                  '
    + #10#13 +
    '           ,[f_color]                                                                                '
    + #10#13 +
    '           ,[f_size]                                                                                 '
    + #10#13 +
    '           ,[f_bold]                                                                                 '
    + #10#13 +
    '           ,[doc]                                                                                    '
    + #10#13 +
    '           ,[nowSmsSend]                                                                             '
    + #10#13 +
    '           ,''U''                                                                                    '
    + #10#13 +
    '           ,''1''                                                                                  '
    + #10#13 +
    ' FROM inserted                                                                                      ';

  sqlText_TEMP_promise_Delete =
  // 'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[TEMP_promise_Delete]'')) ' + #10#13 +
    'CREATE TRIGGER TEMP_promise_Delete                                                                   '
    + #10#13 +
    'ON ma_promise                                                                                        '
    + #10#13 +
    'FOR Delete                                                                                           '
    + #10#13 +
    'AS                                                                                                   '
    + #10#13 +
    'INSERT INTO promise_temp                                                                             '
    + #10#13 +
    ' ([idn], [pday]                                                                                      '
    + #10#13 +
    '           ,[ptime]                                                                                  '
    + #10#13 +
    '           ,[jubsuday]                                                                               '
    + #10#13 +
    '           ,[team]                                                                                   '
    + #10#13 +
    '           ,[name]                                                                                   '
    + #10#13 +
    '           ,[chart]                                                                                  '
    + #10#13 +
    '           ,[gubun]                                                                                  '
    + #10#13 +
    '           ,[tel]                                                                                    '
    + #10#13 +
    '           ,[remark]                                                                                 '
    + #10#13 +
    '           ,[pos]                                                                                    '
    + #10#13 +
    '           ,[cancel]                                                                                 '
    + #10#13 +
    '           ,[pjundam]                                                                                '
    + #10#13 +
    '           ,[pdam]                                                                                   '
    + #10#13 +
    '           ,[pInterval]                                                                              '
    + #10#13 +
    '           ,[pnaewon]                                                                                '
    + #10#13 +
    '           ,[pgugan]                                                                                 '
    + #10#13 +
    '           ,[pcolor]                                                                                 '
    + #10#13 +
    '           ,[alret]                                                                                  '
    + #10#13 +
    '           ,[plock]                                                                                  '
    + #10#13 +
    '           ,[sendedReserveSms]                                                                       '
    + #10#13 +
    '           ,[memodam]                                                                                '
    + #10#13 +
    '           ,[moduser]                                                                                '
    + #10#13 +
    '           ,[modday]                                                                                 '
    + #10#13 +
    '           ,[sms]                                                                                    '
    + #10#13 +
    '           ,[nosms]                                                                                  '
    + #10#13 +
    '           ,[f_color]                                                                                '
    + #10#13 +
    '           ,[f_size]                                                                                 '
    + #10#13 +
    '           ,[f_bold]                                                                                 '
    + #10#13 +
    '           ,[doc]                                                                                    '
    + #10#13 +
    '           ,[nowSmsSend]                                                                             '
    + #10#13 +
    '           ,[akind]                                                                                  '
    + #10#13 +
    '           ,[bkind])                                                                                 '
    + #10#13 +
    'select                                                                                               '
    + #10#13 +
    '[idn], [pday]                                                                                        '
    + #10#13 +
    '           ,[ptime]                                                                                  '
    + #10#13 +
    '           ,[jubsuday]                                                                               '
    + #10#13 +
    '           ,[team]                                                                                   '
    + #10#13 +
    '           ,[name]                                                                                   '
    + #10#13 +
    '           ,[chart]                                                                                  '
    + #10#13 +
    '           ,[gubun]                                                                                  '
    + #10#13 +
    '           ,[tel]                                                                                    '
    + #10#13 +
    '           ,[remark]                                                                                 '
    + #10#13 +
    '           ,[pos]                                                                                    '
    + #10#13 +
    '           ,[cancel]                                                                                 '
    + #10#13 +
    '           ,[pjundam]                                                                                '
    + #10#13 +
    '           ,[pdam]                                                                                   '
    + #10#13 +
    '           ,[pInterval]                                                                              '
    + #10#13 +
    '           ,[pnaewon]                                                                                '
    + #10#13 +
    '           ,[pgugan]                                                                                 '
    + #10#13 +
    '           ,[pcolor]                                                                                 '
    + #10#13 +
    '           ,[alret]                                                                                  '
    + #10#13 +
    '           ,[plock]                                                                                  '
    + #10#13 +
    '           ,[sendedReserveSms]                                                                       '
    + #10#13 +
    '           ,[memodam]                                                                                '
    + #10#13 +
    '           ,[moduser]                                                                                '
    + #10#13 +
    '           ,[modday]                                                                                 '
    + #10#13 +
    '           ,[sms]                                                                                    '
    + #10#13 +
    '           ,[nosms]                                                                                  '
    + #10#13 +
    '           ,[f_color]                                                                                '
    + #10#13 +
    '           ,[f_size]                                                                                 '
    + #10#13 +
    '           ,[f_bold]                                                                                 '
    + #10#13 +
    '           ,[doc]                                                                                    '
    + #10#13 +
    '           ,[nowSmsSend]                                                                             '
    + #10#13 +
    '           ,''D''                                                                                    '
    + #10#13 +
    '           ,''1''                                                                                  '
    + #10#13 +
    ' FROM deleted                                                                                      ';

begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text :=
      'select * from sysobjects where name = ''TEMP_promise_insert'' ';
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.text := sqlText_TEMP_promise_insert;
      execsql;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text :=
      'select * from sysobjects where name = ''TEMP_promise_update'' ';
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.text := sqlText_TEMP_promise_update;
      execsql;
    end;

  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text :=
      'select * from sysobjects where name = ''TEMP_promise_delete'' ';
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.text := sqlText_TEMP_promise_Delete;
      execsql;
    end;

  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sysobjects where name = ''TEMP_Recall_insert'' ';
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.text := sqlText_TEMP_recall_insert;
      execsql;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sysobjects where name = ''TEMP_Recall_Update'' ';
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.text := sqlText_TEMP_recall_UPDATE;
      execsql;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sysobjects where name = ''TEMP_Recall_Delete'' ';
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.text := sqlText_TEMP_recall_DELETE;
      execsql;
    end;
  end;

end;

procedure CreateTable;
const

  sqlText_ma_chunggu =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chunggu]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_chunggu](                                  ' +
    #10#13 + '	[id] [int] IDENTITY(1,1) NOT NULL,                               '
    + #10#13 +
    '	[kind] [char](1) COLLATE Korean_Wansung_CI_AS NULL,              ' +
    #10#13 + '	[chungYear] [char](4) COLLATE Korean_Wansung_CI_AS NULL,         '
    + #10#13 +
    '	[chungMonth] [char](2) COLLATE Korean_Wansung_CI_AS NULL,        ' +
    #10#13 + '	[chungNo] [char](4) COLLATE Korean_Wansung_CI_AS NULL,           '
    + #10#13 +
    '	[neyuk] [image] NULL                                             ' +
    #10#13 + ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]                             ';

  sqlText_imageinfo_tag =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[imageinfo_tag]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[imageinfo_tag](                              ' + #10#13
    + '	[id] [bigint] IDENTITY(1,1) NOT NULL,                           ' +
    #10#13 + '	[filename] [nvarchar](255) NULL,                                '
    + #10#13 +
    '	[TagCap] [nvarchar](255) NULL                                   ' + #10#13
    + ') ON [PRIMARY]                                                   ';

  sqlText_promise_temp =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[promise_temp]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[promise_temp](                                                                    '
    + #10#13 +
    '	[id] [bigint] IDENTITY(1,1) NOT NULL,                                                                '
    + #10#13 +
    '	[idn] [bigint] NOT NULL,                                                                             '
    + #10#13 +
    '	[pday] [datetime] NULL,                                                                              '
    + #10#13 +
    '	[ptime] [char](5)  NULL,                                                                             '
    + #10#13 +
    '	[jubsuday] [datetime] NULL,                                                                          '
    + #10#13 +
    '	[team] [char](10)  NULL,                                                                             '
    + #10#13 +
    '	[name] [char](20)  NULL,                                                                             '
    + #10#13 +
    '	[chart] [varchar](20)  NULL,                                                                         '
    + #10#13 +
    '	[gubun] [char](10)  NULL,                                                                            '
    + #10#13 +
    '	[tel] [varchar](15)  NULL,                                                                           '
    + #10#13 +
    '	[remark] [varchar](300)  NULL,                                                                       '
    + #10#13 +
    '	[pos] [char](2)  NULL,                                                                               '
    + #10#13 +
    '	[cancel] [char](1)  NULL,                                                                            '
    + #10#13 +
    '	[pmemo] [text]  NULL,                                                                                '
    + #10#13 +
    '	[pjundam] [varchar](10)  NULL,                                                                       '
    + #10#13 +
    '	[pdam] [varchar](10)  NULL,                                                                          '
    + #10#13 +
    '	[pInterval] [char](5)  NULL,                                                                         '
    + #10#13 +
    '	[pnaewon] [int] NULL,                                                                                '
    + #10#13 +
    '	[pgugan] [char](20)  NULL,                                                                           '
    + #10#13 +
    '	[pcolor] [char](20)  NULL,                                                                           '
    + #10#13 +
    '	[alret] [smallint] NULL,                                                                             '
    + #10#13 +
    '	[plock] [char](1)  NULL,                                                                             '
    + #10#13 +
    ' 	[sendedReserveSms] [char](1)  NULL,                                                                '
    + #10#13 +
    ' 	[memodam] [varchar](10)  NULL,                                                                     '
    + #10#13 +
    '	[moduser] [char](20)  NULL,                                                                          '
    + #10#13 +
    ' 	[modday] [datetime] NULL,                                                                          '
    + #10#13 +
    ' 	[sms] [char](1)  NULL,                                                                             '
    + #10#13 +
    ' 	[nosms] [char](1)  NULL,                                                                           '
    + #10#13 +
    ' 	[f_color] [char](30)  NULL,                                                                        '
    + #10#13 +
    ' 	[f_size] [int] NULL,                                                                               '
    + #10#13 +
    ' 	[f_bold] [char](1)  NULL,                                                                          '
    + #10#13 +
    ' 	[doc] [varchar](10)  NULL,                                                                         '
    + #10#13 +
    ' 	[nowSmsSend] [char](1)  NULL,                                                                      '
    + #10#13 +
    '        [akind] [char](1)  NULL,                                                                       '
    + #10#13 +
    '        [bkind] [char](1)  NULL                                                                       '
    + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]                                                               ';

  sqlText_HxDent_m = // 원장 비밀 메모사항
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxDent_m]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    '  CREATE TABLE [dbo].[HxDent_m](                                 ' + #10#13
    + '  [DChart] [char](30) COLLATE Korean_Wansung_CI_AS NULL,         ' +
    #10#13 + '  [DDate] [datetime] NULL,                                       '
    + #10#13 +
    '  [DMemo] [text] COLLATE Korean_Wansung_CI_AS NULL,              ' + #10#13
    + '  [DTeam] [char](2) COLLATE Korean_Wansung_CI_AS NULL,           ' +
    #10#13 + '  [portion] [varchar](500) COLLATE Korean_Wansung_CI_AS NULL,    '
    + #10#13 +
    '  [isImage] [char](1) COLLATE Korean_Wansung_CI_AS NULL,         ' + #10#13
    + '  [seq] [int] IDENTITY(1,1) NOT NULL,                            ' +
    #10#13 + '  [ModDay] [datetime] NULL,                                      '
    + #10#13 +
    '  [richtext] [image] NULL                                        ' + #10#13
    + ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]                            ';

  sqlText_ma_docu_set = // 동의서 Docu Set
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_docu_set]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_docu_set](                                ' + #10#13
    + '	[ID] [int] IDENTITY(1,1) NOT NULL,                               ' +
    #10#13 + '	[docuID] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,           '
    + #10#13 +
    '	[objID] [int] NULL,                                                ' +
    #10#13 + '	[locLeft] [int] NULL,                                               '
    + #10#13 +
    '	[locTop] [int] NULL,                                                ' +
    #10#13 + '	[fontSize] [int] NULL,                                              '
    + #10#13 +
    '	[fontName] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,           ' +
    #10#13 + '	[fontColor] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL           '
    + #10#13 +
    ') ON [PRIMARY]                                                        ';

  sqlText_ma_sunap_bunnap = // 분납리스트
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_bunnap]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sunap_bunnap](                          '
    + #10#13 + '	[chart] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 + '	[nCnt] [int] NULL,                                           '
    + #10#13 + '	[regDay] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL       '
    + #10#13 + ') ON [PRIMARY]                                                ';

  sqlText_ma_sunap_final = // 완납리스트
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_final]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sunap_final](                          '
    + #10#13 + '	[chart] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,     ' +
    #10#13 + '	[regUser] [nchar](30) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 + '	[inUse] [nchar](1) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 + '	[regday] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,    ' +
    #10#13 + ' [id] int IDENTITY(1,1) NOT NULL                            ' +
    #10#13 + ') ON [PRIMARY]                                              ';

  sqlText_ma_chart_elastic = // elastic Teeth info
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_elastic]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + ' CREATE TABLE [dbo].[ma_chart_elastic](                       '
    + #10#13 + '	[chart] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,      '
    + #10#13 + '	[jin_day] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,    '
    + #10#13 + '	[portion] [image] null  ,   ' + #10#13 +
    '	[chartseq] [bigint] NULL                                    ' + #10#13 +
    ') ON [PRIMARY]  TEXTIMAGE_ON [PRIMARY]                                              ';

  sqlText_ma_chart_OrthoFirst = // 교정초진차트
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_OrthoFirst]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_chart_OrthoFirst](                           ' +
    #10#13 + '	[id] [bigint] IDENTITY(1,1) NOT NULL,                              '
    + #10#13 +
    '	[chart] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,             ' +
    #10#13 + '	[regday] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,            '
    + #10#13 +
    '	[ALD] [int] NULL,                                                  ' +
    #10#13 + '	[ALD2] [int] NULL,                                                 '
    + #10#13 +
    '	[Overjet] [int] NULL,                                              ' +
    #10#13 + '	[Overbite] [int] NULL,                                             '
    + #10#13 +
    '	[AngleRt] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,           ' +
    #10#13 + '	[AngleLt] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,           '
    + #10#13 +
    '	[AngleDiv] [int] NULL,                                             ' +
    #10#13 + '	[CaninrKeyRt] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 +
    '	[CaninrKeyLt] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,       ' +
    #10#13 + '	[Skeletal1] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,         '
    + #10#13 +
    '	[Skeletal2] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,         ' +
    #10#13 + '	[Skeletal3] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,         '
    + #10#13 +
    '	[FunctionalTMD] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,    ' +
    #10#13 + '	[PlanDiff] [nchar](1) COLLATE Korean_Wansung_CI_AS NULL,           '
    + #10#13 +
    '	[AnchorDiff] [nchar](1) COLLATE Korean_Wansung_CI_AS NULL,         ' +
    #10#13 + '	[PlanUpperRt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,      '
    + #10#13 +
    '	[PlanUpperLt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,      ' +
    #10#13 + '	[PlanLowerRt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,      '
    + #10#13 +
    '	[PlanLowerLt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,      ' +
    #10#13 + '	[AnchorUpperRt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,    '
    + #10#13 +
    '	[AnchorUpperLt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,    ' +
    #10#13 + '	[AnchorLowerRt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL,    '
    + #10#13 +
    '	[AnchorLowerLt] [nchar](100) COLLATE Korean_Wansung_CI_AS NULL     ' +
    #10#13 + ') ON [PRIMARY]                                                      ';

  sqlText_ma_chart_Mno = // 모델번호
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_Mno]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_Mno](                          ' +
    #10#13 + '	[chart] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,     ' +
    #10#13 + '	[Mno] [nchar](50) COLLATE Korean_Wansung_CI_AS NULL,       ' +
    #10#13 + '	[regday] [nchar](10) COLLATE Korean_Wansung_CI_AS NULL,    ' +
    #10#13 + ' [id] int IDENTITY(1,1) NOT NULL                            ' +
    #10#13 + ') ON [PRIMARY]                                              ';

  sqlText_ma_gogek_43 =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_gogek_43]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + ' CREATE TABLE [dbo].[ma_gogek_43](       ' + #10#13 +
    ' 	[chart] [varchar](50) NULL,           ' + #10#13 +
    ' 	[jungno] [varchar](30) NULL,          ' + #10#13 +
    ' 	[reg_day] [varchar](10) NULL           ' + #10#13 +
    ' ) ON [PRIMARY]                         ';

  sqlText_ma_chart_remark =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_remark]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    ' CREATE TABLE [dbo].[ma_chart_remark](                                                                              '
    + #10#13 +
    ' 	[chart] [char](30) NULL,                                                                                         '
    + #10#13 +
    ' 	[remark] [varchar](500) NULL,                                                                                    '
    + #10#13 +
    ' 	[chartseq] [bigint] NULL                                                                                         '
    + #10#13 +
    ' ) ON [PRIMARY]                                                                                                     ';

  sqlText_ma_sunap_misu_init =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_misu_init]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_sunap_misu_init](                                                                                            '
    + #10#13 +
    '	[chart] [char](50) NULL,                                                                                                           '
    + #10#13 +
    '	[regDate] [char](10) NULL                                                                                                          '
    + #10#13 +
    ') ON [PRIMARY]                                                                                                                      ';

  sqlText_ma_sunap_napBu =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_napBu]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_sunap_napBu](                                                                                            '
    + #10#13 +
    '	[chart] [char](50) NULL,                                                                                                           '
    + #10#13 +
    '	[GeumEk] [int] DEFAULT ((0)),                                                                                                          '
    + #10#13 +
    ') ON [PRIMARY]                                                                                                                      ';

  sqlText_ma_gogek_group_index =
    'if not exists (SELECT * FROM sys.indexes WHERE name=''idx_chart_gubun'' AND object_id = OBJECT_ID(''ma_gogek_group'') )'
    + #10#13 +
    'CREATE NONCLUSTERED INDEX [idx_chart_gubun] ON [dbo].[ma_gogek_group]' +
    #10#13 + '(                                                                   '
    + #10#13 +
    '	[chart] ASC,                                                      ' +
    #10#13 + ' [gubun] ASC                                                        '
    + #10#13 +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ';

  sqlText_ma_chart_cert =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_cert]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_cert](                ' + #10#13 +
    '	[id] [bigint] IDENTITY(1,1) NOT NULL,             ' + #10#13 +
    '	[SignCert] [text] NULL,                           ' + #10#13 +
    '	[chartComment] [text] NULL,                       ' + #10#13 +
    '	[ElectsignedData] [text] NULL,                    ' + #10#13 +
    '	[PKCS7SignedData] [text] NULL,                    ' + #10#13 +
    '	[TimeStamp] [text] NULL,                          ' + #10#13 +
    '	[ChartSseq] [bigint] NULL                         ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]              ';

  sqlText_ma_chart_hw =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_hw]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_hw](       ' + #10#13 +
    '	[chart] [char](50) NULL,                ' + #10#13 +
    '	[jin_day] [char](10) NULL,             ' + #10#13 +
    '	[tall] [float] NULL,                   ' + #10#13 +
    '	[gram] [float] NULL                     ' + #10#13 +
    ') ON [PRIMARY]                          ';

  sqlText_ma_chart_stop =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_stop]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_stop](     ' + #10#13 +
    '	[chart] [char](50) NULL,             ' + #10#13 +
    '	[jin_day] [char](10) NULL,          ' + #10#13 +
    '	[gubun] [char](1) NULL,           ' + #10#13 +
    '	[remark] [varchar](250) NULL       ' + #10#13 +
    ') ON [PRIMARY]                       ';

  sqlText_Gigong_image =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[Gigong_image]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[Gigong_image](     ' + #10#13 +
    '	[gno] [char](20) NULL,             ' + #10#13 +
    '	[filename] [char](50) NULL,          ' + #10#13 +
    '	[folder] [char](50) NULL,           ' + #10#13 +
    '	[nord] [int] NULL,                  ' + #10#13 +
    '	[regday] [char](10) NULL,           ' + #10#13 +
    '	[reguser] [char](20) NULL,          ' + #10#13 +
    '	[inuse] [char](1) NULL,             ' + #10#13 +
    '	[ID] [int] IDENTITY(1,1) NOT NULL, ' + #10#13 +
    '	[folder2] [varchar](250) NULL,     ' + #10#13 +
    '	[kind] [varchar](1) NULL,          ' + #10#13 +
    '	[remark] [varchar](250) NULL       ' + #10#13 +
    ') ON [PRIMARY]                       ';


  // 보험사목록 저장 테이블

  sqlText_ma_carinsu_co =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_carinsu_co]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_carinsu_co](       ' + #10#13 +
    '	[code] [char](2) NULL,             ' + #10#13 +
    '	[insu_name] [varchar](35) NULL     ' + #10#13 +
    ') ON [PRIMARY]                            ';

  // 자동차보험 접수번호 등  저장 테이블
  sqltext_ma_car_info =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_car_info]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_car_info](        ' + #10#13 +
    '	[id] [int] NOT NULL,              ' + #10#13 +
    '	[chart] [char](30) NOT NULL,      ' + #10#13 +
    '	[jin_day] [char](10) NULL,        ' + #10#13 +
    '	[insu_code] [char](2) NULL,       ' + #10#13 +
    '	[insu_jubsu] [varchar](50) NULL,  ' + #10#13 +
    '	[insu_jigub] [varchar](50) NULL,  ' + #10#13 +
    '	[insu_chunggu] [char](1) NULL,    ' + #10#13 +
    '	[insu_chunggu_day] [char](10) NULL' + #10#13 +
    ') ON [PRIMARY]                           ';

  sqlText_GigongMemo =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[GigongMemo]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[GigongMemo](     ' + #10#13 +
    '	[GmDate] [char](10) NULL,           ' + #10#13 +
    '	[GmRemark] [varchar](500) NULL           ' + #10#13 +
    ') ON [PRIMARY]                         ';

  sqlText_GigongItem =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[GigongItem]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[GigongItem](       ' + #10#13 +
    '	[GitemCode] [char](3) NULL,           ' + #10#13 +
    '	[GbunCode] [char](2) NULL,            ' + #10#13 +
    '	[GItemName] [char](30) NULL,          ' + #10#13 +
    '	[GSuga] [float] NULL,                 ' + #10#13 +
    '	[GGongga] [float] NULL,               ' + #10#13 +
    '	[GWonga] [float] NULL,                ' + #10#13 +
    '	[GRemark] [char](50) NULL             ' + #10#13 +
    ') ON [PRIMARY]                        ';

  sqlText_GigongBunryu =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[GigongBunryu]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[GigongBunryu](     ' + #10#13 +
    '	[GBBunCode] [char](2) NULL,           ' + #10#13 +
    '	[GBBunName] [char](20) NULL           ' + #10#13 +
    ') ON [PRIMARY]                         ';

  sqlText_gigong =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[Gigong]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[Gigong](         ' + #10#13 +
    '	[GNo] [char](11) NULL,              ' + #10#13 +
    '	[GDate] [datetime] NULL,            ' + #10#13 +
    '	[GName] [varchar](10) NULL,         ' + #10#13 +
    '	[GTeam] [varchar](2) NULL,          ' + #10#13 +
    '	[GSect] [varchar](50) NULL,         ' + #10#13 +
    '	[GMaterial] [varchar](50) NULL,     ' + #10#13 +
    '	[GGold] [real] NULL,                ' + #10#13 +
    '	[GGoldKind] [char](20) NULL,               ' + #10#13 +
    '	[GMakeDay] [datetime] NULL,         ' + #10#13 +
    '	[P1] [char](200) NULL,         ' + #10#13 + // --
    '	[P2] [char](200) NULL,         ' + #10#13 + // --
    '	[P3] [char](200) NULL,         ' + #10#13 + // --
    '	[P4] [char](200) NULL,         ' + #10#13 + // --
    '	[GDentCode] [char](30) NULL,         ' + #10#13 + // --
    '	[GDentName] [char](30) NULL,         ' + #10#13 + // --
    '	[GMakeTime] [char](2) NULL,         ' + #10#13 + // --
    '	[GMakeMin] [char](2) NULL,         ' + #10#13 + // --
    '	[SMakeTime] [char](2) NULL,         ' + #10#13 + // --
    '	[SMakeMin] [char](2) NULL,         ' + #10#13 + // --
    '	[GOut] [varchar](50) NULL,          ' + #10#13 +
    '	[GMove] [varchar](10) NULL,         ' + #10#13 +
    '	[GSet] [char](1) NULL,              ' + #10#13 +
    '	[GGetDay] [datetime] NULL,          ' + #10#13 +
    '	[GAdd] [varchar](100) NULL,         ' + #10#13 +
    '	[GMemo] [varchar](400) NULL,        ' + #10#13 +
    '	[GMake] [char](1) NULL,               ' + #10#13 +
    '	[fil] [char](1) NULL,               ' + #10#13 +
    '	[GModelKind] [char](20) NULL,        ' + #10#13 +
    '	[GHwanName] [char](30) NULL,        ' + #10#13 +
    '	[GChart] [char](30) NULL            ' + #10#13 +
    ') ON [PRIMARY]                      ';

  sqlText_ma_sms_picture =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sms_picture]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sms_picture](    ' + #10#13 +
    '	[ID] [int] IDENTITY(1,1) NOT NULL,     ' + #10#13 +
    '	[kind] [char](1) NULL,                 ' + #10#13 +
    '	[ext] [char](4) NULL,                  ' + #10#13 +
    '	[memContent] [text] NULL,                  ' + #10#13 +
    '	[pic] [image] NULL,                    ' + #10#13 +
    '	[regdate] [char](10) NULL              ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]   ';

  sqlText_implant_info =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[implant_info]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[implant_info](           ' + #10#13 +
    '	[chart] [char](30) NOT NULL,                ' + #10#13 +
    '	[p1] [char](8) NOT NULL,                    ' + #10#13 +
    '	[p2] [char](8) NOT NULL,                    ' + #10#13 +
    '	[p3] [char](8) NOT NULL,                    ' + #10#13 +
    '	[p4] [char](8) NOT NULL,                    ' + #10#13 +
    '	[regDate] [char](10) null                   ' + #10#13 +
    ') ON [PRIMARY]                               ';

  SqlText_ma_sms_manager =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sms_manager]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sms_manager](      ' + #10#13 +
    '	[id] [bigint] IDENTITY(1,1) NOT NULL,    ' + #10#13 +
    '	[chart] [char](30) NULL,                  ' + #10#13 +
    '	[name] [char](30) NULL,                   ' + #10#13 +
    '	[regDay] [char](10) NULL,                 ' + #10#13 +
    '	[kind] [char](10) NULL,                   ' + #10#13 +
    '	[context] [char](250) NULL,               ' + #10#13 +
    '	[sendDay] [char](10) NULL,                ' + #10#13 +
    '	[stopDay] [char](10) NULL,                ' + #10#13 +
    '	[term1] [int] NULL,                       ' + #10#13 +
    '	[cnt1] [int] NULL,                        ' + #10#13 +
    '	[term2] [int] NULL,                       ' + #10#13 +
    '	[cnt2] [int] NULL,                        ' + #10#13 +
    '	[term3] [int] NULL,                       ' + #10#13 +
    '	[cnt3] [int] NULL,                         ' + #10#13 +
    '	[totCnt] [int] NULL,                      ' + #10#13 +
    '	[tel] [char](20) NULL,                   ' + #10#13 +
    '	[noSms] [char](1) NULL,                   ' + #10#13 +
    '	[chkPromise] [char](1) NULL,              ' + #10#13 +
    '	[remark] [char](250) NULL                ' + #10#13 +
    ') ON [PRIMARY]                           ';

  SqlText_dtx_sunap =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[dtx_sunap]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[dtx_sunap](    ' + #10#13 +
    '     	[id] [bigint] NULL,                         ' + #10#13 +
    '	[jin_day] [char](10) NULL,                      ' + #10#13 +
    '	[kumak] [int]  DEFAULT ((0)) NULL            ' + #10#13 +
    ') ON [PRIMARY]                                ';

  SqlText_ma_chart_hangmok_data =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_hangmok_data]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_hangmok_data](                   '
    + #10#13 + '	[chart] [char](30) COLLATE Korean_Wansung_CI_AS NULL,        '
    + #10#13 + '	[gubun] [char](100) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 + '	[regDay] [char](10) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 + '	[ID] [int] IDENTITY(1,1) NOT NULL                            '
    + #10#13 + ') ON [PRIMARY]                                                ';

  SqlText_ma_chart_hangmok =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_hangmok]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_chart_hangmok](                           ' + #10#13
    + '	[hangmokcode] [char](10) COLLATE Korean_Wansung_CI_AS NULL,      ' +
    #10#13 + '	[hangmokName] [char](10) COLLATE Korean_Wansung_CI_AS NULL,      '
    + #10#13 +
    '	[regDate] [char](10) COLLATE Korean_Wansung_CI_AS NULL,          ' +
    #10#13 + '	[hangcheck] [char](1) COLLATE Korean_Wansung_CI_AS NULL,         '
    + #10#13 +
    '	[hanglist] [int] NULL                                           ' + #10#13
    + ') ON [PRIMARY]                                                   ';

  SqlText_ma_chart_rec =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_rec]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[ma_chart_rec](                               ' + #10#13
    + '	[chart] [char](20) COLLATE Korean_Wansung_CI_AS NULL,           ' +
    #10#13 + '	[filename] [char](250) COLLATE Korean_Wansung_CI_AS NULL,       '
    + #10#13 +
    '	[folder] [char](50) COLLATE Korean_Wansung_CI_AS NULL,          ' + #10#13
    + '	[nord] [int] NULL,                                              ' +
    #10#13 + '	[regday] [char](10) COLLATE Korean_Wansung_CI_AS NULL,          '
    + #10#13 +
    '	[reguser] [char](20) COLLATE Korean_Wansung_CI_AS NULL,         ' + #10#13
    + '	[inuse] [char](1) COLLATE Korean_Wansung_CI_AS NULL,            ' +
    #10#13 + '	[folder2] [varchar](250) COLLATE Korean_Wansung_CI_AS NULL,     '
    + #10#13 +
    '	[ID] [int] IDENTITY(1,1) NOT NULL,                              ' + #10#13
    + '	[kind] [varchar](1) COLLATE Korean_Wansung_CI_AS NULL           ' +
    #10#13 + ') ON [PRIMARY]                                                   ';

  SqlText_ma_basic_chair =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_basic_chair]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_basic_Chair](      ' + #10#13 +
    '	[ChairNo] [char](3) NOT NULL,            ' + #10#13 +
    '	[ChairName] [char](10) NULL,             ' + #10#13 +
    '	[ChairRemark] [char](100) NULL,          ' + #10#13 +
    '	[ykind] [char](1) NULL                   ' + #10#13 +
    ') ON [PRIMARY]                            ';

  SqlText_ma_docu_agree =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_docu_agree]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_docu_agree](      ' + #10#13 +
    '	[id] [int] IDENTITY(1,1) NOT NULL,       ' + #10#13 +
    '	[chart] [char](30) NULL,                  ' + #10#13 +
    '	[name1] [char](30) NULL,                  ' + #10#13 +
    '	[name2] [char](30) NULL,                  ' + #10#13 +
    '	[name3] [char](30) NULL,                  ' + #10#13 +
    '	[sign1] [image] NULL,                  ' + #10#13 +
    '	[sign2] [image] NULL,                  ' + #10#13 +
    '	[regday] [char](10) NULL,                  ' + #10#13 +
    '	[modday] [char](10) NULL,                  ' + #10#13 +
    '	[remark] [text] NULL                      ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]    ';

  SqlText_ma_promise_sulBunryu =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_promise_sulBunryu]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_promise_sulBunryu](   ' + #10#13 +
    '	[id] [int] NULL,                            ' + #10#13 +
    '	[buncode] [int] NULL,                        ' + #10#13 +
    '	[bunname] [char](30) NULL                    ' + #10#13 +
    ') ON [PRIMARY]                               ';

  SqlText_snj2 =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[snj2]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    'CREATE TABLE [dbo].[snj2](                                                '
    + #10#13 +
    '	[sday] [char](10) NULL,                                                  '
    + #10#13 +
    '	[hyunReceipt] [int] NULL CONSTRAINT [DF_snj2_hyunyoung]  DEFAULT ((0)),  '
    + #10#13 +
    '	[card] [int] NULL,                                                      '
    + #10#13 +
    '	[hyun] [int] NULL CONSTRAINT [DF_snj2_hyun]  DEFAULT ((0)),             '
    + #10#13 +
    '	[tong] [int] NULL CONSTRAINT [DF_snj2_tong]  DEFAULT ((0))             ' +
    #10#13 + ') ON [PRIMARY]                                                          ';

  SqlText_sutak =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[sutak]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[sutak](                   ' + #10#13 +
    '	[chart] [char](13) NOT NULL,                  ' + #10#13 +
    '	[jin_day] [smalldatetime] NOT NULL,           ' + #10#13 +
    '	[sutak_kiho] [char](8) NULL,                   ' + #10#13 +
    '	[sutak_kind] [char](1) NULL,                   ' + #10#13 +
    '	[sutak_key] [bigint] IDENTITY(1,1) NOT NULL    ' + #10#13 +
    ') ON [PRIMARY]                                  ';

  SqlText_Refer_view_Existcheck =
    'SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N''[dbo].[refer_view]'') ';

  SqlText_phrase =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[phrase]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[Phrase](          ' + #10#13 +
    '[PhraseCode] [char](8) NULL,                  ' + #10#13 +
    '[PhraseName] [char](30) NULL,                 ' + #10#13 +
    '[Capital] [char](20) NULL,                    ' + #10#13 +
    '[SortKey] [int] NULL,                         ' + #10#13 +
    '[kind] [tinyint] NULL,                        ' + #10#13 +
    '[seqcode] [bigint] IDENTITY(1,1) NOT NULL,    ' + #10#13 +
    '[wizard] [char](10) NULL                      ' + #10#13 +
    ') ON [PRIMARY]';

  SqlText_Refer_view =
    'CREATE VIEW [dbo].[refer_view]                                                                    '
    + #10#13 +
    'AS                                                                                                     '
    + #10#13 +
    'SELECT     chart, name, refer_chart, refer_name, fam_id                                                '
    + #10#13 +
    'FROM         ma_gogek_basic a                                                                          '
    + #10#13 +
    'UNION ALL                                                                                              '
    + #10#13 +
    'SELECT     ''R'' + CONVERT(char(30), referer_id, 121) AS chart, name, '''' AS refer_chart, '''' AS refer_name, ''0'' AS fam_id'
    + #10#13 +
    'FROM         ma_gogek_referer a JOIN                                                                                    '
    + #10#13 +
    'ma_gogek_refer b ON a.id = b.referer_id                                                           ';

  sqltext_ma_config_etc =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_config_etc]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_config_etc](  ' + #10#13 +
    '	[id] [int] IDENTITY(1,1) NOT NULL,   ' + #10#13 +
    '	[kind] [char](10) NULL,               ' + #10#13 +
    '	[contents] [image] NULL               ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]  ';

  sqltext_docSignHistory_text =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[docSignHistory_text]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[docSignHistory_text](         ' + #10#13 +
    ' [CHART] [varchar](20) NOT NULL,                   ' + #10#13 +
    ' [SAVE_DATE] [char](17) NOT NULL,                  ' + #10#13 +
    ' [SEQ] [int] NOT NULL,                             ' + #10#13 +
    ' [CONTENTS] [text] NOT NULL,                       ' + #10#13 +
    ' [TEXT_LEFT] [float] NOT NULL,                     ' + #10#13 +
    ' [TEXT_TOP] [float] NOT NULL,                      ' + #10#13 +
    ' [TEXT_RIGHT] [float] NOT NULL,                    ' + #10#13 +
    ' [TEXT_BOTTOM] [float] NOT NULL,                   ' + #10#13 +
    ' [TEXT_PROPERTY] [varchar](1000) NULL,             ' + #10#13 +
    ' CONSTRAINT [PK_TB_PAPER_CHART_CUSTOM_TEXT] PRIMARY KEY CLUSTERED   ' +
    #10#13 + '(                                                                   '
    + #10#13 +
    ' [CHART] ASC,                                                       ' +
    #10#13 + ' [SAVE_DATE] ASC,                                                   '
    + #10#13 +
    ' [SEQ] ASC                                                          ' +
    #10#13 + ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]  '
    + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]                              ';

  sqltext_docu =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_docu]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_docu](               ' + #10#13 +
    '	[id] [bigint] IDENTITY(1,1) NOT NULL,      ' + #10#13 +
    '	[chart] [char](20) NULL,                   ' + #10#13 +
    '	[filename] [varchar](255) NULL,            ' + #10#13 +
    '	[filekind] [char](50) NULL,                ' + #10#13 +
    '	[filesect] [char](50) NULL,                ' + #10#13 +
    '	[remark] [char](60) NULL,                  ' + #10#13 +
    '	[tag] [char](100) NULL,                    ' + #10#13 +
    '	[regdate] [char](10) NULL,                 ' + #10#13 +
    '	[moddate] [char](10) NULL,                 ' + #10#13 +
    '	[foldername] [char](50) NULL               ' + #10#13 +
    ') ON [PRIMARY]                              ';

  sqltext_DxHx =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DxHx]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[DxHx](' + #10#13 +
    '	[chart] [char](13) NULL,' + #10#13 + '	[sDate] [char](10) NULL,' + #10#13
    + '	[fDate] [char](10) NULL,' + #10#13 + '	[TxNo] [char](10) NULL, ' +
    #10#13 + '	[TxOk] [char](1) NULL   ' + #10#13 +
    ') ON [PRIMARY]            ';

  sqltext_tblPanmeitem =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[tblPanmeitem]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[tblPanmeitem](       ' + #10#13 +
    '	[idn] [bigint] IDENTITY(1,1) NOT NULL,  ' + #10#13 +
    '	[sDate] [char](10) NULL,                ' + #10#13 +
    '	[sTime] [char](8) NULL,                 ' + #10#13 +
    '	[gogekid] [char](20) NULL,              ' + #10#13 +
    '	[gogekName] [char](10) NULL,            ' + #10#13 +
    '	[PumCode] [char](30) NULL,              ' + #10#13 +
    '	[PumName] [char](50) NULL,              ' + #10#13 +
    '	[Qty] [int] NULL,                       ' + #10#13 +
    '	[Price] [int] NULL,                     ' + #10#13 +
    '	[DcPrice] [int] NULL,                   ' + #10#13 +
    '	[salePercent] [int] NULL,               ' + #10#13 +
    '	[salePrice] [int] NULL,                 ' + #10#13 +
    '	[TotalPrice] [int] NULL,                ' + #10#13 +
    '	[gubun] [char](10) NULL                 ' + #10#13 +
    ') ON [PRIMARY]                          ';

  sqltext_tblPummok =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[tblPummok]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[tblPummok]( ' + #10#13 +
    '	[PmuCode] [varchar](10) NULL,  ' + #10#13 +
    '	[PmBarCode] [varchar](13) NULL,' + #10#13 +
    '	[PmName] [varchar](50) NULL,   ' + #10#13 +
    '	[Pmmodel] [varchar](50) NULL,  ' + #10#13 +
    '	[PmDanwi] [varchar](10) NULL,  ' + #10#13 +
    '	[Pmpic] [varchar](100) NULL,   ' + #10#13 +
    '	[PmBuncode] [varchar](9) NULL, ' + #10#13 +
    '	[PmJejoCode] [varchar](5) NULL,' + #10#13 +
    '	[PmLocate] [varchar](3) NULL,  ' + #10#13 +
    '	[PmJegoMin] [int] NULL,        ' + #10#13 +
    '	[PmJegoMax] [int] NULL,        ' + #10#13 +
    '	[PmJego] [int] NULL,           ' + #10#13 +
    '	[PmPrice] [float] NULL,        ' + #10#13 +
    '	[PmRate] [float] NULL,         ' + #10#13 +
    '	[PmRegDay] [varchar](10) NULL  ' + #10#13 +
    ') ON [PRIMARY]                  ';

  sqltext_ma_chart_i =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_i]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_i](             ' + #10#13 +
    '	[Chart] [char](20) NULL,                    ' + #10#13 +
    '	[chartImage] [image] NULL,                  ' + #10#13 +
    '	[sDate] [char](10) NULL,                    ' + #10#13 +
    '	[imgseq] [bigint] IDENTITY(1,1) NOT NULL,   ' + #10#13 +
    '	[chartSeq] [bigint] NULL                    ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]       ';

  sqltext_ma_chart_m =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_m]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_m](        ' + #10#13 +
    '	[chart] [char](13) NOT NULL,        ' + #10#13 +
    '	[jin_day] [char](10) NOT NULL,      ' + #10#13 +
    '	[tx] [text] NOT NULL,               ' + #10#13 +
    '	[cc] [text] NOT NULL,               ' + #10#13 +
    '	[fil] [char](1) NULL                ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';

  sqltext_ma_chart_p =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_p]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_p](   ' + #10#13 +
    '	[chart] [char](13) NOT NULL,   ' + #10#13 +
    '	[jin_day] [smalldatetime] NULL,' + #10#13 +
    '	[chart_id] [bigint] NULL,      ' + #10#13 +
    '	[bp] [varchar](10) NULL,       ' + #10#13 +
    '	[glu] [varchar](10) NULL,      ' + #10#13 +
    '	[temper] [varchar](10) NULL,   ' + #10#13 +
    '	[pulse] [varchar](10) NULL,    ' + #10#13 +
    '	[ptwant] [varchar](150) NULL,  ' + #10#13 +
    '	[drrecom] [varchar](150) NULL, ' + #10#13 +
    '	[remark] [char](10) NULL,      ' + #10#13 +
    '	[iox] [tinyint] NULL,          ' + #10#13 +
    '	[ioc] [tinyint] NULL,          ' + #10#13 +
    '	[pan] [tinyint] NULL,          ' + #10#13 +
    '	[cep] [tinyint] NULL,          ' + #10#13 +
    '	[sunap] [char](1) NULL,        ' + #10#13 +
    '    [fil] [char](1) NULL,       ' + #10#13 +
    '    [code] [char](150) NULL,    ' + #10#13 +
    '    [hygine] [char](16) NULL    ' + #10#13 +
    ') ON [PRIMARY]                  ';

  sqltext_Ma_gogek_Picture =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_gogek_picture]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + '  CREATE TABLE [dbo].[ma_gogek_picture](' + #10#13 +
    '	[chart] [char](20) NULL,              ' + #10#13 +
    '	[pic] [image] NULL,                   ' + #10#13 +
    '	[regdate] [char](10) NULL,            ' + #10#13 +
    '	[pictype] [char](3) NULL              ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]   ';

  sqltext_ma_chart_canal =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_canal]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_canal]( ' + #10#13 +
    '[chart] [varchar](20) NULL,          ' + #10#13 +
    '[teeth] [char](2) NULL,              ' + #10#13 +
    '[cname] [varchar](10) NULL,          ' + #10#13 +
    '[clength] [float] NULL,                ' + #10#13 +
    '[csquare] [int] NULL,                ' + #10#13 +
    '[cangle] [int] NULL,                 ' + #10#13 +
    '[obs] [char](1) NULL,                ' + #10#13 +
    '[pus] [char](1) NULL,                ' + #10#13 +
    '[fx] [char](1) NULL,                 ' + #10#13 +
    '[perfor] [char](1) NULL,             ' + #10#13 +
    '[ledge] [char](1) NULL,              ' + #10#13 +
    '[samchul] [char](1) NULL,            ' + #10#13 +
    '[bleeding] [char](1) NULL,           ' + #10#13 +
    '[etc1] [char](1) NULL,               ' + #10#13 +
    '[etc2] [char](1) NULL,               ' + #10#13 +
    '[etc3] [char](1) NULL,               ' + #10#13 +
    '[minCanal] [int] NULL,               ' + #10#13 +
    '[maxCanal] [int] NULL,               ' + #10#13 +
    '[crow] [int] NULL,                   ' + #10#13 +
    '[regdate] [char](10) NULL,           ' + #10#13 +
    '[reguser] [char](20) NULL            ' + #10#13 +
    ' ) ON [PRIMARY]                      ';

  sqltext_ma_commessage =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_commessage]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_commessage](  ' + #10#13 +
    '[id] [int] IDENTITY(1,1) NOT NULL,           ' + #10#13 +
    '[regday] [char](10) NULL,                    ' + #10#13 +
    '[regtime] [char](8) NULL,                    ' + #10#13 +
    '[regpass] [char](4) NULL,                    ' + #10#13 +
    '[regkind] [char](10) NULL,                    ' + #10#13 +
    '[fromuser] [char](10) NULL,                  ' + #10#13 +
    '[touser] [char](10) NULL,                    ' + #10#13 +
    '[remark] [varchar](250) NULL                 ' + #10#13 +
    ') ON [PRIMARY]                               ';

  sqltext_ma_promise_color =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_promise_color]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_promise_color](' + #10#13 +
    '[colorcode] [char](10) NULL,                  ' + #10#13 +
    '[colorremark] [char](50) NULL,                 ' + #10#13 +
    '[ycolor] [char](20) NULL                      ' + #10#13 +
    ') ON [PRIMARY]                                   ';

  sqltext_ma_chart_tag =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_tag]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_tag](  ' + #10#13 +
    '	[chart] [char](20) NULL,           ' + #10#13 +
    '	[charttag] [char](3) NULL,         ' + #10#13 +
    '	[regday] [char](10) NULL,          ' + #10#13 +
    '	[sortorder] [int] NULL             ' + #10#13 +
    ') ON [PRIMARY]                      ';
  sqltext_ma_alarmlist =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_alarmlist]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_alarmlist](  ' + #10#13 +
    '	[chart] [char](20) NULL,                 ' + #10#13 +
    '	[jinday] [char](10) NULL,                ' + #10#13 +
    '	[teeth] [char](120) NULL,                ' + #10#13 +
    '	[tx] [char](50) NULL,                    ' + #10#13 +
    '	[alarmcode] [char](6) NULL,              ' + #10#13 +
    '	[alarmcap] [char](50) NULL,              ' + #10#13 +
    '	[alarmkind] [char](1) NULL,              ' + #10#13 +
    '	[regday] [nchar](10) NULL,               ' + #10#13 +
    '	[onday] [char](10) NULL,                 ' + #10#13 +
    '	[offday] [char](10) NULL,                ' + #10#13 +
    '	[feedkind] [char](10) NULL,              ' + #10#13 +
    '	[moduser] [nchar](10) NULL,              ' + #10#13 +
    '	[remark] [varchar](50) NULL              ' + #10#13 +
    ') ON [PRIMARY]                              ';

  sqltext_ma_chart_scan =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_scan]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_scan](  ' + #10#13 +
    '[chart] [char](20) NULL,                    ' + #10#13 +
    '[filename] [char](50) NULL,                 ' + #10#13 +
    '[folder] [char](50) NULL,                   ' + #10#13 +
    '[nord] [int] NULL,                          ' + #10#13 +
    '[regday] [char](10) NULL,                   ' + #10#13 +
    '[reguser] [char](20) NULL,                  ' + #10#13 +
    '[remark] [char](200) NULL,                  ' + #10#13 +
    '[inuse] [char](1) NULL                      ' + #10#13 +
    ') ON [PRIMARY]                                ';

  sqltext_ma_info_chiju =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_chiju]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_chiju]( ' + #10#13 +
    '	[chart] [char](20) NULL,           ' + #10#13 +
    '	[inputdate] [nchar](10) NULL,      ' + #10#13 +
    '	[T_no] [nchar](2) NULL,            ' + #10#13 +
    '	[T_m] [nchar](1) NULL,             ' + #10#13 +
    '	[T_1] [nchar](2) NULL,             ' + #10#13 +
    '	[T_2] [nchar](2) NULL,             ' + #10#13 +
    '	[T_3] [nchar](2) NULL,             ' + #10#13 +
    '	[T_4] [nchar](2) NULL,             ' + #10#13 +
    '	[T_5] [nchar](2) NULL,             ' + #10#13 +
    '	[T_6] [nchar](2) NULL,             ' + #10#13 +
    '	[T_noR] [nchar](1) NULL,           ' + #10#13 +
    '	[T_1R] [nchar](1) NULL,            ' + #10#13 +
    '	[T_2R] [nchar](1) NULL,            ' + #10#13 +
    '	[T_3R] [nchar](1) NULL,            ' + #10#13 +
    '	[T_4R] [nchar](1) NULL,            ' + #10#13 +
    '	[T_5R] [nchar](1) NULL,            ' + #10#13 +
    '	[T_6R] [nchar](1) NULL             ' + #10#13 +
    ') ON [PRIMARY]                      ';

  sqltext_ma_info_implant =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_implant]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_implant](       ' + #10#13 +
    '	[chart] [nchar](20) NULL,                  ' + #10#13 +
    '	[inputday] [nchar](10) NULL,               ' + #10#13 +
    '	[buwi] [nchar](2) NULL,                    ' + #10#13 +
    '	[wonin] [nchar](1) NULL,                   ' + #10#13 +
    '	[flap] [nchar](1) NULL,                    ' + #10#13 +
    '	[siklip] [nchar](1) NULL,                  ' + #10#13 +
    '	[dehiscence_ho] [nchar](2) NULL,           ' + #10#13 +
    '	[dehiscence_ver] [nchar](2) NULL,          ' + #10#13 +
    '	[fenestration_ho] [nchar](2) NULL,         ' + #10#13 +
    '	[fenestration_ver] [nchar](2) NULL,        ' + #10#13 +
    '	[golgil] [nchar](1) NULL,                  ' + #10#13 +
    '	[itv] [nchar](2) NULL,                     ' + #10#13 +
    '	[chogi] [nchar](2) NULL,                   ' + #10#13 +
    '	[siklipmm] [nchar](1) NULL,                ' + #10#13 +
    '	[siklipmm1] [nchar](2) NULL,               ' + #10#13 +
    '	[siklipmm2] [nchar](2) NULL,               ' + #10#13 +
    '	[healing] [nchar](1) NULL,                 ' + #10#13 +
    '	[healing1] [nchar](2) NULL,                ' + #10#13 +
    '	[healing2] [nchar](2) NULL,                ' + #10#13 +
    '	[healing3] [nchar](2) NULL,                ' + #10#13 +
    '	[healing4] [nchar](2) NULL,                ' + #10#13 +
    '	[abutement1] [nchar](20) NULL,             ' + #10#13 +
    '	[abutement2] [nchar](20) NULL,             ' + #10#13 +
    '	[abutement3] [nchar](20) NULL,             ' + #10#13 +
    '	[tech] [nchar](1) NULL                     ' + #10#13 +
    ') ON [PRIMARY]                              ';

  sqltext_ma_info_bochul =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_bochul]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_bochul](   ' + #10#13 +
    '	[chart] [nchar](20) NULL,             ' + #10#13 +
    '	[inputday] [nchar](10) NULL,          ' + #10#13 +
    '	[buwi] [nchar](2) NULL,               ' + #10#13 +
    '	[design] [nchar](1) NULL,             ' + #10#13 +
    '	[od] [nchar](1) NULL,                 ' + #10#13 +
    '	[abutment] [nchar](20) NULL,          ' + #10#13 +
    '	[c_abutment] [nchar](1) NULL,         ' + #10#13 +
    '	[Metal] [nchar](1) NULL,              ' + #10#13 +
    '	[kyohap] [nchar](1) NULL,             ' + #10#13 +
    '	[PFM] [nchar](1) NULL,                ' + #10#13 +
    '	[PFM1] [nchar](20) NULL,              ' + #10#13 +
    '	[Zirconia] [nchar](20) NULL           ' + #10#13 +
    ') ON [PRIMARY]                         ';

  sqltext_ma_info_implantRecall =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_implantRecall]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_implantRecall](  ' + #10#13 +
    '	[chart] [nchar](20) NULL,                  ' + #10#13 +
    '	[inputday] [nchar](10) NULL,               ' + #10#13 +
    '	[buwi] [nchar](2) NULL,                    ' + #10#13 +
    '	[Plaque] [nchar](1) NULL,                  ' + #10#13 +
    '	[bleeding] [nchar](1) NULL,                ' + #10#13 +
    '	[recession] [nchar](2) NULL,               ' + #10#13 +
    '	[mobility] [nchar](1) NULL,                ' + #10#13 +
    '	[occlusion] [nchar](1) NULL,               ' + #10#13 +
    '	[mesial] [nchar](2) NULL,                  ' + #10#13 +
    '	[distal] [nchar](2) NULL,                  ' + #10#13 +
    '	[average] [nchar](10) NULL,                ' + #10#13 +
    '	[bochul] [nchar](1) NULL,                  ' + #10#13 +
    '	[Joint] [nchar](1) NULL                    ' + #10#13 +
    ') ON [PRIMARY]                               ';

  sqltext_ma_info_oroantralC =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_oroantralC]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_oroantralC](     ' + #10#13 +
    '	[chart] [nchar](20) NULL,                  ' + #10#13 +
    '	[inputday] [nchar](10) NULL,               ' + #10#13 +
    '	[buwi] [nchar](2) NULL,                    ' + #10#13 +
    '	[height1] [nchar](2) NULL,                 ' + #10#13 +
    '	[height2] [nchar](2) NULL,                 ' + #10#13 +
    '	[membrane] [nchar](1) NULL,                ' + #10#13 +
    '	[graft] [nchar](1) NULL,                   ' + #10#13 +
    '	[graft1] [nchar](20) NULL,                 ' + #10#13 +
    '	[membrane1] [nchar](20) NULL,              ' + #10#13 +
    '	[Healing] [nchar](2) NULL                  ' + #10#13 +
    ') ON [PRIMARY]                               ';

  sqltext_ma_info_oroantralW =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_oroantralW]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_oroantralW](     ' + #10#13 +
    '	[chart] [nchar](20) NULL,                  ' + #10#13 +
    '	[inputday] [nchar](10) NULL,               ' + #10#13 +
    '	[buwi] [nchar](2) NULL,                    ' + #10#13 +
    '	[height1] [nchar](2) NULL,                 ' + #10#13 +
    '	[height2] [nchar](2) NULL,                 ' + #10#13 +
    '	[membrane] [nchar](1) NULL,                ' + #10#13 +
    '	[graft] [nchar](1) NULL,                   ' + #10#13 +
    '	[graft1] [nchar](20) NULL,                 ' + #10#13 +
    '	[membrane1] [nchar](20) NULL,              ' + #10#13 +
    '	[Healing] [nchar](2) NULL                  ' + #10#13 +
    ') ON [PRIMARY]                               ';

  sqltext_ma_info_pith =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_info_pith]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_info_pith](           ' + #10#13 +
    '	[chart] [nchar](20) NULL,                  ' + #10#13 +
    '	[inputday] [nchar](10) NULL,               ' + #10#13 +
    '	[buwi] [nchar](2) NULL,                    ' + #10#13 +
    '	[class] [nchar](1) NULL,                   ' + #10#13 +
    '	[graft_particle] [nchar](1) NULL,          ' + #10#13 +
    '	[graft_particle1] [nchar](20) NULL,        ' + #10#13 +
    '	[graft_block] [nchar](1) NULL,             ' + #10#13 +
    '	[graft_block1] [nchar](2) NULL,            ' + #10#13 +
    '	[graft_block2] [nchar](2) NULL,            ' + #10#13 +
    '	[graft_block3] [nchar](20) NULL,           ' + #10#13 +
    '	[membrane] [nchar](1) NULL,                ' + #10#13 +
    '	[membrane1] [nchar](20) NULL,              ' + #10#13 +
    '	[membrane2] [nchar](20) NULL,              ' + #10#13 +
    '	[membrane3] [nchar](20) NULL,              ' + #10#13 +
    '	[stabilization] [nchar](1) NULL,           ' + #10#13 +
    '	[stabilization1] [nchar](20) NULL,         ' + #10#13 +
    '	[stabilization2] [nchar](20) NULL,         ' + #10#13 +
    '	[additiveAagent] [text] NULL,              ' + #10#13 +
    '	[Healing] [nchar](2) NULL                  ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]        ';

  sqltext_tbReport =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[tbReport]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 +
    '	CREATE TABLE [dbo].[tbReport](                                  ' + #10#13
    + '		[Chart] [char](11) NULL,                                      ' +
    #10#13 +
    '		[DateNo] [char](11) NOT NULL,                                 ' + #10#13
    + '		[ReportKind] [char](10) NOT NULL,                             ' +
    #10#13 +
    '		[s_key] [char](7) NULL,                                       ' + #10#13
    + '		[s_Gubn] [char](1) NULL,                                      ' +
    #10#13 +
    '		[RelDate] [datetime] NULL,                                    ' + #10#13
    + '		[RelOrg] [varchar](50) NULL,                                  ' +
    #10#13 +
    '		[OrgAdd] [varchar](100) NULL,                                 ' + #10#13
    + '		[LinceNo] [varchar](10) NULL,                                 ' +
    #10#13 +
    '		[DocName] [varchar](20) NULL,                                 ' + #10#13
    + '		[OrgPhone] [varchar](15) NULL,                                ' +
    #10#13 +
    '		[SangDate] [datetime] NULL,                                   ' + #10#13
    + '		[SangMemo] [text] NULL,                                       ' +
    #10#13 +
    '		[SangBuwi] [varchar](200) NULL,                               ' + #10#13
    + '		[SangHow] [varchar](200) NULL,                                ' +
    #10#13 +
    '		[JinPastMemo] [varchar](200) NULL,                            ' + #10#13
    + '		[SurgeryOr] [varchar](200) NULL,                              ' +
    #10#13 +
    '		[hospitalOr] [varchar](200) NULL,                             ' + #10#13
    + '		[ActionOr] [varchar](200) NULL,                               ' +
    #10#13 +
    '		[FoodOr] [varchar](200) NULL,                                 ' + #10#13
    + '		[TreatPeriodS] [datetime] NULL,                               ' +
    #10#13 +
    '		[TreatPeriodE] [datetime] NULL,                               ' + #10#13
    + '		[AfterTreatMemo] [varchar](200) NULL,                         ' +
    #10#13 +
    '		[OccurOr] [varchar](200) NULL,                                ' + #10#13
    + '		[EtcMemo] [varchar](200) NULL,                                ' +
    #10#13 +
    '		[firstDate] [smalldatetime] NULL,                             ' + #10#13
    + '		[s_key1] [char](7) NULL,                                      ' +
    #10#13 +
    '		[s_key2] [char](7) NULL,                                      ' + #10#13
    + '		[s_key3] [char](4) NULL,                                      ' +
    #10#13 +
    '		[s_key4] [char](4) NULL,                                      ' + #10#13
    + '		[sang] [varchar](50) NULL,                                    ' +
    #10#13 +
    '		[sang1] [varchar](50) NULL,                                   ' + #10#13
    + '		[sang2] [varchar](50) NULL,                                   ' +
    #10#13 +
    '		[sang3] [varchar](50) NULL,                                   ' + #10#13
    + '		[sang4] [varchar](50) NULL                                    ' +
    #10#13 + '	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]                           ';

  sqltext_f_GetFullAge =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[f_GetFullAge]'') and xtype in (N''FN'', N''IF'', N''TF'')) '
    + #10#13 +
    '	CREATE  FUNCTION dbo.f_GetFullAge (@Birthday VARCHAR(8), @Today DATETIME) RETURNS VARCHAR(3)'
    + #10#13 +
    '	AS                                                                                          '
    + #10#13 +
    '	BEGIN                                                                                       '
    + #10#13 +
    '		DECLARE @CurrentYear 	VARCHAR(4),                                                         '
    + #10#13 +
    '			   @Day		VARCHAR(2),                                                                   '
    + #10#13 +
    '			   @Month		VARCHAR(2),                                                                 '
    + #10#13 +
    '			   @YearOfBirth	VARCHAR(4),                                                             '
    + #10#13 +
    '			   @FullAge	VARCHAR(3)                                                                  '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		SET @Birthday		= LTRIM(RTRIM(ISNULL(@Birthday, '' '')))                                  '
    + #10#13 +
    '		SET @CurrentYear	= YEAR(@Today)                                                          '
    + #10#13 +
    '		SET @Month		= MONTH(@Today)                                                             '
    + #10#13 +
    '		SET @Day		= DAY(@Today)                                                                 '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '	if len(@Month)=1 Set @Month=''0''+Cast(@Month as char(1))                                   '
    + #10#13 +
    '	if len(@Day)=1 Set @Day=''0''+Cast(@Day as char(1))                                         '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		--숫자여부 체크                                                                           '
    + #10#13 +
    '		IF ISNUMERIC(@Birthday) = 0                                                               '
    + #10#13 +
    '			RETURN ''0''                                                                            '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		--2/4자리 연도 체크                                                                       '
    + #10#13 +
    '		IF LEN(@Birthday) = 6                                                                     '
    + #10#13 +
    '		BEGIN                                                                                     '
    + #10#13 +
    '			SET @YearOfBirth 	= LEFT(@Birthday, 2)                                                  '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '			IF @YearOfBirth > RIGHT(@CurrentYear, 2)                                                '
    + #10#13 +
    '				SET @YearOfBirth	= (1900 + @YearOfBirth)                                             '
    + #10#13 +
    '			ELSE                                                                                    '
    + #10#13 +
    '				SET @YearOfBirth	= (2000 + @YearOfBirth)                                             '
    + #10#13 +
    '		END                                                                                       '
    + #10#13 +
    '		ELSE IF LEN(@Birthday) = 8                                                                '
    + #10#13 +
    '			SET @YearOfBirth 	= LEFT(@Birthday, 4)                                                  '
    + #10#13 +
    '		ELSE                                                                                      '
    + #10#13 +
    '			RETURN ''0''                                                                            '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		--현재일보다 출생일이 크면(늦으면) 에러처리                                               '
    + #10#13 +
    '		IF @CurrentYear < @YearOfBirth                                                            '
    + #10#13 +
    '			RETURN ''0''                                                                            '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		SET @FullAge	=  CAST(@CurrentYear AS INT) - CAST(@YearOfBirth AS INT)                    '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		IF RIGHT(@Birthday, 4) > (@Month + @Day)                                                  '
    + #10#13 +
    '			SET @FullAge = @FullAge - 1                                                             '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '		RETURN @FullAge                                                                           '
    + #10#13 +
    '                                                                                             '
    + #10#13 +
    '	END                                                                                         ';

  sqltext_ma_plantxitem =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_plantxitem]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_plantxitem](        ' + #10#13 +
    '	[id] [char](15) NULL,                    ' + #10#13 +
    '	[txcode] [int] NOT NULL,                 ' + #10#13 +
    '	[txname] [varchar](255) NULL,            ' + #10#13 +
    '	[treepath] [char](21) NULL,              ' + #10#13 +
    '	[txcap] [char](255) NULL,                ' + #10#13 +
    '	[txkind] [char](2) NULL,                 ' + #10#13 +
    '	[groupName] [char](50) NULL,             ' + #10#13 +
    '	[groupCode] [char](20) NULL,             ' + #10#13 +
    '	[price] [int] NULL,                      ' + #10#13 +
    '	[dispcolor] [char](10) NULL,             ' + #10#13 +
    '	[recallterm] [char](1) NULL,             ' + #10#13 +
    '	[notice] [char](100) NULL,               ' + #10#13 +
    '	[warn] [char](100) NULL,                 ' + #10#13 +
    '	[addvalue] [char](10) NULL,              ' + #10#13 +
    '	[number] [char](1) NULL,                 ' + #10#13 +
    '	[sang1] [varchar](8) NULL,               ' + #10#13 +
    '	[sang2] [varchar](8) NULL,               ' + #10#13 +
    '	[sang3] [varchar](8) NULL,               ' + #10#13 +
    '	[sang4] [varchar](8) NULL,               ' + #10#13 +
    '	[sang5] [varchar](8) NULL,               ' + #10#13 +
    '	[kwamok] [char](2) NULL,                 ' + #10#13 +
    '	[condcode] [char](1) NULL                ' + #10#13 +
    ') ON [PRIMARY]                            ';

  sqltext_ma_sunap_kind =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_kind]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sunap_kind](                 ' + #10#13
    + '	[chart] [char](20) NULL,                           ' + #10#13 +
    '	[date] [char](10) NULL,                            ' + #10#13 +
    '	[bo_card] [int] NULL,                              ' + #10#13 +
    '	[bo_hyun] [int] NULL,                              ' + #10#13 +
    '	[bo_young] [int] NULL,                             ' + #10#13 +
    '	[il_card] [int] NULL,                              ' + #10#13 +
    '	[il_hyun] [int] NULL,                              ' + #10#13 +
    '	[il_young] [int] NULL,                             ' + #10#13 +
    '	[etc_card] [int] NULL,                             ' + #10#13 +
    '	[etc_hyun] [int] NULL,                             ' + #10#13 +
    '	[etc_young] [int] NULL,                            ' + #10#13 +
    '	[jinryo_pid] [bigint] NULL                         ' + #10#13 +
    ') ON [PRIMARY]                                      ';

  sqltext_ma_sunap_tongplan =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_tongplan]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sunap_tongplan](              ' + #10#13
    + '	[chart] [char](20) NULL,                            ' + #10#13 +
    '	[date] [char](10) NULL,                             ' + #10#13 +
    '	[jinryo_pid] [bigint] NULL,                         ' + #10#13 +
    '	[ibname] [char](20) NULL,                           ' + #10#13 +
    '	[ibnumber] [char](20) NULL,                         ' + #10#13 +
    '	[geumek] [int] NULL,                                ' + #10#13 +
    '	[hyunreceipt] [char](1) NULL,                       ' + #10#13 +
    '	[regday] [char](10) NULL                            ' + #10#13 +
    ') ON [PRIMARY]                                       ';

  sqltext_ma_sunap_sugeum =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sunap_sugeum]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sunap_sugeum](                ' + #10#13
    + '	[chart] [char](20) NULL,                            ' + #10#13 +
    '	[date] [char](10) NULL,                             ' + #10#13 +
    '	[keumek] [int] NULL,                                ' + #10#13 +
    '	[hyun] [int] NULL,                                  ' + #10#13 +
    '	[card] [int] NULL,                                  ' + #10#13 +
    '	[young] [int] NULL,                                 ' + #10#13 +
    '	[tong] [int] NULL,                                  ' + #10#13 +
    '	[kind] [char](1) NULL,                              ' + #10#13 +
    '	[cnt] [char](1) NULL,                               ' + #10#13 +
    '	[jinryo_pid] [bigint] NULL                          ' + #10#13 +
    ') ON [PRIMARY]                                       ';

  sqltext_ma_plan_group =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_plan_group]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_plan_group](  ' + #10#13 +
    '	[chart] [char](20) NULL,           ' + #10#13 +
    '	[planid] [int] NULL,               ' + #10#13 +
    '	[kind] [int] NULL,                 ' + #10#13 +
    '	[cap] [char](50) NULL,             ' + #10#13 +
    '	[height] [int] NULL,               ' + #10#13 +
    '	[hyg] [char](10) NULL,             ' + #10#13 +
    '	[doc] [char](10) NULL,             ' + #10#13 +
    '	[regday] [char](10) NULL,          ' + #10#13 +
    '	[fgeumek] [int] NULL,              ' + #10#13 +
    '	[fday] [char](10) NULL             ' + #10#13 +
    ') ON [PRIMARY]                        ';

  sqltext_ma_sms_autosend =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_sms_autosend]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_sms_autosend](  ' + #10#13 +
    '[kind] [char](2) NULL,                          ' + #10#13 +
    '	[contents] [char](100) NULL                     ' + #10#13 +
    ') ON [PRIMARY]                                    ';
  sqltext_ma_chk_update =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[chkUpdate]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[chkUpdate](  ' + #10#13 +
    '[dupdate] [char](10) NULL,                          ' + #10#13 +
    ' [kind] [char](1) NULL,                     ' + #10#13 +
    ' [remark] [char](50) NULL                     ' + #10#13 +
    ') ON [PRIMARY]      ';

  sqltext_snj =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[snj]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[SNJ](    ' + #10#13 +
    '[JDay] [datetime] NOT NULL,   ' + #10#13 + '[JChart] [char](13) NULL,     '
    + #10#13 + '[JName] [char](10) NULL,       ' + #10#13 +
    '[JTeam] [char](2) NULL,        ' + #10#13 +
    '[JGubun1] [char](4) NULL,                  ' + #10#13 +
    '[JGubun2] [char](4) NULL,                  ' + #10#13 +
    '[JHangMok] [char](20) NULL,                ' + #10#13 +
    '[JJukyo] [char](50) NULL,                  ' + #10#13 +
    '[JSuib] [float] NULL,                       ' + #10#13 +
    '[JJichul] [float] NULL,                     ' + #10#13 +
    '[JJichulCARD] [float] NULL,                  ' + #10#13 +
    '[JJichulTong] [float] NULL,                   ' + #10#13 +
    '[JJichulJa] [char](10) NULL,                 ' + #10#13 +
    '[JChain] [float] NULL,                       ' + #10#13 +
    '[JReferKind] [char](1) NULL,                  ' + #10#13 +
    '[fil] [char](1) NULL                         ' + #10#13 +
    ') ON [PRIMARY]                              ';
  sqltext_KindImageChart = 'CREATE TABLE [dbo].[KindImageChart](    ' + #10#13
    + '	[rID] [int] IDENTITY(1,1) NOT NULL,   ' + #10#13 +
    '	[ChartName] [varchar](70) NULL,        ' + #10#13 +
    '	[pid] [int] NULL,                      ' + #10#13 +
    '	[wday] [char](8) NULL,                 ' + #10#13 +
    '	[uday] [char](8) NULL,                 ' + #10#13 +
    '	[OrderNum] [int] NULL,                 ' + #10#13 +
    '	[idx] [int] NULL,                 ' + #10#13 +
    ' CONSTRAINT [PK_KindImageChart] PRIMARY KEY CLUSTERED  ' + #10#13 +
    '(                                                      ' + #10#13 +
    '	[rID] ASC                                             ' + #10#13 +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]    '
    + #10#13 + ') ON [PRIMARY]       ';

  sqltext_docSignHistory = 'CREATE TABLE [dbo].[docSignHistory]( ' + #10#13 +
    '	[chart] [char](20) NULL,            ' + #10#13 +
    '	[docCode] [char](20) NOT NULL,      ' + #10#13 +
    '	[save_date] [char](17) NULL,      ' + #10#13 +
    '	[SDate] [datetime] NULL,            ' + #10#13 +
    '	[MDate] [datetime] NULL,            ' + #10#13 +
    '	[staff] [varchar](10) NULL,         ' + #10#13 +
    '	[chief] [varchar](10) NULL,         ' + #10#13 +
    '	[docRayout] [image] NULL            ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';

  sqltext_docSign = 'CREATE TABLE [dbo].[docSign](        ' + #10#13 +
    '	[docCode] [char](20) NOT NULL,      ' + #10#13 +
    '	[doc] [image] NULL,                 ' + #10#13 +
    '	[docType] [varchar](20) NULL,       ' + #10#13 +
    '	[nUse] [char](1) NULL,              ' + #10#13 +
    '	[frequency] [char](1) NULL,         ' + #10#13 +
    '	[docRemark] [varchar](50) NULL,     ' + #10#13 +
    '	[Sdate] [datetime] NULL             ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';

  sqltext_ChartImageInfo =
    'CREATE TABLE [dbo].[ChartImageInfo](                                                     '
    + #10#13 +
    '	[rID] [int] IDENTITY(1,1) NOT NULL,                                                     '
    + #10#13 +
    '	[ChartNo] [varchar](70) NOT NULL,                                                       '
    + #10#13 +
    '	[BgFileName] [varchar](70) NOT NULL,                                                    '
    + #10#13 +
    '	[SaveFileName] [varchar](70) NOT NULL,                                                  '
    + #10#13 +
    '	[KindImageID] [int] NOT NULL CONSTRAINT [DF_ChartImageInfo_KindImageID]  DEFAULT (0),   '
    + #10#13 +
    '	[PgNo] [int] NOT NULL CONSTRAINT [DF_ChartImageInfo_PgNo]  DEFAULT (0),                 '
    + #10#13 +
    '	[Writer] [varchar](50) NULL,                                                            '
    + #10#13 +
    '	[MemoYN] [int] NOT NULL CONSTRAINT [DF_ChartImageInfo_MemoYN]  DEFAULT (0),             '
    + #10#13 +
    '	[Wday] [char](8) NULL,                                                                  '
    + #10#13 +
    '	[Uday] [char](8) NULL,                                                                  '
    + #10#13 +
    '	[rwStatus] [int] NOT NULL CONSTRAINT [DF_ChartImageInfo_rwStatus]  DEFAULT (0),         '
    + #10#13 +
    '	[rwViewer] [varchar](30) NULL,                                                          '
    + #10#13 +
    '	[FolName] [varchar](20) NULL CONSTRAINT [DF_ChartImageInfo_FolName]  DEFAULT (''aa''),    '
    + #10#13 +
    '	[fil] [int] NOT NULL CONSTRAINT [DF_ChartImageInfo_fil]  DEFAULT (0),                   '
    + #10#13 +
    ' CONSTRAINT [PK_ChartImageInfo] PRIMARY KEY CLUSTERED                                    '
    + #10#13 +
    '(                                                                                        '
    + #10#13 +
    '	[rID] ASC                                                                               '
    + #10#13 +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]'
    + #10#13 +
    ') ON [PRIMARY]                                                                           ';

  sqltext_BgImageInfo =
    ' CREATE TABLE [dbo].[BgImageInfo](                                             '
    + #10#13 +
    '	[rID] [int] IDENTITY(1,1) NOT NULL,                                           '
    + #10#13 +
    '	[KindImageID] [int] NULL,                                                     '
    + #10#13 +
    '	[BgFileName] [varchar](70) NULL,                                              '
    + #10#13 +
    '	[Wday] [char](8) NULL,                                                        '
    + #10#13 +
    '	[Uday] [char](8) NULL,                                                        '
    + #10#13 +
    '	[BgPgNo] [int] NOT NULL,                                                      '
    + #10#13 +
    ' CONSTRAINT [PK_BgImageInfo] PRIMARY KEY CLUSTERED                             '
    + #10#13 +
    '(                                                                              '
    + #10#13 +
    '	[rID] ASC                                                                     '
    + #10#13 +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]'
    + #10#13 +
    ') ON [PRIMARY]                                                                  ';

  sqltext_FolderInfo =
    'CREATE TABLE [dbo].[FolderInfo](                                             '
    + #10#13 +
    '	[rID] [int] IDENTITY(1,1) NOT NULL,                                         '
    + #10#13 +
    '	[FolName] [varchar](20) NOT NULL,                                           '
    + #10#13 +
    '	[FileCnt] [int] NOT NULL,                                                   '
    + #10#13 +
    '	[wday] [char](8) NULL,                                                      '
    + #10#13 +
    '	[uday] [char](8) NULL,                                                      '
    + #10#13 +
    ' CONSTRAINT [PK_FolderInfo] PRIMARY KEY CLUSTERED                            '
    + #10#13 +
    '(                                                                            '
    + #10#13 +
    '	[rID] ASC                                                                   '
    + #10#13 +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]'
    + #10#13 +
    ') ON [PRIMARY]                                                                ';
  sqltext_dtx =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[dtx]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[dtx](           ' + #10#13 +
    '	[kind] [char](1) NULL,             ' + #10#13 +
    '	[chart] [varchar](13) NOT NULL,    ' + #10#13 +
    '	[jin_day] [char](10) NOT NULL,     ' + #10#13 +
    '	[portion] [varchar](100) NULL,     ' + #10#13 +
    '	[description] [varchar](255) NULL, ' + #10#13 +
    '	[tbname] [varchar](20) NOT NULL,   ' + #10#13 +
    '	[seqcode] [bigint] NOT NULL,       ' + #10#13 +
    '	[cremark] [varchar](255) NULL,     ' + #10#13 +
    '	[cprice] [int] NULL,               ' + #10#13 +
    '	[ccnt] [int] NULL,                 ' + #10#13 +
    '	[ckumak] [int] NULL,               ' + #10#13 +
    '[dtxOrder] [char](10) NULL,         ' + #10#13 +
    '[choice] [char](1) NULL,            ' + #10#13 +
    '[Chk] [char](1) NULL,               ' + #10#13 +
    '[council] [char](20) NULL,          ' + #10#13 +
    '[doctor] [char](20) NULL,           ' + #10#13 +
    '[nOrd] [char](10) NULL,             ' + #10#13 +
    '[fil] [char](1) NULL,               ' + #10#13 +
    '[modteeth] [char](36) NULL,         ' + #10#13 +
    '[txok] [char](1) NULL,              ' + #10#13 +
    '[txno] [char](10) NULL,             ' + #10#13 +
    '[f_day] [char](10) NULL             ' + #10#13 +
    '  ) ON [PRIMARY]                    ';

  sqltext_hxkam =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[hxKam]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxKam](     ' + #10#13 +
    '	[Chart] [char](15) NOT NULL,   ' + #10#13 +
    '	[KamDate] [char](10) NOT NULL, ' + #10#13 +
    '	[KamTime] [char](4) NOT NULL,  ' + #10#13 +
    '	[Kamek] [int] NOT NULL,        ' + #10#13 +
    '	[ChongEk] [int] NOT NULL,      ' + #10#13 +
    '	[saName] [char](20) NOT NULL   ' + #10#13 +
    ') ON [PRIMARY]                  ';

  sqltext_vipcard =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[vipcard]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[vipcard](   ' + #10#13 +
    '	[chart] [char](15) NULL,       ' + #10#13 +
    '	[cardNo] [char](10) NULL,      ' + #10#13 +
    '	[regDate] [char](10) NULL      ' + #10#13 +
    ') ON [PRIMARY]                  ';

  sqltext_ma_chart_pimage =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_pimage]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_chart_pimage](   ' + #10#13 +
    '	[Chart] [char](20) NULL,               ' + #10#13 +
    '	[ymd] [char](10) NULL,                 ' + #10#13 +
    '	[filename] [char](200) NULL,           ' + #10#13 +
    '	[no] [int] NULL,                       ' + #10#13 +
    '	[ip] [char](20) NULL,                  ' + #10#13 +
    '	[dr] [char](20) NULL,                  ' + #10#13 +
    '	[sdate] [datetime] NULL,               ' + #10#13 +
    '	[fdate] [datetime] NULL,               ' + #10#13 +
    '	[chartImage] [image] NULL              ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]   ';

  sqltext_HxMed =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxMed]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxMed](             ' + #10#13 +
    '	[MedChart] [char] (30) NULL,           ' + #10#13 +
    '	[MedDate] [datetime] NULL,             ' + #10#13 +
    '	[MedMemo] [text]  NULL,                ' + #10#13 +
    '	[MedTeam] [char] (2) NULL,             ' + #10#13 +
    '	[fil] [char] (1) NULL                  ' + #10#13 +
    ') ON [PRIMARY]                          ';

  sqltext_HxCC =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxCC]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxCC](              ' + #10#13 +
    '	[CCChart] [char] (30) NULL,            ' + #10#13 +
    '	[CCDate] [datetime] NULL,              ' + #10#13 +
    '	[CCMemo] [text] NULL,                  ' + #10#13 +
    '	[CCTeam] [char] (2) NULL,              ' + #10#13 +
    '	[seq] [int] IDENTITY (1, 1) NOT NULL,  ' + #10#13 +
    '	[fil] [char] (1) NULL                  ' + #10#13 +
    ') ON [PRIMARY]                          ';

  sqltext_HxSRemark =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxSRemark]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxSRemark](         ' + #10#13 +
    '	[SRCHART] [char] (30) NULL,            ' + #10#13 +
    '	[SRMEMO] [text] NULL,                  ' + #10#13 +
    '	[SRDATE] [datetime] NULL,              ' + #10#13 +
    '	[SRTEAM] [char] (2) NULL,              ' + #10#13 +
    '	[fil] [char] (1) NULL                  ' + #10#13 +
    ') ON [PRIMARY]                          ';

  sqltext_Chklist =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[chk_list]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[chk_list](         ' + #10#13 +
    '	[chart] [char](30) NULL,              ' + #10#13 +
    '	[chkdate] [smalldatetime] NULL,                  ' + #10#13 +
    '	[dup] [int] NULL,              ' + #10#13 +
    '	[bp] [char](10) NULL,              ' + #10#13 +
    ' [dm] [char](4) NULL,            ' + #10#13 +
    ' [bt] [char](1) NULL,             ' + #10#13 +
    ' [tx_int] [char](1) NULL,         ' + #10#13 +
    ' [h_sx] [char](10) NULL,         ' + #10#13 +
    ' [e_Sx] [char](10) NULL,          ' + #10#13 +
    ' [heart] [char](1) NULL,           ' + #10#13 +
    ' [kidney] [char](1) NULL,           ' + #10#13 +
    ' [stomach] [char](1) NULL,         ' + #10#13 +
    ' [chk_etc] [char](10) NULL,         ' + #10#13 +
    '	[dental_history] [varchar](50) NULL    ' + #10#13 +
    ') ON [PRIMARY]                          ';

  sqltext_ma_Chart_image =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_chart_image]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + '  CREATE TABLE [dbo].[ma_chart_image](     ' + #10#13 +
    '	[Chart] [char](30) NULL,                    ' + #10#13 +
    '	[docCode] [char](20) NOT NULL,                               ' + #10#13 +
    '	[chartImage] [image] NULL,                  ' + #10#13 +
    '	[sDate] [char](10) NULL,                    ' + #10#13 +
    '	[MDate] [char](10) NULL,                    ' + #10#13 +
    '	[imgseq] [bigint] IDENTITY(1,1) NOT NULL    ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]        ';
  // 2012.2.10
  sqltext_Hxpi =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxPi]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxPi](           ' + #10#13 +
    '	[Chart] [char](30) NULL,            ' + #10#13 +
    '	[jin_day] [datetime] NULL,          ' + #10#13 +
    ' [portion] [char](200) NULL,      ' + #10#13 +
    '	[descript] [text] NULL,             ' + #10#13 +
    '	[Team] [char](2) NULL,              ' + #10#13 +
    '	[seq] [int] IDENTITY(1,1) NOT NULL, ' + #10#13 +
    '	[fil] [char](1) NULL                ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';

  sqltext_HxImp =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxImp]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxImp](           ' + #10#13 +
    '	[Chart] [char](30) NULL,            ' + #10#13 +
    '	[jin_day] [datetime] NULL,          ' + #10#13 +
    ' [portion] [char](200) NULL,      ' + #10#13 +
    '	[descript] [text] NULL,             ' + #10#13 +
    '	[Team] [char](2) NULL,              ' + #10#13 +
    '	[seq] [int] IDENTITY(1,1) NOT NULL, ' + #10#13 +
    '	[fil] [char](1) NULL                ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';
  // 2012.3.24
  sqltext_HxPlan =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxPlan]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxPlan](           ' + #10#13 +
    '	[Chart] [char](30) NULL,            ' + #10#13 +
    '	[jin_day] [datetime] NULL,          ' + #10#13 +
    ' [portion] [char](200) NULL,      ' + #10#13 +
    '	[descript] [text] NULL,             ' + #10#13 +
    '	[Team] [char](2) NULL,              ' + #10#13 +
    '	[seq] [int] IDENTITY(1,1) NOT NULL, ' + #10#13 +
    '	[isimage] [char](1) NULL,                ' + #10#13 +
    '	[fil] [char](1) NULL                ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';
  sqltext_HxSunap =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HxSunap]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[HxSunap](           ' + #10#13 +
    '	[Chart] [char](30) NULL,            ' + #10#13 +
    '	[jin_day] [datetime] NULL,          ' + #10#13 +
    ' [portion] [char](200) NULL,      ' + #10#13 +
    '	[descript] [text] NULL,             ' + #10#13 +
    '	[Team] [char](2) NULL,              ' + #10#13 +
    '	[seq] [int] IDENTITY(1,1) NOT NULL, ' + #10#13 +
    '	[isimage] [char](1) NULL,                ' + #10#13 +
    '	[fil] [char](1) NULL                ' + #10#13 +
    ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';

  // 2012.5.16
  sqltext_tblUpche =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[tblUpche]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[tblUpche](             ' + #10#13 +
    ' [idn] [bigint] IDENTITY(1,1) NOT NULL,    ' + #10#13 +
    ' [UcCode] [varchar](5) NULL,               ' + #10#13 +
    '[UcSaupNo] [varchar](12) NULL,             ' + #10#13 +
    '[UcSangho] [varchar](30) NULL,             ' + #10#13 +
    '[UcType] [varchar](2) NULL,                ' + #10#13 +
    '[UcDaepyo] [varchar](10) NULL,             ' + #10#13 +
    '[UcUpJong] [varchar](20) NULL,             ' + #10#13 +
    '[UcUpTae] [varchar](20) NULL,              ' + #10#13 +
    '[UcDamdang] [varchar](10) NULL,            ' + #10#13 +
    '[UcHp1] [varchar](13) NULL,                ' + #10#13 +
    '[UcHp2] [varchar](13) NULL,                ' + #10#13 +
    '[UcTel1] [varchar](13) NULL,               ' + #10#13 +
    '[UcTel2] [varchar](13) NULL,               ' + #10#13 +
    '[UcZip] [varchar](7) NULL,                 ' + #10#13 +
    '[UcJuso2] [char](100) NULL,                ' + #10#13 +
    '[UcJuso] [varchar](100) NULL,              ' + #10#13 +
    '[UcJuso3] [char](100) NULL,                ' + #10#13 +
    '[UcJuso4] [char](100) NULL,                ' + #10#13 +
    '[UcZip2] [char](7) NULL,                   ' + #10#13 +
    '[UcPayDay] [varchar](10) NULL,             ' + #10#13 +
    '[UcBankCode] [varchar](3) NULL,            ' + #10#13 +
    '[UcBankSerial] [varchar](20) NULL,         ' + #10#13 +
    '[UcMisu] [float] NULL,                     ' + #10#13 +
    '[UcSday] [varchar](10) NULL,               ' + #10#13 +
    '[UcUse] [varchar](1) NULL,                 ' + #10#13 +
    '[UcDiscount] [float] NULL,                 ' + #10#13 +
    '[UcRegDay] [varchar](10) NULL,             ' + #10#13 +
    '[UcId] [char](8) NULL,                     ' + #10#13 +
    '[Ucpass] [char](10) NULL,                  ' + #10#13 +
    '[UcBankUser] [char](10) NULL,              ' + #10#13 +
    '[CdRegDay] [char](10) NULL,                ' + #10#13 +
    '[CdUse] [char](1) NULL,                    ' + #10#13 +
    '[ucEtc] [char](250) NULL                   ' + #10#13 +
    ') ON [PRIMARY]                             ';

  sqltext_ma_plan_s =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_plan_s]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_plan_s](   ' + #10#13 +
    '[chart] [char](30) NULL,                 ' + #10#13 +
    '[jin_Day] [smalldatetime] NULL,          ' + #10#13 +
    '[descript] [varchar](1500) NULL,         ' + #10#13 +
    '[portion] [varchar](500) NULL,           ' + #10#13 +
    '[doctor] [varchar](15) NULL,             ' + #10#13 +
    '[hygine] [char](16) NULL,                ' + #10#13 +
    '[userpcname] [char](30) NULL,            ' + #10#13 +
    '[userID] [char](30) NULL,                ' + #10#13 +
    '[richtext] [image] NULL,                 ' + #10#13 +
    '[isRich] [char](1) NULL,                 ' + #10#13 +
    '[isimage] [char](1) NULL,                ' + #10#13 +
    '[ModDay] [datetime] NULL,                ' + #10#13 +
    '[cKind] [char](10) NULL,                 ' + #10#13 +
    '[imgTeeth] [image] NULL,                 ' + #10#13 +
    '[seq] [bigint] IDENTITY(1,1) NOT NULL    ' + #10#13 +
    ')                                          ';

  sqltext_ma_problem_s =
    'if not exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[ma_problem_s]'') and OBJECTPROPERTY(id, N''IsUserTable'') = 1)'
    + #10#13 + 'CREATE TABLE [dbo].[ma_problem_s](   ' + #10#13 +
    '[chart] [char](30) NULL,                 ' + #10#13 +
    '[jin_Day] [smalldatetime] NULL,          ' + #10#13 +
    '[descript] [varchar](1500) NULL,         ' + #10#13 +
    '[portion] [varchar](500) NULL,           ' + #10#13 +
    '[doctor] [varchar](15) NULL,             ' + #10#13 +
    '[hygine] [char](16) NULL,                ' + #10#13 +
    '[userpcname] [char](30) NULL,            ' + #10#13 +
    '[userID] [char](30) NULL,                ' + #10#13 +
    '[richtext] [image] NULL,                 ' + #10#13 +
    '[isRich] [char](1) NULL,                 ' + #10#13 +
    '[isimage] [char](1) NULL,                ' + #10#13 +
    '[ModDay] [datetime] NULL,                ' + #10#13 +
    '[cKind] [char](10) NULL,                 ' + #10#13 +
    '[imgTeeth] [image] NULL,                 ' + #10#13 +
    '[seq] [bigint] IDENTITY(1,1) NOT NULL    ' + #10#13 +
    ')                                          ';

begin
  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_sunap_sugeum;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_sunap_tongplan;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_sunap_kind;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_Ma_gogek_Picture;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chart_canal;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_commessage;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_promise_color;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chart_tag;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_alarmlist;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chart_scan;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_chiju;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_implant;
    execsql;
    end;

    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_bochul;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_implantRecall;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_oroantralC;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_oroantralW;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_info_pith;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_tbreport;
    execsql;
    end;
  }
  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_f_GetFullAge;
    execsql;
    end;
  }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_plantxitem;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_plan_group;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_sms_autosend;
    execsql;
    end;
  }
  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chk_update;
    execsql;
    end;
  }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_snj;
    execsql;
    end;

    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_KindImageChart;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_docSignHistory;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text :=  sqltext_docSign;
    execsql;
    end;
    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text :=  sqltext_ChartImageInfo;
    execsql;
    end;

    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text :=  sqltext_BgImageInfo;
    execsql;
    end;

    with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text :=  sqltext_FolderInfo;
    execsql;
    end;
  }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chart_i;
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chart_m;
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_ma_chart_p;
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_tblpummok;
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_tblpanmeitem;
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_dxhx;
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_docu;     //ma_docu
    execsql;
    end; }

  { with Dm_f.SqlWork do
    begin
    close;
    sql.clear;
    Sql.text := sqltext_dtx;
    execsql;
    end; }

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_hxkam;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_vipcard;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_ma_chart_pimage;
    execsql;
  end;

  // 2011.11.27
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_HxMed;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_HxCC;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_HxSRemark;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_Chklist;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_ma_Chart_image;
    execsql;
  end;

  // 2012.2.10
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_Hxpi;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_HxImp;
    execsql;
  end;

  // 2012.3.24
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_HxPlan;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_HxSunap;
    execsql;
  end;
  // 2012.5.16  sqltext_tblUpche
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_tblUpche;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_ma_plan_s;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_ma_problem_s;
    execsql;
  end;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_docSignHistory_text;
    execsql;
  end;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_ma_config_etc;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_phrase;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_sutak;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_snj2;
    execsql;
  end;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_promise_sulBunryu;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_docu_agree;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_basic_chair;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_chart_rec;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_chart_hangmok;
    execsql;
  end;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_chart_hangmok_data;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_dtx_sunap;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_ma_sms_manager;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_implant_info;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_sms_picture;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_gigong;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_GigongBunryu;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_GigongItem;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_GigongMemo;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext_ma_car_info;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_carinsu_co;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_Gigong_image;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_stop;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_hw;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_cert;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_sunap_misu_init;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_sunap_napBu;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_remark;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_gogek_43;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_Mno;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_OrthoFirst;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chart_elastic;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_sunap_final;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_sunap_bunnap;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_docu_set;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_HxDent_m;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_promise_temp;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_imageinfo_tag;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_chunggu;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlText_ma_gogek_group_index;
    execsql;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := SqlText_Refer_view_Existcheck;
    open;
    if isEmpty then
    begin

      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.text := SqlText_Refer_view;
        execsql;
      end;
    end;
  end;

end;

procedure AltergogekView;
const
  alterView =
    'ALTER VIEW [dbo].[view_gogek]                                                                               '
    + #10#13 +
    'AS                                                                                                          '
    + #10#13 +
    'SELECT   idn, chart, name, nameEng, jumin, last_day, first_day, special, pibo_id, refer_id, fam_id, team, doc, hyg, pregnan, chaSangNo, '
    + #10#13 +
    '                birth, moon, kwan, personality,refer_chart, refer_name, chamgo, bontype, janek,  sms, bonsanjung, sms2,sms3, '
    + #10#13 +
    '                    (SELECT   TOP 1 juso                                                                    '
    + #10#13 +
    '                     FROM      ma_gogek_address                                                             '
    + #10#13 +
    '                     WHERE   ma_gogek_address.chart = ma_gogek_basic.chart AND                              '
    + #10#13 +
    '                                     ma_gogek_address.kind = ''1'') AS h_juso,                              '
    + #10#13 +
    '                    (SELECT   TOP 1 zipcode                                                                 '
    + #10#13 +
    '                     FROM      ma_gogek_address                                                             '
    + #10#13 +
    '                     WHERE   ma_gogek_address.chart = ma_gogek_basic.chart AND                              '
    + #10#13 +
    '                                     ma_gogek_address.kind = ''1'') AS h_zip,                               '
    + #10#13 +
    '                    (SELECT   TOP 1 id                                                                      '
    + #10#13 +
    '                     FROM      ma_gogek_address                                                             '
    + #10#13 +
    '                     WHERE   ma_gogek_address.chart = ma_gogek_basic.chart AND                              '
    + #10#13 +
    '                                     ma_gogek_address.kind = ''1'') AS h_id,                                '
    + #10#13 +
    '                    (SELECT   TOP 1 phone                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_phone                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_phone.chart = ma_gogek_basic.chart AND                                '
    + #10#13 +
    '                                     ma_gogek_phone.kind = ''1'') AS h_phone,                               '
    + #10#13 +
    '                    (SELECT   TOP 1 phone                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_phone                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_phone.chart = ma_gogek_basic.chart AND                                '
    + #10#13 +
    '                                     ma_gogek_phone.kind = ''2'') AS c_phone,                               '
    + #10#13 +
    '                    (SELECT   TOP 1 jungno                                                                '
    + #10#13 +
    '                     FROM      ma_gogek_43                                                                  '
    + #10#13 +
    '                     WHERE   ma_gogek_43.chart = ma_gogek_basic.chart) AS jungno43,                         '
    + #10#13 +
    '                    (SELECT   TOP 1 email                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_email                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_email.chart = ma_gogek_basic.chart) AS mail,                          '
    + #10#13 +
    '                    (SELECT   TOP 1 name                                                                    '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS piboname,                        '
    + #10#13 +
    '                    (SELECT   TOP 1 jongbyul                                                                '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS jongbeul,                        '
    + #10#13 +
    '                    (SELECT   TOP 1 kiho                                                                    '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS kiho,                            '
    + #10#13 +
    '                    (SELECT   TOP 1 apply_day                                                               '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS apply_day,                       '
    + #10#13 +
    '                    (SELECT   TOP 1 k_number                                                                '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS k_number,                         '
    + #10#13 +
    '            (SELECT     TOP (1) name                                                                     '
    + #10#13 +
    '              FROM          dbo.ma_gogek_referer                                                          '
    + #10#13 +
    '              WHERE      (id = dbo.ma_gogek_basic.refer_id)) AS refername                                 '
    + #10#13 +
    'FROM      dbo.ma_gogek_basic                                                                                ';
begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := alterView;
    execsql;
  end;

end;

procedure getSugaUpdte; // Procedure 업데이트
const
  sqltext = 'ALTER    Procedure [dbo].[getsuga]  @su_key     char(9), @jin_day                       '
    + #10#13 +
    'datetime as if ''2016-01-01''<=@jin_day                                                    '
    + #10#13 +
    'select * from suga where su_key=@su_key and                                              '
    + #10#13 +
    '@jin_day>=su_apply else select top 1 s.su_key,h.su_apply,h.bo_dan,s.ja_dan,              '
    + #10#13 +
    's.il_dan,s.wo_dan,s.bo_day,s.ja_day,s.il_day,s.wo_day, s.su_gu1,s.su_gu2,s.su_gu3,       '
    + #10#13 +
    's.su_sobulru,s.su_kor_name,s.jaejo_key,s.su_soa, s.su_yagan, s.su_junsan, s.su_danwi,    '
    + #10#13 +
    's.dan_qty, s.su_san3,s.Need_chart_memo, s.group_check, s.su_extra, h.su_point ,s.seq_id  '
    + #10#13 +
    'from suga s, suga_history h                                                              '
    + #10#13 +
    'where s.su_key=@su_key                                                                   '
    + #10#13 +
    'and s.su_key=h.su_key                                                                    '
    + #10#13 +
    'and h.su_apply<=@jin_day                                                                 '
    + #10#13 +
    'order by h.su_apply desc                                                                 ';
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext;
    execsql;
  end;
end;

procedure getSugaUpdte2017; // Procedure 업데이트
const
  sqltext = 'ALTER    Procedure [dbo].[getsuga]  @su_key     char(9), @jin_day                       '
    + #10#13 +
    'datetime as if ''2017-01-01''<=@jin_day                                                    '
    + #10#13 +
    'select * from suga where su_key=@su_key and                                              '
    + #10#13 +
    '@jin_day>=su_apply else select top 1 s.su_key,h.su_apply,h.bo_dan,s.ja_dan,              '
    + #10#13 +
    's.il_dan,s.wo_dan,s.bo_day,s.ja_day,s.il_day,s.wo_day, s.su_gu1,s.su_gu2,s.su_gu3,       '
    + #10#13 +
    's.su_sobulru,s.su_kor_name,s.jaejo_key,s.su_soa, s.su_yagan, s.su_junsan, s.su_danwi,    '
    + #10#13 +
    's.dan_qty, s.su_san3,s.Need_chart_memo, s.group_check, s.su_extra, h.su_point ,s.seq_id  '
    + #10#13 +
    'from suga s, suga_history h                                                              '
    + #10#13 +
    'where s.su_key=@su_key                                                                   '
    + #10#13 +
    'and s.su_key=h.su_key                                                                    '
    + #10#13 +
    'and h.su_apply<=@jin_day                                                                 '
    + #10#13 +
    'order by h.su_apply desc                                                                 ';
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext;
    execsql;
  end;
end;

procedure getSugaUpdte201707; // Procedure 업데이트
const
  sqltext = 'ALTER    Procedure [dbo].[getsuga]  @su_key     char(9), @jin_day                       '
    + #10#13 +
    'datetime as if ''2017-07-01''<=@jin_day                                                    '
    + #10#13 +
    'select * from suga where su_key=@su_key and                                              '
    + #10#13 +
    '@jin_day>=su_apply else select top 1 s.su_key,h.su_apply,h.bo_dan,s.ja_dan,              '
    + #10#13 +
    's.il_dan,s.wo_dan,s.bo_day,s.ja_day,s.il_day,s.wo_day, s.su_gu1,s.su_gu2,s.su_gu3,       '
    + #10#13 +
    's.su_sobulru,s.su_kor_name,s.jaejo_key,s.su_soa, s.su_yagan, s.su_junsan, s.su_danwi,    '
    + #10#13 +
    's.dan_qty, s.su_san3,s.Need_chart_memo, s.group_check, s.su_extra, h.su_point ,s.seq_id  '
    + #10#13 +
    'from suga s, suga_history h                                                              '
    + #10#13 +
    'where s.su_key=@su_key                                                                   '
    + #10#13 +
    'and s.su_key=h.su_key                                                                    '
    + #10#13 +
    'and h.su_apply<=@jin_day                                                                 '
    + #10#13 +
    'order by h.su_apply desc                                                                 ';
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext;
    execsql;
  end;
end;

procedure getSugaUpdte201801; // Procedure 업데이트
const
  sqltext = 'ALTER    Procedure [dbo].[getsuga]  @su_key     char(9), @jin_day                       '
    + #10#13 +
    'datetime as if ''2018-01-01''<=@jin_day                                                    '
    + #10#13 +
    'select * from suga where su_key=@su_key and                                              '
    + #10#13 +
    '@jin_day>=su_apply else select top 1 s.su_key,h.su_apply,h.bo_dan,s.ja_dan,              '
    + #10#13 +
    's.il_dan,s.wo_dan,s.bo_day,s.ja_day,s.il_day,s.wo_day, s.su_gu1,s.su_gu2,s.su_gu3,       '
    + #10#13 +
    's.su_sobulru,s.su_kor_name,s.jaejo_key,s.su_soa, s.su_yagan, s.su_junsan, s.su_danwi,    '
    + #10#13 +
    's.dan_qty, s.su_san3,s.Need_chart_memo, s.group_check, s.su_extra, h.su_point ,s.seq_id  '
    + #10#13 +
    'from suga s, suga_history h                                                              '
    + #10#13 +
    'where s.su_key=@su_key                                                                   '
    + #10#13 +
    'and s.su_key=h.su_key                                                                    '
    + #10#13 +
    'and h.su_apply<=@jin_day                                                                 '
    + #10#13 +
    'order by h.su_apply desc                                                                 ';
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqltext;
    execsql;
  end;
end;

function DatabaseUpdate(varDBname: string): string;
var
  AnsiNullsEnabled, AnsiWarningsEnabled: string;
begin
  AnsiNullsEnabled := 'SELECT DATABASEPROPERTY(' + '''' + varDBname + '''' +
    ' , ''IsAnsiNullsEnabled'' ' + ') as ansinull';
  AnsiWarningsEnabled := 'SELECT DATABASEPROPERTY(' + '''' + varDBname + '''' +
    ' , ''IsAnsiWarningsEnabled'' ' + ') as ansiwarn';
  // AnsiWarningsEnabled := 'SELECT DATABASEPROPERTY('+varDBName+ ' , ''IsAnsiNullsEnabled'' + ')' ;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := AnsiNullsEnabled;
    open;
    AnsiNullsEnabled := fieldByName('ansinull').asstring;

    if AnsiNullsEnabled = '1' then
    begin
      close;
      sql.clear;
      sql.text := 'ALTER DATABASE ' + varDBname + ' SET ANSI_NULLS OFF';
      execsql;
    end;

    close;
    sql.clear;
    sql.text := AnsiWarningsEnabled;
    open;
    AnsiWarningsEnabled := fieldByName('ansiwarn').asstring;
    if AnsiWarningsEnabled = '1' then
    begin
      close;
      sql.clear;
      sql.text := 'ALTER DATABASE ' + varDBname + ' SET ANSI_WARNINGS OFF';
      execsql;
    end;

    // SELECT DATABASEPROPERTY(varDBName, 'IsAnsiNullsEnabled');
    // SELECT DATABASEPROPERTY(varDBName, 'IsAnsiWarningsEnabled');

  end;

end;

procedure TableUpdate;
const
  alterView =
    'ALTER VIEW [dbo].[view_gogek]                                                                               '
    + #10#13 +
    'AS                                                                                                          '
    + #10#13 +
    'SELECT   idn, chart, name, nameEng, jumin, last_day, first_day, special, pibo_id, refer_id, fam_id, team, doc, hyg,  '
    + #10#13 +
    '          birth, moon, kwan, personality,refer_chart, refer_name, refer_neyuk, chamgo, bontype,  pregnan, chaSangNo,  '
    + #10#13 +
    '                janek, sms, bonsanjung, sms2,sms3, artTeeth1, artTeeth2, infosave, chartsaveOk, pname1,        '
    + #10#13 +
    '            pname2, idno,implTeeth1, implTeeth2, implYoyang1, implYoyang2,  artYoyang1, artYoyang2,                                    '
    + #10#13 +
    '                    (SELECT   TOP 1 juso                                                                    '
    + #10#13 +
    '                     FROM      ma_gogek_address                                                             '
    + #10#13 +
    '                     WHERE   ma_gogek_address.chart = ma_gogek_basic.chart AND                              '
    + #10#13 +
    '                                     ma_gogek_address.kind = ''1'') AS h_juso,                              '
    + #10#13 +
    '                    (SELECT   TOP 1 zipcode                                                                 '
    + #10#13 +
    '                     FROM      ma_gogek_address                                                             '
    + #10#13 +
    '                     WHERE   ma_gogek_address.chart = ma_gogek_basic.chart AND                              '
    + #10#13 +
    '                                     ma_gogek_address.kind = ''1'') AS h_zip,                               '
    + #10#13 +
    '                    (SELECT   TOP 1 id                                                                      '
    + #10#13 +
    '                     FROM      ma_gogek_address                                                             '
    + #10#13 +
    '                     WHERE   ma_gogek_address.chart = ma_gogek_basic.chart AND                              '
    + #10#13 +
    '                                     ma_gogek_address.kind = ''1'') AS h_id,                                '
    + #10#13 +
    '                    (SELECT   TOP 1 phone                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_phone                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_phone.chart = ma_gogek_basic.chart AND                                '
    + #10#13 +
    '                                     ma_gogek_phone.kind = ''1'') AS h_phone,                               '
    + #10#13 +
    '                    (SELECT   TOP 1 phone                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_phone                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_phone.chart = ma_gogek_basic.chart AND                                '
    + #10#13 +
    '                                     ma_gogek_phone.kind = ''2'') AS c_phone,                               '
    + #10#13 +
    '                    (SELECT   TOP 1 jungno                                                                '
    + #10#13 +
    '                     FROM      ma_gogek_43                                                                  '
    + #10#13 +
    '                     WHERE   ma_gogek_43.chart = ma_gogek_basic.chart) AS jungno43,                         '
    + #10#13 +
    '                    (SELECT   TOP 1 email                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_email                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_email.chart = ma_gogek_basic.chart) AS mail,                          '
    + #10#13 +
    '                    (SELECT   TOP 1 name                                                                    '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS piboname,                        '
    + #10#13 +
    '                    (SELECT   TOP 1 jongbyul                                                                '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS jongbeul,                        '
    + #10#13 +
    '                    (SELECT   TOP 1 kiho                                                                    '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS kiho,                            '
    + #10#13 +
    '                    (SELECT   TOP 1 apply_day                                                               '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS apply_day,                       '
    + #10#13 +
    '                    (SELECT   TOP 1 k_number                                                                '
    + #10#13 +
    '                     FROM      ma_gogek_pibo                                                                '
    + #10#13 +
    '                     WHERE   ma_gogek_pibo.id = ma_gogek_basic.pibo_id) AS k_number,                         '
    + #10#13 +
    '            (SELECT     TOP (1) name                                                                     '
    + #10#13 +
    '              FROM          dbo.ma_gogek_referer                                                          '
    + #10#13 +
    '              WHERE      (id = dbo.ma_gogek_basic.refer_id)) AS refername,                                 '
    + #10#13 +
    '            (SELECT   TOP 1 phone                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_phone                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_phone.chart = ma_gogek_basic.chart AND                                '
    + #10#13 +
    '                                     ma_gogek_phone.kind = ''3'') AS p_phone,                               '
    + #10#13 +
    '            (SELECT   TOP 1 phone                                                                   '
    + #10#13 +
    '                     FROM      ma_gogek_phone                                                               '
    + #10#13 +
    '                     WHERE   ma_gogek_phone.chart = ma_gogek_basic.chart AND                                '
    + #10#13 +
    '                                     ma_gogek_phone.kind = ''4'') AS p_phone2                               '
    + #10#13 +
    'FROM      dbo.ma_gogek_basic                                                                                ';

begin
  try
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_plan');
      Sql.Add('where id=0');
      Open;
      end;
      if Dm_f.SqlWork.FindField('PortionOrder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_plan');
      sql.add('ADD PortionOrder int');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jinsday') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart');
      sql.add('ADD jinsday datetime');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jinmday') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart');
      sql.add('ADD jinmday datetime');
      execsql;
      end;
      end;

      //ma_jubsu add Chair char(20) 2010.06.24
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chair') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD chair char(20)');
      execsql;
      end;
      end;
      //ma_panoset add columns  2010.06.24
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_panoset');
      Open;
      end;
      if Dm_f.SqlWork.FindField('regdate') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_panoset');
      sql.add('ADD regdate char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_panoset');
      Open;
      end;
      if Dm_f.SqlWork.FindField('moddate') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_panoset');
      sql.add('ADD moddate char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_panoset');
      Open;
      end;
      if Dm_f.SqlWork.FindField('moduser') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_panoset');
      sql.add('ADD moduser char(20)');
      execsql;
      end;
      end;

      //2010.07.12 ma_Sangdamitem에 danwi추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sangdamitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('danwi') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sangdamitem');
      sql.add('ADD danwi char(10)');
      execsql;
      end;
      end;

      //2010.07.12 ma_Sangdamitem에 txicon추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sangdamitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('txicon') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sangdamitem');
      sql.add('ADD txicon char(50)');
      execsql;
      end;
      end;

      //2010.07.14 ma_treatitem_chartlist_group에 iltu추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_treatitem_chartlist_group');
      Open;
      end;
      if Dm_f.SqlWork.FindField('iltu') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_treatitem_chartlist_group');
      sql.add('ADD iltu numeric(9,2)');
      execsql;
      end;
      end;
      //2010.07.14 ma_treatitem_chartlist_group에 ilsu추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_treatitem_chartlist_group');
      Open;
      end;
      if Dm_f.SqlWork.FindField('ilsu') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_treatitem_chartlist_group');
      sql.add('ADD ilsu numeric(9,2)');
      execsql;
      end;
      end;

      //2010.07.14 ma_treatitem_chartlist_group에 qty추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_treatitem_chartlist_group');
      Open;
      end;
      if Dm_f.SqlWork.FindField('qty') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_treatitem_chartlist_group');
      sql.add('ADD qty numeric(9,2)');
      execsql;
      end;
      end;
    }
    {
      //2010.07.14 jinryo_p에 chatid추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('ADD chartid bigint');
      execsql;
      end;
      end;

      //2010.07.14 jinryo_s에 chatid추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_s');
      sql.add('ADD chartid bigint');
      execsql;
      end;
      end;

      //2010.07.14 jinryo_o에 chatid추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_o');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('ADD chartid bigint');
      execsql;
      end;
      end;
    }
    {
      //2010.07.26 ma_chart_canal에 minCanal추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_canal');
      Open;
      end;
      if Dm_f.SqlWork.FindField('mincanal') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_canal');
      sql.add('ADD mincanal int');
      execsql;
      end;
      end;
      //2010.07.26 ma_chart_canal에 maxCanal추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_canal');
      Open;
      end;
      if Dm_f.SqlWork.FindField('maxcanal') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_canal');
      sql.add('ADD maxcanal int');
      execsql;
      end;
      end;

      //2010.07.26 ma_chart_canal에 minCanal추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_canal');
      Open;
      end;
      if Dm_f.SqlWork.FindField('crow') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_canal');
      sql.add('ADD crow int');
      execsql;
      end;
      end;

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('alter column kamkind char(20)');
      execsql;
      end;

      //2010.08.01 ma_tpCharge에 isbohum,wan1,wan2,wan3,wandate1, wandate2, wandate3추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isbohum') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD isbohum char(1)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('wan1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD wan1 int');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('wan2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD wan2 int');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('wan3') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD wan3 int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('wandate1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD wandate1 char(10)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('wandate2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD wandate2 char(10)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('wandate3') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD wandate3 char(10)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('doctor') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD doctor char(10)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('planremark') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD planremark char(250)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('hyunreceipt') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD hyunreceipt char(20)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('hyunnotice') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD hyunnotice char(1)');
      execsql;
      end;
      end;

      //2010.0803 ma_chart_detail 컬럼 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('price') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD price int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('dispcolor') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD dispcolor char(20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('txicon') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD txicon char(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('addcharting') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD addcharting char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('itemtype') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD itemtype char(10)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('cap') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD cap varchar(250)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nCnt') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD nCnt int');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_detail');
      Open;
      end;
      if Dm_f.SqlWork.FindField('su_key') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_detail');
      sql.add('ADD su_key char(20)');
      execsql;
      end;
      end;

      //ma_chart_item alarm add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('alarm') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD alarm char(20)');
      execsql;
      end;
      end;

      //ma_chart_item alarmoff add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('alarmoff') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD alarmoff char(20)');
      execsql;
      end;
      end;
      //ma_alarmlist chartid add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_alarmlist');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_alarmlist');
      sql.add('ADD chartid bigint');
      execsql;
      end;
      end;

      //ma_treatitem_Chartlist_group kind Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_treatitem_Chartlist_group');
      Open;
      end;
      if Dm_f.SqlWork.FindField('kind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_treatitem_Chartlist_group');
      sql.add('ADD kind char(1)');
      execsql;
      end;
      end;
    }
    {
      //ma_plantxitem   danwi Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_plantxitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('danwi') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_plantxitem');
      sql.add('ADD danwi char(1)');
      execsql;
      end;
      end;
      //ma_groupitem   danwi Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_groupitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('danwi') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_groupitem');
      sql.add('ADD danwi char(1)');
      execsql;
      end;
      end;
      //ma_chartitem   danwi Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('danwi') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD danwi char(1)');
      execsql;
      end;
      end;

      //ma_info_implant   fixture Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_info_implant');
      Open;
      end;
      if Dm_f.SqlWork.FindField('fixture') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_info_implant');
      sql.add('ADD fixture char(50)');
      execsql;
      end;
      end;
      //ma_gogek_basic  team Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('team') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD team char(10)');
      execsql;
      end;
      end;
      //ma_gogek_basic  doc Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('doc') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD doc char(10)');
      execsql;
      end;
      end;
      //ma_gogek_basic  hyg Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('hyg') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD hyg char(10)');
      execsql;
      end;
      end;

      //ma_sunap  useBohum Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('usebohum') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('ADD usebohum char(1)');
      execsql;
      end;
      end;
      //ma_chartitem  txicon2 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('txicon2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD txicon2 char(30)');
      execsql;
      end;
      end;

      //ma_chartitem   txicon2 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('txicon2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD txicon2 char(30)');
      execsql;
      end;
      end;
      //ma_chartitem   icogubun1 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('icogubun1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD icogubun1 char(1)');
      execsql;
      end;
      end;
      //ma_chartitem   icogubun2 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('icogubun2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD icogubun2 char(1)');
      execsql;
      end;
      end;

      //ma_chartitem   icopos1 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('icopos1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD icopos1 char(1)');
      execsql;
      end;
      end;

      //ma_chartitem   icopos2 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('icopos2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD icopos2 char(1)');
      execsql;
      end;
      end;

      //ma_chartitem   icoDepth1 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('icodepth1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD icodepth1 int');
      execsql;
      end;
      end;
      //ma_chartitem   icoDepth2 Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chartitem');
      Open;
      end;
      if Dm_f.SqlWork.FindField('icodepth2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chartitem');
      sql.add('ADD icodepth2 int');
      execsql;
      end;
      end;

      //ma_gogek_basic  refer_chart Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('refer_chart') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD refer_chart char(20)');
      execsql;
      end;
      end;

      //ma_gogek_basic  refer_name Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('refer_name') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD refer_name char(20)');
      execsql;
      end;
      end;

      //ma_gogek_group  gubun char(100) Alter
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_group');
      Open;
      end;
      if Dm_f.SqlWork.FindField('gubun') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_group');
      sql.add('alter column gubun char(100)');
      execsql;
      end;
      end;

      //ma_sawon_work SwSect Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('SwSect') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('ADD SwSect char(20)');
      execsql;
      end;
      end;

      //ma_info_oroantralW  buwi char(120) Alter
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_info_oroantralW');
      Open;
      end;
      if Dm_f.SqlWork.FindField('buwi') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_info_oroantralW');
      sql.add('alter column buwi char(120)');
      execsql;
      end;
      end;
      //ma_info_pith  buwi char(120) Alter
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_info_pith');
      Open;
      end;
      if Dm_f.SqlWork.FindField('buwi') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_info_pith');
      sql.add('alter column buwi char(120)');
      execsql;
      end;
      end;
      //ma_info_bochul  buwi char(120) Alter
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_info_bochul');
      Open;
      end;
      if Dm_f.SqlWork.FindField('buwi') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_info_bochul');
      sql.add('alter column buwi char(120)');
      execsql;
      end;
      end;

      //ma_gogek_basic  chamgo Add

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;

      if Dm_f.SqlWork.FindField('chamgo') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD chamgo char(200)');
      execsql;
      end;
      end;

      //ma_gogek_basic  chamgo Add

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_telrec');
      Open;
      end;

      if Dm_f.SqlWork.FindField('gubun') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_telrec');
      sql.add('ADD gubun char(1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do

      begin

      close;

      sql.clear;

      Sql.Add('Select top 1 *  from ma_info_bochul');

      Open;

      end;

      if Dm_f.SqlWork.FindField('seqcode') = nil then

      begin

      with Dm_f.SqlTemp do

      begin

      close;

      sql.clear;

      sql.add('alter table ma_info_bochul');

      sql.add('ADD seqcode int identity(1,1) not null');

      execsql;

      end;

      end;

      with Dm_f.SqlWork do

      begin

      close;

      sql.clear;

      Sql.Add('Select top 1 *  from ma_info_implant');

      Open;

      end;

      if Dm_f.SqlWork.FindField('seqcode') = nil then

      begin

      with Dm_f.SqlTemp do

      begin

      close;

      sql.clear;

      sql.add('alter table ma_info_implant');

      sql.add('ADD seqcode int identity(1,1) not null');

      execsql;

      end;

      end;

      with Dm_f.SqlWork do

      begin

      close;

      sql.clear;

      Sql.Add('Select top 1 *  from ma_info_implantRecall');

      Open;

      end;

      if Dm_f.SqlWork.FindField('seqcode') = nil then

      begin

      with Dm_f.SqlTemp do

      begin

      close;

      sql.clear;

      sql.add('alter table ma_info_implantRecall');

      sql.add('ADD seqcode int identity(1,1) not null');

      execsql;

      end;

      end;

      with Dm_f.SqlWork do

      begin

      close;

      sql.clear;

      Sql.Add('Select top 1 *  from ma_info_oroantralC');

      Open;

      end;

      if Dm_f.SqlWork.FindField('seqcode') = nil then

      begin

      with Dm_f.SqlTemp do

      begin

      close;

      sql.clear;

      sql.add('alter table ma_info_oroantralC');

      sql.add('ADD seqcode int identity(1,1) not null');

      execsql;

      end;

      end;

      with Dm_f.SqlWork do

      begin

      close;

      sql.clear;

      Sql.Add('Select top 1 *  from ma_info_oroantralW');

      Open;

      end;

      if Dm_f.SqlWork.FindField('seqcode') = nil then

      begin

      with Dm_f.SqlTemp do

      begin

      close;

      sql.clear;

      sql.add('alter table ma_info_oroantralW');

      sql.add('ADD seqcode int identity(1,1) not null');

      execsql;

      end;

      end;

      with Dm_f.SqlWork do

      begin

      close;

      sql.clear;

      Sql.Add('Select top 1 *  from ma_info_pith');

      Open;

      end;

      if Dm_f.SqlWork.FindField('seqcode') = nil then

      begin

      with Dm_f.SqlTemp do

      begin

      close;

      sql.clear;

      sql.add('alter table ma_info_pith');

      sql.add('ADD seqcode int identity(1,1) not null');

      execsql;

      end;

      end;

      //ma_Recall rcKind char(1)추가
      //recall = 1
      //happycall=2
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_recall');
      Open;
      end;

      if Dm_f.SqlWork.FindField('rckind') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_recall');
      sql.add('ADD [rckind] [char](1) NOT NULL CONSTRAINT [DF_ma_recall_rckind_1]  DEFAULT ((1))');
      execsql;
      end;
      end;
      //ma_gogek_pibo jongbyul altercolumn char(2)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_pibo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jongbyul') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_pibo');
      sql.add('alter column jongbyul char(2)');
      execsql;
      end;
      end;
    }
    // ma_sunap에 필드 추가

    { 현금영수증 관련 ma_sunap
      hyunyoungsu char(1)	발급여부 0:발급안함  1:발급
      hyunreceipt int		승인금액
      hyuncertno  char(30)    신분확인번호
      admitno     int		승인번호
      admitkind   char(1)	발행종류 0:소득공제 1:지출증빙 2:자진발급

    }
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;

      if Dm_f.SqlWork.FindField('hyuncertno') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('ADD [hyuncertno] [char](30) ');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;

      if Dm_f.SqlWork.FindField('admitno') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('ADD [admitno] [int] ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;

      if Dm_f.SqlWork.FindField('admitkind') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('ADD [admitkind] [char](1) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;

      if Dm_f.SqlWork.FindField('hyunreceipt_tong') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('ADD [hyunreceipt_tong] [float] ');
      execsql;
      end;
      end;

      //ma_basic bank bankname char(50) Alter
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_basic_bank');
      Open;
      end;
      if Dm_f.SqlWork.FindField('bankname') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_basic_bank');
      sql.add('alter column bankname char(50)');
      execsql;
      end;
      end;

      //MA_SUNAP_TONGPLAN에 현금영수증 관련 필드 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap_tongplan');
      Open;
      end;

      if Dm_f.SqlWork.FindField('hyuncertno') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_tongplan');
      sql.add('ADD [hyuncertno] [char](30) ');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap_tongplan');
      Open;
      end;

      if Dm_f.SqlWork.FindField('admitno') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_tongplan');
      sql.add('ADD [admitno] [int] ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap_tongplan');
      Open;
      end;

      if Dm_f.SqlWork.FindField('admitkind') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_tongplan');
      sql.add('ADD [admitkind] [char](1) ');
      execsql;
      end;
      end;
    }
    { //jinryo_o s_key1,2,3 altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_o');
      Open;
      end;
      if Dm_f.SqlWork.FindField('s_key1') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter column s_key1 char(8)');
      execsql;
      end;
      end;

      //jinryo_o s_key1,2,3 altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_o');
      Open;
      end;
      if Dm_f.SqlWork.FindField('s_key2') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter column s_key2 char(8)');
      execsql;
      end;
      end;
      //jinryo_o s_key1,2,3 altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_o');
      Open;
      end;
      if Dm_f.SqlWork.FindField('s_key3') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter column s_key3 char(8)');
      execsql;
      end;
      end;

      //wonwe_p sang1,2  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from wonwe_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang1') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('alter column sang1 char(8)');
      execsql;
      end;
      end;
      //wonwe_p sang1,2  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from wonwe_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang2') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('alter column sang2 char(8)');
      execsql;
      end;
      end;

      //groupcode  sang1,2,3,4,5  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from groupcode');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang1') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table groupcode');
      sql.add('alter column sang1 char(8)');
      execsql;
      end;
      end;

      //groupcode  sang1,2,3,4,5  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from groupcode');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang2') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table groupcode');
      sql.add('alter column sang2 char(8)');
      execsql;
      end;
      end;

      //groupcode  sang1,2,3,4,5  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from groupcode');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang3') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table groupcode');
      sql.add('alter column sang3 char(8)');
      execsql;
      end;
      end;
      //groupcode  sang1,2,3,4,5  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from groupcode');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang4') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table groupcode');
      sql.add('alter column sang4 char(8)');
      execsql;
      end;
      end;

      //groupcode  sang1,2,3,4,5  altercolumn char(8)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from groupcode');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang5') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table groupcode');
      sql.add('alter column sang5 char(8)');
      execsql;
      end;
      end;
    }
    // ma_gogek_basic  bontype  addtable
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('bontype') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD [bontype] [char](10) ');
      execsql;
      end;
      end;
      //ma_gogek_basic  janek  addtable
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('janek') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD [janek] [char](10) ');
      execsql;
      end;
      end;
    }
    { //suga  topprice addtable
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from suga');
      Open;
      end;
      if Dm_f.SqlWork.FindField('topprice') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('ADD [topprice] [int] ');
      execsql;
      end;
      end;
    }

    // ma_gogek_basic  bonsanjung Add    2011.11.9
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('bonsanjung') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD bonsanjung char(20)');
      execsql;
      end;
      end; }

    // ma_chart_s  fontkind  altercolumn char(60)
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('fontkind') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('alter column fontkind char(60)');
      execsql;
      end;
      end; }

    // imageinfo aKind  add int
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('aKind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add aKind int');
      execsql;
      end;
      end; }

    // ma_imgstorage aKind  add int
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_imgstorage');
      Open;
      end;
      if Dm_f.SqlWork.FindField('aKind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_imgStorage');
      sql.add('add aKind int');
      execsql;
      end;
      end; }

    // ma_chart_s richtext add image
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add richtext image');
      execsql;
      end;
      end; }

    // ma_chart_s isRich add char(1)
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isRich') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add isRich char(1)');
      execsql;
      end;
      end; }

    // ma_gogek_basic sms add char(1)
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sms') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add sms char(1)');
      execsql;
      end;
      end; }

    // ma_gogek_basic sms add char(1)
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from tempchart');
      Open;
      end;
      if Dm_f.SqlWork.FindField('tempYearChartno') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table tempchart');
      sql.add('add tempYearChartno char(20)');
      execsql;
      end;
      end; }

    // ma_promise pmemo varchar(100)
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pmemo') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('alter column pmemo varchar(100)');
      execsql;
      end;
      end; }

    // ma_telrec TelSeqCode add
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_telrec');
      Open;
      end;
      if Dm_f.SqlWork.FindField('telSeqCode') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_telrec');
      sql.add('add [telseqcode] [char](15)');
      execsql;
      end;
      end; }

    // ma_telrec TrCode alter
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select * from ma_telrec');
      Open;
      end;
      if Dm_f.SqlWork.FindField('TrCode') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_telrec');
      sql.add('alter column [TrCode] [char](15)');
      execsql;
      end;
      end; }

    // ma_recall pos add
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_recall');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pos') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_recall');
      sql.add('add [pos] [char](1)');
      execsql;
      end;
      end; }

    // ma_recall anotherid add
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_recall');
      Open;
      end;
      if Dm_f.SqlWork.FindField('anotherid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_recall');
      sql.add('add [anotherid] [bigint]');
      execsql;
      end;
      end; }

    // ma_promise sendedReserveSms add
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sendedReserveSms') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add [sendedReserveSms] [char](1)');
      execsql;
      end;
      end; }

    { with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('update ma_promise set team=''1'' ');
      sql.add('where team=''0''  ');
      execsql;
      end;
    }
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise_sulsik');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sulOrder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise_sulsik');
      sql.add('add [sulOrder] [int]');
      execsql;
      end;
      end; }

    // 2011.11.29
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isimage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [isimage] [char](1)');
      execsql;
      end;
      end; }

    // 2011.12.1
    { dm_f.SqlWork.Close;
      dm_f.SqlWork.sql.Clear;
      dm_f.SqlWork.sql.add('select * from ma_config where code=:su_key  ');
      dm_f.SqlWork.ParamByName('su_key').AsString := '0304';
      dm_f.SqlWork.Open;

      if dm_f.SqlWork.IsEmpty then
      begin

      dm_f.sqlTemp.Close;
      dm_f.sqlTemp.Sql.Clear;
      dm_f.sqlTemp.Sql.Add('insert into ma_config     ');
      dm_f.sqlTemp.Sql.Add('         (code,val,remark) values    ');
      dm_f.sqlTemp.Sql.Add('         (:code,:val,:remark)     ');
      dm_f.sqlTemp.ParamByname('code').AsString := '0304';
      dm_f.sqlTemp.ParamByname('val').AsString := '15,clWhite';
      dm_f.sqlTemp.ParamByname('remark').AsString := '차트 오늘 라인의 색지정';
      dm_f.sqlTemp.ExecSql;

      end; }

    // 2012.1.7
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('archwire') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [archwire] [char](50)');
      execsql;
      end;
      end;

      //2012.1.12
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('refer_neyuk') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add refer_neyuk  char(200)');
      execsql;
      end;
      end;
    }
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('refer_neyuk') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;
    }
    // 2012.1.31
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('archwire2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [archwire2] [char](50)');
      execsql;
      end;
      end;

      //ma_Chart_s portion varchar(200) 2012.2.6
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('alter column portion varchar(500)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('bonsanjung') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('alter column bonsanjung varchar(100)');
      execsql;
      end;
      end;

    }

    // todo:  idx_ma_chart_s에 chart가 종속되어서  alter column chart가 먹지 않음.
    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('alter column chart char(30)');
      execsql;
      end;
      end;
    }

    {
      //2012.2.7
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sms2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add [sms2] [char](1)');
      execsql;
      end;
      end;

      //개인정보동의 여부 저장
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('infosave') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add [infosave] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartSaveOk') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add [chartSaveOk] [char](1)');
      execsql;
      end;
      end;

      //2012.2.10   ha
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxcc');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxcc');
      sql.add('add [portion] [char](200)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxdent');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxdent');
      sql.add('add [portion] [char](200)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxmed');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxMed');
      sql.add('add [portion] [char](200)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxdesire');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxdesire');
      sql.add('add [portion] [char](200)');
      execsql;
      end;
      end;

      //------------------------------------------------------------------------------
      //2012.2.15
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_i');
      Open;
      end;
      if Dm_f.SqlWork.FindField('kind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_i');
      sql.add('add [kind] [char](2)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxcc');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxcc');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxdent');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxdent');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxmed');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxMed');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxdesire');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxdesire');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hximp');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hximp');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxpi');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxPi');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('team') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add [team] [char](10)');
      execsql;
      end;
      end;

      //2012.2.16
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxMed');
      Open;
      end;
      if Dm_f.SqlWork.FindField('seq') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxMed');
      sql.add('add [seq] [int] IDENTITY(1,1) NOT NULL');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxDent');
      Open;
      end;
      if Dm_f.SqlWork.FindField('seq') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxDent');
      sql.add('add [seq] [int] IDENTITY(1,1) NOT NULL');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxDesire');
      Open;
      end;
      if Dm_f.SqlWork.FindField('seq') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxDesire');
      sql.add('add [seq] [int] IDENTITY(1,1) NOT NULL');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_info_chiju');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_info_chiju');
      sql.add('add [chartid] [int]');
      execsql;
      end;
      end;

      //2012.3.27 치료계획서에 감면액추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('dcw') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add dcw int');
      execsql;
      end;
      end;

      //2012.3.29 txNew 에 컬럼추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from txNew');
      Open;
      end;
      if Dm_f.SqlWork.FindField('FontName') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add [FontName] [char](50) NULL');
      execsql;

      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add [FontColor] [char](50) NULL');
      execsql;

      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add [BackColor] [char](50) NULL');
      execsql;

      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add [FontSize] [char](50) NULL');
      execsql;

      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add [FontStyle] [char](50) NULL');
      execsql;
      end;
      end;
      //2012.4.5 치료계획서에 감면율추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('dcp') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add dcp int');
      execsql;
      end;
      end;

      //2012.4.6 예약에 메모입력자추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('memodam') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add memodam [varchar](10)');
      execsql;
      end;
      end;

      //2012.4.6 예약에 메모 size변경
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pmemo') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('alter column [pmemo] [text]');
      execsql;
      end;
      end;

      //2012.4.10
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_pgpower');
      Open;
      end;
      if Dm_f.SqlWork.FindField('tongID') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_pgpower');
      sql.add('add tongID [char](20)');
      execsql;
      end;
      end;

      //2012.5.29 인적에 특이사항 size변경
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chamgo') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('alter column [chamgo] [text]');
      execsql;
      end;
      end;
      //2012.08.29 사원에 nouse넣기
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sawon_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nouse') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_basic');
      sql.add('add [nouse] [nchar](1) not NULL CONSTRAINT [DF_ma_sawon_basic_nouse]  DEFAULT ((0)) ');
      execsql;
      end;
      end;

      //2012.7.1 인적에 틀니 등록번호 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('artTeeth1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add artTeeth1 [char](20)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add artTeeth2 [char](20)');
      execsql;
      end;
      end;

      //보호자1
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pname1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add [pname1] [varchar](30)');
      execsql;
      end;
      end;

      //보호자2
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pname2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add [pname2] [varchar](30)');
      execsql;
      end;
      end;

      //view_gogek  sms2, p_phone Add    2012.2.7
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sms2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('p_phone') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;

      //2012.7.1
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('artTeeth1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;

      //2012.9.13  예약에 modDay, modUser추가



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('moduser') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add moduser [char](20)');
      execsql;

      end;
      end;
      if Dm_f.SqlWork.FindField('modday') = nil then
      begin
      with Dm_f.SqlTemp do
      begin

      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add modday [datetime]');
      execsql;
      end;
      end;
      //ma_chart_scan에 folder2추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_scan');
      Open;
      end;
      if Dm_f.SqlWork.FindField('folder2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_scan');
      sql.add('add folder2 [varchar](250)');
      execsql;
      end;
      end;
      //ma_chart_scan에 folder2추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_scan');
      Open;
      end;
      if Dm_f.SqlWork.FindField('remark') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_scan');
      sql.add('add remark [varchar](250)');
      execsql;
      end;
      end;
      //ma_chart_scan에 folder2추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_rec');
      Open;
      end;
      if Dm_f.SqlWork.FindField('remark') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_rec');
      sql.add('add remark [varchar](250)');
      execsql;
      end;
      end;

      //ma_sawon_work에 regday추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('regday') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('add regday [datetime]');
      execsql;
      end;
      end;
      //ma_sawon_work에 modday추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('modday') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('add modday [datetime]');
      execsql;
      end;
      end;
      //ma_sawon_work에 Endday추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('endday') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('add endday [datetime]');
      execsql;
      end;
      end;
      //ma_sawon_work에 endTime 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('endtime') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('add endtime [varchar](5)');
      execsql;
      end;
      end;
      //ma_sawon_work에 sect추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sect') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('add sect [varchar](200)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_canal');
      Open;
      end;
      if Dm_f.SqlWork.FindField('seqcode') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_canal');
      sql.add('ADD seqcode int');
      execsql;
      end;
      end;

      //ma_chart_s  fontkind  addcolumn char(60)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartkind') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add column chartkind char(3)');
      execsql;
      end;
      end;

      //ma_chart_s  imgteeth  addcolumn image
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('imgTeeth') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add  [imgTeeth] [image]');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('etc1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [etc1] [char](50)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('cKind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [cKind] [char](10)');
      execsql;
      end;
      end;

      //ma_sawon_work SwDisp Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sawon_work');
      Open;
      end;
      if Dm_f.SqlWork.FindField('SwDisp') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_work');
      sql.add('ADD SwDisp char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sKind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add [sKind] [char](20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('youngsu_num') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add [youngsu_num] [int]');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('planprogress') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add planprogress int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      //ma_Chart_s archwire varchar(500)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('archwire') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('alter column archwire varchar(500)');
      execsql;
      end;
      end;
      //ma_Chart_s archwire2 varchar(500)
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('archwire2') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('alter column archwire2 varchar(500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nOrder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD nOrder int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from docSignHistory');
      Open;
      end;
      if Dm_f.SqlWork.FindField('save_date') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table docSignHistory');
      sql.add('ADD save_date char(17)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from docSignHistory');
      Open;
      end;
      if Dm_f.SqlWork.FindField('filename') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table docSignHistory');
      sql.add('ADD filename varchar(255)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_imgstorage');
      Open;
      end;
      if Dm_f.SqlWork.FindField('imgdate') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_imgstorage');
      sql.add('alter column imgdate varchar(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_imgstorage');
      Open;
      end;
      if Dm_f.SqlWork.FindField('treatkind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_imgstorage');
      sql.add('add treatkind char(3)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_imgstorage');
      Open;
      end;
      if Dm_f.SqlWork.FindField('treatorder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_imgstorage');
      sql.add('add treatorder int ');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_imgstorage');
      Open;
      end;
      if Dm_f.SqlWork.FindField('filedir') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_imgstorage');
      sql.add('add filedir char(255) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sunapek') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('add sunapek int ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pointX') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('add pointX int ');
      execsql;
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('add pointY int ');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sunapDay') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('add sunapDay char(10) ');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sunapNeyuk') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('add sunapNeyuk char(255) ');
      execsql;
      end;
      end;

      //ma_chart_scan에 kind추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_scan');
      Open;
      end;
      if Dm_f.SqlWork.FindField('kind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_scan');
      sql.add('add kind [varchar](1)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isChart') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD isChart char(1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isEmergency') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD isEmergency char(1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isJubsu') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD isJubsu char(1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isOut') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD isOut char(1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chamgo') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD chamgo char(250)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_team');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pr_gubun') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_team');
      sql.add('add [pr_gubun] [char](100)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_o');
      Open;
      end;
      if Dm_f.SqlWork.FindField('myunhu') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('ADD myunhu char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('except_code') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_s');
      sql.add('ADD except_code char(20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jungyul') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('ADD jungyul char(1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('qlfRestrictCd') = nil then   //체납 자격제한여부 01: 출국자격제한 02: 체납자격제한
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('ADD qlfRestrictCd char(2)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jinryoSort') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD jinryoSort char(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('planSort') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD planSort char(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('team') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD team char(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('id') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD id int IDENTITY(1,1) NOT NULL');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('monthGeumek') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD monthGeumek int  ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('monthly') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD monthly int  ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise_sulsik');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sulBunryu') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise_sulsik');
      sql.add('ADD sulBunryu char(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nosms') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add nosms [char](1)');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('f_color') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add f_color [char](30)');
      execsql;

      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('f_size') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add f_size [int]');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('f_bold') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add f_bold [char](1)');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('monthly') <> nil then
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('alter column monthly char(30)');
      execsql;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_telrec');
      Open;
      end;
      if Dm_f.SqlWork.FindField('trChart') <> nil then
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_telrec');
      sql.add('alter column trchart char(30)');
      execsql;
      end;

      //ma_gogek_basic  idno...old Chart    차트번호 변경시 기존차트번호 보여주기위해 필요
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('idno') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD idno char(30)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from sunapcard');
      Open;
      end;
      if Dm_f.SqlWork.FindField('team') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table sunapcard');
      sql.add('ADD team char(2)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_pibo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('name') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_pibo');
      sql.add('alter column name varchar(50)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('magam') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add magam char(1)');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_team');
      Open;
      end;
      if Dm_f.SqlWork.FindField('teamkind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_team');
      sql.add('add teamkind char(1)');
      execsql;
      end;
      end;

      //ms_sunap에 null이 있으면 합산이 안된다...
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('update ma_sunap set');
      sql.add('hyunreceipt=0 where hyunreceipt is null');
      execsql;
      close;
      sql.clear;
      sql.add('update ma_sunap set');
      sql.add('hyunreceipt_tong = 0 where hyunreceipt_tong is null');
      execsql;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('doc') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add doc varchar(10)');
      execsql;
      end;
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add doc_code varchar(10)'); //ma_swon_basic의 SaBun
      execsql;
      end;
      end;

      if Dm_f.SqlWork.FindField('tong2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add tong2 int');
      execsql;
      end;

      end;
      if Dm_f.SqlWork.FindField('bugase') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add bugase int');
      execsql;
      end;

      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('doc') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add doc varchar(10)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_o');
      Open;
      end;

      if Dm_f.SqlWork.FindField('sang1') <> nil then
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter column sang1 varchar(200)');
      execsql;
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter column sang2 varchar(200)');
      execsql;
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter column sang3 varchar(200)');
      execsql;
      end;





      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_picture');
      Open;
      end;
      if Dm_f.SqlWork.FindField('picpath') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_Picture');
      sql.add('add picpath varchar(250)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_hangmok_data');
      Open;
      end;
      if Dm_f.SqlWork.FindField('team') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_hangmok_data');
      sql.add('add team varchar(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_hangmok_data');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_hangmok_data');
      sql.add('alter column chart varchar(30)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_hangmok_data');
      Open;
      end;
      if Dm_f.SqlWork.FindField('doc') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_hangmok_data');
      sql.add('add doc varchar(20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap_bibo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sunapid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_bibo');
      sql.add('add sunapid int');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap_hangmok');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isbugase') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_hangmok');
      sql.add('add isbugase char(1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from sunapcard');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sunapid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table sunapcard');
      sql.add('add sunapid int');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('team') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add team char(20)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sms') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise');
      sql.add('add sms char(1)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_recall');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sms') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_recall');
      sql.add('add sms char(1)');
      execsql;
      end;
      end;







      //imageinfo imageGroup, ImageTag, ImageCap, ImageRemark 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('ImageGroup') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add imageGroup varchar(50)');
      execsql;
      end;
      end;
      if Dm_f.SqlWork.FindField('ImageTag') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add ImageTag varchar(100)');
      execsql;
      end;
      end;

      if Dm_f.SqlWork.FindField('ImageCap') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add ImageCap varchar(100)');
      execsql;
      end;
      end;
      if Dm_f.SqlWork.FindField('ImageRemark') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add ImageRemark varchar(250)');
      execsql;
      end;
      end;

      if Dm_f.SqlWork.FindField('ImageOrder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add ImageOrder int');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sms3') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('add [sms3] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_cash');
      Open;
      end;
      if Dm_f.SqlWork.FindField('JJichulHyunYoung') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_cash');
      sql.add('add [JJichulHyunYoung] [float] ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_basic_vip');
      Open;
      end;
      if Dm_f.SqlWork.FindField('cardno') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_basic_vip');
      sql.add('alter column [cardno] varchar(50) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_basic_vip');
      Open;
      end;
      if Dm_f.SqlWork.FindField('idno') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_basic_vip');
      sql.add('add  [idno] integer ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise_chair');
      Open;
      end;
      if Dm_f.SqlWork.FindField('smsContent') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_promise_chair');
      sql.add('add  [smsContent] varchar(250) ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_whisperlist');
      Open;
      end;
      if Dm_f.SqlWork.FindField('whisperdoc') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_whisperlist');
      sql.add('alter column [whisperdoc] text ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from wonwe_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('bibo') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('add  [bibo] char(1) ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from docSignHistory_text');
      Open;
      end;
      if Dm_f.SqlWork.FindField('fontcolor') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table docSignHistory_text');
      sql.add('add fontcolor char(20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from docSignHistory_text');
      Open;
      end;
      if Dm_f.SqlWork.FindField('fontSize') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table docSignHistory_text');
      sql.add('add fontSize int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from docSignHistory_text');
      Open;
      end;
      if Dm_f.SqlWork.FindField('fontName') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table docSignHistory_text');
      sql.add('add fontName char(20)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jubsu_time') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table   ma_jubsu');
      sql.add('add [jubsu_time] datetime ');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_config');
      Open;
      end;
      if Dm_f.SqlWork.FindField('val') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_config');
      sql.add('alter column [val] varchar(255) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_config');
      Open;
      end;
      if Dm_f.SqlWork.FindField('remark') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_config');
      sql.add('alter column [remark] varchar(255) ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_munjin ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('cap1') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_gogek_munjin ');
      sql.add('alter column [cap1] text ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_hangmok_data');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sunapid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_hangmok_data');
      sql.add('add sunapid int');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isSunapOnly') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add isSunapOnly char(1)');
      execsql;
      end;
      end;

      //ma_chart_s cKind 가 null이면 ''으로 만들어주자.
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('update ma_chart_s set  ');
      sql.add('ckind=''''       ');
      sql.add('where ckind is null');
      execsql;

      close;
      sql.clear;
      sql.add('update ma_sunap set  ');
      sql.add('skind=''''       ');
      sql.add('where skind is null');
      execsql;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from suga');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jejosa') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('add jejosa char(50)');
      execsql;
      end;
      end;

      if Dm_f.SqlWork.FindField('jejil') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('add jejil char(50)');
      execsql;
      end;
      end;
      if Dm_f.SqlWork.FindField('suibsa') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('add suibsa char(50)');
      execsql;
      end;
      end;
      if Dm_f.SqlWork.FindField('jungbun') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('add jungbun char(100)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('implTeeth1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic add implTeeth1 char(18)');
      sql.add('alter table ma_gogek_basic add implTeeth2 char(18)');
      sql.add('alter table ma_gogek_basic ADD implYoyang1 char(8)');
      sql.add('alter table ma_gogek_basic ADD implYoyang2 char(8)');
      execsql;

      end;
      end;

      //ma_gogek_basic  artYoyang Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('artYoyang1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD artYoyang1 char(20)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD artYoyang2 char(20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('origFilename') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add origFilename varchar(250)');
      execsql;
      end;
      end;





      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('choje') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  jinryo_p ');
      sql.add('alter column [chojae] Char(2) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chojae') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_sunap ');
      sql.add('alter column [chojae] Char(2) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from wonwe_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chojae') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('alter column chojae char(2)');
      execsql;
      end;
      end;

      //ma_chart_s 싸인데이터 추가...
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('signdata') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add signdata image');
      execsql;
      end;
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add signKind char(1)');
      execsql;
      end;
      end;


      //Portion 500으로 사이즈 업
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxCC');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxCC');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxPi');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxPi');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hximp');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hximp');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxPlan');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxPlan');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxDent');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxDent');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxDesire');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxDesire');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxMed');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxMed');
      sql.add('alter column [portion] [varchar](500)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxsRemark');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isImage') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxsRemark');
      sql.add('add [isImage] [char](1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxsRemark');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxsRemark');
      sql.add('add [portion] [char](500)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from tbreport');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sang') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table tbreport');
      sql.add('alter column [sang] [varchar](3000)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from tbreport');
      Open;
      end;
      if Dm_f.SqlWork.FindField('s_key3') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table tbreport');
      sql.add('alter column [s_key3] [char](7)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from tbreport');
      Open;
      end;
      if Dm_f.SqlWork.FindField('s_key4') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table tbreport');
      sql.add('alter column [s_key4] [char](7)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from tbreport');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table tbreport');
      sql.add('alter column [chart] [char](50)');
      execsql;
      end;
      end;

      {	[JT019_CK] [char](1) NULL,
      [JT017_CK] [char](1) NULL,
      [tjungCode] [char](10) NULL,
      [tjungNeyuk] [char](100) NULL
    }

    { with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from wonwe_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('JT019_CK') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('add  [JT019_CK] char(1) ');
      execsql;
      end;
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('add  [JT017_CK] char(1) ');
      execsql;
      end;
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('add  [tjungCode] char(10) ');
      execsql;
      end;
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('add  [tjungNeyuk] char(100) ');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from wonwe_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('tjungCode') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('add  [tjungCode] char(10) ');
      execsql;
      end;
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('add  [tjungNeyuk] char(100) ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dxhx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dxhx');
      sql.add('alter column   [chart] char(50) ');
      execsql;
      end;

      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_jubsu');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isCompany') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_jubsu');
      sql.add('ADD isCompany char(1)');
      execsql;
      end;
      end;




      //jinryo_p에 자동차 보험정보 연동필드 추가

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_p');
      Open;
      end;

      if Dm_f.SqlWork.FindField('car_id') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p add [car_id] [int] ');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin



      close;
      sql.clear;
      Sql.Add('Select top 1 * from gigong');
      Open;
      end;

      if Dm_f.SqlWork.FindField('p1') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table gigong add p1 [char](200) NULL ');
      execsql;
      close;
      sql.clear;
      sql.add('alter table gigong add p2 [char](200) NULL ');
      execsql;
      close;
      sql.clear;
      sql.add('alter table gigong add p3 [char](200) NULL ');
      execsql;
      close;
      sql.clear;
      sql.add('alter table gigong add p4 [char](200) NULL ');
      execsql;


      close;
      sql.clear;
      sql.add('alter table gigong add GDentCode [char](30) NULL ');
      execsql;

      close;
      sql.clear;
      sql.add('alter table gigong add GDentName [char](30) NULL ');
      execsql;

      close;
      sql.clear;
      sql.add('alter table gigong add GMakeTime [char](2) NULL ');
      execsql;

      close;
      sql.clear;
      sql.add('alter table gigong add GMakeMin [char](2) NULL ');
      execsql;

      close;
      sql.clear;
      sql.add('alter table gigong add GModelKind [char](20) NULL ');
      execsql;



      end;
      end;

      with Dm_f.SqlWork do
      begin

      close;
      sql.clear;
      Sql.Add('Select top 1 * from gigong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('GModelKind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table gigong add GModelKind [char](20) NULL ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin

      close;
      sql.clear;
      Sql.Add('Select top 1 * from gigong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('GBite') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table gigong add GBite [char](1) NULL ');
      execsql;
      end;
      with Dm_f.SqlTemp do   //대합치여부  Antagonist Teeth
      begin
      close;
      sql.clear;
      sql.add('alter table gigong add GAntagonistTeeth [char](1) NULL ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from gigong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('GModelKind') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  gigong');
      sql.add('alter column [GModelKind] char(20) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from gigong');
      Open;
      end;

      if Dm_f.SqlWork.FindField('SMakeTime') = nil then
      begin
      with Dm_f.SqlTemp do
      begin

      close;
      sql.clear;
      sql.add('alter table gigong add SMakeTime [char](2) NULL ');
      execsql;

      close;
      sql.clear;
      sql.add('alter table gigong add SMakeMin [char](2) NULL ');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from gigong');
      Open;
      end;

      if Dm_f.SqlWork.FindField('gShade') = nil then
      begin
      with Dm_f.SqlTemp do
      begin

      close;
      sql.clear;
      sql.add('alter table gigong add gShade [char](100) NULL ');
      execsql;


      end;
      end;


      with Dm_f.SqlWork do
      begin

      close;
      sql.clear;
      Sql.Add('Select top 1 * from txnew');
      Open;
      end;
      if Dm_f.SqlWork.FindField('charttag') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table txnew add chartTag [char](100) NULL ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin

      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartTag') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s add chartTag [char](100) NULL ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin

      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('satGasan') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p add satGasan [char](1) NULL ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('origFilename') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('alter column [origFilename] [char](250)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chartTagOrder') =  nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_Chart_s');
      sql.add('add  [chartTagOrder] [int]');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nowSmsSend') =  nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_promise');
      sql.add('add  [nowSmsSend] [char](1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('treatkind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add treatkind char(3)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('treatorder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add treatorder int ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_office');
      Open;
      end;
      if Dm_f.SqlWork.FindField('gubun') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_office');
      sql.add('add gubun char(10) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isAnother') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('add isAnother char(2) ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sms_manager');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chkPromise') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sms_manager');
      sql.add('add chkPromise char(1) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from Gigong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('portion') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('ALTER TABLE [dbo].[Gigong] ADD [portion] [nchar](1500) NULL');

      execsql;
      end;
      end;






      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from Gigong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('Gid') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('ALTER TABLE [dbo].[Gigong] ADD [Gid] [smallint] IDENTITY(1,1) NOT NULL');

      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('certID') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('ALTER TABLE [dbo].[ma_chart_s] ADD [certid] [bigint]');

      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_tpcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('akind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_tpcharge');
      sql.add('ADD akind char(1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('akind') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('ADD akind char(1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isFace') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('ADD isFace char(1)');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sawon_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jubsu_order') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_basic');
      sql.add('ADD jubsu_order int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sawon_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jubsu_use') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_basic');
      sql.add('ADD jubsu_use char(1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sGubun') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap');
      sql.add('add [sGubun] [char](20)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('foldername') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add [foldername] [char](255)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('upperfolder') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('add [upperfolder] [char](255)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sms_contents');
      Open;
      end;
      if Dm_f.SqlWork.FindField('content') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sms_contents');
      sql.add('alter column [content] [text]');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sms_picture');
      Open;
      end;
      if Dm_f.SqlWork.FindField('ext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sms_picture');
      sql.add('add [ext] [char](4)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sms_picture');
      Open;
      end;
      if Dm_f.SqlWork.FindField('memContent') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sms_picture');
      sql.add('add [memContent] [text]');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxSunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('modDay') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxSunap');
      sql.add('add [modDay] [datetime]');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxSunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxSunap');
      sql.add('add [richtext] [image]');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from txNew');
      Open;
      end;
      if Dm_f.SqlWork.FindField('id') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('alter column [id] [varchar](50)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from txNew');
      Open;
      end;
      if Dm_f.SqlWork.FindField('inUse')  = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add [inUse] [varchar](1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('43except')  = nil then  //제주4.3 제외(0 이면 제외)
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  jinryo_p');
      sql.add('add [43except] [varchar](1)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jin_time')  = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [jin_time] [nvarchar](10)');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isElastic')  = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add [isElastic] [nvarchar](1)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_promise_modify');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_promise_modify');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from cMemo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table cMemo');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;


      //          with Dm_f.SqlWork do
      //          begin
      //               close;
      //               sql.clear;
      //               Sql.Add('Select top 1 * from cust');
      //               Open;
      //          end;
      //          if Dm_f.SqlWork.FindField('ctchartno') <> nil then
      //          begin
      //               with Dm_f.SqlTemp do
      //               begin
      //                    close;
      //                    sql.clear;
      //                    sql.add('alter table cust');
      //                    sql.add('alter Column ctchartno [char](30)');
      //                    execsql;
      //
      //               end;
      //          end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sunap_tong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_tong');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sunap_sp');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_sp');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sunap_mf');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_mf');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from hxKam');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table hxKam');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from iconschart');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table iconschart');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sunap_totalcharge');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sunap_totalcharge');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_whisperList');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_whisperList');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_signdata');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from sunapcard');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table sunapcard');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from sunaptong');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table sunaptong');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from suga');
      Open;
      end;
      if Dm_f.SqlWork.FindField('su_kor_name') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('alter Column su_kor_name [nVarchar](250)');
      execsql;

      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from suga_history');
      Open;
      end;
      if Dm_f.SqlWork.FindField('su_kor_name') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga_history');
      sql.add('alter Column su_kor_name [nVarchar](250)');
      execsql;

      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_m');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_m');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from sunapcard');
      Open;
      end;
      if Dm_f.SqlWork.FindField('cardek') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table sunapcard');
      sql.add('alter Column cardek [int] ');
      execsql;

      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_sawon_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jubsu_cap') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sawon_basic');
      sql.add('add jubsu_cap char(50) ');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_s ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('su_kor_name') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_s ');
      sql.add('alter column [su_kor_name] varChar(250) ');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_OrthoFirst ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('planDiff') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_OrthoFirst ');
      sql.add('add [planDiff] nChar(1) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_OrthoFirst ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('AnchorDiff') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_OrthoFirst ');
      sql.add('add [AnchorDiff] nChar(1) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_OrthoFirst ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('ald2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_OrthoFirst ');
      sql.add('add [ald2] int ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_chart_Mno ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('id') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_Mno ');
      sql.add('add [id] int IDENTITY(1,1) NOT NULL');
      execsql;
      end;
      end;





      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from jinryo_s');
      open;
      end;
      if Dm_f.SqlWork.FindField('except_code') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_s');
      sql.add('ADD except_code char(20)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from jinryo_p');
      open;
      end;
      if Dm_f.SqlWork.FindField('jungyul') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('ADD jungyul char(1)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from jinryo_p');
      open;
      end;
      if Dm_f.SqlWork.FindField('jangegigeum') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('ADD jangegigeum int');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from wonwe_p');
      open;
      end;
      if Dm_f.SqlWork.FindField('tjungCode') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('ADD tjungCode char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from wonwe_p');
      open;
      end;
      if Dm_f.SqlWork.FindField('tjungNeyuk') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('ADD tjungNeyuk char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from wonwe_s');
      open;
      end;
      if Dm_f.SqlWork.FindField('tjungCode') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('ADD tjungCode char(10)');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from wonwe_s');
      open;
      end;
      if Dm_f.SqlWork.FindField('tjungNeyuk') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_s');
      sql.add('ADD tjungNeyuk char(10)');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_telrec ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('telseqcode') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_telrec ');
      sql.add('alter column [telseqcode] Char(100) ');
      execsql;
      end;
      end;




      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('tjung') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p ');
      sql.add('alter column [tjung] Char(30) ');
      execsql;
      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from jinryo_p ');
      Open;
      end;
      if Dm_f.SqlWork.FindField('bontype') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p ');
      sql.add('alter column [bontype] Char(10) ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin

      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('k_number') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p add k_number [varchar](20) NULL ');
      execsql;
      close;
      sql.clear;
      sql.add('alter table jinryo_p add piboname [varchar](50) NULL ');
      execsql;
      close;
      sql.clear;
      sql.add('alter table jinryo_p add kiho [varchar](20) NULL ');
      execsql;
      end;
      end;

      //ma_chart_s에 isNotice추가  공지사항인가 확인 1= true
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_chart_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isNotice') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_chart_s');
      sql.add('add isNotice [varchar](1)');
      execsql;
      end;
      end;

      //ma_gogek_picture 에 rot추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_gogek_picture');
      Open;
      end;
      if Dm_f.SqlWork.FindField('rot') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_picture');
      sql.add('add rot int');
      execsql;
      end;
      end;


      { //ToDo: index있어서 Column길이 변화 안됨
      //ToDo: 차트번호 13자리 이상이면 개별적으로 연결해서 업데이트 해줘야함
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_s');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_s');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from jinryo_o');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table jinryo_o');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;
    }
    { //ToDo: index있어서 Column길이 변화 안됨
      //ToDo: 차트번호 13자리 이상이면 개별적으로 연결해서 업데이트 해줘야함
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from wonwe_p');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table wonwe_p');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;





      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from chk_list');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chart') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table chk_list');
      sql.add('alter Column chart [char](30)');
      execsql;

      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxSremark');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxSremark');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxCC');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxCC');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxMed');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxMed');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxDent');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxDent');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxDesire');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxDesire');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxPi');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxPi');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxImp');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxImp');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxPlan');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxPlan');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from hxSunap');
      Open;
      end;
      if Dm_f.SqlWork.FindField('richtext') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  hxSunap');
      sql.add('add [richtext] image ');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from ma_sms_sendlist');
      Open;
      end;
      if Dm_f.SqlWork.FindField('sbContent') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_sms_sendlist');
      sql.add('alter Column sbContent [varChar](2000)');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from txNew');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isGroup') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table txNew');
      sql.add('add isGroup [varChar](1)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from dtx');
      Open;
      end;
      if Dm_f.SqlWork.FindField('isGroup') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table dtx');
      sql.add('add isGroup [varChar](1)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from signData');
      Open;
      end;
      if Dm_f.SqlWork.FindField('kind') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signData');
      sql.add('alter Column kind [varChar](30)');
      execsql;

      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from signData');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nOrd') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signData');
      sql.add('add nOrd integer DEFAULT ((0))');
      execsql;

      end;
      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from suga where su_key = ''UA302'' ');
      Open;

      if   fieldByName('su_gu1').AsString <>  '2' then
      begin

      close;
      sql.clear;
      sql.add('update suga set');
      sql.add('su_gu1 =''2'' , su_gu2=''1'' , su_gu3=''24'' ');
      sql.add('where su_key like ''UA3%'' ');
      execsql;


      end;

      end;





      //자릿수 초과 오류가 나서 특별히 아래로 이동해서 처리
      //remark의 자릿수를 늘려서 해결...됐을까?  2014.07.24
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('remark') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_promise');
      sql.add('alter column [remark] varchar(300) ');
      execsql;
      end;



      end;

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('JohoiDate') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('ALTER TABLE [ma_gogek_basic] ADD [JohoiDate] [char](10)');
      execsql;
      end;
      end;

      if Dm_f.SqlWork.FindField('ManageEnd') = nil then
      begin

      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('ALTER TABLE [ma_gogek_basic] ADD [ManageEnd] [varchar](50)');
      execsql;

      close;
      sql.clear;
      sql.add('ALTER TABLE [ma_gogek_basic] ADD [SunKiho] [varchar](50)');
      execsql;

      close;
      sql.clear;
      sql.add('ALTER TABLE [ma_gogek_basic] ADD [SunKiho1] [varchar](50)');
      execsql;

      close;
      sql.clear;
      sql.add('ALTER TABLE [ma_gogek_basic] ADD [SunKiho2] [varchar](50)');
      execsql;

      close;
      sql.clear;
      sql.add('ALTER TABLE [ma_gogek_basic] ADD [SunKiho3] [varchar](50)');
      execsql;
      end;



      end;













      //자릿수 초과 오류가 나서 특별히 아래로 이동해서 처리
      //remark의 자릿수를 늘려서 해결...됐을까?  2014.07.24
      {          with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_promise');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pos') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table  ma_promise');
      sql.add('alter column [pos] char(2) ');
      execsql;
      end;
      end;



      //view_gogek column Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('jungno43') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;
    }

    {

      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from suga');
      open;
      end;
      if Dm_f.SqlWork.FindField('su_gu1') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('alter column su_gu1 char(2)');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from suga');
      open;
      end;
      if Dm_f.SqlWork.FindField('su_gu2') <> nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table suga');
      sql.add('alter column su_gu2 char(2)');
      execsql;
      end;
      end;



      //임산부 확인 필드 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('pregnan') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD pregnan char(1)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table jinryo_p');
      sql.add('ADD pregnan char(1)');
      execsql;



      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chaSangNo') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD chaSangNo char(100)');
      execsql;

      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from ma_gogek_basic');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nameEng') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table ma_gogek_basic');
      sql.add('ADD nameEng varChar(100)');
      execsql;

      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('chaSangNo') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;

      //view_gogek column Add
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 * from view_gogek');
      Open;
      end;
      if Dm_f.SqlWork.FindField('nameEng') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      Sql.text := alterview;
      execsql;
      end;
      end;


      //signData  보호자명, 생년월일 , 연락처, 법적관계 추가
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('parentName') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('ADD parentName varchar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('ADD lawRelation varchar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('ADD phone varchar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('ADD Parentjumin varchar(50)');
      execsql;



      end;
      end;
      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from signdata');
      Open;
      end;
      if Dm_f.SqlWork.FindField('signdata2') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table signdata');
      sql.add('ADD signdata2 image');
      execsql;


      end;
      end;



      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from imageinfo');
      Open;
      end;
      if Dm_f.SqlWork.FindField('Rot') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table imageinfo');
      sql.add('ADD Rot Integer  DEFAULT 0');
      execsql;
      end;
      end;


      with Dm_f.SqlWork do
      begin
      close;
      sql.clear;
      Sql.Add('Select top 1 *  from KindImageChart');
      Open;
      end;
      if Dm_f.SqlWork.FindField('inUse') = nil then
      begin
      with Dm_f.SqlTemp do
      begin
      close;
      sql.clear;
      sql.add('alter table KindImageChart');
      sql.add('ADD inUse char(1)');
      execsql;


      end;
      end;
    }

    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('Select top 1 *  from ma_gogek_basic');
      open;
    end;
    if dm_f.SqlWork.FindField('NameEng') = nil then
    begin
      with dm_f.sqlTemp do
      begin
        close;
        sql.clear;
        sql.add('alter table ma_gogek_basic');
        sql.add('ADD NameEng nvarchar(50)');
        execsql;

      end;
    end;

  except
    on E: Exception do
    begin
      showmessage(E.Message);
      // exit;
    end;

  end;

end;

procedure insertDefaultData;
const

  SQL_INSERT_DATA = 'INSERT INTO ma_basic           ' +
    ' (Code, disp,val, remark, sortorder, inuse, modauthority, regday, reguser,modday, moduser)    '
    + ' VALUES                         ' +
    ' (%S, %S, %S, %S, %S ,%S, %S, %S, %S, %S, %S)                ';
var
  isGo: boolean;

begin
  {
    with DM_f.sqlWork do
    begin
    close;
    sql.Clear;
    sql.add('select * from ma_basic');
    sql.add('where code=''039000'' ');
    if isEmpty then
    isGo := true
    else
    isGo := false;
    end;
    if isGo = true then
    begin
    with DM_f.sqlWork do
    begin
    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, QuotedStr('039000'), QuotedStr('상담상태'), QuotedStr(''), QuotedStr('1'), QuotedStr('0'), QuotedStr('1'), QuotedStr('1'), QuotedStr('20100603'), QuotedStr('inter'), QuotedStr('20100603'));//, QuotedStr('inter'));
    ExecSQL;
    {
    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', 'CC해결', '1', '1', '1', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '초기치료중', '2', '1', '2', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '상담대기', '3', '1', '3', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '1 차설명', '4', '1', '4', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '의뢰중', '5', '1', '5', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '결정대기', '6', '1', '6', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '부분확정', '7', '1', '7', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '확정완료', '8', '1', '8', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '계획삭제', '9', '1', '9', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    close;
    sql.Clear;
    SQL.Text := Format(SQL_INSERT_DATA, '039000', '계획취소', '10', '1', '10', '1', '1', '20100603', 'inter', '20100603', 'inter');
    ExecSQL;

    end;
    end;

  }
end;

function LoadVipNumber(VarChart: string): string;
var
  varMaxNo: integer;
begin
  result := '';

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic_vip');
    sql.add('where Chart=:chart ');
    paramByname('Chart').asstring := VarChart;
    open;
    if not isEmpty then
    begin
      result := fieldByName('CardNo').asstring;
      exit;
    end;
  end;

  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear; // isNull(Max(nOrder), 0 )
    sql.add('select isNull(max(idno), 0) as maxCardNo  from  ma_basic_vip');
    open;
    varMaxNo := fieldByName('maxCardNo').asinteger + 1;
  end;
  result := FormatFloat('000000', varMaxNo);

end;

procedure SaveVipNumber(VarChart, idno, vipnumber: string);
// vip카드를 발급한 후 발급내역을 쓰자...
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic_vip');
    sql.add('where Chart=:chart ');
    paramByname('Chart').asstring := VarChart;
    open;
    if isEmpty then
    begin
      close;
      sql.clear;
      sql.add('insert into ma_basic_vip');
      sql.add('(Chart, cardNo,idno, regDate) values');
      sql.add('(:Chart, :cardNo,:idno, :regDate)');
      paramByname('Chart').asstring := VarChart;
      paramByname('CardNo').asstring := vipnumber;
      paramByname('idNo').asinteger := strtoint(idno);
      paramByname('regDate').asstring := formatdatetime('YYYY-MM-DD', now);
      execsql;
    end
    else
    begin
      close;
      sql.clear;
      sql.add('update ma_basic_vip set');
      sql.add('cardNo=:CardNo, IdNo=:IdNo,  regDate=:regDate');
      sql.add('where Chart=:chart');
      paramByname('Chart').asstring := VarChart;
      paramByname('CardNo').asstring := vipnumber;
      paramByname('idNo').asinteger := strtoint(idno);
      paramByname('regDate').asstring := formatdatetime('YYYY-MM-DD', now);
      execsql;
    end;
  end;

end;

function UpdatePromiseCPhone(idn: integer; VarChart: string;
  varcphone: string): boolean;
const
  sqlUpdatePromiseCPhone = 'Update ma_promise set tel=:tel where chart=:chart';
  // and pday>=:pday';
  sqlUpdatePromiseCPhone_idn = 'Update ma_promise set tel=:tel where idn=:idn';
  // and pday>=:pday';
begin
  result := false;
  if VarChart <> '' then
  begin
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.text := sqlUpdatePromiseCPhone;
      paramByname('tel').asstring := varcphone;
      paramByname('chart').asstring := VarChart;
      // 날짜 상관없이 모든 전화번호 변경
      // ParamByname('pday').AsString := formatDateTime('YYYY-MM-DD', now);
      execsql;
      result := true;
    end;
  end
  else
  begin
    with dm_f.SqlWork do // 신환인 경우는 아이디로 그 예약의 전화번호만 변경
    begin
      close;
      sql.clear;
      sql.text := sqlUpdatePromiseCPhone_idn;
      paramByname('tel').asstring := varcphone;
      paramByname('idn').asinteger := idn;
      // 날짜 상관없이 모든 전화번호 변경
      // ParamByname('pday').AsString := formatDateTime('YYYY-MM-DD', now);
      execsql;
      result := true;
    end;
  end;
end;

function UpdatePromiseNewRegi(varIdn: string; VarChart: string): boolean;
const
  sqlUpdatePromiseNewRegi =
    'Update ma_promise set chart=:chart where idn=:idn ';
begin
  result := false;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlUpdatePromiseNewRegi;
    paramByname('chart').asstring := VarChart;
    paramByname('idn').asstring := varIdn;
    execsql;
    result := true;
  end;
end;

function isNewPatient(VarChart: string): boolean;
const
  sqlSelect = 'select * from  ma_gogek_basic where chart=:chart ';
begin
  result := true;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := sqlSelect;
    paramByname('chart').asstring := VarChart;
    open;
    result := isEmpty;
  end;
end;

function LoadPatientGroupData(VarChart: string; delimiter: string = '/')
  : TstringList; // 환자구분
var
  varComponentCount: integer;
  varResult: string;
begin
  result := TstringList.Create;

  varResult := '';

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_gogek_group');
    sql.add('where Chart=:chart');
    paramByname('Chart').asstring := VarChart;
    open;

    if not isEmpty then
    begin
      while not eof do
      begin
        // if varResult <> '' then
        // varResult:=  varResult+ delimiter + // + #10#13 +
        // fieldByName('gubun').asString
        // else
        // varResult :=
        // fieldByName('gubun').asString;

        result.add(fieldByName('gubun').asstring);

        Next;
      end;
    end;
  end;
  // result:=  varResult;
end;

function LoadPatientSectFromChart_s(VarChart: string): string; // 진료구분
var
  varResult: string;
begin
  result := '';
  varResult := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select  top 1 * from ma_chart_s              ');
    sql.add('where charttag <> :chartTag  and Chart=:chart');
    sql.add('order by  jin_day desc,  charttagOrder desc                 ');
    paramByname('Chart').asstring := VarChart;
    paramByname('ChartTag').asstring := '';
    open;

    if not isEmpty then
    begin
      if fieldByName('charttag').asstring = 'Check Stop' then
        varResult := '디본딩'
      else
        varResult := fieldByName('charttag').asstring;

    end
    else
      varResult := '';

  end;
  result := varResult;
end;

function LoadPatientStatusFromChart_s(VarChart, varJinday: string): string;
// 진료상태
var
  varResult: string;
begin
  result := '';
  varResult := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add(' select chart from ma_promise   ');
    sql.add('where  Chart=:chart and pday > :Pday ');
    sql.add('order by  pday desc');
    paramByname('Chart').asstring := VarChart;
    paramByname('pDay').asstring := varJinday;
    open;

    if not isEmpty then
    begin

      varResult := '치료중';

    end
    else
      varResult := '치료중단';

  end;
  result := varResult;
end;

function PatientDeleteAll(VarChart: string; deleteKind: integer = 0): boolean;
begin
  result := true;
  ExceptLogging('Delete start' + VarChart);
  try
    dm_f.uniConnection1.StartTransaction;
    with dm_f.SqlWork do
    begin

      if deleteKind = 0 then // 0: 모두 다 지운다. 1: 환자정보는 놔둔다.  2:수납정보만 지운다.
      begin
        close;
        sql.clear;
        sql.add('Delete from ma_gogek_basic');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        // close;
        // SQL.Clear;
        // Sql.Add('Delete from ma_gogek_pibo');
        // Sql.Add('where chart=:chart');
        // paramByName('chart').asString:=varChart;
        // ExecSQl;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_remark');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        // close;
        // SQL.Clear;
        // Sql.Add('Delete from ma_gogek_refer');
        // Sql.Add('where chart=:chart');
        // paramByName('chart').asString:=varChart;
        // ExecSQl;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_referer');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_phone');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_office');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_munjin');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_group');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_email');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_donggi');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_allow');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_address');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;

        close;
        sql.clear;
        sql.add('Delete from ma_gogek_picture');
        sql.add('where chart=:chart');
        paramByname('chart').asstring := VarChart;
        execsql;
      end;

      close;
      sql.clear;
      sql.add('Delete from hxsremark');
      sql.add('where srchart=:srchart');
      paramByname('srChart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from hxCC');
      sql.add('Where CCchart= :CCChart');
      paramByname('CCChart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from hxMed');
      sql.add('Where Medchart= :MedChart');
      paramByname('MedChart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from hxDent');
      sql.add('Where Dchart= :DChart');
      paramByname('DChart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from hxDesire');
      sql.add('Where Dschart= :DsChart');
      paramByname('DsChart').asstring := VarChart;
      execsql;

      // ===========================================================
      // 수납내역 삭제
      close;
      sql.clear;
      sql.add('delete from ma_sunap');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from sunapCard');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_bibo');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_mf');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_kind');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_plan');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_tong');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_totalcharge');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_mf');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;
      // 수납내역 삭제
      // ==========================================================

      close;
      sql.clear;
      sql.add('delete from ma_chart_s');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from docSignHistory');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from docSignHistory_text');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      // ==========================================================
      // 상담내역 삭제
      close;
      sql.clear;
      sql.add('delete from dtx');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_tpcharge');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;
      // 상담내역 삭제
      // ==========================================================

      close;
      sql.clear;
      sql.add('delete from ma_jubsu');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_promise');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_recall');
      sql.add('Where rcchart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from  ma_sms_sendlist');
      sql.add('Where sbchart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      dm_f.uniConnection1.Commit;
      ExceptLogging('Delete success' + VarChart);

    end;
  except
    on E: Exception do
    begin
      result := false;
      dm_f.uniConnection1.Rollback;
      showmessage(E.Message + ' [삭제오류]');
    end;

  end;
end;

function PatientDelete_sunap(VarChart: string): boolean;
begin
  result := true;
  try
    dm_f.uniConnection1.StartTransaction;
    with dm_f.SqlWork do
    begin

      // ===========================================================
      // 수납내역 삭제
      close;
      sql.clear;
      sql.add('delete from ma_sunap');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from sunapCard');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_bibo');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_mf');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_kind');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_plan');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_tong');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_totalcharge');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_sunap_mf');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;
      // 수납내역 삭제
      // ==========================================================

      dm_f.uniConnection1.Commit;

    end;
  except
    on E: Exception do
    begin
      result := false;
      dm_f.uniConnection1.Rollback;
      showmessage(E.Message + ' [수납내역 삭제오류]');
    end;

  end;
end;

function PatientDelete_chart(VarChart: string): boolean;
begin
  result := true;
  try
    dm_f.uniConnection1.StartTransaction;
    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add('delete from ma_chart_s');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      dm_f.uniConnection1.Commit;

    end;
  except
    on E: Exception do
    begin
      result := false;
      dm_f.uniConnection1.Rollback;
      showmessage(E.Message + ' [Chart 삭제오류]');
    end;

  end;
end;

function PatientDelete_plan(VarChart: string): boolean;
begin
  result := true;
  try
    dm_f.uniConnection1.StartTransaction;
    with dm_f.SqlWork do
    begin

      // ==========================================================
      // 상담내역 삭제
      close;
      sql.clear;
      sql.add('delete from dtx');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;

      close;
      sql.clear;
      sql.add('delete from ma_tpcharge');
      sql.add('Where chart= :Chart');
      paramByname('Chart').asstring := VarChart;
      execsql;
      // 상담내역 삭제
      // ==========================================================

      dm_f.uniConnection1.Commit;

    end;
  except
    on E: Exception do
    begin
      result := false;
      dm_f.uniConnection1.Rollback;
      showmessage(E.Message + ' [Plan 삭제오류]');
    end;

  end;
end;

procedure insertInsurenceCode;
begin
  // ver.2.148 ma_carinsu_co에 보험사 목록 insert

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_carinsu_co');
    open;
    first;
    if fieldByName('code').asstring = '' then
    begin
      close;
      sql.clear;
      sql.add('insert ma_carinsu_co (code, insu_name) values (''01'', ''메리츠화재해상보험''); ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''02'', ''한화손해보험'');       ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''03'', ''롯데손해보험'');       ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''04'', ''MG손해보험'');         ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''05'', ''흥국화재해상보험'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''08'', ''삼성화재해상보험'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''09'', ''현대해상화재보험'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''10'', ''LIG손해보험'');        ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''13'', ''동부화재해상보험'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''17'', ''AIG손해보험'');        ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''21'', ''전국택시공제조합'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''22'', ''전국버스공제조합'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''23'', ''전국화물자동차공제조합'');');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''24'', ''전국개인택시공제조합'');  ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''25'', ''전국전세버스공제조합'');  ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''30'', ''전국렌터카공제'');     ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''41'', ''AXA손해보험'');        ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''42'', ''The-K손해보험'');      ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''43'', ''ERGO다음다이렉트손해보험'');   ');
      sql.add('insert ma_carinsu_co (code, insu_name) values (''45'', ''현대하이카다이렉트손해보험''); ');
      execsql;
    end;
  end;
end;

function SMSManagerUpdate(VarChart: string): boolean;
const
  sqlSelect = ' select * from   [ma_sms_manager]  ' + #10#13 +
    ' where chart = :chart and  [noSms] <> :noSms     ';

  sqlUpdate2 = ' Update   [ma_sms_manager]  set' + #10#13 +
    '          [noSms]    =  :noSms                           ' + #10#13 +
    '         ,[stopDay]  =  :stopDay                         ' + #10#13 +
    '         ,[remark]   =  :remark                         ' + #10#13 +
    '         where chart=:chart                                    ';
begin
  result := true;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.text := sqlSelect;
      paramByname('chart').asstring := VarChart;
      paramByname('noSms').asstring := '1'; // stopManage;
      open;
      if not isEmpty then
      begin

      end
      else
      begin

      end;

      close;
      sql.text := sqlUpdate2;
      paramByname('chart').asstring := VarChart;
      paramByname('noSms').asstring := '1'; // stopManage;
      paramByname('stopDay').asstring := formatdatetime('YYYY-MM-DD', now);
      paramByname('remark').asstring := '[자동해제]' + formatdatetime('YYYY-MM-DD',
        now) + ' 내원함';
      execsql;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('[update sms_manaber]' + E.Message);
      result := false;

    end;

  end;

end;

procedure DobuneNewonSave(VarChart: string; varday: string; varKind: string);

const
  sqlinsert_h2 = 'INSERT INTO [tb_ha010]         ' + #10#13 +
    '  ([ACPT_DAT]                  ' + #10#13 +
    ' ,[ACPT_SEQ]                   ' + #10#13 +
    ' ,[ACPT_DIV]                   ' + #10#13 +
    ' ,[PNT_ID]                     ' + #10#13 +
    ' ,[DOCT_ID]                    ' + #10#13 +
    ' ,[RSV_DAT]                    ' + #10#13 +
    ' ,[RSV_CLC]                    ' + #10#13 +
    ' ,[PNT_NEWOLD]                 ' + #10#13 +
    ' ,[INSUR_DIV]                  ' + #10#13 +
    ' ,[TREAT_START]                ' + #10#13 +
    ' ,[TREAT_ENT]                  ' + #10#13 +
    ' ,[CHAIR_NO] ) values          ' + #10#13 + ' (:ACPT_DAT                  '
    + #10#13 + ' ,:ACPT_SEQ                    ' + #10#13 +
    ' ,:ACPT_DIV                    ' + #10#13 +
    ' ,:PNT_ID                      ' + #10#13 +
    ' ,:DOCT_ID                     ' + #10#13 +
    ' ,:RSV_DAT                     ' + #10#13 +
    ' ,:RSV_CLC                     ' + #10#13 +
    ' ,:PNT_NEWOLD                  ' + #10#13 +
    ' ,:INSUR_DIV                   ' + #10#13 +
    ' ,:TREAT_START                 ' + #10#13 +
    ' ,:TREAT_ENT                   ' + #10#13 + ' ,:CHAIR_NO)';
  sqlinsert_hanaro = 'INSERT INTO [tb_accept] ' + #10#13 +
    '  ([ACPT_DAT]                  ' + #10#13 +
    ' ,[ACPT_SEQ]                   ' + #10#13 +
    ' ,[ACPT_DIV]                   ' + #10#13 +
    ' ,[PNT_ID]                     ' + #10#13 +
    ' ,[DOCT_ID]                    ' + #10#13 +
    ' ,[RSV_DAT]                    ' + #10#13 +
    ' ,[RSV_CLC]                    ' + #10#13 +
    ' ,[PNT_NEWOLD]                 ' + #10#13 +
    ' ,[INSUR_DIV]                  ' + #10#13 +
    ' ,[TREAT_START]                ' + #10#13 +
    ' ,[TREAT_ENT]                  ' + #10#13 +
    ' ,[CHAIR_NO] ) values          ' + #10#13 + ' (:ACPT_DAT                  '
    + #10#13 + ' ,:ACPT_SEQ                    ' + #10#13 +
    ' ,:ACPT_DIV                    ' + #10#13 +
    ' ,:PNT_ID                      ' + #10#13 +
    ' ,:DOCT_ID                     ' + #10#13 +
    ' ,:RSV_DAT                     ' + #10#13 +
    ' ,:RSV_CLC                     ' + #10#13 +
    ' ,:PNT_NEWOLD                  ' + #10#13 +
    ' ,:INSUR_DIV                   ' + #10#13 +
    ' ,:TREAT_START                 ' + #10#13 +
    ' ,:TREAT_ENT                   ' + #10#13 + ' ,:CHAIR_NO)';

var
  varMaxvisitid: string;
  varID: string;
  varFirst: string;
  varTeam: string;
  varjumin: string;
  varArea: string;
  varChoje: string;
  varname: string;
begin
  // Dm_f.zConnection.StartTransaction;
  try
    with dm_f.SqlAnother3 do
    begin
      close;
      sql.clear;
      if varKind = '1' then // H2
        sql.add('select (isNull(max(ACPT_SEQ),0)+1) as MaxID from tb_ha010')
      else if varKind = '2' then // Hanaro
        sql.add('select (isNull(max(ACPT_SEQ),0)+1) as MaxID from tb_accept');

      sql.add('where  substring( acpt_dat, 1,8)=:ACPT_DAT');
      paramByname('ACPT_DAT').asstring := formatdatetime('YYYYMMDD', now);
      open;
      varID := fieldByName('MaxID').asstring;

      close;
      sql.clear;

      if varKind = '1' then // H2
        sql.add('select top 1 * from tb_ha010')
      else if varKind = '2' then // Hanaro
        sql.add('select top 1 * from tb_accept');

      sql.add('where PNT_ID=:PNT_ID and substring( acpt_dat, 1,8)=:ACPT_DAT');
      paramByname('ACPT_DAT').asstring := formatdatetime('YYYYMMDD', now);
      paramByname('PNT_ID').asstring := VarChart;
      open;

      if isEmpty then
      begin

        close;
        sql.clear;

        if varKind = '1' then // H2
          sql.text := sqlinsert_h2
        else if varKind = '2' then // Hanaro
          sql.text := sqlinsert_hanaro;

        paramByname('ACPT_DAT').value := formatdatetime('YYYYMMDDhhmm', now);
        // formatdatetime('YYYYMMDDhhmmss',  now);
        // 2015-12.24 자릿수 초과로 저장 오류 두자리 줄여줌

        paramByname('ACPT_SEQ').value := varID;
        paramByname('ACPT_DIV').value := '1';
        paramByname('PNT_ID').value := VarChart;
        paramByname('DOCT_ID').value := 'D0001'; // main_f.cbDamteam.text;
        paramByname('RSV_DAT').value := '';
        paramByname('RSV_CLC').value := '';
        paramByname('PNT_NEWOLD').value := '';
        paramByname('INSUR_DIV').value := '';
        paramByname('TREAT_START').value := '';
        paramByname('TREAT_ENT').value := '';
        paramByname('CHAIR_NO').value := '';

        execsql;

      end;
    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      // DoSound('Fail');
      ExceptLogging(' [외부프로그램 접수오류]' + E.Message);
      // ShowMessage(' [대기지정오류]' + E.Message);
    end;

  end;
end;

function saveDbcert(varChartComment, varSignCert, varElectsignedData,
  varPKCS7SignedData, varTimeStamp, varChartSseq: widestring): boolean;
const
  insertCertDB = ' INSERT INTO  [ma_chart_cert]  ' + #10#13 +
    '       ([SignCert]                              ' + #10#13 +
    '       ,[chartComment]                          ' + #10#13 +
    '       ,[ElectsignedData]                       ' + #10#13 +
    '       ,[PKCS7SignedData]                       ' + #10#13 +
    '       ,[TimeStamp]                             ' + #10#13 +
    '       ,[ChartSseq])                            ' + #10#13 +
    ' VALUES                                         ' + #10#13 +
    '       (:SignCert                      ' + #10#13 +
    '       ,:chartComment                    ' + #10#13 +
    '       ,:ElectsignedData                ' + #10#13 +
    '       ,:PKCS7SignedData                 ' + #10#13 +
    '       ,:TimeStamp                      ' + #10#13 +
    '       ,:ChartSseq )                ';
var
  certID: string;
begin
  result := true;
  try
    with dm_f.sqlTemp do
    begin
      close;
      sql.clear;
      sql.text := insertCertDB;
      paramByname('SignCert').asMemo := varSignCert;
      paramByname('chartComment').asMemo := varChartComment;
      paramByname('ElectsignedData').asMemo := varElectsignedData;
      paramByname('PKCS7SignedData').asMemo := varPKCS7SignedData;
      paramByname('TimeStamp').asMemo := varTimeStamp;
      paramByname('ChartSseq').asstring := varChartSseq;
      execsql;

      close;
      sql.clear;
      sql.text := ' select @@Identity as sid';
      open;

      certID := fieldByName('sid').asstring;
      // 방금저장한 ma_chart_cert    ID를 불러온다...

      close;
      sql.clear;
      sql.text :=
        'update ma_chart_s set certID =:certID where chartSeq=:chartSeq';
      paramByname('certID').asstring := certID;
      paramByname('ChartSeq').asstring := varChartSseq;
      execsql;

    end;

  except
    on E: Exception do
    begin
      result := false;
      ExceptLogging(E.Message);

    end;

  end;
  //
end;

function UpdateChart_Scert(varChartSseq: string): boolean;
begin
  result := true;
  //
end;

function changeChartNo(oldChart: string; newchart: string): boolean;
begin
  try
    result := true;
    dm_f.uniConnection1.StartTransaction;

    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add('update ma_gogek_basic set');
      sql.add('chart=:chart');
      sql.add('where chart= :chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('update ma_jubsu set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('update cmemo set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('update cust set');
      sql.add('ctchartno=:chart');
      sql.add('where ctchartno=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_remark set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      { close;
        SQL.Clear;
        Sql.Add('Update ma_gogek_refer set');
        sql.add('chart=:chart');
        sql.add('where chart=:chart2');
        paramByName('chart').asString :=
        trim(oldChart);
        paramByName('chart2').asString :=
        trim(newChart);
        ExecSQl;
      }

      close;
      sql.clear;
      sql.add('Update ma_gogek_referer set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_phone set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_office set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_munjin set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_group set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_email set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_donggi set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_allow set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_address set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update jinryo_s set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update jinryo_p set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update jinryo_o set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      { close;
        SQL.Clear;
        Sql.Add('Update ma_chart set');
        sql.add('chart=:chart');
        sql.add('where chart=:chart2');
        paramByName('chart').asString :=
        trim(oldChart);
        paramByName('chart2').asString :=
        trim(newChart);
        ExecSQl;

        close;
        SQL.Clear;
        Sql.Add('Update ma_chart_detail set');
        sql.add('chart=:chart');
        sql.add('where chart=:chart2');
        paramByName('chart').asString :=
        trim(oldChart);
        paramByName('chart2').asString :=
        trim(newChart);
        ExecSQl; }

      close;
      sql.clear;
      sql.add('Update ma_chart_canal set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_s set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_Mno set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_OrthoFirst set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_i set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_rec set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_image set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_hangmok_data set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_detail set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_m set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_canal set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_scan set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_chart_tag set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_alarmlist  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_imgStorage  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_info_bochul  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_info_chiju  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_info_implant  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update  ma_info_implantrecall set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_info_oroantralc  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_info_oroantralw  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_info_pith  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_jindan_list  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_jindan  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_jubsu  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      { close;
        SQL.Clear;
        Sql.Add('Update ma_plan  set');
        sql.add('chart=:chart');
        sql.add('where chart=:chart2');
        paramByName('chart').asString :=
        trim(oldChart);
        paramByName('chart2').asString :=
        trim(newChart);
        ExecSQl;

        close;
        SQL.Clear;
        Sql.Add('Update ma_plan_detail  set');
        sql.add('chart=:chart');
        sql.add('where chart=:chart2');
        paramByName('chart').asString :=
        trim(oldChart);
        paramByName('chart2').asString :=
        trim(newChart);
        ExecSQl;
      }
      close;
      sql.clear;
      sql.add('Update ma_plan_list  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      { close;
        SQL.Clear;
        Sql.Add('Update ma_promise_memo  set');
        sql.add('chart=:chart');
        sql.add('where chart=:chart2');
        paramByName('chart').asString :=
        trim(oldChart);
        paramByName('chart2').asString :=
        trim(newChart);
        ExecSQl;
      }
      close;
      sql.clear;
      sql.add('Update ma_promise  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_promise_modify  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_recall  set');
      sql.add('rcchart=:chart');
      sql.add('where rcchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sms_sendlist  set');
      sql.add('sbchart=:chart');
      sql.add('where sbchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('update imageinfo set');
      sql.add('chartno=:chartno');
      sql.add('where chartno=:chartno2');
      paramByname('chartno').asstring := trim(oldChart);
      paramByname('chartno2').asstring := trim(newchart);
      execsql;

      close; // ************************
      sql.clear;
      sql.add('Update ma_sunap  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      sql.clear;
      sql.add('Update ma_sunap_napbu  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_bibo  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_bibomisu  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_bohummisu  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_card  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_tong  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_sp  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_kind  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_mf  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_plan  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_sugeum  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_totalcharge  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunap_tongplan  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_sunapbibo  set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_telrec  set');
      sql.add('trchart=:chart');
      sql.add('where trchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_tpcharge set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_signdata set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update sunapcard set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update sunaptong set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update tbreport set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update wonwe_p set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update iconschart set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_gogek_picture set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_plan_group set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update ma_whisperList set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update dtx set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxCC set');
      sql.add('ccchart=:chart');
      sql.add('where ccchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxDent set');
      sql.add('Dchart=:chart');
      sql.add('where Dchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;
      close;
      sql.clear;
      sql.add('Update HxDesire set');
      sql.add('Dschart=:chart');
      sql.add('where Dschart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxIMP set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update Hxkam set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxMed set');
      sql.add('Medchart=:chart');
      sql.add('where Medchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxPi set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxPlan set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update HxSremark set');
      sql.add('Srchart=:chart');
      sql.add('where Srchart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update signdata set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update docSignHistory set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

      close;
      sql.clear;
      sql.add('Update docSignHistory_text set');
      sql.add('chart=:chart');
      sql.add('where chart=:chart2');
      paramByname('chart').asstring := trim(oldChart);
      paramByname('chart2').asstring := trim(newchart);
      execsql;

    end;
    // dm_f.ZConnection.Rollback;   Test
    dm_f.uniConnection1.Commit;
    ExceptLogging('[' + newchart + ']' + '> [' + oldChart + ']' +
      '[차트번호 변경 완료]');

  except

    on E: Exception do
    begin
      result := false;
      dm_f.uniConnection1.Rollback;
      ExceptLogging(' [차트번호 변경 오류]' + '[' + newchart + ']' + '> [' + oldChart +
        ']' + E.Message);
      // ShowMessage(' [차트번호 변경 오류]'+ '['+newChart+']' +E.Message);
    end;

  end;
end;

function LoadNextPromiseDay(VarChart, varPday: String): string;
begin
  result := '';
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('select top 1 * from ma_promise');
    sql.add('where chart=:chart and pDay > :Pady');
    sql.add('and cancel <> ''C'' '); // Canceled Data
    sql.add('and cancel <> ''Y'' '); // Canceled Data
    sql.add('and cancel <> ''R'' '); // Recalled Data
    sql.add('and cancel <> ''U'' '); // Recalled Data
    sql.add('order by pday');
    paramByname('pady').asstring := varPday;
    // formatdatetime('YYYY-MM-DD', now);
    paramByname('chart').asstring := VarChart;
    open;
    if not isEmpty then
    begin
      result := fieldByName('pday').asstring;
      result := result + '(' + returnWeek2(strtoDate(result)) + ') - ' +
        fieldByName('remark').asstring;
    end;
  end;

end;

function LoadNextRecallDay(VarChart, varPday: String): string;
begin
  result := '';
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('select top 1 * from ma_recall');
    sql.add('where rcchart=:rcchart and rcDate > :rcDate');
    sql.add('order by rcDate');
    paramByname('rcDate').asstring := varPday;
    // formatdatetime('YYYY-MM-DD', now);
    paramByname('rcchart').asstring := VarChart;
    open;
    if not isEmpty then
    begin
      result := formatdatetime('YYYY-MM-DD', fieldByName('rcDate').AsDateTime);
      result := result + '(' + returnWeek2(strtoDate(result)) + ') - ' +
        fieldByName('rcremark').asstring;
    end;
  end;

end;

function isHavingJinryo(jubsu_id: string; VarChart: string; varday: string;
  varTeam: string; doc_code: string; isInpat: string): boolean;
begin
  result := true;

  try
    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add('select *  from jinryo_s');
      sql.add('where jubsu_id=:jubsu_id and chart=:Chart and jin_day=:jin_day and isInpat=:isInpat  and team=:team and doc_code=:Doc_code');
      paramByname('jubsu_id').asstring := jubsu_id;
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('isInpat').asstring := isInpat;
      paramByname('team').asstring := varTeam;
      paramByname('doc_code').asstring := doc_code;
      open;
      if isEmpty then
      begin
        result := false;
      end
      else
      begin
        result := true;
      end;
    end;
  except

  end;
end;

function JubsuDelete(jubsu_id: string; VarChart: string; varday: string;
  varTeam: string; doc_code: string; isInpat: string;
  jubsuDatetime:Tdatetime;
  isNHIC: boolean = false): boolean;
var
      risResult : TrisResult;
      memo2 : Tmemo;
      chkAsXML : TCheckBox;

begin
  result := true;

  try
    with dm_f.SqlWork do
    begin

      if isNHIC = false then // 검진에서 앨리스 연동할때는 지우지말자.
      begin
        close;
        sql.clear;
        sql.add('delete from ma_jubsu');
        sql.add('where id=:id and chart=:Chart and jin_day=:jin_day and ');
        sql.add('team=:team and doc_code=:doc_code and  isInpat=:isInpat');
        paramByname('ID').asstring := jubsu_id;
        paramByname('Jin_Day').asstring := varday;
        paramByname('Chart').asstring := VarChart;
        paramByname('team').asstring := varTeam;
        paramByname('doc_code').asstring := doc_code;
        paramByname('isInpat').asstring := isInpat;
        execsql;
      end;

      close;
      sql.clear;
      sql.add('delete from jinryo_s');
      sql.add('where jubsu_id=:jubsu_id and  chart=:Chart and jin_day=:jin_day  and isInpat=:isInpat');
      // and team=:team');
      paramByname('jubsu_id').asstring := jubsu_id;
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('isInpat').asstring := isInpat;
      // ParamByName('team').AsString := varTeam;
      execsql;

      close;
      sql.clear;
      sql.add('delete from jinryo_p');
      sql.add('where jubsu_id=:jubsu_id and chart=:Chart and jin_day=:jin_day and team=:team  and isInpat=:isInpat');
      paramByname('jubsu_id').asstring := jubsu_id;
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('team').asstring := varTeam;
      paramByname('isInpat').asstring := isInpat;
      execsql;

      close;
      sql.clear;
      sql.add('delete from jinryo_o');
      sql.add('where jubsu_id=:jubsu_id and chart=:Chart and jin_day=:jin_day and isInpat=:isInpat');
      paramByname('jubsu_id').asstring := jubsu_id;
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('isInpat').asstring := isInpat;
      // ParamByName('team').AsString := varTeam;
      execsql;

      close;
      sql.clear;
      sql.add('delete from hxCC');
      sql.add('Where jubsu_id=:jubsu_id and  CCchart= :CCChart and ccDate =:ccDate and ccTeam=:ccTeam  and isInpat=:isInpat');

      paramByname('jubsu_id').asstring := jubsu_id;
      paramByname('CCChart').asstring := VarChart;
      paramByname('CCTeam').asstring := varTeam;
      paramByname('ccDate').asstring := varday;
      paramByname('isInpat').asstring := isInpat;
      execsql;

    end;


    // ToDo : 1. OrderInf 삭제해라.
    // ToDo : 2. RIS 삭제해라.

    // MediroPack
    // 진료를 삭제하면 orderInf 내역도 삭제하자.

{$IFNDEF DEBUG}   // Debug때는 MediroPack에 붙이지 않는다.
   if (configvalue.varRISSYNC = '1')  and  ( configvalue.varImageUse='1') then
   begin
          with dm_f.sqlBit do
          begin
            close;
            sql.clear;
            sql.text := 'use mediroPack';
            execsql;

            close;
            sql.clear;
            sql.text := '  delete from orderinf        ' + #10#13 +
              ' where chart=:Chart and order_Day=:order_Day and treatroom=:treatroom ';
            paramByname('order_Day').asstring := deldash(varday);
            paramByname('Chart').asstring := VarChart;
            paramByname('treatroom').asstring := varTeam;
            execsql;

          end;
   end;
{$ENDIF DEBUG}
    // if ma_rp_RequestPK > 0 then
    // begin
    // // Delete Referel PAD
    // try
    //
    //
    //
    // with Dm_f.sqlwork do
    // begin
    // SQL.Add('delete from RP_requestUseJinsKey');
    // sql.add('where  requestpk =:requestpk  and  jins_Key =:jins_Key ');
    // paramByName('requestpk').AsInteger := ma_rp_RequestPK;
    // paramByName('jins_Key').AsString   := varJins_key;
    //
    // execsql;
    // end;
    //
    //
    //
    // except
    //
    // on E: Exception do
    // begin
    // Showmessage(E.Message + '[DeleteReferalPad_Jinryo fail.]');
    // end;
    //
    // end;
    // end;




    // RIS에서도 삭제하자.

     if  configvalue.varImageDBSaveMode ='1' then  //save PACS
     begin

        // RIS Delete
     {$IFNDEF DEBUG}
          if configvalue.varimageDBSaveMode = '1' then
          begin
             try
               ma_jubsu_date := jubsuDatetime;

               memo2 := Tmemo.Create(nil);
               memo2.lines.clear;

               chkAsXML := TCheckBox.Create(nil);

               chkAsXML.checked := false;

               risResult :=
                   RisSave(5,
                 memo2,    //  main_f.Memo2,
                 chkAsXML, //  main_f.chkAsXML ,
                   ma_jubsu_date,
                  '',
                  '',
                  'O',
                  '',
                  '',
                  '',
                  jubsu_ID
                  );

            if risResult.aResult = true then
              showmessage(risResult.aMsgIn);
             finally
                   memo2.free;
                   chkAsXML.free;
             end;
          end;
      {$ENDIF DEBUG}


     end;

  except
    result := false;
  end;

end;

function JinryoDelete(jinryo_pid: string; VarChart: string; varday: string;
  varTeam: string; doc_code: string; isInpat: string): boolean;
begin
  result := true;

  try
    with dm_f.SqlWork do
    begin
      // Close;
      // Sql.Clear;
      // Sql.Add('delete from jinryo_s');
      // Sql.Add('where chart=:Chart and jin_day=:jin_day');// and team=:team');
      // ParamByName('Jin_Day').AsString := varDay;
      // ParamByName('Chart').AsString := varChart;
      // // ParamByName('team').AsString := varTeam;
      // execSql;

      // Close;
      // Sql.Clear;
      // Sql.Add('delete from jinryo_p');
      // Sql.Add('where chart=:Chart and jin_day=:jin_day and team=:team');
      // ParamByName('Jin_Day').AsString := varDay;
      // ParamByName('Chart').AsString := varChart;
      // ParamByName('team').AsString := varTeam;
      // execSql;



      // subnap필드 업데이트
      // Close;
      // Sql.Clear;
      // Sql.Add('update jinryo_p set');
      // Sql.Add('sunap = ''2'' ');
      // Sql.Add('where chart=:Chart and jin_day=:jin_day  ');
      // Sql.Add('   and team=:team and doc_code=:doc_code and isInpat=:isInpat');
      // ParamByName('Jin_Day').AsString  := varDay;
      // ParamByName('Chart').AsString    := varChart;
      // ParamByName('team').AsString     := varTeam;
      // ParamByName('doc_code').AsString := doc_code;
      // ParamByName('isInpat').AsString  := isInpat;
      // execSql;

      close;
      sql.clear;
      sql.add('delete from jinryo_p');
      sql.add('where jinryo_pid=:jinryo_pid and chart=:Chart and jin_day=:jin_day  ');
      sql.add('   and team=:team and doc_code=:doc_code and isInpat=:isInpat');
      paramByname('Jinryo_pid').asstring := jinryo_pid;
      paramByname('Jin_Day').asstring := varday;
      paramByname('Chart').asstring := VarChart;
      paramByname('team').asstring := varTeam;
      paramByname('doc_code').asstring := doc_code;
      paramByname('isInpat').asstring := isInpat;
      execsql;



      // Close;
      // Sql.Clear;
      // Sql.Add('delete from jinryo_o');
      // Sql.Add('where chart=:Chart and jin_day=:jin_day ');
      // ParamByName('Jin_Day').AsString := varDay;
      // ParamByName('Chart').AsString := varChart;
      // // ParamByName('team').AsString := varTeam;
      // execSql;

    end;
  except
    result := false;
  end;

end;

{

  procedure TDbPicker_f.SaveJubsu_Hanaro;
  const
  selectQry = '    select                                                                               ' + #10#13 +
  '  (substring([ACPT_DAT] ,1,4)+ ''-''+   substring([ACPT_DAT] ,5,2)+ ''-''+   substring([ACPT_DAT] ,7,2) ) as Jinday ' + #10#13 +
  ' ,[PNT_ID]                                                                                         ' + #10#13 +
  ' ,substring([DOCT_ID] ,5,1)                                                                        ' + #10#13 +
  ' ,substring([RSV_DAT]  ,1,2) +'':''+ substring([RSV_DAT]  ,4,2)                                      ' + #10#13 +
  ' ,[RSV_CLC]                                                                                        ' + #10#13 +
  ' ,case when [PNT_NEWOLD]=''N'' then ''1'' else ''0'' end                                                ' + #10#13 +
  ' ,[CHAIR_NO]                                                                                      ' + #10#13 +
  ',substring([ACPT_DAT] ,1,4)+ ''-''+   substring([ACPT_DAT] ,5,2)+ ''-''+   substring([ACPT_DAT] ,7,2) ' + #10#13 +
  ' ,''''                                                                                            ' + #10#13 +
  ',''''                                                                                             ' + #10#13 +
  ',[ACPT_SEQ],                                                                                      ' + #10#13 +
  ' [ACPT_DIV]-1 from TB_ACCEPT                                                                       ' + #10#13 +
  ' where  (substring([ACPT_DAT] ,1,4)+ ''-''+   substring([ACPT_DAT] ,5,2)+ ''-''+   substring([ACPT_DAT] ,7,2) ) =:jinday';
  var

  varChart,
  varTeam,
  varDoc,
  varHyg,
  varFirst, //초진일
  varJumin,
  varZip,
  varName,
  varCPhone,
  varPRemark, //예약내용
  varPMemo, //참고사항
  vaPidn, //예약 idn
  varPTime: string; //예약 시간
  varDate: Tdate;

  begin
  try
  with dm_f.zQuery1 do
  begin
  sql.Clear;
  sql.text := selectQry;
  paramByName('jinday').asString := formatDatetime('YYYY-MM-DD', now);
  open;
  last;
  if not isEmpty then
  begin

  varChart := Fields[1].AsString;
  varTeam := Fields[2].AsString;
  varDoc := '';
  varHyg := '';
  varFirst := '';
  varJumin := '';
  varZip := '';
  varName := '';
  varCPhone := '';
  varPRemark := '';
  varPMemo := Fields[4].AsString;
  vaPidn := Fields[10].AsString;
  varPTime := Fields[3].AsString;

  jubsuSave(varChart,
  varTeam,
  varDoc,
  varHyg,
  '0', //대기구분
  formatdatetime('yyyy-mm-dd', now),
  now,
  varFirst, //초진일
  varJumin,
  varZip,
  '1', //초재
  varName,
  varCPhone,
  varPRemark, //예약내용
  varPMemo, //참고사항
  vaPidn, //예약 idn
  varPTime); //예약 시간
  end;
  end;
  except
  on E: Exception do
  begin
  // result := false;
  //   ShowMessage(' [접수오류]'+ E.Message);
  ExceptLogging(' [하나로 접수오류]' + E.Message);
  end;
  end;
  end;
}

function loadStopState(VarChart: string): boolean; // 치료중단 아이콘 표시 여부
begin

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_Chart_stop');
    sql.add(' where Chart=:chart and gubun= :gubun ');
    paramByname('chart').asstring := VarChart;
    paramByname('gubun').asstring := '1';
    open;
    if isEmpty then
    begin
      result := false;
    end
    else
    begin
      result := true;
    end;
  end;
end;

function ChartSizeUp: boolean;
begin
  try
    result := true;
    dm_f.uniConnection1.StartTransaction;

    with dm_f.SqlWork do
    begin
      // close;
      // sql.clear;
      // sql.add('alter table  ma_gogek_basic ');
      // sql.add('alter column chart nvarChar(50)');
      // execsql;

      // close;
      // sql.clear;
      // sql.add('alter table  ma_jubsu ');
      // sql.add('alter column chart nvarChar(50)');
      // execsql;

      // close;
      // sql.clear;
      // sql.add('alter table  cmemo ');
      // sql.add('alter column chart nvarChar(50)');
      // execsql;

      { close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_remark ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_referer ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_phone ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_office ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_munjin ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_group ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_email ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_donggi ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_allow ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_address ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  jinryo_s ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  jinryo_p ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  jinryo_o ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }

      { close;      //<=----------------------------------
        SQL.Clear;
        sql.add('alter table  ma_chart ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;  //<=----------------------------------
        sql.add('alter table  ma_chart_detail ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      {
        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_canal ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_s ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;


        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_i ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;


        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_rec ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_image ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_hangmok_data ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  ma_chart_m ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      { close;
        SQL.Clear;
        sql.add('alter table  ma_chart_canal ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;


        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_scan ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_chart_tag ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_alarmlist ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_imgStorage ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_bochul ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_chiju ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_implant ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_implantrecall ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_oroantralc ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_oroantralw ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_info_pith ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_jindan_list ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_jindan ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_jubsu ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  ma_plan ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      { close;
        SQL.Clear;
        sql.add('alter table  ma_plan_list ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  ma_plan_detail ');
      sql.add('alter column chart nvarChar(50)');
      execsql;
      {
        close;
        SQL.Clear;
        sql.add('alter table  ma_promise ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_promise_modify ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_recall ');
        sql.add('alter column rcchart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sms_sendlist ');
        sql.add('alter column sbchart nvarChar(50)');
        ExecSQl;

        close;
        sql.clear;
        sql.add('alter table  imageinfo ');
        sql.add('alter column chartno nvarChar(50)');
        execsql;

        close; //************************
        SQL.Clear;
        sql.add('alter table  ma_sunap ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_bibo ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_bibomisu ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_bohummisu ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_card ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_tong ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_sp ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_kind ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_mf ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_plan ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_sugeum ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  ma_sunap_totalcharge ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      { close;
        SQL.Clear;
        sql.add('alter table  ma_sunap_tongplan ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_sunapbibo ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_telrec ');
        sql.add('alter column trchart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_tpcharge ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      { close;
        SQL.Clear;
        sql.add('alter table  tbreport ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }

      {
        close;
        SQL.Clear;
        sql.add('alter table  iconschart ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_gogek_picture ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;

        close;
        SQL.Clear;
        sql.add('alter table  ma_plan_group ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  ma_whisperList ');
      sql.add('alter column chart nvarChar(50)');
      execsql;
      { close;
        SQL.Clear;       //<=----------------------------------
        sql.add('alter table  wonwe_p ');
        sql.add('alter column chart nvarChar(50)');
        ExecSQl;
      }
      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  ma_signdata ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      sql.add('alter table  signdata ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  sunapcard ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear; // <=----------------------------------
      sql.add('alter table  sunaptong ');
      sql.add('alter column chart nvarChar(50)');
      execsql;
      close;
      sql.clear;
      sql.add('alter table  dtx ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  HxCC ');
      sql.add('alter column ccchart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  HxDent ');
      sql.add('alter column Dchart nvarChar(50)');
      execsql;
      close;
      sql.clear;
      sql.add('alter table  HxDesire ');
      sql.add('alter column Dschart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  HxIMP ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  Hxkam ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  HxMed ');
      sql.add('alter column Medchart nvarChar(50)');

      close;
      sql.clear;
      sql.add('alter table  HxPi ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  HxPlan ');
      sql.add('alter column chart nvarChar(50)');
      execsql;

      close;
      sql.clear;
      sql.add('alter table  HxSremark ');
      sql.add('alter column Srchart nvarChar(50)');
      execsql;

    end;
    dm_f.uniConnection1.Commit;

  except

    on E: Exception do
    begin
      result := false;
      dm_f.uniConnection1.Rollback;
      showmessage(' [차트번호 변경 오류]' + E.Message);
    end;

  end;
end;

function hasSunapFinalinfo(VarChart: string): boolean;
begin

  result := false;
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.add('select *  from  ma_sunap_final');
    sql.add('where chart=:chart ');
    paramByname('chart').asstring := VarChart;
    open;
    if not isEmpty then
      result := true;

  end;
end;

function SunapFinalDate(VarChart: string): string;
begin

  result := '';
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.add('select *  from  ma_sunap_final');
    sql.add('where chart=:chart ');
    paramByname('chart').asstring := VarChart;
    open;
    if not isEmpty then
      result := fieldByName('regDay').asstring;

  end;
end;

function LoadReceiptMessage: string;
begin
  result := '';
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic_receipt');
    open;
    if not isEmpty then
    begin
      result := fieldByName('rMessage').asstring;
    end;
  end;
end;



procedure insertSangByung(s_key, s_kor_name, s_eng_name, use, rate, sinsul,
  bul: string);

begin
  with dm_f.sqlTemp do
    try
      close;
      sql.clear;
      sql.text :=
      // Add('insert into select * from sangbyung where s_kor_name  like :Code');
        'select * from sangbyung              ' + #10 +
        'where replace(s_key,''.'','''') = :s_key ';
      paramByname('s_key').asstring := s_key;
      open;
      if isEmpty then
      begin

        close;
        sql.clear;
        sql.text :=
        // Add('insert into select * from sangbyung where s_kor_name  like :Code');
          ' INSERT INTO  [sangbyung]   ' + #10 +
          '        ([s_key]                                ' + #10 +
          '        ,[s_kor_name]                           ' + #10 +
          '        ,[s_eng_name]                           ' + #10 +
          '        ,[use]                                  ' + #10 +
          '        ,[rate]                                 ' + #10 +
          '        ,[sinsul]                               ' + #10 +
          '        ,[bul])                                 ' + #10 +
          '  VALUES                                        ' + #10 +
          '        (:s_key                    ' + #10 +
          '        ,:s_kor_name               ' + #10 +
          '        ,:s_eng_name               ' + #10 +
          '        ,:use                      ' + #10 +
          '        ,:rate                     ' + #10 +
          '        ,:sinsul                   ' + #10 +
          '        ,:bul)                      ';
        paramByname('s_key').asstring := s_key;
        paramByname('s_kor_name').asstring := s_kor_name;
        paramByname('s_eng_name').asstring := s_eng_name;
        paramByname('use').asstring := use;
        paramByname('rate').asstring := rate;
        paramByname('sinsul').asstring := sinsul;
        paramByname('bul').asstring := bul;
        execsql;
      end;

    except
    end;

end;

function RaySave(saveKind: integer; VarChart: string; varname: string;
  varBirth: string; varSex: string): integer;
var
  VarUrl: string;
  varAddress: string;

  Source: TMemoryStream;
  Response: TStringStream;
  varResult: string;
  varError: integer;
  varRet: string;
begin
  // 모든 입력사항에는 공백을 허용하지 않는다.이거 찾는데 한나잘 걸렸다. 공백이 들어가면 400에러 나온다.
  // 'http://localhost:9090/WebAdapter.asmx/InsertPatient?id=PID0001&name=John Doe&birthday=1980-06-01&sex=male';

  result := -1;
  try

    case saveKind of
      1: // insert
        VarUrl := 'http://localhost:9090/WebAdapter.asmx/InsertPatient?' + 'id='
          + VarChart + '&' + 'name=' + varname + '&' + 'birthday=' + varBirth +
          '&' + 'sex=' + varSex;
      2: // Update
        VarUrl := 'http://localhost:9090/WebAdapter.asmx/EditPatient?' + 'id=' +
          VarChart + '&' + 'name=' + varname + '&' + 'birthday=' + varBirth +
          '&' + 'sex=' + varSex;

      3: // Delete
        VarUrl := 'http://localhost:9090/WebAdapter.asmx/DeletePatient?' + 'id='
          + VarChart;

    end;
    // showmessage(varUrl);

    // 한글처리
    VarUrl := TIdURI.URLEncode(VarUrl);



    // memoHTML.Clear;

    // idHttp1.Request.Username := '';
    // idHttp1.Request.Password := '';
    // idHttp1.Request.ContentType := '';

    ExceptLogging('Ray info registry URL => ' + VarUrl);

    // memoHTML.Lines.Text := idHttp1.Get(VarUrl);

    SendRayMsg(VarUrl, varRet, varError);
    // memoHTML.Lines.Text:= varRet;

    // varResult :=  ResultCheck(memoHTML.Lines.Text);
    varResult := ResultCheck(varRet);

    ExceptLogging('Ray info registry result(0:success,1~9:fail) => ' +
      varResult);

    case StrCase(varResult, ['0', '1', '2', '3', '4', '5', '6', '7', '8',
      '-1']) of
      0: // 성공
        begin
          result := 0;
          // dbTemp delete
        end;
      1: // 빈문자열의 patient ID
        begin
          // 이미 있는 코드면 update 후에  dbTemp delete
          result := 1;
        end;

      2: // 빈문자열의 Patient Name
        begin
          result := 2; // false;
        end;

      3: // 빈문자열의 BirthDay
        begin
          result := 3; // false;
        end;

      4: // 빈문자열의 Sex
        begin
          result := 4; // false;
        end;
      5: // Patient ID를 가진 환자가 이미 존재
        begin
          result := 5; // false;
        end;
      6: // 해당 ID 환자가 없음
        begin
          result := 6; // false;
        end;
      7: // BirthDay 값 오류
        begin
          result := 7; // false;
        end;
      8: // Sex값 오류
        begin
          result := 8; // false;
        end;
      9: // 알수없는 오류
        begin
          result := 9; // false;
        end;
    else
      begin
        result := 10; // false;
      end;
    end;

  except
    on E: Exception do
    begin
      result := -1;
      ExceptLogging('Fail Ray information registry ' + E.Message);
    end;

  end;
end;

function ResultCheck(varConst: string): string;
const

  R0 = '>0</int>';
  R1 = '>1</int>';
  R2 = '>2</int>';
  R3 = '>3</int>';
  R4 = '>4</int>';
  R5 = '>5</int>';
  R6 = '>6</int>';
  R7 = '>7</int>';
  R8 = '>8</int>';
  R9 = '>-1</int>';
  RTrue = '>true</boolean>';
  RFalse = '>false</boolean>';

begin
  result := '';
  if pos(R0, varConst) > 0 then
    result := '0'
  else if pos(RTrue, varConst) > 0 then
    result := 'true'
  else if pos(RFalse, varConst) > 0 then
    result := 'false'
  else if pos(R1, varConst) > 0 then
    result := '1'
  else if pos(R2, varConst) > 0 then
    result := '2'
  else if pos(R3, varConst) > 0 then
    result := '3'
  else if pos(R4, varConst) > 0 then
    result := '4'
  else if pos(R5, varConst) > 0 then
    result := '5'
  else if pos(R6, varConst) > 0 then
    result := '6'
  else if pos(R7, varConst) > 0 then
    result := '7'
  else if pos(R8, varConst) > 0 then
    result := '8'
  else if pos(R9, varConst) > 0 then
    result := '-1';

end;

function SendRayMsg(const Url: string; var msgReturn: string;
  var Error: integer): boolean;
var
  // sslHandler: TIdSSLIOHandlerSocket;
  IdHTTP: TIdHTTP;
begin
  result := false;
  try
    IdHTTP := TIdHTTP.Create(nil);
    try
      IdHTTP.ConnectTimeout := 5000;
      IdHTTP.ReadTimeout := 30000;
      // sslHandler := TIdSSLIOHandlerSocket.Create(idHttp);
      // idHttp.IOHandler := sslHandler;
      msgReturn := trim(IdHTTP.Get(Url));
    finally
      IdHTTP.Free;
    end;
    // Error := MDVERIFY_ERROR_OK;
    result := true;
  except
    on E: Exception do
    begin
      // Error := MDVERIFY_ERROR_NETWORKERROR;
      // LogToFile('[Error]URL:['+Url+']');
      // LogToFile('Web exception :'+E.Message,True);
    end;
  end;
end;

function RaycheckExist(VarChart: string): string;
var
  VarUrl: string;
  varResult: string;
  varError: integer;
begin
  result := '';
  varResult := '';
  try
    VarUrl := 'http://localhost:9090/WebAdapter.asmx/ExistPatient?' + 'id='
      + VarChart;

    ExceptLogging('exist check=>' + VarUrl);

    // idHttp1.Connect;
    // varResult := idHttp1.Get(VarUrl);

    SendRayMsg(VarUrl, varResult, varError);

    ExceptLogging('existCheck result =>' + varResult);

    result := (ResultCheck(varResult));
  except
    on E: Exception do
    begin
      result := '';
      ExceptLogging('Fail ExistCheck ' + VarChart + '=> ' + E.Message);
    end;

  end;

end;

function isFilter(VarChart: string; varQuery: string): boolean;
begin
  with dm_f.sqlcalc do
  begin
    close;
    sql.clear;
    sql.text := varQuery;
    paramByname('chart').asstring := VarChart;
    open;
    result := not isEmpty;
  end;
end;

function LoadYeyakCount(varDate: TdateTime; varTeam: string): integer;
var
  i: integer;

  AllCount, TeamCount: integer;
  varQuery: string;
begin
  varQuery := LoadGroupDataQuery;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Select count(*) as aCount From ma_promise');
    sql.add('Where pday=:pday and Cancel <> ''Y'' ');
    sql.add('and Cancel <> ''U''  and Cancel <>''C''  ');
    sql.add('and name <> ''[B]'' ');
    sql.add('and name <> '''' ');
    { 'Y'; //다모음에서 예약취소
      'U'; //R 은 다모음에서 에약변경
      'C'; //예약취소
      'R'; //예약변경
      '5'; //예약변경 }

    paramByname('pday').asstring := DateToStr(varDate);

    if varviewAll <> true then
    begin
      // if varQuery <> '' then
      // sql.Add('and (chart not in ('+ varQuery + ' ) ) ');

      // if varQuery <> '' then
      // sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
      if configvalue.varAgeFilter = '0' then
      begin

        if varQuery <> '' then
          // sql.Add('and (i.chart not in ('+ varQuery + ' ) ) ');
          sql.add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where'
            + varQuery + ' ) ) ');

      end
      else
      begin
        sql.add('and (chart not in  (' + ageFilterQry + '  ) ) ');

      end;
    end;

    open;
    AllCount := dm_f.SqlWork.fieldByName('aCount').asinteger;

    close;
    sql.clear;
    sql.add('Select count(*) as aCount From ma_promise');
    sql.add('Where pday=:pday and Cancel<>:Cancel ');
    sql.add('and Cancel<>:Cancel2  and Cancel<>:Cancel3   ');
    sql.add('and team=:Team');
    sql.add('and name <> ''[B]'' ');
    sql.add('and name <> '''' ');
    paramByname('pday').asstring := DateToStr(varDate);
    paramByname('Cancel').asstring := 'Y';
    paramByname('Cancel2').asstring := 'U';
    paramByname('Cancel3').asstring := 'C';
    // paramByName('Cancel4').AsString := 'R'; //예약변경
    paramByname('Team').asstring := varTeam;

    if varviewAll <> true then
    begin
      // if varQuery <> '' then
      // sql.Add('and (chart not in ('+ varQuery + ' ) ) ');

      // if varQuery <> '' then
      // sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
      if configvalue.varAgeFilter = '0' then
      begin

        if varQuery <> '' then
          sql.add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where'
            + varQuery + ' ) ) ');

      end
      else
      begin
        sql.add('and (chart not in  (' + ageFilterQry + '  ) ) ');

      end;
    end;

    open;
    TeamCount := dm_f.SqlWork.fieldByName('aCount').asinteger;

    if varTeam <> '0' then
      result := TeamCount
    else
      result := AllCount;

  end;
end;

function LoadNewPatientCount(varDate: TdateTime; varTeam: string): integer;
var
  i: integer;

  AllCount, TeamCount: integer;
  varQuery: string;
begin
  varQuery := LoadGroupDataQuery;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Select count(*) as aCount From ma_jubsu');
    sql.add('Where first_day=:jin_day and jin_day =:jin_Day ');
    paramByname('jin_day').asstring := DateToStr(varDate);

    if varviewAll <> true then
    begin

      // if varQuery <> '' then
      // sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

      if configvalue.varAgeFilter = '0' then
      begin

        if varQuery <> '' then
          sql.add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where'
            + varQuery + ' ) ) ');

      end
      else
      begin
        sql.add('and (chart not in  (' + ageFilterQry + '  ) ) ');

      end;
    end;

    open;
    AllCount := dm_f.SqlWork.fieldByName('aCount').asinteger;

    close;
    sql.clear;
    sql.add('Select count(*) as aCount From ma_jubsu');
    sql.add('Where first_day=:jin_day and jin_day =:jin_Day ');
    sql.add('and team=:Team');
    paramByname('jin_day').asstring := DateToStr(varDate);
    paramByname('Team').asstring := varTeam;

    if varviewAll <> true then
    begin

      // if varQuery <> '' then
      // sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
      if configvalue.varAgeFilter = '0' then
      begin

        if varQuery <> '' then
          sql.add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where'
            + varQuery + ' ) ) ');

      end
      else
      begin
        sql.add('and (chart not in  (' + ageFilterQry + '  ) ) ');

      end;

    end;

    open;
    TeamCount := dm_f.SqlWork.fieldByName('aCount').asinteger;

    if varTeam <> '0' then
      result := TeamCount
    else
      result := AllCount;

  end;
end;

function convStat(vargubun: string): string;
begin
  case StrCase(vargubun, ['5', '10', '11', '12', '15', '16', '17', '19']) of
    0:
      result := '접수';
    1:
      result := '체어';
    2:
      result := '진료';
    3:
      result := '수납';
    4:
      result := '예약';
    5:
      result := '취소';
    6:
      result := '완료';
    7:
      result := '완료';
  else
    result := '접수';
  end;
end;

function LoadRecallNPromise(VarChart: string): integer;
const
  selectqry = 'select idn, ptime, remark, pmemo from ma_promise' + #13#10 +
    'where chart=:chart and pday > :pday' + #10#13 + 'and name <> '''' ' +
    #10#13 + 'and cancel <> ''Y'' ' + #10#13 + 'and cancel <> ''C'' ' + #10#13 +
    'and cancel <> ''R'' ' + #10#13 + 'and cancel <> ''U'' ' + #10#13 +
    'and pos <> ''8'' ';
begin
  { result:1=> 예약있음
    2=> 리콜있음
    3=> 리콜, 예약 다 있음
  }
  result := 0;
  if VarChart = '' then
    exit;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.text := selectqry;
    paramByname('chart').asstring := VarChart;
    paramByname('pday').asstring := formatdatetime('YYYY-MM-DD', now);
    open;
    if not isEmpty then
    begin
      result := 1;
    end
    else
    begin
      result := 0;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('SELECT * ');
    sql.add('FROM ma_recall ');
    sql.add('where rcchart=:rcChart');
    sql.add(' and RcDate >=  :RcDate ');
    sql.add(' and RcCheck <> ''1'' ');
    paramByname('rcchart').asstring := VarChart;
    paramByname('RcDate').asstring := formatdatetime('YYYY-MM-DD', now);
    open;
    if not isEmpty then
    begin
      result := result + 2;
    end
    else
    begin
      result := result + 0;
    end;
  end;

end;

procedure LoadPhoneList(VarChart: string; varCombo: TCombobox;
  varEdit: Tadvedit);

const
  SelectPhonelist = 'select * from ma_gogek_phone ' + #10#13 +
    'where chart=:chart';
var
  i, RecCount: integer;
begin
  if VarChart = '' then
    exit;
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.text := SelectPhonelist;
    paramByname('chart').asstring := VarChart;
    open;
    if not isEmpty then
    begin
      while not dm_f.SqlWork.eof do
      begin
        varCombo.Items.add(Call_tel_type(fieldByName('phone').asstring));
        Next;
      end;

    end;

  end;
  { 본인 전화번로를 가져오자... }
  // if varcombo.Items.Count > 0 then
  varCombo.ItemIndex := varCombo.Items.IndexOf(varEdit.text);
  // varCombo.Items.Count - 1
  // else
  // varcombo.ItemIndex := 0;

end;

function selectPromiseCount(chart: string; pday: string): integer;
begin
  result := 0;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('SELECT count(*) as pcount ');
    sql.add('FROM      ma_promise                  ');
    sql.add('WHERE   (chart =:chart) and pday=:pday');
    paramByname('chart').asstring := chart;
    paramByname('pday').asstring := pday;
    open;
    if not isEmpty then
    begin
      result := fieldByName('pcount').asinteger;

    end;
  end;
end;

procedure PicDelete(VarChart: string);
var
  varDir: string;
  varname: string;
  varFileType: string;
begin
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add(' Select * from ma_gogek_picture ');
    sql.add(' Where chart = :chart');
    paramByname('chart').value := VarChart;
    open;
    last;
    if not isEmpty then
    begin

      varFileType := fieldByName('pictype').asstring;

      try
        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add(' delete from ma_gogek_picture ');
          sql.add(' Where chart = :chart');
          paramByname('chart').value := VarChart;
          execsql;
        end;
        deleteFile(pWidechar(currentDir + 'picture\' + VarChart + '.' +
          varFileType));

      except
        on E: Exception do
        begin
          ExceptLogging('DeletePicture:' + E.Message);

        end;
      end;
    end;

  end;
end;

procedure PicSave(VarChart, varFile, varFileType: string);
var
  varDir: string;
  varname: string;
begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add(' Select * from ma_gogek_picture ');
      sql.add(' Where chart = :chart');
      paramByname('chart').value := VarChart;
      open;
      last;
      if not isEmpty then
      begin
        if Application.MessageBox(pchar('[' + VarChart + ']님의 사진을' + #13#13 +
          '수정하시겠습니까?.'), '알림', MB_YESNO) = IDYES then
        begin

          try
            with dm_f.sqlTemp do
            begin

              close;
              sql.clear;
              sql.add(' Update ma_gogek_picture Set ');
              sql.add(' pic = :pic, regdate=:regdate, pictype=:picType , modDay=:modDay');
              sql.add(' Where Chart = :chart');
              paramByname('chart').value := VarChart;
              paramByname('regDate').asstring :=
                formatdatetime('YYYY-MM-DD', now);
              paramByname('modDay').AsDateTime := now;
              paramByname('pictype').value := varFileType;
              paramByname('pic').LoadFromFile(currentDir + 'picture\' + VarChart
                + '.' + varFileType, ftBlob);
              execsql;

              Application.MessageBox(pchar('입력하신 정보가 수정 되었습니다.'), '알림',
                mb_ok + mb_IconInformation);

            end;
          except
            on E: Exception do
              ExceptLogging('Tdm_f.savePicture:' + E.Message);
          end;

        end;
      end
      else
      begin

        try
          with dm_f.SqlWork do
          begin

            close;
            sql.clear;
            sql.add(' Insert Into ma_gogek_picture');
            sql.add(' (chart, pic, regDate, picType, modDay) ');
            sql.add(' VALUES( :chart, :pic, :regDate, :picType, :modDay) ');
            paramByname('chart').value := VarChart;
            paramByname('regDate').asstring :=
              formatdatetime('YYYY-MM-DD', now);
            paramByname('pictype').value := varFileType;
            paramByname('pic').LoadFromFile(currentDir + 'picture\' + VarChart +
              '.' + varFileType, ftBlob);
            paramByname('modDay').AsDateTime := now;
            execsql;

            Application.MessageBox(pchar('입력하신 정보가 저장 되었습니다.'), '알림',
              mb_ok + mb_IconInformation);

          end;
        except
          on E: Exception do
            ExceptLogging('Tdm_f.savePicture:' + E.Message);
        end;

      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('savePictureClick:' + E.Message);

    end;
  end;
end;

procedure ftpFaceImageSave(chart: string; varFileName: widestring);
var

  varSaveFilename: string;
  varFolder: string;
  i: integer;
  varFolder2: string;
  IdFTP: TidFtp;
begin
  // 저장할 폴더 - /차트번호/
  // varFolder := StringReplace(FolderName, '\', '/', [rfReplaceAll]);
  // varFolder := uppercase(varFolder);
  try

    IdFTP := TidFtp.Create;
    varFolder := chart;
    varFolder2 := 'face';

    varFileName := utf8string(varFileName);
    varSaveFilename := GetNicAddr + ExtractFileExt(varFileName);;

    if varFileName <> '' then
    begin
      if FtpImageUp(IdFTP, // TidFtp
        varFileName, // filename
        varFolder, // foldername
        configvalue.varUseMunFileIP, varFolder2, varSaveFilename)
      // '121.154.165.217')    //Host IP
        = true then
      begin

        // db저장
        PicSave_FtpPath(chart, configvalue.varimg1Root + '/' + varFolder2 + '/'
          + varFolder + '/' + varSaveFilename, '2');

      end
      else
      begin
      end;
    end;
  finally
    FreeAndNil(IdFTP);
  end;

end;

procedure PicSave_FtpPath(VarChart, varFile, varFileType: string);
var
  varDir: string;
  varname: string;
begin
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add(' Select * from ma_gogek_picture ');
      sql.add(' Where chart = :chart');
      paramByname('chart').value := VarChart;
      open;
      last;
      if not isEmpty then
      begin
        if Application.MessageBox(pchar('[' + VarChart + ']님의 사진을' + #13#13 +
          '수정하시겠습니까?.'), '알림', MB_YESNO) = IDYES then
        begin

          try
            with dm_f.sqlTemp do
            begin

              close;
              sql.clear;
              sql.add(' Update ma_gogek_picture Set ');
              sql.add(' picpath = :picpath, regdate=:regdate, pictype=:picType , modDay=:modDay');
              sql.add(' Where Chart = :chart');
              paramByname('chart').value := VarChart;
              paramByname('regDate').asstring :=
                formatdatetime('YYYY-MM-DD', now);
              paramByname('modDay').AsDateTime := now;
              paramByname('pictype').asstring := varFileType;
              paramByname('picpath').asstring := varFile;
              execsql;

              Application.MessageBox(pchar('입력하신 정보가 수정 되었습니다.'), '알림',
                mb_ok + mb_IconInformation);

            end;
          except
            on E: Exception do
              ExceptLogging('Tdm_f.savePicture_ftp:' + E.Message);
          end;

        end;
      end
      else
      begin

        try
          with dm_f.SqlWork do
          begin

            close;
            sql.clear;
            sql.add(' Insert Into ma_gogek_picture');
            sql.add(' (chart, picPath, regDate, picType, modDay) ');
            sql.add(' VALUES( :chart, :picPath, :regDate, :picType, :modDay) ');
            paramByname('chart').value := VarChart;
            paramByname('regDate').asstring :=
              formatdatetime('YYYY-MM-DD', now);
            paramByname('pictype').asstring := varFileType;
            paramByname('picpath').asstring := varFile;
            paramByname('modDay').AsDateTime := now;
            execsql;

            Application.MessageBox(pchar('입력하신 정보가 저장 되었습니다.'), '알림',
              mb_ok + mb_IconInformation);

          end;
        except
          on E: Exception do
            ExceptLogging(' savePicture_ftp:' + E.Message);
        end;

      end;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging('savePictureClick_ftp:' + E.Message);

    end;
  end;
end;

function FtpImageUp(VIdFtp: TidFtp; filename: TFileName; FolderName: string;
  HostIp: string; folder2: string = ''; varSaveFilename: string = ''): boolean;
begin
  result := false;
  try
    with VIdFtp do
    begin

      TransferType := ftBinary;

      username := configvalue.varFtpID;
      password := configvalue.varFtpPass;
      Host := HostIp;
      port := strtoint(configvalue.varFtpPort);

      passive := true;

      if Connected then
        disconnect;

      { if not FindDirectory(Vidftp, TargetDIr, DirMake) then
        VidFTP.MakeDir(TargetDir + '/' + DirMake);
        VidFtp.ChangeDir(TargetDir + '/' + DirMake);
      }
      Connect;

      if folder2 <> '' then
      begin
        ChangeDir(configvalue.varFtpRoot + '/' + folder2);

        FTPMakedir(VIdFtp, configvalue.varFtpRoot + '/' + folder2, FolderName);

      end
      else
        ChangeDir(configvalue.varFtpRoot);


      // ChangeDir('/test'); //('/public_html/files/up');
      // FTPMakedir(VIdFtp, dm_f.configvalue.varFtpRoot, substr(varFolder, 1, '/'));
      // FTPMakedir(VIdFtp, dm_f.configvalue.varFtpRoot, varFolder);

      if trim(varSaveFilename) <> '' then
      begin
        Put(filename, varSaveFilename);
        // Site('CHMOD 640 '+ FileName);
      end
      else
      begin
        Put(filename, utf8string(ExtractFilename(filename)));
        // Site('CHMOD 640 '+ FileName);
      end;

      // ChangeDir('/web/files/image/12345');
      // Put('C:\Users\ha\Pictures\111.jpg','12345.jpg');

      disconnect;

      ExceptLogging('FileName: ' + filename + ' varSaveFileName:' +
        varSaveFilename);
      result := true;
    end;

  except
    on E: Exception do
    begin
      result := false;
      ExceptLogging('FTP서버 접속 실패(FtpImageUp).' + #10#13 + E.Message);
      showmessage('FTP서버 접속 실패(FtpImageUp). FTP서버 연결 상태를 확인하세요(02).' + #10#13 +
        E.Message);
    end;
  end;
end;

function FindDirectory(VIdFtp: TidFtp; TargetDir, DirMake: string): boolean;
var
  i, j, MAX, tempCount: integer;
  tempString: TstringList;
  name: string;
  varType: TIdDirItemType;
begin
  result := false;

  tempString := TstringList.Create;
  tempString.clear;

  VIdFtp.ChangeDir(TargetDir);
  // VidFTP.List(TempString, '', false);
  // VidFTP.List(TempString, '', true); //ADetails=true 면 한글이 깨진다.-Synology Diskstation에서
  VIdFtp.List(tempString, '', false);
  // ADetails=true 면 한글이 깨진다.-Synology Diskstation에서
  tempCount := tempString.Count - 1;

  { TIdDirItemType = (ditDirectory, ditFile, ditSymbolicLink, ditSymbolicLinkDir,
    ditBlockDev, ditCharDev, ditFIFO, ditSocket); }

  for i := 0 to tempCount do
  begin
    name := VIdFtp.DirectoryListing.Items[i].filename;

    // Diskstation 에서는 ADetails가 안되기 때문에 다음을 실행.
    name := stringreplace(name, '.', '', [rfReplaceAll]);
    name := stringreplace(name, '/', '', [rfReplaceAll]);

    varType := VIdFtp.DirectoryListing.Items[i].ItemType;
    // if (varType = ditDirectory) then   //itemType  ditDirectory가 읽혀지질 않는다.
    // begin
    if DirMake = name then
    begin
      result := true;
      exit;
    end;
    // end;
  end;
end;

procedure FTPMakedir(VIdFtp: TidFtp; TargetDir, DirMake: string);
begin

  TargetDir := utf8string(TargetDir);
  DirMake := utf8string(DirMake);

  if not FindDirectory(VIdFtp, TargetDir, DirMake) then
  begin
    VIdFtp.MakeDir(TargetDir + '/' + DirMake);
  end;
  VIdFtp.ChangeDir(TargetDir + '/' + DirMake);
end;

function saveLabOrderEwha(HSP_NUM: string; ORD_DATE: string; ORD_NUM: string;
  ITM_SEQ: string; PSN_NAME: string; PSN_SEX: string; PSN_AGE: string;
  PSN_ID: string; CHT_NUM: string; HSP_DEPT: string; HSP_WARD: string;
  HSP_DOCTOR: string; SAMPLE_DATE: string; HLAB_CODE: string; HSUB_CODE: string;
  HLAB_NAME: string; LAB_CODE: string; LAB_NAME: string; LAB_UNIT: string;
  INSU_CODE: string; LAB_STAT: string; LAB_RESULT: string; DESC_RESULT1: string;
  DESC_RESULT2: string; DESC_RESULT3: string; DESC_RESULT4: string;
  DESC_RESULT5: string; RSLT_DATE: string; RSLT_TIME: string; DR_NUM: string;
  DR_NAME: string; ABN_VALUE: string; REF_VALUE: string; RQST_DATE: string;
  RQST_TIME: string; RCPT_DATE: string; RCPT_TIME: string; RCPT_NUM: string;
  SEND_DATE: string; SEND_TIME: string; DOWN_DATE: string;
  DOWN_TIME: string): boolean;

const
  dataSelect = 'select * from hmn_order' + #10 +
    'where HSP_NUM =:HSP_NUM         ' + #10 +
    '   and ORD_DATE =:ORD_DATE      ' + #10 +
    '   and ORD_NUM  =:ORD_NUM       ' + #10 +
    '   and HLAB_CODE=:HLAB_CODE     ' + #10 +
    '   and HSUB_CODE=:HSUB_CODE     ';

  dataInsert = 'INSERT INTO [dbo].[HMN_ORDER]  ' + #10 + '  ([HSP_NUM]       ' +
    #10 + '    ,[ORD_DATE]    ' + #10 + '    ,[ORD_NUM]       ' + #10 +
    '    ,[ITM_SEQ]       ' + #10 + '    ,[PSN_NAME]      ' + #10 +
    '    ,[PSN_SEX]       ' + #10 + '    ,[PSN_AGE]       ' + #10 +
    '    ,[PSN_ID]        ' + #10 + '    ,[CHT_NUM]       ' + #10 +
    '    ,[HSP_DEPT]      ' + #10 + '    ,[HSP_WARD]      ' + #10 +
    '    ,[HSP_DOCTOR]    ' + #10 + '    ,[SAMPLE_DATE]   ' + #10 +
    '    ,[HLAB_CODE]     ' + #10 + '    ,[HSUB_CODE]     ' + #10 +
    '    ,[HLAB_NAME]     ' + #10 + '    ,[LAB_CODE]      ' + #10 +
    '    ,[LAB_NAME]      ' + #10 + '    ,[LAB_UNIT]      ' + #10 +
    '    ,[INSU_CODE]     ' + #10 + '    ,[LAB_STAT]      ' + #10 +
    '    ,[LAB_RESULT]    ' + #10 + '    ,[DESC_RESULT1]  ' + #10 +
    '    ,[DESC_RESULT2]  ' + #10 + '    ,[DESC_RESULT3]  ' + #10 +
    '    ,[DESC_RESULT4]  ' + #10 + '    ,[DESC_RESULT5]  ' + #10 +
    '    ,[RSLT_DATE]     ' + #10 + '    ,[RSLT_TIME]     ' + #10 +
    '    ,[DR_NUM]        ' + #10 + '    ,[DR_NAME]       ' + #10 +
    '    ,[ABN_VALUE]     ' + #10 + '    ,[REF_VALUE]     ' + #10 +
    '    ,[RQST_DATE]     ' + #10 + '    ,[RQST_TIME]     ' + #10 +
    '    ,[RCPT_DATE]     ' + #10 + '    ,[RCPT_TIME]     ' + #10 +
    '    ,[RCPT_NUM]      ' + #10 + '    ,[SEND_DATE]     ' + #10 +
    '    ,[SEND_TIME]     ' + #10 + '    ,[DOWN_DATE]     ' + #10 +
    '    ,[DOWN_TIME])    ' + #10 + ' values(             ' + #10 +
    '  :HSP_NUM             ' + #10 + ', :ORD_DATE           ' + #10 +
    ', :ORD_NUM            ' + #10 + ', :ITM_SEQ            ' + #10 +
    ', :PSN_NAME           ' + #10 + ', :PSN_SEX            ' + #10 +
    ', :PSN_AGE            ' + #10 + ', :PSN_ID             ' + #10 +
    ', :CHT_NUM            ' + #10 + ', :HSP_DEPT           ' + #10 +
    ', :HSP_WARD           ' + #10 + ', :HSP_DOCTOR         ' + #10 +
    ', :SAMPLE_DATE        ' + #10 + ', :HLAB_CODE          ' + #10 +
    ', :HSUB_CODE          ' + #10 + ', :HLAB_NAME          ' + #10 +
    ', :LAB_CODE           ' + #10 + ', :LAB_NAME           ' + #10 +
    ', :LAB_UNIT           ' + #10 + ', :INSU_CODE          ' + #10 +
    ', :LAB_STAT           ' + #10 + ', :LAB_RESULT         ' + #10 +
    ', :DESC_RESULT1       ' + #10 + ', :DESC_RESULT2       ' + #10 +
    ', :DESC_RESULT3       ' + #10 + ', :DESC_RESULT4       ' + #10 +
    ', :DESC_RESULT5       ' + #10 + ', :RSLT_DATE          ' + #10 +
    ', :RSLT_TIME          ' + #10 + ', :DR_NUM             ' + #10 +
    ', :DR_NAME            ' + #10 + ', :ABN_VALUE          ' + #10 +
    ', :REF_VALUE          ' + #10 + ', :RQST_DATE          ' + #10 +
    ', :RQST_TIME          ' + #10 + ', :RCPT_DATE          ' + #10 +
    ', :RCPT_TIME          ' + #10 + ', :RCPT_NUM           ' + #10 +
    ', :SEND_DATE          ' + #10 + ', :SEND_TIME          ' + #10 +
    ', :DOWN_DATE          ' + #10 + ', :DOWN_TIME        ) ';

var
  sqlEwha: TuniQuery;
begin
  sqlEwha := TuniQuery.Create(Application);
  sqlEwha.Connection := dm_f.connectionEwha;

  try
    with sqlEwha do
    begin
      close;
      sql.clear;
      sql.text := dataSelect;
      paramByname('HSP_NUM').asstring := HSP_NUM;
      paramByname('ORD_DATE').asstring := ORD_DATE;
      paramByname('ORD_NUM').asstring := ORD_NUM;
      paramByname('HLAB_CODE').asstring := HLAB_CODE;
      paramByname('HSUB_CODE').asstring := HSUB_CODE;
      open;

      if isEmpty then
      begin
        close;
        sql.clear;
        sql.text := dataInsert;
        paramByname('HSP_NUM').asstring := HSP_NUM;
        paramByname('ORD_DATE').asstring := ORD_DATE;
        paramByname('ORD_NUM').asstring := ORD_NUM;
        paramByname('ITM_SEQ').asstring := ITM_SEQ;
        paramByname('PSN_NAME').asstring := PSN_NAME;
        paramByname('PSN_SEX').asstring := PSN_SEX;
        paramByname('PSN_AGE').asstring := PSN_AGE;
        paramByname('PSN_ID').asstring := PSN_ID;
        paramByname('CHT_NUM').asstring := CHT_NUM;
        paramByname('HSP_DEPT').asstring := HSP_DEPT;
        paramByname('HSP_WARD').asstring := HSP_WARD;
        paramByname('HSP_DOCTOR').asstring := HSP_DOCTOR;
        paramByname('SAMPLE_DATE').asstring := SAMPLE_DATE;
        paramByname('HLAB_CODE').asstring := HLAB_CODE;
        paramByname('HSUB_CODE').asstring := HSUB_CODE;
        paramByname('HLAB_NAME').asstring := HLAB_NAME;
        paramByname('LAB_CODE').asstring := LAB_CODE;
        paramByname('LAB_NAME').asstring := LAB_NAME;
        paramByname('LAB_UNIT').asstring := LAB_UNIT;
        paramByname('INSU_CODE').asstring := INSU_CODE;
        paramByname('LAB_STAT').asstring := LAB_STAT;
        paramByname('LAB_RESULT').asstring := LAB_RESULT;
        paramByname('DESC_RESULT1').asstring := DESC_RESULT1;
        paramByname('DESC_RESULT2').asstring := DESC_RESULT2;
        paramByname('DESC_RESULT3').asstring := DESC_RESULT3;
        paramByname('DESC_RESULT4').asstring := DESC_RESULT4;
        paramByname('DESC_RESULT5').asstring := DESC_RESULT5;
        paramByname('RSLT_DATE').asstring := RSLT_DATE;
        paramByname('RSLT_TIME').asstring := RSLT_TIME;
        paramByname('DR_NUM').asstring := DR_NUM;
        paramByname('DR_NAME').asstring := DR_NAME;
        paramByname('ABN_VALUE').asstring := ABN_VALUE;
        paramByname('REF_VALUE').asstring := REF_VALUE;
        paramByname('RQST_DATE').asstring := RQST_DATE;
        paramByname('RQST_TIME').asstring := RQST_TIME;
        paramByname('RCPT_DATE').asstring := RCPT_DATE;
        paramByname('RCPT_TIME').asstring := RCPT_TIME;
        paramByname('RCPT_NUM').asstring := RCPT_NUM;
        paramByname('SEND_DATE').asstring := SEND_DATE;
        paramByname('SEND_TIME').asstring := SEND_TIME;
        paramByname('DOWN_DATE').asstring := DOWN_DATE;
        paramByname('DOWN_TIME').asstring := DOWN_TIME;

        execsql;

      end;
    end;
    result := true;
    sqlEwha.Free;
  except
    on E: Exception do
    begin
      ExceptLogging('SaveEwhaLab' + E.Message);
      result := false;

    end;

  end;
end;

procedure LoadPatientFace(chartNo: string; imgaePic: Timage);
var
  CurrentFile: string;
  CurrentFile1: string;
  CurrentFile2: string;

  BinSize: integer;
  nFileStream: Tfilestream;
  BinData: array of Byte;
  S: string;
  i: integer;

  aString: TstringList;
  MemSize: integer;
  BStream: TStream;
  A: string;
  Buffer: array of Byte;
  picType, picPath2: string;

  imagename2: string;

  picname: string;
  ARot: integer;
  AID: integer;

  bitmap: TBitmap;
  jpg: TJPEGImage;
begin

  if configvalue.varUseHttp <> '1' then
  begin

    if trim(configvalue.imgSharefolderPath) = '' then
    begin
      try
        // 공유폴더 사용하지 않으면 DB에서 BLOB을 불러온다.

        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add(' Select * from ma_gogek_picture ');
          sql.add(' Where chart = :chart');
          paramByname('chart').value := chartNo;
          open;
          if not isEmpty then
          begin
            if fieldByName('pic').asstring <> '' then
            begin
              try
                picType := fieldByName('pictype').asstring;
                BStream := CreateBlobStream(fieldByName('pic'), bmRead);
                if UpperCase(picType) = 'JPG' then
                begin
                  jpg := TJPEGImage.Create;
                  jpg.LoadFromStream(BStream);
                  jpg.SaveToFile(picpath + 'picture\' + chartNo + '.' +
                    picType);
                  jpg.Free;
                end
                else // BMP
                begin
                  bitmap := TBitmap.Create;
                  bitmap.LoadFromStream(BStream);
                  bitmap.SaveToFile(picpath + 'picture\' + chartNo + '.'
                    + picType);
                  bitmap.Free;
                end;

                { MemSize := BStream.Size;
                  SetLength(Buffer, MemSize);
                  Inc(MemSize);
                  BStream.Read(Pointer(Buffer)^, MemSize);
                  for i := 0 to Memsize - 1 do
                  begin
                  A := A + Char(Buffer[i]);
                  end;

                  try
                  aString := TStringList.Create;
                  aString.Add(A);
                  aString.SaveToFile(PicPath +  'picture\' + chartNo + '.' +
                  picType);
                  finally
                  aString.Free;
                  end;
                }
              finally
                BStream.Free;

              end;
            end;

            if FileExists(picpath + 'Picture\' + chartNo + '.BMP') then
            begin
              CurrentFile := picpath + 'Picture\' + chartNo + '.BMP';
              imgaePic.Picture.LoadFromFile(CurrentFile);
            end
            else if FileExists(picpath + 'Picture\' + chartNo + '.JPG') then
            begin
              CurrentFile := picpath + 'Picture\' + chartNo + '.JPG';
              imgaePic.Picture.LoadFromFile(CurrentFile);
            end
            else
            begin
             // CurrentFile := picpath + 'icons\Default.jpg';


                 // 남자면...
                 if jumintogender(ma_jumin) ='F' then
                    CurrentFile := PicPath + '\icons\img_woman.jpg'
                 else
                     if jumintogender(ma_jumin) ='M' then
                        CurrentFile := PicPath + '\icons\img_man.jpg'
                        else
                                    CurrentFile := PicPath + '\icons\img_woman.jpg' ;


                  if FileExists(CurrentFile) then
                    imgaePic.Picture.LoadFromFile(CurrentFile)
                  else
                    imgaePic.Picture := nil;





            end;

          end
          else
          begin
                             // 남자면...
                 if jumintogender(ma_jumin) ='F' then
                    CurrentFile := PicPath + '\icons\img_woman.jpg'
                 else
                     if jumintogender(ma_jumin) ='M' then
                        CurrentFile := PicPath + '\icons\img_man.jpg'
                        else
                                    CurrentFile := PicPath + '\icons\img_woman.jpg' ;
              if FileExists(CurrentFile) then
                imgaePic.Picture.LoadFromFile(CurrentFile)
              else
                imgaePic.Picture := nil;

          end;
        end;
      except
        on E: Exception do
          ExceptLogging('Tdm_f.LoadChartItem:' + E.Message);
      end;
    end
    else
    begin
      // 공유폴더에서 가져오자....
      CurrentFile1 := picpath_face + 'Picture\' + chartNo + '.BMP';
      CurrentFile2 := picpath_face + 'Picture\' + chartNo + '.JPG';
      if FileExists(CurrentFile1) then
      begin
        imgaePic.Picture.LoadFromFile(CurrentFile1);
      end
      else if FileExists(CurrentFile2) then
      begin

        imgaePic.Picture.LoadFromFile(CurrentFile2);
      end
      else
      begin
//        CurrentFile := picpath + 'icons\Default.jpg';

                 // 남자면...
                 if jumintogender(ma_jumin) ='F' then
                    CurrentFile := PicPath + '\icons\img_woman.jpg'
                 else
                     if jumintogender(ma_jumin) ='M' then
                        CurrentFile := PicPath + '\icons\img_man.jpg'
                        else
                                    CurrentFile := PicPath + '\icons\img_woman.jpg' ;
        if FileExists(CurrentFile) then
          imgaePic.Picture.LoadFromFile(CurrentFile)
        else
          imgaePic.Picture := nil;

      end;

    end
  end
  else
  begin

    if configvalue.varFaceFromDB <> '1' then
    begin
      // http방식에서 환자얼굴을 불러오기.

      with dm_f.SqlWork do
      begin
        close;
        sql.clear;
        sql.add(' Select * from ma_gogek_picture ');
        sql.add(' Where chart = :chart');
        paramByname('chart').value := chartNo;
        open;
        if not isEmpty then
        begin
          ARot := fieldByName('rot').asinteger;

          picPath2 := configvalue.varHttpPath + fieldByName('picPath').asstring;
          if trim(picPath2) <> '' then
          begin
            imagename2 := ExtractURLFileName(picPath2);

            // lblPatImagename.caption  := ExtractURLFileName(picpath2);
            PatImagename := ExtractURLFileName(picPath2);
            // http에서 파일을 다운받아온경우다. 파일이름을알고 있어야 이미지를 확대한다.

            if not DirectoryExists(extractfilepath(paramstr(0)) + 'images') then
              ForceDirectories(extractfilepath(paramstr(0)) + 'images');


            // DownloadThread:= TDownloadThread.Create(0, picpath2,
            // extractFilepath(paramstr(0))+'images\'+ imagename2,
            // 0,
            // ARot);//  0 );

          end;
        end
        else
        begin
          with dm_f.SqlWork do
          begin
            close;
            sql.clear;
            sql.add(' Select * from imageinfo ');
            sql.add(' Where chartno = :chart and isFace=''1'' ');
            paramByname('chart').value := chartNo;
            open;
            if not isEmpty then
            begin
              picPath2 := configvalue.varHttpPath +
                fieldByName('filename').asstring;
              ARot := fieldByName('Rot').asinteger;
              AID := fieldByName('ID').asinteger;

            end
            else
            begin

              close;
              sql.clear;
              sql.add(' Select * from imageinfo ');
              sql.add(' Where chartno = :chart and origFilename like :origFilename ');
              paramByname('chart').value := chartNo;
              paramByname('origFilename').value := '%' + ma_Paname +
                '107' + '.jpg';
              open;
              if not isEmpty then
              begin
                picPath2 := configvalue.varHttpPath +
                  fieldByName('filename').asstring;

                ARot := fieldByName('Rot').asinteger;

                AID := fieldByName('ID').asinteger;

              end ;
            end;

            if trim(picPath2) <> '' then
            begin
              imagename2 := ExtractURLFileName(picPath2);

              // lblPatImagename.caption  := ExtractURLFileName(picpath2); //http에서 파일을 다운받아온경우다. 파일이름을알고 있어야 이미지를 확대한다.
              PatImagename := ExtractURLFileName(picPath2);
              // http에서 파일을 다운받아온경우다. 파일이름을알고 있어야 이미지를 확대한다.

              if not DirectoryExists(extractfilepath(paramstr(0)) + 'images')
              then
                ForceDirectories(extractfilepath(paramstr(0)) + 'images');


              // DownloadThread:= TDownloadThread.Create(aID, picpath2,
              // extractFilepath(paramstr(0))+'images\'+ imagename2,
              // 0,
              // ARot );

            end;

          end;

        end;
      end;
    end
    else
    begin
      // varFaceFromDB ='1' DB에서 얼굴 사진 불러오자.
      try
        // 공유폴더 사용하지 않으면 DB에서 BLOB을 불러온다.

        with dm_f.SqlWork do
        begin
          close;
          sql.clear;
          sql.add(' Select * from ma_gogek_picture ');
          sql.add(' Where chart = :chart');
          paramByname('chart').value := chartNo;
          open;
          if not isEmpty then
          begin
            if fieldByName('pic').asstring <> '' then
            begin
              try
                picType := fieldByName('pictype').asstring;
                BStream := CreateBlobStream(fieldByName('pic'), bmRead);
                MemSize := BStream.Size;
                SetLength(Buffer, MemSize);
                Inc(MemSize);
                BStream.Read(Pointer(Buffer)^, MemSize);
                for i := 0 to MemSize - 1 do
                begin
                  A := A + Char(Buffer[i]);
                end;

                try
                  aString := TstringList.Create;
                  aString.add(A);
                  aString.SaveToFile(picpath + 'picture\' + chartNo + '.'
                    + picType);
                finally
                  aString.Free;
                end;
              finally
                BStream.Free;

              end;
            end;

            if FileExists(picpath + 'Picture\' + chartNo + '.BMP') then
            begin
              CurrentFile := picpath + 'Picture\' + chartNo + '.BMP';
              imgaePic.Picture.LoadFromFile(CurrentFile);
            end
            else if FileExists(picpath + 'Picture\' + chartNo + '.JPG') then
            begin
              CurrentFile := picpath + 'Picture\' + chartNo + '.JPG';
              imgaePic.Picture.LoadFromFile(CurrentFile);
            end
            else
            begin
//              CurrentFile := picpath + 'icons\Default.jpg';

                 // 남자면...
                 if jumintogender(ma_jumin) ='F' then
                    CurrentFile := PicPath + '\icons\img_woman.jpg'
                 else
                     if jumintogender(ma_jumin) ='M' then
                        CurrentFile := PicPath + '\icons\img_man.jpg'
                        else
                                    CurrentFile := PicPath + '\icons\img_woman.jpg' ;
              if FileExists(CurrentFile) then
                imgaePic.Picture.LoadFromFile(CurrentFile)
              else
                imgaePic.Picture := nil;

            end;

          end
          else
          begin
                           // 남자면...
                 if jumintogender(ma_jumin) ='F' then
                    CurrentFile := PicPath + '\icons\img_woman.jpg'
                 else
                     if jumintogender(ma_jumin) ='M' then
                        CurrentFile := PicPath + '\icons\img_man.jpg'
                        else
                                    CurrentFile := PicPath + '\icons\img_woman.jpg' ;
              if FileExists(CurrentFile) then
                imgaePic.Picture.LoadFromFile(CurrentFile)
              else
                imgaePic.Picture := nil;


          end;
        end;
      except
        on E: Exception do
          ExceptLogging('Tdm_f.LoadChartItem:' + E.Message);
      end;

    end;
  end;

end;

function saveOrderInfo(ikind: integer; orderID: string; accessionID: string;
  jin_sid: string; chart: string; hname: string; ename: string; birth: string;
  gender: string; age: string; su_kor_name: string; su_eng_name: string;
  doctor: string; sector: string; order_day: string; order_time: string;
  su_key: string; jin_ilsu: string; reserve_time: string; emergency: string;
  sect: string; modality: string; studyID: string; treatRoom: string;
  docname: string; referHospCode: string; remark:string; isHealth:string): boolean;
const
  aSqlInsert = '  INSERT INTO orderinf                   ' + #10#13 +
    '          (orderID                       ' + #10#13 +
    '          ,accessionID                   ' + #10#13 +
    '          ,jin_sid                       ' + #10#13 +
    '          ,chart                         ' + #10#13 +
    '          ,hname                         ' + #10#13 +
    '          ,ename                         ' + #10#13 +
    '          ,birth                         ' + #10#13 +
    '          ,gender                        ' + #10#13 +
    '          ,age                           ' + #10#13 +
    '          ,su_kor_name                   ' + #10#13 +
    '          ,su_eng_name                   ' + #10#13 +
    '          ,doctor                        ' + #10#13 +
    '          ,sector                        ' + #10#13 +
    '          ,order_day                     ' + #10#13 +
    '          ,order_time                    ' + #10#13 +
    '          ,su_key                        ' + #10#13 +
    '          ,jin_ilsu                      ' + #10#13 +
    '          ,reserve_time                  ' + #10#13 +
    '          ,emergency                     ' + #10#13 +
    '          ,sect                          ' + #10#13 +
    '          ,remark                        ' + #10#13 +
    '          ,ikind                         ' + #10#13 +
    '          ,modality                      ' + #10#13 +
    '          ,studyID                       ' + #10#13 +
    '          ,treatroom                     ' + #10#13 +
    '          ,docname                       ' + #10#13 +
    '          ,referHospCode)                ' + #10#13 +
    '    VALUES                               ' + #10#13 +
    '          (:orderID         '
    + #10#13 + '          ,:accessionID     '
    + #10#13 + '          ,:jin_sid         '
    + #10#13 + '          ,:chart           '
    + #10#13 + '          ,:hname           '
    + #10#13 + '          ,:ename           '
    + #10#13 + '          ,:birth           '
    + #10#13 + '          ,:gender          '
    + #10#13 + '          ,:age             '
    + #10#13 + '          ,:su_kor_name     '
    + #10#13 + '          ,:su_eng_name     '
    + #10#13 + '          ,:doctor          '
    + #10#13 + '          ,:sector          '
    + #10#13 + '          ,:order_day       '
    + #10#13 + '          ,:order_time      '
    + #10#13 + '          ,:su_key          '
    + #10#13 + '          ,:jin_ilsu        '
    + #10#13 + '          ,:reserve_time    '
    + #10#13 + '          ,:emergency       '
    + #10#13 + '          ,:sect            '
    + #10#13 + '          ,:remark       '
    + #10#13 + '          ,:iKind            '
    + #10#13 + '          ,:modality        '
    + #10#13 + '          ,:studyID         '
    + #10#13 + '          ,:treatroom       '
    + #10#13 + '          ,:docname         '
    + #10#13 + '          ,:referHospCode ) ';

  aSqlUpdate = '  update orderinf    set                                 ' +
    #10#13 + '           hname          = :hname                       ' +
    #10#13 + '          ,ename          = :ename                       ' +
    #10#13 + '          ,birth          = :birth                       ' +
    #10#13 + '          ,gender         = :gender                      ' +
    #10#13 + '          ,age            = :age                         ' +
    #10#13 + '          ,su_kor_name    = :su_kor_name                 ' +
    #10#13 + '          ,su_eng_name    = :su_eng_name                 ' +
    #10#13 + '          ,doctor         = :doctor                      ' +
    #10#13 + '          ,sector         = :sector                      ' +
    #10#13 + '          ,order_time     = :order_time                  ' +
    #10#13 + '          ,su_key         = :su_key                      ' +
    #10#13 + '          ,jin_ilsu       = :jin_ilsu                    ' +
    #10#13 + '          ,reserve_time   = :reserve_time                ' +
    #10#13 + '          ,emergency      = :emergency                   ' +
    #10#13 + '          ,sect           = :sect                        ' +
    #10#13 + '          ,iKind          = :iKind                       ' +
    #10#13 + '          ,remark         = :remark                      ' +
    #10#13 + '          ,modality       = :modality                    ' +
    #10#13 + '          ,studyID        = :studyID                     ' +
    #10#13 + '          ,treatroom      = :treatroom                   ' +
    #10#13 + '          ,docname        = :docname                     ' +
    #10#13 + '          ,referHospCode  = :referHospCode               ' +
    #10#13 + '          where orderID       = :orderID                 ' +
    #10#13 + '           and order_day      = :order_day               ' +
    #10#13 + '           and accessionID    = :accessionID             ' +
    #10#13 + '           and jin_sid        = :jin_sid                 ' +
    #10#13 + '           and chart          = :chart                   ';

  aSqlDelete = '  delete from orderinf         ' + #10#13 +
    '  where  orderID = :orderID   ';

  aSqlSelect = '  select * from orderinf         ' + #10#13 +
    '  where  orderID = :orderID   ';

begin

      if   (configvalue.varRISSYNC = '1') and  ( configvalue.varImageUse='1') then
      begin

          try
            with dm_f.sqlBit do
            begin
              close;
              sql.clear;
              sql.text := 'use mediroPack';
              execsql;

              close;
              sql.clear;
              sql.text := aSqlSelect;
              paramByname('orderID').asstring := orderID;
              open;
              if not isEmpty then
              begin
                ikind := 1;
              end
              else
              begin
                ikind := 0;
              end;

              close;
              sql.clear;

              case ikind of
                0:
                  sql.text := aSqlInsert; // insert
                1:
                  sql.text := aSqlUpdate; // Update
                2:
                  sql.text := aSqlDelete; // Delete  삭제는 jinryo삭제시 진행한다.
              end;

              paramByname('orderID').asstring := orderID;

              case ikind of
                0, 1:
                  begin
                    paramByname('accessionID').asstring := accessionID;
                    paramByname('jin_sid').asstring := jin_sid;
                    paramByname('chart').asstring := chart;
                    paramByname('hname').asstring := hname;
                    paramByname('ename').asstring := ename;
                    paramByname('birth').asstring := birth;
                    paramByname('gender').asstring := gender;
                    paramByname('age').asstring := age;
                    paramByname('su_kor_name').asstring := su_kor_name;
                    paramByname('su_eng_name').asstring := su_eng_name;
                    paramByname('doctor').asstring := doctor;
                    paramByname('sector').asstring := sector;
                    paramByname('order_day').asstring := order_day;
                    paramByname('order_time').asstring := order_time;
                    paramByname('su_key').asstring := su_key;
                    paramByname('jin_ilsu').asstring := jin_ilsu;
                    paramByname('reserve_time').asstring := reserve_time;
                    paramByname('emergency').asstring := emergency;
                    paramByname('sect').asstring := sect;
                    paramByname('ikind').asstring := isHealth;
                    paramByname('remark').asstring := remark;
                    paramByname('modality').asstring := modality;
                    paramByname('studyID').asstring := studyID;
                    paramByname('treatroom').asstring := treatRoom;
                    paramByname('docName').asstring := docname;
                    paramByname('referHospCode').asstring := referHospCode;

                  end;

              end;
              execsql;

            end;
          except
            on E: Exception do
            begin
              ExceptLogging('saveOrderInfo' + E.Message);
              result := false;

            end;

          end;
      end;
end;

function saveOrderInfo_updateEngName(orderDay: string; chart: string;
  hname: string; ename: string; birth: string; gender: string;
  age: string; referhospcode:string): boolean;
const

  aSqlUpdate = '  update orderinf    set                                 '  + #10#13
    + '         hname          = :hname                       ' + #10#13 +
    '          ,ename          = :ename                       ' + #10#13 +
    '          ,birth          = :birth                       ' + #10#13 +
    '          ,gender         = :gender                      ' + #10#13 +
    '          ,age            = :age                         ' + #10#13 +
    '          ,referhospcode  = :referhospcode               ' + #10#13 +
    '          where    order_day = :order_day and chart = :chart            ';

begin

      if   (configvalue.varRISSYNC = '1') and  ( configvalue.varImageUse='1') then
      begin


          try


            with dm_f.sqlBit do
            begin
              close;
              sql.clear;
              sql.text := 'use mediroPack';
              execsql;

              close;
              sql.clear;
              sql.text := aSqlUpdate;
              paramByname('order_day').asstring     := orderDay;
              paramByname('chart').asstring         := chart;
              paramByname('hname').asstring         := hname;
              paramByname('ename').asstring         := ename;
              paramByname('birth').asstring         := birth;
              paramByname('gender').asstring        := gender;
              paramByname('age').asstring           := age;
              paramByname('referhospcode').asstring := referhospcode;

              execsql;
              result :=true;
            end;
          except
            on E: Exception do
            begin
              ExceptLogging('saveOrderInfo_updateEngName' + E.Message);
              result := false;

            end;

          end;
      end;

end;


function saveOrderInfo_updateIhealth(orderDay: string; chart: string;
  ikind: string): boolean;
const

  aSqlUpdate = '  update orderinf    set                                 '  + #10#13
    + '         ikind   = :ikind                                         ' + #10#13 +
    '          where    order_day = :order_day and chart = :chart            ';

begin

   if   (configvalue.varRISSYNC = '1') and  ( configvalue.varImageUse='1') then
   begin
      try
        with dm_f.sqlBit do
        begin
          close;
          sql.clear;
          sql.text := 'use mediroPack';
          execsql;

          close;
          sql.clear;
          sql.text := aSqlUpdate;
          paramByname('order_day').asstring     := orderDay;
          paramByname('chart').asstring         := chart;
          paramByname('ikind').asstring         := ikind;

          execsql;
            result := true;
        end;
      except
        on E: Exception do
        begin
          ExceptLogging('saveOrderInfo_updateEngName' + E.Message);
          result := false;

        end;
    end;
  end;

end;


function saveReferalPad_Jinryo(jins_key: string; requestPK: integer): boolean;
const
  aSqlInsert = ' INSERT INTO  RP_requestUseJinsKey       ' + #10#13 +
    '                  (jins_key              ' + #10#13 +
    '                   ,requestPK)            ' + #10#13 +
    '             VALUES                       ' + #10#13 +
    '                   (:jins_key            ' + #10#13 +
    '                   ,:requestPK)           ';

  aSqlDelete = '  delete from RP_requestUseJinsKey                       ' +
    #10#13 + '          where     requestPK        = :requestPK            ';

var
  iQuery: TuniQuery;

begin

  try
    iQuery := TuniQuery.Create(Application);
    iQuery.Connection := dm_f.uniConnection1;

    with iQuery do
    begin
      close;
      sql.clear;

      // sql.text :=  aSqlDelete;
      // paramByName('requestPK').AsInteger :=   requestPK       ;
      // execsql;

      close;
      sql.clear;
      sql.text := aSqlInsert;
      paramByname('requestPK').asinteger := requestPK;
      paramByname('jins_key').asstring := jins_key;
      execsql;
      result := true;
    end;
  finally

    iQuery.Free;

  end;

end;

procedure LoadDocList(DocList: TColumnComboBox; team_key: string);
begin

  // ToDo : Why slow load???

  with DocList do
  begin
    Columns.clear;
    ComboItems.clear;

    with Columns.add do // 0.팀명
    begin
      Width := 0;
      Font.Style := [fsBold];
    end;
    with Columns.add do // 1.ID
    begin
      Width := 0;
      Font.Color := clBlue;
      Font.Style := [fsBold];
    end;
    with Columns.add do // 2.의사명
    begin
      Width := 100;
    end;
    with Columns.add do // 3.면허
    begin
      Width := 0;
      Font.Color := clBlue;
      Font.Style := [fsBold];
    end;

    with Columns.add do // 4.SaBun
    begin
      Width := 0;
      Font.Color := clBlue;
      Font.Style := [fsBold];
    end;


    // with ComboItems.Add do
    // begin
    //
    // Strings.Add('');   //0
    // Strings.Add('');     //1
    // Strings.Add('전체');   //2
    // Strings.Add('');     //3
    // Strings.Add('');        //4
    // end;

  end;

  if team_key = '' then
  begin

    DocList.ItemIndex := 0;
    exit;
  end;

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;

    // Sql.Add(' select saName, team_name, team_color, saBun , saMyunhu           ');
    // Sql.Add(' from  ma_sawon_basic s join ma_team t on s.sateam = t.team_name  ');
    // Sql.Add(' where saJikGub= ''1''  and nouse <> ''1''                        ');

    sql.add(' select * from  ma_sawon_basic             ');
    sql.add(' where saJikGub= ''1'' and  nouse <> ''1''                      ');

    if team_key <> '' then
    begin
      sql.add(' and saTeam =:saTeam        ');
      paramByname('saTeam').asstring := team_key;
    end;
    sql.add(' order by  jubsu_order desc, sabun                                              ');
    // convert(int, sabun)   '); //order by team_name');

    open;
    first;
    if not isEmpty then
    begin
      while not eof do
      begin
        // cbTeam.items.Add(FieldByName('team_name').AsString); //대기자리스트 팀코드
        // cbTeamName.items.Add(FieldByName('team_doctor1').AsString);
        // cbTeamName.items.Add(FieldByName('saName').AsString);  //대기자리스트용

        // 0:team_name  1:teamColor 2: team_doctro1

        with DocList do
        begin
          with ComboItems.add do
          begin

            Strings.add(trim(fieldByName('sateam').asstring)); // 0
            Strings.add(trim(fieldByName('saID').asstring)); // 1
            Strings.add(trim(fieldByName('saName').asstring)); // 2
            Strings.add(trim(fieldByName('saMyunhu').asstring)); // 3
            Strings.add(trim(fieldByName('saBun').asstring)); // 4
          end;

        end;
        Next;
      end;

      DocList.ItemIndex := 0;
    end
    else
    begin
      DocList.ItemIndex := -1;
    end;
  end;
end;

procedure LoadDocList2(DocList: TColumnComboBox; team_key: string);
begin

  // ToDo : Why slow load???

  with DocList do
  begin
    Columns.clear;
    ComboItems.clear;
  end;

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    // Sql.Add(' select saName, team_name, team_key, team_color, saBun                     ');
    // Sql.Add(' from  ma_sawon_basic s join ma_team t on s.sateam=t.team_name             ');
    sql.add(' select * from  ma_sawon_basic             ');
    sql.add(' where saJikGub= ''1'' and  nouse <> ''1''                      ');
    if team_key <> '' then
    begin
      sql.add(' and saTeam =:saTeam        ');
      paramByname('saTeam').asstring := team_key;
    end;
    sql.add(' order by  jubsu_order, sabun                                              ');
    // convert(int, sabun)   '); //order by team_name');

    // Sql.Add('select * from ma_team');
    // Sql.Add('order by team_name');
    open;
    first;
    if not isEmpty then
    begin
      while not eof do
      begin
        // cbTeam.items.Add(FieldByName('team_name').AsString); //대기자리스트 팀코드
        // cbTeamName.items.Add(FieldByName('team_doctor1').AsString);
        // cbTeamName.items.Add(FieldByName('saName').AsString);  //대기자리스트용

        // 0:team_name  1:teamColor 2: team_doctro1
        with DocList do
        begin
          with Columns.add do
          begin
            Width := 0;
            Font.Style := [fsBold];
            Font.name := 'Malgun Gothic'; // '맑은 고딕';
            Font.Size := 12;
          end;
          with Columns.add do
          begin
            Width := 0;
            Font.Color := clBlue;
            Font.Style := [fsBold];
            Font.name := 'Malgun Gothic'; // '맑은 고딕';
            Font.Size := 12;
          end;
          with Columns.add do
          begin
            Width := 100;
            Font.Style := [fsBold];
            Font.name := 'Malgun Gothic'; // '맑은 고딕';
            Font.Size := 12;
          end;

          with ComboItems.add do
          begin
            // Strings.Add(FieldByName('team_name').AsString);
            // Strings.Add(FieldByName('team_color').AsString);
            // Strings.Add(FieldByName('team_doctor1').AsString);
            Strings.add(trim(fieldByName('sateam').asstring));
            Strings.add(trim(fieldByName('saID').asstring));
            Strings.add(trim(fieldByName('saName').asstring));

          end;
        end;
        Next;
      end;

      DocList.ItemIndex := 0;
    end
    else
    begin
      DocList.ItemIndex := -1;
    end;
  end;
end;



function LoadDocName(team, doc_code: string):string;
begin

  result := '' ;

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;


    sql.add(' select * from  ma_sawon_basic             ');
    sql.add(' where saJikGub= ''1''                     ');

    sql.add(' and saTeam =:saTeam        ');
    sql.add(' and said =:said        ');
    paramByname('saTeam').asstring := team;
    paramByname('said').asstring   := doc_code;
    open;

    if not isEmpty then
    begin
       result:= trim(fieldByName('saName').asstring);
    end;

  end;
end;



function LoadDocEngName(team, doc_code: string):string;
begin

  result := '' ;

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;


    sql.add(' select * from  ma_sawon_basic             ');
    sql.add(' where saJikGub= ''1''                     ');

    sql.add(' and saTeam =:saTeam        ');
    sql.add(' and said =:said        ');
    paramByname('saTeam').asstring := team;
    paramByname('said').asstring   := doc_code;
    open;

    if not isEmpty then
    begin
       result:= trim(fieldByName('saEngName').asstring);
    end;

  end;
end;





// 대기상태  변경---------------------------------------------

procedure ChangeStatus2(jin_day: TdateTime; JubsuID: string; chart: string;
  kind: string; varTeam: string; doc_code: string);
var
  varTag: string;
  varpridn: string;
begin

  varTag := kind; // inttostr(2);

  // 예약이 두개면 두개다 찾아서
  varpridn := varGridprIdn; // main_f.varPidn2;
  // showmessage( varprIdn);                //   cbDoc.itemindex := strtoint( cbDoc.ColumnItems[cbDoc.itemindex, 0]);

  if ChangeStatus(ma_Paname, jin_day, // formatdatetime('yyyy-mm-dd', now),
    varTeam, // inttostr(cbteam.valueindex+1),
    doc_code,
    chart, '',
    varTag,
    JubsuID) = true then
  begin

    // if configvalue.varSunapFinish ='1' then
    // Promise_UpdatePos_withCharPday (ma_chart,
    // formatdatetime('yyyy-mm-dd', now),
    // vartag)
    // else
    // begin
    // if varPridn <> '' then
    // Promise_UpdatePos(strtoint(varPridn), vartag);
    // end;

  end;

  // main_f.btnRefreshClick(self);

end;

procedure gridColSelect(Agrid: TadvStringGrid; aRect: Trect;
  aCheckListBox: TCheckListBox);
var
  aCol: integer;
begin

  if aCheckListBox.visible = false then
  begin

    with aCheckListBox do // ColumnCheck do//
    begin

      Items.clear;

      for i := 0 to Agrid.ColumnHeaders.Count - 1 do
      begin
        aCol := Agrid.RealColIndex(i);
        // Items.Add(aGrid.ColumnHeaders[aCol]) ;
        Items.add(Agrid.cells[aCol, 0]);

        if Agrid.ColWidths[aCol] <> 0 then
          checked[aCol] := true;

      end;

      Width := 165;

      Left := aRect.Left + Agrid.fixedColWidth;
      Top := aRect.Top + Agrid.fixedRowHeight;;
      // +( btnRect.Bottom- btnRect.Top);
      // width :=  grdRect.right -  grdRect.left ;
      Height := Agrid.Height - 50;

      visible := true;

    end;
  end
  else
  begin

    with aCheckListBox do // ColumnCheck do//
    begin
      for i := 0 to Agrid.ColumnHeaders.Count - 1 do
      begin
        aCol := Agrid.RealColIndex(i);

        if checked[aCol] = false then
          Agrid.ColWidths[aCol] := 0
        else
        begin
          if Agrid.ColWidths[aCol] = 0 then
            Agrid.ColWidths[aCol] := 50;

        end;
      end;
      visible := false;
    end;

  end;

end;



procedure gridColSet(kind : integer;Agrid: TadvStringGrid; aCheckListBox: TCheckListBox);
var
  aCol: integer;
begin

 case kind  of
 0:
  begin

    with aCheckListBox do // ColumnCheck do//
    begin

      Items.clear;

      for i := 0 to Agrid.ColumnHeaders.Count - 1 do
      begin
        aCol := Agrid.RealColIndex(i);
        // Items.Add(aGrid.ColumnHeaders[aCol]) ;
        Items.add(Agrid.cells[aCol, 0]);

        if Agrid.ColWidths[aCol] <> 0 then
          checked[aCol] := true;

      end;

//      Width := 165;
//
//      Left := aRect.Left + Agrid.fixedColWidth;
//      Top := aRect.Top + Agrid.fixedRowHeight;;
//      // +( btnRect.Bottom- btnRect.Top);
//      // width :=  grdRect.right -  grdRect.left ;
//      Height := Agrid.Height - 50;

      visible := true;

    end;
  end;
 1:
  begin

     with aCheckListBox do // ColumnCheck do//
     begin
      for i := 0 to Agrid.ColumnHeaders.Count - 1 do
      begin
        aCol := Agrid.RealColIndex(i);

        if checked[aCol] = false then
          Agrid.ColWidths[aCol] := 0
        else
        begin

          if Agrid.ColWidths[aCol] = 0 then
            Agrid.ColWidths[aCol] := 50;

        end;
      end;
      visible := false;
     end;

   end;
  end;
end;

function returnChojae(iChojae: integer): string;
begin

  case iChojae of
    0:
      result := '초진';
    1:
      result := '재진';
    2:
      result := '심야초진';
    3:
      result := '심야재진';
    4:
      result := '진찰료산정안함';
    5:
      result := '동일과복수내원';
    6:
      result := '타인대리내원';
  end;
end;

function returnJongByul(iJongByul: integer): string;
begin

  case iJongByul of
    0:
      result := '건강보험';
    1:
      result := '보호1종';
    2:
      result := '보호2종';
    3:
      result := '일반';
    4:
      result := '보호4종';
    5:
      result := '보호8종';
    6:
      result := '산재';
    7:
      result := '자보';
    8:
      result := '차상위1종';
    9:
      result := '차상위2종';
    10:
      result := '차상위2종 장애인';
  end;

end;

function LoadReferHosp_Doc(hospCode: string): TstringList;
const
  SelectSogeja = 'select * from ma_referhosp_doc  where refercode = :refercode';
begin
  result := TstringList.Create;
  result.clear;
  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.text := SelectSogeja;
    paramByname('referCode').asstring := hospCode;
    sql.add('Order by DocCode ');
    open;
    if not isEmpty then
    begin
      while not eof do
      begin

        result.add(fieldByName('DocName').asstring);

        Next;
      end;
    end;
  end;
end;

function SaveRefererHosp(refercode, hospName, rhospPhone, rhospPhone2, remark,
  rHosp, rhospID, regday: string): boolean;
var
  isSaved: boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add('select * from ma_referhosp');
      sql.add('where refercode=:refercode');
      paramByname('refercode').asstring := refercode;
      open;
      if isEmpty then
      begin
        isSaved := false;
      end
      else
      begin
        isSaved := true;
      end;
    end;

    with dm_f.SqlWork do
    begin
      close;
      sql.clear;

      if isSaved = false then
      begin
        sql.add('insert into ma_referhosp');
        sql.add(' (refercode, hospName, remark, rHosp, rhospPhone,rhospPhone2, rhospID, regday) values');
        sql.add(' (:refercode, :hospName, :remark, :rHosp, :rhospPhone,:rhospPhone2, :rhospID, :regday   )');
      end
      else
      begin

        sql.add('update  ma_referhosp set');
        sql.add(' hospName=:hospName, remark=:remark, ');
        sql.add(' rHosp=:rHosp, rhospPhone=:rhospPhone, rhospPhone2=:rhospPhone2, rhospID=:rhospID, regday=:regday ');
        sql.add(' where refercode=:refercode');

      end;

      paramByname('refercode').asstring := refercode;
      paramByname('hospName').asstring := hospName;
      paramByname('rhospPhone').asstring := rhospPhone;
      paramByname('rhospPhone2').asstring := rhospPhone2;

      paramByname('remark').asstring := remark;
      paramByname('rHosp').asstring := rHosp;
      paramByname('rhospID').asstring := rhospID;
      paramByname('regday').asstring := regday;

      execsql;

      result := true;
    end;

  except

  end;
end;


function DeleteRefererHosp(refercode : string): boolean;
begin
  result := false;
  try

    with dm_f.SqlWork do
    begin
      close;
      sql.clear;


       sql.add(' Delete from  ma_referhosp ');
       sql.add(' where refercode=:refercode');

       paramByname('refercode').asstring := refercode;

       execsql;

       Close;
       SQL.Clear;

       sql.add('  delete from  ma_referhosp_Doc ');
       sql.add('  where refercode=:refercode  ');


       ParamByName('refercode').AsString  := refercode;

       ExecSQL;




      result := true;
    end;

  except

  end;
end;


procedure SaveRefererHosp_Doc(refercode, docname, DocPhone, DocCode,
  regday: string);
var
  isSaved: boolean;
begin

  with dm_f.SqlWork do
  begin

    close;
    sql.clear;
    sql.add('select * from ma_referhosp_Doc');
    sql.add('where refercode = :refercode and docCode=:docCode');
    paramByname('refercode').asstring := refercode;
    paramByname('DocCode').asstring := DocCode;
    open;
    if isEmpty then
    begin
      isSaved := false;
    end
    else
    begin
      isSaved := true;
    end;
  end;

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;

    if isSaved = false then
    begin
      sql.add('insert into ma_referhosp_Doc');
      sql.add(' (refercode,   DocName, DocPhone, DocCode,  regday) values');
      sql.add(' (:refercode, :DocName, :DocPhone, :DocCode, :regday)');
    end
    else
    begin

      sql.add('  update  ma_referhosp_Doc set');
      sql.add('  DocName=:DocName ,DocPhone=:DocPhone, ');
      sql.add('  regday =:regday ');
      sql.add('  where refercode=:refercode and DocCode=:DocCode ');

    end;

    paramByname('refercode').asstring := refercode;
    paramByname('DocCode').asstring := DocCode;
    paramByname('DocName').asstring := docname;
    paramByname('DocPhone').asstring := DocPhone;
    paramByname('regday').asstring := regday;

    execsql;
  end;

end;

function ChangeJubsuStatus(JubsuID: string; team: string; // 진료실
  Doc: string; // 담당의
  doc_code: string; jongbyul: integer; // 종별
  choje: integer; // 초재
  health: integer; // 검진종류
  treatRoom: string; // 진료실
  isInpat: integer): boolean; // 입원구분

var
  i: integer;
begin
  try
    // Dm_f.zConnection.StartTransaction;
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add(' update  ma_jubsu set');
      sql.add(' team=:team, treatroom=:treatroom, doc=:doc, doc_Code=:doc_Code, ');
      sql.add(' jongbyul=:jongbyul, choje=:choje, health=:health, isInpat=:isInpat ');
      sql.add(' where id=:id');

      paramByname('id').asstring := JubsuID;
      paramByname('team').asstring := team;
      paramByname('treatroom').asstring := treatRoom;
      paramByname('doc').asstring := Doc;
      paramByname('doc_code').asstring := doc_code;
      paramByname('jongbyul').asinteger := jongbyul;
      paramByname('choje').asinteger := choje;
      paramByname('health').asinteger := health;
      paramByname('isInpat').asinteger := isInpat;
      execsql;
      // Dm_f.zConnection.Commit;
      result := true;


      //ToDo : tblStatus 에 값을 변경 -> 1증가
      updateTblStatus(now);


    end;
  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [접수상태변경오류]' + E.Message);
    end;

  end;

end;

function ChangeRPStatus(pk: integer;
  aState: string;
  patientID: string;
  patientName: string;
  dynDate: TdateTime;
  isDelete:boolean = false): boolean;
var
  i: integer;
begin
  try
    if isDelete=false then
    begin
          // Dm_f.zConnection.StartTransaction;
          with dm_f.SqlWork do
          begin
            close;
            sql.clear;
            sql.add('update  rp_request set');
            sql.add('state =:state, dyndate =:dyndate ,modifyDate=:modifyDate, patientID=:patientID, patientName=:patientName');
            sql.add('where pk=:pk ');

            paramByname('pk').asinteger := pk;
            paramByname('dyndate').AsDateTime     := strToDatetime(formatdatetime('YYYY-MM-DD',dynDate)
                     + ' '+ formatdatetime('hh:mm:ss zzz',now));
            paramByname('modifyDate').AsDateTime  := now;
            paramByname('state').asstring := aState;
            paramByname('patientID').asstring := patientID;
            paramByname('patientName').asstring := patientName;

            execsql;
            // Dm_f.zConnection.Commit;
            result := true;
          end;

    end
    else
    begin
          with dm_f.SqlWork do
          begin
            close;
            sql.clear;
            sql.add('delete from rp_request');
            sql.add('where pk=:pk ');
            sql.add('and isInputHosp =''1'' ');  //메디로에서 입력한거만 지우자

            paramByname('pk').asinteger := pk;
            execsql;

            result := true;
          end;

    end;


  except
    on E: Exception do
    begin
      // Dm_f.zConnection.Rollback;
      result := false;
      showmessage(' [RP_Requwest 상태변경오류]' + E.Message);
    end;

  end;

end;




procedure loadChkList(richEdit: Trichedit; chart: string);
var
  varLength, varEditEnd: integer;
  Temp: string;
  jin_day: string;
  jin_Day2: string;
begin
  richEdit.clear;
  // edtChkList
  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('Select * from ma_chart_chklist');
    sql.add('Where  chart= :Chart order by jin_day  desc ');
    // and ChkDate= :ChkDate');
    paramByname('Chart').asstring := chart;
    open;

    if not isEmpty then
    begin

      while not eof do
      begin

        jin_day := fieldByName('jin_Day').asstring;

        if jin_Day2 <> jin_day then
        begin

          richEdit.SelAttributes.Color := clGreen;
          if richEdit.Lines.Count = 0 then
            richEdit.SelText := jin_day
          else
            richEdit.SelText := #13 + jin_day
        end;

        Temp := fieldByName('chk_item').asstring;
        richEdit.SelAttributes.Color := clBlue;
        richEdit.SelText := Temp;

        Temp := #32 + ':' + fieldByName('chk_value').asstring + #32;
        richEdit.SelAttributes.Color := clblack;
        richEdit.SelText := Temp;

        jin_Day2 := jin_day;

        Next;
      end;

    end;
  end;

end;

Function loadLockState(chart: string; jin_day: string): TLockStatResult;
begin
  result.aResult := false;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear; // LocIpAddr
    sql.add('Select * from ma_LocCht        ');
    sql.add('Where  LocChtNum = :LocChtNum and locChtDtm like :locChtDtm  ');
    // and ChkDate= :ChkDate');
    paramByname('LocChtNum').asstring := chart;
    paramByname('locChtDtm').asstring := jin_day + '%'; // 20190708111025
    open;

    if not isEmpty then
    begin

      result.aResult := true;
      result.LocUidCod := fieldByName('LocUidCod').asstring;
      result.LocIpAddr := fieldByName('LocIpAddr').asstring;
      result.LocPCNam := fieldByName('LocPCNam').asstring;
      result.LocExeNam := fieldByName('LocExeNam').asstring;
      result.LocLevCod := fieldByName('LocLevCod').asstring;

    end;
  end;

end;

// 내가 제어권 있는지 확인하자.
Function loadLockState2(chart: string; jin_day: string; IPAddr: string)
  : TLockStatResult;
begin
  result.aResult := false;
  with dm_f.SqlWork do
  begin
    close;
    sql.clear; // LocIpAddr
    sql.add('Select * from ma_LocCht        ');
    sql.add('Where LocIpAddr=:LocIpAddr and  LocChtNum = :LocChtNum and locChtDtm like :locChtDtm  ');
    // and ChkDate= :ChkDate');
    paramByname('LocChtNum').asstring := chart;
    paramByname('locChtDtm').asstring := jin_day + '%'; // 20190708111025
    paramByname('LocIpAddr').asstring := IPAddr;
    open;

    if not isEmpty then
    begin

      result.aResult := true;
      result.LocUidCod := fieldByName('LocUidCod').asstring;
      result.LocIpAddr := fieldByName('LocIpAddr').asstring;
      result.LocPCNam := fieldByName('LocPCNam').asstring;
      result.LocExeNam := fieldByName('LocExeNam').asstring;
      result.LocLevCod := fieldByName('LocLevCod').asstring;

    end;

    close;
    sql.clear; // LocIpAddr
    sql.add('Select * from ma_LocCht        ');
    sql.add('Where  LocChtNum = :LocChtNum and locChtDtm like :locChtDtm and LocLevCod=''10'' ');
    // and ChkDate= :ChkDate');
    paramByname('LocChtNum').asstring := chart;
    paramByname('locChtDtm').asstring := jin_day + '%'; // 20190708111025

    open;

    if not isEmpty then
    begin

      result.LocUidCod_host := fieldByName('LocUidCod').asstring;
      result.LocIpAddr_host := fieldByName('LocIpAddr').asstring;
      result.LocPCNam_host := fieldByName('LocPCNam').asstring;
      result.LocExeNam_host := fieldByName('LocExeNam').asstring;
      result.LocLevCod_host := fieldByName('LocLevCod').asstring;

    end;

  end;

end;

Function ReleaseLockAnother(chart, LocExeNam, LocUidCod,
  LocIpAddr: string): boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('delete from ma_LocCht');
      sql.add('Where LocExeNam=:LocExeNam and LocChtNum <> :LocChtNum  and LocUidCod =:LocUidCod and LocIpAddr=:LocIpAddr');
      // and ChkDate= :ChkDate');
      paramByname('LocExeNam').asstring := LocExeNam;
      paramByname('LocChtNum').asstring := chart;
      paramByname('LocUidCod').asstring := LocUidCod;
      paramByname('LocIpAddr').asstring := LocIpAddr;
      execsql;

      result := true;
    end;
  except

  end;

end;

// 강제로 끊기
// ToDo: ma_LocCht 를 업데이트시켜서 제어권을 빼앗긴경우는 저장 못하게 해야..
// 제어권을 빼앗긴경우 LocLevCod ==> 10 -> 20으로 변경 10: 내가 제어권 20: 제어권 뺏김
Function ReleaseLockOneChart(chart, LocExeNam, LocUidCod,
  LocIpAddr: string): boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      // Sql.Add('delete from ma_LocCht');
      sql.add('update  ma_LocCht set');
      sql.add('LocLevCod =''20'' ');
      sql.add('Where LocExeNam=:LocExeNam and LocChtNum = :LocChtNum  and LocUidCod =:LocUidCod and LocIpAddr=:LocIpAddr');
      // and ChkDate= :ChkDate');
      paramByname('LocExeNam').asstring := LocExeNam;
      paramByname('LocChtNum').asstring := chart;
      paramByname('LocUidCod').asstring := LocUidCod;
      paramByname('LocIpAddr').asstring := LocIpAddr;
      execsql;

      result := true;
    end;
  except

  end;

end;

Function ReleaseLockAll(LocExeNam, LocUidCod, LocIpAddr: string): boolean;
begin
  result := false;
  try
    with dm_f.SqlWork do
    begin
      close;
      sql.clear;
      sql.add('delete from ma_LocCht');
      sql.add('Where LocExeNam=:LocExeNam and LocUidCod =:LocUidCod and LocIpAddr=:LocIpAddr');
      // and ChkDate= :ChkDate');
      paramByname('LocExeNam').asstring := LocExeNam;
      paramByname('LocUidCod').asstring := LocUidCod;
      paramByname('LocIpAddr').asstring := LocIpAddr;
      execsql;

      result := true;
    end;
  except

  end;

end;

{ [LocExeNam]
  ,[LocUidCod]
  ,[LocIpAddr]
  ,[LocChtDtm]
  ,[LocOcmNum]
  ,[LocPCNam] }

Function ExcuteLock(LocExeNam, LocUidCod, LocIpAddr, LocChtNum,
  LocPCNam: string): boolean;
begin
  result := false;
  try

    with dm_f.SqlWork do
    begin

      close;
      sql.clear;
      sql.add('select * from ma_LocCht');
      sql.add('where LocExeNam=:LocExeNam and  LocUidCod =:LocUidCod and  ');
      sql.add(' LocIpAddr =:LocIpAddr and ');
      sql.add(' LocChtNum =:LocChtNum  ');
      paramByname('LocExeNam').asstring := LocExeNam;
      paramByname('LocUidCod').asstring := LocUidCod;
      paramByname('LocIpAddr').asstring := LocIpAddr;
      paramByname('LocChtNum').asstring := LocChtNum;
      open;
      if isEmpty then

      begin

        close;
        sql.clear;
        sql.add('insert into ma_LocCht');
        sql.add('(LocExeNam, LocLevCod, LocUidCod, LocIpAddr, LocChtNum,LocChtDtm, LocPCNam) values ');
        // and ChkDate= :ChkDate');
        sql.add('(:LocExeNam,:LocLevCod, :LocUidCod, :LocIpAddr, :LocChtNum, :LocChtDtm, :LocPCNam) ');
        // and ChkDate= :ChkDate');
        paramByname('LocExeNam').asstring := LocExeNam;
        paramByname('LocUidCod').asstring := LocUidCod;
        paramByname('LocIpAddr').asstring := LocIpAddr;
        paramByname('LocChtDtm').asstring :=
          formatdatetime('yyyymmddhhnnss', now);
        paramByname('LocChtNum').asstring := LocChtNum;
        paramByname('LocPCNam').asstring := LocPCNam;
        paramByname('LocLevCod').asstring := '10';
        execsql;
        result := true;

      end;

    end;
  except

    on E: Exception do
    begin
      ExceptLogging('Save ExcuteLock' + E.Message);
      // showmessage(E.Message);

      result := false;

    end;
  end;

end;

function GetLocalComputerName: string;
var
{$IFDEF MSWINDOWS}
  c1: DWORD;
  arrCh: array [0 .. MAX_COMPUTERNAME_LENGTH] of Char;
{$ENDIF}
{$IFDEF POSIX}
  len: size_t;
  p: PAnsiChar;
  res: integer;
{$ENDIF}
begin
{$IFDEF MSWINDOWS}
  c1 := MAX_COMPUTERNAME_LENGTH + 1;
  if GetComputerName(arrCh, c1) then
    SetString(result, arrCh, c1)
  else
    result := '';
{$ENDIF}
{$IFDEF POSIX}
  result := '';
  res := sysctlbyname('kern.hostname', nil, @len, nil, 0);
  if (res = 0) and (len > 0) then
  begin
    GetMem(p, len);
    try
      res := sysctlbyname('kern.hostname', p, @len, nil, 0);
      if res = 0 then
        result := String(AnsiString(p));
    finally
      FreeMem(p);
    end;
  end;
{$ENDIF}
end;

Function GetIPAddress(): String;
type
  pu_long = ^u_long;
var
  varTWSAData: TWSAData;
  varPHostEnt: PHostEnt;
  varTInAddr: TInAddr;
  namebuf: Array [0 .. 255] of Ansichar;
begin
  If WSAStartup($101, varTWSAData) <> 0 Then
    result := '' // 'No. IP Address'
  Else
  Begin
    gethostname(namebuf, sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    result := inet_ntoa(varTInAddr); // 'IP Address: '+inet_ntoa(varTInAddr);
  End;
  WSACleanup;
end;

function LoadDocNameFromSawon(team_key: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select saName from ma_sawon_basic where  saTeam =:saTeam ';
    paramByname('saTeam').asstring := team_key;
    open;
    if not isEmpty then
      result := fieldByName('saName').asstring
    else
      result := '';
  end;
end;

function loadWonJuminNo(saID: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select saJumin from ma_sawon_basic where  saID =:saID ';
    paramByname('saID').asstring := saID;
    open;
    if not isEmpty then
      result := trim(fieldByName('saJumin').asstring)
    else
      result := '';
  end;
end;

function LoadDocNameFromSawonWithID(saID: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select saName from ma_sawon_basic where  saID =:saID ';
    paramByname('saID').asstring := saID;
    open;
    if not isEmpty then
      result := trim(fieldByName('saName').asstring)
    else
      result := '';
  end;
end;

function LoadDocEngNameFromSawonWithID(saID: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select saEngName from ma_sawon_basic where  saID =:saID ';
    paramByname('saID').asstring := saID;
    open;
    if not isEmpty then
      result := trim(fieldByName('saEngName').asstring)
    else
      result := '';
  end;
end;
function LoadDocEngNameFromSawonWithMyunhu(saID: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select saEngName from ma_sawon_basic where  saMyunhu =:saID ';
    paramByname('saID').asstring := saID;
    open;
    if not isEmpty then
      result := trim(fieldByName('saEngName').asstring)
    else
      result := '';
  end;
end;

function LoadDocNameFromTeam(team_key: string): string;
begin
  with dm_f.sqlfind do
  begin
    close;
    sql.clear;
    sql.text := 'select * from ma_team where  team_key =:team_key ';
    paramByname('team_key').asstring := team_key;
    open;
    if not isEmpty then
      result := fieldByName('team_doctor1').asstring
    else
      result := '';
  end;
end;

function updateJinryo_p_Team(chart, jin_day, team, doc_code, old_Team,
  old_doc_code: string): boolean;
begin
  result := false;
  try
    with dm_f.sqlfind do
    begin
      close;
      sql.clear;
      sql.text := 'update jinryo_p set ' + #10 +
        'team =:team , doc_code=:doc_Code' + #10 +
        'where  Team =:old_Team and doc_code =:old_doc_code and jin_day=:jin_day and chart=:chart ';
      paramByname('chart').asstring := chart;
      paramByname('jin_day').asstring := jin_day;
      paramByname('old_Team').asstring := old_Team;
      paramByname('old_doc_code').asstring := old_doc_code;
      paramByname('team').asstring := team;
      paramByname('doc_code').asstring := doc_code;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging(E.Message + '[updateJinryo_p_Team fail.]');
    end;

  end;
end;

function updateJinryo_s_Team(chart, jin_day, team, doc_code, old_Team,
  old_doc_code: string): boolean;
begin
  result := false;
  try
    with dm_f.sqlfind do
    begin
      close;
      sql.clear;
      sql.text := 'update jinryo_s set ' + #10 +
        'team =:team , doc_code=:doc_Code' + #10 +
        'where Team =:old_Team and doc_code =:old_doc_code and jin_day=:jin_day and chart=:chart ';

      paramByname('chart').asstring := chart;
      paramByname('jin_day').asstring := jin_day;
      paramByname('old_Team').asstring := old_Team;
      paramByname('old_doc_code').asstring := old_doc_code;
      paramByname('team').asstring := team;
      paramByname('doc_code').asstring := doc_code;
      execsql;

      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging(E.Message + '[updateJinryo_s_Team fail.]');
    end;

  end;
end;

function updateJinryo_o_Team(chart, jin_day, team, doc_code, old_Team,
  old_doc_code: string): boolean;
begin
  result := false;
  try
    with dm_f.sqlfind do
    begin
      close;
      sql.clear;
      sql.text := 'update jinryo_o set ' + #10 +
        'team =:team , doc_code=:doc_Code' + #10 +
        'where  Team =:old_Team and doc_code =:old_doc_code and jin_day=:jin_day and chart=:chart ';
      paramByname('chart').asstring := chart;
      paramByname('jin_day').asstring := jin_day;
      paramByname('old_Team').asstring := old_Team;
      paramByname('old_doc_code').asstring := old_doc_code;
      paramByname('team').asstring := team;
      paramByname('doc_code').asstring := doc_code;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging(E.Message + '[updateJinryo_o_Team fail.]');
    end;

  end;
end;

function updateHxCC_Team(chart, jin_day, team, doc_code, team_old, doc_code_old: string): boolean;
begin
  result := false;
  try
    with dm_f.sqlfind do
    begin
      close;
      sql.clear;
      sql.text := 'update hxCC set ' + #10 + 'ccteam =:ccteam_new , doc_code=:doc_Code_new ' + #10 +
        'where  ccteam =:ccteam_old and doc_code=:doc_Code_old and ccDate=:ccDate and ccchart=:ccchart ';
      paramByname('ccchart').asstring := chart;
      paramByname('ccDate').asstring := jin_day;
      paramByname('ccteam_old').asstring := team_old;
      paramByname('doc_code_old').asstring := doc_code_old;
      paramByname('ccteam_new').asstring := team;
      paramByname('doc_code_new').asstring := doc_code;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging(E.Message + '[updateHxCC_Team fail.]');
    end;

  end;
end;


function updateHxCC_Team_jubsuID(chart, jin_day, jubsu_id , team,doc_code :string): boolean;
begin
  result := false;
  try
    with dm_f.sqlfind do
    begin
      close;
      sql.clear;
      sql.text := 'update hxCC set ' + #10 + 'ccteam =:ccteam , doc_code=:doc_Code ' + #10 +
        'where   ccDate=:ccDate and ccchart=:ccchart and jubsu_id=:jubsu_id ';
      paramByname('ccchart').asstring := chart;
      paramByname('ccDate').asstring := jin_day;
      paramByname('ccteam').asstring := team;
      paramByname('doc_code').asstring := doc_code;
      paramByname('jubsu_id').asstring := jubsu_id;
      execsql;
      result := true;
    end;
  except
    on E: Exception do
    begin
      ExceptLogging(E.Message + '[updateHxCC_Team_Jubsu_ID fail.]');
    end;

  end;
end;

function updateJinryo_s_GubGu(chart, jin_day, team, doc_code: string;
  gub_gu: string): boolean;
//  gub_gu: integer): boolean;
var
  jins_key: string;
  jin_danga: integer;
  su_gu1: string;
  nGub_gu: string;
//  nGub_gu: integer;
begin
  result := false;

  try
    with dm_f.sqlTemp do
    begin

      close;
      sql.clear;
      sql.text := 'select * from jinryo_s   ' + #10 +
        'where jin_day=:jin_day and chart=:chart and team=:team and doc_code=:doc_code and g_Check <> ''G'' ';

      paramByname('chart').asstring := chart;
      paramByname('jin_day').asstring := jin_day;
      paramByname('team').asstring := team;
      paramByname('doc_code').asstring := doc_code;
      open;
      while not eof do
      begin

        nGub_gu := gub_gu;
        jins_key := fieldByName('jins_key').asstring;
        su_gu1 := fieldByName('su_gu1').asstring;

        if (su_gu1 = '3') or (su_gu1 = '4') then
        begin
          if gub_gu = '0' then
            nGub_gu := '2'
          else
            nGub_gu := gub_gu;
        end;

        jin_danga := getSugaGeum(fieldByName('su_key').asstring,
          // varCode:string;
          jin_day, // jinday:string;
          nGub_gu);

        // 2 -> 0으로 바뀌는 경우 원래 비급여는 비급여로 놔두자.
        // 0 -> 2로 바뛰는 경우 모두 바꾸자.

        try
          with dm_f.sqlfind do
          begin
            close;
            sql.clear;
            sql.text := 'update jinryo_s set ' + #10 +
              'gub_Gu =:gub_Gu , jin_danga=:jin_danga' + #10 +
              'where jins_key=:jins_key ';

            paramByname('jins_key').asstring   := jins_key;
            paramByname('gub_Gu').asstring     := nGub_gu;//inttostr(nGub_gu);
            paramByname('jin_danga').asinteger := jin_danga;
            execsql;

            result := true;
          end;
        except
          on E: Exception do
          begin
            ExceptLogging(E.Message + '[updateJinryo_s_GubGu fail.]');
          end;

        end;

        Next;
      end;
    end

  except

  end;
end;

function LoadGubunName(GubunCode: string): string;
begin
  result := GubunCode;
  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.add('SELECT chairremark from ma_promise_chair');
    sql.add('where chairNo=:chairNo');
    paramByname('chairNo').asstring := GubunCode;
    open;
    if not isEmpty then
    begin
      result := fieldByName('chairremark').asstring;
    end;
  end;
end;

function LoadChartDataQuery: string;
var
  varComponentCount: integer;
begin
  result := '';
  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic');
    sql.add('where code like ''094%'' and code <> ''094000''  and val=''A'' ');
    open;
    if not isEmpty then
    begin
      while not eof do
      begin
        if result = '' then
          result := ' cKind <> ' + '''' + fieldByName('disp').asstring + ''''
        else
          result := result + ' and ' + ' cKind <> ' + '''' + fieldByName('disp')
            .asstring + '''';

        Next;
      end;
    end;
  end;

end;

function LoadSunapDataQuery: string;
var
  varComponentCount: integer;
begin
  result := '';
  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic');
    sql.add('where code like ''095%'' and code <> ''095000''  and val=''A'' ');
    open;
    if not isEmpty then
    begin
      while not eof do
      begin
        if result = '' then
          result := ' sKind <> ' + '''' + fieldByName('disp').asstring + ''''
        else
          result := result + ' and ' + ' sKind <> ' + '''' + fieldByName('disp')
            .asstring + '''';

        Next;
      end;
    end;
  end;

end;

function LoadPlanDataQuery: string;
var
  varComponentCount: integer;
begin
  result := '';
  with dm_f.SqlTemp12 do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic');
    sql.add('where code like ''104%'' and code <> ''104000''  and val=''A'' ');
    open;
    if not isEmpty then
    begin
      while not eof do
      begin
        if result = '' then
          result := ' aKind <> ' + '''' + fieldByName('disp').asstring + ''''
        else
          result := result + ' and ' + ' aKind <> ' + '''' + fieldByName('disp')
            .asstring + '''';

        Next;
      end;
    end;
  end;

end;

function LoadGroupDataQuery(Querykind: integer = 0): string;
const
  conQuery_old = ' SELECT DISTINCT chart FROM ma_gogek_group where ';

  conQuery =
    'select OUT_T.chart,                                                 ' +
    #10#13 + '  (SELECT STUFF((SELECT CAST('','' AS VARCHAR(MAX)) +  rtrim(gubun)           '
    + #10#13 +
    ' FROM ma_gogek_group In_t                                                      '
    + #10#13 +
    ' where (in_t.chart= out_t.chart)                                                '
    + #10#13 +
    '    order by gubun                                                               '
    + #10#13 +
    ' FOR XML PATH('''')), 1, 1, '''') AS gubunlist) as wer  from ma_gogek_group out_t where';

  ConGubun =
    ' (SELECT STUFF((SELECT CAST('','' AS VARCHAR(MAX)) +  rtrim(gubun)         '
    + #10#13 +
    ' FROM ma_gogek_group In_t                                                  '
    + #10#13 +
    ' where (in_t.chart= out_t.chart)                                           '
    + #10#13 +
    ' order by gubun                                                            '
    + #10#13 +
    ' FOR XML PATH('''')), 1, 1, '''') AS gubunlist)                            ';
var
  varComponentCount: integer;
begin
  result := '';

  case Querykind of
    0:
      begin

        with dm_f.SqlTemp12 do
        begin
          close;
          sql.clear;
          sql.add('select * from ma_basic'); // 환자구분등록
          sql.add('where code like ''007%'' and code <> ''007000''  and val=''A'' ');
          open;
          if not isEmpty then
          begin
            while not eof do
            begin
              if result = '' then
                result := ' gubun =' + '''' + fieldByName('disp')
                  .asstring + ''''
              else
                result := result + ' or ' + ' gubun =' + '''' +
                  fieldByName('disp').asstring + '''';

              Next;
            end;

            result := '(' + result + ')';

            { while not eof do
              begin
              if result = '' then
              result :=  conQuery + conGubun  + ' like ' +   ''''+'%'+ fieldByName('disp').asString +'%'+''''
              else
              result:=   result + ' '+ fieldByName('remark').asString + ' '+ conGubun + ' like '+ ''''+'%'+  fieldByName('disp').asString+'%'+'''';

              next;
              end;
              result:= result+ ' group by chart';
            }
          end;
        end;
      end;
    1:
      begin
        with dm_f.SqlTemp12 do
        begin
          close;
          sql.clear;
          sql.add('select chart from ma_gogek_basic                                         ');
          // 환자 나이로 필터링
          sql.add('where                                                                    ');
          sql.add(' case when isNumeric(jumin) = 1 then                                     ');
          sql.add(' Cast(Year(GetDate()) As Integer) -                                      ');
          sql.add('         Cast(SubString((                                                ');
          sql.add('         Case  When SubString(jumin, 7, 1) = ''1'' Then ''19'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''2'' Then ''19'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''3'' Then ''20'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''4'' Then ''20'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''5'' Then ''19'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''6'' Then ''19'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''7'' Then ''20'' + jumin   ');
          sql.add('               When SubString(jumin, 7, 1) = ''8'' Then ''20'' + jumin   ');
          sql.add('         Else ''20'' + jumin End),1,4) As Integer)                       ');
          sql.add(' else 0 end  >= 20                                                       ');
          open;
          if not isEmpty then
          begin
            while not eof do
            begin
              if result = '' then
                result := ' gubun =' + '''' + fieldByName('disp')
                  .asstring + ''''
              else
                result := result + ' or ' + ' gubun =' + '''' +
                  fieldByName('disp').asstring + '''';

              Next;
            end;

            result := '(' + result + ')';
          end;
        end;
      end;

  end;
end;

function LoadGogekData_chart(chart: string; varStatusBar: TadvProgressbar;
  viewAll: boolean = false): boolean;
const
  selectGogek = ' select * from view_gogek';
  SelectGogek_where1 = ' where name like :name+''%''';
  SelectGogek_where2 = ' where chart= :chart  ';

var
  VarChart, varQuery: string;

  RecCount, roC, i: integer;
begin
  if trim(chart) = '' then
  begin
    result := false;
    exit;
  end;
  roC := 1;
  { if not assigned(findGogek_f) then
    begin
    findGogek_f := TfindGogek_f.Create(application);
    end;
  }

  varQuery := LoadGroupDataQuery;

  with dm_f.SqlFindHwanja do
  begin

    dm_f.SqlFindHwanja.close;
    dm_f.SqlFindHwanja.sql.clear;
    dm_f.SqlFindHwanja.sql.text := selectGogek;
    dm_f.SqlFindHwanja.sql.text := dm_f.SqlFindHwanja.sql.text +
      SelectGogek_where2;
    dm_f.SqlFindHwanja.paramByname('chart').asstring := chart;

    if viewAll <> true then
    begin
      // if varQuery <> '' then
      // sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
      if configvalue.varAgeFilter = '0' then
      begin

        if varQuery <> '' then
          dm_f.SqlFindHwanja.sql.add
            ('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where'
            + varQuery + ' ) ) ');

      end
      else
      begin
        dm_f.SqlFindHwanja.sql.add('and (chart not in  (' + ageFilterQry +
          '  ) ) ');

      end;

    end;

    dm_f.SqlFindHwanja.sql.add('Order by Last_day DESC');
    dm_f.SqlFindHwanja.open;
    if not dm_f.SqlFindHwanja.isEmpty then
    begin
      LoadGogekValue;

      result := true;

    end
    else
    begin
      // showmessage('No Data.');
      result := false;

    end;

  end;
end;

procedure LoadGogekValue;
begin
  ClearGogekValue;
  if not dm_f.SqlFindHwanja.isEmpty then
  begin
    ma_idn := dm_f.SqlFindHwanja.fieldByName('idn').asinteger;
    ma_apply_Day := dm_f.SqlFindHwanja.fieldByName('apply_Day').asstring;
    ma_K_Number := dm_f.SqlFindHwanja.fieldByName('K_Number').asstring;
    ma_famid := dm_f.SqlFindHwanja.fieldByName('fam_id').asstring;
    ma_PiboName := dm_f.SqlFindHwanja.fieldByName('PiboName').asstring;
    ma_Piboid := dm_f.SqlFindHwanja.fieldByName('Pibo_id').asstring;
    ma_kwan := dm_f.SqlFindHwanja.fieldByName('kwan').asstring;
    ma_Kiho := dm_f.SqlFindHwanja.fieldByName('Kiho').asstring;
    // ma_o_Juso2 :=
    // dm_f.sqlFindHwanja.FieldByName('o_Juso2').AsString;
    // ma_o_jikwi :=
    // dm_f.sqlFindHwanja.FieldByName('o_jikwi').AsString;
    // ma_o_phone :=
    // dm_f.sqlFindHwanja.FieldByName('o_phone').AsString;
    ma_c_Phone := dm_f.SqlFindHwanja.fieldByName('c_Phone').asstring;
    ma_Mail := dm_f.SqlFindHwanja.fieldByName('Mail').asstring;
    ma_Paname := dm_f.SqlFindHwanja.fieldByName('name').asstring;
    ma_PaEngName := dm_f.SqlFindHwanja.fieldByName('nameEng').asstring;
    ma_h_juso := dm_f.SqlFindHwanja.fieldByName('h_juso').asstring;
    ma_h_phone := dm_f.SqlFindHwanja.fieldByName('h_phone').asstring;
    // ma_ReferKind :=
    // dm_f.sqlFindHwanja.FieldByName('ReferKind').AsString;
    ma_refer := dm_f.SqlFindHwanja.fieldByName('refer_name').asstring; // 수정
    ma_referid := dm_f.SqlFindHwanja.fieldByName('refer_id').asstring;

    ma_SogeChart := dm_f.SqlFindHwanja.fieldByName('refer_chart').asstring;
    // 추가

    ma_Chamgo := dm_f.SqlFindHwanja.fieldByName('chamgo').asstring; // 추가

    ma_Special := dm_f.SqlFindHwanja.fieldByName('Special').asstring;

    ma_pregnan := dm_f.SqlFindHwanja.fieldByName('Pregnan').asstring;

    ma_ChasangNo := dm_f.SqlFindHwanja.fieldByName('chaSangNo').asstring;

    ma_ReferHospName := dm_f.SqlFindHwanja.fieldByName('referhospname').asstring;

    ma_ReferHospCode := trim(dm_f.SqlFindHwanja.fieldByName('referHospcode').asstring);

    ma_ReferHospDoc := dm_f.SqlFindHwanja.fieldByName('referDocName').asstring;
    // ma_o_zip :=
    // dm_f.sqlFindHwanja.FieldByName('o_zip').AsString;

    ma_RHosp := dm_f.SqlFindHwanja.fieldByName('RHosp').asstring;; // 의뢰병원 PACS
    ma_RHospID := dm_f.SqlFindHwanja.fieldByName('RHospID').asstring;;
    // 의뢰병원 EmailID

    ma_hira_Jong := dm_f.SqlFindHwanja.fieldByName('hira_Jong').asstring;

    if (dm_f.SqlFindHwanja.fieldByName('jongbeul')).IsNull then
    begin
      ma_jongbeul := '4'
    end
    else
    begin
      ma_jongbeul := dm_f.SqlFindHwanja.fieldByName('jongbeul').asstring;
    end;

    ma_jumin := dm_f.SqlFindHwanja.fieldByName('jumin').asstring;
    ma_h_zip := dm_f.SqlFindHwanja.fieldByName('h_zip').asstring;
    ma_h_id := dm_f.SqlFindHwanja.fieldByName('h_id').asstring;
    ma_Chart := dm_f.SqlFindHwanja.fieldByName('chart').asstring;
    ma_oldchart := dm_f.SqlFindHwanja.fieldByName('idno').asstring;
    ma_last := dm_f.SqlFindHwanja.fieldByName('last_day').asstring;
    ma_first := dm_f.SqlFindHwanja.fieldByName('first_day').asstring;
    ma_birth := dm_f.SqlFindHwanja.fieldByName('birth').asstring;
    ma_moon := dm_f.SqlFindHwanja.fieldByName('moon').asstring;
    ma_sms := dm_f.SqlFindHwanja.fieldByName('sms').asstring;

    ma_sms2 := dm_f.SqlFindHwanja.fieldByName('sms2').asstring; // 2012.2.7
    ma_sms3 := dm_f.SqlFindHwanja.fieldByName('sms3').asstring;

    ma_budam := dm_f.SqlFindHwanja.fieldByName('bontype').asstring;
    ma_sanjung := dm_f.SqlFindHwanja.fieldByName('bonsanjung').asstring;
    // 2011.11.9

    ma_teakrye := dm_f.SqlFindHwanja.fieldByName('teakrye').asstring;

    ma_teakryeCode := dm_f.SqlFindHwanja.fieldByName('teakryeCode').asstring;
    if dm_f.SqlFindHwanja.fieldByName('janek').asstring = '' then
      ma_janek := '0'
    else
      ma_janek := dm_f.SqlFindHwanja.fieldByName('janek').asstring;
    // ma_office :=
    // dm_f.sqlFindHwanja.FieldByName('office').AsString;
    ma_team := dm_f.SqlFindHwanja.fieldByName('team').asstring;
    ma_doc := dm_f.SqlFindHwanja.fieldByName('doc').asstring;
    ma_hyg := dm_f.SqlFindHwanja.fieldByName('hyg').asstring;

    ma_artTeeth1 := dm_f.SqlFindHwanja.fieldByName('artTeeth1').asstring;
    // 2012.7.1
    ma_artTeeth2 := dm_f.SqlFindHwanja.fieldByName('artTeeth2').asstring;
    // 2012.7.1

    ma_artYoyang1 := dm_f.SqlFindHwanja.fieldByName('artYoyang1').asstring;
    ma_artYoyang2 := dm_f.SqlFindHwanja.fieldByName('artYoyang2').asstring;

    // 임플란트 등록정보
    ma_implTeeth1 := dm_f.SqlFindHwanja.fieldByName('implTeeth1').asstring;
    ma_implTeeth2 := dm_f.SqlFindHwanja.fieldByName('implTeeth2').asstring;

    ma_implYoyang1 := dm_f.SqlFindHwanja.fieldByName('implYoyang1').asstring;
    ma_implYoyang2 := dm_f.SqlFindHwanja.fieldByName('implYoyang2').asstring;

    ma_infosave := dm_f.SqlFindHwanja.fieldByName('infoSave').asstring;
    // 개인정보활용동의 여부 1:true
    ma_chartSaveOk := dm_f.SqlFindHwanja.fieldByName('ChartSaveOk').asstring;
    // 차트저장여부 1:true

    ma_pname1 := dm_f.SqlFindHwanja.fieldByName('pname1').asstring; // 보호자1
    ma_pname2 := dm_f.SqlFindHwanja.fieldByName('pname2').asstring; // 보호자2

    ma_jeju43 := dm_f.SqlFindHwanja.fieldByName('jungno43').asstring; // 제주43증번호

    // dm_f.DataSource1.DataSet.Locate('chart', ma_chart, []);
  end;

end;

function JinryoPSave(jubsu_id: string; chart: string; jin_day: string;
  kwamok: string; jongbeul: string; k_number: string; piboName: string;
  kiho: string; dup: string; nai: string; chojae: string; gasan: string;
  gub_gu: string; chong: string; chung: string; kamak: string;
  sunsugeum: string; misugeum: string; sunapak: string; junsanchaek: string;
  jubsuak: string; youngsu_num: string; kam_code: string; kam_rate: string;
  kam_sayu: string; jin_gu: string; kyulkwa: string; doc_code: string;
  jinryosil: string; jin_time: string; jin_user: string; sunap: string;
  gongsang: string; jojae11: string; jojae21: string; bonin: string;
  bonin1: string; makam: string; jusa: string; whan_day: string;
  whan_time: string; whan_user: string; account: string; whanbulak: string;
  card: string; cardcode: string; cardname: string; JojaeIn: string;
  JojaeOut: string; extra: string; wonwes: string; team: string; remark: string;
  chart_id: string; cmemo: string; SunsuCard: string; SunsuTong: string;
  SunsuCash: string; sunsucardcode: string; sunsucardname: string;
  sunsutongcode: string; sunsutongname: string; Cash: string; Tong: string;
  TongName: string; TongCode: string; Makam_day: string; Makam_time: string;
  Makam_chk: string; wein: string; Tjung: string; HwakinNo: string; // 2007.7.1
  bontype: string; // 2007.7.1
  yujikum: string; // 2007.7.1
  Makam_Sabun: string; car_Id: string; satGasan: string; Pregnan: string;
  sanjungTeakRye: string; isInpat: string;
  isBohum100:string;
  isJiwon:string;
  isAnother: string = ''): integer;
begin
  result := 0;
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add('Insert into Jinryo_p');
    sql.add('(');
    sql.add('jubsu_id, chart,jin_day,kwamok,jongbeul, k_number, piboname, kiho,');
    // jungyul, ');
    sql.add('dup,nai,chojae,gasan,gub_gu,chong,');
    sql.add('chung,kamak,sunsugeum,misugeum,sunapak,');
    sql.add('junsanchaek,jubsuak,youngsu_num,kam_code,');
    sql.add('kam_rate,kam_sayu,jin_gu,kyulkwa,doc_code,');
    sql.add('jinryosil,jin_time,jin_user,sunap,gongsang,');
    sql.add('jojae11,jojae21,bonin,bonin1,makam, isInPat,');
    sql.add('jusa,whan_day,whan_time,whan_user,account,');
    sql.add('whanbulak,card,cardcode,cardname,');
    sql.add('JojaeIn,JojaeOut,extra,wonwes,team, isBohum100, isJiwon, ');
    sql.add('remark,chart_id,cmemo,SunsuCard,SunsuTong, pregnan,sanjungTeakRye,');
    sql.add('SunsuCash,sunsucardcode,sunsucardname,');
    sql.add('sunsutongcode,sunsutongname,Cash,Tong,');
    sql.add('TongName,TongCode,Makam_day,Makam_time, mod_day,');
    sql.add('Makam_chk, wein, Tjung,HwakinNo, bontype, Yujikum, Makam_Sabun, car_id, satGasan, isAnother) values');
    sql.add('(:jubsu_id, :chart, :jin_day, :kwamok, :jongbeul, :k_number, :piboname, :kiho,');
    // :jungyul,');
    sql.add(':dup, :nai, :chojae, :gasan, :gub_gu, :chong,');
    sql.add(':chung, :kamak, :sunsugeum, :misugeum, :sunapak,');
    sql.add(':junsanchaek, :jubsuak, :youngsu_num, :kam_code,');
    sql.add(':kam_rate, :kam_sayu, :jin_gu, :kyulkwa, :doc_code,');
    sql.add(':jinryosil, :jin_time, :jin_user, :sunap, :gongsang,');
    sql.add(':jojae11, :jojae21, :bonin, :bonin1, :makam, :isInPat,');
    sql.add(':jusa, :whan_day, :whan_time, :whan_user, :account,');
    sql.add(':whanbulak, :card, :cardcode, :cardname,');
    sql.add(':JojaeIn, :JojaeOut, :extra, :wonwes, :team, :isBohum100, :isJiwon,');
    sql.add(':remark, :chart_id, :cmemo, :SunsuCard, :SunsuTong, :pregnan,:sanjungTeakRye,');
    sql.add(':SunsuCash, :sunsucardcode, :sunsucardname,');
    sql.add(':sunsutongcode, :sunsutongname, :Cash, :Tong,');
    sql.add(':TongName, :TongCode, :Makam_day, :Makam_time, :mod_Day,');
    sql.add(':Makam_chk, :wein, :Tjung,:HwakinNo, :bontype, :Yujikum, :Makam_Sabun, :car_id, :satGasan, :isAnother');
    sql.add(')');
    paramByname('jubsu_id').asstring := jubsu_id;
    paramByname('mod_day').asDateTime := now;
    paramByname('chart').asstring := chart;
    paramByname('jin_day').AsDateTime := strtoDate(jin_day);
    paramByname('kwamok').asstring := kwamok;
    paramByname('jongbeul').asstring := jongbeul;
    paramByname('k_number').asstring := k_number;
    paramByname('piboname').asstring := piboName;
    paramByname('kiho').asstring := kiho;
    paramByname('dup').asstring := dup;
    paramByname('nai').asstring := nai;
    paramByname('isInpat').asstring := isInpat;
    paramByname('chojae').asstring := chojae;
    paramByname('gasan').asstring := gasan;
    paramByname('gub_gu').asstring := gub_gu;
    paramByname('chong').asstring := chong;
    paramByname('chung').asstring := chung;
    paramByname('kamak').asstring := kamak;
    paramByname('sunsugeum').asstring := sunsugeum;
    paramByname('misugeum').asstring := misugeum;
    paramByname('sunapak').asstring := sunapak;
    paramByname('junsanchaek').asstring := junsanchaek;
    paramByname('jubsuak').asstring := jubsuak;
    paramByname('youngsu_num').asstring := youngsu_num;
    paramByname('kam_code').asstring := kam_code;
    paramByname('kam_rate').asstring := kam_rate;
    paramByname('kam_sayu').asstring := kam_sayu;
    paramByname('jin_gu').asstring := jin_gu;
    paramByname('kyulkwa').asstring := kyulkwa;
    paramByname('isBohum100').asstring := isBohum100;
    paramByname('isJiwon').asstring := isJiwon;
    paramByname('doc_code').asstring := doc_code;
    paramByname('jinryosil').asstring := jinryosil;
    paramByname('jin_time').asstring := jin_time;
    paramByname('jin_user').asstring := jin_user;
    paramByname('sunap').asstring := sunap;
    paramByname('gongsang').asstring := gongsang;
    paramByname('jojae11').asstring := jojae11;
    paramByname('jojae21').asstring := jojae21;
    paramByname('bonin').asstring := bonin;
    paramByname('bonin1').asstring := bonin1;
    paramByname('makam').asstring := makam;
    paramByname('jusa').asstring := jusa;
    paramByname('whan_day').asstring := whan_day;
    paramByname('whan_time').asstring := whan_time;
    paramByname('whan_user').asstring := whan_user;
    paramByname('account').asstring := account;
    paramByname('whanbulak').asstring := whanbulak;
    paramByname('card').asstring := card;
    paramByname('cardcode').asstring := cardcode;
    paramByname('cardname').asstring := cardname;
    paramByname('JojaeIn').asstring := JojaeIn;
    paramByname('JojaeOut').asstring := JojaeOut;
    paramByname('extra').asstring := extra;
    paramByname('wonwes').asstring := wonwes;
    paramByname('team').asstring := team;
    paramByname('remark').asstring := remark;
    paramByname('chart_id').asstring := chart_id;
    paramByname('cmemo').asstring := cmemo;
    paramByname('SunsuCard').asstring := SunsuCard;
    paramByname('SunsuTong').asstring := SunsuTong;
    paramByname('SunsuCash').asstring := SunsuCash;
    paramByname('sunsucardcode').asstring := sunsucardcode;
    paramByname('sunsucardname').asstring := sunsucardname;
    paramByname('sunsutongcode').asstring := sunsutongcode;
    paramByname('sunsutongname').asstring := sunsutongname;
    paramByname('Cash').asstring := Cash;
    paramByname('Tong').asstring := Tong;
    paramByname('TongName').asstring := TongName;
    paramByname('TongCode').asstring := TongCode;
    paramByname('Makam_day').asstring := Makam_day;
    paramByname('Makam_time').asstring := Makam_time;
    paramByname('Makam_chk').asstring := Makam_chk;
    paramByname('wein').asstring := wein;
    paramByname('Tjung').asstring := Tjung;
    paramByname('HwakinNo').asstring := HwakinNo; // 2007.7.1
    paramByname('bontype').asstring := bontype; // 2007.7.1
    paramByname('Yujikum').asstring := yujikum; // 2007.7.1
    paramByname('Makam_Sabun').asstring := Makam_Sabun;
    paramByname('car_id').asstring := car_Id;
    paramByname('satGasan').asstring := satGasan;
    paramByname('pregnan').asstring := Pregnan;
    paramByname('isAnother').asstring := isAnother;
    paramByname('sanjungTeakRye').asstring := sanjungTeakRye;

    // ParamByName('jungyul').AsString := jungyul;
    execsql;

    close;
    sql.clear;
    sql.text := ' select @@Identity as sid';
    open;

    result := fieldByName('sid').asinteger;

  end;
end;

procedure JinryoPUpdate(jubsu_id: string; chart: string; jin_day: string;
  jongbeul: string; k_number: string; piboName: string; kiho: string;
  dup: string; nai: string; chojae: string; gasan: string; gub_gu: string;
  chong: string; chung: string; jubsuak: string; kyulkwa: string;
  doc_code: string; jin_time: string; jin_user: string; sunap: string;
  gongsang: string; bonin: string; bonin1: string; extra: string; team: string;
  wein: string; Tjung: string; HwakinNo: string; // 2007.7.1
  bontype: string; // 2007.7.1
  yujikum: string; // 2007.7.1
  car_Id: string; satGasan: string; Pregnan: string; sanjungTeakRye: string;
  Makam_Sabun: string; isInpat: string; isBohum100:string; isJiwon:string);
begin
  with dm_f.sqlRegi do
  begin
    close;
    sql.clear;
    sql.add('Update Jinryo_p Set');
    sql.add('jongbeul=:jongbeul, k_number=:k_number, piboname=:piboname, ');
    sql.add('kiho=:kiho, dup=:dup, isBohum100= :isBohum100, isJiwon=:isJiwon, ');
    sql.add('nai=:nai,chojae=:chojae,gasan=:gasan,'); // jungyul=:jungyul,');
    sql.add('gub_gu=:gub_gu,chong=:chong,chung=:chung,');
    sql.add('jubsuak=:jubsuak, isInPat=:isInPat,');
    sql.add('kyulkwa=:kyulkwa, Makam_Sabun=:Makam_Sabun,');
    sql.add('doc_code=:doc_code,');
    sql.add('jin_time=:jin_time,jin_user=:jin_user,sunap=:sunap, mod_day=:mod_day,');
    sql.add('gongsang=:gongsang,');
    sql.add('bonin=:bonin,bonin1=:bonin1,');
    sql.add('extra=:extra, pregnan=:pregnan, sanjungTeakRye=:sanjungTeakRye,');
    sql.add('team=:team, satGasan = :satGasan,');
    sql.add('wein=:wein,Tjung=:Tjung,HwakinNo=:HwakinNo,bontype=:bontype,Yujikum=:Yujikum, car_id = :car_id ');
    sql.add('Where jubsu_id=:jubsu_id and chart=:chart ');
    // Sql.Add(' and team=:team ')
    sql.add('and jin_day=:jin_day and jin_gu=''0''  ');
    sql.add('and chojae <> ''9'' and chojae <> ''0'' ');
    sql.add('and chojae <> ''13''  ');

    paramByname('jubsu_id').asstring := jubsu_id;
    paramByname('mod_day').asDateTime := now;
    paramByname('chart').asstring := chart;
    paramByname('jin_day').asstring := jin_day;
    // ParamByName('kwamok').AsString := kwamok;
    paramByname('jongbeul').asstring := jongbeul;
    paramByname('k_number').asstring := k_number;
    paramByname('piboname').asstring := piboName;
    paramByname('kiho').asstring := kiho;
    paramByname('dup').asstring := dup;
    paramByname('nai').asstring := nai;

    paramByname('isBohum100').asstring := isBohum100;
    paramByname('isJiwon').asstring    := isJiwon;

    paramByname('isInPat').asstring := isInpat;

    paramByname('chojae').asstring := chojae;
    paramByname('gasan').asstring := gasan;
    paramByname('gub_gu').asstring := gub_gu;
    paramByname('chong').asstring := chong;
    paramByname('chung').asstring := chung;
    // ParamByName('kamak').AsString := kamak;
    // ParamByName('sunsugeum').AsString := sunsugeum;
    // ParamByName('misugeum').AsString := misugeum;
    // ParamByName('sunapak').AsString := sunapak;
    // ParamByName('junsanchaek').AsString := junsanchaek;
    paramByname('jubsuak').asstring := jubsuak;
    // ParamByName('youngsu_num').AsString := youngsu_num;
    // ParamByName('kam_code').AsString := kam_code;
    // ParamByName('kam_rate').AsString := kam_rate;
    // ParamByName('kam_sayu').AsString := kam_sayu;
    // ParamByName('jin_gu').AsString := jin_gu;
    paramByname('kyulkwa').asstring := kyulkwa;
    paramByname('doc_code').asstring := doc_code;
    // ParamByName('jinryosil').AsString := jinryosil;
    paramByname('jin_time').asstring := jin_time;
    paramByname('jin_user').asstring := jin_user;
    paramByname('sunap').asstring := sunap;
    paramByname('gongsang').asstring := gongsang;
    // ParamByName('jojae11').AsString := jojae11;
    // ParamByName('jojae21').AsString := jojae21;
    paramByname('bonin').asstring := bonin;
    paramByname('bonin1').asstring := bonin1;
    // ParamByName('makam').AsString := makam;
    // ParamByName('jusa').AsString := jusa;
    // ParamByName('whan_day').AsString := whan_day;
    // ParamByName('whan_time').AsString := whan_time;
    // ParamByName('whan_user').AsString := whan_user;
    // ParamByName('account').AsString := account;
    // ParamByName('whanbulak').AsString := whanbulak;
    // ParamByName('card').AsString := card;
    // ParamByName('cardcode').AsString := cardcode;
    // ParamByName('cardname').AsString := cardname;
    // ParamByName('JojaeIn').AsString := JojaeIn;
    // ParamByName('JojaeOut').AsString := JojaeOut;
    paramByname('extra').asstring := extra;
    // ParamByName('wonwes').AsString := wonwes;
    paramByname('team').asstring := team;
    // ParamByName('remark').AsString := remark;
    // ParamByName('chart_id').AsString := chart_id;
    // ParamByName('cmemo').AsString := cmemo;
    // ParamByName('SunsuCard').AsString := SunsuCard;
    // ParamByName('SunsuTong').AsString := SunsuTong;
    // ParamByName('SunsuCash').AsString := SunsuCash;
    // ParamByName('sunsucardcode').AsString := sunsucardcode;
    // ParamByName('sunsucardname').AsString := sunsucardname;
    // ParamByName('sunsutongcode').AsString := sunsutongcode;
    // ParamByName('sunsutongname').AsString := sunsutongname;
    // ParamByName('Cash').AsString := Cash;
    // ParamByName('Tong').AsString := Tong;
    // ParamByName('TongName').AsString := TongName;
    // ParamByName('TongCode').AsString := TongCode;
    // ParamByName('Makam_day').AsString := Makam_day;
    // ParamByName('Makam_time').AsString := Makam_time;
    // ParamByName('Makam_chk').AsString := Makam_chk;
    paramByname('wein').asstring := wein;
    paramByname('Tjung').asstring := Tjung;
    paramByname('HwakinNo').asstring := HwakinNo; // 2007.7.1
    paramByname('bontype').asstring := bontype; // 2007.7.1
    paramByname('Yujikum').asstring := yujikum; // 2007.7.1
    paramByname('car_id').asstring := car_Id;
    paramByname('satGasan').asstring := satGasan;
    paramByname('pregnan').asstring := Pregnan;
    paramByname('Makam_Sabun').asstring := Makam_Sabun;
    paramByname('sanjungTeakRye').asstring := sanjungTeakRye;
    // ParamByName('jungyul').AsString := jungyul;
    execsql;

  end;
end;



procedure CountDaegi(jin_day:string; isAF:boolean;
    out nJubsuCnt:integer;
    out nWaitCnt:integer;
    out nInPatCnt:integer;
    out nPromiseCnt:integer;
    out nSunapTotalCnt:integer;
    out nSunapWaitCnt:integer;
    out nSunapCnt:integer);
var
    tempQuery : TUniQuery;
begin
   if isAF = false then
   exit;

  try

      tempQuery := TuniQuery.Create(nil);
      tempQuery.Connection := dm_f.uniConnection1;

      with  tempQuery do
      begin

        close;
        sql.clear;
        sql.add(' select count(jin_day) as nCount from jinryo_p  where  sunap = ''0''  and       ');
        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
        paramByName('jin_day').AsString :=   jin_day;
        open;
        nSunapWaitCnt := fieldByName('nCount').asInteger;

        close;
        sql.clear;
        sql.add(' select count(jin_day) as nCount from jinryo_p  where  sunap = ''1''  and                        ');
        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
        paramByName('jin_day').AsString :=   jin_day;
        open;
        nSunapCnt     := fieldByName('nCount').asInteger;


//        close;
//        sql.clear;
//        sql.add(' select  count(jin_day) as nCount from jinryo_p    where                        ');
//        sql.add(' (select (case when ( isOutpat =''1'')  then convert(varchar, outPat_time, 23)  ');
//        sql.add('              when ( isOutpat is null)  then jin_day else jin_day end)          ');
//        sql.add(' from ma_jubsu where id=jinryo_p.jubsu_id)      =:jin_day                       ');
//        paramByName('jin_day').AsString :=   jin_day;
//        open;
        nSunapTotalCnt := nSunapWaitCnt + nSunapCnt;// fieldByName('nCount').asInteger;

        close;
        sql.clear;
        sql.add(' select  count(jin_day) as nCount  from ma_jubsu                            ');
        sql.add(' where (isInpat=''1'' or isInpat=''2'') and isOutPat=''0''                  ');
        sql.add(' and gubun=''6''                                                            ');
//        sql.add(' and (case when ( isOutpat =''0'')  then convert(varchar, outPat_time, 23)  ');
//        sql.add('          when ( isOutpat is null)  then jin_day else jin_day end)          ');
//        sql.add('      =:jin_day                                                             ');


     //   paramByName('jin_day').AsString :=   jin_day;
        open;
        nInPatCnt := fieldByName('nCount').asInteger;


        close;
        sql.clear;
        sql.add(' select  count(jin_day) as nCount from ma_jubsu   ');
        sql.add(' where  jin_day =:jin_day   and  gubun=''0''      ');
        paramByName('jin_day').AsString :=   jin_day;
        open;
        nJubsuCnt := fieldByName('nCount').asInteger;


        close;
        sql.clear;
        sql.add(' select  count(jin_day) as nCount from ma_jubsu   ');
        sql.add(' where  jin_day =:jin_day   and  gubun=''4''      ');
        paramByName('jin_day').AsString :=   jin_day;
        open;
        nWaitCnt := fieldByName('nCount').asInteger;


        close;
        sql.clear;
        sql.add(' select  count(pday) as nCount from ma_promise   ');
        Sql.Add(' WHERE   (pday = :jin_day) and (cancel <> ''Y'') ');
        Sql.Add(' and (cancel <> ''C'') and ( cancel <> ''R'' )   ');
        Sql.Add('           and name <> ''''                      ');
        Sql.Add(' and pos <> ''8''     and Pos = ''''             ');
        paramByName('jin_day').AsString :=   jin_day;
        open;
        nPromiseCnt := fieldByName('nCount').asInteger;

      end;

  finally
     tempQuery.Free;
  end;

end;
procedure SunapView(vkind: string; Agrid: TadvStringGrid; out nCount:integer; chart: string = '';
  daeGiDate: string = '');
var
  i: integer;
  temp_yy, temp_mm, temp_dd: Variant;

  varScrollposition: integer;
  varRow, varCol, varTopRow: integer;

begin
  //Todo : 수납을 완료하면 지금 선태된 행이 없어진다.
  //그러면 맨 마지막행을 선택했을 경우 -1 해야 grid out of index 가 안나온다.
  if  Agrid.row > 1 then
       varRow    := Agrid.row //- 1
  else
       varRow    := 0;

  varTopRow := Agrid.TopRow;

  if varRow >0 then
       varScrollposition := Agrid.GetScrollPosition(0, varRow)
  else
       varScrollposition := Agrid.GetScrollPosition(0, 1) ;



  Agrid.RemoveRows(1, Agrid.RowCount - 1);
  i := 0;

  with dm_f.sqlJinryo do
  begin

    // select (select top 1 name from  ma_gogek_basic where chart= p.chart ) as paName ,
    // * from jinryo_p p join ma_jubsu j on p.jubsu_id=j.id
    // where p.jin_day ='2018-10-01'

    close;
    sql.clear;
    sql.add(' select (select top 1 name from  ma_gogek_basic where chart = p.chart ) as paName ,             ');
    sql.add(' (SELECT top 1 seqno FROM wonwe_p w where w.chart=p.chart and w.jin_day=p.jin_day) as wonweNo, ');
    sql.add('    ( select max(jin_ilsu) as jinilsu from wonwe_s s                                           ');
    sql.add('   where seqno=  (SELECT top 1 seqno FROM wonwe_p w                                            ');
    sql.add('        where w.chart=p.chart and w.jin_day=p.jin_day)                                         ');
    sql.add('               and s.jin_day=p.jin_day ) as jinilsu,                                           ');
    sql.add(' (SELECT top 1 s_key1 FROM jinryo_o o where o.chart=p.chart and o.jin_day=p.jin_day            ');
    sql.add('   order by jusang desc ) as sKey,                                                             ');
    sql.add(' (case when isOutpat =''1'' then convert(varchar, inPat_time, 23)                              ');
    sql.add('  else j.jin_day end) as start_jin_day,                                                        ');

    sql.add(' * from jinryo_p  p join ma_jubsu j on p.jubsu_id = j.id                                       ');

    if vkind = '0' then
      sql.add(' where  p.sunap = ''0''                                 ');

    if vkind = '1' then
      sql.add(' where   p.sunap = ''1''                                 ');

    if daeGiDate <> '' then
    begin
      // sql.add(' and j.jin_day =:jin_day                                   ');

      sql.add(' and (case when isOutpat =''1'' then convert(varchar, outPat_time, 23)  else j.jin_day end) =:jin_day   ');
      paramByname('jin_day').asstring := daeGiDate;
    end;
    // sql.add('  and jin_gu=''0'' ');
    // sql.add(' and chojae <> ''9''  and chojae <> ''0''  and chojae  <>  ''13'' ');

    if chart <> '' then
    begin
      sql.add(' and p.chart =:chart                                   ');
      paramByname('chart').asstring := chart;
    end;

    sql.add('  order by sunaptime desc, p.jin_day desc');
    open;
    first;

    if not isEmpty then
    begin

      nCount := RecordCount;

      Agrid.RowCount := RecordCount + 1;

      {
        1성명
        2차트
        3성별
        4나이
        5시간
        6초재진
        7보험자격
        8진료실
        9담당의

        10수납금액
        11카드
        12현금
        13 계좌
        14 미수
        15총금액
        16청구금액
        17bohum본인부담
        18bigub본인부담
        19jinryoPid
        20jubsu_id
        21teakrye
        22 ma_jubsu.health
        23choje
        24jongbyul
        25treatRoom
        26tong
        27tongreceipt
        28hyunReceipt
        29kamak
        30SanjungTeakRye
        31Jin_gu 0:당일진료비수납 1: 토탈차지 2: 증명료 3: 미수수납
        32  미수수납코드
        33 jin_day
        34 입원구분 0: 외래 1: 숙박 2: 낮
        35  doc_code
      }

      while not eof do
      begin

        i := i + 1;

        if vkind = '0' then
          Agrid.floats[0, i] := fieldByName('bonin').asinteger +
            fieldByName('bonin1').asinteger;
        if vkind = '1' then
          Agrid.floats[0, i] := fieldByName('sunapak').asinteger;

        Agrid.cells[1, i] := fieldByName('paName').asstring;
        Agrid.cells[2, i] := fieldByName('chart').asstring;
        Agrid.cells[3, i] := jumintoGender(fieldByName('jumin').asstring); // 성별
        Agrid.cells[4, i] := jumintoNai(fieldByName('jumin').asstring); // 나이

        Agrid.cells[5, i] := formatdatetime('hh:nn', fieldByName('sunapTime')
          .AsDateTime); // Sunap Time
        // AGrid.Cells[6, i]   :=  FieldByName('choje').AsString;
        // AGrid.Cells[7, i]   :=  FieldByName('jongbyul').AsString;   //접수에서 가져온 자격
        // AGrid.Cells[8, i]   :=  FieldByName('treatRoom').AsString;  //진료실

        Agrid.cells[6, i] := returnChojae(fieldByName('choje').asinteger); //
        Agrid.cells[7, i] := returnJongByul(fieldByName('jongbyul').asinteger);
        //
        Agrid.cells[8, i] := loadJinjryosil(fieldByName('treatRoom').asstring);
        // ;  //진료실

        Agrid.cells[9, i] := fieldByName('doc').asstring;; // 담당의

        Agrid.floats[10, i] := fieldByName('sunapak').asinteger;
        Agrid.floats[11, i] := fieldByName('card').asinteger;
        Agrid.floats[12, i] := fieldByName('cash').asinteger;

        Agrid.floats[13, i] := fieldByName('tong').asinteger; // 계좌

        Agrid.floats[14, i] := fieldByName('misugeum').asinteger;
        // 미수  misugeum

        Agrid.floats[15, i] := fieldByName('chong').asinteger;
        // + FieldByName('bonin1').AsInteger;
        Agrid.floats[16, i] := fieldByName('chung').asinteger;
        Agrid.floats[17, i] := fieldByName('bonin').asinteger;
        Agrid.floats[18, i] := fieldByName('bonin1').asinteger;
        Agrid.cells[19, i] := fieldByName('jinryo_pid').asstring;
        Agrid.cells[20, i] := fieldByName('jubsu_id').asstring;
        Agrid.cells[21, i] := fieldByName('teakrye').asstring;
        Agrid.cells[22, i] := fieldByName('health').asstring;
        Agrid.cells[23, i] := fieldByName('choje').asstring;
        Agrid.cells[24, i] := fieldByName('jongbyul').asstring;
        Agrid.cells[25, i] := fieldByName('treatRoom').asstring;
        Agrid.floats[26, i] := fieldByName('tong').asinteger;
        Agrid.floats[27, i] := fieldByName('tongreceipt').asinteger;
        Agrid.floats[28, i] := fieldByName('hyunReceipt').asinteger;
        Agrid.floats[29, i] := fieldByName('kamak').asinteger;
        Agrid.cells[30, i] := fieldByName('sanjungTeakRye').asstring;
        Agrid.cells[31, i] := fieldByName('jin_gu').asstring;

        if fieldByName('jin_gu').asstring = '3' then
             Agrid.cells[32, i] := '미수수납';

        Agrid.cells[33, i] := fieldByName('jin_day').asstring;

        Agrid.cells[34, i] := fieldByName('isInpat').asstring;
        Agrid.cells[35, i] := fieldByName('doc_code').asstring;
        Agrid.cells[36, i] := fieldByName('wonweNo').asstring; // 원외처방전번호
        Agrid.cells[37, i] := fieldByName('jinIlsu').asstring; // 처방일수
        Agrid.cells[38, i] := fieldByName('sKey').asstring; // 주상병
        Agrid.cells[39, i] := fieldByName('hwakinNo').asstring; // 보호진료확인번호
        Agrid.cells[40, i] := fieldByName('start_jin_day').asstring; //진료시작일(입원일)
        Agrid.cells[41, i] := fieldByName('isBohum100').asstring; //보험100
        Agrid.cells[42, i] := fieldByName('isJiwon').asstring; //산정특례 희귀 지원금 여부
        Next;
      end;
    end;
    //
    // AGrid.SetScrollPosition(0, varrow,  varscrollposition);
    //
    // if Agrid.Rowcount > 1 then
    // AGrid.Row := varRow;

    Agrid.TopRow := varTopRow;

    if varRow > Agrid.RowCount-1 then
    begin
         varRow:=  varRow  - (varRow - Agrid.RowCount-1)  ;
    end;

    if configvalue.varDaegiRefreshMode = '1' then
    begin
      if Agrid.RowCount > 1 then
      begin
        Agrid.SetScrollPosition(0, varRow, varScrollposition);
        Agrid.row := varRow;
        Agrid.col := varCol;
      end;
    end
    else
    begin // ToDo : 무조건 지금 보던 환자가 체크되게 하자

      if Agrid.RowCount > 1 then
      begin
        Agrid.SetScrollPosition(0, varRow, varScrollposition);
        Agrid.row := varRow;
        Agrid.col := varCol;
      end;

    end;

  end;
end;

function LoadExample_Teakrye(val: string): string;
var
  varMaxNo: integer;
  tjungExample: string;
begin
  result := '';

  with dm_f.SqlWork do
  begin
    close;
    sql.clear;
    sql.add('select * from ma_basic');
    sql.add('where val=:val ');
    paramByname('val').asstring := val;
    open;
    if not isEmpty then
    begin

      tjungExample := fieldByName('remark').asstring;

      tjungExample := // stringreplace(temp, '_', '0', [rfReplaceAll]);
        stringreplace(tjungExample, '|', sLineBreak, [rfReplaceAll]);

      tjungExample := // stringreplace(temp, '_', '0', [rfReplaceAll]);
        stringreplace(tjungExample, '     ', sLineBreak, [rfReplaceAll]);

      tjungExample := // stringreplace(temp, '_', '0', [rfReplaceAll]);
        stringreplace(tjungExample, '(예시', sLineBreak + '(예시', [rfReplaceAll]);

      tjungExample := // stringreplace(temp, '_', '0', [rfReplaceAll]);
        stringreplace(tjungExample, ' -', sLineBreak, [rfReplaceAll]);

      result := tjungExample;

    end;
  end;

  result := stringreplace(result, '|', #10, [rfReplaceAll]);
end;

function checkClientProxynRun: boolean;
const
  file1 = 'C:\Program Files (x86)\SoftForum\ClientProxy\ClientProxy.exe';
  file2 = 'C:\Program Files\SoftForum\ClientProxy\ClientProxy.exe';
begin
  result := false;
  if FileExists(file1) then
  begin
    ShellExecute(0, nil, file1, nil, nil, SW_SHOW);
    result := true;
  end
  else if FileExists(file2) then
  begin
    ShellExecute(0, nil, file2, nil, nil, SW_SHOW);
    result := true;
  end;

end;

function SaveTJung(kind: integer; TjungID, jubsu_id, chart, jin_day, RefTyp,
  jin_skey, julNo, RefCod, RefCmt, modday, userID, su_key: string): boolean;
const
  insertTjung = '  INSERT INTO  [ma_tjung]          ' + #10 +
    '                 ([jubsu_id]       ' + #10 +
    '                 ,[chart]          ' + #10 +
    '                 ,[jin_Day]        ' + #10 +
    '                 ,[RefTyp]         ' + #10 +
    '                 ,[jin_skey]       ' + #10 +
    '                 ,[RefCod]         ' + #10 +
    '                 ,[RefCmt]         ' + #10 +
    '                 ,[modday]         ' + #10 +
    '                 ,[julno]          ' + #10 +
    '                 ,[userID]         ' + #10 +
    '                 ,[su_key])        ' + #10 +
    '           VALUES                  ' + #10 +
    '                 (:jubsu_id        ' + #10 +
    '                 ,:chart           ' + #10 +
    '                 ,:jin_Day         ' + #10 +
    '                 ,:RefTyp          ' + #10 +
    '                 ,:jin_skey        ' + #10 +
    '                 ,:RefCod          ' + #10 +
    '                 ,:RefCmt          ' + #10 +
    '                 ,:modday          ' + #10 +
    '                 ,:julno           ' + #10 +
    '                 ,:userID          ' + #10 +
    '                 ,:su_key    )       ';

  UpdateTjung = '  UPDATE [ma_tjung]                        ' + #10 +
    '    SET [jubsu_id] = :jubsu_id             ' + #10 +
    '       ,[chart] = :chart                   ' + #10 +
    '       ,[jin_Day] = :jin_Day               ' + #10 +
    '       ,[RefTyp] = :RefTyp                 ' + #10 +
    '       ,[RefCod] = :RefCod                 ' + #10 +
    '       ,[RefCmt] = :RefCmt                 ' + #10 +
    '       ,[modday] = :modday                 ' + #10 +
    '       ,[julno]  = :julno                  ' + #10 +
    '       ,[userID] = :userID                 ' + #10 +
    '       ,[su_key] = :su_key                 ' + #10 +
    '  WHERE  jin_skey = :jin_skey   and   TjungID =  :TJungID  ';

  UpdateTjung2 = '  UPDATE [ma_tjung]                        ' + #10 +
    '    SET                                    ' + #10 +
    '        [RefTyp] = :RefTyp                 ' + #10 +
    '       ,[RefCod] = :RefCod                 ' + #10 +
    '       ,[RefCmt] = :RefCmt                 ' + #10 +
    '       ,[modday] = :modday                 ' + #10 +
    '       ,[julno]  = :julno                  ' + #10 +
    '  WHERE   TjungID =  :TJungID               ';

  SelectTjung = '  select * from [ma_tjung]                        ' + #10 +
    '  WHERE   TjungID =  :TJungID  ';
  // '  WHERE  jubsu_id=:jubsu_id  and  chart =  :chart and jin_skey = :jin_skey  ';

  DeleteTjung = '  delete from [ma_tjung]                        ' + #10 +
    '  WHERE   TjungID =  :TJungID  ';

  DeleteTjung2 = '  delete from [ma_tjung]                        ' + #10 +
    '  WHERE  jin_day=:jin_day and  jubsu_id=:jubsu_id  and  chart =  :chart and refCod = :refCod  ';

begin

  try

    result := false;

    with dm_f.sqlTemp do
    begin
      close;
      sql.clear;
      sql.text := SelectTjung;
      // paramByName('jubsu_id').asString  :=   jubsu_id ;
      // paramByName('chart').asString     :=   chart ;
      // paramByName('jin_skey').asString  :=   jin_skey;
      paramByname('TJungId').asstring := TjungID; // 자동증가
      open;
      if isEmpty then
      begin

      end
      else
      begin

      end;

      close;
      sql.clear;

      case kind of // update
        1, 2:
          begin
            if kind = 2 then // insert
            begin
              sql.text := UpdateTjung;
              paramByname('TJungId').asstring := TjungID; // 자동증가
            end
            else
            begin
              sql.text := insertTjung;
            end;

            paramByname('jubsu_id').asstring := jubsu_id;
            paramByname('chart').asstring := chart;
            paramByname('jin_Day').asstring := jin_day;
            paramByname('RefTyp').asstring := RefTyp;
            paramByname('jin_skey').asstring := jin_skey;
            paramByname('RefCod').asstring := RefCod;
            paramByname('RefCmt').asstring := RefCmt;
            paramByname('modday').asstring := modday;
            paramByname('userID').asstring := userID;
            paramByname('julno').asstring := julNo;
            paramByname('su_key').asstring := su_key;

          end;

        3: // Delete : Use TjungID
          begin
            sql.text := DeleteTjung;
            paramByname('TJungId').asstring := TjungID; // 자동증가
            // paramByName('jin_skey').asString :=   jin_skey;

          end;
        4: // Delete : Use  Chart, jin_day , su_key, refCode
          begin
            sql.text := DeleteTjung2;

            // '  WHERE  jin_day=:jin_day and  jubsu_id=:jubsu_id  and  chart =  :chart and refCod = :refCod  ';

            paramByname('jin_day').asstring := jin_day;
            paramByname('jubsu_id').asstring := jubsu_id;
            paramByname('chart').asstring := chart;
            paramByname('refCod').asstring := RefCod;
          end;

        5:
          begin
            sql.text := UpdateTjung2;
            paramByname('TJungId').asstring := TjungID; // 자동증가
            paramByname('RefTyp').asstring := RefTyp;
            paramByname('RefCod').asstring := RefCod;
            paramByname('RefCmt').asstring := RefCmt;
            paramByname('modday').asstring := modday;
            paramByname('julno').asstring := julNo;

          end;

      end;

      execsql;
      result := true;

    end;

  except

  end;
end;

function Find_Chk_item_Row(varGrid: TadvStringGrid; Chk_item: string)
  : TGridFindText;
var
  res: TPoint;
  findparams: TFindparams;

begin
  // fixedCol에 있는 내용 또는 col이 0? 아무튼 여기꺼는 못찾음.

  {
    Where:
    In entire grid
    In current column   [fnFindInCurrentCol]
    In current row   [fnFindInCurrentRow]
    Direction:  [fnDirectionLeftRight]
    Top - down
    Left - right

    Case sensitive   [fnMatchCase]

    Whole words only   [fnMatchFull]

    Regular expressions [fnMatchRegular]
  }
  findparams := [];
  findparams := findparams + [fnMatchFull];
  res := varGrid.FindFirst(Chk_item, findparams);
  if res.Y >= 0 then
  begin
    result.varCol := res.X;
    result.varRow := res.Y;
    // varGrid.Col := res.x;
    // varGrid.row := res.y;
  end
  else
  begin
    result.varCol := -1;
    result.varRow := -1;
  end;
  // findNext
  { res := AdvStringGrid1.findnext;
    if (res.x >= 0) and (res.y >= 0) then
    begin
    AdvStringGrid1.Col := res.x;
    AdvStringGrid1.row := res.y;
    end
    else
    MessageDlg('Text not found', mtinformation, [mbOK], 0);
  }
end;

procedure loadTjungHx(advstringGrid: TadvStringGrid;
  chart, jin_day, jubsu_id: string; kind: integer = 0);
begin
  case kind of
    0:
      advstringGrid.RemoveRows(1, advstringGrid.RowCount - 1);
  end;

  with dm_f.sqlTemp do
  begin
    close;
    sql.clear;
    sql.text := 'select * from ma_Tjung ' + #10 +
      'where chart=:chart and jin_day=:jin_day and jubsu_id=:jubsu_id';

    paramByname('jubsu_id').asstring := jubsu_id;
    paramByname('chart').asstring := chart;
    paramByname('jin_Day').asstring := jin_day;
    open;

    while not eof do
    begin
      {
        발생단위
        처방코드
        줄번호
        구분코드
        내역
        작성일
        사용자ID
        TJungID
        Jin_sKey
      }

      advstringGrid.addRow;
      advstringGrid.cells[1, advstringGrid.RowCount - 1] :=
        fieldByName('reftyp').asstring; // refTyp;   //발생단위
      advstringGrid.cells[2, advstringGrid.RowCount - 1] :=
        fieldByName('su_key').asstring; // edtSugaCode.text;
      advstringGrid.cells[3, advstringGrid.RowCount - 1] := fieldByName('julno')
        .asstring; // lblJinSkey.caption ;    //줄번호
      advstringGrid.cells[4, advstringGrid.RowCount - 1] :=
        fieldByName('refCod').asstring;
      // cbTjungNeyuk.ColumnItems[cbTjungNeyuk.ItemIndex, 0] ;
      advstringGrid.cells[5, advstringGrid.RowCount - 1] :=
        fieldByName('refCmt').asstring;
      // edtCode.text+'/'+edtSugaCode.Text+'/';
      advstringGrid.cells[6, advstringGrid.RowCount - 1] :=
        fieldByName('jin_day').asstring;
      // FormatDateTime('YYYY-MM-DD' ,now);// FormatDateTime('YYYY-MM-DD' , jinryo_f.DaegiFrame_fr1.DtDate.date);
      advstringGrid.cells[7, advstringGrid.RowCount - 1] :=
        fieldByName('userID').asstring; // docID;//
      advstringGrid.cells[8, advstringGrid.RowCount - 1] :=
        fieldByName('TJungID').asstring; // TJungID;//
      advstringGrid.cells[9, advstringGrid.RowCount - 1] :=
        fieldByName('jin_sKey').asstring; // docID;//

      Next;
    end;

  end;
end;

procedure SaveCC(memo: TRichEdit;//memo;
     Jubsu_ID: string;
     chart: string;
     treatRoom: string;
     doc_code: string;
     jin_day: string;
     isInpat: string);
var
  ms: TMemoryStream;

begin

  // jin_day가 오늘일 경우만 저장?
  if jin_day = '' then
    exit;

  // 메모가 없으면 저장 하지말자.
  if (trim(memo.text) = '') then
    exit;


  // if (trim(edtCC.text) <> '') and (tcCCDate.TabIndex >= 0) then
  // if (trim(memo3.text) <> '') and (tcCCDate.TabIndex >= 0) then
  // if   (tcCCDate.TabIndex >= 0) then
  // begin

  // jin_Day :=  tcCCDate.Tabs.Strings[tcCCdate.TabIndex];

  ms := TMemoryStream.Create;
  // edtCC.Lines.SaveToStream(ms);
  memo.Lines.SaveToStream(ms);
  // tcCcDate.TabIndex
  try
    with dm_f.sqlTemp do
    begin
      // ToDo : 지우지 말자....
      // Delete
      // if (trim(memo.text) = '')  then
      // begin
      // close;
      // SQL.Clear;
      // SQL.Add('delete from hxCC');
      // SQL.Add('Where CCDate=:CCDate and ccChart=:ccChart ');
      // sql.Add(' and ccteam=:ccteam and doc_code=:doc_code and isInpat=:isInPat');
      // paramByName('CCDate').AsDate     := StrToDate(jin_day);
      // paramByName('CCChart').asString  := ma_chart;
      // paramByName('ccTeam').asString   := treatRoom;
      // paramByName('doc_code').AsString := doc_code;
      // paramByName('isInPat').asString  := isInpat;
      // execsql;
      // exit;
      // end;
      //

      close;
      sql.clear;
      sql.add('select seq from hxCC');
      sql.add('Where CCDate = :CCDate and ccChart=:ccChart and jubsu_id=:jubsu_id');
//      sql.add('and ccteam=:ccteam and doc_code=:doc_code and isInPat=:isInPat');
      paramByname('CCDate').AsDate       := strtoDate(jin_day);
      paramByname('ccChart').asstring    := chart;
      paramByname('jubsu_id').asstring    := jubsu_id;
//      paramByname('ccTeam').asstring     := treatRoom;
//      paramByname('doc_code').asstring   := doc_code;
//      paramByname('isInPat').asstring    := isInpat;
      open;
      if isEmpty then
      begin
        close;
        sql.clear;
        sql.add('insert into hxCC');
        sql.add('(CCchart, CCDate, CCMemo, portion, modDay, richtext, ccTeam, doc_code, isInPat, jubsu_id) values');
        sql.add('(:CCchart, :CCDate, :CCMemo, :portion, :modDay,  :richtext , :ccTeam, :doc_code, :isInPat, :jubsu_id)');
      end
      else
      begin
        close;
        sql.clear;
        sql.add('update hxCC set');
        sql.add('CCMemo =:CCMemo, portion=:portion, modDay= :modDay, richtext=:richtext, ccteam=:ccteam , doc_code=:doc_code , isInPat=:isInPat');
        sql.add('Where CCDate=:CCDate and ccChart=:ccChart and jubsu_id=:jubsu_id ');
//        sql.add(' and ccteam=:ccteam and doc_code=:doc_code and isInPat=:isInPat');
        // // ParamByName('seq').AsString := lblseq.Caption;
        // paramByName('CCDate').AsDate := StrToDate(jin_day);
        // execsql;
      end;
      paramByname('CCDate').AsDate        := strtoDate(jin_day);
      paramByname('CCChart').asstring     := ma_Chart;
      paramByname('jubsu_id').asstring    := jubsu_id;
      paramByname('ccTeam').asstring      := treatRoom;
      paramByname('Doc_code').asstring    := doc_code;
      paramByname('CCMemo').asMemo        := memo.text; //edtCC.text;
      paramByname('Portion').asstring     := ''; // varPortion;
      paramByname('richtext').LoadFromStream(ms, ftBlob);
      paramByname('modDay').AsDateTime    := now;
      paramByname('isInPat').asstring     := isInpat;
      execsql;
    end;
  except
    on E: Exception do
    begin
      showmessage(E.Message + 'C/C저장오류');

    end;

  end;
  // end;
end;


procedure SaveLabRemark(
     memo: Tmemo;
     Jubsu_ID: string;
     chart: string;
     jin_day: string );
var
  ms: TMemoryStream;

begin

  // jin_day가 오늘일 경우만 저장?
  if jin_day = '' then
    exit;

  // 메모가 없으면 저장 하지말자.
  if (trim(memo.text) = '') then
    exit;


  ms := TMemoryStream.Create;
   memo.Lines.SaveToStream(ms);

  {	[jubsu_Id] [bigint] NULL,
	[chart] [nvarchar](50) NULL,
	[jin_day] [nvarchar](10) NULL,
	[remark] [nvarchar](1000) NULL,
	[mod_day] [datetime] NULL}
  try
    with dm_f.sqlTemp do
    begin

      close;
      sql.clear;
      sql.add('select chart from [ma_orderRemark]');
      sql.add('Where   jubsu_id=:jubsu_id');
      paramByname('jubsu_id').asstring    := jubsu_id;
      open;
      if isEmpty then
      begin
          close;
          sql.clear;
          sql.add('insert into ma_orderRemark');
          sql.add('(chart, jin_day, remark, mod_Day, jubsu_id) values');
          sql.add('(:chart, :jin_day, :remark, :mod_Day,  :jubsu_id)');
          paramByname('jin_day').AsDate        := strtoDate(jin_day);
          paramByname('Chart').asstring        := ma_Chart;
      end
      else
      begin
        close;
        sql.clear;
        sql.add('update ma_orderRemark set');
        sql.add('  remark=:remark, mod_day=:mod_day');
        sql.add('Where  jubsu_id=:jubsu_id ');
      end;
      paramByname('jubsu_id').asstring    := jubsu_id;
      paramByname('remark').asMemo        := memo.text; //edtCC.text;
      paramByname('mod_Day').AsDateTime    := now;
      execsql;
    end;
  except
    on E: Exception do
    begin
      showmessage(E.Message + 'ma_orderRemark저장오류');

    end;

  end;

end;
function countSunapdaegi(startDay, finalday: string): integer;
const
  selQry = 'select count(*) as nCnt  from jinryo_p  p join ma_jubsu j on p.jubsu_id = j.id  '
    + #10 +'where  p.sunap = ''0'' and j.jin_day>=:jin_day1 and  j.jin_day<=:jin_day2          ';
begin
  try
    with dm_f.sqlTemp do
    begin
      close;
      sql.clear;
      sql.text := selQry;
      paramByname('jin_day1').asstring := startDay;
      paramByname('jin_day2').asstring := finalday;
      open;
      result := fieldByName('nCnt').asinteger;
    end;

  except
    on E: Exception do
    begin
      showmessage(E.Message + 'count error');

    end;

  end;

end;

function saveRequest(
  rpPk  : integer;
  aState: string; // , char(1),>
  refercode : string;
  userToken: string; // , varchar(80),>
  patientID: string; // , nvarchar(50),>
  jwt: string; // , varchar(350),>
  jwtExpTime: string; // , char(13),>
  cosign: string; // , char(1),>
  hospitalEmail: string; // , varchar(30),>
  hospitalName: string; // , nvarchar(50),>
  hospitalPhone: string; // , varchar(13),>
  doctorName: string; // , nvarchar(50),>
  patientName: string; // , nvarchar(50),>
  patientPhone: string; // , varchar(13),>
  content: string; // , ntext,>
  viewHospital: string; // , char(1),>
  viewAdmin: string; // , char(1),>
  dynCatePK: integer; // , int,>
  dynContent: string; // , ntext,>
  dynDate: TdateTime; // , smalldatetime,>
  studyDate: TdateTime; // , smalldatetime,>
  requestDate: TdateTime; // , smalldatetime,>
  modifyDate: TdateTime; // , smalldatetime,>)
  out id: integer): boolean;

var
  tempQuery: TuniQuery;
  tempQuery2: TuniQuery;
  i: integer;
  paramA, paramB: string;
  detailContent: string;
  patReqPK: string;
begin

  // 협진 저장
  result := false;
  // {$IFDEF DEBUG}
  // Exit;
  // {$ENDIF DEBUG}

  try
//    i := 0;
//
    tempQuery := TuniQuery.Create(nil);
    tempQuery.Connection := dm_f.uniConnection1;

    tempQuery2 := TuniQuery.Create(nil);
    tempQuery2.Connection := dm_f.uniConnection1;

    with tempQuery do
    begin
      try
        close;
        sql.clear;
        sql.text := //select
          ' select * from RP_request where pk=:pk ';
          paramByname('pk'    ).asInteger := rpPk    ;
//          ' select * from RP_request where referCode=:referCode '+#10+
//          ' and patientID =:patientID                            '+#10+
//          ' and convert(char(10), dyndate, 23) =:dyndate         ';
//        paramByname('referCode'    ).asString := referCode    ;
//        paramByname('patientID'    ).asString := patientID    ;
//        paramByname('dyndate'      ).asString := formatDatetime('YYYY-MM-DD',dynDate)    ;
        open;

        if isEmpty then
        begin



            close;
            sql.clear;
            sql.text := // sqlInsert;
              ' INSERT INTO [dbo].[RP_request]  ' + #10 +
              '            ([state]             ' + #10 +
              '           ,[referCode]          ' + #10 +
              '           ,[userToken]          ' + #10 +
              '           ,[patientID]          ' + #10 +
              '           ,[jwt]                ' + #10 +
              '           ,[jwtExpTime]         ' + #10 +
              '           ,[cosign]             ' + #10 +
              '           ,[hospitalEmail]      ' + #10 +
              '           ,[hospitalName]       ' + #10 +
              '           ,[hospitalPhone]      ' + #10 +
              '           ,[doctorName]         ' + #10 +
              '           ,[patientName]        ' + #10 +
              '           ,[patientPhone]       ' + #10 +
              '           ,[content]            ' + #10 +
              '           ,[viewHospital]       ' + #10 +
              '           ,[isInputHosp]        ' + #10 +
              '           ,[viewAdmin]          ' + #10 +           //, char(1),> '
              '           ,[dynCatePK]          ' + #10 +
              '           ,[dynContent]         ' + #10 +
              '           ,[dynDate]            ' + #10 +
              '           ,[studyDate]          ' + #10 +
              '           ,[requestDate]        ' + #10 +
              '           ,[modifyDate])        ' + #10 +
              '           VALUES                ' + #10 +
              '           (:state               ' + #10 +      //, char(1),>
              '           ,:referCode           ' + #10 +          //, nvarchar(50),>
              '           ,:userToken           ' + #10 +          //, varchar(80),>
              '           ,:patientID           ' + #10 +            //, nvarchar(50),>
              '           ,:jwt                 ' + #10 +           //, varchar(350),>
              '           ,:jwtExpTime          ' + #10 +         //, char(13),>
              '           ,:cosign              ' + #10 +     //, char(1),>
              '           ,:hospitalEmail       ' + #10 +          //, varchar(30),>
              '           ,:hospitalName        ' + #10 +            //, nvarchar(50),>
              '           ,:hospitalPhone       ' + #10 +           //, varchar(13),>
              '           ,:doctorName          ' + #10 +             //, nvarchar(50),>
              '           ,:patientName         ' + #10 +            //, nvarchar(50),>
              '           ,:patientPhone        ' + #10 +           //, varchar(13),>
              '           ,:content             ' + #10 +       //, ntext,> '
              '           ,:viewHospital        ' + #10 +         //, char(1),>
              '           ,''1''                ' + #10 +      //isInputHosp ==> 메디로에서 입력하면 '1'
              '           ,:viewAdmin           ' + #10 +           //, char(1),> '
              '           ,:dynCatePK           ' + #10 +   //, int,>
              '           ,:dynContent          ' + #10 +       //, ntext,>
              '           ,:dynDate             ' + #10 +               //, smalldatetime,>
              '           ,:studyDate           ' + #10 +               //, smalldatetime,>
              '           ,:requestDate         ' + #10 +               //, smalldatetime,>
              '           ,:modifyDate )';                     //, smalldatetime,>)
    //
               paramByname('state'        ).asString := aState       ;
               paramByname('referCode'    ).asString := referCode    ;
               paramByname('userToken'    ).asString := userToken    ;
               paramByname('patientID'    ).asString := patientID    ;
               paramByname('jwt'          ).asString := jwt          ;
               paramByname('jwtExpTime'   ).asString := jwtExpTime   ;
               paramByname('cosign'       ).asString := cosign       ;
               paramByname('hospitalEmail').asString := hospitalEmail;
               paramByname('hospitalName' ).asString := hospitalName ;
               paramByname('hospitalPhone').asString := hospitalPhone;
               paramByname('doctorName'   ).asString := doctorName   ;
               paramByname('patientName'  ).asString := patientName  ;
               paramByname('patientPhone' ).asString := patientPhone ;
               paramByname('content'      ).asString := content      ;
               paramByname('viewHospital' ).asString := viewHospital ;
               paramByname('viewAdmin'    ).asString := viewAdmin    ;
               paramByname('dynCatePK'    ).asInteger := dynCatePK    ;
               paramByname('dynContent'   ).asString := dynContent   ;
               paramByname('dynDate'      ).asDateTime := dynDate      ;
               paramByname('studyDate'    ).asDateTime := studyDate    ;
               paramByname('requestDate'  ).asDateTime := requestDate  ;
               paramByname('modifyDate'   ).asDateTime := modifyDate   ;

            execsql;

            close;
            sql.clear;
            sql.text := ' select @@Identity as sid';
            open;

            id := fieldByName('sid').asinteger;   //RpPk

            result := true;
        end
        else
        begin
             //Update
            close;
            sql.clear;
            sql.text := // sqlInsert;
              ' UPDATE  [dbo].[RP_request]  SET ' + #10 +
              ' state=:state,  patientName=:patientName, patientID=:patientID   ' + #10 +
              ' where pk=:pk   ' ;
               paramByname('state'              ).asString := aState       ;
               paramByname('patientName'        ).asString := patientName       ;
               paramByname('patientID'          ).asString := patientID       ;
               paramByname('pk'    ).asInteger              := rpPk    ;
               execsql;


               result := true;
        end;
      except
        on E: Exception do
        begin
          ExceptLogging('sqlInsert :' + E.Message);
          showmessage('sqlInsert .' + #10 + E.Message);

        end;
      end;
    end;
  finally
    tempQuery.Free;
    tempQuery2.Free;
  end;
end;


function  saveRequestComplete(
           requestPK        : integer;// int,>
           chartNo          : string;//, nvarchar(50),>
           yearNo           : string;// nvarchar(50),>
           residentNo       : string;//, varchar(14),>
           patientName      : string;//, nvarchar(50),>
           patientAddr      : string;//, nvarchar(150),>
           patientPhone     : string;//, varchar(13),>
           disease          : integer;//, tinyint,>
           diseaseComment1  : string;// ntext,>
           diseaseComment2  : string;// , ntext,>
           comment          : string;// , ntext,>
           doctorName       : string;// , nvarchar(50),>
           hospitalName     : string;// , nvarchar(50),>
           hospitalAddr     : string;// , nvarchar(150),>
           hospitalPhone    : string;// , varchar(13),>
           publicationDate  : TdateTime;// , date,>
           requestDate      : TdateTime;// , smalldatetime,>)
           out ID : integer) : boolean;
const

  sqlInsert =' INSERT INTO [dbo].[RP_requestCompleted]    '+#10+
        '   ([requestPK]                                 '+#10+
        '     ,[chartNo]                                 '+#10+
        '     ,[yearNo]                                  '+#10+
        '     ,[residentNo]                              '+#10+
        '     ,[patientName]                             '+#10+
        '     ,[patientAddr]                             '+#10+
        '     ,[patientPhone]                            '+#10+
        '     ,[disease]                                 '+#10+
        '     ,[diseaseComment1]                         '+#10+
        '     ,[diseaseComment2]                         '+#10+
        '     ,[comment]                                 '+#10+
        '     ,[note]                                    '+#10+
        '     ,[use]                                     '+#10+
        '     ,[doctorName]                              '+#10+
        '     ,[hospitalName]                            '+#10+
        '     ,[hospitalAddr]                            '+#10+
        '     ,[hospitalPhone]                           '+#10+
        '     ,[publicationDate]                         '+#10+
        '     ,[requestDate])                            '+#10+
     '  VALUES                                           '+#10+
     '        (:requestPK                               '+#10+
     '        ,:chartNo                                 '+#10+
     '        ,:yearNo                                  '+#10+
     '        ,:residentNo                              '+#10+
     '        ,:patientName                             '+#10+
     '        ,:patientAddr                             '+#10+
     '        ,:patientPhone                            '+#10+
     '        ,:disease                                 '+#10+
     '        ,:diseaseComment1                         '+#10+
     '        ,:diseaseComment2                         '+#10+
     '        ,:comment                                 '+#10+
     '        ,:note                                    '+#10+
     '        ,:use                                     '+#10+
     '        ,:doctorName                              '+#10+
     '        ,:hospitalName                            '+#10+
     '        ,:hospitalAddr                            '+#10+
     '        ,:hospitalPhone                           '+#10+
     '        ,:publicationDate                         '+#10+
     '        ,:requestDate )                           ';
  sqlUpdate =
        ' update [RP_requestCompleted] set          '+#10+
        '      chartNo=              :chartNo                               '+#10+
        '     ,yearNo=               :yearNo                                '+#10+
        '     ,residentNo=           :residentNo                            '+#10+
        '     ,patientName=          :patientName                           '+#10+
        '     ,patientAddr=          :patientAddr                           '+#10+
        '     ,patientPhone=         :patientPhone                          '+#10+
        '     ,disease=              :disease                               '+#10+
        '     ,diseaseComment1=      :diseaseComment1                       '+#10+
        '     ,diseaseComment2=      :diseaseComment2                       '+#10+
        '     ,comment=              :comment                               '+#10+
        '     ,note=                 :note                                  '+#10+
        '     ,use=                  :use                                   '+#10+
        '     ,doctorName=           :doctorName                            '+#10+
        '     ,hospitalName=         :hospitalName                          '+#10+
        '     ,hospitalAddr=         :hospitalAddr                          '+#10+
        '     ,hospitalPhone=        :hospitalPhone                         '+#10+
        '     ,publicationDate=      :publicationDate                       '+#10+
        '     ,requestDate=          :requestDate                         '+#10+
        '     where requestPK=            :requestPK                     ';


  sqlSelect =' select * from RP_requestCompleted          '+#10+
        '     where requestPK=            :requestPK                     ';

var
     tempQuery : TuniQuery ;
     tempQuery2 : TuniQuery ;
     i : integer;
     paramA, paramB : string;
     detailContent : string;
     patReqPK : string;
     isNew : boolean;
begin

    //협진 저장
     result:= false;
//     {$IFDEF DEBUG}
//         Exit;
//     {$ENDIF DEBUG}

     try
        i:= 0;


        tempQuery := TuniQuery.create(nil);
        tempQuery.Connection:= dm_f.UniConnection1 ;

        tempQuery2 := TuniQuery.create(nil);
        tempQuery2.Connection:= dm_f.UniConnection1 ;


         with tempQuery do
             begin
             try
              Close;
              SQL.Clear;
              SQL.Text  := sqlSelect;
              paramByName('requestPK').AsInteger :=  requestPK;
              open;

              if  isEmpty then
              begin
                  isNew := true;
              end
              else
              begin
                  isNew := false;
              end;

               if isNew = true then
               begin
                  Close;
                  SQL.Clear;
                  SQL.Text  :=  //sqlInsert;

                ' INSERT INTO [dbo].[RP_requestCompleted]        '+#10+
                '   ([requestPK]                                 '+#10+
                '     ,[chartNo]                                 '+#10+
                '     ,[yearNo]                                  '+#10+
                '     ,[residentNo]                              '+#10+
                '     ,[patientName]                             '+#10+
                '     ,[patientAddr]                             '+#10+
                '     ,[patientPhone]                            '+#10+
                '     ,[disease]                                 '+#10+
                '     ,[diseaseComment1]                         '+#10+
                '     ,[diseaseComment2]                         '+#10+
                '     ,[comment]                                 '+#10+
                '     ,[doctorName]                              '+#10+
                '     ,[hospitalName]                            '+#10+
                '     ,[hospitalAddr]                            '+#10+
                '     ,[hospitalPhone]                           '+#10+
                '     ,[publicationDate]                         '+#10+
                '     ,[requestDate])                            '+#10+
             '  VALUES                                           '+#10+
             '        (:requestPK                               '+#10+
             '        ,:chartNo                                 '+#10+
             '        ,:yearNo                                  '+#10+
             '        ,:residentNo                              '+#10+
             '        ,:patientName                             '+#10+
             '        ,:patientAddr                             '+#10+
             '        ,:patientPhone                            '+#10+
             '        ,:disease                                 '+#10+
             '        ,:diseaseComment1                         '+#10+
             '        ,:diseaseComment2                         '+#10+
             '        ,:comment                                 '+#10+
             '        ,:doctorName                              '+#10+
             '        ,:hospitalName                            '+#10+
             '        ,:hospitalAddr                            '+#10+
             '        ,:hospitalPhone                           '+#10+
             '        ,:publicationDate                         '+#10+
             '        ,:requestDate )                           ';

              end
              else
              begin
                  Close;
                  SQL.Clear;
                  SQL.Text  :=
                    ' update RP_requestCompleted  set          '+#10+
                    '      chartNo=              :chartNo                               '+#10+
                    '     ,yearNo=               :yearNo                                '+#10+
                    '     ,residentNo=           :residentNo                            '+#10+
                    '     ,patientName=          :patientName                           '+#10+
                    '     ,patientAddr=          :patientAddr                           '+#10+
                    '     ,patientPhone=         :patientPhone                          '+#10+
                    '     ,disease=              :disease                               '+#10+
                    '     ,diseaseComment1=      :diseaseComment1                       '+#10+
                    '     ,diseaseComment2=      :diseaseComment2                       '+#10+
                    '     ,[comment]=              :comment                               '+#10+
              //      '     ,[note]=                 :note                                  '+#10+
              //      '     ,[use]=                  :use                                   '+#10+
                    '     ,doctorName=           :doctorName                            '+#10+
                    '     ,hospitalName=         :hospitalName                          '+#10+
                    '     ,hospitalAddr=         :hospitalAddr                          '+#10+
                    '     ,hospitalPhone=        :hospitalPhone                         '+#10+
                    '     ,publicationDate=      :publicationDate                       '+#10+
                    '     ,requestDate=          :requestDate                         '+#10+
                    '     where requestPK=            :requestPK                     ';


               end;

              ParamByName('requestPK').AsInteger         :=  requestPK;
              ParamByName('chartNo').AsString            :=  chartNo;
              ParamByName('yearNo').AsString             :=  yearNo;
              ParamByName('residentNo').AsString         :=  residentNo;
              ParamByName('patientName').AsString        :=  patientName;
              ParamByName('patientAddr').AsString        :=  patientAddr;
              ParamByName('patientPhone').AsString       :=  patientPhone;
              ParamByName('disease').AsInteger           :=  disease;
              ParamByName('diseaseComment1').AsString    :=  diseaseComment1;
              ParamByName('diseaseComment2').AsString    :=  diseaseComment2;
              ParamByName('comment').AsString            :=  comment;
              ParamByName('doctorName').AsString         :=  doctorName;
              ParamByName('hospitalName').AsString       :=  hospitalName;
              ParamByName('hospitalAddr').AsString       :=  hospitalAddr;
              ParamByName('hospitalPhone').AsString      :=  hospitalPhone;
              ParamByName('publicationDate').AsDateTime  :=  publicationDate;
              ParamByName('requestDate').AsDateTime      :=  requestDate;

              execsql;

              if isNew=true then
              begin

                  close;
                  sql.Clear;
                  sql.text:=' select @@Identity as sid';
                  open;

                  ID :=  fieldbyname('sid').asInteger;

              end
              else
              begin
                  ID :=  requestPK;
              end;
              Result := True;



                //협진 저장
                // {$IFNDEF DEBUG}

                   if  ChangeRPStatus(
                     ma_rp_RequestPK,
                     '5',
                     ma_chart,//edtChart.text,
                     ma_PaName,
                     requestDate //now
                     ) = false then
                     begin
                          showmessage('협진상태변경 오류.');
                     end;

                // {$ENDIF DEBUG}

                  result:= true;
             except
                   on E: Exception do
                 begin
                      ExceptLogging('sqlInsert :' + E.Message);
                      Showmessage('sqlInsert .'+#10
                      + E.Message);

                 end;
             end;
           end;
     finally
          tempQuery.Free;
          tempQuery2.Free;
     end;
end;


procedure  updateGogekAddress(id:string;Latitude:string; Longitude:string );
var
     tempQuery : TuniQuery ;

begin
     try
        tempQuery := TuniQuery.create(nil);
        tempQuery.Connection:= dm_f.UniConnection1 ;

      with tempQuery do
      begin
           close;
           sql.Clear;
           sql.Text :=
                  ' update ma_gogek_address  set             '  +#10+
                  ' Latitude =:Latitude, Longitude=:Longitude '  +#10+
                  ' where id=:id                              ' ;
                  paramByName('Latitude').AsString    := Latitude;
                  paramByName('Longitude').AsString   := Longitude;
                  paramByName('id').AsString          := id;
           execsql;
      end;
     finally
          tempQuery.Free;
     end;

end;

procedure  loadReferHospInfo(chart : string; jin_day : string );
var
     tempQuery : TuniQuery ;

begin
     try
        tempQuery := TuniQuery.create(nil);
        tempQuery.Connection:= dm_f.UniConnection1 ;

      with tempQuery do
      begin
           close;
           sql.Clear;
           sql.Text :=
                  ' select * from ma_gogek_referhosp r '+#10+
                  ' left join ma_referhosp  h on r.refercode=h.refercode              '  +#10+
                  ' where chart=:chart and jin_day=:jin_day          ' ;
                  paramByName('chart').AsString     := chart;
                  paramByName('jin_day').AsString   := jin_day;
           open;

         if not isEmpty then
         begin
          ma_ReferHospName := fieldByName('hospname').asstring;

          ma_ReferHospCode :=  trim(fieldByName('refercode').asstring);

          ma_ReferHospDoc :=  fieldByName('DocName').asstring;
          // ma_o_zip :=
          // dm_f.sqlFindHwanja.FieldByName('o_zip').AsString;

          ma_RHosp :=  fieldByName('RHosp').asstring;; // 의뢰병원 PACS
          ma_RHospID :=  fieldByName('RHospID').asstring;;

        end;
      end;
     finally
          tempQuery.Free;
     end;




end;


procedure  AlterTable;
begin
          with Dm_f.SqlWork do
          begin
                 close;
                 sql.clear;
                 Sql.Add('Select top 1 *  from jinryo_s');
                 Open;
          end;
          if Dm_f.SqlWork.FindField('moduser') = nil then
          begin
                 with Dm_f.SqlTemp do
                 begin
                        close;
                        sql.clear;
                        sql.add(' alter table jinryo_s   ');
                        sql.add(' add [moduser] varchar(100) null') ;
                        execsql;

                        close;
                        sql.clear;
                        sql.add(' alter table jinryo_s   ');
                        sql.add(' add [modDay] datetime null') ;
                        execsql;

                 end;
          end;

          with Dm_f.SqlWork do
          begin
                 close;
                 sql.clear;
                 Sql.Add('Select top 1 *  from jinryo_s');
                 Open;
          end;
          if Dm_f.SqlWork.FindField('isModChung') = nil then  //청구에서 입력했나? 1 => 청구 입력
          begin
                 with Dm_f.SqlTemp do
                 begin
                        close;
                        sql.clear;
                        sql.add(' alter table jinryo_s   ');
                        sql.add(' add [isModChung] varchar(1) null  CONSTRAINT [DF_jinryo_s_isModChung]  DEFAULT (N'''') ') ;
                        execsql;

                        close;
                        sql.clear;
                        sql.add(' update jinryo_s set  ');
                        sql.add(' isModChung ='''' ') ;
                        execsql;
                 end;
          end;

          with Dm_f.SqlWork do
          begin
                 close;
                 sql.clear;
                 Sql.Add('Select top 1 *  from jinryo_s');
                 Open;
          end;
          if Dm_f.SqlWork.FindField('modikind') = nil then  //Delete, Insert Tag
          begin
                 with Dm_f.SqlTemp do
                 begin
                        close;
                        sql.clear;
                        sql.add(' alter table jinryo_s   ');
                        sql.add(' add [modikind] varchar(1) null  CONSTRAINT [DF_jinryo_s_modikind]  DEFAULT (N'''') ') ;
                        execsql;

                        close;
                        sql.clear;
                        sql.add(' update jinryo_s set  ');
                        sql.add(' modikind ='''' ') ;
                        execsql;
                 end;
          end;

          with Dm_f.SqlWork do
          begin
                 close;
                 sql.clear;
                 Sql.Add('Select top 1 *  from ma_sawon_work');
                 Open;
          end;
          if Dm_f.SqlWork.FindField('swTitle') = nil then
          begin
                 with Dm_f.SqlTemp do
                 begin
                        close;
                        sql.clear;
                        sql.add(' alter table ma_sawon_work   ');
                        sql.add(' add [swTitle] nvarchar(100) null') ;
                        execsql;


                 end;
          end;


          with Dm_f.SqlWork do
          begin
                 close;
                 sql.clear;
                 Sql.Add('Select top 1 *  from jinryo_p');
                 Open;
          end;
          if Dm_f.SqlWork.FindField('ilyunNo') = nil then
          begin
                 with Dm_f.SqlTemp do
                 begin
                        close;
                        sql.clear;
                        sql.add(' alter table jinryo_p   ');
                        sql.add(' add [ilyunNo] int null') ;
                        execsql;


                 end;
          end;

end;


//==============================================================================
//constructor TQueryThread.Create(  DataBase: TUniConnection; Query: TUniQuery);
//begin
//  // thread object의 instance를 생성한다
//  // Create의 파라미터가 False이면 thread를 생성한후 즉시 Execute를 호출하여 실행한다
//  //            "        True이면 Resume을 호출하기 전까지 실행하지 않는다
//  inherited Create(True);
//
//  FDatabase := DataBase;
//  FQuery := Query;
////  FDataSource := Datasource;
//
//  // thread의 실행이 종료하면 자동으로 free되게 설정
//  FreeOnTerminate := True;
//
//  // 실행이 일시 중지된(suspended) thread를 실행한다
//  Resume;
//end;
//
//procedure TQueryThread.Execute;
//begin
//  try
//    // Query를 open하고 DataSource를 연결한다
//    FQuery.Open;
//
//    // thread간의 충돌을 피하여 ConnectDataSource 를 호촐한다
//    Synchronize(ConnectDataSource);
//  except
//    // Handle the exception
//    FQueryException := ExceptObject as Exception;
//    // thread간의 충돌을 피하여 ShowQryError 를 호촐한다
//    Synchronize(ShowQryError);
//    // Do not use the properties and methods of other objects directly in the Execute method of a thread.
//    // Instead, separate the use of other objects into a separate procedure call, and call that procedure
//    // by passing it as a parameter to the Synchronize method.
//  end;
//end;
//
//// TQuery object를 접근하므로 Synchronize 로 호출해야함
//procedure TQueryThread.ConnectDataSource;
//begin
//  // DataSource를 연결한다
//  // TQuery를 접근하므로 Synchronize 로 호출했음
// // FDataSource.DataSet := FQuery;
//end;
//
//// Application object를 접근하므로 Synchronize 로 호출해야함
//procedure TQueryThread.ShowQryError;
//begin
//  // Handle the exception
//  Application.ShowException(FQueryException);
//end;
//
//procedure RunBackgroundQuery(DataBase: TuniConnection;  Query: TuniQuery);
//begin
//  {thread instance 생성}
//  TQueryThread.Create(Database, Query);
//end;


end.

([HSP_NUM], [ORD_DATE]: ORD_DATE, [ORD_NUM]: ORD_NUM, [ITM_SEQ]: ITM_SEQ,
  [PSN_NAME]: PSN_NAME, [PSN_SEX]: PSN_SEX, [PSN_AGE]: PSN_AGE,
  [PSN_ID]: PSN_ID, [CHT_NUM]: CHT_NUM, [HSP_DEPT], [HSP_WARD], [HSP_DOCTOR],
  [SAMPLE_DATE], [HLAB_CODE]: HLAB_CODE, [HSUB_CODE]: HSUB_CODE,
  [HLAB_NAME]: HLAB_NAME, [LAB_CODE]: LAB_CODE, [LAB_NAME]: LAB_NAME,
  [LAB_UNIT]: LAB_UNIT, [INSU_CODE]: INSU_CODE, [LAB_STAT]: LAB_STAT,
  [LAB_RESULT]: LAB_RESULT, [DESC_RESULT1]: DESC_RESULT, [DESC_RESULT2]
  : DESC_RESULT, [DESC_RESULT3]: DESC_RESULT, [DESC_RESULT4]: DESC_RESULT,
  [DESC_RESULT5]: DESC_RESULT, [RSLT_DATE]: RSLT_DATE, [RSLT_TIME]: RSLT_TIME,
  [DR_NUM]: DR_NUM, [DR_NAME]: DR_NAME, [ABN_VALUE]: ABN_VALUE,
  [REF_VALUE]: REF_VALUE, [RQST_DATE]: RQST_DATE, [RQST_TIME]: RQST_TIME,
  [RCPT_DATE]: RCPT_DATE, [RCPT_TIME]: RCPT_TIME, [RCPT_NUM]: RCPT_NUM,
  [SEND_DATE]: SEND_DATE, [SEND_TIME]: SEND_TIME, [DOWN_DATE]: DOWN_DATE,
  [DOWN_TIME]): DOWN_TIME
