unit Result;

interface

type
  ResultInfo = Record //class
  //{
  //}
	//public {
    m_nIndex : String;    // ���˰�� �ε��� ��ȣ

    m_strMedcCDA : String; // �Է¾�ǰ�ڵ�
    m_strMedcNMA : String; // �Է¾�ǰ��
    m_strGnlNMCDA : String; // �Է¼����ڵ�
    m_strGnlNMA : String; // �Է¼��и�
    m_fDDMqtyFreqA : String; // �Է�1ȸ������
    m_fDDExecFreqA : String; // �Է�1������ȸ��
    m_nMdcnExecFreqA : String; // �Է��������ϼ�

    m_nType : String;    // ���������ڵ�(00-����ݱ��)
    m_nLevel : String; // ���˰�����(A,B,C,D)
    m_strExamTypeCD : String; // ó������ / �������� ���� (M/P/S/L)
    m_strNotice : String; // ���ۿ�����
    m_strMessage : String; // ���˳���
    m_strReasonCD : String; // ���� ��������� �Է��ϴ� �����ڵ�
    m_strReason : String; // ���� ��������� �Է��ϴ� ����

    m_strDpPrscMake : String; // �ߺ�ó����������
    m_strDpPrscYYMMDD : String; // �ߺ�ó������
    m_strDpPrscHMMSS : String; // �ߺ�ó��ð�
    m_strDpPrscAdminCode : String; // �ߺ�ó������ȣ
    m_strDpPrscGrantNo : String; // �ߺ�ó�������ι�ȣ
    m_strDpPrscAdminName : String; // �ߺ�ó������
    m_strDpPrscTel : String; // �ߺ�ó������ȭ
    m_strDpPrscFax : String; // �ߺ�ó�����ѽ�
    m_strDpPrscName : String; // �ߺ�ó���ǻ��
    m_strDpPrscLic : String; // �ߺ�ó���ǻ�����ȣ

    m_strDpMakeYYMMDD : String; // �ߺ���������
    m_strDpMakeHMMSS : String; // �ߺ������ð�
    m_strDpMakeAdminCode : String; // �ߺ����������ȣ
    m_strDpMakeAdminName : String; // �ߺ����������
    m_strDpMakeTel : String; // �ߺ����������ȭ
    m_strDpMakeName : String; // �ߺ������ǻ��
    m_strDpMakeLic : String; // �ߺ������ǻ�����ȣ

    m_strMedcCDB : String; // �ߺ���ǰ�ڵ�
    m_strMedcNMB : String; // �ߺ���ǰ��
    m_strGnlNMCDB : String; // �ߺ������ڵ�
    m_strGnlNMB : String; // �ߺ����и�
    m_fDDMqtyFreqB : String; // �ߺ�1ȸ������
    m_fDDExecFreqB : String; // �ߺ�1������ȸ��
    m_nMdcnExecFreqB : String; // �ߺ��������ϼ�
    m_fDDTotalMqtyB : String; // �ߺ�1��������(1ȸ������x1������ȸ��)

    strExamType : String;

      //   }
  end;

implementation

end.
