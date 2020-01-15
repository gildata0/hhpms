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


       //�Լ� ����� ////////////////////////////
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
                     Sql.Add('select jusungbun from �డ where code=:code');
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

//����ü �迭 �ʱ�ȭ

procedure ClearResultList();
var
       i: integer;
begin
       for i := 1 to 100 do
       begin
              ResultList[i - 1].m_nIndex := ''; // ���˰�� �ε��� ��ȣ

              ResultList[i - 1].m_strMedcCDA := ''; // �Է¾�ǰ�ڵ�
              ResultList[i - 1].m_strMedcNMA := ''; // �Է¾�ǰ��
              ResultList[i - 1].m_strGnlNMCDA := ''; // �Է¼����ڵ�
              ResultList[i - 1].m_strGnlNMA := ''; // �Է¼��и�
              ResultList[i - 1].m_fDDMqtyFreqA := ''; // �Է�1ȸ������
              ResultList[i - 1].m_fDDExecFreqA := ''; // �Է�1������ȸ��
              ResultList[i - 1].m_nMdcnExecFreqA := ''; // �Է��������ϼ�

              ResultList[i - 1].m_nType := ''; // ���������ڵ�(00-����ݱ��)
              ResultList[i - 1].m_nLevel := ''; // ���˰�����(A,B,C,D)
              ResultList[i - 1].m_strExamTypeCD := '';
                     // ó������ / �������� ���� (M/P/S/L)
              ResultList[i - 1].m_strNotice := ''; // ���ۿ�����
              ResultList[i - 1].m_strMessage := ''; // ���˳���
              ResultList[i - 1].m_strReasonCD := '';
                     // ���� ��������� �Է��ϴ� �����ڵ�
              ResultList[i - 1].m_strReason := '';
                     // ���� ��������� �Է��ϴ� ����

              ResultList[i - 1].m_strDpPrscMake := ''; // �ߺ�ó����������
              ResultList[i - 1].m_strDpPrscYYMMDD := ''; // �ߺ�ó������
              ResultList[i - 1].m_strDpPrscHMMSS := ''; // �ߺ�ó��ð�
              ResultList[i - 1].m_strDpPrscAdminCode := ''; // �ߺ�ó������ȣ
              ResultList[i - 1].m_strDpPrscGrantNo := ''; // �ߺ�ó�������ι�ȣ
              ResultList[i - 1].m_strDpPrscAdminName := ''; // �ߺ�ó������
              ResultList[i - 1].m_strDpPrscTel := ''; // �ߺ�ó������ȭ
              ResultList[i - 1].m_strDpPrscFax := ''; // �ߺ�ó�����ѽ�
              ResultList[i - 1].m_strDpPrscName := ''; // �ߺ�ó���ǻ��
              ResultList[i - 1].m_strDpPrscLic := ''; // �ߺ�ó���ǻ�����ȣ

              ResultList[i - 1].m_strDpMakeYYMMDD := ''; // �ߺ���������
              ResultList[i - 1].m_strDpMakeHMMSS := ''; // �ߺ������ð�
              ResultList[i - 1].m_strDpMakeAdminCode := ''; // �ߺ����������ȣ
              ResultList[i - 1].m_strDpMakeAdminName := ''; // �ߺ����������
              ResultList[i - 1].m_strDpMakeTel := ''; // �ߺ����������ȭ
              ResultList[i - 1].m_strDpMakeName := ''; // �ߺ������ǻ��
              ResultList[i - 1].m_strDpMakeLic := ''; // �ߺ������ǻ�����ȣ

              ResultList[i - 1].m_strMedcCDB := ''; // �ߺ���ǰ�ڵ�
              ResultList[i - 1].m_strMedcNMB := ''; // �ߺ���ǰ��
              ResultList[i - 1].m_strGnlNMCDB := ''; // �ߺ������ڵ�
              ResultList[i - 1].m_strGnlNMB := ''; // �ߺ����и�
              ResultList[i - 1].m_fDDMqtyFreqB := ''; // �ߺ�1ȸ������
              ResultList[i - 1].m_fDDExecFreqB := ''; // �ߺ�1������ȸ��
              ResultList[i - 1].m_nMdcnExecFreqB := ''; // �ߺ��������ϼ�
              ResultList[i - 1].m_fDDTotalMqtyB := '';
                     // �ߺ�1��������(1ȸ������x1������ȸ��)

              ResultList[i - 1].strExamType := '';
       end;
end;

function PatInsupTp(strPatInsupTp: string): string;
begin
       if ((strPatInsupTp = '�ǰ�����')
             or
                (strPatInsupTp = '������1��') or
                (strPatInsupTp = '������2��') or
                (strPatInsupTp = '������2�������')) then
              result := '04'
       else if ((strPatInsupTp = '�Ƿ�޿�') or
                (strPatInsupTp = '��ȣ1��') or        //(2013.0213)�Ƿ�޿� üũ�׹� �߰�
                (strPatInsupTp = '��ȣ2��') or
                (strPatInsupTp = '��ȣ4��') or
                (strPatInsupTp = '��ȣ8��') ) then
              result := '05'
       else if (strPatInsupTp = '����') then
              result := '07'
       else if (strPatInsupTp = '�Ϲ�') then
              result := '09'
       else if (strPatInsupTp = '���纸��') then
              result := '10'
       else if (strPatInsupTp = '�ڵ�������') then
              result := '11'
       else
              result := '12';

     {  if (strPatInsupTp = '�ǰ�����') then
              result := '04'
       else if (strPatInsupTp = '�Ƿ�޿�') then
              result := '05'
       else if (strPatInsupTp = '����') then
              result := '07'
       else if (strPatInsupTp = '�Ϲ�') then
              result := '09'
       else if (strPatInsupTp = '���纸��') then
              result := '10'
       else if (strPatInsupTp = '�ڵ�������') then
              result := '11'
       else
              result := '12';      }
end;

function PrscClCd(strPrscClCd: string): string;
begin
       if (strPrscClCd = '�ܷ�����ó��') then
              result := '02'
       else if (strPrscClCd = '�౹��������') then
              result := '03'
       else if (strPrscClCd = '�౹�Ǹž�') then
              result := '04'
       else if (strPrscClCd = '�ܷ���������') then
              result := '05'
       else if (strPrscClCd = '�����') then
              result := '06'
       else if (strPrscClCd = '���и�ó���') then
              result := '07'
       else
              result := '13';
end;
//�α� ���

procedure WriteLog(sRow, c1, c2: string);
begin
       ExceptLogging(sRow + '|' + c1 + '|' + c2 + '|' + DateTimeToStr(NOW));
end;

// ȭ���� ����DB���������� ǥ�ÿ� ������������

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
              //win7 64bit���� �������͸� ���� ��� ������ ��������
       begin
              if DirectoryExists('C:\HIRA\IHIRADUR') then
                     readValue := 'C:\HIRA\IHIRADUR';
       end;

       if readValue = '' then
       begin
              result := '';
              WriteLog('1', 'UpdateDBVersion',
                     'HIRADUR 2.0 ��ġ ������ ã�� �� �����ϴ�.');
              //ShowMessage('HIRADUR 2.0 ��ġ ������ ã�� �� �����ϴ�.')
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
              //��������
              xg.Cells[1, i] := ResultList[i - 1].strExamType;
              //�����ǰ
              xg.Cells[2, i] := ResultList[i - 1].m_strMedcNMB;
              //�Է¾�ǰ
              xg.Cells[3, i] := ResultList[i - 1].m_strMedcNMA;
              //���˳���
              xg.Cells[4, i] := ResultList[i - 1].m_strMessage;
              //ó����
              xg.Cells[5, i] := ResultList[i - 1].m_strDpPrscAdminName;
              //����
              xg.Cells[6, i] := ResultList[i - 1].m_strReason;
              //ó������
              xg.Cells[7, i] := ResultList[i - 1].m_strDpPrscYYMMDD;
              //��������
              xg.Cells[8, i] := ResultList[i - 1].m_strDpMakeYYMMDD;
              //1��������
              xg.Cells[9, i] := ResultList[i - 1].m_fDDTotalMqtyB;
              //�����ϼ�
              xg.Cells[10, i] := ResultList[i - 1].m_nMdcnExecFreqB;
              //�Է»���
              if (ResultList[i - 1].m_strReasonCD = '') or (ResultList[i -
                     1].m_strReasonCD = 'Text�Է�') then
                     xg.Cells[11, i] := ResultList[i - 1].m_strReason
              else
                     xg.Cells[11, i] := ResultList[i - 1].m_strReasonCD;

       end;
end;

//�׸��� ���� ����

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

//����û���ڵ�

function GetInsuDmdCd(sText: string): string;
begin
       if sText = '����' then
              GetInsuDmdCd := 'A'
       else if sText = '����' then
              GetInsuDmdCd := 'B'
       else
              GetInsuDmdCd := 'C';
end;

//�з������ڵ尪 ����

function GetPrscType(sText: string): HiraDur_TLB.PrscType;
begin
       if (sText = '����') then
              GetPrscType := HiraDur_TLB.durPrscSuga
       else if (sText = '�డ') then
              GetPrscType := HiraDur_TLB.durPrscYakga
       else if (sText = '����-����') then
              GetPrscType := HiraDur_TLB.durPrscWonRyo
       else
              GetPrscType := HiraDur_TLB.durPrscJaeRyo;

end;

//����/�����ڵ�

function GetIHOHCd(sText: string): string;
begin
       if sText = '����' then
              GetIHOHCd := '1'
       else
              GetIHOHCd := '2';

end;

//�������͸� �б�

function GetStringFromRegistry(sKey, sItem, sDefVal: string): string;
var
       reg: TRegIniFile;
begin
       reg := TRegIniFile.Create(sKey);

       Result := reg.ReadString('', sItem, sDefVal);
       reg.Free;
end;

//�������͸� ����

procedure SaveStringToRegistry(sKey, sItem, sVal: string);
var
       reg: TRegIniFile;
begin
       reg := TRegIniFile.Create(sKey);
       reg.WriteString('', sItem, sVal + #0);
       reg.Free;
end;

end.

