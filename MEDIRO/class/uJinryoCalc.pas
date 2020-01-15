unit uJinryoCalc;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,
  StdCtrls,  Menus, Math,
  DateUtils,   Mask,
  uni,
  vcl.Grids,
  inifiles,
  Buttons, ShellApi, PlannerCal, uTeeth, uFunctions, AdvGlowButton,
  AdvGDIP,
  AdvPageControl, FormSize, AdvAppStyler, AdvObj,
  BaseGrid, AdvGrid, AdvPanel,  AdvCombo, ColCombo,
   StrUtils;


type

   Tjinryo_PInfo = record
   nSunapChong : integer;
   nSunapChung : integer;
   nSunapBonin1: integer;
   nSunapBonin : integer;

 end;



type

  TSuguValue = record
    newSugu1 : string;
    newSugu2 : string;
    newSugu3 : string;
 end;
type

  TiaValue = record
    iaOnly : boolean; //Ʋ��, ���ö�Ʈ �� �ִ� ��� true
    iaList : Tstringlist;
    iaArtTeethDanga: integer;
    iaImplantDanga: integer;
    iaExDanga : integer;
   // iaCount: integer; //UA, UB count
    iaKind : integer;
    cntImplant : integer;  //UB count
    cntArtTeeth : integer; //UA  count
    cntImplantRefair : integer; //���ö�Ʈ���� count
    cntArtRefair : integer; //��ġ���� count
    iOrder: string;
  end;

type

  Tartteeth_Info = record
    upper: string;
    lower: string;
  end;

var
  nMan: Integer; // �Ǿ�ǰ�����ᰡ ������ ����
  nBoMan: Integer;

  is_wonwe: Boolean; //����ó���� �ֳ�����

  artTeeth: Boolean; //2012.7.1 Ʋ�Ͽ���

  anotherTeeth: Boolean; //2012.7.1 Ʋ�Ͽ� �ٸ�ġ���߳����߳�

  afterArtTeeth: boolean; //2012.10.1 Ʋ�� �߰�

  implteeth: boolean;

  // �Ǿ�ǰ�����ᰡ ������ ����  (��ȣ���� ����) 2008.4.1
  //nclick: Integer; // ���������丮 �����?(=1)
  hxRow: Integer;
  //�������� �׸����� ���ȣ:��ó�� �ݺ��� ���δ�. PopupPrev.
  initCellValue: Double;
  nClick: integer;
  sunapXsave: integer;

  jinchalRyoCode: string;
  jinchalRyoCode_gasan: string;

  SatGasangeum: integer;
  SatGasangeum2: integer; //��䰡�� û���� 50% , 0


{
          Realgrid14.Cells[1, 0].AsInteger := 0;   //nSumChong �ѱݾ�
          Realgrid14.Cells[1, 1].AsInteger := 0;   //nSumChong - nSumBigub �ѱݾ� - ��޿�
          Realgrid14.Cells[1, 2].AsInteger := 0;   //nSumChung  û���ݾ�
          Realgrid14.Cells[1, 3].AsInteger := 0;   //nSumBonin ���κδ�(�޿�)
          Realgrid14.Cells[1, 4].AsInteger := 0;   //nSumBigub ��޿� �ѱݾ�
          Realgrid14.Cells[1, 5].AsInteger := 0;   //nSumBonin + nSumBigub ���κδ�(�޿�+��޿�)
}



  aSuKey : string;
  aSuGu3 : string;
  aSuGu2 : string;
  aSuGu1 : string;

  aGubun : string;
  nOrder : integer;
  nilsu  : integer;
  nPrice : integer;

   nJinchalRyo : integer;

    nDangaSilant: integer;
  nDangaSilantExtract: integer;
  nDangaSilantExtractBeforeJongGasan: integer;
  nSumTotal : integer;  //������ �� �ѱݾ�

  nSumBohumJae: integer;
  nSumBohumHang: double;
  nSumBigubJae: double;
  nSumBigubHang: double;

  nSum100by30Jae  : double;
  nSum100by30Hang : double;

  nSum100by50Jae  : double;
  nSum100by50Hang : double;


  nSum100by80Jae  : double;
  nSum100by80Hang : double;

  nSum100by90Jae  : double;
  nSum100by90Hang : double;

  nSumBohumHangGasan: double;


  nSumBohumChong: double;
  nSumBigubChong : double;


  nSumBohumHangTot  : double;
  nSumBohumJaeTot   : double;



  nSumBohumBonin, nSumBonin , nSumChung , nSumChong: double;
  nCTMRI : double; //CT, MRI, PET

function loadJinryo_PInfo(jubsuid: string): Tjinryo_PInfo;

function Jinchalryo_make(hkind: string; // ����, �ǿ�, ���պ���
  varChong: double;
  boolWonwe: Boolean;
  varDate: string; //YYYY-MM-DD
  varTime: string; //hh:mm:ss
  varChojae: integer;
  varJongbeul: integer;
  varAge: integer;
  isSat: boolean; //����Ͽ��� - ��䰡������
  iGumjin : integer; //�ǰ�����
     {0��������
      1-----------------------------------
      2���� ������
      3���� �Ϲݰ���
      4���� ������ȯ��
      5���� �ϰ���
      }

  varbonDamCode: string; //���� ���κδ��ڵ�
  varBonjun: string;
  varCT: integer; //CT�ݾ�
  varDenture: integer; //Ʋ�� �ݾ�
  artTeeth: boolean = false; //Ʋ�Ͽ���
  AfterArtTeeth: boolean = false; //Ʋ�ϼ�������
  implTeeth: boolean = false; //���ö�Ʈ����
  anotherTeeth: boolean = false; //�ٸ� ġ�� ����
  nBoMan: integer = 0; //�Ǿ�ǰ������
  varGongsang: boolean = false; //���󿩺�
  varjange: boolean = false; //��ֿ���
//  varYongua: boolean = false; //�����Ʊ���
//  varGumjin: boolean = false; //�ǰ�����
//  varfirst: boolean = false; //������ȯ�����
  varRestrict: boolean = false; //�޿������ڿ���
  varPregnan: boolean = false) //�ӽź�
: integer;


procedure insertsugaOnce(aGrid: TAdvstringGrid;
            sCode: string;
            jinDay: string;
            jongbyul: integer;
            age: string;
            isYagan: boolean;
            ARow,
            AOrder: Integer;
            insertKind : string ='';  //cells[30, i]û�������� �����ױ׿� 'C' ����. �׳��� ����''
            aQty: Integer = 0;
            aKind : integer = 0 ;
           // gubKind  : integer = 0;
             gubKind  : string = '0';
            exceptCode : string =''; //Ư���ڵ� �Է� �ʿ�?
            isFindSugaInsert :boolean= false);
procedure CalcSum(AGrid: TAdvstringGrid;
            CostGrid: TAdvstringGrid;
            aChart: string; hospGubun: string;
            jinday: string;
            jongbyul: integer;
            age: string;
            isInPat: string;
            isYagan: boolean = false;
            bunupYewe: string = '';
            isChungGu:boolean=false);

function CalcKumak(
            suKey     : string;
            nDanga    : integer;
            nQty      : double;
            nilsu     : integer;
            nDanQty   : integer;
            jinDay    : string;
            soaGasan  : string;
            simGasan  : string;
            boolGasan : Boolean;
            su_extra  : string; //�������� �����ڵ尡 �ִ°͸� �ݾ��� ������.
            age       : string = '20'): Integer;
function CalcPoint(su_junsan, jin_day: string; perc: Double): Integer;

function calcKumak_jumgum(
  varAge: integer;
  varJinday: string;
  varsu_key: string;
  varJinQty: double;
  varDanQty: integer;
  varJinIlsu: integer;
  varDiv: integer;
  varJinDanga: integer;
  varSugu1: string;
  varSugu3: string;
  varSoa: boolean;
  varSimya: boolean;
  varsu_gu3: string;
  boolgasan: boolean;
  isSugaDanga: boolean;
  varjabo: boolean = false): double;
//function CalcPoint(su_junsan, jin_day: string; perc: double): integer;

function CalcBonin(hkind: string; // ����, �ǿ�, ���պ���
  varIO : integer;  //0: �ܷ� 1: �Կ�
  varChong: double;
  boolWonwe: Boolean;
  varDate: string; //YYYY-MM-DD
  varTime: string; //hh:mm:ss
  varChojae: integer;
  varJongbeul: integer;
  varAge: integer;
  isSat: boolean; //����Ͽ��� - ��䰡������
  iGumjin : integer;
//  varYongua: boolean = false;   //�����Ʊ���
//  varGumjin: boolean = false;   //�ǰ�����
//  varfirst: boolean = false;    //������ȯ�����
  varbonDamCode: string; //���� ���κδ��ڵ�
  varBonjun: string;
  varCT: double; //CT�ݾ�
  varDenture: integer; //Ʋ�� �ݾ�
  var100by30:double;
  var100by50:double;
  var100by80:double;
  var100by90:double;
  Bohum100:string; //����100
  SanjungCode : string='';       //�����ڵ�(V193...)
  applySanjung : boolean=true;   //����Ư������ ����
  applyJiwon   : string= '';      //  H �� �������
  artTeeth: boolean = false; //Ʋ�Ͽ���
  AfterArtTeeth: boolean = false; //Ʋ�ϼ�������
  implTeeth: boolean = false; //���ö�Ʈ����
  anotherTeeth: boolean = false; //�ٸ�ġ�� ġ�Ῡ��
  nBoMan: integer = 0; //�Ǿ�ǰ������
  varGongsang: boolean = false; //���󿩺�
  varjange: boolean = false; //��ֿ���
//  varYongua: boolean = false; //�����Ʊ���
//  varGumjin: boolean = false; //�ǰ�����
//  varfirst: boolean = false; //������ȯ�����
  varRestrict: boolean = false; //�޿������ڿ���
  varPregnan: boolean = false) //�ӽź�
: double;

procedure calcSatGasanGeum(hkind, varDate, varTime: string; varChojae,
  varAge: integer; isSat: boolean);
function GetJinchalRyo(varjinchalRyoCode: string;
  dWorkDate: string; bohumkind : integer= 0): Integer;
function GetJinchalRyo_SatGasan(hKind: string; nChoJae, nAge: Integer;
  dWorkDate: TdateTime;
  varJange, varGumjin,
  varFirst, varYongUa, varYagan: boolean): Integer;

function MakeJinchalRyoCode(nChoJae, nAge: Integer; dWorkDate: TDateTime;
  jange: boolean;
  iGumjin : integer;
//  yongua: boolean;
//  ilban: boolean;
//  ifirst: boolean;
  isSat: boolean = false): string;

function DeleteJinryo_s(jubsu_id : string):boolean;

procedure SetJinryo_O(aGrid:TadvStringGrid;
        sChart,
        sTeam: string;
        isInPat:string;
        jubsu_id:string;
        out sanTeakCode  : string;
        out juSangRow    : integer;
        sJin_day:string='';
        sJin_day2:string=''
        );

procedure SetJinryo_S(
        jubsu_id : string;
        aGrid:TadvStringGrid;
        sChart,
        sTeam: string;
        sDoc: string;
        isInPat:string;
        sJin_day:string='';
        sJin_day2:string='';
          iChungGuKind : integer= 0);

function loadChojae(chart:string; jinday:Tdatetime) : integer;
function getSugaGeum( varCode:string; jinday:string; kind:string):integer;
function getSugaName(varCode:string):string;

function getSugaName_userKey(varCode:string):string;


function makeGaSanCode(sugakey, gasankind:string;
    opt1: string='';
    opt2: string='';
    opt3: string=''): string;

function  loadDanga(varsukey: string;varJinDay : string): integer;
function  loadSuguValue(varsukey: string;varJinDay : string): TsuguValue;


procedure LoadGroupCode(aStringGrid:TadvStringGrid);
function  LoadGroupName(groupCode: string): string;
function makeSutakSanCode(sugakey, gasankind, sutakupche,
  sutakgrade: string): string;

function existJinryo_Sunap(jubsuid: string): boolean;

function update_Jinryo_p_simsa(jubsuid: string; simsaValue:string): boolean;

function update_Jinryo_p_HwakinNo(jubsuid: string; HwakinNo, k_number, kiho, piboname:string): boolean;

function updateIlyunNo(jubsuid: string; ilyunNo: string ): boolean;


function  loadGasanCode(jinDay : string; varsukey: string; varSugu2:integer; varSugu3:integer; varChojae, varAge: Integer;
  varsoa: boolean): string;
procedure BufferNeyuk(aGrid:TadvStringGrid; varDanwi, varChubangCode, varjulNo, varGubunCode,
      varNeyuk: ansistring);

procedure insertRP_requestUseJinsKey(
        rpPk: Integer;
        jins_Key:string;
        accessionNumber:string;
        jin_day:string;
        jin_time:string;
        userID:string;
        GKind:string;
        groupKey:string;
        totalSum:integer;
        alias    :string;
        readingStatus :string);

function getGroupSum (jin_day, chart, group_Key : string):integer;
Procedure save_RequestUseJinsKey(
    nRpPK:integer ;
    Achart:string;
    ADate : TdateTime;
    AGrid : TAdvStringGrid);

implementation

uses uConfig, uGogekData, uDm, uInputTeakJung;

//RealGrid16, GrdCost, RealGrid14
procedure BufferNeyuk(aGrid:TadvStringGrid; varDanwi, varChubangCode, varjulNo,
  varGubunCode, varNeyuk: ansistring);
begin
  aGrid.addRow;
  aGrid.cells[1, aGrid.RowCount - 1] := varDanwi;
  aGrid.cells[2, aGrid.RowCount - 1] := varChubangCode;
  aGrid.cells[3, aGrid.RowCount - 1] := varjulNo;
  aGrid.cells[4, aGrid.RowCount - 1] := varGubunCode;
  aGrid.cells[5, aGrid.RowCount - 1] := trim(varNeyuk);//' ' + trim(varNeyuk);
end;


function  loadGasanCode(jinDay : string; varsukey: string; varSugu2:integer; varSugu3:integer; varChojae, varAge: Integer;
  varsoa: boolean): string;
var
  San1, San2, San3: string;
begin
{�Ż��� ����ÿ��� ����� ���������� 100%�� �����ϸ�, ��1�� �̸��� �Ҿ��� ��쿡��
����� ���������� 50%��, ��1�� �̻� ��6�� �̸��� �Ҿ� �Ǵ�
��70�� �̻��� ������ ��쿡�� ����� ���������� 30%�� �����Ѵ�.
(�����ڵ� ù ��° �ڸ��� �Ż��ƴ� 1,
��1�� �̸��� A,
��1�� �̻�~��6�� �̸��� B,
��70�� �̻��� 4�� ����)}


{(������ ���� �ݾ� ����)
�� 3�� �Ҿư� ����� 22�ÿ� �߿��� ���Ͽ� �߰��� ������ ���� �ǿ��� ������ ���, ������ �����ݾ���?

�� �ǿ��� ������ �����ڵ� AA154
�� ��1���̻� 3���̸� : �����ڵ� ù° �ڸ� ��7�� / ��밡ġ���� 188.11�� / �����ݾ� 13,190��
�� �ɾ߰��� : �����ڵ� ��° �ڸ� ��2�� / ��밡ġ���� 18.06�� / �ݾ� 1270��
�� ������� ���� : �����ڵ� ��° �ڸ� ��1��/ ����������� /
----- �հ� : 25,360��*

* ���� �������� ���Ͽ� ����� �ݾ�(�ڵ庰 ���� x ������ �ܰ�)�� ���̸� 4��5��

<6�� �̸� ���ɺ� ���� ���� ���� �ڵ� �� ����>
�ۻ����ڵ�ù° �ڸ�(�ǹ�/��������) :
// 1(��1�� �̸�/27.9��/100%)
// 7 (�� 1�� �̻� �� 3��/19.06��/100%)
// 6 (�� 3�� �̻� �� 6�� �̸�2/9.03��/100%)
�ۻ����ڵ��°�ڸ� (�ǹ�/�ɾ߰���) :
// 2(20��~����07��/100%)
�� �������� : ������ �������� + ������ �� �⺻ ������ �������� *1(100% ����) + ���ɴ뺰����
}
  San1 := '0';
//  if (varAge < 8) and (varsoa = true) then
   //su_gu1 2 	su_gu2 1 	su_gu3 31  ==> 600
    if (varAge < 6) and (varsoa = true)  and   (varSugu2 =1)   and   (varSugu3 =19) then //����
    San1 := 'B'
  else
    if (varAge < 6) and (varsoa = true)  and   (varSugu2 =1)   and   (varSugu3 =31) then //x-ray
    San1 := '6'
     else
      if (varAge < 8) and  (varsoa = true)  and   (varSugu3 <> 31)  and   (varSugu3 <> 19) then
        San1 := '3'
          else
            if (varAge < 8) and  (varsoa = true) and (jinDay < '2017-07-01') then
                San1 := '3'
          else
            if (varAge >= 70) and   (varSugu3 =19) and   (varSugu2 =1) then //����  // ((varsukey = 'L0901') or (varsukey = 'L0902') or (varsukey = 'L0903') or (varsukey = 'L0904') or (varsukey = 'L0905') or  (varsukey = 'L0800'))
               San1 := '4';
            // ���븸 70���̻� ���� ���� �� ��������....�ϴ�.


   if ( copy(varsukey,1,2)= 'AA' ) and (varAge < 6)  then
   begin
        San1 := '6';
   end;


   San2 := '0';

//  if ((varChojae = 3) or (varChojae = 4)) and ((varsukey = 'U2290')) then
//    if ((varChojae = 3) or (varChojae = 4))  then
//  // ToDo : �ɾ߰��� ������ �����ϴ� �����?
//  begin
//    San2 := '1'; // �ɾ߰���
//  end
//  else
//  begin
//    San2 := '0';
//  end;

  San3 := '0';


  if San1 + San2 + San3 <> '000' then
    result := San1 + San2 + San3
  else
    result := '';

end;


procedure CalcSum(
    AGrid: TAdvstringGrid;
    CostGrid: TAdvstringGrid;
    aChart: string;
    hospGubun: string;
    jinday: string;
    jongbyul: integer;
    age: string;
    isInPat: string;
    isYagan: boolean = false;
    bunupYewe: string = '';
    isChungGu:boolean=false);
var



  nartTeeth,  nAfterArtTeeth: integer; //Ʋ�ϱݾ�, Ʋ���������� �ݾ�
  nimplTeeth: integer;  //���ö�Ʈ�ݾ�
  i, aRow, nHang, nJae, nBigub, nBigubP3, nCt, nWonwe, nTotalBonin:
    Integer;

  nIbNeed, nIbExist,  nIbStart, nIbRow : Integer;

  nMManNeed, nMManExist,  nMManStart, nMManRow, nM100by100: Integer;

  nManNeed, nManExist,  nManStart, nManRow, n100by100: Integer;


  nPihaNeed,    nPihaExist,     nPihaStart,    nPihaRow    : Integer;
  nJungmakNeed, nJungmakExist,  nJungMakStart, nJungMakRow : Integer;
  nSuekJeNeed,  nSuekJeExist,   nSuekJeStart,  nSuekJeRow  : Integer;


  nJointCheck  , nBackJointCheck : boolean;
  nBackJointNeed,    nBackJointExist,     nBackJointStart,    nBackJointRow    : Integer;
  nJointNeed,    nJointExist,     nJointStart,    nJointRow    : Integer;



  nNaeBokNeed, nNaeBokExist, nNaeBokStart, nNaeBokRow, nWeyongNeed,
    nWeyongExist, nWeyongStart, nWeyongRow: Integer;
  nFC, nCP, nPrep, nPerio, nInsan, nCabiton, nIRM, nSealapex, nCergi,
    nDontal, nAmal, nAmal2: Integer; //2006.3.23

  nL7000010, nL7000020, nL7000011, nL7000021, nL7000030, nL7001020,
    nL7002030, nL7002200: Double;
  nL7030180, nL7031180, nL7031020, nL7050140, nL7051140, nL7050030,
    nL7050300, nL7051300: Double;
  nL7201160, nL7202080, nL7203060, nL7203020, nL7201030, nL7210020,
    nL7211020, nL7211040: Double;
  nL7211080, nL7230130, nL7230131, nL7231080, nL7231110, nL7232080,
    nL7232110, nL7232190: Double;
  nL7232081, nL7240020, nL7250160, nL7250161, nL7250162, nL7250020,
    nL7250021, nL7250150: Double;
  nL7250151, nL7250080, nL7250090, nL7250170, nL7800020, nL7800040,
    nL7260160, nL7230330: Double;
  nL7230331, nL7230332, nL7230333, nL7230334, nL7230335, nL7230336,
    nL7230337, nL7231031: Double;
  nL7232032, nL7232033, nL7250022, nL7260021, nL7231190, nL7002081,
    nL7002082, nL7030320: Double;
  nL7031321, nL7250023: Double;
  dL7000010, dL7000020, dL7000011, dL7000021, dL7000030, dL7001020,
    dL7002030, dL7002200: Double;
  dL7030180, dL7031180, dL7031020, dL7050140, dL7051140, dL7050030,
    dL7050300, dL7051300: Double;
  dL7201160, dL7202080, dL7203060, dL7203020, dL7201030, dL7210020,
    dL7211020, dL7211040: Double;
  dL7211080, dL7230130, dL7230131, dL7231080, dL7231110, dL7232080,
    dL7232110, dL7232190: Double;
  dL7232081, dL7240020, dL7250160, dL7250161, dL7250162, dL7250020,
    dL7250021, dL7250150: Double;
  dL7250151, dL7250080, dL7250090, dL7250170, dL7800020, dL7800040,
    dL7260160, dL7230330: Double;
  dL7230331, dL7230332, dL7230333, dL7230334, dL7230335, dL7230336,
    dL7230337, dL7231031: Double;
  dL7232032, dL7232033, dL7250022, dL7260021, dL7231190, dL7002081,
    dL7002082, dL7030320: Double;
  dL7031321, dL7250023: Double;

  sAlMan: string;  //�Ǿ�ǰ������
  sIbMan: string;  //������ �Կ���
  sMalMan: string; //�����������

  nMIbCheck : boolean;
  nMManCheck, nManCheck, nPihaCheck, nJungMakCheck,  nSuekJeCheck,
  nNaeBokCheck, nWeyongCheck:    Boolean;
  JongGasan: double;
  nKumak: integer;
  geumek47, geumek48, geumek49, geumek50, geumek51, bibokum: integer;
  aGasan: string;
  aGubGu: string;
  aExtra : string;
  aSoBulru : string;
  aGroupKey : string;

  iTemp : currency;
begin


  nSumBohumHangTot :=0;
//  nSumBohumTot : integer;
  nSumBohumJaeTot  :=0;

  //2006.3.22
  nFC := 0;
  nCP := 0;
  nPrep := 0;
  nPerio := 0;
  nInsan := 0;
  nCabiton := 0;
  nIRM := 0;
  nSealapex := 0;
  nCergi := 0;
  nDontal := 0;
  nAmal := 0;
  nAmal2 := 0;
  nBoMan := 0;

  nL7000010 := 0;
  nL7000020 := 0;
  nL7000011 := 0;
  nL7000021 := 0;
  nL7000030 := 0;
  nL7001020 := 0;
  nL7002030 := 0;
  nL7002200 := 0;
  nL7030180 := 0;
  nL7031180 := 0;
  nL7031020 := 0;
  nL7050140 := 0;
  nL7051140 := 0;
  nL7050030 := 0;
  nL7050300 := 0;
  nL7051300 := 0;
  nL7201160 := 0;
  nL7202080 := 0;
  nL7203060 := 0;
  nL7203020 := 0;
  nL7201030 := 0;
  nL7210020 := 0;
  nL7211020 := 0;
  nL7211040 := 0;
  nL7211080 := 0;
  nL7230130 := 0;
  nL7230131 := 0;
  nL7231080 := 0;
  nL7231110 := 0;
  nL7232080 := 0;
  nL7232110 := 0;
  nL7232190 := 0;
  nL7232081 := 0;
  nL7240020 := 0;
  nL7250160 := 0;
  nL7250161 := 0;
  nL7250162 := 0;
  nL7250020 := 0;
  nL7250021 := 0;
  nL7250150 := 0;
  nL7250151 := 0;
  nL7250080 := 0;
  nL7250090 := 0;
  nL7250170 := 0;
  nL7800020 := 0;
  nL7800040 := 0;
  nL7260160 := 0;
  nL7230330 := 0;
  nL7230331 := 0;
  nL7230332 := 0;
  nL7230333 := 0;
  nL7230334 := 0;
  nL7230335 := 0;
  nL7230336 := 0;
  nL7230337 := 0;
  nL7231031 := 0;
  nL7232032 := 0;
  nL7232033 := 0;
  nL7250022 := 0;
  nL7260021 := 0;
  nL7231190 := 0;
  nL7002081 := 0;
  nL7002082 := 0;
  nL7030320 := 0;
  nL7031321 := 0;
  nL7250023 := 0;

  nHang := 0;

  nJae := 0;
  nartTeeth := 0; //2012.7.1
  nAfterArtTeeth := 0; //2012.10.1

  ArtTeeth := false;

  anotherTeeth := False;
  AfterArtTeeth := false;

  nImplTeeth := 0;
  implteeth := false;

  nBigub := 0;
  n100by100 := 0;
  nBigubP3 := 0;
  nTotalBonin := 0;

  nPihaNeed := 0;
  nPihaExist := 0;
  nPihaStart := 0;
  nPihaCheck := False;
  nPihaRow := 0;

  nJointNeed := 0;
  nJointExist := 0;
  nJointStart := 0;
  nJointCheck := False;
  nJointRow := 0;

  nBackJointNeed := 0;
  nBackJointExist := 0;
  nBackJointStart := 0;
  nBackJointCheck := False;
  nBackJointRow := 0;

  nJungmakNeed := 0;
  nJungmakExist := 0;
  nJungMakStart := 0;
  nJungMakCheck := False;
  nJungMakRow := 0;


  nSuekJeNeed   := 0;
  nSuekJeExist  := 0;
  nSuekJeStart  := 0;
  nSuekJeCheck  := False;
  nSuekJeRow    := 0;

  //�Կ���
  nIbNeed:= 0;
  nIbExist:= 0;
  nIbStart:= 0;
  nIbRow := 0;
  nMIbCheck := false;

  //�����������
  nMManNeed := 0;
  nMManExist := 0;
  nMManStart := 0;
  nMManCheck := False;
  nMManRow := 0;

  //�Ǿ�ǰ������
  nManNeed := 0;
  nManExist := 0;
  nManStart := 0;
  nManCheck := False;
  nManRow := 0;

  nNaeBokNeed := 0;
  nNaeBokExist := 0;
  nNaeBokStart := 0;
  nNaeBokCheck := False;
  nNaeBokRow := 0;

  nWeyongNeed := 0;
  nWeyongExist := 0;
  nWeyongStart := 0;
  nWeyongCheck := False;
  nWeyongRow := 0;

  //    if (dm_f.configvalue.varGubun = '����') or (dm_f.configvalue.varGubun = '���պ���')  then
  if (hospGubun = '����') or (hospGubun = '���պ���') then
  begin
    sALMan := 'AL300' ;
    sMalMan := 'AL020' ;
  end
  else
    //          if (FormatDateTime('YYYY-MM-DD', dMain.date) > '2011-12-31')
    {//          and (FormatDateTime('YYYY-MM-DD', dMain.date) < '2012-04-01') then} if
      (jinday > '2011-12-31')
      and (jinday < '2012-04-01') then
      begin
          sALMan := 'AL400';
           sMalMan := 'AL020' ;
      end
    else if ((hospGubun = '����') or (hospGubun = '���պ���')) then
    begin
      sALMan := 'AL701';
       sMalMan := 'AL020' ;
    end
    else  //�ǿ�
    begin   //�ܷ�
         if isInPat='0' then
         begin
          sALMan  := 'AL801';    //�Ǿ�ǰ������ 1��
          sMalMan := 'AL020' ;  //��������� 1��
         end
         else  if isInPat='2' then
         begin //�Կ�
              nibNeed := nibNeed + 1;

              sIbMan  := 'AF400'; //���Կ���
              sALMan  := 'AL851';    //�Ǿ�ǰ������ 1��
              sMalMan := 'AL010';  //��������� 1��
         end
         else  if isInPat='1' then
         begin //�Կ�
              nibNeed := nibNeed + 1;

              sIbMan  := 'AB400';   //�����Կ���
              sALMan  := 'AL851';  //�Ǿ�ǰ������ 1��
              sMalMan := 'AL010';  //��������� 1��
         end
    end;


//
//  nIbNeed:= 0;
//  nIbExist:= 0;
//  nIbStart:= 0;
//  nIbRow := 0;
//  nMIbCheck := false;


  for i := 1 to AGrid.RowCount -1 do
  begin

     aGubun :=  AGrid.Cells[0, i];    //99 , ����, ���
     aSuKey :=  AGrid.Cells[19, i];
     aSuGu1 :=  AGrid.Cells[10, i];
     aSuGu2 :=  AGrid.Cells[29, i];
     aSuGu3 :=  AGrid.Cells[11, i];
     nOrder :=  AGrid.ints[14, i];
     nilsu  :=  AGrid.ints[4, i];
     nPrice :=  AGrid.ints[6, i];
     aGasan :=  AGrid.cells[21, i];
     aGubGu :=  AGrid.cells[7, i];
     aExtra :=  trim(AGrid.cells[25, i]);
     aSoBulru := trim(AGrid.cells[27, i]);  //��ǰ �з�

     if aGubGu <> '' then
         aGubGu := formatFloat('#0',(AGrid.floats[7, i]));



    if (aSuKey  = sIbMan) and (  (isInPat='1') or (isInPat='2') ) then //�Կ���  //Su_key
    begin
      nIbExist := nIbExist + 1 ;
    end
    else if aSuKey = sAlman then //�Ǿ�ǰ�������  //Su_key
      nManExist := nManExist + 1
    else if aSuKey = sMAlman then //�Ǿ�ǰ�������  //Su_key
      nMManExist := nMManExist + 1
    else if (((UpperCase(Copy(aSuKey, 1, 1))  =  'J'))
      and (aSuKey <> 'J5500')
      and (aSuKey <> 'J5600')  ) then //�����������
      nNaeBokExist := nNaeBokExist + 1
    else if ((aSuKey = 'J5500') or  //�����ܿ��������
      (aSuKey = 'J5600') ) then
      nWeyongExist := nWeyongExist + 1
    else if aSuKey = 'KK090' then  // �������ֻ��
         nJointExist := nJointExist + 1
    else if aSuKey = 'KK061' then  //ô�����ֻ��
      nBackJointExist := nBackJointExist + 1
    else if aSuKey = 'KK010' then  //���� �Ǵ� �������ֻ��
      nPihaExist := nPihaExist + 1
    else if aSuKey = 'KK020' then //���Ƴ� �Ͻ��ֻ��
      nJungmakExist := nJungmakExist + 1
    else if aSuKey = 'KK054' then  //���������Էθ� ���� �ֻ�
      nSuekJeExist := nSuekJeExist + 1

    else
    begin

      if ((((aSuGu3 >= '09') and (aSuGu3 <=  '11')) // ����,�ܿ�,�����
        or  (aSuGu3 =   '19') or (aSuGu3 =   '16')  // ����
        or  (aSuGu3 =   '17')  // ���������ֻ�
        or  (aSuGu3 =   '18')  // ô�������ֻ�
        or  (aSuGu3 =   '12') or (aSuGu3 =   '13')  // �����ֻ�� , �����ֻ��
        or  (aSuGu3 =   '14')  )                    // �����Ŀ���
        and (aGubun  <>  '99')
        and (aSuGu1 =  '1')
        and (aExtra <>  '')
        ) then
      begin
        nManNeed := nManNeed + 1;
        if nManCheck = False then
        begin
          nManCheck := True;
          nManRow := i + 1;
          nManStart := nOrder;
        end;

        if( aSoBulru = '77') or  (aSoBulru = '83') then
        begin
              nMManNeed := nMManNeed + 1;
              if nMManCheck = False then
              begin

                nMManCheck := True;
                nMManRow := i + 1;
                nMManStart := nOrder;

              end;

        end;


      end;

//      if (aSuGu3 = '16') //����
//        and (aGubun  <>  '99')
//        and (aSuGu1 =  '1')
//        and (aExtra <>  '')
//          then
//      begin
//        nMManNeed := nMManNeed + 1;
//        if nMManCheck = False then
//        begin
//
//          nMManCheck := True;
//          nMManRow := i + 1;
//          nMManStart := nOrder;
//
//        end;
//      end;

      //����������
      if ((aSuGu3 = '09')
        and
        // �Ǿ�о�����(Edit3)
        (aGubun <>  '99')
        and (aExtra <> '')
     //    and (bunupYewe <> '')
         ) then
      begin
        if (nNaeBokNeed < nilsu) then
          nNaeBokNeed  :=   nilsu;

        if nNaeBokCheck = False then
        begin
          nNaeBokCheck := True;
          nNaebokRow   := i + 1;
          nNaeBokStart :=  nOrder;
        end;
      end;
      //�ܿ�������
      if ((aSuGu3 = '10')  and
        (aGubun <>  '99')  and
        (aExtra <> '')) then
      begin
        if (nWeyongNeed < nilsu) then
          nWeyongNeed :=
            nilsu;
        if nWeyongCheck = False then
        begin
          nWeyongCheck := True;
          nWeyongRow := i + 1;
          nWeyongStart :=  nOrder;
        end;
      end;

{       items.AddObject('����(������)', TObject(9)) ;
        items.AddObject('����(�ܿ��)', TObject(10)) ;
        items.AddObject('���ϱ������ֻ�', TObject(12)) ;
        items.AddObject('���Ƴ��ֻ�', TObject(13)) ;
        items.AddObject('���������ֻ�', TObject(14)) ;
        items.AddObject('���������ֻ�', TObject(15)) ;
        items.AddObject('�����ظ���', TObject(16)) ;
        items.AddObject('ô�������ֻ�', TObject(17)) ;
        items.AddObject('����', TObject(19)) ;
}
      //�����ֻ�
      if aSuGu3 = '12' then
      begin
        nPihaNeed := nPihaNeed + 1;
        if nPihaCheck = False then
        begin
          nPihaCheck := True;
          nPihaRow := i + 1;
          nPihaStart :=  nOrder;
        end;
      end;
      //���Ƴ��ֻ�
      if aSuGu3 = '13' then
      begin
        nJungMakNeed := nJungMakNeed + 1;
        if nJungMakCheck = False then
        begin
          nJungMakCheck := True;
          nJungMakRow := i + 1;
          nJungMakStart :=  nOrder;
        end;
      end;
      //������ ���ֻ�
      if aSuGu3 = '14' then
      begin
        nSuekJeNeed := nSuekJeNeed + 1;
        if nSuekJeCheck = False then
        begin
          nSuekJeCheck := True;
          nSuekJeRow := i + 1;
          nSuekJeStart :=  nOrder;
        end;
      end;

//        items.AddObject('���������ֻ�', TObject(18)) ;
//        items.AddObject('ô�������ֻ�', TObject(17)) ;
      //���������ֻ�
      if aSuGu3 = '18' then
      begin
        nJointNeed := nJointNeed + 1;
        if nJointCheck = False then
        begin
          nJointCheck := True;
          nJointRow := i + 1;
          nJointStart :=  nOrder;
        end;
      end;


      //ô�������ֻ�
      if aSuGu3 = '17' then
      begin
        nBackJointNeed :=  nBackJointNeed + 1;
        if  nBackJointCheck = False then
        begin
           nBackJointCheck := True;
           nBackJointRow := i + 1;
           nBackJointStart :=  nOrder;
        end;
      end;




    end;

  end;



  //-----------------------------------------------------------------------
  //�ڵ����� ���°� ��. û�������� ���� ����.
  if isChungGu = false then
  begin

      //�Կ��ε� �Կ��� ������
      if ((nIbExist = 0) and (nIbNeed > 0)) then
      begin
      //  aGrid.AddRow;
          nMIbCheck := True;
          nIbRow    :=  1;
          nIbStart  :=  1;
         insertsugaOnce(aGrid, sibMan, jinDay, jongbyul, age, isYagan, nIbRow,
             nibStart);
          nBoMan := 1;
      end;


      // ���� �ִµ� �Ǿ�ǰ�����ᰡ  ���°�� �Ǿ�ǰ������ ����
      if ((nManExist = 0) and (nManNeed > 0)) then
      begin
        insertsugaOnce(aGrid, sALMan, jinDay, jongbyul, age, isYagan, nManRow,
          nManStart);
        nBoMan := 1;
      end;

      // ������ �ִµ� ��������ᰡ  ���°�� ��������� ����
      if ((nMManExist = 0) and (nMManNeed > 0)) then
      begin
        insertsugaOnce(aGrid, sMALMan, jinDay, jongbyul, age, isYagan, nMManRow,
          nMManStart);
        nBoMan := 1;
      end;

      if ((nManExist > 0) and (nManNeed > 0)) then
      begin
        nBoMan := 1;
      end;

      // �������ֻ���� �ִµ� �������ֻ����ᰡ  ���°�� �������ֻ�� ����
      if ((nJointExist = 0) and (nJointNeed > 0)) then
      begin
        insertsugaOnce(aGrid, 'KK090', jinDay, jongbyul, age, isYagan, nJointRow,  nJointStart);
      end;

      // ô���ֻ���� �ִµ� ô���ֻ����ᰡ  ���°�� ô���ֻ�� ����
      if ((nBackJointExist = 0) and (nBackJointNeed > 0)) then
      begin
        insertsugaOnce(aGrid, 'KK061', jinDay, jongbyul, age, isYagan, nBackJointRow,  nBackJointStart);
      end;


      // �����ֻ���� �ִµ� �����ֻ����ᰡ  ���°�� �����ֻ�� ����
      if ((nPihaExist = 0) and (nPihaNeed > 0)) then
      begin
        insertsugaOnce(aGrid, 'KK010', jinDay, jongbyul, age, isYagan, nPihaRow,  nPihaStart);
      end;


      // �����ֻ���� �ִµ� �����ֻ����ᰡ  ���°�� �����ֻ�� ����
      if ((nJungMakExist = 0) and (nJungMakNeed > 0)) then
      begin
        insertsugaOnce(aGrid, 'KK020', jinDay, jongbyul, age, isYagan, nJungMakRow,
          nJungMakStart);
      end;

      // �������� ���� �ֻ� ����ᰡ  ���°�� ������ �ֻ�� ����
      if ((nSuekJeExist = 0) and (nSuekJeNeed > 0)) then
      begin
        insertsugaOnce(aGrid, 'KK054', jinDay, jongbyul, age, isYagan, nSuekJeRow,
          nSuekJeStart);
      end;
      //nSuekJeRow nSuekJeStart  nSuekJeExist   nSuekJeNeed
      //-----------------------------------------------------------------------

     //���������� �ʿ��Ѱ��
     //nNaebokNeed:=0; //��� ������ ���������� ���� ����
     //nWeyongNeed := 0;
      if ((nNaebokExist = 0) and (nNaeBokNeed > 0)) then
      begin
        case nNaeBokNeed of
          1..15: insertsugaOnce(aGrid, 'J5' + Formatfloat('00', nNaeBokNeed) +
              '0',
              jinDay, jongbyul, age, isYagan, nNaeBokRow, nNaeBokStart);
          16..30: insertsugaOnce(aGrid, 'J5160', jinDay, jongbyul, age, isYagan,
            nNaeBokRow, nNaeBokStart);
        else
          begin
            insertsugaOnce(aGrid, 'J5170', jinDay, jongbyul, age, isYagan, nNaeBokRow,
              nNaeBokStart);
          end;
        end;
      end;

  //�ܿ�������
//  if ((nWeyongExist = 0) and (nWeyongNeed > 0)) then
//  begin
//    if (nNaeBokNeed = 0) then
//    begin
//      //only �ܿ�
//      insertsugaOnce(aGrid, 'J5500', jinDay, jongbyul, age, isYagan, nNaeBokRow,
//        nNaeBokStart);
//    end
//    else
//    begin
//      //������ ���û���
//      insertsugaOnce(aGrid, 'J5600', jinDay, jongbyul, age, isYagan, nNaeBokRow,
//        nNaeBokStart);
//    end;
//  end;


  end;

  if hospGubun = '����' then
  begin
    //          if cmbJongbeul.ValueIndex = 0 then
    if jongbyul = 0 then
    begin
      JongGasan := 1.2;
    end
    else if ((jongbyul = 1) or
      (jongbyul = 2)) then
    begin
      JongGasan := 1.15;
    end
    else
    begin
      JongGasan := 1.2;
    end;
  end
  else if hospGubun = '���պ���' then
  begin
    if jongbyul = 0 then
    begin
      JongGasan := 1.25;
    end
    else if ((jongbyul = 1) or
      (jongbyul = 2)) then
    begin
      JongGasan := 1.18;
    end
    else
    begin
      JongGasan := 1.25;
    end;
  end
  else
  begin //�ǿ�
    {
    0�ǰ�����
    1�Ƿ�޿�1��
    2�Ƿ�޿�2��
    3�Ϲ�
    4�Ƿ�޿�4��
    5�Ƿ�޿�8��
    6����
    7�ں�
    8������1��
    9������2��
    10������2�������
    }
    if jongbyul = 0 then //�Ǻ�
    begin
      JongGasan := 1.15;
    end
    else if ((jongbyul = 1) or //�Ƿ�޿�1��
      (jongbyul = 2) or //�Ƿ�޿�2��
      (jongbyul = 4) or //�Ƿ�޿�4��
      (jongbyul = 5)) then //�Ƿ�޿�8��
    begin
      JongGasan := 1.11;
    end
    else if ((jongbyul = 8) or //������1��
      (jongbyul = 9) or //������2��
      (jongbyul = 10)  //������2�������
       ) then
    begin
      JongGasan := 1.15; //
    end
    else if (jongbyul = 3) then //�Ϲ�
    begin
      JongGasan := 1;
    end;

  end;



//�׸�
//�޿�������
//�޿�����
//�޿���
//��޿�������
//��޿�����
//��޿���



    costGrid.Cells[1, 0] := '�޿�������';
    costGrid.Cells[2, 0] := '�޿�����';
    costGrid.Cells[3, 0] := '�޿���';
    costGrid.Cells[4, 0] := '��޿�������';
    costGrid.Cells[5, 0] := '��޿�����';
    costGrid.Cells[6, 0] := '��޿���';


  for i := 1 to costGrid.RowCount - 1 do
  begin


    costGrid.Cells[1, i] := '';   //�޿�������
    costGrid.Cells[2, i] := '';   //�޿�����
    costGrid.Cells[3, i] := '';   //�޿���
    costGrid.Cells[4, i] := '';   //��޿�������
    costGrid.Cells[5, i] := '';   //��޿�����
    costGrid.Cells[6, i] := '';   //��޿���
  end;


  nDangaSilant:=0;
  nDangaSilantExtract:=0;
  nDangaSilantExtractBeforeJongGasan:=0;
  nSumTotal :=0;
  nSumBigubChong :=0;


//  for i := 0 to JGrid.RowCount - 1 do
//  begin
//    JGrid.Cells[1, i].AsString := '';
//    JGrid.Cells[2, i].AsString := '';
//  end;


  bibokum := 0;


  nSumBohumJae :=0;
  nSumBohumHang:=0;
  nSumBohumHangGasan:=0;
  nSumBohumChong:=0;
  nSumBigubJae:=0;
  nSumBigubHang:=0;
  nSumBigubChong :=0;

  nSum100by30Jae   := 0;
  nSum100by30Hang  := 0;

  nSum100by50Jae   := 0;
  nSum100by50Hang  := 0;

  nSum100by80Jae   := 0;
  nSum100by80Hang  := 0;

  nSum100by90Jae   := 0;
  nSum100by90Hang  := 0;

  nCtMRI := 0;

//ToDo : GrdJX2�� ������ ����� �������.
  for i := 1 to Agrid.RowCount - 1 do
  begin // Agrid= AGrid  (jinryo_s ����)


     if  AGrid.Cells[30,  i] ='D' then
     continue;

     aGubun     :=  AGrid.Cells[0,  i];    //99 , ����, ���
     aSuKey     :=  AGrid.Cells[19, i];
     aSuGu1     :=  AGrid.Cells[10, i];
     aSuGu2     :=  AGrid.Cells[29, i];
     aSuGu3     :=  AGrid.Cells[11, i];
     nOrder     :=  AGrid.ints[14,  i];
     nilsu      :=  AGrid.ints[4,   i];
     nPrice     :=  AGrid.ints[6,   i];
     aGasan     :=  AGrid.cells[21, i];
     aGroupKey  :=  trim(AGrid.cells[31, i]);  //�׷��ڵ�





     aGubGu :=  trim(AGrid.cells[7, i]);
   //  if aGubGu <> '' then
   //         aGubGu := formatFloat('#0',(AGrid.floats[7, i]));


{
5 100/100
6 100/90
7 100/80
8 100/50
9 100/30
10 ����100/100}

          case strCase(aSugu1, ['0', '1','2','3','4', '5' ]) of
             1:  //�޿����
             begin


                    if  (aGubGu <> '2') then  //aGubGu 0: �޿� 2:��޿�   9:
                    begin
                         nSumBohumJae   :=  nSumBohumJae  +   nPrice;
                         //AGrid.ints[32, i]   := nPrice;


                        if (aSugu2='B') and (aGubGu='9') then
                        begin
                            nSum100by80Jae :=   nSum100by80Jae + nPrice;

                           // AGrid.floats[32, i]   := nPrice;

                        end;

                        if (aSugu2='E') and (aGubGu='B') then //  90/100
                        begin
                            nSum100by90Jae :=   nSum100by90Jae + nPrice;
                        end;

                        if (aSugu2='A') and (aGubGu='8') then   //  50/100
                        begin
                            nSum100by50Jae :=   nSum100by50Jae + nPrice;
                        end;

                        if (aSugu2='D') and (aGubGu='A') then  //  30/100
                        begin
                            nSum100by30Jae :=   nSum100by30Jae + nPrice;
                        end;



                       // else
                        if  (aGubGu='0') then
                        begin
                              nSumBohumJaeTot  := nSumBohumJaeTot + nPrice;
                        end;


                    end
                    else  //��޿�
                    begin

                       nSumBigubJae   :=  nSumBigubJae    +   nPrice;
                       nSumBiGubChong :=  nSumBiGubChong  +   nPrice;

                    end;


             end;
             2:  //�޿�����
             begin
                if  (aGubGu <> '2') then  //aGubGu 0: �޿� 2:��޿�
                begin
                      if ((aGasan = '2') and ( aSuGu3 <> '26') )
                          or ((aGroupKey ='+JLAB') and  (aSuGu3 = '26') )   then
                          //������ ��ü�˻�� ó��
                      begin


                          nSumBohumHangGasan := nSumBohumHangGasan+ nPrice;

                               // AGrid.floats[32, i]   := nPrice;
                      end
                      else
                      begin

                          nSumBohumhang := nSumBohumhang  +   nPrice ;
                         // AGrid.floats[32, i]   :=   nPrice;
                      end;

                      if    (aGubGu='0')   and ((aGasan = '2') and ( aSuGu3 <> '26') )
                          or ((aGroupKey ='+JLAB') and  (aSuGu3 = '26') )   then

                      begin
                            nSumBohumHangTot  := nSumBohumHangTot + nPrice;
                      end;

                      if (aSugu2='B') and (aGubGu='9')  then   //80/100
                      begin
                        nSum100by80Hang :=   nSum100by80Hang + nPrice;
                       // AGrid.floats[32, i]   :=   nPrice;
                      end;
                  //  else
                        if (aSugu2='E')  then    //90/100    //and (aGubGu='B')
                        begin
                            nSum100by90Hang :=   nSum100by90Hang + nPrice;

                        end;

                        if (aSugu2='A') and (aGubGu='8') then    //   50/100
                        begin
                            nSum100by50Hang :=   nSum100by50Hang + nPrice;

                        end;

                        if (aSugu2='D') and (aGubGu='A') then    //   30/100
                        begin
                            nSum100by30Hang :=   nSum100by30Hang + nPrice;

                        end;

                end
                else  //��޿�
                begin

                   nSumBigubHang  :=  nSumBigubHang    +   nPrice;
                   nSumBiGubChong :=  nSumBiGubChong   +   nPrice;   // + round(nSumBohumHangGasan)

                end;

             end;
             3:  // '������'
             begin

                     nSumBigubJae   :=  nSumBigubJae    +   nPrice;
                     nSumBigubChong :=  nSumBigubChong  +   nPrice;

             end;
             4:  // '�������'
             begin
                     nSumBigubHang  :=  nSumBigubHang   +   nPrice;
                     nSumBiGubChong :=  nSumBiGubChong  +   nPrice;

             end;
             5:
             begin
                      n100by100     :=  n100by100 + nPrice;
             end;

             else
             begin

                      nSumBigubHang  :=  nSumBigubHang  +   nPrice;
                      nSumBiGubChong :=  nSumBiGubChong +   nPrice;

             end;
          end;
{
����(������)', TObject(9)) ;
����(�ܿ��)', TObject(10)) ;
���ϱ������ֻ�', TObject(12)) ;
���Ƴ��ֻ�', TObject(13)) ;
���������ֻ�', TObject(14)) ;
�����ظ���', TObject(16)) ;
����', TObject(19)) ;
óġ', TObject(23)) ;
����', TObject(25)) ;
��Ź�˻�', TObject(26)) ;
���ö�Ʈ(�޿�)', TObject(28)) ;
��ü�˻�', TObject(29)) ;
��ü�˻�', TObject(30)) ;
��缱', TObject(31)) ;
CT�Կ�', TObject(39)) ;
MRI', TObject(40)) ;
���� �� ȸ��', TObject(41)) ;
������', TObject(42)) ;
��Ÿ', TObject(50)) ;
��ö', TObject(47)) ;
����', TObject(48)) ;
���ö�Ʈ(��޿�)', TObject(49)) ;
}

         costGrid.cells[0, 1]  := '����,�ֻ�09..18';
         costGrid.cells[0, 2]  := '���� 19';
         costGrid.cells[0, 5]  := 'óġ,����23, 25 ';
         costGrid.cells[0, 6]  := '�˻� 29,30 ';
         costGrid.cells[0, 7]  := '��缱 31..34 ';
         costGrid.cells[0, 8]  := 'CT 39 '; //MRI 40
         costGrid.cells[0, 9]  := '��� 45..49 ';
         costGrid.cells[0, 10] := '��Ÿ- ���� ';
         costGrid.cells[0, 11] := '��Ÿ2- ���� ';
         costGrid.cells[0, 3]  := 'Ʋ�� 24';
         costGrid.cells[0, 4]  := '���ö�Ʈ28';



    if (aSuGu3 <> '') then
    begin
      case strtoint(aSuGu3) of //su_gu3
        09..18:  //����,�ֻ�    nTuyak ,
          begin

//             costGrid.cells[0, 1]  := '����,�ֻ�  09..18';
            if ((aSuGu1 = '0')  or (aSuGu1 = '1')) then
            begin //�޿����,����
              costGrid.ints[2, 1]  :=  costGrid.ints[2, 1] +   nPrice;
              costGrid.ints[3, 1]  :=  costGrid.ints[3, 1] +   nPrice;
              anotherTeeth := true;
            end
            else if (aSuGu1 = '3') then
            begin //��޿����
              costGrid.ints[5, 1]  :=  costGrid.ints[5, 1] +   nPrice;
              costGrid.Ints[6, 1]  :=  costGrid.ints[6, 1] +   nPrice;
            end
            else if (aSuGu1 = '4') then
            begin //��޿�����
              costGrid.Ints[4, 1]  :=  costGrid.Ints[4, 1] +  nPrice;
              costGrid.Ints[6, 1]  :=  costGrid.Ints[6, 1] +  nPrice;

            end
            else if (aSuGu1 = '2') then
            begin //�޿�����
              costGrid.floats[1, 1] := costGrid.ints[1, 1] +  Round2(nPrice * (round2(jonggasan * 100, 0) / 100), 0);
              costGrid.floats[3, 1] := costGrid.ints[3, 1] +  Round2(nPrice * (round2(jonggasan * 100, 0) / 100), 0);

              anotherTeeth := true;
            end;

          end;
        19:
          begin //����
//             costGrid.cells[0, 2]:= '����  09..1819';

            if (aSuGu1 = '1') then
            begin //���
              costGrid.ints[2, 2] :=  costGrid.ints[2, 2] +  nPrice;
              costGrid.ints[3, 2]  :=  costGrid.ints[3, 2] +   nPrice;
              anotherTeeth := true; //2012.7.1
            end
            else if (aSuGu1 = '3') then
            begin //��޿����
              costGrid.ints[5, 2]  :=  costGrid.ints[5, 2] + nPrice;
              costGrid.ints[6, 2]  :=  costGrid.ints[6, 2] +   nPrice;
            end
            else if (aSuGu1 = '4') then
            begin //��޿�����
              costGrid.Ints[4, 2] := costGrid.ints[4, 2] +  nPrice;
              costGrid.Ints[6, 2] :=  costGrid.ints[6, 2] + nPrice;
            end
            else if (aSuGu1 = '2') then
            begin //�޿�����
              costGrid.floats[1, 2] := costGrid.ints[1, 1] +  Round2(nPrice *  (round2(jonggasan * 100, 0) / 100), 0);
              costGrid.floats[3, 2] := costGrid.ints[3, 1] +  Round2(nPrice *  (round2(jonggasan * 100, 0) / 100), 0);
              anotherTeeth := true; //2012.7.1
            end;

          end;
        24: //Ʋ��   2012.7.1
          // su_gu1=2, su_gu2=1, su_gu3=24 Ʋ��, �������� 12����=1  �̹Ƿ� cells[x, 2]�� ���
          //                                                          x=2 �������  3:�����
          begin
//             costGrid.cells[0, 3]:= 'Ʋ�� 24';

            if (aSuGu1 = '2') then
            begin
              if (aSuKey = 'UA101')
                or (aSuKey = 'UA111')
                or (aSuKey = 'UA121')
                or (aSuKey = 'UA131')
                or (aSuKey = 'UA141')
                or (aSuKey = 'UA201')
                or (aSuKey = 'UA301') //�κ�Ʋ��
              or (aSuKey = 'UA311') //�κ�Ʋ��
              or (aSuKey = 'UA321') //�κ�Ʋ��
              or (aSuKey = 'UA331') //�κ�Ʋ��
              or (aSuKey = 'UA341') //�κ�Ʋ��
              or (aSuKey = 'UA351') //�κ�Ʋ��
              or (aSuKey = 'UA401') //�ӽúκ�Ʋ�� 3ġ����
              or (aSuKey = 'UA411') //�ӽúκ�Ʋ�� �߰�1ġ
              or (aSuKey = 'UA102') //�Ʒ��� ġ��������
              or (aSuKey = 'UA112')
                or (aSuKey = 'UA122')
                or (aSuKey = 'UA132')
                or (aSuKey = 'UA142')
                or (aSuKey = 'UA202')
                or (aSuKey = 'UA302') //�κ�Ʋ��
              or (aSuKey = 'UA312') //�κ�Ʋ��
              or (aSuKey = 'UA322') //�κ�Ʋ��
              or (aSuKey = 'UA332') //�κ�Ʋ��
              or (aSuKey = 'UA342') //�κ�Ʋ��
              or (aSuKey = 'UA352') //�κ�Ʋ��
              or (aSuKey = 'UA402') //�ӽúκ�Ʋ�� 3ġ����
              or (aSuKey = 'UA412') //�ӽúκ�Ʋ�� �߰�1ġ
              or (aSuKey = 'UA501')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-���ܹ�ġ���ȹ(1�ܰ�) �ǿ�
              or (aSuKey = 'UA511')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-�λ�ä��(2�ܰ�)
              or (aSuKey = 'UA521')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-�ǰ�����ä��(3�ܰ�)
              or (aSuKey = 'UA531')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-����ġ����(4�ܰ�)
              or (aSuKey = 'UA541')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-��ġ����������(5�ܰ�)
              or (aSuKey = 'UA502')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-���ܹ�ġ���ȹ(1�ܰ�) ����
              or (aSuKey = 'UA512')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-�λ�ä��(2�ܰ�)
              or (aSuKey = 'UA522')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-�ǰ�����ä��(3�ܰ�)
              or (aSuKey = 'UA532')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-����ġ����(4�ܰ�)
              or (aSuKey = 'UA542')
                //�ݼӻ� ����Ʋ��[1�Ǵ�]-��ġ����������(5�ܰ�)
              then
              begin
                costGrid.Ints[2, 3] :=  costGrid.Ints[2, 3] +  nPrice;
                costGrid.Ints[3, 3] :=  costGrid.Ints[3, 3] +  nPrice;
                artTeeth := true; //2012.7.1
              end
              else if COPY(aSuKey, 1, 3) = 'U15' then
              begin

                costGrid.floats[2, 3] :=  costGrid.ints[2, 3] +
                  Round2(nPrice *
                    (round2(jonggasan
                  * 100,
                  0) / 100), 0);
                costGrid.floats[3, 3] :=
                  costGrid.ints[3, 3] +
                  Round2(nPrice *
                    (round2(jonggasan
                  * 100,
                  0) / 100), 0);


                afterArtTeeth := true;

              end;
            end;

          end;
        28: // ���ö�Ʈ ����
          // su_gu1=2, su_gu2=1, su_gu3=28 ���ö�Ʈ, �������� 12����=1  �̹Ƿ� cells[x, 2]�� ���
          //                                                          x=2 �������  3:�����

          //���ö�Ʈ����= su_gu3�� 25�� ����
          begin

//           costGrid.cells[0, 4]:= '���ö�Ʈ  28';
            if (aSuGu1 = '1') then //���
            begin
              if (copy(aSuKey, 1, 3) = 'L75') {//���ö�Ʈ ���}
                then
              begin
                costGrid.ints[2, 4] :=
                  costGrid.ints[2, 4] +
                  nPrice;

                costGrid.ints[3, 4] :=
                  costGrid.ints[3, 4] +
                  nPrice;

//                 nSumBohumJae :=  nSumBohumJae +   nPrice;
//                 nSumBohumChong :=  nSumBohumChong+   nPrice;

              end;
            end
            else if (aSuGu1 = '2') then //����
            begin
              if (copy(aSuKey, 1, 4) = 'UB11') //���ö�Ʈ 1�ܰ�
              or (copy(aSuKey, 1, 4) = 'UB12') //2�ܰ�
              or (copy(aSuKey, 1, 4) = 'UB13') //3�ܰ�
              {//      or (copy(aSuKey,1,4)  = 'U498') //���ö�Ʈ ����} then
              begin
                costGrid.Ints[1, 4] :=
                  costGrid.ints[1, 4] +
                  nPrice;

                costGrid.Ints[3, 4] :=
                  costGrid.ints[3, 4] +
                  nPrice;
              end;
            end;

            implTeeth := true;
          end;

        23, 25:
          begin //óġ,����

//           costGrid.cells[0, 5]:= 'óġ,����23, 25 ';

            if (aSuGu1 = '1') then
            begin //���
              costGrid.ints[2, 5]
                :=
                costGrid.ints[2, 5] +
                nPrice;
              costGrid.ints[3, 5]
                :=
                costGrid.ints[3, 5] +
                nPrice;

              anotherTeeth := true; //2012.7.1
            end
            else if (aSuGu1 = '3') then
            begin //��޿����
              costGrid.ints[5, 5]
                :=
                costGrid.ints[5, 5] +
                nPrice;
              costGrid.ints[6, 5]
                :=
                costGrid.ints[6, 5] +
                nPrice;
            end
            else if (aSuGu1 = '4') then
            begin //��޿�����
              costGrid.Ints[4, 5] :=
                costGrid.ints[4, 5] +
                nPrice;
              costGrid.Ints[6, 5] :=
                costGrid.ints[6, 5] +
                nPrice;
            end
            else if (aSuGu1 = '2') then
            begin //����
              costGrid.floats[1, 5] :=
                costGrid.ints[1, 5] +
                Round2(nPrice * (round2(jonggasan * 100, 0) / 100), 0);
              costGrid.floats[3, 5] :=
                costGrid.ints[3, 5] +
                Round2(nPrice * (round2(jonggasan * 100, 0) / 100), 0);

              anotherTeeth := true; //2012.7.1
            end;

          end;

        29, 30:
          begin //�˻�


//           costGrid.cells[0, 6]:= '�˻� 29, 30 ';

            if (aSuGu1 =
              '1') then
            begin //���
              costGrid.ints[2, 6]
                :=
                costGrid.ints[2, 6] +
                nPrice;
              costGrid.ints[3, 6]
                :=
                costGrid.ints[3, 6] +
                nPrice;

              anotherTeeth := true; //2012.7.1
            end
            else if (aSuGu1
              = '3') then
            begin //��޿����
              costGrid.ints[5, 6]
                :=
                costGrid.ints[5, 6] +
                nPrice;
              costGrid.ints[6, 6]
                :=
                costGrid.ints[6, 6] +
                nPrice;
            end
            else if (aSuGu1
              = '4') then
            begin //��޿�����
              costGrid.Ints[4, 6] :=
                costGrid.ints[4, 6] +
                nPrice;
              costGrid.ints[6, 6] :=
                costGrid.ints[6, 6] +
                nPrice;
            end
            else if (aSuGu1
              = '2') then
            begin //����
              costGrid.floats[1, 6] :=
                costGrid.Ints[1, 6] +
                Round2(nPrice *
                  (round2(jonggasan
                * 100,
                0) / 100), 0);
              costGrid.floats[3, 6] :=
                costGrid.Ints[3, 6] +
                Round2(nPrice *
                  (round2(jonggasan
                * 100,
                0) / 100), 0);


              anotherTeeth := true; //2012.7.1
            end;

          end;

        31..34:
          begin //��缱
//           costGrid.cells[0, 7]:= '��缱 31..34 ';

           if (aSuGu1 = '1') then
            begin //���
              costGrid.Ints[2, 7]
                :=
                costGrid.Ints[2, 7] +
                nPrice;
              costGrid.Ints[3, 7]
                :=
                costGrid.Ints[3, 7] +
                nPrice;

              anotherTeeth := true; //2012.7.1
            end
            else if (aSuGu1 = '3') then
            begin //��޿����
              costGrid.Ints[5, 7]
                :=
                costGrid.Ints[5, 7] +
                nPrice;
                costGrid.Ints[6, 7]
                :=
                costGrid.Ints[6, 7] +
                nPrice;

            end
            else if (aSuGu1  = '4') then
            begin //��޿�����
              costGrid.Ints[4, 7] :=
                costGrid.Ints[4, 7] +
                nPrice;
              costGrid.Ints[6, 7] :=
                costGrid.Ints[6, 7] +
                nPrice;

            end
            else if (aSuGu1 = '2') then
            begin //����      <====
              costGrid.floats[1, 7] :=
                costGrid.Ints[1, 7] +
                Round2(nPrice *  (round2(jonggasan  * 100,  0) / 100), 0);
              costGrid.floats[3, 7] :=
                costGrid.Ints[3, 7] +
                Round2(nPrice *  (round2(jonggasan * 100, 0) / 100), 0);


              anotherTeeth := true; //2012.7.1
            end;

          end;
        39, 40:  //CT, MRI

          begin
//          costGrid.cells[0, 8]:= 'CT 39 ';
            if (aSuGu1 =
              '1') then
            begin //���
              costGrid.Ints[2, 8]
                :=
                costGrid.Ints[2, 8] +
                nPrice;
              costGrid.Ints[3, 8]
                :=
                costGrid.Ints[3, 8] +
                nPrice;

              anotherTeeth := true; //2012.7.1
            end
            else if (aSuGu1  = '3') then
            begin //��޿����
              costGrid.Ints[5, 8]
                :=
                costGrid.Ints[5, 8] +
                nPrice;
              costGrid.Ints[6, 8]
                :=
                costGrid.Ints[6, 8] +
                nPrice;
            end
            else if (aSuGu1  = '4') then
            begin //��޿�����
              costGrid.Ints[4, 8] :=
                costGrid.Ints[4, 8] +
                nPrice;
              costGrid.Ints[6, 8] :=
                costGrid.Ints[6, 8] +
                nPrice;
            end
            else if (aSuGu1  = '2') then
            begin //����
              costGrid.floats[1, 8] :=
                costGrid.Ints[1, 8] +
                Round2(nPrice *
                  (round2(jonggasan
                * 100,
                0) / 100), 0);

              costGrid.floats[3, 8] :=
                costGrid.Ints[3, 8] +
                Round2(nPrice *
                  (round2(jonggasan
                * 100,
                0) / 100), 0);

              anotherTeeth := true; //2012.7.1
            end;

            nCTMRI :=  costGrid.floats[3, 8];

          end;
        45..49:
          begin //���
//             costGrid.cells[0, 9]:= '��� 45..49 ';

            if (aSuGu1 =
              '1') then
            begin //���
              costGrid.Ints[2, 9]
                :=
                costGrid.Ints[2, 9] +
                nPrice;
              costGrid.Ints[3, 9]
                :=
                costGrid.Ints[3, 9] +
                nPrice;

            end
            else if (aSuGu1 = '3') then
            begin //��޿����
              costGrid.Ints[5, 9]
                :=
                costGrid.Ints[5, 9] +
                nPrice;
              costGrid.Ints[6, 9]
                :=
                costGrid.Ints[6, 9] +
                nPrice;
            end
            else if (aSuGu1 = '4') then
            begin //��޿�����
              costGrid.Ints[4, 9] :=
                costGrid.Ints[4, 9] +
                nPrice;
              costGrid.Ints[6, 9] :=
                costGrid.Ints[6, 9] +
                nPrice;
            end
            else if (aSuGu1 = '2') then
            begin
              costGrid.floats[1, 9] :=
                costGrid.Ints[1, 9] +
                Round2(nPrice *
                  (round2(jonggasan
                * 100,
                0) / 100), 0);
              costGrid.floats[3, 9] :=
                costGrid.Ints[3, 9] +
                Round2(nPrice *
                  (round2(jonggasan
                * 100,
                0) / 100), 0);


            end;

          end;
      else
       begin
//         costGrid.cells[0, 10]:= '��Ÿ- ���� ';

        if (aSuGu1 = '1') then
        begin
          costGrid.Ints[2, 10] :=
            costGrid.Ints[2, 10] +
            nPrice;
          costGrid.Ints[3, 10] :=
            costGrid.Ints[3, 10] +
            nPrice;



        end
        else if (aSuGu1 = '3') then
          {//��޿����}
        begin
          costGrid.Ints[5, 10] :=
            costGrid.Ints[5, 10] +
            nPrice;
          costGrid.Ints[6, 10] :=
            costGrid.Ints[6, 10] +
            nPrice;
        end
        else if (aSuGu1 = '4') then
          {//��޿�����}
        begin
          costGrid.Ints[4, 10] :=
            costGrid.Ints[4, 10] +
            nPrice;
          costGrid.Ints[6, 10] :=
            costGrid.Ints[6, 10] +
            nPrice;
        end
        else if (aSuGu1 = '2') then
        begin
          costGrid.floats[1, 10] :=
            costGrid.Ints[1, 10] +
            Round2(nPrice
            * (round2(jonggasan
            *
            100, 0) / 100), 0);
          {$IFDEF DEBUG}
           itemp:=   Round2(nPrice
            * (round2(jonggasan
            *
            100, 0) / 100), 0);
          {$ENDIF DEBUG}
          costGrid.floats[3, 10] :=
            costGrid.Ints[3, 10] +
            Round2(nPrice
            * (round2(jonggasan
            *
            100, 0) / 100), 0);


        end
        else
        begin
          costGrid.Ints[4, 10] :=
            costGrid.Ints[4, 10] +
            nPrice;
          costGrid.Ints[6, 10] :=
            costGrid.Ints[6, 10] +
            nPrice;
        end;
       end;
      end;
    end
    else
    begin //su_gu3 �� ���°� ��Ÿ�� ó��
//              costGrid.cells[0, 11]:= '��2Ÿ- ���� ';

      if (aSuGu1 = '1') then
      begin
        costGrid.Ints[2, 11] :=
          costGrid.Ints[2,11] +
          nPrice;
        costGrid.Ints[3,11] :=
          costGrid.Ints[3,11] +
          nPrice;


      end
      else if (aSuGu1 = '3') then
        {//��޿����}
      begin
        costGrid.Ints[5, 11] :=
          costGrid.Ints[5,11] +
          nPrice;
        costGrid.Ints[6, 11] :=
          costGrid.Ints[6,11] +
          nPrice;
      end
      else if (aSuGu1 = '4') then
        {//��޿�����}
      begin
        costGrid.Ints[4,11] :=
          costGrid.Ints[4,11] +
          nPrice;
        costGrid.Ints[6,11] :=
          costGrid.Ints[6, 11] +
          nPrice;
      end
      else if (aSuGu1 = '2') then
      begin
        costGrid.floats[1, 11] :=
          costGrid.Ints[1, 11] +
          Round2(nPrice *
          (round2(jonggasan *
          100,
          0) / 100), 0);
        costGrid.floats[3, 11] :=
          costGrid.Ints[3, 11] +
          Round2(nPrice *
          (round2(jonggasan *
          100,
          0) / 100), 0);


      end;
    end;

  end; // for ��ƾ ��



    nDangaSilantExtract := nHang + nJae
    - nDangaSilantExtractBeforeJongGasan;
    //18���̸��ΰ�� �Ƕ�Ʈ ��  �������� �� ���� + ����


   nDangaSilant :=
    10 *
    Floor((Round2(nDangaSilantExtractBeforeJongGasan * (round2(jonggasan * 100, 0) /
      100), 0)
    ) /
    10); //18���̸��ΰ�� �Ƕ�Ʈ �� ��������


      //������ ������ ����.
     nSumBigubChong   :=    10 * floor(( nSumBigubChong) /10);

     nSumBohumHangGasan :=  round2(nSumBohumHangGasan * jonggasan, 0);

//     nSumBigubChong    :=  nSumBigubChong -  nSumBigubHang;
//     nSumBigubHang     :=   round2(nSumBigubHang * jonggasan, 0);
//     nSumBigubChong    :=  nSumBigubChong +  nSumBigubHang;

      nSum100by80Hang    :=  round2(nSum100by80Hang * jonggasan, 0);

      nSum100by90Hang    :=  round2(nSum100by90Hang * jonggasan, 0);


      nSumBohumHangTot  :=  round2(nSumBohumHangTot * jonggasan, 0);
      nSumBohumJaeTot   :=  round2(nSumBohumJaeTot, 0);

      nSumBohumHangTot :=  10 * floor(( nSumBohumHangTot + nSumBohumJaeTot + nSumBohumhang) /10);
                //    + nSumBohumhang;   //��������        //���      //������� ����



//     nSumBohumChong     :=  round2(nSumBohumHangGasan
//                                   +  nSumBohumHang
//                                   +  nSumBohumJae, 0) ;


//        nSumBohumChong     :=         10 * floor( nSumBohumHangGasan  /10  )
//                                   +  10* floor( nSumBohumHang  /10)
//                                   +  10* floor( nSumBohumJae /10) ;
  //         round(10 * floor( nSum80Chong /10));

        nSumBohumChong     :=         10 * floor(( nSumBohumHangGasan
                                                 + nSumBohumHang
                                                  + nSumBohumJae) /10) ;



     //������ ���
     nSumTotal          :=  round(nSumBohumChong);

//  JGrid.Cells[2, 1] := nSum;
end;

//�ش������ grid�� �ֱ�  .....................................................

procedure insertsugaOnce(aGrid: TAdvstringGrid;
    sCode: string;
    jinDay: string;
    jongbyul:  integer;
    age: string;
    isYagan: boolean;
    ARow,
    AOrder: Integer;
    insertKind : string ='';  //cells[30, i]û�������� �����ױ׿� 'C' ����. �׳��� ����''
    aQty: Integer = 0;
    aKind : integer = 0;
//    gubKind  : integer = 0;
    gubKind  : string = '0';
    exceptCode : string ='';
    isFindSugaInsert :boolean = false );
var
  nDanga: Integer;
     nIOrder, i, SF, SR, SL, HF, HR, HL: Integer;
     rAdd, nQty, nMachui: Double;
     sukey, Osang, Osangname, groupkindsel: string;

     sealantDay : string;
//     sugu1, sugu2, sugu3: string;
     nPrice : integer;
     sugacode, suKorName, GroupName  : string;
     groupModality : string;
     aSobulRu      : string;
     aNeedTeakRye : string;


//     tempQuery: TUniQuery;

begin
  with dm_f.sqlTemp15 do
  begin
    Close;
    Sql.Clear;


    case aKind of

     0,1,2:  Sql.Add('getsuga :su_key, :jin_day') ;

     //2: Sql.Add('getsuga_userKey :su_key, :jin_day')  ;
    end;
    ParamByName('su_key').AsString   := sCode ;

    ParamByName('jin_day').AsString  := jinday;
    Open;
    First;
    if not isEmpty then
    begin

              aGrid.InsertRows(ARow,1);


//
//       aGrid.CellProperties[0,ARow].ReadOnly := true;
//       aGrid.CellProperties[1,ARow].ReadOnly := false;
//       aGrid.CellProperties[2,ARow].ReadOnly := true;
//
      // aGrid.AddRow;


{      if ((jongbyul >= 0) and
        (jongbyul <= 2)) or
        (jongbyul = 4) or
        (jongbyul = 5) or
        (jongbyul = 8) or
        (jongbyul = 9) or
        (jongbyul = 10) then
      begin
        nDanga := FieldByName('bo_dan').AsInteger;
      end
      else if (jongbyul = 6) then
      begin
        nDanga := FieldByName('ja_dan').AsInteger;
      end
      else
      begin
        nDanga := FieldByName('il_dan').AsInteger;
      end;

      if (FieldByName('Su_gu1').AsString = '1') then
      begin
        AGrid.cells[0, ARow] := '���';
      end
      else if (FieldByName('Su_gu1').AsString = '5') then
      begin
        AGrid.cells[0, ARow] := '100';
      end
      else if (FieldByName('Su_gu1').AsString = '2') then
      begin
        AGrid.cells[0, ARow] := '����';
      end
      else if ((FieldByName('Su_gu1').AsString = '3') or
        (FieldByName('Su_gu1').AsString = '4')) then
      begin
        AGrid.cells[0, ARow] := '���';
      end;

      AGrid.cells[1, ARow] :=
        FieldByName('Su_kor_name').AsString;

      if FieldByName('su_gu3').AsString = '09' then
      begin
        if FieldByName('su_gu1').AsString = '2' then
        begin
          AGrid.cells[2, ARow] := '1';
          AGrid.cells[3, ARow] := '1';
        end
        else
        begin
          AGrid.cells[2, ARow] :=
            FieldByName('qty').AsString;
          //����
          AGrid.cells[3, ARow] :=
            FieldByName('ilsu').AsString;
        end;
      end
      else
      begin
        if aQty = 0 then
          AGrid.Ints[2, ARow] := 1
            //����
        else
          AGrid.Ints[2, ARow] := aQty;
        AGrid.cells[3, ARow] := '1'; //�ϼ�
      end;

      AGrid.Ints[5, ARow] := nDanga;

      if ((jinday < '2004-05-01') and
        (FieldByName('su_key').AsString = 'L7201006')) then
        AGrid.Ints[6, Arow] := 50
      else
        AGrid.Ints[6, Arow] :=
          FieldByName('dan_qty').AsInteger;

      aSuKey :=
        FieldByName('su_key').AsString;
      aSuGu1 :=
        FieldByName('Su_gu1').AsString;
      aSuGu3 :=
        FieldByName('Su_gu3').AsString;


      AGrid.cells[10, ARow] :=
        FieldByName('su_soa').AsString;

      //     if chbYagan.checked then //�߰� üũ �Ǿ� ������
      if isYagan = true then //�߰� üũ �Ǿ� ������
      begin
        AGrid.cells[11, ARow] := '1';
        //FieldByName('Su_yagan').AsString;
      end
      else //üũ �ȵǾ� ����
      begin
        if FieldByName('Su_yagan').AsString = '1' then
          //�߰� ���� �Ǵ� ����
          AGrid.cells[11, ARow] := '0'
            //0���� �ϰ�
        else
          AGrid.cells[11, ARow] := '';
        // �ƴ� ���� ''�� �д�
      end;
      AGrid.Ints[12, ARow] := AOrder;

      if ARow >= 1 then
      begin
        AGrid.cells[13, ARow] :=
          IntToStr(AGrid.Ints[13, ARow -
          1] + 1);
      end
      else
      begin
        AGrid.cells[13, ARow] := '0';
      end;
      if FieldByName('Su_gu3').AsString = '09' then
      begin
        if FieldByName('su_gu1').AsString = '2' then
        begin
          AGrid.cells[14, ARow] := '1';
        end
        else
        begin
          AGrid.cells[14, ARow] :=
            FieldByName('iltu').AsString;
        end;
      end;
//      nPrice :=
//        Calckumak(aGrid, jinDay, ARow,
//        True, age);
}
//   nQty   :=  AGrid.Ints[2, ARow];  // 2:  ����
//   nilsu  :=  AGrid.Ints[3, ARow];  // 3:  �ϼ�
//   nDanga :=  AGrid.Ints[5, ARow];  // 5:  �ܰ�
//   nDanQty := AGrid.Ints[6, ARow];  // 6:  ������
//   soagasan:= (AGrid.cells[10, ARow]
//   simGasan :=  AGrid.cells[11, ARow]
//     sukey  := AGrid.cells[7, ARow]

            sCode :=    makeGaSanCode( sCode,'');


           //aSugu1 �ʱ�ȭ
            aSugu1    := Trim(FieldByName('su_gu1').AsString);
            aSugu2    := Trim(FieldByName('su_gu2').AsString);
            aSugu3    := Trim(FieldByName('su_gu3').AsString);
            aSobulRu  := Trim(FieldByName('su_sobulru').AsString);


            if Trim(FieldByName('teakryecode').AsString) <> '' then
               aNeedTeakRye := Trim(FieldByName('teakryecode').AsString)
            else
               aNeedTeakRye := '';


            case jongbyul of
             0,1,2,4,5,8,9,10:
               begin // �����Ͽ� �´� �ܰ�
                      nDanga := FieldByName('Bo_dan').AsInteger;
               end;
             6:
               begin
                      nDanga := FieldByName('ja_dan').AsInteger;
               end ;
             3,7:
               begin
                      nDanga := FieldByName('il_dan').AsInteger;
               end;
             end;

              nDanga := getSugaGeum(sCode, // varCode:string;
                  jinDay,  // jinday:string;
                  gubKind); // kind:string);




               if nDanga = 0 then
                  nDanga := FieldByName('il_dan').AsInteger;

//               if FieldByName('su_extra').AsString = '' then
//                   nDanga := 0;


            nQty :=1;



//                          grpInsYon :=  Trim(FieldByName('grpInsYon').AsString);
//
//                          if cbJong.itemindex = 3 then   //������ �Ϲ��̸� ��� ��޿�
//                          begin
//                              grpInsYon := '2';
//                          end;




                    //      AGrid.AddRow;

                          case strCase(aSugu1, ['0', '1','2','3','4', '5' ]) of
                             1:
                                begin
                                    AGrid.Cells[0, ARow]      := '���';
                                    AGrid.Cells[7, ARow]      := '0';  //gub_gu
                                    if jongbyul=3 then
                                        AGrid.Cells[7, ARow]      := '2';
                                end;

                             2:
                                begin
                                    AGrid.Cells[0, ARow]      := '����';
                                    AGrid.Cells[7, ARow]      := '0';  //gub_gu
                                    if jongbyul=3 then
                                        AGrid.Cells[7, ARow]      := '2';
                                end;

                             3:
                                begin
                                    AGrid.Cells[0, ARow]     := '���'; // ���
                                    AGrid.Cells[7, ARow]     := '2';  //gub_gu
//
                                end;
                             4:
                                 begin
                                     AGrid.Cells[0, ARow]     := '���'; // ����
                                     AGrid.Cells[7, ARow]     := '2';  //gub_gu
                                end;
                             5:
                                begin
                                     AGrid.Cells[0, ARow]      := '100';
                                     AGrid.Cells[7, ARow]      := '3';  //gub_gu
                                end;
                          end;

              // case  strCase(   aSugu2 ,
                    case StrCase(aSugu2, ['0', '2','A', 'B','D','E','U','V'])  of
                       0:   AGrid.Cells[7, ARow]      := '0';  //gub_gu
                       1:   AGrid.Cells[7, ARow]      := '2';  //gub_gu
                       2:   AGrid.Cells[7, ARow]      := '8';  //gub_gu   //100/50
                       3:   AGrid.Cells[7, ARow]      := '9';  //gub_gu   //100/80
                       4:   AGrid.Cells[7, ARow]      := 'A';  //gub_gu   //100/30
                       5:   AGrid.Cells[7, ARow]      := 'B';  //gub_gu   //100/90
                       6:   AGrid.Cells[7, ARow]      := 'U';  //gub_gu  //100/100
                       7:   AGrid.Cells[7, ARow]      := 'V';  //gub_gu   //����100/100
                    end;







                          AGrid.Cells[19, ARow] :=  sCode;
                          AGrid.Cells[20, ARow] :=  FieldByName('su_Kor_Name').AsString; //suKorName;
                          AGrid.Cells[25, ARow] :=  FieldByName('su_extra').AsString; //su_extera


                          AGrid.Cells[1, ARow] := FieldByName('su_Kor_Name').AsString;   //GroupSuga - sugaKorName
                          AGrid.Cells[9, ARow] := FieldByName('user_key').AsString;// FieldByName('su_key').AsString;      //GroupSuga - sugacode


                          {09 ����
                          10 �ܿ���
                          12 �ֻ� ���Ϻ극������100�и��׶�(���꿡������)
                          13 ������ �̿��Ĺ̷�300�ֻ��(�̿��Ĺ̵�)_(30.62g/50mL)
                          14 �߿�5%����������Ŀ���1000�и�����
                          19 ����
                          50 ��Ÿ}

                    if  (aSugu3 =  '09') or
                        (aSugu3 =  '10') or
                        (aSugu3 =  '12') or
                        (aSugu3 =  '13') or
                        (aSugu3 =  '19') or  //������
                        (aSugu3 =  '14')
                     then
                    begin
                         aGrid.AddButton(1, ARow,20, 18, 'DI' ,
                              ADVGrid.haRight, ADVGrid.vaCenter);
                         aGrid.AddButton(26, ARow,50, 18, 'DrugInfo' ,
                              ADVGrid.haCenter, ADVGrid.vaCenter);
                    end;



                          AGrid.Cells[3, ARow]  :=  '1';// FieldByName('qty').AsString;  //����
                          case strCase(aSugu3, ['09','10' ]) of
                             0, 1:
                             begin
                                AGrid.Cells[3, ARow]  :=  '1';// FieldByName('qty').AsString;  //����
                                AGrid.Cells[4, ARow]  :=  '1';// FieldByName('ilsu').AsString;
                                AGrid.Cells[14, ARow] :=  '1';// FieldByName('iltu').AsString


                             end;
                          end;


                          if aSugu3 = '26' then //��Ź�˻�
                          begin
                               AGrid.floats[3,  ARow] :=  1 * 1.1;
                                 // nQty * FieldByName('qty').asFloat * 1.1;
                                AGrid.Cells[14, ARow] :=  '1';// FieldByName('iltu').AsString
                          end;

                          AGrid.ints[2, ARow]  :=  nDanga;
                          AGrid.Cells[4, ARow] := '1'; //�ϼ�
                          AGrid.ints[5, ARow]  :=  FieldByName('dan_qty').AsInteger;


                          AGrid.Cells[10, ARow] :=  aSugu1;//FieldByName('Su_gu1').AsString;
                          AGrid.Cells[11, ARow] :=  aSugu3;

                          AGrid.Cells[28, ARow] :=  aNeedTeakRye;
                          AGrid.Cells[29, ARow] :=  aSugu2;
                          AGrid.Cells[30, ARow] :=  insertKind;
                          AGrid.Cells[12,ARow] :=  FieldByName('su_soa').AsString;

                          AGrid.Cells[13, ARow] := FieldByName('Su_yagan').AsString; //�߰� ���� �Ǵ� ��=1

                          AGrid.ints[14, ARow] :=  nIOrder + 1;
                          AGrid.cells[21, ARow] :=  FieldByName('gasan').AsString; //1/2 seperate
                          AGrid.cells[22, ARow] :=  jinday ; //1/2 seperate

                          if isFindSugaInsert = false then
                          begin
                              AGrid.cells[31, ARow] :=   AGrid.cells[31, ARow-1];
                          end;


      nPrice :=
          CalcKumak(AGrid.cells[19, ARow],//suKey:string;
                  AGrid.Ints[2, ARow],//nDanga:integer ;
                  AGrid.floats[3, ARow], //nQty:integer ;
                  AGrid.Ints[4, ARow],//nilsu:integer ;
                  AGrid.Ints[5, ARow],//nDanQty:integer ;
                  jinDay,
                  AGrid.cells[12, ARow],//soaGasan : string;
                  AGrid.cells[13, ARow],//simGasan : string;
                  true,
                  AGrid.cells[25, ARow], //�����ڵ�
                  age ) ;


      AGrid.ints[6, ARow]   :=  nPrice;
      AGrid.Cells[8, ARow]  :=  FieldByName('modality').AsString;

      AGrid.Cells[24, ARow] :=  FieldByName('su_eng_name').AsString;
      AGrid.Cells[25, ARow] :=  exceptCode;
      AGrid.Cells[27, ARow] :=  aSobulRu;

    //   AGrid.Cells[7, ARow] := FieldByName('gub_gu').AsString;


      if not ((UpperCase(Copy(sCode, 1, 3)) = 'AL7') or
        (UpperCase(sCode) = 'AL801') or
        (UpperCase(sCode) = 'AL020') or
        (UpperCase(sCode) = 'AL300') or
        (UpperCase(sCode) = 'AL400') or
        (UpperCase(sCode) = 'KK090') or
        (UpperCase(sCode) = 'KK054') or
        (UpperCase(sCode) = 'KK020') or
        (UpperCase(Copy(sCode, 1, 2)) = 'J5')) then
      begin
        //   CalcSum(aGrid, CostGrid );
             //AGrid: TAdvstringGrid; CostGrid :TAdvstringGrid; JGrid:TAdvstringGrid; aChart: string; hospGubun:string;
             //         jinday: string; jongbyul:integer; age: string; isYagan:boolean=false; bunupYewe:string = '');

         //  CalcBonin(is_Wonwe);
      end;
      //   OrderGroup.ItemIndex := OrderGroup.Items.Count - 1;
      //   OrderGroupClick(Self);


              aGrid.CellProperties[0, ARow].ReadOnly := True;
              aGrid.CellProperties[1, ARow].ReadOnly := false;
              aGrid.CellProperties[2, ARow].ReadOnly := True;

              aGrid.CellProperties[3, ARow].ReadOnly := false;
              aGrid.CellProperties[4, ARow].ReadOnly := false;
              aGrid.CellProperties[5, ARow].ReadOnly := false;
              aGrid.CellProperties[6, ARow].ReadOnly := false;
              aGrid.CellProperties[7, ARow].ReadOnly := false;
              aGrid.CellProperties[8, ARow].ReadOnly := true;
              aGrid.CellProperties[9, ARow].ReadOnly := true;
              aGrid.CellProperties[10, ARow].ReadOnly := true;
              aGrid.CellProperties[11, ARow].ReadOnly := true;
              aGrid.CellProperties[12, ARow].ReadOnly := true;
              aGrid.CellProperties[13, ARow].ReadOnly := true;
              aGrid.CellProperties[14, ARow].ReadOnly := true;
              aGrid.CellProperties[15, ARow].ReadOnly := true;


    end;
  end;


  if aNeedTeakRye <> ''  then
  begin

              // showmessage('�ɻ���������� ��������.');

//
//              if not Assigned(InputTeakJung_f) then
//                InputTeakJung_f := TInputTeakJung_f.Create(application);
//
//                 if  copy(aNeedTeakRye,1,1) <> 'J' then
//                 begin
//                     InputTeakJung_f.PageControl1.ActivePageIndex:= 0;
//                     InputTeakJung_f.LoadTJungCode(0);
//
//                 end
//                 else
//                 begin
//                     InputTeakJung_f.PageControl1.ActivePageIndex:= 1;
//                     InputTeakJung_f.LoadTJungCode(1);
//                 end;
//
//
//                 InputTeakJung_f.cbTJungNeyuk.ItemIndex :=
//                    InputTeakJung_f.cbTJungNeyuk.ComboItems.IndexInColumnOf(0, aNeedTeakRye )  ;
//
//                 InputTeakJung_f.memNeyuk.Text  := '['+
//                  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
//                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 0] +']'
//                   +  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
//                    InputTeakJung_f.cbTjungNeyuk.ItemIndex, 1];
//
//                 InputTeakJung_f.memNeyukExample.Text  :=  LoadExample_Teakrye(InputTeakJung_f.cbTjungNeyuk.ColumnItems[
//                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 0] );
//
////                 InputTeakJung_f.memNeyukExample.Text  :=
////
////
////                  InputTeakJung_f.cbTjungNeyuk.ColumnItems[
////                   InputTeakJung_f.cbTjungNeyuk.ItemIndex, 2];
//
//                   InputTeakJung_f.lblSuKey.Caption := sCode;
//              InputTeakJung_f.Show;
//

  end;

//   aGrid.Options                  := aGrid.Options + [goEditing];
//   aGrid.Navigation.EditSelectAll := true;
//   aGrid.Navigation.AlwaysEdit    := true;

end;





//�ܰ� * ȸ���� �ݾױ��ϱ� ....................................................

function CalcKumak(
        suKey     : string;
        nDanga    : integer ;
        nQty      : double ;
        nilsu     : integer ;
        nDanQty   : integer ;
        jinDay    : string;
        soaGasan  : string;
        simGasan  : string;
        boolGasan : Boolean;
        su_extra  : string ; //�������� �����ڵ尡 �ִ°͸� �ݾ��� ������.
        age       : string = '20'): Integer;
var
//  nDanga, nQty, nilsu, nDanQty : integer;

  Gasan, JongGasan: Single;
  nKumak: Single;
  nJaeryoSum: Currency;

  s2, s3, s5: integer;
begin
  // AGrid = realGrid16

                  //�� �׸� �ݾ��� ���Ѵ�.
                  // 2:  �ܰ�  nDanga
                  // 3:  ����  qty
                  // 4:  �ϼ�  ilsu
                  // 6:  ������       dan_qty


//   nDanga :=  AGrid.Ints[2, ARow];  //�ܰ�
//   nQty   :=  AGrid.Ints[3, ARow];  //����
//   nilsu  :=  AGrid.Ints[4, ARow];  //�ϼ�
//   nDanQty := AGrid.Ints[6, ARow];  //������
//   soagasan:= (AGrid.cells[12, ARow]
//   simGasan :=  AGrid.cells[13, ARow]
//   sukey  := AGrid.cells[9, ARow]

  if age = '' then
    age := '20';

  result := 0;
  if boolGasan then
  begin
    if (aSuGu1 = '2') then
    begin //su_gu1   �޿�������
      // gansan : ������(��������, �Ҿư���, �ɾ߰���)
      //  ��缱 ���Ϻ��� : 2ȸ°���� 5ȸ���� 50%, 6ȸ�̻��� 5ȸ��
      // ġ��Ȱ�ü� : ���Ϻ��� 2ȭ°���� 50%�� ����

      gasan := 1;

      // �Ҿư���, ���ΰ���  .........................................
     // if AGrid.cells[10, ARow] <> '' then
     if soaGasan <> '' then
      begin

       // if (AGrid.cells[10, ARow] = '8') then //'2017-07-01'���� 6���̸����� ����
         if soaGasan = '8' then
        begin // �Ҿư����̸�  30% (8���̸�), 10%(��缱)

          if ((StrToInt((age)) >= 0) and
            (StrToInt((age)) < 8)) then
          begin

            if (aSuGu3 = '31') then
            begin //��缱

              if (jinday < '2017-07-01') then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
              begin
                gasan := gasan + 0.15;
                  //2017-08-11 0.1 ���� 0.15�� �����ߴ�..���������� 15%������ �ߴ�.
              end;

              if StrToInt((age)) < 6 then //��缱 6���̸� 15% ����
              begin
                gasan := gasan + 0.15;
              end;

              //2017-07-01 ���ʹ� ��缱ġ���   6���̸� 15%  ���� ��������.
              //��缱 Ư������ ���ܷ�          6���̸� 20%
              //��缱ġ���                    1�� �̸� 50% 1��~6�� 30%
               // 2017-07-01���� ��缱  300 ���� �����ڵ�   ������
             //ToDo : ���⼭ �ؾ��ϴ°��� �ƴϴ�....
             // 8���̸� �Ҿ��ΰ�� ��缱 �̸� �ڵ� �ڿ� 300�� �ٿ��� �Ѵ�.????
         //AGrid.Ints[7,  ARow].AsString := AGrid.Ints[7,  ARow].AsString +'300';
         //CalcPoint�� ( �ݾ� = �׸��� ��밡ġ����  X ���س⵵ ��밡ġ ���� )�� ������ش�.
            end
            else if (aSuGu3 = '39') then
            begin //��缱 ct
              if (jinday < '2017-07-01') then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                gasan := gasan + 0.15;

              //ToDo : ���⼭ �ؾ��ϴ°��� �ƴϴ�....
             // 8���̸� �Ҿ��ΰ�� ��缱 �̸� �ڵ� �ڿ� 300�� �ٿ��� �Ѵ�.
             // 2017-07-01���� ��缱  300 ���� �����ڵ�   ������
        //     AGrid.Ints[7,  ARow].AsString := AGrid.Ints[7,  ARow].AsString +'300';
            end
            else if (aSuGu3 = '19') then
            begin //����
              if StrToInt(age) < 6 then //����� 6���̸�
                gasan := gasan + 0.3;

              //ToDo : ���⼭ �ؾ��ϴ°��� �ƴϴ�....
             // 8���̸� �Ҿ��ΰ�� ��缱 �̸� �ڵ� �ڿ� 300�� �ٿ��� �Ѵ�.
             // 2017-07-01���� ��缱  300 ���� �����ڵ�   ������
        //     AGrid.Ints[7,  ARow].AsString := AGrid.Ints[7,  ARow].AsString +'300';
            end
            else
            begin
              gasan := gasan + 0.3; //������
            end;

          end;
          // ���ΰ���(su_soa=8) : ���뿡�� 30%
          if (StrToInt((age)) >= 70) then
          begin
            if aSuGu3 = '19' then //����
              gasan := gasan + 0.3;
          end;
        end;
      end;

      // �ɾ߰���(jin_simya=1) : ����(50%), ����(50%)  ...............
    //  if AGrid.cells[11, ARow] <> '' then
      if  simGasan <> '' then

      begin
       // if AGrid.cells[11, ARow] = '1' then
        if  simGasan = '1' then
        begin
          gasan := gasan + 0.5;
        end;
      end;

      // ������ ���ؼ� 10���̸����� 4��5�� ...........................
      if gasan > 1 then
      begin

        nKumak := Round2(CalcPoint( suKey,  //AGrid.cells[7, ARow], //su_jey
            jinDay,
            gasan) *
            nilsu * //AGrid.Ints[3, ARow] *
            nQty, 1);//AGrid.Ints[2,  ARow], 1);
        //   end
        //   else if   (aSuGu3
        //                            = '31') or   (aSuGu3
        //                            = '39') then

        //   begin
        //
        //              nKumak := Round2(CalcPoint(aSuKey,  FormatDateTime('YYYY-MM-DD',  dMain.date),  gasan) *
        //                         AGrid.Ints[2, ARow] * AGrid.Ints[3, ARow], 1);

      end
      else
      begin
        nKumak := Round2(nDanga * //AGrid.Ints[5, ARow] *
           nQty //AGrid.Ints[2, ARow]
          * nilsu * nDanQty , 0);// AGrid.Ints[3, ARow], 1);    * nDanQty
      end;

      //     s2:=AGrid.Ints[2, ARow];
      //     s3:=AGrid.Ints[3, ARow];
      //      s5:=AGrid.Ints[5, ARow];
      //      showmessage(inttostr(S2)+':'+inttostr(S3)+':'+inttostr(S5));

           //���̸����� 4��5��
      Result := Round(nKumak);

    end
    else if ((aSuGu1 = '1') or (aSuGu1 = '3') or (aSuGu1 = '0')) then
    begin //���,���������

//      if ((AGrid.cells[6, ARow] = '1') or
//        (AGrid.cells[6, ARow] = '') or
//        (AGrid.cells[6, ARow] = '0')) then
     if (nDanQty = 1) or  (nDanQty = 0) then
      begin //��뷮=1
//        Result := Round( nDanga *  //  nDanga AGrid.Ints[5, ARow]
//          nqty *                   //  nqty  AGrid.Ints[2, ARow] *
//          nilsu );//AGrid.Ints[3, ARow]);                //
        //  Round(�ܰ� * ���� * �ϼ�) ;
//
      nKumak :=  Round2(nDanga * nqty * //AGrid.Ints[2, ARow] *
          nilsu * nDanQty, 0 );

        Result := round( nKumak) ; // AGrid.Ints[6, ARow]), -2), 0));


      end
      else
      begin //��뷮�� > 1  (���)
//                 Result := Round( nDanga *  //  nDanga AGrid.Ints[5, ARow]
//          nqty *                   //  nqty  AGrid.Ints[2, ARow] *
//          nilsu * nDanQty);
//      end;
      nKumak :=  Round2(nDanga * nqty * //AGrid.Ints[2, ARow] *
          nilsu * nDanQty, 0 );

        Result := round( nKumak) ; // AGrid.Ints[6, ARow]), -2), 0));


//        Result := Round(Round2(nDanga * //AGrid.Ints[5, ARow] *
//          Round2(((nqty * //AGrid.Ints[2, ARow] *
//          nilsu ) //AGrid.Ints[3, ARow])
//          / nDanQty), -2), 0)); // AGrid.Ints[6, ARow]), -2), 0));
        //  Round(�ܰ� * Round2(((���� * �ϼ�) / ������),-2)) ;
      end;
    end
    else
    begin //��޿� ������
      Result := Round(nDanga * //AGrid.Ints[5, ARow] *
        nqty * //AGrid.Ints[2, ARow] *
        nilsu * nDanQty  );// AGrid.Ints[3, ARow]);
    end;

    if (su_extra = '') and (( aSuGu3 = '09') or ( aSuGu3 = '10')) then  //����ó���� �ƴϸ�...
       Result := 0;
  end
  else
  begin
      Result := Round(nDanga * //AGrid.Ints[5, ARow] *
        nqty * //AGrid.Ints[2, ARow] *
        nilsu );// AGrid.Ints[3, ARow]);
  end;
end;

// ���������� ���  ...........................................................

function CalcPoint(su_junsan, jin_day: string; perc: Double): Integer;
begin
  with dm_f.SqlCalc do
  begin
    Close;
    Sql.Clear;
    //Sql.Add('select su_point from suga where su_key=:su_key');
    //ParamByName('su_key').AsString := su_junsan;

    Sql.Add('getsuga :su_key, :jin_day');
    ParamByName('su_key').AsString := su_junsan;
    ParamByName('jin_day').AsString := jin_day;

    Open;
    First;
    if not isEmpty then
    begin
      if jin_day >= '2019-01-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 83.4, 1)); //�ǰ�83.4  ġ���� 84.8
        //   showmessage(inttostr(result));
      end
      else
      if jin_day >= '2018-01-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 83.1, 1));
        //   showmessage(inttostr(result));
      end
      else if jin_day >= '2017-07-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 80.9, 1));
        //   showmessage(inttostr(result));
      end
      else if jin_day >= '2017-01-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 80.9, 1));
        //  showmessage(inttostr(result));
      end
      else
        if jin_day >= '2016-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 79.0, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2015-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 77.5, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2014-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 75.8, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2013-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 73.8, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2012-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 71.9, 1))
        else if jin_day >= '2011-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 70.1, 1))
        else if jin_day >= '2010-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 67.7, 1))
        else if jin_day >= '2009-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 65.8, 1))
        else if jin_day >= '2008-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 63.6, 1))
        else if jin_day >= '2007-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 62.1, 1))
        else if jin_day >= '2006-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 60.7, 1))
        else if jin_day >= '2005-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 58.6, 1))
        else if jin_day >= '2004-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            *
            perc, -2) * 56.9, 1))
        else
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            *
            perc, -2) * 55.4, 1));
    end
    else
    begin
      Result := 0;
    end;
  end;
end;

function calcKumak_jumgum(
  varAge: integer;
  varJinday: string;
  varsu_key: string;
  varJinQty: double;
  varDanQty: integer;
  varJinIlsu: integer;
  varDiv: integer;
  varJinDanga: integer;
  varSugu1: string;
  varSugu3: string;
  varSoa: boolean;
  varSimya: boolean;
  varsu_gu3: string;
  boolgasan: boolean;
  isSugaDanga: boolean;
  varjabo: boolean = false): double;
var
  gasan, JongGasan: single;
  nKumak: single;
  nKumak2: integer;
  nJaeryoSum: Currency;
  // varJinilsu:integer;
begin
  // AGrid = grdJinryoS

  result := 0;
  // �� �׸� �ݾ��� ���Ѵ�.
  // 2:  ����
  // 3:  �ϼ�
  // 9:  �ܰ�
  // 10: ������

//  varSugu1 := AGrid.Ints[8, ARow];
  Result := 0;

  if varSugu3 = '09' then //�����
  begin
    varJinilsu := //�ϼ�
    vardiv;
  end;

  if boolGasan then
  begin
    if (varSugu1 = '2') then // su_gu1   �޿������� �Ǵ� �ؿ����
    begin
      // gansan : ������(��������, �Ҿư���, �ɾ߰���)
      // ��缱 ���Ϻ��� : 2ȸ°���� 5ȸ���� 50%, 6ȸ�̻��� 5ȸ��
      // ġ��Ȱ�ü� : ���Ϻ��� 2ȭ°���� 50%�� ����

      gasan := 1;

      // �Ҿư���, ���ΰ���  .........................................

      if varSoa = true then //jinryo_s => jin_soa = 8   suga=>su_soa=8
      begin // �Ҿư����̸�  30% (8���̸�), 10%(��缱)

        if ((varAge >= 0) and (varAge < 8)) then
        begin
          if (varsugu3 = '31') then
          begin // ��缱
            if (varjinday < '2017-07-01') then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
              gasan := gasan + 0.15;

            if varAge < 6 then //��缱 6���̸� 15% ����
            begin
              gasan := gasan + 0.15;
            end;

          end
          else if (varsugu3 = '39') or // ��缱 ct
          (varsugu3 = '40') then // ��缱 MRI
          begin
            if (varjinday < '2017-07-01') then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
              gasan := gasan + 0.15;
          end
          else if (varsugu3 = '19') then //����
          begin
            if (varAge < 6) then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
              gasan := gasan + 0.3;
          end
          else

          begin
            gasan := gasan + 0.3; // ������
          end;
        end;

        // ���ΰ���(su_soa=8) : ���뿡�� 30%
        if (varAge >= 70) then
        begin
          if varsugu3 = '19' then // ����
            gasan := gasan + 0.3;
        end;
      end;

      // �ɾ߰���(jin_simya=1) : ����(50%), ����(50%)  ...............

      if varSimya = true then
      begin
        gasan := gasan + 0.5;
      end;

      //���� �ϼ� �ݾ� �ܰ�
      //AGRid.Floats[2, ARow] :varjinqty
      //AGRid.ints[3, ARow] :varjinilsu
      //AGRid.ints[5, ARow] : varJindanga

    // ���������� �ܰ��̸� ������ ���ؼ� 10���̸����� 4��5�� ... ������������ ���̸� 4��5��
      if isSugaDanga = true then
      begin
        if gasan > 1 then
        begin
          nKumak := round2(CalcPoint(varsu_key, varjinday, gasan) * varJinQty *
            varJinilsu, 1);
        end
        else
        begin
          //  nKumak := round2(varJinDanga * varJinQty *   //    varJinilsu, 0);
          nKumak := round2(varJinDanga * varJinQty * varJinilsu, 1); //���̸� ������
        end;
      end
      else
      begin

        if gasan > 1 then
        begin
          nKumak := round2(CalcPoint(varsu_key, varjinday, gasan) * varJinQty *
            varJinilsu, 0);
        end
        else
        begin
          //  nKumak := round2(varJinDanga * varJinQty *   //    varJinilsu, 1);
          nKumak := round2(varJinDanga * varJinQty * varJinilsu, 0); //10���̸� ������
        end;

      end;
      // nKumak := Round(Round2(dL7230334 * Round2(((nL7230334) / 72), -2),  0));

      // ���̸����� 4��5��
      Result := Round(nKumak);

    end
    else if (varSugu1 = '6') then // su_gu1 �ؿ����
    begin
      if varjabo = true then
      begin
        gasan := 1.15;
      end;

      {     showmessage('su_key=>' +varsu_key+#10#13+
           'jinday=>' + varjinday+#10#13+
           'gasan=>' + floattostr(gasan)+#10#13+
           'varJinQty=>' + floattostr(varJinQty)+#10#13+
           'varJinilsu=>' + floattostr(varJinilsu)
           )  ;   }

//   Result := Round(round2(varJinDanga * varJinQty *  gasan   *
//    varJinilsu,0));  //������ ���ؼ� 10���̸����� ����

//    Result := round(((varJinDanga * varJinQty *  gasan   *
//   varJinilsu) / 10 )) * 10 ;  //������ ���ؼ� 10���̸����� ����

      Result := (Ceil(varJinDanga * varJinQty * gasan *
        varJinilsu) div 10) * 10; //Floor
    end
    else if ((varsugu1 = '1') or (varsugu1 = '3') or (varsugu1 = '0')) then
    begin // ���,���������

      if ((varDanQty = 1) or (varDanQty = 0)) then
      begin // ��뷮=1

        nKumak := Round(round2(varJinDanga * varJinQty * varJinilsu, 0));
        Result := round(nKumak);
        // Round(�ܰ� * ���� * �ϼ�) ;
      end
      else
      begin // ��뷮�� > 1  (���)
        nKumak := Round(round2(varJinDanga * round2(((varJinQty * varJinilsu) /
          varDanQty), -2), 0));
        //test ������ 2���ϰ�� 2806 �� 4���ϰ�� 6080 ���� �� �߻��Ѵ�.
        // nKumak2  := Round(round2(varJinDanga * round2(((4) / 32), -2), 0));
        Result := round(nKumak);
        //        round2(((varJinQty * varJinilsu) ), -2), 0));
             // Round(�ܰ� * Round2(((���� * �ϼ�) / ������),-2)) ;

          //    nKumak := Round(Round2(dL7230334 * Round2(((nL7230334) / 72), -2),  0));
      end;
    end
    else
    begin // ��޿� ������
      Result := Round(round2(varJinDanga * varJinQty * varJinilsu, 0));
    end;
  end
  else
  begin
    Result := Round(round2(varJinDanga * varJinQty * varJinilsu, 0));
  end;
end;


//JinchalRyo
function Jinchalryo_make(hkind: string; // ����, �ǿ�, ���պ���
  varChong: double;
  boolWonwe: Boolean;
  varDate: string; //YYYY-MM-DD
  varTime: string; //hh:mm:ss
  varChojae: integer;
  varJongbeul: integer;
  varAge: integer;
  isSat: boolean; //����Ͽ��� - ��䰡������
  iGumjin : integer;
//  varYongua: boolean = false; //�����Ʊ���
//  varGumjin: boolean = false; //�ǰ�����
//  varfirst: boolean = false; //������ȯ�����
  varbonDamCode: string; //���� ���κδ��ڵ�
  varBonjun: string;
  varCT: integer; //CT�ݾ�
  varDenture: integer; //Ʋ�� �ݾ�
  artTeeth: boolean = false; //Ʋ�Ͽ���
  AfterArtTeeth: boolean = false; //Ʋ�ϼ�������
  implTeeth: boolean = false; //���ö�Ʈ����
  anotherTeeth: boolean = false; //�ٸ� ġ�� ����
  nBoMan: integer = 0; //�Ǿ�ǰ������
  varGongsang: boolean = false; //���󿩺�
  varjange: boolean = false; //��ֿ���
  varRestrict: boolean = false; //�޿������ڿ���
  varPregnan: boolean = false) //�ӽź�
: integer;
var
  HandoAk: Integer;
  BoninGu: Integer; //2007.7.1
  jindate: string;
  //     SatGasangeum:integer;
  //     SatGasangeum2:integer;  //��䰡�� û���� 50% , 0
  varJinchalRyo,

  varJangeGeum: integer;

//  varChong1: double; //varChong + varJinchalRyo
  varChung: integer;
begin

  result := 0;
    jinchalRyoCode := MakeJinchalRyoCode(varChoJae + 1,
      varAge,
      strtodate(varDate),
      varjange,
      iGumjin);
   //   varyongua,
   //   varGumjin,
   //   varfirst);


  if varChojae = 13 then
  begin
    result := 0;
  end
  else if (anotherTeeth = False) and ((artTeeth = true) or (AfterArtTeeth = true)
    or (implTeeth = True)) then
  begin
    result := 0;
  end //*****
  else if varChojae = 6 then //����+�ɾ�����
  begin

    result := GetJinchalRyo(jinchalRyoCode, varDate, varJongbeul); //������

  end
  else if varChojae = 7 then //����+�ɾ�����
  begin
    result := GetJinchalRyo(jinchalRyoCode, varDate, varJongbeul);
  end
  else if varChojae = 9 then //����+����
  begin
    result := GetJinchalRyo(jinchalRyoCode, varDate, varJongbeul);
  end
  else if varChojae = 10 then //����2ȸ
  begin
    result := GetJinchalRyo(jinchalRyoCode, varDate, varJongbeul);
  end
  else if varChojae = 11 then //����50%
  begin
    result := GetJinchalRyo(jinchalRyoCode, varDate, varJongbeul) div 2;
      // + GetJinchalRyo(2,  varAge, varDate);
  end
  else if (varChojae = 4)   //������ ���� ����
     or (varChojae = 5) then  //���ϰ� ����
  begin
    result := 0;
  end
  else if varChojae = 8 then //��������
  begin
    result := 0;
  end
  else
  begin

    result := GetJinchalRyo(jinchalRyoCode, varDate, varJongbeul);
  end;

end;


// ���κδ��� ...............................................................

function CalcBonin(hkind: string; // ����, �ǿ�, ���պ���
  varIO : integer;  //0�ܷ� 1,2�Կ�
  varChong: double;
  boolWonwe: Boolean;
  varDate: string; //YYYY-MM-DD
  varTime: string; //hh:mm:ss
  varChojae: integer;
  varJongbeul: integer;
  varAge: integer;
  isSat: boolean;                //����Ͽ��� - ��䰡������
  iGumjin : integer;
//  varYongua: boolean = false;   //�����Ʊ���
//  varGumjin: boolean = false;   //�ǰ�����
//  varfirst: boolean = false;    //������ȯ�����
  varbonDamCode: string;         //���� ���κδ��ڵ�
  varBonjun: string;
  varCT: double;                //CT�ݾ�
  varDenture: integer;           //Ʋ�� �ݾ�
  var100by30:double;
  var100by50:double;
  var100by80:double;
  var100by90:double;
  Bohum100:string;               //����100
  SanjungCode : string='';       //�����ڵ�(V193...)
  applySanjung : boolean=true;
  applyJiwon   : string= '';    //����Ư�� ������� H
  artTeeth: boolean = false;     //Ʋ�Ͽ���
  AfterArtTeeth: boolean = false; //Ʋ�ϼ�������
  implTeeth: boolean = false;   //���ö�Ʈ����
  anotherTeeth: boolean = false;//�ٸ� ġ�� ����
  nBoMan: integer = 0;          //�Ǿ�ǰ������
  varGongsang: boolean = false; //���󿩺�
  varjange: boolean = false;    //��ֿ���
  varRestrict: boolean = false; //�޿������ڿ���
  varPregnan: boolean = false)  //�ӽź�
: double;
var

   sanjungArray05: TArray<string>;
   sanjungArray10: TArray<string>;
   sanjungArray20: TArray<string>;

   tJungSangByungArray05: TArray<string>;
   tJungSangByungArray10: TArray<string>;
   tJungSangByungArray20: TArray<string>;


  HandoAk: Integer;
  BoninGu: Integer; //2007.7.1
  jindate: string;
  //     SatGasangeum:integer;
  //     SatGasangeum2:integer;  //��䰡�� û���� 50% , 0
  varJinchalRyo,

  varJangeGeum: integer;

//  varChong1: double; //varChong + varJinchalRyo
  varChung: integer;

  Bonrate : double;


begin

  //�ϴ� �ǰ����迡 ���ؼ� �Կ��� 20%����
  if varIO = 0 then
     BonRate := 0.3
     else  if varIO = 1 then
      BonRate := 0.2
        else  if varIO = 2 then
         BonRate := 0.2;


  result := 0;

//  calcSatGasanGeum(hkind, varDate, varTime, varChojae, varAge, isSat);

  //����ó���� ������    ����ó���� ������
  if boolWonwe then
    HandoAk := 15000
  else
    handoak := 17000;

  if (varDate > '2007-07-31') then //2007.8.1
    HandoAk := 15000;

  BoninGu := 0;

  if (varDate > '2007-06-30') then
  begin

    // �ں�,���� ���� �δ� ���� ó�� --------------
    if (varJongbeul = 7) or (varJongbeul = 8) then
    begin
      BoninGu := 1; //���κδ� ����
    end
    else

      // �޿������� ���� ���� �δ� ó�� --------------
       if (varJongbeul = 1) and (varRestrict  = true) then
      begin
        if (varDate >= '2014-07-01') then //  �ڰ����� ������ �߰�
          BoninGu := 2; //���� ���� �δ�
      end
      else
        //----------------------------------------------------------

    {   if (varBondamCode = 'M001') or (varBondamCode = 'M002') then
       begin

            if (dm_f.configvalue.varYoyang = varSunkiho1) or
                 (dm_f.configvalue.varYoyang = varSunkiho2) then
            begin
                 BoninGu := 1;
            end;
       end;
     }
        if (varBondamCode = 'M003') or (varBondamCode = 'M004') or
          (varBondamCode = 'M005') or (varBondamCode = 'M006') or
          (varBondamCode = 'M007') or (varBondamCode = 'M008') or
          (varBondamCode = 'M009') or (varBondamCode = 'M010') or
          (varBondamCode = 'M011') or
          (varBondamCode = 'M015') or (varBondamCode = 'M016')
          or (varBondamCode = 'M017') then
            // ������ȯ�� 1�� �߰�
        begin
          BoninGu := 1;
        end;

    if (varBondamCode = 'XXXX') or (varBonjun = '2') then
    begin
      BoninGu := 2;
    end;

  end;

    //������
    // 2012.7.1 Ʋ�ϸ� ������ ������ ��������

    //  varjange2:= 0;
    //  varyongua2:= 0;
    //  varGumjin2:= 0;
    //  varfirst2 := 0;

    //     if varjange = true then
    //     varjange2 := 1;
    //
    //    if  varyongua =true then
    //     varyongua2 := 1;
    //
    //    if  varGumjin = true then
    //     varGumjin2 := 1;
    //
    //     if varfirst = true then
    //       varfirst2  := 1;

//    jinchalRyoCode := MakeJinchalRyoCode(varChoJae, varAge, strtodate(varDate),
//      varjange,
//      varyongua, varGumjin, varfirst);
//
//
//  if varChojae = 13 then
//  begin
//    varJinchalRyo := 0;
//  end
//  else if (anotherTeeth = False) and ((artTeeth = true) or (AfterArtTeeth = true)
//    or (implTeeth = True)) then
//  begin
//    varJinchalRyo := 0;
//  end //*****
//  else if varChojae = 6 then //����+�ɾ�����
//  begin
//
//    varJinchalRyo := GetJinchalRyo(jinchalRyoCode, varDate); //������
//
//  end
//  else if varChojae = 7 then //����+�ɾ�����
//  begin
//    varJinchalRyo := GetJinchalRyo(jinchalRyoCode, varDate);
//  end
//  else if varChojae = 9 then //����+����
//  begin
//    varJinchalRyo := GetJinchalRyo(jinchalRyoCode, varDate);
//  end
//  else if varChojae = 10 then //����2ȸ
//  begin
//    varJinchalRyo := GetJinchalRyo(jinchalRyoCode, varDate);
//  end
//  else if varChojae = 11 then //����50%
//  begin
//    varJinchalRyo := GetJinchalRyo(jinchalRyoCode, varDate) div 2;
//      // + GetJinchalRyo(2,  varAge, varDate);
//  end
//  else if varChojae = 8 then //��������
//  begin
//    varJinchalRyo := 0;
//  end
//  else
//  begin
//
//    varJinchalRyo := GetJinchalRyo(jinchalRyoCode, varDate);
//  end;

  //�޿��������:= �����ừ ������� +������
//  varChong1 :=
//    JulSa(varChong
//    + varJinchalRyo
//    + SatGasanGeum, 1);



//  nJinchalryo:= varJinchalRyo;



  // ���躻�κδ�� ���
  if hkind = '����' then
  begin // ġ������

    varJangeGeum := 0;
    //2007.8.1
    if BoninGu = 2 then
    begin //��ȣ1�� �Ƿڼ����°�� ���׺���
      result := varChong;
    end
    else if (varDate > '2009-06-30')
      and (varJongbeul = 1)
      and (varAge < 6) then
    begin
      result := 100 * Floor((varChong * 0.28) / 100); //6���̸� 28%
    end
    else if (varDate > '2007-07-31') and (varJongbeul = 1)
      and (varAge < 6) then
    begin
      result := 10 * Floor((varChong * 0.28) / 10); //6���̸� 28%
    end
    else if (varDate > '2009-06-30') and (varJongbeul = 1) then //����
    begin

      //2012.7.1  Ʋ�� ������ 50% ���κδ�
      if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true)) and
        (anotherTeeth = true) then
      begin
        //   result :=
        //        1500
        //         + 100 * Floor((varDenture * 0.5) / 100);

        if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
          '2017-11-01') then
        begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
          result :=
            1500 +
            100 * Floor((varDenture * 0.3) / 100);
        end
        else
        begin
          result :=
            1500 +
            100 * Floor((varDenture * 0.5) / 100);

        end;

      end
      else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
        then
      begin
        //  result :=
        //       100 * Floor((varDenture * 0.5) / 100);

        if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
          '2017-11-01') then
        begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
          result :=
            100 * Floor((varDenture * 0.3) / 100);
        end
        else
        begin
          result :=
            100 * Floor((varDenture * 0.5) / 100);
        end;

      end
      else if varPregnan = true then
        //�ӽź� ���κδ��
        result := 100 * Floor((varChong * 0.2) / 100)
      else
        {
        10���� �ڸ��� ġ������ ��ġ ������ ���� ��ݴ� 2���� ġ�� Ȩ �޿�� �ü��� �޾Ҵ�.
        �������� 7��180���� ���Դ�. �ڱ��� �ƹ����� �� ��� 30%�� 2��1050���� ������ �´�.
        �̹� ��å�� ����Ǹ� ��ü �������� 30%, ġ�� Ȩ �޿�� ����� 10%�� 9710���� ���� �ȴ�.
        18�� ���ϸ� ġ�� Ȩ �޿�� �ü��� �ǰ������� ����Ǵµ� ���κδ���� 10%�� ��ȭ�� 1��1340��(54%) �پ���.
        }
       {//18������ �Ƕ�Ʈ ���� 2017-10-01 ����} if (nDangaSilantExtractBeforeJongGasan > 0)
         //Realgrid14.Cells[2, 5]
        and (varDate >= '2017-10-01') then // �Ƕ�Ʈ ��  �������� �� ���� + ����
        begin

          result := //���� ���κδ��
          (100 * Floor(
            ((varJinchalRyo + nDangaSilantExtract) * 0.4 //������ + �Ƕ�Ʈ �ƴѰ� 30%
            + (nDangaSilant * 0.1)) / 100)); //�Ƕ�Ʈ 10%
          //�Ƿ�Ʈ �������� �ݾ�
        end

        else
          result := 100 * Floor((varChong * 0.4) / 100);

    end
    else if varJongbeul = 1 then //����
    begin
      result := 10 * Floor((varChong * 0.4) / 10);
    end
    else if (varJongbeul = 9) then //ġ������ ������ 1��
    begin
      //      result := 0;
      if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
        then
      begin

        if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
          '2017-11-01') then
        begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
          result :=
            100 * Floor((varDenture * 0.05) / 100);
        end
        else
        begin

          result :=
            100 * Floor((varDenture * 0.2) / 100);
        end;

      end
      else
      begin
        result := 0; //���κδ� 0
      end;

    end
    else if (varJongbeul = 10) and (varDate > '2009-06-30') then //������2��
    begin
      result := 100 * Floor((varChong * 0.14) / 100);
    end
    else
      {//ġ������ ������ 2��} if (varJongbeul = 10) and (jindate > '2009-03-31') then
        {//������2��}
      begin
        // result := 0;
        // varJangeGeum := 100 * Floor((varChong * 0.14) / 100);

     //����ó���� ���� ������ ���� (ó���� ������1500/������ 1000����)
     //2012.7.1  Ʋ�� ������2���� 30% ���κδ�
        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
          and (anotherTeeth = true) then
        begin
          if boolWonwe then
          begin

            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100) +
                1000 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0)
                / 10));
            end
            else
            begin

              result :=
                100 * Floor((varDenture * 0.3) / 100) +
                1000 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0)
                / 10));
            end;
          end
          else
          begin

            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100) +
                1500 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0)
                / 10));
            end
            else
            begin

              result :=
                100 * Floor((varDenture * 0.3) / 100) +
                1500 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0)
                / 10));
            end;
          end;
          if (nBoMan = 0) then
          begin
            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100) +
                1000 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0)
                / 10));
            end
            else
            begin

              result :=
                100 * Floor((varDenture * 0.3) / 100) +
                1000 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
            end;
          end;
        end
        else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =
          true)) then
        begin
          if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
            '2017-11-01') then
          begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

            result :=
              100 * Floor((varDenture * 0.15) / 100);
          end
          else
          begin

            result :=
              100 * Floor((varDenture * 0.3) / 100);
          end;
        end
        else
        begin
          if boolWonwe then
            result := 1000 + (10 *
              Floor(Round2(varCT * Round2(14 / 100,
              -2), 0)
              / 10))
          else
            result := 1500 + (10 *
              Floor(Round2(varCT * Round2(14 / 100,
              -2), 0)
              / 10));
          varJangeGeum := 0;
          // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
          if (nBoMan = 0) then
            result := 1000 + (10 *
              Floor(Round2(varCT * Round2(14 / 100,
              -2), 0) / 10));
        end;
        //*****
      end

      else if (varJongbeul = 11) and (varDate > '2009-03-31') then //������2�������
      begin
        //    result := 0;
        //    varJangeGeum := 10 * Floor((varChong * 0.14) / 10);

      //����ó���� ���� ������ ���� (ó���� ������750/������ 250����)
        //2012.7.1  Ʋ�� ������2��������� 30% ���κδ�
        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
          and (anotherTeeth = true) then
        begin

          if boolWonwe then
          begin

            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100) +
                250 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
            end
            else
            begin

              result :=
                100 * Floor((varDenture * 0.3) / 100) +
                250 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));

            end;
            varJangeGeum := 750;
          end
          else
          begin
            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100) +
                750 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
            end
            else
            begin
              result :=
                100 * Floor((varDenture * 0.3) / 100) +
                750 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
            end;
            varJangeGeum := 750;
          end;

          // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
          if (nBoMan = 0) then
          begin
            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100) +
                250 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
            end
            else
            begin

              result :=
                100 * Floor((varDenture * 0.3) / 100) +
                250 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
            end;

            varJangeGeum := 750;
          end;

        end
        else
          {//������ ����, Ʋ�ϸ�} if ((artTeeth = true) or (AfterArtTeeth = true) or
          (implTeeth = true)) then
          begin

            if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
              '2017-11-01') then
            begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

              result :=
                100 * Floor((varDenture * 0.15) / 100);
            end
            else
            begin

              result :=
                100 * Floor((varDenture * 0.3) / 100);
            end;
          end
          else
          begin
            if boolWonwe then
            begin
              result := 250 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
              varJangeGeum := 750;
            end
            else
            begin
              result := 750 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
              varJangeGeum := 750;
            end;

            // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
            if (nBoMan = 0) then
            begin
              result := 250 + (10 *
                Floor(Round2(varCT * Round2(14 / 100,
                -2), 0) / 10));
              varJangeGeum := 750;
            end;
            //*****
          end;
      end
      else if (BoninGu = 1) and (varJongbeul = 2) then ///+#+
        {//��ȣ1�� ���θ���}
      begin

        //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
          then
        begin

          if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
            '2017-11-01') then
          begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

            result :=
              100 * Floor((varDenture * 0.05) / 100);
          end
          else
          begin
            result :=
              100 * Floor((varDenture * 0.2) / 100);
          end;

        end
        else
          result := 0;
        //*****

      end

      else if (BoninGu = 1) and (varJongbeul = 2) then
        //��ȣ1�� ���θ���
      begin

        //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
          then
          result :=
            100 * Floor((varDenture * 0.2) / 100)
        else
          result := 0;

      end
      else if (varJongbeul = 2) and (varDate < '2007-07-01') then //��ȣ1��
      begin
        result := 0;

      end
      else if (varJongbeul = 3) and (varDate < '2007-07-01') then //��ȣ2��
      begin
        result :=
          JulSa(varChong * 0.2, 1)
          + (10 * Floor(Round2(varCt * Round2(15 / 100,
          -2), 0) / 10));
      end
      else if (varJongbeul = 3) then //��ȣ2��
      begin

        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
          then
        begin
          //  result :=
          //      100 * Floor((varDenture * 0.3) / 100);

          if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
            '2017-11-01') then
          begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

            result :=
              100 * Floor((varDenture * 0.15) / 100);
          end
          else
          begin

            result :=
              100 * Floor((varDenture * 0.3) / 100);
          end;

        end
        else

          {//18������ �Ƕ�Ʈ ���� 2017-10-01 ����} if (nDangaSilantExtractBeforeJongGasan > 0)
            and (varDate >= '2017-10-01') then // �Ƕ�Ʈ ��  �������� �� ���� + ����
          begin

            result := //���� ���κδ��
            (100 * Floor(
              ((varJinchalRyo + nDangaSilantExtract) * 0.4 //������ + �Ƕ�Ʈ �ƴѰ� 30%
              + (nDangaSilant * 0.1)) / 100)); //�Ƕ�Ʈ 10%
            //�Ƿ�Ʈ �������� �ݾ�
          end
          else

          begin
            result :=
              JulSa(varChong * 0.15, 1);
          end;

      end
      else if varJongbeul = 2 then //��ȣ1��
      begin
        //����ó���� ���� ������ ����
        if boolWonwe then
          result := 1500 + (10 *
            Floor(Round2(varCt * Round2(5 / 100,
            -2), 0) / 10))
        else
          result := 2000 + (10 *
            Floor(Round2(varCt * Round2(5 / 100,
            -2), 0) / 10));
        //�����(ó���� ������2000/������ 1500����)
        varJangeGeum := 0;

        // 2008.4.1 ���� (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
        if (nBoMan = 0) and (varDate > '2008-03-31') then
          result := 1500 + (10 *
            Floor(Round2(varCt * Round2(15 / 100,
            -2), 0)
            / 10));

        //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
        if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
          then

        begin
          //  result :=
           //      100 * Floor((varDenture * 0.2) / 100);

          if ((artTeeth = true) or (AfterArtTeeth = true)) and (jindate >=
            '2017-11-01') then
          begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

            result :=
              100 * Floor((varDenture * 0.05) / 100);
          end
          else
          begin
            result :=
              100 * Floor((varDenture * 0.2) / 100);
          end;
        end

      end
      else if varJongbeul = 5 then //��ȣ4��
      begin
        result := 0;
      end
      else if varJongbeul = 6 then //��ȣ8��
      begin
        result := 0;
      end
      else //�Ϲ�
      begin

        result :=
          varChong;

      end;

      if Bohum100='1' then
          result :=  varChong;

  end
  else if hkind = '���պ���' then
  begin //���պ���
    varJangeGeum := 0;
    if (varJongbeul = 1) and (varDate > '2009-06-30') then
      //����
    begin
      result := 100 *
        Floor((varChong * 0.5) /
        100);
    end
    else if varJongbeul = 1 then //����
    begin
      result := 10 *
        Floor((varChong * 0.5) /
        10);
    end
    else if (varJongbeul = 10) and (varDate > '2009-06-30') then //������2��
    begin
      result := 100 *
        Floor((varChong * 0.14) /
        100);
    end
    else if (varJongbeul = 10) and (varDate > '2009-03-31') then //������2��
    begin
      result := 10 *
        Floor((varChong * 0.14) /
        10);
    end
    else if (varJongbeul = 11) and (varDate > '2009-06-30') then //������2�������
    begin
      result := 0;
      varjangeGeum := 100 * Floor((varChong * 0.14) / 100);
    end
    else if (varJongbeul = 11) and (varDate > '2009-03-31') then //������2�������
    begin
      result := 0;
      varjangeGeum := 10 * Floor((varChong * 0.14) / 10);
    end
    else if varJongbeul = 2 then //��ȣ1��
    begin
      result := 0;
    end
    else if varJongbeul = 3 then //��ȣ2��
    begin
      result :=
        JulSa(varChong * 0.2, 1)
        + (10 * Floor(Round2(varCt * Round2(15 / 100,
        -2), 0) / 10));
    end
    else if varJongbeul = 5 then //��ȣ4��
    begin
      result := 0;
    end
    else if varJongbeul = 6 then //��ȣ8��
    begin
      if boolWonwe then
        result := 250
      else
        result := 750;
    end
    else //�Ϲ�
    begin
      result :=
        varChong;
    end;
  end
  else
        begin //�ǿ���

          varjangeGeum := 0;


          if BoninGu = 2 then
          begin
            result := varChong;
          end
          else if (varDate > '2007-07-31')  and (varJongbeul = 1)
               and (varAge < 6) then //���� 6���̸� �Ҿ�
          begin
              result := 100 *
                 Floor((varChong * 0.21) /
                 100);
          end
          else if (varDate > '2007-07-31') and (varJongbeul = 1) then //����
          begin

            //2012.7.1  Ʋ�� ������ 50% ���κδ�
            if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true)) and
              (anotherTeeth = true) then
            begin
              //    result :=
              //         1500 +
              //         100 * Floor((varDenture * 0.5) / 100);

              if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                '2017-11-01') then
              begin

                result :=
                  1500 +
                  100 * Floor((varDenture * 0.3) / 100);
              end
              else
              begin
                result :=
                  1500 +
                  100 * Floor((varDenture * 0.5) / 100);
              end;

            end
            else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
              then
            begin
              //result :=
              //     100 * Floor((varDenture * 0.5) / 100);
              if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                '2017-11-01') then
              begin

                result :=
                  100 * Floor((varDenture * 0.3) / 100);
              end
              else
              begin
                result :=
                  100 * Floor((varDenture * 0.5) / 100);

              end;

            end
            else if (varChong <= HandoAk) and
              (varAge >= 65) then
            begin
              result := 1500;
            end
            else if varPregnan = true then
            begin
              //�ӽź� ���κδ�� �氨 ���� ==========================
              if varPregnan = true then
                result := 100 * Floor(((varChong ) * 0.1) / 100);

              //   result :=    //�ӽź� ���κδ��
              //       100 * Floor(((Realgrid14.Cells[1, 1]  - satGasanGeum2) * 0.1) / 100)

            end
            else

              //18������ �Ƕ�Ʈ ���� 2017-10-01 ����
              if (nDangaSilantExtractBeforeJongGasan >
                0)
                and (varDate >= '2017-10-01') then // �Ƕ�Ʈ ��  �������� �� ���� + ����
              begin

                result := //���� ���κδ��
                (100 * Floor(
                  ((varJinchalRyo + satGasangeum + nDangaSilantExtract) * 0.3
                    //������ + �Ƕ�Ʈ �ƴѰ� 30%
                  + (nDangaSilant * 0.1)) / 100)); //�Ƕ�Ʈ 10%
                //�Ƿ�Ʈ �������� �ݾ�
              end

              else
              begin

                //   result := 100 *  Floor(  ((varChong  - satGasanGeum2) * 0.3)  / 100);

                if (varAge >= 65) and (varDate >= '2018-01-01') then  //65�� �̻�
                begin
                  if varChong <= 15000 then
                    result := 1500
                  else if (varChong > 15000) and (varChong <= 20000) then
                    result := 100 * Floor(((varChong ) * 0.1) / 100)
                      //10%

                  else if (varChong > 20000) and (varChong <= 25000) then
                    result := 100 * Floor(((varChong ) * 0.2) / 100)
                      //20%

                  else if (varChong > 25000) then
                  begin

                  //  result := 100 * Floor(((varChong ) * 0.3) / 100);
                      //30%

//                    result := 100 * Floor(((varChong - nSum100by80Hang - nSum100by80Jae ) * bonRate) / 100);
//                    result := result + 100 * Floor(((nSum100by80Hang + nSum100by80Jae  ) * 0.8) / 100);

                    result := 100 * Floor(((varChong
                        - nSum100by30Hang - nSum100by30Jae
                        - nSum100by50Hang - nSum100by50Jae
                        - nSum100by80Hang - nSum100by80Jae
                        - nSum100by90Hang - nSum100by90Jae ) * bonRate) / 100);
                    result := result
                         + 100 * Floor(((nSum100by30Hang + nSum100by30Jae  ) * 0.3) / 100)
                         + 100 * Floor(((nSum100by50Hang + nSum100by50Jae  ) * 0.5) / 100)
                         + 100 * Floor(((nSum100by80Hang + nSum100by80Jae  ) * 0.8) / 100)
                         + 100 * Floor(((nSum100by90Hang + nSum100by90Jae  ) * 0.9) / 100);


                  end;
                end
                else
                begin
//                    result := 100 * Floor(((varChong - nSum100by80Hang - nSum100by80Jae ) * bonRate) / 100);
//                    result := result + 100 * Floor(((nSum100by80Hang + nSum100by80Jae  ) * 0.8) / 100);

                    result := 100 * Floor(((varChong
                       - nSum100by30Hang - nSum100by30Jae
                       - nSum100by50Hang - nSum100by50Jae
                       - nSum100by80Hang - nSum100by80Jae
                       - nSum100by90Hang - nSum100by90Jae) * bonRate) / 100);
                    result := result
                       + 100 * Floor(((nSum100by30Hang + nSum100by30Jae  ) * 0.3) / 100)
                       + 100 * Floor(((nSum100by50Hang + nSum100by50Jae  ) * 0.5) / 100)
                       + 100 * Floor(((nSum100by80Hang + nSum100by80Jae  ) * 0.8) / 100)
                       + 100 * Floor(((nSum100by90Hang + nSum100by90Jae  ) * 0.9) / 100);


                 //ToDO : 100/80
                 //   showmessage(inttostr( nSum100by80Hang + nSum100by80Jae));
                end;




                //�̵�� ��ȯ�ڰ� �ش� ��(C00��C97, D00��D09, D32��D33, D37��D48)���� ���Ḧ ���� ����
                //�ܷ� ����� ����Ư�� ��� - ���޿�����Ѿ��� 100���� 20�� �����Ϻκδ�
                 sanjungArray20 :=TArray<string>.Create('V027');

               if  ( applySanjung = true)
                  and (MatchStr(uppercase(sanjungCode), sanjungArray20) = true) then
               begin


                    result := 100 * Floor(((varChong - satGasanGeum2 - nCTMRI) * 0.2) / 100);

                    //Ư������ 30% �Ϲ������ 20%
                    result := result +  100 * Floor((( nCTMRI) * 0.3) / 100);

               end;

                  // C00~C97, D00~D09, D32~D33, D37~D48

                //������ȯ�� ����Ư�� ��� - �ܷ� �Ǵ� �Կ�����(������ �Կ����� ��
                //    ���Ƿ������ ����)�� ���޿���� �Ѿ��� 100���� 5 �����Ϻκδ�
                  sanjungArray05 :=TArray<string>.Create('V193'
                                        ,'V191'
                                        ,'V268'
                                        ,'V275'
                                        ,'V192'
                                        ,'V247'
                                        ,'V248'
                                        ,'V249'
                                        ,'V250'
                                        ,'V273');


                 if  ( applySanjung = true)
                     and ( MatchStr(upperCase(sanjungCode), sanjungArray05)= true) then
                      begin


                            result := 100 * Floor(((varChong - satGasanGeum2) * 0.05) / 100);
                      end;



                   {��ͳ�ġ����ȯ�� ����Ư�� ���
                      - �ܷ� �Ǵ� �Կ�����(������ �Կ����� �� ���Ƿ������ ����)��
                      ���޿�����Ѿ��� 100���� 10�� �����Ϻκδ�(���� ���Ŀ� ����
                      ���(��ü�鿪���̹��̷�����ȯ(B20��B24)�� ��Ͽ��� ����)�� ȯ�ڰ�
                      ����Ϸκ��� 5�Ⱓ �ش� ������ ���Ḧ ���� ���.
                      ��, ����(A15��A19)�� ����Ϸκ��� 2�Ⱓ �ش������ ���Ḧ ���� ���� �ϸ�,
                      �󼼺Ҹ� �����ȯ�� ����Ϸκ��� 1�Ⱓ �ش� �ӻ� �Ұ����� ���Ḧ ���� ���� ��.}

                        sanjungArray10 :=TArray<string>.Create('V001'
                                      ,'V003'
                                      ,'V009'
                                      ,'V013'
                                      ,'V014'
                                      ,'V015'
                                      ,'V005'
                                      ,'V277'
                                      ,'V278'
                                      ,'V161'
                                      ,'V206'
                                      ,'V246'
                                      ,'V102'
                                      ,'V103'
                                      ,'V104'
                                      ,'V105'
                                      ,'V162'
                                      ,'V163'
                                      ,'V164'
                                      ,'V232'
                                      ,'V219'
                                      ,'V187'
                                      ,'V023'
                                      ,'V220'
                                      ,'V253'
                                      ,'V106'
                                      ,'V188'
                                      ,'V107'
                                      ,'V108'
                                      ,'V109'
                                      ,'V110'
                                      ,'V111'
                                      ,'V112'
                                      ,'V113'
                                      ,'V165'
                                      ,'V114'
                                      ,'V115'
                                      ,'V254'
                                      ,'V116'
                                      ,'V166'
                                      ,'V207'
                                      ,'V117'
                                      ,'V221'
                                      ,'V118'
                                      ,'V119'
                                      ,'V255'
                                      ,'V189'
                                      ,'V120'
                                      ,'V121'
                                      ,'V256'
                                      ,'V122'
                                      ,'V123'
                                      ,'V124'
                                      ,'V257'
                                      ,'V190'
                                      ,'V208'
                                      ,'V022'
                                      ,'V276'
                                      ,'V279'
                                      ,'V233'
                                      ,'V230'
                                      ,'V125'
                                      ,'V234'
                                      ,'V140'
                                      ,'V167'
                                      ,'V168');

                               if  ( applySanjung = true)
                                   and ( MatchStr(uppercase(sanjungCode), sanjungArray10)=true) then
                                begin
                                      result := 100 * Floor(((varChong - satGasanGeum2) * 0.1) / 100);

                                   //    ��ͳ�ġ����ȯ�� ������ó��

                                      if applyJiwon ='H' then
                                       result := 0;

                                end;




              end; //����
            //*****
          end
          else if varJongbeul = 1 then //����
          begin

            if varChong > HandoAk then
            begin
              if varAge >= 65 then
              begin
                if varChong <= 15000 then
                  result := 1500
                else if (varChong > 15000) and (varChong <= 20000) then
                  result := 100 * Floor(((varChong - satGasanGeum2) * 0.1) / 100) //10%

                else if (varChong > 20000) and (varChong <= 25000) then
                  result := 100 * Floor(((varChong - satGasanGeum2) * 0.2) / 100) //20%

                else if (varChong > 25000) then
                  result := 100 * Floor(((varChong - satGasanGeum2) * 0.3) / 100);
                    //30%

              end
              else
              begin
                result := 10 * Floor(((varChong - satGasanGeum2) * Bonrate) / 10);
              end;

            end
            else
            begin
              if varAge >= 65 then
                result := 1500
              else
                result := 3500;
            end;

          end
          else if (varJongbeul = 9) then //������1��
          begin

            //2012.7.1  Ʋ�� ������1���� 20% ���κδ�
            if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
              then
            begin

              if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                '2017-11-01') then
              begin

                result :=
                  100 * Floor((varDenture * 0.05) / 100);

              end
              else
              begin

                result :=
                  100 * Floor((varDenture * 0.2) / 100);
              end;

            end
            else
            begin
              result := 0;
            end;
            //*****

          end
          else if (varJongbeul = 10) and (varDate > '2009-03-31') then //������2��
          begin
            //����ó���� ���� ������ ���� (ó���� ������1500/������ 1000����)
            //2012.7.1  Ʋ�� ������2���� 30% ���κδ�
            if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true)) and
              (anotherTeeth = true) then
            begin
              if boolWonwe then
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                  result :=
                    100 * Floor((varDenture * 0.15) / 100) +
                    1000 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0)
                    / 10));

                end
                else
                begin
                  result :=
                    100 * Floor((varDenture * 0.3) / 100) +
                    1000 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0)
                    / 10));
                end;

              end
              else
              begin
                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                  result :=
                    100 * Floor((varDenture * 0.15) / 100) +
                    1500 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0)
                    / 10));
                end
                else
                begin
                  result :=
                    100 * Floor((varDenture * 0.3) / 100) +
                    1500 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0)
                    / 10));
                end;

              end;
              if (nBoMan = 0) then
              begin
                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                  result :=
                    100 * Floor((varDenture * 0.15) / 100) +
                    1000 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));
                end
                else
                begin

                  result :=
                    100 * Floor((varDenture * 0.3) / 100) +
                    1000 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));
                end;

              end;
            end
            else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
              then
            begin
              if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                '2017-11-01') then
              begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                result :=
                  100 * Floor((varDenture * 0.15) / 100);
              end
              else
              begin

                result :=
                  100 * Floor((varDenture * 0.3) / 100);
              end;

            end
            else
            begin
              if boolWonwe then
                result := 1000 + (10 *
                  Floor(Round2(varCt * Round2(14 / 100,
                  -2), 0)
                  / 10))
              else
                result := 1500 + (10 *
                  Floor(Round2(varCt * Round2(14 / 100,
                  -2), 0)
                  / 10));
              varjangeGeum := 0;
              // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
              if (nBoMan = 0) then
                result := 1000 + (10 *
                  Floor(Round2(varCt * Round2(14 / 100,
                  -2), 0) / 10));
            end;
            //*****

          end
          else if (varJongbeul = 11) and (varDate > '2009-03-31') then //������2�������
          begin
            //����ó���� ���� ������ ���� (ó���� ������750/������ 250����)
            //2012.7.1  Ʋ�� ������2��������� 30% ���κδ�
            if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true)) and
              (anotherTeeth = true) then
            begin

              if boolWonwe then
              begin
                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >= '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                  result :=
                    100 * Floor((varDenture * 0.15) / 100) +
                    250 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));

                end
                else
                begin

                  result :=
                    100 * Floor((varDenture * 0.3) / 100) +
                    250 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));
                end;

                varjangeGeum := 750;

              end
              else
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                  result :=
                    100 * Floor((varDenture * 0.15) / 100) +
                    750 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));

                end
                else
                begin
                  result :=
                    100 * Floor((varDenture * 0.3) / 100) +
                    750 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));

                end;

                varjangeGeum := 750;
              end;

              // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
              if (nBoMan = 0) then
              begin
                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                  result :=
                    100 * Floor((varDenture * 0.15) / 100) +
                    250 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));
                end
                else
                begin
                  result :=
                    100 * Floor((varDenture * 0.3) / 100) +
                    250 + (10 *
                    Floor(Round2(varCt * Round2(14 / 100,
                    -2), 0) / 10));
                end;

                varjangeGeum := 750;
              end;

            end
            else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
              then
            begin //������ 2�����

              if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                '2017-11-01') then
              begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                result :=
                  100 * Floor((varDenture * 0.15) / 100);
              end
              else
              begin

                result :=
                  100 * Floor((varDenture * 0.3) / 100);
              end;

            end
            else
            begin
              if boolWonwe then
              begin

                result := 250 + (10 *
                  Floor(Round2(varCt * Round2(14 / 100,
                  -2), 0) / 10));
                varjangeGeum := 750;
              end
              else
              begin
                result := 750 + (10 *
                  Floor(Round2(varCt * Round2(14 / 100,
                  -2), 0) / 10));
                varjangeGeum := 750;
              end;

              // (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 250��
              if (nBoMan = 0) then
              begin
                result := 250 + (10 *
                  Floor(Round2(varCt * Round2(14 / 100,
                  -2), 0) / 10));
                varjangeGeum := 750;
              end;
              //*****
            end;

          end
          else {//Ʋ��} if (varChojae = 13) and (varJongbeul = 2) then //��ȣ1��
            begin
              //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
                then
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                  result :=
                    10 * Floor((varDenture * 0.05) / 10)
                end
                else
                begin
                  result :=
                    10 * Floor((varDenture * 0.2) / 10)
                end;
              end
              else
              begin
                //result := 0;
              end;
              //*****
            end
            else if (BoninGu = 1) and (varJongbeul = 2) then //��ȣ1��
            begin
              //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
                then
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                  result :=
                    10 * Floor((varDenture * 0.05) / 10);
                end
                else
                begin
                  result :=
                    10 * Floor((varDenture * 0.2) / 10);
                end;

              end
              else
                result := 0;
              //*****
            end
            else if (varJongbeul = 2) and (varDate < '2007-07-01') then //��ȣ1��
            begin
              //2012.7.1  Ʋ�� ��ȣ1���� 20% ���κδ�
              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
                then
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                  result := 10 * Floor((varDenture * 0.05) / 10);

                end
                else
                begin
                  result := 10 * Floor((varDenture * 0.2) / 10);
                end;

              end
              else
              begin

                result := 0;
              end;

            end
            else if (varJongbeul = 3) or (varJongbeul = 2) then //��ȣ2��  , ��ȣ1��
            begin
              //����ó���� ���� ������ ����
              //2012.7.1  Ʋ�� ��ȣ2���� 30% ���κδ�
              if ((artTeeth = true)
                or (AfterArtTeeth = true)
                or (implTeeth = true))
                and (anotherTeeth = true) then
              begin

                if boolWonwe then
                begin

                  if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                    '2017-11-01') then
                  begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                    if (varJongbeul = 3) then
                      result :=
                        10 * Floor((varDenture * 0.15) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))
                    else if (varJongbeul = 2) then
                      result :=
                        10 * Floor((varDenture * 0.05) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10));
                  end
                  else
                  begin
                    if (varJongbeul = 3) then
                      result :=
                        10 * Floor((varDenture * 0.15) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))
                    else if (varJongbeul = 2) then
                      result := 10 * Floor((varDenture * 0.05) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10));

                  end;

                end
                else
                begin

                  if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                    '2017-11-01') then
                  begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                    if (varJongbeul = 3) then

                      result :=
                        10 * Floor((varDenture * 0.15) / 10) +
                        1500 + (10 * //ToDo : 1500->1000
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))
                    else if (varJongbeul = 2) then

                      result :=
                        10 * Floor((varDenture * 0.05) / 10) +
                        1500 + (10 * //ToDo : 1500->1000
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))

                  end
                  else
                  begin
                    if (varJongbeul = 3) then

                      result :=
                        10 * Floor((varDenture * 0.15) / 10) +
                        1500 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))
                    else if (varJongbeul = 2) then
                      result :=
                        10 * Floor((varDenture * 0.05) / 10) +
                        1500 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10));
                  end;

                end;

                //�����(ó���� ������1500/������ 1000����)
                varjangeGeum := 0;
                // 2008.4.1 ���� (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
                if (nBoMan = 0) and (varDate > '2008-03-31') then
                begin

                  if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                    '2017-11-01') then
                  begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                    if (varJongbeul = 3) then
                      result :=
                        10 * Floor((varDenture * 0.15) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))
                    else if (varJongbeul = 2) then
                      result :=
                        10 * Floor((varDenture * 0.05) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10));
                  end
                  else
                  begin
                    if (varJongbeul = 3) then
                      result :=
                        10 * Floor((varDenture * 0.15) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10))
                    else if (varJongbeul = 2) then
                      result :=
                        10 * Floor((varDenture * 0.05) / 10) +
                        1000 + (10 *
                        Floor(Round2(varCt * Round2(15 / 100,
                        -2), 0)
                        / 10));

                  end;
                end;
              end
              else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =
                true)) then
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                  if (varJongbeul = 3) then
                    result :=
                      10 * Floor((varDenture * 0.15) / 10)
                  else if (varJongbeul = 2) then
                    result :=
                      10 * Floor((varDenture * 0.05) / 10);

                end
                else
                begin //���ö�Ʈ ��ȣ2�� 30%

                  if (varJongbeul = 3) then
                    result :=
                      10 * Floor((varDenture * 0.3) / 10)
                  else {//���ö�Ʈ ��ȣ1�� 20%} if (varJongbeul = 2) then
                      result :=
                        10 * Floor((varDenture * 0.2) / 10)
                end;

              end
              else
              begin

                if boolWonwe then
                begin
                  if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                    '2017-11-01') then
                  begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                    result := 1000 + (10 *
                      Floor(Round2(varCt * Round2(15 / 100,
                      -2), 0)
                      / 10));

                  end
                  else
                  begin
                    result := 1000 + (10 *
                      Floor(Round2(varCt * Round2(15 / 100,
                      -2), 0)
                      / 10));
                  end;

                end
                else
                begin
                  if (varJongbeul = 3) then  // ��ȣ2��
                  begin


                    if (varIO = 1)  or (varIO = 2) then //�Կ�
                    begin

                     result :=

                              (10 *
                              Floor(Round2((varChong
                               -var100by30
                               -var100by50
                               -var100by80
                               -var100by90
                               ) * Round2(10 / 100,
                              -2), 0)
                              / 10)) +

                              (10 *
                              Floor(Round2(varCt * Round2(10 / 100,
                              -2), 0)
                              / 10)) +

                              (10 *
                              Floor(Round2( var100by30 * Round2(30 / 100,
                              -2), 0)
                              / 10)) +

                              (10 *
                              Floor(Round2( var100by50 * Round2(50 / 100,
                              -2), 0)
                              / 10)) +

                              (10 *
                              Floor(Round2( var100by80 * Round2(80 / 100,
                              -2), 0)
                              / 10)) +

                              (10 *
                              Floor(Round2( var100by90 * Round2(90 / 100,
                              -2), 0)
                              / 10))

                              ;
                    end
                    else
                    begin   //�ܷ�
                        result := 1500 + (10 *
                              Floor(Round2(varCt * Round2(15 / 100,
                              -2), 0)
                              / 10)) +
                               (10 *
                              Floor(Round2( var100by30 * Round2(30 / 100,
                              -2), 0)
                              / 10)) +

                               (10 *
                              Floor(Round2( var100by50 * Round2(50 / 100,
                              -2), 0)
                              / 10)) +

                               (10 *
                              Floor(Round2( var100by80 * Round2(80 / 100,
                              -2), 0)
                              / 10)) +

                               (10 *
                              Floor(Round2( var100by90 * Round2(90 / 100,
                              -2), 0)
                              / 10))

                              ;
                    end;


                  end
                  else if (varJongbeul = 2) then   // ��ȣ1��
                  begin
                    result :=    1500 + (10 *
                    Floor(Round2(varCt * Round2(5 / 100,
                    -2), 0)
                    / 10)) +
                     (10 *
                    Floor(Round2( var100by30 * Round2(30 / 100,
                    -2), 0)
                    / 10)) +
                     (10 *
                    Floor(Round2( var100by50 * Round2(50 / 100,
                    -2), 0)
                    / 10)) +
                     (10 *
                    Floor(Round2( var100by80 * Round2(80 / 100,
                    -2), 0)
                    / 10)) +
                     (10 *
                    Floor(Round2( var100by90 * Round2(90 / 100,
                    -2), 0)
                    / 10))
                    ;

                  end;


                end;
                //�����(ó���� ������1500/������ 1000����)
                varjangeGeum := 0;
                // 2008.4.1 ���� (ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��




                if (nBoMan = 0) and (varDate > '2008-03-31') then
                begin
                 if (varJongbeul = 2) then  // ��ȣ1��
                  result := 1000 + (10 *
                    Floor(Round2(varCt * Round2(5 / 100,
                    -2), 0)
                    / 10))
                    else   if (varJongbeul = 3) then  // ��ȣ2��
                     result := 1000 + (10 *
                    Floor(Round2(varCt * Round2(15 / 100,
                    -2), 0)
                    / 10));

                end ;


              end;
              //*****
            end
            else if varJongbeul = 5 then //��ȣ4��
            begin
              result := 0;
            end
            else if varJongbeul = 6 then //��ȣ8��
            begin
              //2012.7.1  Ʋ�� ��ȣ8���� 30% ���κδ�
              if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth = true))
                and (anotherTeeth = true) then
              begin

                if (boolWonwe) or (nBoMan = 0) then
                begin //(ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��

                  if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                    '2017-11-01') then
                  begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%

                    result :=
                      100 * Floor((varDenture * 0.15) / 100) +
                      250;
                  end
                  else
                  begin
                    result :=
                      100 * Floor((varDenture * 0.3) / 100) +
                      250;
                  end;

                  varjangeGeum := 750;
                end
                else
                begin

                  if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                    '2017-11-01') then
                  begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                    result :=
                      100 * Floor((varDenture * 0.15) / 100) +
                      750;

                  end
                  else
                  begin
                    result :=
                      100 * Floor((varDenture * 0.3) / 100) +
                      750;

                  end;
                  varjangeGeum := 750;
                end;
              end
              else if ((artTeeth = true) or (AfterArtTeeth = true) or (implTeeth =
                true)) then
              begin

                if ((artTeeth = true) or (AfterArtTeeth = true)) and (varDate >=
                  '2017-11-01') then
                begin //Ʋ�� ���κδ� ����30% ������ C 5%  E, F 15%  ��ȣ1�� 5% ��ȣ2�� 15%
                  result :=
                    100 * Floor((varDenture * 0.15) / 100);
                end
                else
                begin
                  result :=
                    100 * Floor((varDenture * 0.3) / 100);
                end;
              end
              else
              begin

                if (boolWonwe) or (nBoMan = 0) then
                begin //(ó�����̹���� ��ǰ��������(����ī��,�ֻ�൵ ����) 1,000��
                  result := 250;
                  varjangeGeum := 750;
                end
                else
                begin
                  result := 750;
                  varjangeGeum := 750;
                end;
              end;
              //*****

            end
            else //�Ϲ�
            begin
              result := varChong;
            end;

            if Bohum100='1' then
              result :=  varChong;

        end;

  if varGongSang = true then //�����̸� ���κδ� = 0
    result := 0;

  if varChong = 0 then //�������=0 �̸� ����=0
    result := 0;

  if (varJongbeul=7) or (varJongbeul=8) then
     result := 0;

  {   //û���� = ������ - ��ֱ�� - ���κδ� + ��䰡���
      varChung :=
           varChong
             -  Round(varjangeGeum)
             - result;  //���κδ��

   }

end;

procedure calcSatGasanGeum(hkind: string; // ��䰡��� ���
  varDate: string; //YYYY-MM-DD
  varTime: string; //hh:mm:ss
  varChojae: integer;
  varAge: integer;
  isSat: boolean); //����Ͽ��� - ��䰡������

begin
  if hkind = '����' then
  begin
    isSat := false;
    isSat := false;
    SatGasangeum := 0;
    SatGasangeum2 := 0;
  end
  else
  begin

    //��䰡��
    if DayOfWeek(strtodate(varDate)) = 7 then //����ϸ� ���
    begin

      //     if  chbYagan.Checked  = false then
      //       cbSatMorningGasan.checked := true
      //     else
      //       cbSatMorningGasan.checked := false;

      if (varDate >= '2013-10-01') and
        (varDate <= '2014-09-30') then
      begin

        SatGasangeum := GetJinchalRyo_SatGasan(hKind,
          varChojae + 1,
          varAge,
          strtoDate(varDate),
          false,
          false,
          false,
          false,
          false);

        SatGasangeum2 := SatGasangeum;

      end
      else

        //      if     ( varDate = now )   and   (  formatDateTime('hh:mm:ss', now ) <= '12:00:00') then
        {//            if     varTime  <= '12:00:00' then} if varTime >=
          '00:00:00' then

          isSat := true;

      if isSat = true then
      begin
        if (varDate >= '2014-10-01') and
          (varDate <= '2015-09-30') then
        begin
          SatGasangeum := GetJinchalRyo_SatGasan(hkind, varChojae + 1,
            varAge, strtodate(varDate),
            false,
            false,
            false,
            false,
            false);

          SatGasangeum2 := satGasangeum div 2;

        end
        else if (varDate >= '2015-10-01') then
        begin
          SatGasangeum := GetJinchalRyo_SatGasan(hkind, varChojae + 1,
            varAge, strtodate(varDate),
            false,
            false,
            false,
            false, false);

          SatGasangeum2 := SatGasangeum;

        end;
      end;
    end
    else
    begin
      isSat := false;
      SatGasangeum := 0;
      SatGasangeum2 := 0;
    end;
  end;
end;

function GetJinchalRyo(varjinchalRyoCode: string;
  dWorkDate: string; bohumkind : integer= 0): Integer;
begin
  result := 0;
  {  with dm_f.sqlTemp14 do
    begin
      close;
      sql.Clear;
      sql.Add('getsugabasic :su_key,:jin_day');
      paramByName('Su_Key').AsString := varjinchalRyoCode;
      paramByName('jin_day').AsString := dWorkDate;
      open;
      if not isEmpty then
      begin
        result := fieldByName('bo_dan').AsInteger;
      end;
    end;
          }
  with dm_f.sqlTemp14 do
  begin
    { Close;
     Sql.Clear;
     Sql.Add('select * from sugabasic where su_key= :su_key and su_apply =:jin_day');
     ParamByName('Su_Key').AsString := varjinchalRyoCode;
     //su_apply�� 2013-01-01�̶� �������� ������ �ִ�.
     //������� �ظ��� 1��1�� �����ȴ�.
     //�������� ������ ���� 1��1���̴�.
     ParamByName('jin_day').AsString :=copy(dWorkDate,1,4)+ '-01-01' ;
     Open;
     if not isEmpty then
     begin
          Result := FieldByName('bo_dan').AsInteger;
     end
     else
     begin
   }

    Close;
    Sql.Clear;
//    Sql.Add('select top 1 * from suga_history where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');

    Sql.Add(' select bo_dan, il_dan, su_apply from suga where su_key=:su_key and (sugu1 <>''����'' or sugu1 is null ) and  su_apply<=:jin_day    ');
    Sql.Add(' union all                                                                                                                         ');
    Sql.Add(' select bo_dan, il_dan,su_apply from suga_history where su_key=:su_key and  su_apply<=:jin_day                                            ');
    Sql.Add(' order by su_apply desc                                                                                                          ');

//    Sql.Add('select top 1 * from suga where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
    ParamByName('Su_Key').AsString := varjinchalRyoCode;
    ParamByName('jin_day').AsString := dWorkDate;
      //copy(dWorkDate,1,4)+ '-01-01';// FormatDateTime('YYYY-01-01',  dWorkDate);
    Open;
    if not isEmpty then
    begin
       case bohumkind of
       1:  Result := FieldByName('bo_dan').AsInteger;
       4:  Result := FieldByName('il_dan').AsInteger;
       else  Result := FieldByName('bo_dan').AsInteger;

       end;
    end
    else
    begin
      Result := 0;
    end;
    // end;
  end;

end;

function GetJinchalRyo_SatGasan(hKind: string;
  nChoJae: Integer; //���籸��
  nAge: Integer; //����
  dWorkDate: TdateTime; //������
  varJange: boolean; //��ֱ���
  varGumjin: boolean; //�Ϲݰ���
  varFirst: boolean; //������ȯ��
  varYongUa: boolean; //�����ư���
  varYagan: boolean): integer; //�߰�)

var
  Code, San1, San2, San3, codekibon: string;
begin

  if DayOfWeek(dWorkDate) <> 7 then //����ϸ� ���
  begin
    result := 0;
    exit;
  end;

  if dWorkDate < strtodate('2013-10-01') then //2013-10-01 ����
  begin
    result := 0;
    exit;
  end;

  if varYagan = true then
  begin
    result := 0;
    exit;
  end;

  if hKind = '����' then
  begin
    //'AA109030' ��䰡�� �ڵ尡 ����...
    result := 0;
    exit;
  end;

  San3 := '0';

  San1 := '0';

  // ��ȣ8���̶�� ������ ��ְ����� ���� �ʴ´�.
  //(����μ�ø�� ���� ������ü,�������� ��) 2011.2.1
  if varJange = true then
    San1 := '9'; //�������� �����

  if nAge < 6 then
    San1 := '6'; // �Ҿư���

  San2 := '3'; // ��䰡��

  if ((nChojae = 1) or (nChojae = 3)) then //����
  begin
    if hKind = '����' then
      code := 'AA109'
    else if hKind = '���պ���' then
      code := 'AA157'
    else
      code := 'AA154';
  end
  else if ((nChojae = 2) or (nChojae = 4)) then //����
  begin
    if hKind = '����' then
      code := 'AA209'
    else if hKind = '���պ���' then
      code := 'AA257'
    else
      code := 'AA254';
  end;

  codekibon := code;
  Code := Code + San1 + San2 + San3;

  if Copy(code, 6, 3) = '000' then
    Code := Copy(Code, 1, 5);

  // San1 := '9'; //�������� �����
  // San1 := '6'; // �Ҿư���
  // San2 := '1'; //�ɾ߰���
  // San2 := '5'; //�����ϰ���
  //san1     san2      san3
  //0        0          0
  //9 ���   1 �ɾ�     2 �����ư���
  //6 �Ҿ�   5 ����     3 �Ϲݰ���
  //                    4 ������ȯ��

  if (varYongUa) and (San1 = '6') then //������ �ǰ����� ���� ����
  begin
    san3 := '2';
    if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
      Code := codekibon + San1 + San2 + San3; //602, 612, 652
  end
  else if varGumjin then //�Ϲݰǰ����� ���� ����
  begin
    san3 := '3';
    if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
      Code := codekibon + San1 + San2 + San3; //003, 013, 053; 903, 913, 953
  end
  else if varFirst then //������ȯ�� �ǰ����� ���� ����
  begin
    san3 := '4';
    if (nChojae = 1) or (nChojae = 2) or (nChojae = 3) or (nChojae = 4) then
      Code := codekibon + San1 + San2 + San3; // 004, 014, 054; 904, 914, 954
  end;

  with dm_f.sqlTemp14 do
  begin
    { Close;
     Sql.Clear;
     Sql.Add('select * from sugabasic where su_key= :su_key ');
     ParamByName('Su_Key').AsString := Code;
     Open;
     if not isEmpty then
        begin
             Result :=  FieldByName('bo_dan').AsInteger;
        end
        else
            Result := 0;  }

    Close;
    Sql.Clear;
 //   Sql.Add('select top 1 * from suga_history where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
      Sql.Add('select top 1 * from suga where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
    ParamByName('Su_Key').AsString := Code; // varjinchalRyoCode;
    ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD', dWorkDate);
      //copy(dWorkDate,1,4)+ '-01-01';// FormatDateTime('YYYY-01-01',  dWorkDate);
    Open;
    if not isEmpty then
    begin
      Result := FieldByName('bo_dan').AsInteger;
    end
    else
    begin
      Result := 0;
    end;
  end;


end;


function MakeJinchalRyoCode(nChoJae: Integer; nAge: Integer;
  dWorkDate: TDateTime; jange: boolean;
  iGumjin:integer;
//  yongua: boolean;
//  ilban: boolean;
//  ifirst: boolean;
  isSat: boolean = false): string;
var
  Code, San1, San2, San3, codekibon: string;
begin
//  result := 'AA100'; // dental �����������ڵ�
    result := 'AA154';   // medical �����������ڵ�
  San3 := '0';

  San1 := '0';

  // ��ȣ8����(����μ�ø�� ���� ������ü,�������� ��) 2011.2.1

  if jange = true then
    San1 := '9'; // �������� �����
  if (nAge < 6) and (nAge > 0) then
    San1 := '6'; // �Ҿư���

  if nChojae in [1, 2, 5, 6] then
  begin
    San2 := '0';
  end
  else
  begin
    San2 := '1'; // �ɾ߰���
  end;

  if DayOfWeek(dWorkDate) = 1 then
  begin
    San2 := '5'; // ���ϰ���
  end
  else
  begin
    with dm_f.sqlTemp14 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from gonghyu where gh_day=:gh_day');
      paramByName('gh_day').AsString := formatDatetime('yyyy-mm-dd', dWorkDate);
      open;
      First;
      if not isEmpty then
      begin
        San2 := '5'; // �����ϰ���
      end;
    end;

  end;

  if isSat = true then // ��䰡��
    San2 := '3';

  if nChojae in [1, 3, 7] then //if ((nChoJae = 1) or (nChoJae = 3)) then
  begin
    if configvalue.varGubun = '����' then // ġ������
      Code := 'AA109'
    else if configvalue.varGubun = '2' then
      Code := 'AA157' // �������������
    else
      Code := 'AA154';// 'AA100'; // ġ���ǿ�
  end
  else if nChojae in [2, 4, 8] then // ((nChoJae = 2) or (nChoJae = 4)) then
  begin
    if configvalue.varGubun = '����' then //'1'
      Code := 'AA209'
    else if configvalue.varGubun = '2' then
      Code := 'AA257'
    else
      Code := 'AA254';//'AA200';
  end
  else
  begin
    if configvalue.varGubun = '����' then // ġ������
      Code := 'AA109'
    else if configvalue.varGubun = '2' then
      Code := 'AA157' // �������������
    else
      Code := 'AA154';// Code := 'AA100'; // ġ���ǿ�

  end;


  codekibon := Code;

  // ***********  2011.7   ������ �ǰ����� ����
  // ***********  2012.4   �Ϲ� �ǰ����� ����  , ������ȯ��
  // San1 := '9'; //�������� �����
  // San1 := '6'; // �Ҿư���
  // San2 := '1'; //�ɾ߰���
  // San2 := '5'; //�����ϰ���
  // san1     san2      san3
  // 0        0          0
  // 9 ���   1 �ɾ�     2 �����ư���
  // 6 �Ҿ�   5 ����     3 �Ϲݰ���
  // 4 ������ȯ��
  case iGumjin of
     2:    // ������ �ǰ����� ���� ����
        begin
            if  (San1 = '6') then
                San3 := '2';
        end;
     3:   // �Ϲݰǰ����� ���� ����
        begin
           San3 := '3';
        end;
     4:    // ������ȯ�� �ǰ����� ���� ����
        begin
           San3 := '4';
        end;
     5:    // ���˾�
        begin
           San3 := '5';
        end;
  end;
//  if (yongua = true) and (San1 = '6') then // ������ �ǰ����� ���� ����
//    San3 := '2';
//  if ilban = true then // �Ϲݰǰ����� ���� ����
//    San3 := '3';
//  if ifirst = true then // ������ȯ�� �ǰ����� ���� ����
//    San3 := '4';

  if nChojae in [1, 2, 3, 4, 7, 8] then //����, ����, ����, ����, ��+����, ��+����
    result := codekibon + San1 + San2 + San3; // 602, 612, 652

  if copy(result, 6, 3) = '000' then
    result := copy(result, 1, 5);


   if nChojae = 5 then  //������ ���� ����.
  begin
      code := '';
      result:= '';
  end;

end;




// jinryo_O �ҷ����� ..........................................................

procedure SetJinryo_O(
     aGrid:TadvStringGrid;
     sChart,
     sTeam: string;
     isInPat:string;
     jubsu_id:string;
     out sanTeakCode: string;
     out juSangRow    : integer;
     sJin_day:string='';
     sJin_day2:string='');
var
     i: Integer;
begin

     aGrid.removeRows(1, aGrid.rowcount -1 );
     if jubsu_id='' then
     begin
         aGrid.RowCount := 10;

         exit;
     end;


     juSangRow := 0;

     with dm_f.sqlTemp13 do
     begin

          Close;
          Sql.Clear;
          Sql.Add('select * from jinryo_o ');
          Sql.Add('where jubsu_id=:jubsu_id');//chart=:chart and jin_day=:jin_day  and isInPat=:isInPat');


//          if trim(sTeam) <> '' then
//          begin
//           Sql.Add(' and team=:team ');
//           ParamByName('team').AsString    := sTeam;
//
//          end;
           Sql.Add('order by jin_order');
   //       ParamByName('chart').AsString := sChart;
   //   //    ParamByName('team').AsString := sTeam;
   //       ParamByName('jin_day').AsString := sJin_Day;
   //       ParamByName('isInpat').AsString := isInpat;
            ParamByName('jubsu_id').AsString := jubsu_id;
          Open;
          First;
          if not isEmpty then
          begin
              i:= 1;
              aGrid.RowCount := 10;
               while not eof do
               begin

                   // aGrid.addrow;
                   // i:= aGrid.RowCount -1 ;
                   if FieldByName('jusang'        ).AsString = '1' then
                   begin
                       aGrid.AddRadioButton(0, i , true );
                       juSangRow := i;
                      // aGrid.AddCheckBox(0, i , true, true)
                   end
                    else
                    begin
                      //   aGrid.AddCheckBox(0, i , false, true);
                        aGrid.AddRadioButton(0, i , false ) ;
                    end;


                    aGrid.Cells[1, i] :=   FieldByName('Jin_Order' ).AsString;
                    aGrid.Cells[2, i] :=   FieldByName('p1'        ).AsString;
                    aGrid.Cells[3, i] :=   FieldByName('p2'        ).AsString;
                    aGrid.Cells[4, i] :=   FieldByName('p3'        ).AsString;
                    aGrid.Cells[5, i] :=   FieldByName('p4'        ).AsString;
                    aGrid.Cells[6, i] :=   FieldByName('s_key1'    ).AsString;
                    aGrid.Cells[7, i] :=   FieldByName('s_key2'    ).AsString;
                    aGrid.Cells[8, i] :=   FieldByName('s_key3'    ).AsString;
                    aGrid.Cells[9, i] :=   FieldByName('kwamok'    ).AsString;
                    aGrid.Cells[10, i] :=  FieldByName('sang1'     ).AsString;
                    aGrid.Cells[11, i] :=  FieldByName('sang2'     ).AsString;
                    aGrid.Cells[12, i] :=  FieldByName('sang3'     ).AsString;
                    aGrid.Cells[13, i] :=  FieldByName('Doc_code'  ).AsString;
                    aGrid.Cells[14, i] :=  FieldByName('myunhu'    ).AsString;
                    aGrid.Cells[15, i] :=  FieldByName('tJung'     ).AsString;
                    aGrid.Cells[16, i] :=  FieldByName('sDay'      ).AsString;
                    aGrid.Cells[17, i] :=  FieldByName('fDay'      ).AsString;
                    aGrid.Cells[18, i] :=  FieldByName('ID'        ).AsString;





                    //
                    if (FieldByName('jusang'        ).AsString = '1') and
                           (trim(FieldByName('tJung'     ).AsString) <> '')  then
                     sanTeakCode := trim(FieldByName('tJung').AsString );

                    i:= i+1;
                    Next;
             end;
          end
          else
          begin

             aGrid.RowCount := 10;

          end;
         // aGrid.AutoNumberCol(0);
     end;
end;

//Delete Jinryo_S with jubsu_ID
function DeleteJinryo_s(jubsu_id : string):boolean;
var
    tempQuery : TuniQuery;
begin
   result:= false;
   try
                  tempQuery := TuniQuery.Create(nil);
                  tempQuery.Connection := Dm_f.UniConnection1;
                  with tempQuery do
                  begin
                    try
                      close;
                      Sql.Clear;
                      Sql.Add(' delete from jinryo_s  ');
                      Sql.Add(' where jubsu_id=:jubsu_id ');

                      ParamByName('jubsu_id').AsString    := jubsu_id;
                      execsql;

                      result:= true;
                    except

                    end;

                  end;
   finally
         tempQuery.free;
   end;
end;

function  loadDanga(varsukey: string;varJinDay : string): integer;
var
   nDanga : integer;
begin
  result := 0;
  with dm_f.sqlTemp12 do
  begin
    close;
    sql.Clear;
    //sql.Add('select * from suga');

//    sql.Add('select  su_key , bo_dan, su_apply   from suga                   ');
//    sql.Add('where su_key =  :su_key  and su_apply  <=:jin_day              ');
//    sql.Add('union                                                          ');
//    sql.Add('select su_key , bo_dan, su_apply   from suga_history            ');
//    sql.Add('where su_key =  :su_key   and su_apply  <=:jin_day  and bo_dan <> 0           ');
//    sql.Add('order by su_apply desc                                         ');

    sql.Add('select  su_key , bo_dan, su_apply   from suga                   ');
    sql.Add('where su_key =  :su_key  and su_apply  <=:jin_day              ');
    sql.Add('order by su_apply desc                                         ');


  //  sql.Add('where su_key=:su_key order by su_key desc, bo_day desc');

    paramByName('su_key').AsString := varsukey;
    paramByName('jin_day').AsString := varJinDay;
    open;
    first;
    if not isEmpty then
    begin
      if trim(fieldByName('bo_dan').AsString) <> '' then
      begin
        nDanga   := fieldByName('bo_dan').AsInteger;
        result := nDanga;// fieldByName('bo_dan').AsInteger
      end
         else
           result := 0;
    end;

  end;
end;




function  loadSuguValue(varsukey: string;varJinDay : string): TsuguValue;
begin
  result.newSuGu1 := '';
  result.newSuGu2 := '';
  result.newSuGu3 := '';
  with dm_f.sqlTemp12 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from suga');
    sql.Add('where su_key =  :su_key  and su_apply  <=:jin_day              ');
    sql.Add('order by su_apply desc                                         ');
    paramByName('su_key').AsString := varsukey;
    paramByName('jin_day').AsString := varJinDay;
    open;
    first;
    if not isEmpty then
    begin
           result.newSuGu1 := fieldByName('su_gu1').AsString;
           result.newSuGu2 := fieldByName('su_gu2').AsString;
           result.newSuGu3 := fieldByName('su_gu3').AsString;

    end;

  end;
end;

//Jinryo_S
procedure SetJinryo_s(
       jubsu_id : string;
       aGrid:TadvStringGrid;
       sChart: string;
       sTeam: string;
       sDoc: string;
       isInPat:string;
       sJin_day:string='';
       sJin_day2:string='';
       iChungGuKind : integer= 0 );  // 0:
var
     i: Integer;
     su_key : string;
     nDanGa : integer;
     newSuguValue: TsuguValue;

    //���� �ڵ�� ������.
    SanCode  : string;
    SugaCode : string;
    Danga    : string;
    tempQuery : TuniQuery;

    aJinDay : string;

begin
   try
//        aGrid.removerows(1, aGrid.rowCount-1);
         aGrid.LockUpdate :=true;
          case iChungGuKind of  //û�����˿���
              0:   //���ῡ�� ����
              begin

                 aGrid.RemoveRows(1, aGrid.RowCount-1 );

              end;

              1, 3:   //û������, ó�溸�⿡�� ��  //û�� ���� ��ȸ�ּ��� �������ڵ� ������ RemoveRows����.
              begin

                 aGrid.RemoveRows(1, aGrid.RowCount-1 );

              end;
              2:   //  ó�溸�⿡�� ��
              begin


              end;

          end;


//    tempQuery := TuniQuery.Create(nil);
//    tempQuery.Connection := Dm_f.UniConnection1;


     with dm_f.sqlTemp13 do
     begin
          Close;
          Sql.Clear;
          Sql.Add(' select * from jinryo_s                  ');
          Sql.Add(' where  chart=:chart and isInPat=:isInPat ');// and modiKind <> ''D'' ');

          case iChungGuKind of  //û�����˿��� ����
              1:
              begin
                  Sql.Add(' and  jubsu_id=:jubsu_id    and modiKind <> ''D''             ');
                   ParamByName('jubsu_id').AsString    := jubsu_id;
                  Sql.Add(' and su_gu1 <> ''9'' and ( gub_gu <> ''2'' and su_gu1<>''3'' and su_gu1<>''4'' ) ');
              end ;
              0, 2:  //���� , ó�溸�⿡�� ����
              begin
                   Sql.Add('  and modiKind <> ''D'' ');
                   Sql.Add(' and  jubsu_id=:jubsu_id                 ');
                   ParamByName('jubsu_id').AsString    := jubsu_id;

              end;
              3:  //ȯ�� ���� ��ü
              begin

              end;
            end;

//          if trim(sTeam) <> '' then
//          begin
//           Sql.Add(' and team = :team ');
//           ParamByName('team').AsString    := sTeam;
//
//          end;
//          if trim(sDoc) <> '' then
//          begin
//           Sql.Add(' and doc_code = :doc_code ');
//           ParamByName('doc_code').AsString    := sDoc;
//
//          end;

          if (isInPat ='0')
             and  (sJin_day  <> '' )
             and  (sJin_day2 <> '' )then   //�Կ��� �ƴҶ��� ��¥ �˻�
          begin
                if   sJin_day2 <> '' then
                begin
                     sql.Add(' and jin_day >=:jin_day and jin_day <=:jin_day2 ');
                     ParamByName('jin_day2').AsString := sJin_day2;
                end
                else
                begin
                     sql.Add(' and jin_day=:jin_day  ');
                end;
                 ParamByName('jin_day').AsString := sJin_day;
          end;



          sql.add(' order by jin_day, sort_key'); //and (su_gu3<>''09'' or jin_danga>0)

          ParamByName('isInPat').AsString := isInPat;
          ParamByName('chart').AsString   := sChart;

          Open;
          First;

          if not isEmpty then
          begin


               while not eof do
               begin

                         su_key := FieldByName('Su_key').AsString ;
                         aJinDay :=  FieldByName('jin_Day').AsString  ;



                          case iChungGuKind of  //û������(1)���� �����̳�, ����(0,2)���� �����̳�.
                            1:   //û������ ����
                            begin//�ݾ��� 0�ΰ��� �н�.
                                  nDanga := loadDanga(su_key, aJinday);

                                  if nDanga  = 0 then
                                  begin
                                      next;
                                      continue;
                                  end;
                            end;
                          end;

                         aGrid.AddRow;
                          //  aGrid.CellTypes
                         aGrid.CellProperties[0, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[1, aGrid.RowCount -  1].ReadOnly := false;

                         aGrid.CellProperties[2, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[8, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[9, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[10, aGrid.RowCount -  1].ReadOnly := true;
                //         aGrid.CellProperties[11, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[12, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[13, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[14, aGrid.RowCount -  1].ReadOnly := true;
                         aGrid.CellProperties[15, aGrid.RowCount -  1].ReadOnly := true;



                    if (FieldByName('Su_gu1').AsString = '1') then
                    begin
                         aGrid.Cells[0, aGrid.RowCount -  1] :=  '���';
                    end
                    else
                         if (FieldByName('Su_gu1').AsString = '2') then
                         begin
                              aGrid.Cells[0, aGrid.RowCount - 1] := '����';
                         end
                         else
                              if (FieldByName('Su_gu1').AsString = '5') then
                              begin
                                   aGrid.Cells[0, aGrid.RowCount -  1] := '100';
                              end
                              else
                                   if (FieldByName('Su_gu1').AsString = '0') then
                                   begin
                                        aGrid.Cells[0, aGrid.RowCount - 1] :=  '99';
                                   end
                                   else
                                        if ((FieldByName('Su_gu1').AsString = '3') or
                                             (FieldByName('Su_gu1').AsString = '4')) then
                                        begin
                                             aGrid.Cells[0, aGrid.RowCount - 1] :=  '���';
                                        end
                                        else
                                        begin
                                             aGrid.Cells[0, aGrid.RowCount - 1] := 'GR';
                                        end;

                    aGrid.Cells[1, aGrid.RowCount - 1]   :=   FieldByName('user_Name').AsString;

                    aGrid.Cells[10, aGrid.RowCount - 1]  :=  FieldByName('Su_gu1').AsString;
                    aGrid.Cells[29, aGrid.RowCount - 1]  :=  FieldByName('Su_gu2').AsString;
                    aGrid.Cells[11, aGrid.RowCount - 1]  :=  FieldByName('Su_gu3').AsString;
                    aGrid.Cells[19, aGrid.RowCount - 1]  :=  FieldByName('su_key').AsString;

                    aGrid.Cells[30, aGrid.RowCount - 1]  :=  FieldByName('modiKind').AsString;



                      case iChungGuKind of  //û�����˿��� ��
                        0, 2:   //���ῡ�� ����
                        begin

          //                    nDanga := loadDanga(su_key, sJin_day);
                              aGrid.ints[2, aGrid.RowCount - 1]  := FieldByName('jin_danga').AsInteger;
                                                        //����� �� �ܰ��� ���� �ʴ� ���� ����?
                               // := nDanga;//

                              aGubun :=  AGrid.Cells[0, aGrid.RowCount - 1];    //99 , ����, ���
                              aSuKey :=  AGrid.Cells[19, aGrid.RowCount - 1];
                              aSuGu1 :=  AGrid.Cells[10, aGrid.RowCount - 1];
                              aSuGu2 :=  AGrid.Cells[29, aGrid.RowCount - 1];
                              aSuGu3 :=  AGrid.Cells[11, aGrid.RowCount - 1];

                        end;

                        1:   //û�� ���� ��ȸ�ּ��� �������ڵ� ������
                        begin

                              aGubun :=  AGrid.Cells[0, aGrid.RowCount - 1];    //99 , ����, ���
                              aSuKey :=  AGrid.Cells[19, aGrid.RowCount - 1];

//                              nDanga := loadDanga(su_key, sJin_day);
//
//                              if nDanga  = 0 then
//                              begin
//                                  next;
//                                  continue;
//                              end;
                              AGrid.Cells[0, aGrid.RowCount - 1]:= aGubun +'('+inttostr(aGrid.RowCount - 1)+')';

                              aGrid.ints[2, aGrid.RowCount - 1]  := nDanga;//


                              //TODo: �� saga���� ���� ����������?
                              //��Ź�˻縦�ϴ� ������ ��� ��ü�˻�� ������ ��쵵 �ִ�. �̶���
                              //su_gu3�� 29-->26���� �Ǵ� 26-->29�� �����ؾ� �Ѵ�.
                              //û�����˿��� ���� �� ������ �� �ֵ��� ����.
                              newSuguValue := loadSuguValue(su_key, aJinday);

                              aSuGu1 :=  newSuguValue.NewsuGu1; //AGrid.Cells[10, aGrid.RowCount - 1];
                              aSuGu2 :=  newSuguValue.NewsuGu2; //AGrid.Cells[29, aGrid.RowCount - 1];
//                              aSuGu3 :=  newSuguValue.NewsuGu3; //AGrid.Cells[11, aGrid.RowCount - 1];

//                              aSuGu1 :=   AGrid.Cells[10, aGrid.RowCount - 1];
//                              aSuGu2 :=   AGrid.Cells[29, aGrid.RowCount - 1];
                              aSuGu3 :=   AGrid.Cells[11, aGrid.RowCount - 1];



                              //ToDO: ���� �ڵ�� ����ǿ��� ������ �Ѵ�.
                              //������ LA322, LA321 �� ���� ���� �ٴ´�.

                              // ���⼭ �����ڵ带 �ٽñ��Ѵ�.
                              // ����, �Ҿ�, �߰� ���� �ڵ� �߰�
//                              sanCode := loadGasanCode(sJin_day,
//                                 su_key,
//                                 formatFloat('00',aSuGu2),
//                                 formatFloat('00',aSuGu3),
//                                 varChojae,
//                                 age,
//                                 varsoa);
//
//                              if (sanCode <> '') then
//                              begin
//                                SugaCode := su_key + sanCode;
//                                if copy(sanCode, 2, 1) = '1' then
//                                  BufferNeyuk('2', '', JulNo, 'JS010', varSimyaTime); // �߰� ����
//
//                              end
//                              else
//                                SugaCode := su_key;
//
//                              // SugaCode�� �ٲ�� ���⼭ �ܰ��� �ٽñ��Ѵ�.
//                              if SugaCode <> su_key then
//                                    Danga := stringreplace(formatFloat('#.00',
//                                          loadDanga( SugaCode,varJinday))



                        end;

                    end;


                    aGrid.Cells[10, aGrid.RowCount - 1] := aSuGu1;// FieldByName('Su_gu1').AsString;
                    aGrid.Cells[11, aGrid.RowCount - 1] := aSuGu3;// FieldByName('Su_gu3').AsString;
                    aGrid.Cells[29, aGrid.RowCount - 1] :=aSuGu2;//  FieldByName('Su_gu2').AsString;

                    aGrid.Cells[3, aGrid.RowCount - 1]  := FieldByName('jin_qty').AsString; //1ȸ�� (����)
                                                              //  3 1ȸ�� (����)
                                                              //  4 ȸ��
                                                              //  5 �ϼ�

//                    if  (FieldByName('Su_gu3').AsString =  '09') or
//                        (FieldByName('Su_gu3').AsString =  '10') or
//                        (FieldByName('Su_gu3').AsString =  '12') or
//                        (FieldByName('Su_gu3').AsString =  '13') or
//                        (FieldByName('Su_gu3').AsString =  '19') or  //������
//                        (FieldByName('Su_gu3').AsString =  '14')
                    if  (aSuGu3 =  '09') or
                        (aSuGu3 =  '10') or
                        (aSuGu3 =  '12') or
                        (aSuGu3 =  '13') or
                        (aSuGu3 =  '19') or  //������
                        (aSuGu3 =  '14')
                     then
                    begin
                         aGrid.AddButton(1, aGrid.RowCount-1,20, 18, 'DI' ,ADVGrid.haRight, ADVGrid.vaCenter);
                         aGrid.AddButton(26, aGrid.RowCount-1,50, 18, 'DrugInfo' ,ADVGrid.haCenter, ADVGrid.vaCenter);
                    end;


                    if (aSuGu3 =  '09')
                     then
                    begin
                         aGrid.Cells[4, aGrid.RowCount - 1] := FieldByName('div').AsString;
                         aGrid.Cells[16, aGrid.RowCount - 1] := FieldByName('jin_Ilsu').AsString;
                    end
                    else
                    begin
                         aGrid.Cells[4, aGrid.RowCount - 1] :=   FieldByName('jin_ilsu').AsString;
                    end;






                    if ((aGrid.cells[22, aGrid.RowCount - 1] <  '2004-05-01') and
                         (FieldByName('su_key').AsString = 'L7201006')) then
                         aGrid.ints[5, aGrid.RowCount - 1] := 50
                    else
                         aGrid.ints[5, aGrid.RowCount - 1] :=  FieldByName('dan_qty').AsInteger; //�ϼ�

//                   if  FieldByName('gub_gu').AsString <> '' then
//                   begin
//                       aGrid.ints[7, aGrid.RowCount -1]      :=  FieldByName('gub_gu').AsInteger;//�޿�����
//                   end
//                   else
//                   begin
//                       aGrid.cells[7, aGrid.RowCount -1]     :=  FieldByName('gub_gu').AsString;//�޿�����
//                   end;


//                   if  FieldByName('gub_gu').AsString <> '' then
//                   begin
//                       aGrid.cells[7, aGrid.RowCount -1]     :=  FieldByName('gub_gu').AsString;//�޿�����
//                   end
//                   else
//                   begin
//
//                       aGrid.cells[7, aGrid.RowCount -1]     :=  '0';//�޿�����
//                   end;


                   if  FieldByName('gub_gu').AsString <> '' then
                   begin
                       aGrid.cells[7, aGrid.RowCount -1]     :=  FieldByName('gub_gu').AsString;//�޿�����
                   end
                   else
                   begin

                       aGrid.cells[7, aGrid.RowCount -1]     :=  '0';//�޿�����
                   end;



                    aGrid.Cells[8, aGrid.RowCount -1]   := FieldByName('Modality').AsString;
                    aGrid.Cells[9, aGrid.RowCount - 1]  :=   FieldByName('user_key').AsString;

                    aGrid.Cells[27, aGrid.RowCount - 1] :=  FieldByName('Su_sobulru').AsString;

                    aGrid.Cells[28, aGrid.RowCount - 1] :=  FieldByName('tjungcode').AsString;

                    aGrid.Cells[12, aGrid.RowCount - 1] :=  FieldByName('jin_soa').AsString;
                    aGrid.Cells[13, aGrid.RowCount - 1] :=  FieldByName('jin_simya').AsString;
                    aGrid.Cells[14, aGrid.RowCount - 1] :=  FieldByName('iOrder').AsString;
                    aGrid.Cells[15, aGrid.RowCount - 1] :=  FieldByName('sort_key').AsString;



                    aGrid.Cells[17, aGrid.RowCount - 1] := FieldByName('Hwakin_key').AsString;
                    aGrid.Cells[18, aGrid.RowCount -1] := FieldByName('jins_key').AsString;


                    aGrid.Cells[20, aGrid.RowCount - 1] := FieldByName('Su_kor_name').AsString;
                    aGrid.Cells[21, aGrid.RowCount - 1] := FieldByName('gasan').AsString;
                    aGrid.Cells[22, aGrid.RowCount - 1] := FieldByName('jin_day').AsString;
                    aGrid.Cells[23, aGrid.RowCount - 1] := formatdatetime('hh:nn:ss',FieldByName('jin_time').asDatetime);

                    aGrid.Cells[24, aGrid.RowCount - 1] := FieldByName('su_eng_name').AsString;
                    aGrid.Cells[25, aGrid.RowCount - 1] := FieldByName('except_code').AsString;

                    aGrid.Cells[31, aGrid.RowCount - 1] := FieldByName('group_Key').AsString;
                    aGrid.Cells[32, aGrid.RowCount - 1] := FieldByName('wonweNo').AsString;




                 //   nOrder :=  AGrid.ints[14, i];
                 //   nilsu  :=  AGrid.ints[4, i];
                 //   nPrice :=  AGrid.ints[6, i];
                    //aGasan :=  AGrid.cells[21, i];
                    //aGubGu :=  AGrid.cells[7, i];
                    //aExtra :=  trim(AGrid.cells[25, i]);
                    //aSoBulru := trim(AGrid.cells[27, i]);  //��ǰ �з�

                    aGrid.ints[6, aGrid.RowCount - 1] :=           //�ݾ� = �ܰ� * ����* �ϼ�
                          CalcKumak(aGrid.cells[19, aGrid.RowCount - 1],//suKey:string;
                                  aGrid.Ints[2, aGrid.RowCount - 1],//nDanga:integer ;
                                  aGrid.floats[3, aGrid.RowCount - 1], //nQty:integer ;
                                  aGrid.Ints[4, aGrid.RowCount - 1],//nilsu:integer ;
                                  aGrid.Ints[5, aGrid.RowCount - 1],//nDanQty:integer ;
                                  aGrid.cells[22, aGrid.RowCount - 1],//jin_Day FormatDateTime('YYYY-MM-DD', dMain.date),
                                  aGrid.cells[12, aGrid.RowCount - 1],//soaGasan : string;
                                  aGrid.cells[13, aGrid.RowCount - 1],//simGasan : string;
                                  true,
                                  aGrid.cells[25, aGrid.RowCount - 1],
                                  naiCalc(ma_jumin, aGrid.cells[22, aGrid.RowCount - 1]));//FormatDateTime('YYYY-MM-DD', dMain.date));
                                 // lblAge.caption ) ;



                    Next;
               end;
          end
          else
          begin
            //   aGrid.RowCount := 100;
          end;





        //  if LblAge.Caption <> '' then
        //  begin
        //      JinryoBiSet;
        //   end;



     end;
   finally
       aGrid.LockUpdate := false;
   end;
end;



function loadChojae(chart:string; jinday:Tdatetime) : integer;
begin

     dm_f.sqlTemp13.Close;
     dm_f.sqlTemp13.Sql.Clear;
     dm_f.sqlTemp13.Sql.Add('        select distinct jin_day from jinryo_s where chart=:chart and jin_day < :jin_day ');
     dm_f.sqlTemp13.Sql.Add(' union  select distinct jin_day from wonwe_p where chart=:chart and jin_day < :jin_day order by jin_day desc');
     dm_f.sqlTemp13.ParamByName('chart').AsString :=  chart;

     dm_f.sqlTemp13.ParamByName('jin_day').AsString :=   FormatDateTime('YYYY-MM-DD',jinday);
     dm_f.sqlTemp13.Open;
     dm_f.sqlTemp13.First;

     if not dm_f.sqlTemp13.isEmpty then
     begin
          // 2006.6.14
          if DaysBetween(jinday,
               dm_f.sqlTemp13.FieldByName('jin_day').AsDateTime) >
               strtoint(configvalue.varilsu) then
          begin
              result := 0; //����
          end
          else
          begin
              result := 1; //����
          end;

          // if (main_f.GogekLast = '') or (CompareDate(StrtoDate(main_f.GogekLast), dMain.Date) = 0) then
          //     if (varFirstDay = '') or
          //        (CompareDate(StrtoDate(varFirstDay),  jinday) = 0) then
          //        result := 0; //����

     end
     else
     begin
          result := 0; //����
     end;

     case result of
         0:
           begin

              if DayOfWeek(jinday) = 7 then //�����
              begin
                   if  not ((formatDateTime('hh:mm:ss', now) >= '08:30:00') and
                       (formatDateTime('hh:mm:ss', now) <= '12:00:00'))  then
                   begin
                        result := 2;
                   end;
              end
              else
              begin
                  if  not ((formatDateTime('hh:mm:ss', now) >= '08:30:00') and
                       (formatDateTime('hh:mm:ss', now) <= '18:00:00'))  then
                   begin
                        result := 2;
                   end;

              end;
           end;
         1:
           begin
              if DayOfWeek(jinday) = 7 then //�����
              begin
                   if  not ((formatDateTime('hh:mm:ss', now) >= '08:30:00') and
                       (formatDateTime('hh:mm:ss', now) <= '12:00:00'))  then
                   begin
                        result := 3;
                   end;
              end
              else
              begin
                  if  not ((formatDateTime('hh:mm:ss', now) >= '08:30:00') and
                       (formatDateTime('hh:mm:ss', now) <= '18:00:00'))  then
                   begin
                        result := 3;
                   end;

              end;

           end;
     end;
end;


function getSugaGeum(varCode:string; jinday:string; kind:string):integer;  //grdJx2
begin
     result:=0;
     with dm_f.sqlTemp14 do
     begin
            Close;
            Sql.Clear;
            Sql.Add('getsuga :su_key,:jin_day');
            ParamByName('su_key').AsString := varCode;
            ParamByName('jin_day').AsString := jinday;
            Open;
            First;
            if not isEmpty then
            begin
             //   case  kind of
                     case StrCase(kind, ['0', '2', '9', 'B'])
                  of
                  0:   Result := FieldByName('bo_dan').AsInteger ;
                  1:   Result := FieldByName('il_dan').AsInteger ;
                  2:   Result := FieldByName('bo_dan').AsInteger ;  //80/100
                  3:   Result := FieldByName('bo_dan').AsInteger ;  //90/100
                end;
            end;
     end;
 {   with dm_f.sqlTemp14 do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from sugabasic where su_key= :su_key and su_apply =:jin_day');
          ParamByName('Su_Key').AsString := varCode;
          //su_apply�� 2013-01-01�̶� �������� ������ �ִ�.
          //������� �ظ��� 1��1�� �����ȴ�.
          //�������� ������ ���� 1��1���̴�.
          ParamByName('jin_day').AsString := FormatDateTime('YYYY-01-01',  varDate);
          Open;
          if not isEmpty then
          begin
               Result := FieldByName('bo_dan').AsInteger;
          end
          else
          begin
              Close;
               Sql.Clear;
               Sql.Add('select top 1 * from suga_history where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
               ParamByName('Su_Key').AsString := Code;
               ParamByName('jin_day').AsString := FormatDateTime('YYYY-01-01',  dWorkDate);
               Open;
               if not isEmpty then
               begin
                    Result := FieldByName('bo_dan').AsInteger;
               end
               else
               begin
                    Result := 0;
               end;
          end;
     end;
     }
end;




function getSugaName(varCode:string):string;
begin
     result:='';
    with dm_f.sqlTemp14 do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga where su_key= :su_key ');
          ParamByName('Su_Key').AsString := varCode;
          Open;
          if not isEmpty then
          begin
               Result := FieldByName('su_kor_name').AsString;
          end ;
     end;
end;

function getSugaName_userKey(varCode:string):string;
begin
     result:='';
    with dm_f.sqlTemp14 do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga where user_key= :su_key ');
          ParamByName('Su_Key').AsString := varCode;
          Open;
          if not isEmpty then
          begin
               Result := FieldByName('su_kor_name').AsString;
          end ;
     end;
end;


function makeGaSanCode(
    sugakey,
    gasankind:string;
    opt1: string='';
    opt2: string='';
    opt3: string=''): string;
var
  aSuKey : string;
  suKind : string;
  san1, san2, san3: string;
  tempQuery: TuniQuery;
  isAcceptGasan : boolean;
begin

  isAcceptGasan := false;  // ���� ���� ��ƾ�� Ÿ�°͸� �����Ű��.

  aSuKey :=  upperCase( copy(sugakey,1,5)) ;

  suKind:= FindString(upperCase( copy(sugakey,1,2)));

  san1   := '0';
  san2   := '0';
  san3   := '0';

  case strCase( suKind, [
      'AA',
      'AB',
      'AC',
      'AD',
      'AG',
      'AI',
      'AJ',
      'AK',
      'AN',
      'AQ',
      'AU',
      'AZ',
      'D',
      'C',
      'CX',
      'CY',
      'CB',
      'E',
      'EX',
      'F',
      'FA',
      'FB',
      'FY',
      'E',
      'EX',
      'EZ',
      'EA',
      'C',
      'C',
      'CZ',
      'EB',
      'G',
      'HA',
      'HE',
      'HF',
      'HI',
      'HJ',
      'HC',
      'HX',
      'HY',
      'HZ',
      'HK',
      'HD',
      'HX',
      'HY',
      'HZ',
      'J',
      'KK',
      'KX',
      'X',
      'L',
      'LX',
      'LA',
      'LY',
      'LB',
      'LX',
      'NN',
      'M',
      'S',
      'MX',
      'SZ',
      'T',
      'U',
      'UX',
      'UY',
      'V',
      'UB',
      'A',
      'WJ',
      'WM',
      'WK',
      'WN',
      'WL',
      'WO']) of
      0:;  //'AA',
     1:;  //'AB',
     2:;  // 'AC',
     3:;  // 'AD',
     4:;  // 'AG',
     5:;  // 'AI',
     6:;  // 'AJ',
     7:;  // 'AK',
     8:;  // 'AN',
     9:;  // 'AQ',
     10:;  // 'AU',
     11:;  // 'AZ',
     12:  // 'D',
     begin
//              try
//                  tempQuery := TuniQuery.Create(nil);
//                  tempQuery.Connection := Dm_f.UniConnection1;
//
//                  with tempQuery do
//                  begin
//                      close;
//                      SQL.Clear;
//                      SQL.text :=
//                      'SELECT  CutCod, CutAdpDte, CutNam, CutSclGen, CutSclCar,                  ' + #10#13 +
//                      ' CutSclIns, CutSclWrk, CutSclGud, CutExpDte,                    '   + #10#13 +
//                      ' CutUpdDtm, CutUidCod, CutAssCod, CutCls, CutHspTyp, CutGcoNum, '   + #10#13 +
//                      ' CutGumCheGrade, CutHackYon,                                    '   +  #10#13 +
//                      ' CutByungRiYon                                                  '   + #10#13 +
//                      'FROM     ma_sutakupche  where  CutCod=:CutCod                   ';
//                      paramByName('CutCod').asString := sutakupche;
//                      open;
//                      if not isEmpty then
//                      begin
//                      if gasankind = 'LAB' then
//                        san3 := copy(fieldByname('CutGumCheGrade').asString, 1, 1);
//
//                      if (sutakgrade = 'H') and (fieldByname('CutHackYon').asString = 'Y')
//                      then
//                        san3 := '7';
//
//                      if (sutakgrade = 'B') and (fieldByname('CutByungRiYon').asString = 'Y')
//                      then
//                        san3 := '8';
//                      end;
//
//                  end;
//
//              finally
//
//                  tempQuery.Free;
//              end;
//
//              if Length(trim(sugakey)) = 5 then
//              Result := trim(sugakey) + san1 + san2 + san3
//              else if (Length(trim(sugakey)) = 8)
//               and not ((copy(sugakey, 1, 5) = 'D0001')  or (copy(sugakey, 1, 5) = 'D0002'))
//               and (copy(sugakey, 8, 1) <> '7')
//               and (copy(sugakey, 8, 1) <> '8') then
//               Result := copy(sugakey, 1, 7) + san3
//                else
//                    Result := sugakey;

     end;
     13:;  // 'C',
     14:;  // 'CX',
     15:;  // 'CY',
     16:;  // 'CB',
     17:;  // 'E',
     18:;  // 'EX',
     19:;  // 'F',
     20:;  // 'FA',
     21:;  // 'FB',
     22:;  // 'FY',
     23:;  // 'E',
     24:;  // 'EX',
     25:;  // 'EZ',
     26:;  // 'EA',
     27:;  // 'C',
     28:;  // 'C',
     29:;  // 'CZ',
     30:;  // 'EB',
     31:   // 'G',  ��缱 �ܼ��������ܷ�
           begin
               isAcceptGasan:=true;

               san1:= '0'; //6���̸� - 6
               san2:= '0';
               san3:= '6';  //�������а� ������ �ǵ�
           end;
     32:  // 'HA',��缱 Ư���������ܷ�
        begin

            if copy(sugakey,6,3) ='001' then    //�ǵ���
            begin
                   isAcceptGasan:=true;
               san1:= '0'; //6���̸� - 6
               san2:= '0';  //����
               san3:= '1';  //�ܺο��� �ǵ�

            end
            else
            begin
               isAcceptGasan:=true;
               san1:= '0'; //6���̸� - 6

               if  copy(sugakey,7,1) <> '' then

               san2:= copy(sugakey,7,1)  // 1,2,3  ���� ����, �ι�°����, �ι�°���� ����
               else
                  san2:= '0';


               san3:= '6';  //�������а� ������ �ǵ�
             end;
        end;
     33..34:  // 'HE',  'HF' ��缱 Ư���������ܷ�
        begin
            if copy(sugakey,6,3) ='001' then    //�ǵ���
            begin
                isAcceptGasan:=true;
               san1:= '0'; //6���̸� - 6
               san2:= '0';  //����
               san3:= '1';  //�ܺο��� �ǵ�

            end
            else
            begin
                isAcceptGasan:=true;
               san1:= '0'; //6���̸� - 6
               san2:= '0';  //����
               san3:= '6';  //�������а� ������ �ǵ�
            end;
        end;
     35:  //  'HI' ��缱 Ư���������ܷ� �Կ�
        begin
                isAcceptGasan:=true;
               san1:= '0'; //6���̸� - 6
               san2:= '0';  //2: 0.5�׽��� �̻� ~ 1.5�׽��� �̸�
               san3:= '5';  //ǰ�������˻� ����

        end;
     36:  // 'HJ',��缱 Ư���������ܷ� �ǵ�
        begin
             isAcceptGasan:=true;
             if (copy(sugakey,3,1) = '6')
            or  (copy(sugakey,3,1) = '7'  ) then    //�ܺο��� �ǵ��� 5�ڸ� �ڵ�
            begin
                san1:= '0';
                san2:= '0';
                san3:= '0';
            end
            else
            begin
                san1:= '0';  //6���̸� - 6
                san2:= '0';  // ����
                san3:= '4';  //�������а� ������ �ǵ�
            end;
        end;
     37:;  // 'HC',
     38:;  // 'HX',
     39:;  // 'HY',
     40:;  // 'HZ',
     41:;  // 'HK',
     42:;  // 'HD',
     43:;  // 'HX',
     44:;  // 'HY',
     45:;  // 'HZ',
     46:;  // 'J',
     47:;  // 'KK',
     48:;  // 'KX',
     49:;  // 'X',
     50:;  // 'L',
     51:;  // 'LX',
     52..55:   // 'LA', 'LY' �Ű����ܼ��� 'LB',  'LX'�Ű��ı�����
       begin
               isAcceptGasan:=true;
               san1:= '0';  //1:�Ż��� 4: 70���̻� A, B
               san2:= '0';  //8: ġ��, �ǿ� �߰�����
               san3:= '0';  //������պ���

       end;
     56:;  // 'NN',
     57:;  // 'M',
     58:;  // 'S',
     59:;  // 'MX',
     60:;  // 'SZ',
     61:;  // 'T',
     62:;  // 'U',
     63:;  // 'UX',
     64:;  // 'UY',
     65:;  // 'V',
     66:;  // 'UB',
     67:;  // 'A',
     68:;  // 'WJ',
     69:;  // 'WM',
     70:;  // 'WK',
     71:;  // 'WN',
     72:;  // 'WL',
     73:;  // 'WO'

   end;
  if isAcceptGasan = true then
  begin
        Result := san1 + san2 + san3;

        if Result='000' then
            Result:='';

  Result := aSuKey +  Result;
  end

  else
  begin
       Result:=  sugakey;
  end;

end;



function  LoadGroupName(groupCode: string): string;
var
  tempQuery: TuniQuery;
begin
  try
    tempQuery := TuniQuery.Create(nil);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from groupcode where groupcode=:GrKey ');
      paramByName('GrKey').asString := groupCode;
      open;
      Result := fieldByname('groupName').asString;
    end;

  finally
    tempQuery.Free;
  end;
end;



procedure LoadGroupCode(aStringGrid:TadvStringGrid);
var
  rCount, i: Integer;
begin


  aStringGrid.RemoveRows(1, aStringGrid.RowCount - 1);

  with Dm_f.sqlTemp do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from  groupCode    ');

    open;
    if not isEmpty then
    begin
      rCount := recordCount;
      aStringGrid.RowCount := rCount + 1;
      i := 1;
      while not eof do
      begin
        // for I := 1 to rCount do
        // begin
        aStringGrid.Cells[1, i] := fieldByname('groupCode').asString;
        aStringGrid.Cells[2, i] := fieldByname('groupName').asString;
        aStringGrid.Cells[3, i] := fieldByname('su_gu2').asString;
        i := i + 1;
        next;
        // end;
      end;
      aStringGrid.AutoNumberCol(0);
    end;
  end;

end;


function makeSutakSanCode(sugakey, gasankind, sutakupche,
  sutakgrade: string): string;
var
  san1, san2, san3: string;
  tempQuery: TuniQuery;
begin
  san1 := '0';
  san2 := '0';
  san3 := '0';
  Result := san1 + san2 + san3;


  // 1. gasanKind = lab �̸� ���ܰ˻������� sancode�� ������.

  // 2. sutakupche = 'S'  san3=
  try
    tempQuery := TuniQuery.Create(nil);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.text :=
        'SELECT  CutCod, CutAdpDte, CutNam, CutSclGen, CutSclCar,                  ' + #10#13 +
        ' CutSclIns, CutSclWrk, CutSclGud, CutExpDte,                    '   + #10#13 +
        ' CutUpdDtm, CutUidCod, CutAssCod, CutCls, CutHspTyp, CutGcoNum, '   + #10#13 +
        ' CutGumCheGrade, CutHackYon,                                    '   +  #10#13 +
        ' CutByungRiYon                                                  '   + #10#13 +
        'FROM     ma_sutakupche  where  CutCod=:CutCod                   ';
      paramByName('CutCod').asString := sutakupche;
      open;
      if not isEmpty then
      begin
        if gasankind = 'LAB' then
          san3 := copy(fieldByname('CutGumCheGrade').asString, 1, 1);

        if (sutakgrade = 'H') and (fieldByname('CutHackYon').asString = 'Y')
        then
          san3 := '7';

        if (sutakgrade = 'B') and (fieldByname('CutByungRiYon').asString = 'Y')
        then
          san3 := '8';
      end;

    end;

  finally

    tempQuery.Free;
  end;

  if Length(trim(sugakey)) = 5 then
    Result := trim(sugakey) + san1 + san2 + san3
      else if (Length(trim(sugakey)) = 8)
         and ((copy(sugakey, 1, 5) = 'D0001')  or (copy(sugakey, 1, 5) = 'D0002'))
         and (copy(sugakey, 8, 1) <> '7')
         and (copy(sugakey, 8, 1) <> '8') then
         Result := copy(sugakey, 1, 7) + san3
          else
              Result := sugakey;
end;



function existJinryo_Sunap(jubsuid: string): boolean;
var
    tempQuery : TuniQuery;
begin

    result:= false;
  try
    tempQuery := TuniQuery.Create(nil);
    tempQuery.Connection := Dm_f.UniConnection1;


    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from jinryo_p ');
      SQL.Add(' where jubsu_id=:jubsu_id ');
      SQL.Add(' and chojae  <>  ''9'' and chojae  <>  ''0'' and sunap = ''1'' ');
      paramByName('jubsu_id').asString    := jubsuid;
      open;
      First;
      if not isEmpty then // ���ϼ������� ������

      begin
          result:= true;
      end;
    end;
  finally
      tempQuery.Free;
  end;
end;


function loadJinryo_PInfo(jubsuid: string): Tjinryo_PInfo;
var
    tempQuery : TuniQuery;
begin

  result.nSunapChong  := 0;
  result.nSunapChung  := 0;
  result.nSunapBonin1 := 0;
  result.nSunapBonin  := 0;

  try
    tempQuery := TuniQuery.Create(nil);
    tempQuery.Connection := Dm_f.UniConnection1;


    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from jinryo_p ');
      SQL.Add(' where jubsu_id=:jubsu_id ');
//      SQL.Add(' and chojae  <>  ''9'' and chojae  <>  ''0'' and sunap = ''1'' ');
      paramByName('jubsu_id').asString    := jubsuid;
      open;
      First;
      if not isEmpty then // ���ϼ������� ������
      begin
          result.nSunapChong  := fieldByName('chong').AsInteger;
          result.nSunapChung  := fieldByName('Chung').AsInteger;
          result.nSunapBonin1 := fieldByName('Bonin1').AsInteger;
          result.nSunapBonin  := fieldByName('Bonin').AsInteger;

      end;
    end;
  finally
     tempQuery.free;
  end;
end;




function updateIlyunNo(jubsuid: string; ilyunNo: string ): boolean;
begin

    result:= false;
  try
    with Dm_f.sqlJinryo do
    begin
      close;
      SQL.Clear;
      SQL.Add(' update jinryo_p set ');
      SQL.Add('  ilyunNo=:ilyunNo  ');
      SQL.Add(' where jubsu_id=:jubsu_id ');
      paramByName('jubsu_id').asString    := jubsuid;
      paramByName('ilyunNo').asString       := ilyunNo;
      execsql;

      result:= true;

    end;
  except

  end;
end;

     //   HwakinNo


function update_Jinryo_p_HwakinNo(jubsuid: string; HwakinNo, k_number, kiho, piboname:string): boolean;
begin

    result:= false;
  try
    with Dm_f.sqlJinryo do
    begin
      close;
      SQL.Clear;
      SQL.Add('update jinryo_p set ');
      SQL.Add('  HwakinNo=:HwakinNo, k_number=:k_number, kiho=:kiho, piboname=:piboname  ');
      SQL.Add(' where jubsu_id=:jubsu_id ');
      paramByName('jubsu_id').asString    := jubsuid;
      paramByName('HwakinNo').asString       := HwakinNo;
      paramByName('k_number').asString       := k_number;
      paramByName('kiho').asString           := kiho;
      paramByName('piboname').asString       := piboname;
      execsql;

      result:= true;

    end;
  except

  end;
end;



function update_Jinryo_p_simsa(jubsuid: string; simsaValue:string): boolean;
begin

    result:= false;
  try
    with Dm_f.sqlJinryo do
    begin
      close;
      SQL.Clear;
      SQL.Add('update jinryo_p set ');
      SQL.Add('  simsa=:simsa  ');
      SQL.Add(' where jubsu_id=:jubsu_id ');
      paramByName('jubsu_id').asString    := jubsuid;
      paramByName('simsa').asString       := simsaValue;
      execsql;

      result:= true;

    end;
  except

  end;
end;





Procedure save_RequestUseJinsKey(
    nRpPK:integer ;
    Achart:string;
    ADate : TdateTime;
    AGrid : TAdvStringGrid);
var
   ARow : integer;
   nSugaGeum : integer;
   AG_Key, g_check: string;
   readingStatus : string;
   deletetag : string;

begin
    if nRpPK > 0 then
    begin
      // Save Referel PAD

    readingStatus := '';

    for ARow := 1 to aGrid.RowCount - 1 do
    begin // AGrid = grdJx2
           deletetag :=  aGrid.Cells[30, ARow];
           if deletetag  <> 'D'  then // Delete Tag
           begin

        if aGrid.Cells[10, ARow] = '9' then
        begin // su_gu1 �� group
          AG_Key := trim(aGrid.Cells[9, ARow]); // su_key
          g_check :=    'G';

//          if ( trim(aGrid.Cells[8, ARow])  = 'CT') or     //Modality
//          (   trim(aGrid.Cells[8, ARow])   = 'MR') or     //Modality
//          (   trim(aGrid.Cells[8, ARow])   = 'MRI') then   //Modality

          if ( trim(aGrid.Cells[8, ARow])  = 'CT') or     //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MR') or     //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MRI') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'SC') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'XRAY') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'X-RAY') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'XA') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'US') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'SONO') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'DR') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'CR') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MG') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'DT') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'OT') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'RF') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MED')     //Modality

          then

          begin
               readingStatus := '1W';
          end
          else
          begin
               readingStatus := 'N/A';
          end;


        end
        else
        begin
          g_check :=    'S';
        end;

      //''XA'', ''XRAY'',''DR'',''MG'',''DT'', ''EKG'',''OT'',''RF'', ''MED''   ''CR''

        try
          if ( trim(aGrid.Cells[8, ARow])  = 'CT') or     //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MR') or     //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MRI') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'SC') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'XRAY') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'X-RAY') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'XA') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'US') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'SONO') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'DR') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'CR') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MG') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'DT') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'OT') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'RF') or    //Modality
          (   trim(aGrid.Cells[8, ARow])   = 'MED') or    //Modality
          (   trim(aGrid.Cells[9, ARow])   = 'TMJMR') or
          (  trim(aGrid.Cells[9, ARow])  = 'CTFACE') or
          (  trim(aGrid.Cells[9, ARow])  = 'FATCT') or
          (  trim(aGrid.Cells[9, ARow])  = 'HI203005') or
          (  trim(aGrid.Cells[9, ARow])  = 'HJ203004') or
          (  trim(aGrid.Cells[9, ARow])  = 'HA711026') or
          (  trim(aGrid.Cells[9, ARow])  = 'HA643026') or
          (  trim(aGrid.Cells[9, ARow])  = 'HI208005') or
          ( trim(aGrid.Cells[9, ARow])  = 'HJ208004') or
          ( trim(aGrid.Cells[9, ARow])  = 'HI205005') or
          ( trim(aGrid.Cells[9, ARow])  = 'HJ205004') or
          ( trim(aGrid.Cells[9, ARow])  = 'CTFACELL') or
          ( trim(aGrid.Cells[9, ARow])  = 'MRFAPL') or
          ( trim(aGrid.Cells[9, ARow])  = 'CTNOSE')  then
         begin

                         //getGroupSum (jin_day, chart, group_Key : string)
         if (  (aGrid.Cells[0, ARow] = 'GR')  and
             (aGrid.Cells[8, ARow] <> '') ) then
          begin
             nSugaGeum :=
                   getGroupSum(FormatDateTime('YYYY-MM-DD', aDate),
                   Achart,
                   AG_Key) ;
          end
          else
          begin
            nSugaGeum :=  aGrid.Ints[6, ARow];
          end;



          insertRP_requestUseJinsKey(
              ma_rp_RequestPK,       //  rpPk: Integer;
              aGrid.Cells[18, ARow], //  jins_Key:string;
              aGrid.Cells[18, ARow], //  accessionNumber:string;
              aGrid.Cells[22, ARow], //  jin_day
              aGrid.Cells[23, ARow], //  jin_time
              '',                    //  userID:string;
              g_check,               //  GKind:string;
              AG_Key,                //  groupKey:string;
              nSugaGeum,             //  totalSum:integer;
              aGrid.Cells[1, ARow], //  alias    :string) //Su_kor_name
              readingStatus );

         end;
            except

              on E: Exception do
              begin
                Showmessage(E.Message + '[saveReferalPad_Jinryo fail.]');
              end;

            end;
       end;
    end;
  end;
end;



procedure   insertRP_requestUseJinsKey(
        rpPk: Integer;
        jins_Key:string;
        accessionNumber:string;
        jin_day:string;
        jin_time:string;
        userID:string;
        GKind:string;
        groupKey:string;
        totalSum:integer;
        alias    :string ;
        readingStatus :string);
var
   ins  : boolean;
   tempQuery: TuniQuery;
begin
{accessionNumber;
 isCosign;
 readingStatus;}
      try
        tempQuery := TuniQuery.Create(nil);
        tempQuery.Connection := Dm_f.UniConnection1;


        with tempQuery do
        begin
              close;
              SQL.Clear;
              SQL.Add('select * from  RP_requestUseJinsKey');
              SQL.Add('Where requestpk= :requestpk and jins_Key = :jins_Key');
           //   SQL.Add('Where requestpk= :requestpk');// and jins_Key = :jins_Key');
              paramByName('requestpk').AsInteger := rpPk;
              paramByName('jins_Key').AsString   := jins_Key;
              open;
             if isEmpty then
             begin
//              SQL.Add('delete from  RP_requestUseJinsKey');
//              SQL.Add('Where requestpk= :requestpk and jins_Key = :jins_Key');
//              paramByName('requestpk').AsInteger := rpPk;
//              paramByName('jins_Key').AsString   := jins_Key;
//              execsql;
//




{INSERT INTO [dbo].[RP_requestUseJinsKey]
           ([jins_key]
           ,[requestPK]
           ,[accessionNumber]
           ,[isCosign]
           ,[readingStatus])
     VALUES
           (<jins_key, bigint,>
           ,<requestPK, int,>
           ,<accessionNumber, int,>
           ,<isCosign, char(1),>
           ,<readingStatus, char(2),>)


jin_Day 	nchar(10) �Է���
jin_time	nchar(10)  �Է½ð�
userID	nvarchar(50)  �Է���
GKind	nchar(1)       �׷� G ���� S
groupKey	nvarchar(10)	Checked
totalSum	int	Checked
alias	nvarchar(100)	Checked

}

                 SQL.Add('insert into RP_requestUseJinsKey');
                 sql.add('(jins_Key,  requestpk, accessionNumber,');
                 sql.add('  isCosign, readingStatus,jinDay , jintime, ');
                 sql.add('  GKind, groupKey, totalSum, alias) values ');
                 sql.add(' (:jins_Key,  :requestpk, :accessionNumber, ');
                 sql.add(' :isCosign, :readingStatus, :jin_Day , :jin_time, ');
                 sql.add(' :GKind, :groupKey, :totalSum, :alias) ');

                 paramByName('requestpk').AsInteger        := rpPk;
                 paramByName('jins_Key').AsString          := jins_Key;
                 paramByName('accessionNumber').AsString   := accessionNumber;
                 paramByName('isCosign').AsString          := 'N';//isCosign;
                 paramByName('readingStatus').AsString     := readingStatus;//'1W';//readingStatus;
                 paramByName('jin_Day').AsString           := jin_day;
                 paramByName('jin_time').AsString          := jin_time;
                 paramByName('GKind').AsString             := GKind;
                 paramByName('groupKey').AsString          := groupKey;
                 paramByName('totalSum').AsInteger         := totalSum;
                 paramByName('alias').AsString             := alias;
                 execsql;
             end
             else
             begin
                 SQL.Add('update RP_requestUseJinsKey set');
                 sql.add(' accessionNumber =:accessionNumber,');
                 sql.add('  isCosign=:isCosign, readingStatus=:readingStatus,jinDay=:jin_Day , jintime=:jin_time, ');
                 sql.add('  GKind=:GKind, groupKey=:groupKey, totalSum=:totalSum, alias=:alias ');
                 sql.add(' where jins_Key=:jins_Key and  requestpk=:requestpk  ');

                 paramByName('requestpk').AsInteger        := rpPk;
                 paramByName('jins_Key').AsString          := jins_Key;
                 paramByName('accessionNumber').AsString   := accessionNumber;
                 paramByName('isCosign').AsString          := 'N';//isCosign;
                 paramByName('readingStatus').AsString     := readingStatus;//'1W';//readingStatus;
                 paramByName('jin_Day').AsString           := jin_day;
                 paramByName('jin_time').AsString          := jin_time;
                 paramByName('GKind').AsString             := GKind;
                 paramByName('groupKey').AsString          := groupKey;
                 paramByName('totalSum').AsInteger         := totalSum;
                 paramByName('alias').AsString             := alias;
                 execsql;

             end;
//              else
//              begin
//                 SQL.Add('delete from RP_requestUseJinsKey');
//                 sql.add('where  requestpk =:requestpk        ');
//                 paramByName('requestpk').AsInteger := rpPk;
//                 execsql;
//
//                 SQL.Add('insert into RP_requestUseJinsKey');
//                 sql.add('(jins_Key,  requestpk) values  (:jins_Key,  :requestpk) ');
//
//                 paramByName('jins_Key').AsString   := jins_Key;
//                 paramByName('requestpk').AsInteger := rpPk;
//                 execsql;
//
//              end;

          end;



      finally
          tempQuery.free;
      end;

end;




function getGroupSum (jin_day, chart, group_Key : string):integer;
var
   tempQuery: TuniQuery;

begin
     result := 0;
   try
        tempQuery := TuniQuery.Create(nil);
        tempQuery.Connection := Dm_f.UniConnection1;


     with tempQuery do
     begin
          Close;
          Sql.Clear;
          Sql.Text:=
               ' select  sum( (jin_qty*jin_danga)) as sumdanga from jinryo_s                      '
          +#10+'   where g_Check <> ''G''                                        '
          +#10+'   and jin_day=:jin_day                                          '
          +#10+'    and chart=:chart  and group_key =:group_key                  '
          +#10+' and ( rtrim(ltrim(modality)) in (''CT'',''MR'',''MRI'')  or                    '
          +#10+ ' su_key like  ''PSC%''    or                                                '
          +#10+ ' su_key in (''TMJMR'', ''CTFACE'',''FATCT'',''HI203005'',''HJ203004'',  ''HA711026'', ''HA643026'', '
          +#10+ '  ''HI208005'', ''HJ208004'', ''HI205005'', ''HJ205004'', ''CTFACELL'',''MRFAPL'',''CTNOSE'' ) )';

         paramByName('Jin_day').AsString     := jin_day;
         paramByName('chart').AsString       := chart;
         paramByName('group_key').AsString   := group_key;

         open;
         if group_key = '+JAVFPTA'  then
            result:= 600000
         else
            result:= fieldByName('sumdanga').AsInteger;
     end;
   finally

          tempQuery.free;

   end;
end;
end.
