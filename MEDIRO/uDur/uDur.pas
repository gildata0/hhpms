unit uDur;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
              Forms,
       Dialogs, StdCtrls, Grids, Data.DB, Data.Win.ADODB,
       registry, IniFiles, HiraDur_TLB,
       ComCtrls, result;

procedure WriteLog(sRow, c1, c2: string);
function PatInsupTp(strPatInsupTp: string): string;
function PrscClCd(strPrscClCd: string): string;

var
       DurClient: OleVariant;
       DurPrescription: OleVariant;
       DurResultSet: OleVariant;

       nMediCnt: Integer;
       nMediCnt2: Integer;
       strHIRADURrunPath: string;
       m_strMprscType: string;
       szLog: string;
       nTotResultCnt: Integer;
       ResultList: array[0..100] of Result.ResultInfo;
       nCheckType: integer;
       bSelFlag: Boolean;


       //함수 선언부 ////////////////////////////
function UpdateDBVersion(): string;
procedure UpdateResultSetToList(xg: TStringGrid);
procedure ClearResultList();
procedure ClearSGrid(xg: TStringGrid);
function GetIHOHCd(sText: string): string;
function GetPrscType(sText: string): HiraDur_TLB.PrscType;
function GetInsuDmdCd(sText: string): string;

function GetStringFromRegistry(sKey, sItem, sDefVal: string): string;
procedure SaveStringToRegistry(sKey, sItem, sVal: string);
function loadSungbun(varSugode: string): string;

implementation
uses uFunctions, udm;

function loadSungbun(varSugode: string): string;
var
       sdFileName: string;
       sqlMdbTemp : TAdoQuery;
       ADOConnection1 : TADOConnection;
begin

       sdFileName := ExtractFileDir(Application.ExeName) + '\MasterData\drug.mdb';

       if varSugode <> '' then
       begin
            try
              ADOConnection1 :=  TADOConnection.create(application);
              ADOConnection1.LoginPrompt := false;
              sqlMdbTemp:= TAdoQuery.create(application);
              sqlMdbTemp.Connection:=        ADOConnection1;

              if ADOConnection1.Connected = false then
                     adoConnection1.ConnectionString :=
                            'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sdFileName
                                   + ';Mode=ReadWrite;Persist Security Info=False';
              with sqlMdbTemp do
              begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select jusungbun from 약가 where code=:code');
                     Parameters.ParamByName('code').Value := varSugode;
                     Open;
                     First;
                     if RecordCount > 0 then
                     begin
                         result:=FieldByName('jusungbun').AsString;
                     end;
              end;
            finally
                 ADOConnection1.Free;
            end;

       end;
end;

//구조체 배열 초기화

procedure ClearResultList();
var
       i: integer;
begin
       for i := 1 to 100 do
       begin
              ResultList[i - 1].m_nIndex := ''; // 점검결과 인덱스 번호

              ResultList[i - 1].m_strMedcCDA := ''; // 입력약품코드
              ResultList[i - 1].m_strMedcNMA := ''; // 입력약품명
              ResultList[i - 1].m_strGnlNMCDA := ''; // 입력성분코드
              ResultList[i - 1].m_strGnlNMA := ''; // 입력성분명
              ResultList[i - 1].m_fDDMqtyFreqA := ''; // 입력1회투여량
              ResultList[i - 1].m_fDDExecFreqA := ''; // 입력1일투여회수
              ResultList[i - 1].m_nMdcnExecFreqA := ''; // 입력총투여일수

              ResultList[i - 1].m_nType := ''; // 점검종류코드(00-병용금기등)
              ResultList[i - 1].m_nLevel := ''; // 점검결과등급(A,B,C,D)
              ResultList[i - 1].m_strExamTypeCD := '';
                     // 처방점검 / 복용점검 구분 (M/P/S/L)
              ResultList[i - 1].m_strNotice := ''; // 부작용정보
              ResultList[i - 1].m_strMessage := ''; // 점검내용
              ResultList[i - 1].m_strReasonCD := '';
                     // 현재 요양기관에서 입력하는 사유코드
              ResultList[i - 1].m_strReason := '';
                     // 현재 요양기관에서 입력하는 사유

              ResultList[i - 1].m_strDpPrscMake := ''; // 중복처방조제구분
              ResultList[i - 1].m_strDpPrscYYMMDD := ''; // 중복처방일자
              ResultList[i - 1].m_strDpPrscHMMSS := ''; // 중복처방시간
              ResultList[i - 1].m_strDpPrscAdminCode := ''; // 중복처방기관기호
              ResultList[i - 1].m_strDpPrscGrantNo := ''; // 중복처방전교부번호
              ResultList[i - 1].m_strDpPrscAdminName := ''; // 중복처방기관명
              ResultList[i - 1].m_strDpPrscTel := ''; // 중복처방기관전화
              ResultList[i - 1].m_strDpPrscFax := ''; // 중복처방기관팩스
              ResultList[i - 1].m_strDpPrscName := ''; // 중복처방의사명
              ResultList[i - 1].m_strDpPrscLic := ''; // 중복처방의사면허번호

              ResultList[i - 1].m_strDpMakeYYMMDD := ''; // 중복조제일자
              ResultList[i - 1].m_strDpMakeHMMSS := ''; // 중복조제시간
              ResultList[i - 1].m_strDpMakeAdminCode := ''; // 중복조제기관기호
              ResultList[i - 1].m_strDpMakeAdminName := ''; // 중복조제기관명
              ResultList[i - 1].m_strDpMakeTel := ''; // 중복조제기관전화
              ResultList[i - 1].m_strDpMakeName := ''; // 중복조제의사명
              ResultList[i - 1].m_strDpMakeLic := ''; // 중복조제의사면허번호

              ResultList[i - 1].m_strMedcCDB := ''; // 중복약품코드
              ResultList[i - 1].m_strMedcNMB := ''; // 중복약품명
              ResultList[i - 1].m_strGnlNMCDB := ''; // 중복성분코드
              ResultList[i - 1].m_strGnlNMB := ''; // 중복성분명
              ResultList[i - 1].m_fDDMqtyFreqB := ''; // 중복1회투여량
              ResultList[i - 1].m_fDDExecFreqB := ''; // 중복1일투여회수
              ResultList[i - 1].m_nMdcnExecFreqB := ''; // 중복총투여일수
              ResultList[i - 1].m_fDDTotalMqtyB := '';
                     // 중복1일투여량(1회투여량x1일투여회수)

              ResultList[i - 1].strExamType := '';
       end;
end;

function PatInsupTp(strPatInsupTp: string): string;
begin
       if ((strPatInsupTp = '건강보험')
             or
                (strPatInsupTp = '차상위1종') or
                (strPatInsupTp = '차상위2종') or
                (strPatInsupTp = '차상위2종장애인')) then
              result := '04'
       else if ((strPatInsupTp = '의료급여') or
                (strPatInsupTp = '보호1종') or        //(2013.0213)의료급여 체크항묵 추가
                (strPatInsupTp = '보호2종') or
                (strPatInsupTp = '보호4종') or
                (strPatInsupTp = '보호8종') ) then
              result := '05'
       else if (strPatInsupTp = '보훈') then
              result := '07'
       else if (strPatInsupTp = '일반') then
              result := '09'
       else if (strPatInsupTp = '산재보험') then
              result := '10'
       else if (strPatInsupTp = '자동차보험') then
              result := '11'
       else
              result := '12';

     {  if (strPatInsupTp = '건강보험') then
              result := '04'
       else if (strPatInsupTp = '의료급여') then
              result := '05'
       else if (strPatInsupTp = '보훈') then
              result := '07'
       else if (strPatInsupTp = '일반') then
              result := '09'
       else if (strPatInsupTp = '산재보험') then
              result := '10'
       else if (strPatInsupTp = '자동차보험') then
              result := '11'
       else
              result := '12';      }
end;

function PrscClCd(strPrscClCd: string): string;
begin
       if (strPrscClCd = '외래원외처방') then
              result := '02'
       else if (strPrscClCd = '약국직접조제') then
              result := '03'
       else if (strPrscClCd = '약국판매약') then
              result := '04'
       else if (strPrscClCd = '외래윈내조제') then
              result := '05'
       else if (strPrscClCd = '퇴원약') then
              result := '06'
       else if (strPrscClCd = '성분명처방약') then
              result := '07'
       else
              result := '13';
end;
//로그 기록

procedure WriteLog(sRow, c1, c2: string);
begin
       ExceptLogging(sRow + '|' + c1 + '|' + c2 + '|' + DateTimeToStr(NOW));
end;

// 화면의 기준DB버전정보에 표시용 버전가져오기

function UpdateDBVersion(): string;
var
       strSection: string;
       readValue: string;
       strDBIniPath: string;
       ini: TiniFile;
begin
       strSection := 'HKEY_LOCAL_MACHINE\SOFTWARE';

       readValue := GetStringFromRegistry(strSection + '\Hira\IHIRADUR', 'path',
              '');

       if readValue = '' then
              //win7 64bit에서 레지스터리 정보 등록 오류시 강제적용
       begin
              if DirectoryExists('C:\HIRA\IHIRADUR') then
                     readValue := 'C:\HIRA\IHIRADUR';
       end;

       if readValue = '' then
       begin
              result := '';
              WriteLog('1', 'UpdateDBVersion',
                     'HIRADUR 2.0 설치 폴더를 찾을 수 없습니다.');
              //ShowMessage('HIRADUR 2.0 설치 폴더를 찾을 수 없습니다.')
       end
       else
       begin
              strHIRADURrunPath := readValue;
              strDBIniPath := readValue + '\version.ini';
              ini := TiniFile.Create(strDBIniPath);

              result := ini.ReadString('DURMASTERDB', 'Version', '');

              ini.Free;
       end;
end;

procedure UpdateResultSetToList(xg: TStringGrid);
var
       i: integer;
begin
       ClearSGrid(xg);
       for i := 1 to nTotResultCnt do
       begin
              //
              xg.Cells[0, i] := ResultList[i - 1].m_nIndex;
              //점검유형
              xg.Cells[1, i] := ResultList[i - 1].strExamType;
              //복용약품
              xg.Cells[2, i] := ResultList[i - 1].m_strMedcNMB;
              //입력약품
              xg.Cells[3, i] := ResultList[i - 1].m_strMedcNMA;
              //점검내용
              xg.Cells[4, i] := ResultList[i - 1].m_strMessage;
              //처방기관
              xg.Cells[5, i] := ResultList[i - 1].m_strDpPrscAdminName;
              //사유
              xg.Cells[6, i] := ResultList[i - 1].m_strReason;
              //처방일자
              xg.Cells[7, i] := ResultList[i - 1].m_strDpPrscYYMMDD;
              //조제일자
              xg.Cells[8, i] := ResultList[i - 1].m_strDpMakeYYMMDD;
              //1일투여량
              xg.Cells[9, i] := ResultList[i - 1].m_fDDTotalMqtyB;
              //투약일수
              xg.Cells[10, i] := ResultList[i - 1].m_nMdcnExecFreqB;
              //입력사유
              if (ResultList[i - 1].m_strReasonCD = '') or (ResultList[i -
                     1].m_strReasonCD = 'Text입력') then
                     xg.Cells[11, i] := ResultList[i - 1].m_strReason
              else
                     xg.Cells[11, i] := ResultList[i - 1].m_strReasonCD;

       end;
end;

//그리드 내용 삭제

procedure ClearSGrid(xg: TStringGrid);
var
       i, j: Integer;
begin
       for i := 1 to xg.RowCount - 1 do
       begin
              for j := 0 to xg.ColCount - 1 do
              begin
                     xg.Cells[j, i] := '';
              end;
       end;
end;

//보험청구코드

function GetInsuDmdCd(sText: string): string;
begin
       if sText = '보험' then
              GetInsuDmdCd := 'A'
       else if sText = '비보험' then
              GetInsuDmdCd := 'B'
       else
              GetInsuDmdCd := 'C';
end;

//분류유형코드값 리턴

function GetPrscType(sText: string): HiraDur_TLB.PrscType;
begin
       if (sText = '수가') then
              GetPrscType := HiraDur_TLB.durPrscSuga
       else if (sText = '약가') then
              GetPrscType := HiraDur_TLB.durPrscYakga
       else if (sText = '원료-성분') then
              GetPrscType := HiraDur_TLB.durPrscWonRyo
       else
              GetPrscType := HiraDur_TLB.durPrscJaeRyo;

end;

//원외/원내코드

function GetIHOHCd(sText: string): string;
begin
       if sText = '원외' then
              GetIHOHCd := '1'
       else
              GetIHOHCd := '2';

end;

//레지스터리 읽기

function GetStringFromRegistry(sKey, sItem, sDefVal: string): string;
var
       reg: TRegIniFile;
begin
       reg := TRegIniFile.Create(sKey);

       Result := reg.ReadString('', sItem, sDefVal);
       reg.Free;
end;

//레지스터리 쓰기

procedure SaveStringToRegistry(sKey, sItem, sVal: string);
var
       reg: TRegIniFile;
begin
       reg := TRegIniFile.Create(sKey);
       reg.WriteString('', sItem, sVal + #0);
       reg.Free;
end;

end.

