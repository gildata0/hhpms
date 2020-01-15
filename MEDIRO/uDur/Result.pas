unit Result;

interface

type
  ResultInfo = Record //class
  //{
  //}
	//public {
    m_nIndex : String;    // 점검결과 인덱스 번호

    m_strMedcCDA : String; // 입력약품코드
    m_strMedcNMA : String; // 입력약품명
    m_strGnlNMCDA : String; // 입력성분코드
    m_strGnlNMA : String; // 입력성분명
    m_fDDMqtyFreqA : String; // 입력1회투여량
    m_fDDExecFreqA : String; // 입력1일투여회수
    m_nMdcnExecFreqA : String; // 입력총투여일수

    m_nType : String;    // 점검종류코드(00-병용금기등)
    m_nLevel : String; // 점검결과등급(A,B,C,D)
    m_strExamTypeCD : String; // 처방점검 / 복용점검 구분 (M/P/S/L)
    m_strNotice : String; // 부작용정보
    m_strMessage : String; // 점검내용
    m_strReasonCD : String; // 현재 요양기관에서 입력하는 사유코드
    m_strReason : String; // 현재 요양기관에서 입력하는 사유

    m_strDpPrscMake : String; // 중복처방조제구분
    m_strDpPrscYYMMDD : String; // 중복처방일자
    m_strDpPrscHMMSS : String; // 중복처방시간
    m_strDpPrscAdminCode : String; // 중복처방기관기호
    m_strDpPrscGrantNo : String; // 중복처방전교부번호
    m_strDpPrscAdminName : String; // 중복처방기관명
    m_strDpPrscTel : String; // 중복처방기관전화
    m_strDpPrscFax : String; // 중복처방기관팩스
    m_strDpPrscName : String; // 중복처방의사명
    m_strDpPrscLic : String; // 중복처방의사면허번호

    m_strDpMakeYYMMDD : String; // 중복조제일자
    m_strDpMakeHMMSS : String; // 중복조제시간
    m_strDpMakeAdminCode : String; // 중복조제기관기호
    m_strDpMakeAdminName : String; // 중복조제기관명
    m_strDpMakeTel : String; // 중복조제기관전화
    m_strDpMakeName : String; // 중복조제의사명
    m_strDpMakeLic : String; // 중복조제의사면허번호

    m_strMedcCDB : String; // 중복약품코드
    m_strMedcNMB : String; // 중복약품명
    m_strGnlNMCDB : String; // 중복성분코드
    m_strGnlNMB : String; // 중복성분명
    m_fDDMqtyFreqB : String; // 중복1회투여량
    m_fDDExecFreqB : String; // 중복1일투여회수
    m_nMdcnExecFreqB : String; // 중복총투여일수
    m_fDDTotalMqtyB : String; // 중복1일투여량(1회투여량x1일투여회수)

    strExamType : String;

      //   }
  end;

implementation

end.
