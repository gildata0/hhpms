unit uLoadValue;

interface

uses
     Forms,
     SysUtils,
     Dialogs,
     Classes,
     IniFiles,
     Controls, windows;


type
     TConfigValue = class

     private


          ini: TiniFile;

          //DB 정보=======================================
          FDbCon: Boolean;
          configFile: string;
          FvarDocuIP: string;

          FvarServerIP: string;
          FvarServerPort: string;
          FvarDbIP: string; //DBIP
          FvarDbPort: integer; //DBPort
          FvarDbname: string;
          FvarDbuser: string;
          FvarDbpass: string;
          FvarDbprotocol: string;


          FServerIp2:string;
          FDBName2:string;
          FDBUser2:string;
          FDBPass2:string;
          FDBProtocol2:string;

          //로그인 정보=======================================

          FvarLoginId: string;
          FvarLoginPass: string;
          FvarAutoLogin: string;
          FvarRISSYNC :String;
          FvarCertLogin   :String;
          FvarUpdateAuto : string;
          FvarIDSave: string;
          Fvarweb: string;
          FvarScheduleDate: string;
          FvarScheduleOpen: string;
          FSMSLogin: string;
          //병원 정보=======================================

          FvarsaupName: string;
          FvarsaupEngName: string;
          FvarChungNo : string;
          FvarDaepyo: string;
          FvarJumin: string;
          FvarsaupNo: string;
          FvarMyunhu: string;
          FvarYoyang: string;
          FvarZip: string;
          FvarAdd1: string;
          FvarAdd2: string;

          FvarEngAdd1: string;
          FvarEngAdd2: string;
          FvarEngAdd3: string;

          FvarTel1: string;
          FvarTel2: string;
          FvarFax1: string;
          FvarFax2: string;
          FvarEmail: string;
          Fvarilsu: string;
          FvarGubun: string;
          FvarSimjibu: string;
          FvarDocNo: string;
          FvarChubang: string;
          FvarPrintsu: string;
          FvarBunup: string;
          FvarDaeheng: string;
          FvarRmode: string;
          FvarChungname: string;
          FvarChungJumin: string;
          FvarJagyukID: string;
          FvarJagyukpass: string;
          FvarsmsId: string;
          FvarSmspass: string;
          FvarsmsNo: string;
          FvarSmsCustKind: string;
          FvarSmsConvMin: string;
          FvarNewAutoSend  : string; //신환에게 자동문자전송 여부(Sms자동전송)
          FvarSmsAutosendContent  : string; //신환에게 자동문자전송 문구

          FvarSmsCancelSend  : string; //예약취소자 자동문자전송 여부(Sms자동전송)
          FvarSmsCancelContent  : string; //예약취소자 자동문자전송 문구

          FvarSmsChangeSend  : string; //예약변경자 자동문자전송 여부(Sms자동전송)
          FvarSmsChangeContent  : string; //예약변경자 자동문자전송 문구


          FvarChartRule: string;
          FvarChartNew: string;
          FvarSangMode: string;
          FvarJinryoSave: string;

          FvarGamengNo: string;
          FvarVanKind: string;
          FvarTerminalNo: string;
          FvarPOSNo: string;
          FvarPrinterKind: string;
          FvarPrinterKind2: string;
          FvarSignPort: string;
          FvarTestPg: string;

          FvarSunapKind: string;
          FvarHyunSunapIn: string;
          FvarUseDocSunap: string;
          FvarSunapUseGubun: string; //기간별 수납리스트에서 환자구분보기
          FvarSunapPrintOpt1  : string;  // 기간별 수납리스트 간단인쇄
          FvarScreenSave : string;


          FvarAgreementScaleling  : string;
          FvarAgeFilter  : string;

          FvarDoctorsNoteAutoInput       : string;  //닥터스노트 항목 자동 입력
          FvarBaseExamView               : string;  //기초검사항목 보기
          FvarExamMemoView               : string;  //검사실 메모 보기

          FvarScannerPort: string;
          FvarScannerSpeed: string;

          FvarKeyPadPort: string;
          FvarKeyPadSpeed: string;
          FvarKeyPadKind : integer;

          FvarCertMachinePort: string;
          FvarCertMachineSpeed: string;
          FvarCertMachineKind : integer;

          FvarKeyPadAutoStart:string;
          
          FvarbohumSunap: string; //2012.4.25
          FvardaegiColor: string; //2012.5.1
          FvarHygine: string; //2012.5.9

          FvarDoctor: string; //2016.3.14

          FvarPrintingCnt : integer;

          FvarChartConv: string; //2012.5.17

          FvarJungsanPrintDirection: string;
          FvarViewAllInit: string;
          FvarNewonCountView  : string;  //메인창 내원횟수 볼지 말지...1- 보기 0 -안보기
          FvarSunapSumView  : string;  //일자별수납내역 합계 볼지 말지...1- 보기 0 -안보기
          FvarSunapPrintLineChange  : string;   //수납내역 인쇄시 참고사항 라인 변경

          FvarPrtFirstForm  : string; //기본 진료기록치 첫페이지 인쇄

          FvarJuminView  : string; //처방전 인쇄시 주민번호 인쇄

          FimgSharefolderPath : string;  //환자얼굴저장경로

          FsignFilePath : string;  //인장 저장 경로


          FsignFilePath1 : string;  //인장 저장 경로
          FsignFilePath2 : string;  //인장 저장 경로

          FSmsSendNo_New  : string;  //ini에 저장한 SMS전송 번호

          FDocuHeaderFile  : string;  //DocuHeaderFile저장 경로
          FDocuMidFile  : string;  //DocuMidFile저장 경로

          FvarRecallAlret  : string;  //리콜 예약 알림

          //약속환경설정==================================

          Fp_startTime: string;
          Fp_finishtime: string;

          Fp_LunchstartTime: string;
          Fp_LunchfinishTime: string;

          Fp_LunchstartTime_sat: string;
          Fp_LunchfinishTime_sat: string;

          Fp_LunchColor: string;
          Fp_LunchCap: string;

          Fp_ColorNewon_b:string;
          Fp_ColorCancel_b:string;
          Fp_colorChange_b:string;
          Fp_ColorNotCon_b:string;
          Fp_ColorRecall_b:string;
          Fp_ColorReyeyak_b:string;
          Fp_ColorEnd_b:string;

          Fp_ColorNewon_f:string;
          Fp_ColorCancel_f:string;
          Fp_colorChange_f:string;
          Fp_ColorNotCon_f:string;
          Fp_ColorRecall_f:string;
          Fp_ColorReyeyak_f:string;
          Fp_ColorEnd_f:string;



          FP_PositionTime: string;
          FP_viewItalic: string;
          Fp_ChartNoView: string; //2012.5.17
          Fp_ChartNoOnlyview: string; //2012.5.17
          Fp_ColumnFix: string; //2012.6.12
          //1이면 현재시간을 찾아서 위로 올려준다.0이면 맨 위

          Fp_SmsContent: string;
          Fp_BeforeSendSms: integer;
          Fp_BeforeSmsCheck: integer;
          Fp_BeforSms: integer;
          Fp_SmsBeforTime: string;

          Fp_recallSmsContent: string;
          Fp_BeforeSendrecallSms: integer;
          Fp_BeforerecallSmsCheck: integer;
          Fp_BeforrecallSms: integer;
          Fp_recallSmsBeforTime: string;

          Fp_minewonSmsContent: string;
          Fp_BeforeSendminewonSms: integer;
          Fp_BeforeminewonSmsCheck: integer;
          Fp_BeforminewonSms: integer;
          Fp_minewonSmsBeforTime: string;

          Fp_timeinterval: integer;
          Fp_rowinterval: integer;
          Fp_columncount: integer;
          Fp_DocComboView: integer;
          Fp_AutoNoSMS: integer;

          FP_Jubsudelete : integer;
          FP_DelayWorkView : integer;

          Fp_AutoSendSMS: integer;
          Fp_RemarkPrint: integer;
          FP_PromiseTeamLoad: integer;

           Fp_FixPromiseFontcolor : integer;
          //기타 정보
          Fvarpicpath: string;

          FvarImageUse: string;
          FvarImageKind: string;
          FvarImageDBSaveMode: string;
          FvarImageDBPORT: string;
          FvarImageDBIP: string;
          FvarImageDBPATH: string;
          FvarpanoScale: string;

          FvarUseHttp: string;

          FvarFaceFromDB: string;



          FvarHttpPathChange: string;


          FvarUseThumbnail : string;

          FvarImageChartZeroExcept : string;



          FvarUseOldImageView  : string;

          FvarHttppath: string;
          FvarImageViewAppPath : string;

          FvarImgViewOrder : string;

          FvarShareFolder: string;
          FvarShareFolderPath: string;

          FvarChartPathUse : string;

          FvarViewKind: string;

          FvarUseImageView: string;
          FvaruseMunFile: string;
          FvaruseMunFileIP: string;

          FinitHygine: string;

          FvarImageUser: string;
          FvarImageIp: string;
          FvarImagePass: string;
          FvarImageDb: string;
          FvarImageProtocol: string;
          FvarViewer: string;

          FvarImageUser7: string;
          FvarImageIp7: string;
          FvarImagePass7: string;
          FvarImageDb7: string;

          FvarLoadChamgo: string;
          FvarLoadBackup: string;
          FvarDaegiViewMode: string;
          FvarDaegiRefreshMode: string;

          FvarCidIp: string;
          FvarCidPort: string;
          FvarCidUse: string;



          FvarCidUse2: string;

          FvarCidID: string;
          FvarCidPASS: string;

          FvarSKTCidID: string;
          FvarSKTCidPASS: string;
          FvarSKtTelNo: string;

          FvarLGUplusTASID : string;
          FvarLGUplusTASPASS : string;

          FvarKTiCidID: string;
          FvarKTiCidPASS: string;
          FvarKtiTelNo: string;

          FvarKTiCidID2: string;
          FvarKTiCidPASS2: string;
          FvarKtiTelNo2: string;



          FvarEasydent : string;

          FvarImageDel:string;  //이지덴트 연동 삭제
          

          FvarImageViewThisPc:string;  //Left image View

          FvarImageViewIndi :string; //이미지뷰어 개별설정 여부
          FvarXrayViewer :string;  //이미지뷰어 실행파일 경로

          FDetailLoadInfo: string;
          //환자 정보로드할 때 세부 정보 볼건지(1) 말건지  (0외 기타)
          FInputBohum: string;
          //환자 정보로드할 때 세부 정보 볼건지(1) 말건지  (0외 기타)
          FBohumApplyDate: string;
          //환자 정보로드할 때 세부 정보 볼건지(1) 말건지  (0외 기타)

          FLoadSogepan: string;
          FLoadGajokpan: string;

          FvarLoadDur: string;
          FvarMessageView: string;
          FvarChungView: string;

          FvarGogekView: string;
          FvarYeyakView: string;
          FvarChartView: string;
          FvarfamilyView: string; //2011.12.1
          FvarChartDayColor: string;

          FvarChartApp: string;
          FvarChartTab: string;  //차트구분의 탭 index
          FvarChartXray: string;
          FvarChartMachi: string;
          FvarChartTuyakColor: string;


          FvarChartCode: string;
          FvarChartKindView: string;
          FvarChartDaily: string;



          FvarNextButtonColor : string;
          FvarNextButtonAlign : string;
          FvarNextButtonText  : string;
          FvarUpperToothColor : string;
          FvarLowerToothColor : string;
          FvarSunapComment    : string;   //수납의 참고사항을 dailyComment로 사용
          FvarSunapRemarkCardView    : string;   //수납 참고사항에 카드수납내역 보기




          FvarChartEtc1: string;

          FvarChartSignKind: string; //차트 싸인기 종류

          FvarScanView: string;
          FvarTeethView: string;

          FvarPlanDetailView: string;
          FvarChartListOrder  : string;

          FvarUseChartingModWindow: string;

          FvarChartScrollSync  : string;


          FvarHappycallChartWrite: string;
          FvarChartArch: string;
          FvarChartInput: string;
          FvarDaegiOrder: string;
          FvarDaegiTeamSave: string;
          FvarTeamColorDisp: string;

          FvarEasydentDaegi: string;

          FvarSunapFinish: string;

          FvarDaegiTimerUse : string;
          FvarDaegiSocketUse  : string;
          FvarDaegiGubunView    : string;


           FvarChartCopyUse             : string;
           FvarChartCopyWithSunap       : string;
           FvarChartCopyWitheChart       : string;
           FvarChartCopyWithChartChange : string;
           FvarChartCopyWithPromise     : string;
           FvarCopyPromiseParam     : string;

           FvarEasyChartChangeView  : string;


           FvarDentalHelperReception  : string;

          FvarDaegiSound: string;

          FvarChubangDaepyo: string;

          FvarTabView: string;
          FvarPadding: integer;

          FvarViewCCTeeth: string;

          //password info
          FvarPassSunap: string;
          FvarPassDayJumgum: string;
          FvarPassDayMagam: string;
          FvarPassMonthMagam: string;
          FvarPassYearMagam: string;
          FvarPassSunapKind: string;
          FvarPassMisu: string;
          FvarPassLock: string;
          FvarPassChartDelete: string;

          FvarPassSunapUpdate: string;
          FvarPassMagamUpdate: string;

          FvarPassAccountFinal: string;



          FvarDownKind: string;
          FvarFtpRoot: string;
          FvarFtpID: string;
          FvarFtpPass: string;
          FvarFtpPort: string;



          //다중 서버 설정
          FVarImg1Kind: string;
          FVarImg1IP: string;
          FVarImg1Root: string;
          FVarImg1ID: string;
          FVarImg1Pass: string;
          FVarImg1Port: string;

          FVarImg2Kind: string;
          FVarImg2IP: string;
          FVarImg2Root: string;
          FVarImg2ID: string;
          FVarImg2Pass: string;
          FVarImg2Port: string;

          FVarImg3Kind: string;
          FVarImg3IP: string;
          FVarImg3Root: string;
          FVarImg3ID: string;
          FVarImg3Pass: string;
          FVarImg3Port: string;

          FVarImg4Kind: string;
          FVarImg4IP: string;
          FVarImg4Root: string;
          FVarImg4ID: string;
          FVarImg4Pass: string;
          FVarImg4Port: string;

          FVarImg5Kind: string;
          FVarImg5IP: string;
          FVarImg5Root: string;
          FVarImg5ID: string;
          FVarImg5Pass: string;
          FVarImg5Port: string;

          FVarChartServerKind: string;
          FVarChartServerIP: string;
          FVarChartServerRoot: string;
          FVarChartServerID: string;
          FVarChartServerPass: string;
          FVarChartServerPort: string;

          FVarDocuServerKind: string;
          FVarDocuServerIP: string;
          FVarDocuServerRoot: string;
          FVarDocuServerID: string;
          FVarDocuServerPass: string;
          FVarDocuServerPort: string;

          FVarArchInputKind: string;
          FVarCert : string;
          FvarChartDelete : string;

          FVarpromiseLock: string;


          FvarPromiseTransfer : integer; // PromiseTransfer 


          QGetDate: string;
          QTop: string;
          Qisnull: string;


          //AutoSMS전송 프로그램에서 설정한 변수들
          FSmsman:string;
          FSmsManTime:string;
          FSmsManMin:string;

          FsmsPromise:string;
          FTodayPromiseSend:string;


          FsmsPromiseDay:string;
          FsmsPromiseDay2:string;
          FsmsPromiseTime:string;
          FsmsPromiseMin:string;

          FsmsPromiseTime_Sat:string;
          FsmsPromiseMin_sat:string;

          FsmsPromiseMem:string;


          //==리콜 변수 시작
          FsmsRecall:string;
          FTodayRecallSend:string;


          FsmsRecallDay:string;
          FsmsRecallTime:string;
          FsmsRecallMin:string;

          FsmsRecallTime_Sat:string;
          FsmsRecallMin_sat:string;

          FsmsRecallMem:string;
          //==리콜 변수 끝



          FsmsBirth:string;
          FsmsBirthTime:string;
          FsmsBirthMin:string;
          FsmsBirthMem : string;

          FsmsNew:string;
          FsmsNewTime:string;
          FsmsNewmin:string;
          FsmsNewMem : string;

          FsmsMinewon:string;
          FsmsMinewonTimeInterval : string;
          FsmsMinewonMin:string;
          FsmsMinewonMem:string;

          FvarBarCardTopCaption : string;
          FvarBarCardBottomCaption : string;

          FvarNoticeRemark   : string;



       // 외부프로그램설정용 하나로 앤드윈등
          FvarImageUser2: string;
          FvarImageIp2: string;
          FvarImagePass2: string;
          FvarImageDb2: string;
          FvarAnotherDB: string;
          FvarImageProtocol2: string;

          FvarGoogleMapApiKey : string;

          FvarLink1      : string;
          FvarLink2      : string;

           FvarShareFolderPPT: string;
           FvarShareFolderID: string;
           FvarPPTPath: string;

           FvarPenchartTemplatePath : string;
           FvarPenchartSavedPath : string;


           FvarPersonalinfoPath: string;
           FvarOrthoagree1Path: string;
           FvarOrthoagree2Path: string;

          FvarTreatFeePath: string;


          FrecallYear : string;
          FrecallMonth : string;
          FrecallWeek : string;
          FrecallDay : string;

          FNoticeRemark : string;
          FIbwon : string;
          FBunnapInputUse : string;
          FHideTot : string;
          FAutoHyunReceipt  : string;


          FgIsDllStart : boolean;

     public






          constructor Create();
          destructor Destroy();

          //DB 정보=======================================

          property DbCon: Boolean read FDbCon write FDbCon;
          property RunDir: string read configFile;
          property varServerPort: string read FvarServerPort;
          property varServerIP: string read FvarServerIP;
          property varDocuIP: string read FvarDocuIP;
          property varDbIp: string read FvarDbIP;
          property varDbPort: integer read FvarDbPort;
          property varDbname: string read FvarDbname;
          property varDbuser: string read FvarDbuser;
          property varDbpass: string read FvarDbpass;
          property varDbprotocol: string read FvarDbprotocol;

          property ServerIp2:string read FServerIp2;
          property DBName2:string read FDBName2;
          property DBUser2:string read FDBUser2;
          property DBPass2:string read  FDBPass2;
          property DBProtocol2:string read  FDBProtocol2;


          //Login 정보=======================================
          property varLoginId: string read FvarLoginId;
          property varLoginPass: string read FvarLoginPass;
          property varAutoLogin: string read FvarAutoLogin;
          property varUpdateAuto: string read FvarUpdateAuto;
          property varRISSYNC: string read FvarRISSYNC;

          property varCertLogin: string read FvarCertLogin;


          property varIDSAVE: string read FvarIDSAVE;
          property varWEb: string read Fvarweb;
          property VarSMSLogin: string read FSMSLogin;

          property VarScheduleDate: string read FvarScheduleDate;
          property VarScheduleOpen: string read FvarScheduleOpen;

          //병원 정보=======================================

          property varsaupname: string read Fvarsaupname;
          //                                      0101 회사명
          property varsaupEngname: string read FvarsaupEngname;
          //                                      0191 회사명(영어)
          property varDaepyo: string read FvarDaepyo;
          //                                      0102 대표자명
          property varJumin: string read FvarJumin;
          //                                      0103 주민번호
          property varsaupNo: string read FvarsaupNo;
          //                                      0104 사업자번호
          property varMyunhu: string read FvarMyunhu;
          //                                      0105 면허번호
          property varYoyang: string read FvarYoyang;
          //                                      0106 요양기관기호
          property varZip: string read FvarZip;
          //                                      0107 우편번호
          property varAdd1: string read FvarAdd1;
          //                                      0108 기본주소
          property varAdd2: string read FvarAdd2; //0109 확장주소

          property varEngAdd1: string read FvarEngAdd1; //0192  기본주소 영문
          property varEngAdd2: string read FvarEngAdd2; //0193   확장주소1  영문
          property varEngAdd3: string read FvarEngAdd3; //0193   확장주소2  영문
          //
          property varTel1: string read FvarTel1;
          //                                      0110 전화번호1
          property varTel2: string read FvarTel2;
          //                                      0111 전화번호2
          property varFax1: string read FvarFax1;
          //                                      0112 팩스번호1
          property varFax2: string read FvarFax2;
          //                                      0113 팩스번호2
          property varEmail: string read FvarEmail;
          //                                      0114 이메일
          property varilsu: string read Fvarilsu;
          //                                      0115 초재진산정일수
          property varGubun: string read FvarGubun;
          //                                      0116 병의원 구분
          property varSimjibu: string read FvarSimjibu;
          //                                      0117 심평원지부코드
          property varDocNo: string read FvarDocNo;
          //                                      0118 등록된 의사 수
          property varChubang: string read FvarChubang;
          //                                      0119 처방전 사용기간
          property varPrintsu: string read FvarPrintsu;
          //                                      0120 처방전인쇄-약국용, 환자보관용
          property varBunup: string read FvarBunup;
          //                                      0121 의약분업적용
          property varDaeheng: string read FvarDaeheng;
          //                                      0122 청구대행단체
          property varRmode: string read FvarRmode;
          //                                      0123 영수증발급모드
          property varChungname: string read FvarChungname;
          //                                      0124 보험청구 작성자명
          property varChungJumin: string read FvarChungJumin;
          //                                  0125 보험청구 작성자주민번호
          property varJagyukID: string read FvarJagyukID;

          //                                  0126 자격확인 아이디

          property varChungNo: string read FvarChungNo;
          //                                  청구승인번호

          property varJagyukpass: string read FvarJagyukpass;
          //                                  0127 자격확인 패스워드
          property varsmsId: string read FvarsmsId;
          //                                  0128 SMS로그인 아이디
          property varSmspass: string read FvarSmspass;

          //                                  0129 SMS패스워드
          property varsmsNo: string read FvarsmsNo;
          //                                  0134 SMS전화번호
          property varsmsCustKind: string read FvarsmsCustKind;
          //                                  0135 SMS CustKind
          property varsmsConvMin: string read FvarsmsConvMin;
          //                                  0141 SMS 분단위 치환 30분미만 ->00 30분이상 00


          property varNewAutoSend: string read FvarNewAutoSend;
          //                                    0147 신환 자동 SMS전송

          property VarSmsAutosendContent: string read FvarSmsAutosendContent;
          //                                    0256 신환 자동 SMS전송 문구



          property varSmsChangeSend: string read FvarSmsChangeSend;
          //                                    0370 예약변경자동 SMS전송

          property VarSmsChangeContent: string read FvarSmsChangeContent;
          //                                    0371 예약변경자동 SMS전송문구


          property varSmsCancelSend: string read FvarSmsCancelSend;
          //                                    0372 예약취소자동 SMS전송

          property VarSmsCancelContent: string read FvarSmsCancelContent;
          //                                    0373 예약취소자동 SMS전송문구



          property varChartRule: string read FvarChartRule;
          //                                  0130 차트번호 규칙
          property varChartNew: string read FvarChartNew;
          //                                  0131 차트번호 새로시작번호

          property varSangMode: string read FvarSangMode;
          //                                      0132 상병모드(?) 구분
          property varJinryoSave: string read FvarJinryoSave;
          //                                      0133 Sunap테이블에 저장할지 말지

          property varbohumSunap: string read FvarbohumSunap;
          //                                      0136 청구수납저장시 수납연동

          property vardaegiColor: string read FvardaegiColor;
          //                                      0137 진료대기아이콘대신 팀색으로만

          property varHygine: string read FvarHygine;
          //                                      0138 전자챠트창에 Hygine칸 보이기

          property varDoctor: string read FvarDoctor; // 0171 전자챠트창에 Hygine칸 보이기
          property varPrintingCnt: integer read FvarPrintingCnt; // 0174 영수증 발행매수 0:2매 1:1매인쇄




          property varChartConv: string read FvarChartConv;   //                                      0139


          property imgSharefolderPath : string read FimgSharefolderPath;  //0140 환자얼굴저장경로

          property signfilePath : string read FsignfilePath;  //0142 인장 저장파일명

          property signfilePath1 : string read FsignfilePath1;  //0142 인장 저장파일명
          property signfilePath2 : string read FsignfilePath2;  //0142 인장 저장파일명
          property SmsSendNo_New : string read FSmsSendNo_New;  //새로 저장한 ini SMS전송번호




          property  DocuHeaderFile : string read FDocuHeaderFile;  //0167 DocuHeaderFile 저장파일명
          property  DocuMidFile : string read FDocuMidFile;  //0168 DocuMidrFile 저장파일명

          property    varJungsanPrintDirection : string read FvarJungsanPrintDirection;  //0141 일일점검 인쇄방향
          property    varViewAllInit : string read FvarViewAllInit;  //0145 VarViewAll
          property    varNewonCountView : string read FvarNewonCountView; // 0143 메인창 내원횟수 보기설정
          property    varSunapSumView : string read FvarSunapSumView; // 0146 일자별수납내역 합계 보기설정
          property    varSunapPrintLineChange : string read FvarSunapPrintLineChange ; // 0147 일자별수납내역 인쇄시 라인변경

          property    varPrtFirstForm : string read FvarPrtFirstForm ; // 0169 일자별수납내역 인쇄시 라인변경

          property    varJuminView : string read FvarJuminView ; // 0374 처방전인쇄시주민번호 보기


          property    varRecallAlret : string read FvarRecallAlret; // 0149 리콜 예약 알림


          property varTestPg: string read FvarTestPg;

          property varGamengNo: string read FvarGamengNo; //가맹점번호
          property varVanKind: string read FvarVanKind;
          //밴사 종류 0:없음 1:KIS 2:Smartro
          property varTermianlNo: string read FvarTerminalNo; //터미널번호
          property varPOSNo: string read FvarPOSNo; //POS번호
          property varPrinterKind: string read FvarPrinterKind;
          //영수증프린터종류
          property varPrinterKind2: string read FvarPrinterKind2;
          //영수증프린터종류
          property varSignPort: string read FvarSignPort; //싸인패드 포트

          property varSunapKind: string read FvarSunapKind; //수납폼 종류

          property varHyunSunapIn: string read FvarHyunSunapIn; //수납시 현금영수증을 수납금액에 포함
          property varUseDocSunap: string read FvarUseDocSunap; //수납시 원장명 사용
          property varSunapUseGubun: string read FvarSunapUseGubun; //기간별수납리스트에서 환자 구분 보기

          property varSunapPrintOpt1: string read FvarSunapPrintOpt1; //기간별수납리스트인쇄 종류 - 간단인쇄


          property varAgreementScaleling : string read FvarAgreementScaleling ;//스케일링동의서 사용
          property varAgeFilter : string read FvarAgeFilter ;//나이로 필터링 사용





          property varDoctorsNoteAutoInput : string read FvarDoctorsNoteAutoInput ;//닥터스노트항목 자동입력
          property varBaseExamView         : string read FvarBaseExamView ;//기초검사항목 보기
          property varExamMemoView         : string read FvarExamMemoView ;//검사실메모보기

          property varScreenSave: string read FvarScreenSave;
          property varSCannerPort: string read FvarSCannerPort; //스태너포트
          property varSCannerSpeed: string read FvarScannerSpeed; //스캐너속도


          property varKeyPadPort: string read FvarKeyPadPort; //키패드포트
          property varKeyPadSpeed: string read FvarKeyPadSpeed; //키패드속도
          property varKeyPadKind: integer read FvarKeyPadKind; //키패드종류

          property varCertMachinePort: string read FvarCertMachinePort; //신용카드단말기포트
          property varCertMachineSpeed: string read FvarCertMachineSpeed; //신용카드단말기속도
          property varCertMachineKind: integer read FvarCertMachineKind; //신용카드단말기 종류



          property varKeyPadAutoStart: string read FvarKeyPadAutoStart; //키패드자동실행

          property varPromiseTransfer: integer read FvarPromiseTransfer; //PromiseTransfer

          //약속환경 정보=======================================

          property p_startTime: string read Fp_startTime;
          property p_finishtime: string read Fp_finishtime;

          property p_LunchstartTime: string read Fp_LunchstartTime;
          property p_Lunchfinishtime: string read Fp_Lunchfinishtime;

          property p_LunchstartTime_sat: string read Fp_LunchstartTime_sat;
          property p_Lunchfinishtime_sat: string read Fp_Lunchfinishtime_sat;

          property p_LunchCap: string read Fp_LunchCap;
          property p_LunchColor: string read Fp_LunchColor;


           property p_ColorNewon_b: string read  Fp_ColorNewon_b  ;
           property p_ColorCancel_b: string read Fp_ColorCancel_b ;
           property p_colorChange_b: string read Fp_colorChange_b ;
           property p_ColorNotCon_b: string read Fp_ColorNotCon_b ;
           property p_ColorRecall_b: string read Fp_ColorRecall_b ;
           property p_ColorReyeyak_b: string read Fp_ColorReyeyak_b ;
           property p_ColorEnd_b: string read Fp_ColorEnd_b ;

           property p_ColorNewon_f: string read  Fp_ColorNewon_f ;
           property p_ColorCancel_f: string read Fp_ColorCancel_f ;
           property p_colorChange_f: string read Fp_colorChange_f ;
           property p_ColorNotCon_f: string read Fp_ColorNotCon_f ;
           property p_ColorRecall_f: string read Fp_ColorRecall_f ;
           property p_ColorReyeyak_f: string read Fp_ColorReyeyak_f ;
           property p_ColorEnd_f: string read Fp_ColorEnd_f ;


          property P_positionTime: string read FP_PositionTime;
          property P_viewItalic: string read FP_viewItalic;
          property p_timeinterval: integer read Fp_timeinterval;
          property p_rowinterval: integer read Fp_rowinterval;
          property p_columncount: integer read Fp_columncount;

          property  P_DocComboView: integer read FP_DocComboView;
          property  P_AutoNoSMS: integer read FP_AutoNoSMS;

          property  P_JubsuDelete: integer read FP_JubsuDelete;
          property  P_DelayWorkView: integer read FP_DelayWorkView;

          property  P_AutoSendSMS: integer read FP_AutoSendSMS;
          property  P_remarkPrint: integer read FP_RemarkPrint;
          property  P_PromiseTeamLoad: integer read FP_PromiseTeamLoad;



           property  p_FixPromiseFontcolor: integer read     Fp_FixPromiseFontcolor  ;

          property p_ChartNoView: string read Fp_ChartNoView; //2012.5.17
          property p_ChartNoOnlyView: string read Fp_ChartNoOnlyView; //2012.5.17
          property p_ColumnFix: string read Fp_ColumnFix; //2012.6.12

          property p_SmsContent: string read Fp_SmsContent;
          property p_BeforeSendSms: integer read Fp_BeforeSendSms;
          property p_BeforeSmsCheck: integer read Fp_BeforeSmsCheck;
          property p_BeforSms: integer read Fp_BeforSms;
          property p_SmsBeforTime: string read Fp_SmsBeforTime;

          property p_recallSmsContent: string read Fp_recallSmsContent;
          property p_BeforeSendrecallSms: integer read
               Fp_BeforeSendrecallSms;
          property p_BeforerecallSmsCheck: integer read
               Fp_BeforerecallSmsCheck;
          property p_BeforrecallSms: integer read Fp_BeforrecallSms;
          property p_recallSmsBeforTime: string read Fp_recallSmsBeforTime;

          property p_MinewonSmsContent: string read Fp_MinewonSmsContent;
          property p_BeforeSendMinewonSms: integer read
               Fp_BeforeSendMinewonSms;
          property p_BeforeMinewonSmsCheck: integer read
               Fp_BeforeMinewonSmsCheck;
          property p_BeforMinewonSms: integer read Fp_BeforMinewonSms;
          property p_MinewonSmsBeforTime: string read
               Fp_MinewonSmsBeforTime;

          //기타 정보============================================================
          property varpicpath: string read Fvarpicpath;
          property varImageKind: string read FvarImageKind;
          property varImageDbSaveMode: string read FvarImageDbSaveMode;
          property varImageDbPath: string read FvarImageDbPath;
          property varImageDbPort: string read FvarImageDbPort;
          property varImageDbIp: string read FvarImageDbIp;
          property varpanoScale: string read FvarpanoScale;

          property varViewKind: string read FvarViewKind;

          property varLoadChamgo: string read FvarLoadChamgo;

          property varImageIp: string read FvarImageIp;
          property varImageUse: string read FvarImageUse;
          property varUseHttp: string read FvarUseHttp;
          property varFaceFromDB: string read FvarFaceFromDB;


          property varHttpPathChange: string read FvarHttpPathChange;

          property varUseThumbnail: string read FvarUseThumbnail;

          property varImageChartZeroExcept: string read FvarImageChartZeroExcept;



          property varUseOldImageView: string read  FvarUseOldImageView ;
          property varHttppath: string read FvarHttpPath;

          property varImageViewAppPath: string read FvarImageViewAppPath;
          property varImgViewOrder: string read FvarImgViewOrder;
          property varShareFolder: string read FvarShareFolder;
          property varShareFolderPath: string read FvarShareFolderPath;

          property varChartPathUse: string read FvarChartpathUse;

          property varImageUser: string read FvarImageUser;
          property varImagePass: string read FvarImagePass;
          property varImageDB: string read FvarImageDB;
          property varImageProtocol: string read FvarImageProtocol;
          property varViewer: string read FvarViewer;

          property varImageIp7: string read FvarImageIp7;
          property varImageUser7: string read FvarImageUser7;
          property varImagePass7: string read FvarImagePass7;
          property varImageDB7: string read FvarImageDB7;

          property varuseImageView: string read FvarUseImageView;
          property varuseMunFile: string read FvaruseMunFile;
          property varuseMunFileIP: string read FvaruseMunFileIP;

          property initHygine: string read FinitHygine;



          property varCidIp: string read FvarCidIp;
          property varCidPort: string read FvarCidPort;
          property varCidUse: string read FvarCidUse;
          property varCidUse2: string read FvarCidUse2;

          property varCidID: string read FvarCidID;
          property varCidPASS: string read FvarCidPASS;

          property varSKTCidID: string read FvarSKTCidID;
          property varSKTCidPASS: string read FvarSKTCidPASS;
          property varSKtTelNo: string read FvarSKtTelNo;

          property varLGUplusTASID: string read FvarLGUplusTASID;
          property varLGUplusTASPASS: string read FvarLGUplusTASPASS;


          property varKTiCidID: string read FvarKTiCidID;
          property varKTiCidPASS: string read FvarKTiCidPASS;
          property varKtiTelNo: string read FvarKtiTelNo;

          property varKTiCidID2: string read FvarKTiCidID2;
          property varKTiCidPASS2: string read FvarKTiCidPASS2;
          property varKtiTelNo2: string read FvarKtiTelNo2;



          property  varEasydent: string read  FvarEasydent;


          property varImageViewThisPc: string read FvarImageViewThisPc ;

          property varImageViewIndi: string read FvarImageViewIndi ;
          property varXrayViewer: string read  FvarXrayViewer;


          property varImageDel: string read FvarImageDel ;

          property DetailLoadInfo: string read FDetailLoadInfo;
          property InputBohum: string read FInputBohum;
          property BohumApplyDate: string read FBohumApplyDate;

          property LoadSogepan: string read FLoadSogepan;
          property LoadGajokPan: string read FLoadGajokPan;

          property varLoadDur: string read FvarLoadDur;
          property varMessageView: string read FvarMessageView;

          property varChungView        : string read FvarChungView;

          property varGogekView        : string read FvarGogekView;
          property varYeyakView        : string read FvarYeyakView;
          property varChartView        : string read FvarChartView;
          property varChartDayColor    : string read FvarChartDayColor;
          property varChartTuyakColor  : string read FvarChartTuyakColor;



          property varNextButtonColor      : string read FvarNextButtonColor   ;
          property varNextButtonAlign      : string read FvarNextButtonAlign   ;
          property varNextButtonText       : string read FvarNextButtonText    ;
          property varUpperToothColor      : string read FvarUpperToothColor   ;
          property varLowerToothColor      : string read FvarLowerToothColor   ;
          property varSunapComment         : string read FvarSunapComment      ;
          property varSunapRemarkCardView         : string read FvarSunapRemarkCardView      ;


          property varChartApp: string read FvarChartApp;
          property varChartEtc1: string read FvarChartEtc1;
          property varChartxray: string read FvarChartxray;
          property varChartTab: string read FvarChartTab;
          property varChartSignKind: string read FvarChartSignKind;


          property varChartCode: string read FvarChartCode;
          property varChartKindView: string read FvarChartKindView;
          property varChartDaily: string read FvarChartDaily;


          property varChartmachi: string read FvarChartMachi;


          property varScanView: string read FvarScanView;
          property varTeethView: string read FvarTeethView;
          property varPlanDetailView: string read FvarPlanDetailView;
          property varChartListOrder  : string read    FvarChartListOrder;
          property varHappycallChartWrite: string read FvarHappycallChartWrite;

          property varUseChartingModWindow: string read FvarUseChartingModWindow;

          property varChartScrollSync: string read FvarChartScrollSync;


          property varChartArch: string read FvarChartArch;
          property varChartInput: string read FvarChartInput;

          property varDaegiOrder: string read FvarDaegiOrder;
          property varDaegiTeamSave: string read FvarDaegiTeamSave;
          property varTeamColorDisp: string read FvarTeamColorDisp;

          property varEasydentDaegi: string read FvarEasydentDaegi;
          property varSunapFinish: string read FvarSunapFinish;
           property varDaegiTimerUse: string read FvarDaegiTimerUse;
           property  varDaegiSocketUse: string read FvarDaegiSocketUse;
           property  varDaegiGubunView: string read FvarDaegiGubunView;


         property  varChartCopyUse: string read                FvarChartCopyUse           ;
         property  varChartCopyWithSunap: string read          FvarChartCopyWithSunap     ;
         property  varChartCopyWitheChart: string read          FvarChartCopyWitheChart     ;
         property  varChartCopyWithPromise: string read        FvarChartCopyWithPromise   ;
         property  varCopyPromiseParam: string read         FvarCopyPromiseParam   ;

         property  varChartCopyWithChartChange: string read   FvarChartCopyWithChartChange ;
         property  varEasyChartChangeView: string read   FvarEasyChartChangeView ;
         property  varDentalHelperReception: string read   FvarDentalHelperReception ;





          property varDaegiSound: string read FvarDaegiSound;

          property varChubangDaepyo: string read FvarChubangDaepyo;

          property varTabView: string read FvarTabView;

          property varfamilyView: string read FvarfamilyView; //2011.12.1

          property varLoadBackup: string read FvarLoadBackup;

          property varDaegiViewMode: string read FvarDaegiViewMode;
          property varDaegiRefreshMode: string read FvarDaegiRefreshMode;

          property varPadding: integer read FvarPadding;

          property varViewCCTeeth: string read FvarViewCCTeeth;

          //pass info
          property varPassSunap: string read FvarPassSunap;
          property varPassDayJumgum: string read FvarPassDayJumgum;
          property varPassDayMagam: string read FvarPassDayMagam;
          property varPassMonthMagam: string read FvarPassMonthMagam;
          property varPassYearMagam: string read FvarPassYearMagam;
          property varPassSunapKind: string read FvarPassSunapKind;
          property varPassMisu: string read FvarPassMisu;


          property varPassLock: string read FvarPassLock;
          property varPassChartDelete: string read FvarPassChartDelete;
          property varPassSunapUpdate: string read FvarPassSunapUpdate;
          property varPassMagamUpdate: string read FvarPassMagamUpdate;

          property varPassAccountFinal: string read FvarPassAccountFinal;



          property varDownKind: string read FvarDownKind;
          property varFtpRoot: string read FvarFtpRoot;
          property varFtpID: string read FvarFtpID;
          property varFtpPass: string read FvarFtpPass;

          property varFtpPort: string read FvarFtpPort;

          property VarImg1Kind: string read FVarImg1Kind;
          property VarImg1ip: string read FVarImg1ip;
          property VarImg1root: string read FVarImg1root;
          property VarImg1id: string read FVarImg1id;
          property VarImg1pass: string read FVarImg1pass;
          property VarImg1port: string read FVarImg1port;

          property VarImg2Kind: string read FVarImg2Kind;
          property VarImg2ip: string read FVarImg2ip;
          property VarImg2root: string read FVarImg2root;
          property VarImg2id: string read FVarImg2id;
          property VarImg2pass: string read FVarImg2pass;
          property VarImg2port: string read FVarImg2port;

          property VarImg3Kind: string read FVarImg3Kind;
          property VarImg3ip: string read FVarImg3ip;
          property VarImg3root: string read FVarImg3root;
          property VarImg3id: string read FVarImg3id;
          property VarImg3pass: string read FVarImg3pass;
          property VarImg3port: string read FVarImg3port;

          property VarImg4Kind: string read FVarImg4Kind;
          property VarImg4ip: string read FVarImg4ip;
          property VarImg4root: string read FVarImg4root;
          property VarImg4id: string read FVarImg4id;
          property VarImg4pass: string read FVarImg4pass;
          property VarImg4port: string read FVarImg4port;

          property VarImg5Kind: string read FVarImg5Kind;
          property VarImg5ip: string read FVarImg5ip;
          property VarImg5root: string read FVarImg5root;
          property VarImg5id: string read FVarImg5id;
          property VarImg5pass: string read FVarImg5pass;
          property VarImg5port: string read FVarImg5port;


          property VarChartServerKind: string read FVarChartServerKind;
          property VarChartServerip: string read FVarChartServerip;
          property VarChartServerroot: string read FVarChartServerroot;
          property VarChartServerid: string read FVarChartServerid;
          property VarChartServerpass: string read FVarChartServerpass;
          property VarChartServerport: string read FVarChartServerport;

          property VarDocuServerKind: string read FVarDocuServerKind;
          property VarDocuServerip: string read FVarDocuServerip;
          property VarDocuServerroot: string read FVarDocuServerroot;
          property VarDocuServerid: string read FVarDocuServerid;
          property VarDocuServerpass: string read FVarDocuServerpass;
          property VarDocuServerport: string read FVarDocuServerport;



          property VarArchInputKind: string read FVarArchInputKind;

          property VarCert: string read FVarCert;
           property varChartDelete: string read    FvarChartDelete;
          property VarPromiseLock: string read FVarPromiseLock;


          property varGetDate: string read QGetDate;
          property varTop: string read QTop;
          property varisnull: string read Qisnull;


          property VarSmsman: string read FSmsman;
          property VarSmsManTime: string read FSmsManTime;
          property VarSmsManMin: string read FSmsManMin;

          property VarsmsPromise: string read FsmsPromise;

          property VarTodayPromiseSend: string read FTodayPromiseSend;

          property VarsmsPromiseDay: string read FsmsPromiseDay;
          property VarsmsPromiseDay2: string read FsmsPromiseDay2;

          property VarsmsPromiseTime: string read FsmsPromiseTime;
          property VarsmsPromiseMin: string read FsmsPromiseMin;

          property VarsmsPromiseTime_sat: string read FsmsPromiseTime_sat;
          property VarsmsPromiseMin_sat: string read FsmsPromiseMin_sat;

          property VarsmsPromiseMem: string read FsmsPromiseMem;



          property VarsmsRecall: string read FsmsRecall;

          property VarTodayRecallSend: string read FTodayRecallSend;

          property VarsmsRecallDay: string read FsmsRecallDay;

          property VarsmsRecallTime: string read FsmsRecallTime;
          property VarsmsRecallMin: string read FsmsRecallMin;

          property VarsmsRecallTime_sat: string read FsmsRecallTime_sat;
          property VarsmsRecallMin_sat: string read FsmsRecallMin_sat;

          property VarsmsRecallMem: string read FsmsRecallMem;





          property VarsmsBirth: string read FsmsBirth;
          property VarsmsBirthTime: string read FsmsBirthTime;
          property VarsmsBirthMin: string read FsmsBirthMin;
          property VarsmsBirthMem: string read FsmsBirthMem;

          property VarSmsNew : string read FsmsNew ;
          property VarSmsNewTime: string read FsmsNewTime;
          property VarSmsNewMin: string read FsmsNewMin;
          property VarSmsNewMem: string read FsmsNewMem;

          property VarSmsMinewon: string read FsmsMinewon;
          property VarSmsMinewonTimeInterval: string read FsmsMinewonTimeInterval;
          property VarSmsMinewonMin: string read FsmsMinewonMin;
          property VarSmsMinewonMem: string read FsmsMinewonMem;

          property VarBarCardTopCaption: string read FvarBarCardTopCaption;
          property VarBarCardBottomCaption: string read FvarBarCardBottomCaption;


          property varNoticeRemark : string read FvarNoticeRemark ;

          //외부프로그램 설정용 하나로 앤드컴 등
          property varImageIp2 : string read FvarImageIp2;
          property varImageUser2: string read FvarImageUser2;
          property varImagePass2: string read FvarImagePass2;
          property varImageDB2: string read FvarImageDB2;
          property varImageProtocol2: string read FvarImageProtocol2;


          property varGoogleMapApiKey: string read FvarGoogleMapApiKey;

          property varLink1: string read FvarLink1;
          property varLink2: string read FvarLink2;




          property varAnotherDB: string read FvarAnotherDB;


          property varShareFolderPPT: string read FvarShareFolderPPT;
          property varShareFolderID: string read FvarShareFolderID;

           property varPenchartTemplatePath: string read FvarPenchartTemplatePath;
           property varPenchartSavedPath: string read FvarPenchartSavedPath ;

          property varPPTPath: string read FvarPPTPath;

          property varPersonalinfoPath: string read FvarPersonalinfoPath;
          property varOrthoagree1Path: string read FvarOrthoagree1Path;
          property varOrthoagree2Path: string read FvarOrthoagree2Path;
          property varTreatFeePath: string read FvarTreatFeePath;


          property gIsDllStart: boolean read FgIsDllStart;


          property varRecallYear: string read FRecallYear;
          property varRecallMonth: string read FRecallMonth;
          property varRecallWeek: string read FRecallWeek;
          property varRecallDay: string read FRecallDay;


          property varIbwon: string read FIbwon;
          property varBunnapInputUse: string read FBunnapInputUse;
          property varHideTot: string read FHideTot;


          property varAutoHyunReceipt: string read FAutoHyunReceipt;






          procedure LoadGlobalData_ini;
          procedure LoadGlobalData_db2Set;  //2차서버 주소는 win.ini에 쓴다.

          procedure LoadGlobalData_db;
          procedure LoadQueryFunc(varKind: string);

          procedure saveValue(code, val: string; disp: string = '');
          //    procedure RestoreForm(const Frm: TForm; const sName: string = '');
          //    procedure SaveForm(const Frm: Tform; const sName: string = '');

          procedure Db2infoSave;
     end;



implementation


uses uConfig, uDm, uFunctions;
const
     POSFMT = '%d,%d,%d,%d';

constructor TConfigValue.Create();
begin
     inherited Create();
end;

destructor TConfigValue.Destroy();
begin
     inherited Destroy();

end;


procedure TConfigValue.LoadGlobalData_db2Set;
var
     forminit: Tinifile;
begin
     //Load GlobalSet
     //Db Password는 Open한다...

    // configFile := GetConfigDir + 'db.ini';
     configFile := 'c:\windows\' + 'win.ini';

     FormInit := TIniFile.Create(configFile);//runDir);

     FServerIp2 := FormInit.ReadString('file', '1', '');
     FDbName2 := FormInit.ReadString('file', '2', '');
     FDbPass2 := FormInit.ReadString('file', '3', '');
     FDbUser2 := FormInit.ReadString('file', '4', '');
     FDbProtocol2 := FormInit.ReadString('file', '5', '');


   {
     FvarServerPort := FormInit.ReadString('DATABASE', '11', '9887');              // SERVERPORT
     FvarServerIP := FormInit.ReadString('DATABASE', '12', '127.0.0.1');           // SERVERIP
     FvarDocuIP := FormInit.ReadString('DATABASE', '13', '127.0.0.1');             // DOCUIP
     FvarDbIP := FormInit.ReadString('DATABASE', '14', '127.0.0.1\dentro');        // dbip
     FvarDbPort := FormInit.ReadInteger('DATABASE', '15', 0);                      // dbPort
     FvarDbname := FormInit.ReadString('DATABASE', '16', 'dentro');                // dbname
     FvarDbuser := FormInit.ReadString('DATABASE', '17', 'SA');                    // dbuser
     FvarDbpass := FormInit.ReadString('DATABASE', '18', '2002');                  // dbpass
     FvarDbprotocol := FormInit.ReadString('DATABASE', '19', 'MSSQL');             // dbprotocol
    }



     FormInit.Free;

end;


procedure TConfigValue.LoadGlobalData_ini;
var

   FormInit: Tinifile;


 dbIP
 ,dbName
 ,dbPASS
 ,dbProtocol
 ,dbUSER
 ,ServerIP
 ,DocuIP : string;
  DBPort : integer;
  saveName:string;
  configFile2 : string;
begin
     //Db.ini에서 불러간 후 card.ini에서 설정 부른다.
 
     configFile2 := extractFilePath(paramStr(0)) + 'db.ini';

     FormInit := TIniFile.Create(configFile2);

     //Load GlobalSet
     //Db Password는 Open한다...

    // configFile := GetConfigDir + 'db.ini';


    
 {   if fileExists( saveName) then
    begin
           LoadEncodingInfo(savename);


          dbIP        :=   headmark.HdbIP       ;
          dbName      :=   headmark.HdbName     ;
          dbPASS      :=   headmark.HdbPASS     ;
          dbProtocol  :=   headmark.HdbProtocol ;
          dbUSER      :=   headmark.HdbUSER     ;
          ServerIP    :=   headmark.HServerIP   ;
          DocuIP      :=   headmark.HDocuIP     ;
          DBPort      :=   strtoint( headmark.HDBPort)     ;


           FvarServerIP := '';
           FvarDocuIP :=  DocuIP;
           FvarDbIP :=  dbIP;
           FvarDbPort := DBPort;
           FvarDbname := dbName;
           FvarDbuser :=  dbUSER;
           FvarDbpass := dbPASS;
           FvarDbprotocol := dbProtocol;
    end
    else
    begin

  }


     FvarDocuIP := FormInit.ReadString('DATABASE', 'DOCUIP', '127.0.0.1');
     FvarDbIP := FormInit.ReadString('DATABASE', 'dbip', '127.0.0.1\dentro');
     FvarDbPort := FormInit.ReadInteger('DATABASE', 'dbPort', 0);
     FvarDbname := FormInit.ReadString('DATABASE', 'dbname', 'dentro');
     FvarDbuser := FormInit.ReadString('DATABASE', 'dbuser', 'sa');
     FvarDbpass := FormInit.ReadString('DATABASE', 'dbpass', '12345');
     FvarDbprotocol := FormInit.ReadString('DATABASE', 'dbprotocol', 'MSSQL');

      //여기서 기존정보를 info.info에 저장하고
      //기존 정보는 지우자.
      //일단 해제===> 문서관리, 청구, 싸인기, 청삼 등등을 모두 바꿩야함....
      //다시복구 시키는 방법.
      //1.아래 주석을 해제
      //2. dbSetting을 수정
      
   {   SaveDbInfo_encode('c:\info.info'
     , FvarDbIP
     , FvarDbIP
     ,FvarDbname
     ,FvarDbpass
     ,FvarDbprotocol
     ,FvarDbuser
     ,FvarDocuIP
     ,FvarDocuIP
     ,inttostr(FvarDbPort)     ) ;

      FormInit.DeleteKey('DATABASE', 'DOCUIP',);

    FormInit.DeleteKey('DATABASE', 'DOCUIP' );
    FormInit.DeleteKey('DATABASE', 'dbip');
    FormInit.DeleteKey('DATABASE', 'dbPort');
    FormInit.DeleteKey('DATABASE', 'dbname');
    FormInit.DeleteKey('DATABASE', 'dbuser');
    FormInit.DeleteKey('DATABASE', 'dbpass');
    FormInit.DeleteKey('DATABASE', 'dbprotocol');
     }

   {
     FvarServerPort := FormInit.ReadString('DATABASE', '11', '9887');              // SERVERPORT
     FvarServerIP := FormInit.ReadString('DATABASE', '12', '127.0.0.1');           // SERVERIP
     FvarDocuIP := FormInit.ReadString('DATABASE', '13', '127.0.0.1');             // DOCUIP
     FvarDbIP := FormInit.ReadString('DATABASE', '14', '127.0.0.1\dentro');        // dbip
     FvarDbPort := FormInit.ReadInteger('DATABASE', '15', 0);                      // dbPort
     FvarDbname := FormInit.ReadString('DATABASE', '16', 'dentro');                // dbname
     FvarDbuser := FormInit.ReadString('DATABASE', '17', 'SA');                    // dbuser
     FvarDbpass := FormInit.ReadString('DATABASE', '18', '2002');                  // dbpass
     FvarDbprotocol := FormInit.ReadString('DATABASE', '19', 'MSSQL');             // dbprotocol
    }


  //  end;

     FvarServerPort := FormInit.ReadString('DATABASE', 'SERVERPORT', '9887');

     FvarLoginId := FormInit.ReadString('LOGIN', 'ID', '1');
     FvarLoginPass := FormInit.ReadString('LOGIN', 'PASS', '1');

     FvarServerIP := FormInit.ReadString('DATABASE', 'SERVERIP', '127.0.0.1');

     FvarAutoLogin := FormInit.ReadString('LOGIN', 'AUTO', '0');

     FvarUpdateAuto  := FormInit.ReadString('LOGIN', 'UPDATEAUTO', '1');

     FvarRISSYNC    := FormInit.ReadString('LOGIN', 'RISSYNC', '1');

     FvarCertLogin  := FormInit.ReadString('LOGIN', 'CertLogin', '0');

     FvarIDSAVE := FormInit.ReadString('LOGIN', 'IDSAVE', '1');
     FvarWeb := FormInit.ReadString('LOGIN', 'WEB', '1');
     FSMSLogin := FormInit.ReadString('LOGIN', 'SMS', '0');

     FvarScheDuleDate := FormInit.ReadString('SCHEDULE', 'DATE',
          '2010-01-01');
     FvarScheDuleOpen := FormInit.ReadString('SCHEDULE', 'VIEW', '0');

     FvarSaupNo := FormInit.ReadString('BASEINFO', 'COMPCODE', '');
     fVarSaupName := FormInit.ReadString('BASEINFO', 'COMPNAME', '');
     fDetailLoadInfo := FormInit.ReadString('BASEINFO', 'DETAILLOAD', '');
     fInputBohum := FormInit.ReadString('BASEINFO', 'INPUTBOHUM', '1');

     fvarPromiseLock := FormInit.ReadString('BASEINFO', 'PROMISELOCK', '1');

     fLoadGajokPan := FormInit.ReadString('ETC', 'GAJOKPAN', '1');

     fLoadSogePan := FormInit.ReadString('ETC', 'SOGEPAN', '1');

     //FvarLoadDur := FormInit.ReadString('ETC', 'LOADDUR', '');

     FvarPicPath := FormInit.ReadString('BASEINFO', 'DICAPATH', '');

     FvarCidUse2 := FormInit.ReadString('BASEINFO', 'CIDUSE2', '');
     FvarCidUse := FormInit.ReadString('BASEINFO', 'CIDUSE', '');

     FvarCidID := FormInit.ReadString('BASEINFO', 'CIDUSERID', '');
     FvarCidPASS := FormInit.ReadString('BASEINFO', 'CIDUSERPASS', '');


     FvarSKTCidID := FormInit.ReadString('BASEINFO', 'SKTCIDUSERID', '');
     FvarSKTCidPASS := FormInit.ReadString('BASEINFO', 'SKTCIDUSERPASS', '');

     FvarLGUplusTASID   := FormInit.ReadString('BASEINFO', 'LGUCIDUSERID', '');
     FvarLGUplusTASPASS := FormInit.ReadString('BASEINFO', 'LGUCIDUSERPASS', '');




     FvarKTiCidID := FormInit.ReadString('BASEINFO', 'KTiCIDUSERID', '');
     FvarKTiCidPASS := FormInit.ReadString('BASEINFO', 'KTiCIDUSERPASS', '');
     FvarktiTelNo  := FormInit.ReadString('BASEINFO', 'KTiCIDTelno', '');

     FvarKTiCidID2 := FormInit.ReadString('BASEINFO', 'KTiCIDUSERID2', '');
     FvarKTiCidPASS2 := FormInit.ReadString('BASEINFO', 'KTiCIDUSERPASS2', '');
     FvarktiTelNo2  := FormInit.ReadString('BASEINFO', 'KTiCIDTelno2', '');


     FvarEasydent := FormInit.ReadString('BASEINFO', 'EASYDENT', '0');


     FvarImageViewThisPc := FormInit.ReadString('BASEINFO', 'ImageViewThisPc', '0');

     FvarImageViewIndi :=  FormInit.ReadString('BASEINFO', 'ImageViewIndi', '0') ;

     FvarXrayViewer :=  FormInit.ReadString('BASEINFO', 'XrayViewer', '');


     FvarImageDel := FormInit.ReadString('BASEINFO', 'ImageDel', '0');



     FvarImageViewAppPath :=  FormInit.ReadString('BASEINFO', 'ImageViewAppPath', '');

     FvarPPTpath := FormInit.ReadString('BASEINFO', 'pptAppPath', '');




     FvarJagyukID := FormInit.ReadString('ETC', 'CERTPOSITION', '0');

     FvarLoadChamgo := FormInit.ReadString('ETC', 'CHAMGOLOAD', '0');
     FvarLoadBackup := FormInit.ReadString('ETC', 'BACKUP', '0');
     FvarDaegiViewMode := FormInit.ReadString('ETC', 'DAEGIVIEWMODE', '0');
     FvarDaegiRefreshMode := FormInit.ReadString('ETC', 'DAEGIRefreshMODE', '');

     FvarBaseExamView := FormInit.ReadString('ETC', 'BaseExamView', '1');
     FvarExamMemoView := FormInit.ReadString('ETC', 'ExamMemoView', '0');
     FvarDoctorsNoteAutoInput := FormInit.ReadString('ETC', 'DoctorsNoteAutoInput', '1');


     FvarScannerPort := FormInit.ReadString('COMPORTINFO', 'SCANNER', ''); //'COM1'
     FvarScannerSpeed := FormInit.ReadString('COMPORTINFO', 'SPEED', '9600');

     FvarKeyPadPort := FormInit.ReadString('JUBSUKEYPADPORTINFO', 'PORT', ''); //'COM1'
     FvarKeyPadSpeed := FormInit.ReadString('JUBSUKEYPADPORTINFO', 'SPEED', '57600');
     FvarKeyPadKind := FormInit.ReadInteger('JUBSUKEYPADPORTINFO', 'KIND', 0);

     FvarKeyPadAutostart := FormInit.ReadString('JUBSUKEYPADPORTINFO', 'AUTOSTART', '0');

     FvarcertMachinePort := FormInit.ReadString('CertMachineINFO', 'PORT', ''); //'COM1'
     FvarcertMachineSpeed := FormInit.ReadString('CertMachineINFO', 'SPEED', '38400');
     FvarcertMachineKind := FormInit.ReadInteger('CertMachineINFO', 'KIND', 0);


     FvarDentalHelperReception := FormInit.ReadString('DentalHelperReception', 'AUTOSTART', '0');



     FvarKeyPadAutostart := FormInit.ReadString('JUBSUKEYPADPORTINFO', 'AUTOSTART', '0');


     FvarChungView := FormInit.ReadString('ETC', 'CHUNGVIEW', '');

     FvarChartView := FormInit.ReadString('ETC', 'CHARTVIEW', '');
     FvarYeyakView := FormInit.ReadString('ETC', 'YEYAKVIEW', '');
     FvarGogekView := FormInit.ReadString('ETC', 'GOGEKVIEW', '');
     //2011.12.1
     FvarfamilyView := FormInit.ReadString('ETC', 'FAMILYVIEW', '');

     FsignfilePath1:=  FormInit.ReadString('printinfo', 'SignFilePath1','');     //'병원용 인장 파일 저장경로'
     FsignfilePath2:=  FormInit.ReadString('printinfo', 'SignFilePath2', '');     //'대표원장 인장 파일 저장경로

     FSmsSendNo_New    := FormInit.ReadString('SMS', 'SMSSENDNO', '');
     FAutoHyunReceipt :=   FormInit.ReadString('BASEINFO', 'AutoHyunReceipt', '0');


     FormInit.Free;




     configFile2 := extractFilePath(paramStr(0)) + 'card.ini';

     FormInit := TIniFile.Create(configFile2);
     fVarPosNo := FormInit.ReadString('SUNAPSYSTEM', 'POSNO', '001');
     fVarTerminalNo := FormInit.ReadString('SUNAPSYSTEM', 'TERMINALNO',
          '90071085');
     fVarPrinterKind := FormInit.ReadString('SUNAPSYSTEM', 'PRINTERKIND',
          '0');
     fVarPrinterKind2 := FormInit.ReadString('SUNAPSYSTEM', 'PRINTERKIND2',
          '');
     fVarSignPort := FormInit.ReadString('SUNAPSYSTEM', 'SIGNPORT', '0');
     FvarTestPg := FormInit.ReadString('BASEINFO', 'TESTPG', '');


     FormInit.Free;

end;

procedure TConfigValue.LoadGlobalData_db;
{var
     varProperty: array[0..30] of string = ('Fvarsaupname'
          , 'FvarDaepyo'
          , 'FvarJumin'
          , 'FvarsaupNo'
          , 'FvarMyunhu'
          , 'FvarYoyang'
          , 'FvarZip'
          , 'FvarAdd1'
          , 'FvarAdd2'
          , 'FvarTel1'
          , 'FvarTel2'
          , 'FvarFax1'
          , 'FvarFax2'
          , 'FvarEmail'
          , 'Fvarilsu'
          , 'FvarGubun'
          , 'FvarSimjibu'
          , 'FvarDocNo'
          , 'FvarChubang'
          , 'FvarPrintsu'
          , 'FvarBunup'
          , 'FvarDaeheng'
          , 'FvarRmode'
          , 'FvarChungname'
          , 'FvarChungJumin'
          , 'FvarJagyukID'
          , 'FvarJagyukpass'
          , 'FvarsmsId'
          , 'FvarSmspass'
          , 'FvarChartRule'
          , 'FvarChartNew');
          }
begin
     //DB에 접속 후 환경설정 정보를 가져오며,
     //초기에 DB를 연결시켜놓는 역할을 한다.
     //Load GlobalSet
     try
          with dm_f.Sqlwork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0101'; //회사명
               open;
               FvarsaupName := FieldByName('val').AsString;
               //fVarSaupName := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0191'; //영문회사명
               open;
               FvarSaupEngName := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0102'; //대표자명
               open;
               FvarDaepyo := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0103'; //주민번호
               open;
               FvarJumin := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0104'; //사업자번호
               open;
               FvarsaupNo := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0105'; //면허번호
               open;
               FvarMyunhu := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0106'; //요양기관기호
               open;
               FvarYoyang := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0107'; //우편번호
               open;
               FvarZip := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0108'; //주소1
               open;
               FvarAdd1 := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0109'; //주소2
               open;
               FvarAdd2 := FieldByName('val').AsString;


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0192'; //영문주소1
               open;
               FvarEngAdd1 := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0193'; //영문주소2
               open;
               FvarEngAdd2 := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0194'; //영문주소3
               open;
               FvarEngAdd3 := FieldByName('val').AsString;


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0110'; //전화1
               open;
               FvarTel1 := FieldByName('val').AsString;


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0111'; //전화2
               open;
               FvarTel2 := FieldByName('val').AsString;




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0112'; //팩스1
               open;
               FvarFax1 := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0113'; //팩스2
               open;
               FvarFax2 := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0114'; //이메일
               open;
               FvarEmail := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0115'; //초재진 산정  일수
               open;
               Fvarilsu := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0116'; //병의원 구분
               open;
               FvarGubun := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0117'; //심평원 지부
               open;
               FvarSimjibu := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0118'; //의사수
               open;
               FvarDocNo := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0119'; //처방전 사용기간
               open;
               FvarChubang := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0120';
               //처방전 인쇄/약국-환자용
               open;
               FvarPrintsu := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0121'; //의약분업예외
               open;
               FvarBunup := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0122'; //청구대행단체
               open;
               FvarDaeheng := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0123'; //영수증 발급 모드
               open;
               FvarRmode := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0124'; //청구자 성명
               open;
               FvarChungname := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0125'; //청구자 주민번호
               open;
               FvarChungJumin := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0170'; //청구승인번호
               open;
               FvarChungNo := FieldByName('val').AsString;


               {Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0126'; //자격확인 아이디
               open;
               FvarJagyukID := FieldByName('val').AsString;
               }

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0127'; //자격확인 패스워드
               open;
               FvarJagyukpass := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0128'; //SMS아이디
               open;
               FvarsmsId := FieldByName('val').AsString;
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0129'; //SMS패스워드
               open;
               FvarSmspass := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0130'; //차트번호 규칙
               open;
               FvarChartRule := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0131'; //새로운 차트번호
               open;
               FvarChartNew := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0132'; //SangMode
               open;
               FvarSangMode := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0133';
               //Sunap table에 저장여부e
               open;
               FvarJinryoSave := FieldByName('val').AsString;





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0134'; //SMS전화번호
               open;
               FvarSmsNo := FieldByName('val').AsString;




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0135'; //SMS CustKind
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsCustKind := FieldByName('val').AsString
               else
                    FvarSmsCustKind := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0141'; //SMS 분단위 치환
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsConvMin := FieldByName('val').AsString
               else
                    FvarSmsConvMin := '0';


             Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0147'; //SMS 신환 자동전송
               open;
               if FieldByName('val').AsString <> '' then
                    FvarNewAutoSend := FieldByName('val').AsString
               else
                    FvarNewAutoSend:= '0';

             Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0256'; //SMS 소개자 신환감사 자동전송문구
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsAutosendContent := FieldByName('val').AsString
               else
                    FvarSmsAutosendContent := '+ddd+님 신환을 소개해 주셔서 감사합니다.';





             Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0370'; //예약변경 SMS 자동전송
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsChangeSend := FieldByName('val').AsString
               else
                    FvarSmsChangeSend:= '0';

             Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0371'; //예약변경 SMS 자동전송 문구
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsChangeContent := FieldByName('val').AsString
               else
                    FvarSmsChangeContent := '+ddd+님 예약이 변경되었습니다.';


             Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0372'; //예약취소 SMS 자동전송
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsCancelSend := FieldByName('val').AsString
               else
                    FvarSmsCancelSend:= '0';

             Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0373'; //예약취소SMS 자동전송 문구
               open;
               if FieldByName('val').AsString <> '' then
                    FvarSmsCancelContent := FieldByName('val').AsString
               else
                    FvarSmsCancelContent := '+ddd+님 예약이 취소되었습니다.';








               //2012.4.25
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0136'; //청구수납저장시 수납연동
               open;
               if not isEmpty then
                    FvarbohumSunap := FieldByName('val').AsString
               else
                    FvarbohumSunap := '0';

               //2012.5.1
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0137'; //진료대기아이콘대신 팀색
               open;
               if not isEmpty then
                    FvardaegiColor := FieldByName('val').AsString
               else
                    FvardaegiColor := '0';

               //2012.5.9
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0138'; //전자챠트창에 Hygine칸 보이기
               open;
               if not isEmpty then
                    FvarHygine := FieldByName('val').AsString
               else
                    FvarHygine := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0171'; //전자챠트창에 Doctor칸 보이기
               open;
               if not isEmpty then
                    FvarDoctor := FieldByName('val').AsString
               else
                    FvarDoctor := '1';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0174'; //영수증 발행 매수 0:2매 1: 1매
               open;
               if not isEmpty then
                    FvarPrintingCnt := FieldByName('val').AsInteger
               else
                    FvarPrintingCnt := 0;

               //2012.5.17
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0139'; //
               open;
               if not isEmpty then
                    FvarChartConv := FieldByName('val').AsString
               else
                    FvarChartConv := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0140'; //  환자얼굴이미지저장경로
               open;
               if not isEmpty then
                    FimgSharefolderPath := FieldByName('val').AsString
               else
                    FimgSharefolderPath := '';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0142'; //  인장 저장 파일명
               open;
               if not isEmpty then
                    FsignfilePath := FieldByName('val').AsString
               else
                    FsignfilePath := '';

//               Close;
//               Sql.Clear;
//               Sql.Add('Select * from ma_config');
//               Sql.Add('Where code=:code');
//               ParamByName('code').AsString := '0180'; //  병원용 인장 저장 파일명
//               open;
//               if not isEmpty then
//                    FsignfilePath1 := FieldByName('val').AsString
//               else
//                    FsignfilePath1 := '';
//
//               Close;
//               Sql.Clear;
//               Sql.Add('Select * from ma_config');
//               Sql.Add('Where code=:code');
//               ParamByName('code').AsString := '0181'; //  대표원장 인장 저장 파일명
//               open;
//               if not isEmpty then
//                    FsignfilePath2 := FieldByName('val').AsString
//               else
//                    FsignfilePath2 := '';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0167'; //  DocuHeaderFile 파일명
               open;
               if not isEmpty then
                    FDocuHeaderFile := FieldByName('val').AsString
               else
                    FDocuHeaderFile  := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0168'; //  DocuMidFile 파일명
               open;
               if not isEmpty then
                    FDocuMidFile := FieldByName('val').AsString
               else
                    FDocuMidFile  := '';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0143'; // 메인창  내원카운트 보기설정
               open;
               if not isEmpty then
                    FvarNewonCountView := FieldByName('val').AsString
               else
                    FvarNewonCountView := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0146'; // 일자별 수납내역 합계보기설정
               open;
               if not isEmpty then
                    FvarSunapSumView := FieldByName('val').AsString
               else
                    FvarSunapSumView := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0149'; // 리콜 예약 알림
               open;
               if not isEmpty then
                    FvarRecallAlret := FieldByName('val').AsString
               else
                    FvarRecallAlret  := '1';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0148'; // 일자별 수납내역 인쇄시 참고사항 라인 변경
               open;
               if not isEmpty then
                    FvarSunapPrintLineChange := FieldByName('val').AsString
               else
                     FvarSunapPrintLineChange:= '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0169'; // 기본 차트첫페이지 인쇄
               open;
               if not isEmpty then
                    FvarPrtFirstForm := FieldByName('val').AsString
               else
                    FvarPrtFirstForm:= '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0374'; // 처방전 인쇄시 주민번호 인쇄
               open;
               if not isEmpty then
                    FvarJuminView := FieldByName('val').AsString
               else
                    FvarJuminView:= '0';





              Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0144'; //  일일점검 인쇄 방향
               open;
               if not isEmpty then
                    FvarJungsanPrintDirection := FieldByName('val').AsString
               else
                    FvarJungsanPrintDirection := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0145'; //  환자보기
               open;
               if not isEmpty then
                    FvarViewAllInit := FieldByName('val').AsString
               else
                    FvarViewAllInit := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0150'; //신용카드가맹점번호
               open;
               FvarGamengNo := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0151'; //신용카드가맹점종류
               open;
               FvarVanKind := FieldByName('val').AsString;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0160'; // 수납 폼 종류
               open;
               if not isEmpty then
                    FvarSunapKind := FieldByName('val').AsString
               else
                    FvarSunapKind := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0161'; // 수납시 현금영수증을 수납금액에 포함
               open;
               if not isEmpty then
                    FvarHyunSunapIn := FieldByName('val').AsString
               else
                    FvarHyunSunapIn := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0163'; // 수납시 원장명 사용
               open;
               if not isEmpty then
                    FvarUseDocSunap := FieldByName('val').AsString
               else
                    FvarUseDocSunap := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0164'; // 기간별 수납리스트에서 환자 구분 보기
               open;
               if not isEmpty then
                    FvarSunapUseGubun := FieldByName('val').AsString
               else
                    FvarSunapUseGubun := '0';





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0165'; // 기간별 수납리스트 간단인쇄
               open;
               if not isEmpty then
                    FvarSunapPrintOpt1 := FieldByName('val').AsString
               else
                    FvarSunapPrintOpt1 := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0166'; // 스케일링동의서 사용
               open;
               if not isEmpty then
                    FvarAgreementScaleling := FieldByName('val').AsString
               else
                    FvarAgreementScaleling := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0173'; // 나이필터링 사용
               open;
               if not isEmpty then
                    FvarAgeFilter := FieldByName('val').AsString
               else
                    FvarAgeFilter := '0';


//               Close;
//               Sql.Clear;
//               Sql.Add('Select * from ma_config');
//               Sql.Add('Where code=:code');
//               ParamByName('code').AsString := '0175'; //기초검사 항목 보기
//               open;
//               if not isEmpty then
//                    FvarBaseExamView := FieldByName('val').AsString
//               else
//                    FvarBaseExamView := '0';
//
//
//               Close;
//               Sql.Clear;
//               Sql.Add('Select * from ma_config');
//               Sql.Add('Where code=:code');
//               ParamByName('code').AsString := '0176'; // 검사실 메모 보기
//               open;
//               if not isEmpty then
//                    FvarExamMemoView := FieldByName('val').AsString
//               else
//                    FvarExamMemoView  := '0';
//

//               Close;
//               Sql.Clear;
//               Sql.Add('Select * from ma_config');
//               Sql.Add('Where code=:code');
//               ParamByName('code').AsString := '0177'; // 닥터스노트항목 자동입력
//               open;
//               if not isEmpty then
//                    FvarDoctorsNoteAutoInput := FieldByName('val').AsString
//               else
//                    FvarDoctorsNoteAutoInput := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0162'; // 스크린세이브
               open;
               if not isEmpty then
                    FvarScreenSave := FieldByName('val').AsString
               else
                    FvarScreenSave := '0';



               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0201';
               open;
               if not isempty then
                    Fp_startTime := fieldByName('val').asString
               else
                    Fp_startTime := '09:00';
               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0202';
               open;
               if not isempty then
                    Fp_finishtime := fieldByName('val').asString
               else
                    Fp_finishtime := '19:00';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0232';
               open;
               if not isempty then
                    Fp_LunchstartTime := fieldByName('val').asString
               else
                    Fp_LunchstartTime := '13:00';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0233';
               open;
               if not isempty then
                    Fp_Lunchfinishtime := fieldByName('val').asString
               else
                    Fp_Lunchfinishtime := '14:00';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0234';
               open;
               if not isempty then
                    Fp_LunchColor := fieldByName('val').asString
               else
                    Fp_LunchColor := '8,clSilver'; //2,clGreen

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0235';
               open;
               if not isempty then
                    Fp_LunchCap := fieldByName('val').asString
               else
                    Fp_LunchCap := 'Lunch';






               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0239';
               open;
               if not isempty then
                    Fp_ColorNewon_b := fieldByName('val').asString
               else
                    Fp_ColorNewon_b := '15,clWhite';  //내원색 , 취소색, 변경색, 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0240';
               open;
               if not isempty then
                    Fp_ColorCancel_b := fieldByName('val').asString
               else
                    Fp_ColorCancel_b := '7,clGray';  // 취소색, 변경색, 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0241';
               open;
               if not isempty then
                    Fp_ColorChange_b := fieldByName('val').asString
               else
                    Fp_ColorChange_b := '5,clPurble';  //  변경색, 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0242';
               open;
               if not isempty then
                    Fp_ColorNotCon_b := fieldByName('val').asString
               else
                    Fp_ColorNotCon_b := '9,clRed';  // 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0243';
               open;
               if not isempty then
                    Fp_ColorReYeyak_b := fieldByName('val').asString
               else
                    Fp_ColorReYeyak_b := '2,clGreen';  //  재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0244';
               open;
               if not isempty then
                    Fp_ColorReCall_b := fieldByName('val').asString
               else
                    Fp_ColorReCall_b := '12,clBlue';  // 리콜


               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0245';
               open;
               if not isempty then
                    Fp_ColorEnd_b := fieldByName('val').asString
               else
                    Fp_ColorEnd_b := '3,clOlive';  // 종결






               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0246';
               open;
               if not isempty then
                    Fp_ColorNewon_f := fieldByName('val').asString
               else
                    Fp_ColorNewon_f := '0,clBlack';  //내원색 , 취소색, 변경색, 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0247';
               open;
               if not isempty then
                    Fp_ColorCancel_f := fieldByName('val').asString
               else
                    Fp_ColorCancel_f := '0,clBlack';  // 취소색, 변경색, 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0248';
               open;
               if not isempty then
                    Fp_ColorChange_f := fieldByName('val').asString
               else
                    Fp_ColorChange_f := '2,clGreen';  //  변경색, 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0249';
               open;
               if not isempty then
                    Fp_ColorNotCon_f := fieldByName('val').asString
               else
                    Fp_ColorNotCon_f := '0,clBlack';  // 연락안됨, 재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0250';
               open;
               if not isempty then
                    Fp_ColorReYeyak_f := fieldByName('val').asString
               else
                    Fp_ColorReYeyak_f := '0,clBlack';  //  재예약, 리콜

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0251';
               open;
               if not isempty then
                    Fp_ColorReCall_f := fieldByName('val').asString
               else
                    Fp_ColorReCall_f := '0,clBlack';  // 리콜


               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0252';
               open;
               if not isempty then
                    Fp_ColorEnd_f := fieldByName('val').asString
               else
                    Fp_ColorEnd_f := '0,clBlack';  // 종결







               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0203';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString = '' then
                         Fp_timeinterval := 30
                    else
                         Fp_timeinterval :=
                              fieldByName('val').asInteger;
               end
               else
               begin
                    Fp_timeinterval := 30;

               end;
               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0204';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_rowinterval := fieldByName('val').asInteger
                    else
                         Fp_rowinterval := 50;

               end
               else
                    Fp_rowinterval := 50;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0205';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         Fp_columncount := fieldByName('val').asInteger
                    else
                         Fp_columncount := 5;

               end
               else
               begin
                    Fp_columncount := 5;
               end;



               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0254';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         Fp_DocComboView := fieldByName('val').asInteger
                    else
                         Fp_DocComboView := 0;

               end
               else
               begin
                     Fp_DocComboView := 0;
               end;


               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0255';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         Fp_FixPromiseFontcolor := fieldByName('val').asInteger
                    else
                         Fp_FixPromiseFontcolor := 1;

               end
               else
               begin
                     Fp_FixPromiseFontcolor := 1;
               end;




               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0206';
               //예약SMS자동전송여부
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforeSendSms :=
                              fieldByName('val').asinteger
                    else
                         Fp_beForeSendSMS := 0;
               end
               else
                    Fp_beForeSendSMS := 0;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0207';
               //예약SMS자동전송 일자(~일전)
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforSms := fieldByName('val').asinteger
                    else
                         Fp_beForSMS := 1;
               end
               else
                    Fp_beForSMS := 1;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0208';
               open;
               if not isempty then
                    Fp_smsBeforTime := fieldByName('val').asString
                         //예약SMS자동 전송 시간
               else
                    Fp_smsBeforTime := '110000';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0209';
               open;
               if not isempty then
                    Fp_smsContent := fieldByName('val').asString
                         //예약SMS자동 전송 문구
               else
                    Fp_smsContent := '';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0210';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforeSmsCheck :=
                              fieldByName('val').asinteger
                              //예약 SMS자동 전송 전 확인
                    else
                         Fp_beForeSMScheck := 1;
               end
               else
                    Fp_beForeSMScheck := 1;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0216';
               //리콜SMS자동전송여부
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforeSendRecallSMS :=
                              fieldByName('val').asinteger
                    else
                         Fp_beForeSendRecallSMS := 0;
               end
               else
                    Fp_beForeSendRecallSMS := 0;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0217';
               //리콜SMS자동전송 일자(~일전)
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforRecallSms :=
                              fieldByName('val').asinteger
                    else
                         Fp_beForRecallSMS := 1;
               end
               else
                    Fp_beForRecallSMS := 1;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0218';
               open;
               if not isempty then
                    Fp_recallsmsBeforTime := fieldByName('val').asString
                         //리콜SMS자동 전송 시간
               else
                    Fp_recallsmsBeforTime := '110000';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0219';
               open;
               if not isempty then
                    Fp_recallsmsContent := fieldByName('val').asString
                         //리콜SMS자동 전송 문구
               else
                    Fp_recallsmsContent := '';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0220';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforerecallSmsCheck :=
                              fieldByName('val').asinteger
                              //리콜 SMS자동 전송 전 확인
                    else
                         Fp_beForeRecallSMScheck := 1;
               end
               else
                    Fp_beForeRecallSMScheck := 1;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0221';
               //미내원SMS자동전송여부
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforeSendminewonSMS :=
                              fieldByName('val').asinteger
                    else
                         Fp_beForeSendminewonSMS := 0;
               end
               else
                    Fp_beForeSendminewonSMS := 0;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0222';
               //미내원SMS자동전송 일자(~일전)
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforminewonSms :=
                              fieldByName('val').asinteger
                    else
                         Fp_beForminewonSMS := 1;
               end
               else
                    Fp_beForminewonSMS := 1;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0223';
               open;
               if not isempty then
                    Fp_minewonsmsBeforTime := fieldByName('val').asString
                         //미내원SMS자동 전송 시간
               else
                    Fp_minewonsmsBeforTime := '110000';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0224';
               open;
               if not isempty then
                    Fp_minewonsmsContent := fieldByName('val').asString
                         //미내원SMS자동 전송 문구
               else
                    Fp_minewonsmsContent := '';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0225';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_beforeminewonSmsCheck :=
                              fieldByName('val').asinteger
                              //미내원 SMS자동 전송 전 확인
                    else
                         Fp_beForeminewonSMScheck := 1;
               end
               else
                    Fp_beForeminewonSMScheck := 1;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0231';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_PositionTime := fieldByName('val').asstring
                              //예약표 시간따라 이동
                    else
                         Fp_PositionTime := '1';
               end
               else
                    Fp_PositionTime := '1';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0253';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_viewItalic := fieldByName('val').asstring
                              //예약표  내원표시시 이텔릭체
                    else
                         Fp_viewItalic := '1';
               end
               else
                    Fp_viewItalic := '1';



               //2012.5.17   ●예약표에서 챠트번호 보기
               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0236';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_ChartNoView := fieldByName('val').asstring
                    else
                         Fp_ChartNoView := '0';
               end
               else
                    Fp_ChartNoView := '0';
               //2012.5.17   ●예약표에서 챠트번호 보기
               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0238';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_ChartNoOnlyView := fieldByName('val').asstring
                    else
                         Fp_ChartNoOnlyView := '0';
               end
               else
                    Fp_ChartNoOnlyView := '0';

               //2012.6.12   ●오늘예약칸 조정한대로 보기
               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0237';
               open;
               if not isempty then
               begin
                    if fieldByName('val').asString <> '' then
                         Fp_ColumnFix := fieldByName('val').asstring
                    else
                         Fp_ColumnFix := '0';
               end
               else
                    Fp_ColumnFix := '0';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0132';
               open;
               if not isempty then
                    FBohumApplyDate := fieldByName('val').asString
               else
                    FBohumApplyDate := '1900-01-01';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0420';
               //영상뷰어 사용할지...
               open;
               if not isempty then
                    FvarUseimageView := FieldByName('val').AsString
               else
                    FvarUseImageView := '0';

               //2012.5.23
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0441';
               // 문서파일 서버아이피...
               open;
               if not isempty then
                    FvaruseMunFileIP := FieldByName('val').AsString
               else
                    FvaruseMunFileIP := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0440';
               //문문서파일 사용할지...
               open;
               if not isempty then
                    FvaruseMunFile := FieldByName('val').AsString
               else
                    FvaruseMunFile := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0450';  //시규환자 등록시에 초기화시 Hygine을 초기화할것인가?

               open;
               if not isempty then
                    FinitHygine := FieldByName('val').AsString
               else
                    FinitHygine := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0401'; //BIT orderInf 에 저장
               open;
               if not isempty then
                    FvarImageUse := FieldByName('val').AsString
               else
                    FvarImageUse := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0402'; //영상뷰어 종류
               open;
               if not isempty then
                    FvarImageKind := FieldByName('val').AsString
               else
                    FvarImageKind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0403'; //영상뷰어 IP Path
               open;
               if not isempty then
                    FvarImageIP := FieldByName('val').AsString
               else
                    FvarImageIP := '127.0.0.1';
               Close;

               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0404'; //영상뷰어 DB Name
               open;
               if not isempty then
                    FvarImageDB := FieldByName('val').AsString
               else
                    FvarImageDB := 'madang';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0405'; //영상뷰어 User
               open;
               if not isempty then
                    FvarImageUser := FieldByName('val').AsString
               else
                    FvarImageUser := 'sa';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0406'; //영상뷰어 Pass
               open;
               if not isempty then
                    FvarImagePass := FieldByName('val').AsString
               else
                    FvarImagePass := '2002';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0407'; //영상뷰어 Protocol
               open;
               if not isempty then
                    FvarImageProtocol := FieldByName('val').AsString
               else
                    FvarImageProtocol := 'mssql';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0408'; //영상뷰어 저장 방법
               open;
               if not isempty then
                    FvarImageDBSaveMode := FieldByName('val').AsString
               else
                    FvarImageDBSaveMode := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0409';
               //타영상 이미지DB경로 및 이름
               open;
               if not isempty then
                    FvarImageDBPath := FieldByName('val').AsString
               else
                    FvarImageDBPath := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0410'; //마당DB서버 IP
               open;
               if not isempty then
                    FvarImageDBIP := FieldByName('val').AsString
               else
                    FvarImageDBIP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0411'; //마당DB서버 PORT
               open;
               if not isempty then
                    FvarImageDBPORT := FieldByName('val').AsString
               else
                    FvarImageDBPORT := '9001';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0412'; //파노라마초기비율
               open;
               if not isempty then
                    FvarpanoScale := FieldByName('val').AsString
               else
                    FvarpanoScale := '38';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0413'; //Viewer
               open;
               if not isempty then
                    FvarViewer := FieldByName('val').AsString
               else
                    FvarViewer := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0414'; //영상뷰어 종류
               open;
               if not isempty then
                    FvarViewKind := FieldByName('val').AsString
               else
                    FvarViewKind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0415'; //백업  IP Path
               open;
               if not isempty then
                    FvarImageIP7 := FieldByName('val').AsString
               else
                    FvarImageIP7 := '127.0.0.1';
               Close;

               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0416'; //백업 DB Name
               open;
               if not isempty then
                    FvarImageDB7 := FieldByName('val').AsString
               else
                    FvarImageDB7 := 'dentro';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0417'; //백업 User
               open;
               if not isempty then
                    FvarImageUser7 := FieldByName('val').AsString
               else
                    FvarImageUser7 := 'sa';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0421'; //Http이미지서버 사용
               open;
               if not isempty then
                    FvarUseHttp := FieldByName('val').AsString
               else
                    FvarUseHttp := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0456'; //얼굴이미지는 DB에서 가져오자
               open;
               if not isempty then
                    FvarFaceFromDB := FieldByName('val').AsString
               else
                    FvarFaceFromDB := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0448'; // //Utf-8경로 방식을 바꿀것인가?
                                                                                          // %EA%B8%B0%EC%86%8C%ED%98%80 과 %EA%B8%B0%EC%86%8C 차이
               open;
               if not isempty then
                    FvarHttpPathChange := FieldByName('val').AsString
               else
                    FvarHttpPathChange := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0449'; //썸네일로 영상불러오기
               open;
               if not isempty then
                    FvarUseThumbnail := FieldByName('val').AsString
               else
                    FvarUseThumbnail := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0451'; //영상부를때 차트번호 0 제거
                                                       //btnLoadImageViewClick 에 적용
               open;
               if not isempty then
                    FvarImageChartZeroExcept := FieldByName('val').AsString
               else
                    FvarImageChartZeroExcept := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0446'; //기존 이미지뷰처 사용
               open;
               if not isempty then
                    FvarUseOldImageView := FieldByName('val').AsString
               else
                    FvarUseOldImageView := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0422'; //Http이미지서버 path
               open;
               if not isempty then
                    FvarHttpPath := FieldByName('val').AsString
               else
                    FvarHttppath := '';






           //외부프로그램설정용 하나로 앤드컴 등
          //====================================================
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0431'; //두번에 IP Path
          open;
          if not isempty then
              FvarImageIP2 := FieldByName('val').AsString
          else
              FvarImageIP2 :='127.0.0.1';
          Close;


          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0432'; //두번에  DB Name
          open;
          if not isempty then
              FvarImageDB2 := FieldByName('val').AsString
          else
              FvarImageDB2 :='madang';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0433'; //두번에 User
          open;
          if not isempty then
              FvarImageUser2 := FieldByName('val').AsString
          else
              FvarImageUser2 :='sa';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0434'; //두번에 Pass
          open;
          if not isempty then
              FvarImagePass2 := FieldByName('val').AsString
          else
              FvarImagePass2 :='2002';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0435'; //두번에 1, 하나로2, 앤드컴 3  사용
          open;
          if not isempty then
              FvarAnotherDB := FieldByName('val').AsString
          else
              FvarAnotherDB:='0';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0436'; //DBProtocol
          open;
          if not isempty then
              FvarImageProtocol2 := FieldByName('val').AsString
          else
              FvarImageProtocol2 :='mssql';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0437'; //GoogleMapApiKey
          open;
          if not isempty then
              FvarGoogleMapApiKey := FieldByName('val').AsString
          else
              FvarGoogleMapApiKey :='';


          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0438'; //Link1
          open;
          if not isempty then
              FvarLink1 := FieldByName('val').AsString
          else
              FvarLink1 :='';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0439'; //Link2
          open;
          if not isempty then
              FvarLink2 := FieldByName('val').AsString
          else
              FvarLink2 :='';








          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0375'; //ShareFolderPPT
          open;
          if not isempty then
              FvarShareFolderPPT := FieldByName('val').AsString
          else
              FvarShareFolderPPT :='';



          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0378'; //
          open;
          if not isempty then
              FvarPenchartTemplatePath := FieldByName('val').AsString
          else
              FvarPenchartTemplatePath :='';



          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0379';
          open;
          if not isempty then
              FvarPenchartSavedPath := FieldByName('val').AsString
          else
              FvarPenchartSavedPath :='';





          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0377'; //ShareFolderPPT
          open;
          if not isempty then
              FvarShareFolderID := FieldByName('val').AsString
          else
              FvarShareFolderID :='0';


        {  Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0376'; //PPTPath
          open;
          if not isempty then
              FvarPPTPath := FieldByName('val').AsString
          else
              FvarPPTPath :='';
         }



          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0362'; // recall 일
          open;
          if not isempty then
              FRecallDay := FieldByName('val').AsString
          else
              FRecallDay:='1';





          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0363'; // recall 주
          open;
          if not isempty then
              FRecallWeek := FieldByName('val').AsString
          else
              FRecallWeek:='1';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0364'; // recall 월
          open;
          if not isempty then
              FRecallMonth := FieldByName('val').AsString
          else
              FRecallMonth:='1';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0365'; // recall 년
          open;
          if not isempty then
              FRecallYear := FieldByName('val').AsString
          else
              FRecallYear:='1';







          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0366'; // varIbwon
          open;
          if not isempty then
              FIbwon := FieldByName('val').AsString
          else
              FIbwon:='0';

          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0367'; // varBunnapInputUse
          open;
          if not isempty then
              FBunnapInputUse := FieldByName('val').AsString
          else
              FBunnapInputUse:='0';




          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_config');
          Sql.Add('Where code=:code');
          ParamByName('code').AsString := '0368'; // varHideTot  사인 창에서 총금액 안보기
          open;
          if not isempty then
              FHideTot := FieldByName('val').AsString
          else
              FHideTot:='0';






          //====================================================









             {  Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0442'; //Http이미지뷰어 APP 경로
               open;
               if not isempty then
                    FvarImageViewAppPath := FieldByName('val').AsString
               else
                    FvarImageViewAppPath := '';
              }

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0443'; //Http이미지뷰어 Order 종류
               open;
               if not isempty then
                    FvarImgViewOrder := FieldByName('val').AsString
               else
                    FvarImgViewOrder := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0444'; //imgView_left공유폴더 사용
               open;
               if not isempty then
                    FvarShareFolder := FieldByName('val').AsString
               else
                    FvarShareFolder := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0445'; //imgView_left공유폴더 Path
               open;
               if not isempty then
                    FvarShareFolderPath := FieldByName('val').AsString
               else
                    FvarShareFolderPath := '';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0447'; //imgView_left공유폴더 Path
               open;
               if not isempty then
                    FvarChartPathUse := FieldByName('val').AsString
               else
                    FvarChartPathUse := '1';






               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0418'; //백업 Pass
               open;
               if not isempty then
                    FvarImagePass7 := FieldByName('val').AsString
               else
                    FvarImagePass7 := '2002';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0501'; //CID IP
               open;
               if not isempty then
                    FvarCidIp := FieldByName('val').AsString
               else
                    FvarCidIp := '127.0.0.1';
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0502'; //CID Port
               open;
               if not isempty then
                    FvarCidPort := FieldByName('val').AsString
               else
                    FvarCidPort := '9000';
               {

                         Close;
                         Sql.Clear;
                         Sql.Add('Select * from ma_config');
                         Sql.Add('Where code=:code');
                         ParamByName('code').AsString := '0503'; //CID ID
                         open;
                         if not isempty then
                             FvarCidID := FieldByName('val').AsString
                         else
                             FvarCidID :='';

                          Close;
                         Sql.Clear;
                         Sql.Add('Select * from ma_config');
                         Sql.Add('Where code=:code');
                         ParamByName('code').AsString := '0504'; //CID PASS
                         open;
                         if not isempty then
                             FvarCidPass := FieldByName('val').AsString
                         else
                             FvarCidPass :='';

               }

                  {        Close;
                         Sql.Clear;
                         Sql.Add('Select * from ma_config');
                         Sql.Add('Where code=:code');
                         ParamByName('code').AsString := '0301'; //환자의 참고사항을 사진에 불러오기
                         open;
                         if not isEmpty then
                             FvarLoadChamgo := FieldByName('val').AsString
                         else
                            FvarLoadChamgo  :='0';
                   }


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0553'; //SKT CID 등록 전화번호
               open;
               if not isempty then
                    FvarSktTelNo := FieldByName('val').AsString
               else
                    FvarSktTelNo := '';


{               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0554'; //KT인터넷 전화 CID 등록 전화번호2
               open;
               if not isempty then
                    FvarktiTelNo := FieldByName('val').AsString
               else
                    FvarktiTelNo := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0555'; //KT인터넷 전화 CID 등록 전화번호2
               open;
               if not isempty then
                    FvarktiTelNo2 := FieldByName('val').AsString
               else
                    FvarktiTelNo2 := '';
            }

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0302'; //DUr실행
               open;
               if not isEmpty then
                    FvarLoadDur := FieldByName('val').AsString
               else
                    FvarLoadDur := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0303';
               //영상불러올때 메시지창 보기
               open;
               if not isEmpty then
                    FvarMessageView := FieldByName('val').AsString
               else
                    FvarMessageView := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0304';
               //차트에서 오늘을 표시하는 색
               open;
               if not isEmpty then
                    FvarChartDayColor := FieldByName('val').AsString
               else
                    FvarChartDayColor := '15,clWhite';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0347';
               //차트에서 원외처방을  표시하는 색
               open;
               if not isEmpty then
                    FvarChartTuyakColor := FieldByName('val').AsString
               else
                    FvarChartTuyakColor := '15,clWhite';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0305'; //app

               open;
               if not isEmpty then
                    FvarChartapp := FieldByName('val').AsString
               else
                    FvarChartapp := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0452'; //code. //Tx. M. Cc. N)

               open;

               if not isEmpty then
                    FvarChartcode := FieldByName('val').AsString
               else
                    FvarChartcode := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0453'; //ChartKindView

               open;

               if not isEmpty then
                    FvarChartKindView := FieldByName('val').AsString
               else
                    FvarChartKindView := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0454'; //varChartDaily

               open;

               if not isEmpty then
                    FvarChartDaily := FieldByName('val').AsString
               else
                    FvarChartDaily := '1';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0340'; //Etc1

               open;
               if not isEmpty then
                    FvarChartEtc1 := FieldByName('val').AsString
               else
                    FvarChartEtc1 := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0319'; //ScanView

               open;
               if not isEmpty then
                    FvarScanView := FieldByName('val').AsString
               else
                    FvarScanView := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0320'; //TeethView

               open;
               if not isEmpty then
                    FvarTeethView := FieldByName('val').AsString
               else
                    FvarTeethView := '1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0329'; // UseChartingModWindow

               open;
               if not isEmpty then
                    FvarUseChartingModWindow := FieldByName('val').AsString
               else
                    FvarUseChartingModWindow := '0';  //안보기



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0330'; // FvarChartScrollSync

               open;
               if not isEmpty then
                    FvarChartScrollSync:= FieldByName('val').AsString
               else
                    FvarChartScrollSync := '0';  //안보기





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0322'; //

               open;
               if not isEmpty then
                    FvarPlanDetailView := FieldByName('val').AsString
               else
                    FvarPlanDetailView := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0323'; //

               open;
               if not isEmpty then
                    FvarChartListOrder := FieldByName('val').AsString
               else
                    FvarChartListOrder := '1';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0321'; //EasydentDaegi 연동

               open;
               if not isEmpty then
                    FvarEasyDentDaegi := FieldByName('val').AsString
               else
                    FvarEasyDentDaegi := '1'; //기본은 연동...

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0351'; //수납시 다중예약자 동시 수납완료 처리

               open;
               if not isEmpty then
                    FvarSunapFinish := FieldByName('val').AsString
               else
                    FvarSunapFinish := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0352'; //대기표 타이머 사용

               open;
               if not isEmpty then
                    FvarDaegiTimerUse := FieldByName('val').AsString
               else
                    FvarDaegiTimerUse := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0353'; //대기표 소켓 통신 사용

               open;
               if not isEmpty then
                    FvarDaegiSocketUse := FieldByName('val').AsString
               else
                    FvarDaegiSocketUse := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0354'; //대기표 환자 구분 보기

               open;
               if not isEmpty then
                    FvarDaegiGubunView := FieldByName('val').AsString
               else
                    FvarDaegiGubunView := '1';




            //===========================================================================
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0355'; //FvarChartCopyWithChartChange

               open;
               if not isEmpty then
                    FvarChartCopyWithChartChange := FieldByName('val').AsString
               else
                    FvarChartCopyWithChartChange := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0356'; //FvarChartCopyWithSunap

               open;
               if not isEmpty then
                     FvarChartCopyWithSunap   := FieldByName('val').AsString
               else
                     FvarChartCopyWithSunap  := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0361'; //FvarChartCopyWithSunap

               open;
               if not isEmpty then
                     FvarChartCopyWitheChart   := FieldByName('val').AsString
               else
                     FvarChartCopyWitheChart  := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0359'; //FvarChartCopyWithPromise
               open;
               if not isEmpty then
                     FvarChartCopyWithPromise   := FieldByName('val').AsString
               else
                     FvarChartCopyWithPromise  := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0360'; //FvarCopyPromiseParam
               open;
               if not isEmpty then
                     FvarCopyPromiseParam   := FieldByName('val').AsString
               else
                     FvarCopyPromiseParam  := 'caries';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0357'; // FvarChartCopyUse

               open;
               if not isEmpty then
                     FvarChartCopyUse := FieldByName('val').AsString
               else
                     FvarChartCopyUse := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0358'; // FvarEasyChartChangeView

               open;
               if not isEmpty then
                     FvarEasyChartChangeView := FieldByName('val').AsString
               else
                     FvarEasyChartChangeView := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0349'; //대기시 사운드  활성

               open;
               if not isEmpty then
                    FvarDaegiSound := FieldByName('val').AsString
               else
                    FvarDaegiSound := '0'; //기본은 비활성



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0341'; //varHappycallChartWrite

               open;
               if not isEmpty then
                    FvarHappycallChartWrite := FieldByName('val').AsString
               else
                    FvarHappycallChartWrite := '0';





              Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0345'; //varChartMachi

               open;
               if not isEmpty then
                    FvarChartMachi := FieldByName('val').AsString
               else
                    FvarChartMachi := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0346'; //varChartXray

               open;
               if not isEmpty then
                    FvarChartXray := FieldByName('val').AsString
               else
                    FvarChartXray := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0348'; //varChartTab

               open;
               if not isEmpty then
                    FvarChartTab := FieldByName('val').AsString
               else
                    FvarChartTab := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0350'; //varChartSignKind

               open;
               if not isEmpty then
                    FvarChartSignKind := FieldByName('val').AsString
               else
                    FvarChartSignKind := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0306'; //arch

               open;
               if not isEmpty then
                    FvarChartarch := FieldByName('val').AsString
               else
                    FvarChartarch := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0307'; //DaegiOrder

               open;
               if not isEmpty then
                    FvarDaegiOrder := FieldByName('val').AsString
               else
                    FvarDaegiOrder := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0342'; //DaegiTeamSave :접수할때 팀을 환자의 기본팀으로 저장할지 여부

               open;
               if not isEmpty then
                    FvarDaegiTeamSave := FieldByName('val').AsString
               else
                    FvarDaegiTeamSave := '0';
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0344'; //DaegiTeamSave :접수할때 팀을 환자의 기본팀으로 저장할지 여부

               open;
               if not isEmpty then
                    FvarTeamColorDisp := FieldByName('val').AsString
               else
                    FvarTeamColorDisp := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0343'; //cbChubangDaepyo :처방전 발행시 대표원장만으로 발행할 지 의 여부

               open;
               if not isEmpty then
                    FvarChubangDaepyo := FieldByName('val').AsString
               else
                    FvarChubangDaepyo := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0308'; //chartTabView

               open;
               if not isEmpty then
                    FvarTabView := FieldByName('val').AsString
               else
                    FvarTabView := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0309'; //chartTabView

               open;
               if not isEmpty then
               begin
                    if FieldByName('val').AsString <> '' then
                         FvarPadding := strtoint(FieldByName('val').AsString)
                    else
                         FvarPadding := 0;
               end
               else
               begin
                    FvarPadding := 0;
               end;

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0310'; //ChartInput

               open;
               if not isEmpty then
                    FvarChartInput := FieldByName('val').AsString
               else
                    FvarChartInput := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0311'; //차트에서 CC의 Teeth보기

               open;
               if not isEmpty then
                    FvarViewCCTeeth := FieldByName('val').AsString
               else
                    FvarViewCCTeeth := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0312'; //일자별수납내역

               open;
               if not isEmpty then
                    FvarPassSunap := FieldByName('val').AsString
               else
                    FvarPassSunap := '7800';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0313'; //일일점검

               open;
               if not isEmpty then
                    FvarPassDayJumgum := FieldByName('val').AsString
               else
                    FvarPassDayJumgum := '5695';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0314'; //일마감

               open;
               if not isEmpty then
                    FvarPassDayMagam := FieldByName('val').AsString
               else
                    FvarPassDayMagam := '5695';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0315'; //월마감

               open;
               if not isEmpty then
                    FvarPassMonthMagam := FieldByName('val').AsString
               else
                    FvarPassMonthMagam := '5695';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0316'; //년마감

               open;
               if not isEmpty then
                    FvarPassYearMagam := FieldByName('val').AsString
               else
                    FvarPassYearMagam := '5695';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0317'; //형태별수납내역

               open;
               if not isEmpty then
                    FvarPassSunapKind := FieldByName('val').AsString
               else
                    FvarPassSunapKind := '5695';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0318'; //미수금내역

               open;
               if not isEmpty then
                    FvarPassMisu := FieldByName('val').AsString
               else
                    FvarPassMisu := '5695';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0324'; //상담관리 Lock

               open;
               if not isEmpty then
                    FvarPassLock := FieldByName('val').AsString
               else
                    FvarPassLock := '7600';





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0325'; //차트삭제 Lock

               open;
               if not isEmpty then
                    FvarPassChartDelete := FieldByName('val').AsString
               else
                    FvarPassChartDelete := '';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0326'; //수납수정

               open;
               if not isEmpty then
                    FvarPassSunapUpdate:= FieldByName('val').AsString
               else
                    FvarPassSunapUpdate := '';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0327'; //마감수정

               open;
               if not isEmpty then
                    FvarPassMagamUpdate := FieldByName('val').AsString
               else
                    FvarPassMagamUpdate := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0328'; //완납처리

               open;
               if not isEmpty then
                    FvarPassAccountFinal := FieldByName('val').AsString
               else
                    FvarPassAccountFinal := '';







               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0503'; //DownKind

               open;
               if not isEmpty then
                    FvarDownKind := FieldByName('val').AsString
               else
                    FvarDownKind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0504'; //ftpRoot

               open;
               if not isEmpty then
                    FvarFtpRoot := FieldByName('val').AsString
               else
                    FvarFtpRoot := '/public_html/files/up';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0505'; //FtpID

               open;
               if not isEmpty then
                    FvarFtpID := FieldByName('val').AsString
               else
                    FvarFtpID := 'admini';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0506'; //FtPPass

               open;
               if not isEmpty then
                    FvarFtpPass := FieldByName('val').AsString
               else
                    FvarFtpPass := 'admini';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0507'; //FtPPass

               open;
               if not isEmpty then
                    FvarFtpPort := FieldByName('val').AsString
               else
                    FvarFtpPort := '21';


                {
          FVarImg5Kind: string;
          FVarImg5IP: string;
          FVarImg5Root: string;
          FVarImg5ID: string;
          FVarImg5Pass: string;
          FVarImg5Port: string;
}

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0511';
               open;
               if not isEmpty then
                   FVarImg1Kind := FieldByName('val').AsString
               else
                   FVarImg1Kind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0512';
               open;
               if not isEmpty then
                   FVarImg1IP := FieldByName('val').AsString
               else
                   FVarImg1IP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0513';
               open;
               if not isEmpty then
                   FVarImg1Root := FieldByName('val').AsString
               else
                   FVarImg1Root := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0514';
               open;
               if not isEmpty then
                   FVarImg1ID := FieldByName('val').AsString
               else
                   FVarImg1ID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0515';
               open;
               if not isEmpty then
                   FVarImg1Pass := FieldByName('val').AsString
               else
                   FVarImg1Pass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0516';
               open;
               if not isEmpty then
                   FVarImg1Port := FieldByName('val').AsString
               else
                   FVarImg1Port := '21';





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0517';
               open;
               if not isEmpty then
                   FVarImg2Kind := FieldByName('val').AsString
               else
                   FVarImg2Kind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0518';
               open;
               if not isEmpty then
                   FVarImg2IP := FieldByName('val').AsString
               else
                   FVarImg2IP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0519';
               open;
               if not isEmpty then
                   FVarImg2Root := FieldByName('val').AsString
               else
                   FVarImg2Root := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0520';
               open;
               if not isEmpty then
                   FVarImg2ID := FieldByName('val').AsString
               else
                   FVarImg2ID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0521';
               open;
               if not isEmpty then
                   FVarImg2Pass := FieldByName('val').AsString
               else
                   FVarImg2Pass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0522';
               open;
               if not isEmpty then
                   FVarImg2Port := FieldByName('val').AsString
               else
                   FVarImg2Port := '21';



       Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0523';
               open;
               if not isEmpty then
                   FVarimg3Kind := FieldByName('val').AsString
               else
                   FVarimg3Kind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0524';
               open;
               if not isEmpty then
                   FVarimg3IP := FieldByName('val').AsString
               else
                   FVarimg3IP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0525';
               open;
               if not isEmpty then
                   FVarimg3Root := FieldByName('val').AsString
               else
                   FVarimg3Root := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0526';
               open;
               if not isEmpty then
                   FVarimg3ID := FieldByName('val').AsString
               else
                   FVarimg3ID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0527';
               open;
               if not isEmpty then
                   FVarimg3Pass := FieldByName('val').AsString
               else
                   FVarimg3Pass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0528';
               open;
               if not isEmpty then
                   FVarImg3Port := FieldByName('val').AsString
               else
                   FVarImg3Port := '21';









 
       Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0529';
               open;
               if not isEmpty then
                   FVarimg4Kind := FieldByName('val').AsString
               else
                   FVarimg4Kind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0530';
               open;
               if not isEmpty then
                   FVarimg4IP := FieldByName('val').AsString
               else
                   FVarimg4IP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0531';
               open;
               if not isEmpty then
                   FVarimg4Root := FieldByName('val').AsString
               else
                   FVarimg4Root := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0532';
               open;
               if not isEmpty then
                   FVarimg4ID := FieldByName('val').AsString
               else
                   FVarimg4ID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0533';
               open;
               if not isEmpty then
                   FVarimg4Pass := FieldByName('val').AsString
               else
                   FVarimg4Pass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0534';
               open;
               if not isEmpty then
                   FVarimg4Port := FieldByName('val').AsString
               else
                   FVarimg4Port := '21';



       Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0535';
               open;
               if not isEmpty then
                   FVarimg5Kind := FieldByName('val').AsString
               else
                   FVarimg5Kind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0536';
               open;
               if not isEmpty then
                   FVarimg5IP := FieldByName('val').AsString
               else
                   FVarimg5IP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0537';
               open;
               if not isEmpty then
                   FVarimg5Root := FieldByName('val').AsString
               else
                   FVarimg5Root := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0538';
               open;
               if not isEmpty then
                   FVarimg5ID := FieldByName('val').AsString
               else
                   FVarimg5ID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0539';
               open;
               if not isEmpty then
                   FVarimg5Pass := FieldByName('val').AsString
               else
                   FVarimg5Pass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0540';
               open;
               if not isEmpty then
                   FVarimg5Port := FieldByName('val').AsString
               else
                   FVarimg5Port := '21';





       Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0541';
               open;
               if not isEmpty then
                   FVarchartServerKind := FieldByName('val').AsString
               else
                   FVarchartServerKind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0542';
               open;
               if not isEmpty then
                   FVarchartServerIP := FieldByName('val').AsString
               else
                   FVarchartServerIP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0543';
               open;
               if not isEmpty then
                   FVarchartServerRoot := FieldByName('val').AsString
               else
                   FVarchartServerRoot := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0544';
               open;
               if not isEmpty then
                   FVarchartServerID := FieldByName('val').AsString
               else
                   FVarchartServerID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0545';
               open;
               if not isEmpty then
                   FVarchartServerPass := FieldByName('val').AsString
               else
                   FVarchartServerPass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0546';
               open;
               if not isEmpty then
                   FVarchartServerPort := FieldByName('val').AsString
               else
                   FVarchartServerPort := '21';




       Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0547';
               open;
               if not isEmpty then
                   FVarDocuServerKind := FieldByName('val').AsString
               else
                   FVarDocuServerKind := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0548';
               open;
               if not isEmpty then
                   FVarDocuServerIP := FieldByName('val').AsString
               else
                   FVarDocuServerIP := '127.0.0.1';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0549';
               open;
               if not isEmpty then
                   FVarDocuServerRoot := FieldByName('val').AsString
               else
                   FVarDocuServerRoot := '/';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0550';
               open;
               if not isEmpty then
                   FVarDocuServerID := FieldByName('val').AsString
               else
                   FVarDocuServerID := '';


                            Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0551';
               open;
               if not isEmpty then
                   FVarDocuServerPass := FieldByName('val').AsString
               else
                   FVarDocuServerPass:= '';

                         Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0552';
               open;
               if not isEmpty then
                   FVarDocuServerPort := FieldByName('val').AsString
               else
                   FVarDocuServerPort := '21';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0601';
               open;
               if not isEmpty then
                   FVarArchInputKind := FieldByName('val').AsString
               else
                   FVarArchInputKind  := '0';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0602';
               open;
               if not isEmpty then
                   FVarCert := FieldByName('val').AsString
               else
                   FVarCert  := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0603';
               open;
               if not isEmpty then
                   FvarChartDelete := FieldByName('val').AsString
               else
                   FvarChartDelete  := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0604';    //Next Button Color
               open;
               if not isEmpty then
                    FvarNextButtonColor := FieldByName('val').AsString
               else
                    FvarNextButtonColor := '9,clRed';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0605';
               open;
               if not isEmpty then
                   FvarNextButtonAlign := FieldByName('val').AsString
               else
                   FvarNextButtonAlign  := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0606';
               open;
               if not isEmpty then
                   FvarNextButtonText := FieldByName('val').AsString
               else
                   FvarNextButtonText  := '※Next: ';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0607';    //Next Button Color
               open;
               if not isEmpty then
                    FvarUpperToothColor := FieldByName('val').AsString
               else
                    FvarUpperToothColor := '9,clRed';
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0608';    //Next Button Color
               open;
               if not isEmpty then
                    FvarLowerToothColor := FieldByName('val').AsString
               else
                    FvarLowerToothColor := '12,clBlue';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0609';
               open;
               if not isEmpty then
                   FvarSunapComment := FieldByName('val').AsString
               else
                   FvarSunapComment  := '1';   //예

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0614';
               open;
               if not isEmpty then
                   FvarSunapRemarkCardView := FieldByName('val').AsString
               else
                   FvarSunapRemarkCardView  := '0';   //아니오




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0610';
               open;
               if not isEmpty then
                   FvarPersonalinfoPath := FieldByName('val').AsString
               else
                   FvarPersonalinfoPath  := '';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0611';
               open;
               if not isEmpty then
                   FvarOrthoagree1Path := FieldByName('val').AsString
               else
                   FvarOrthoagree1Path  := '';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0612';
               open;
               if not isEmpty then
                   FvarOrthoagree2Path := FieldByName('val').AsString
               else
                   FvarOrthoagree2Path  := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0613';
               open;
               if not isEmpty then
                   FvarTreatFeePath := FieldByName('val').AsString
               else
                   FvarTreatFeePath  := '';







        {


          property VarSmsMinewon: string read FsmsMinewon;
          property VarSmsMinewonTimeInterval: string read FsmsMinewonTimeInterval;
          property VarSmsMinewonMin: string read FsmsMinewonMin;
          property VarSmsMinewonMem: string read FsmsMinewonMem;
         }




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0260'; //SMS 관리 주기전송
               open;
               if not isEmpty then
                   FSmsman := FieldByName('val').AsString
               else
                   FSmsman := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0261'; //SMS 관리 주기전송시간
               open;
               if not isEmpty then
                   FSmsManTime := FieldByName('val').AsString
               else
                   FSmsManTime := '00';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0262'; //SMS 관리 주기전송 분
               open;
               if not isEmpty then
                   FSmsManMin := FieldByName('val').AsString
               else
                   FSmsManMin := '00';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0263';  //SMS 지정일 예약안내
               open;
               if not isEmpty then
                   FsmsPromise := FieldByName('val').AsString
               else
                   FsmsPromise := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0287';  //SMS 당일 예약안내
               open;
               if not isEmpty then
                   FTodayPromiseSend := FieldByName('val').AsString
               else
                   FTodayPromiseSend := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0264';  //SMS 지정일 전송일자
               open;
               if not isEmpty then
                   FsmsPromiseDay := FieldByName('val').AsString
               else
                   FsmsPromiseDay := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0701';  //SMS 지정일 전송일자
               open;
               if not isEmpty then
                   FsmsPromiseDay2 := FieldByName('val').AsString
               else
                   FsmsPromiseDay2 := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0265';  //SMS 지정일 전송시간
               open;
               if not isEmpty then
                   FsmsPromiseTime := FieldByName('val').AsString
               else
                   FsmsPromiseTime := '00';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0266';  //SMS 지정일 전송 분
               open;
               if not isEmpty then
                   FsmsPromiseMin := FieldByName('val').AsString
               else
                   FsmsPromiseMin := '00';





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0285';  //SMS 지정일 전송시간_토요일
               open;
               if not isEmpty then
                   FsmsPromiseTime_Sat := FieldByName('val').AsString
               else
                   FsmsPromiseTime_Sat := '00';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0286';  //SMS 지정일 전송 분_토요일
               open;
               if not isEmpty then
                   FsmsPromiseMin_Sat := FieldByName('val').AsString
               else
                   FsmsPromiseMin_Sat := '00';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0267';  //SMS 지정일 전송내용
               open;
               if not isEmpty then
                   FsmsPromiseMem := FieldByName('val').AsString
               else
                   FsmsPromiseMem := '';

//============= 리콜시작

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0291';  //SMS 리콜지정일 안내
               open;
               if not isEmpty then
                   FsmsRecall := FieldByName('val').AsString
               else
                   FsmsRecall := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0292';  //SMS 리콜당일 안내
               open;
               if not isEmpty then
                   FTodayRecallSend := FieldByName('val').AsString
               else
                   FTodayRecallSend := '0';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0293';  //SMS 리콜지정일 전송일자
               open;
               if not isEmpty then
                   FsmsRecallDay := FieldByName('val').AsString
               else
                   FsmsRecallDay := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0294';  //SMS 리콜지정일 전송시간
               open;
               if not isEmpty then
                   FsmsRecallTime := FieldByName('val').AsString
               else
                   FsmsRecallTime := '00';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0295';  //SMS 리콜지정일 전송 분
               open;
               if not isEmpty then
                   FsmsRecallMin := FieldByName('val').AsString
               else
                   FsmsRecallMin := '00';





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0296';  //SMS 리콜지정일 전송시간_토요일
               open;
               if not isEmpty then
                   FsmsRecallTime_Sat := FieldByName('val').AsString
               else
                   FsmsRecallTime_Sat := '00';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0297';  //SMS 리콜지정일 전송 분_토요일
               open;
               if not isEmpty then
                   FsmsRecallMin_Sat := FieldByName('val').AsString
               else
                   FsmsRecallMin_Sat := '00';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0298';  //SMS 리콜지정일 전송내용
               open;
               if not isEmpty then
                   FsmsRecallMem := FieldByName('val').AsString
               else
                   FsmsRecallMem := '';

//============= 리콜끝





               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0268';  //SMS 신환감사 전송여부
               open;
               if not isEmpty then
                   FsmsNew := FieldByName('val').AsString
               else
                   FsmsNew := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0269';  //SMS 신환감사 전송시간
               open;
               if not isEmpty then
                   FsmsNewTime := FieldByName('val').AsString
               else
                   FsmsNewTime := '00';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0270';  //SMS 신환감사 전송분
               open;
               if not isEmpty then
                   FsmsNewMin := FieldByName('val').AsString
               else
                   FsmsNewMin := '00';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0271';  //SMS 신환감사 전송내용
               open;
               if not isEmpty then
                   FsmsNewMem := FieldByName('val').AsString
               else
                   FsmsNewMem := '';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0272';  //SMS 생일축하 전송여부
               open;
               if not isEmpty then
                   FsmsBirth := FieldByName('val').AsString
               else
                   FsmsBirth := '0';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0273';  //SMS 생일축하 전송시간
               open;
               if not isEmpty then
                   FsmsBirthTime := FieldByName('val').AsString
               else
                   FsmsBirthTime := '00';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0274';  //SMS 생일축하 전송 분
               open;
               if not isEmpty then
                   FsmsBirthMin := FieldByName('val').AsString
               else
                   FsmsBirthMin := '00';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0275';  //SMS 생일축하 전송내용
               open;
               if not isEmpty then
                   FsmsBirthMem := FieldByName('val').AsString
               else
                   FsmsBirthMem := '';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0276';  //SMS 예약미내원 전송여부
               open;
               if not isEmpty then
                   FsmsMinewon := FieldByName('val').AsString
               else
                   FsmsMinewon := '0';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0277';  //SMS 예약 간격 분
               open;
               if not isEmpty then
                   FsmsMinewonTimeInterval := FieldByName('val').AsString
               else
                   FsmsMinewonTimeInterval := '30';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0278';  //SMS 예약 미내원 전송 시간 분
               open;
               if not isEmpty then
                   FsmsMinewonMin := FieldByName('val').AsString
               else
                   FsmsMinewonMin := '10';


               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0279';  //SMS 예약 미내원 내용
               open;
               if not isEmpty then
                   FsmsMinewonMem := FieldByName('val').AsString
               else
                   FsmsMinewonMem := '';




               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0280';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         Fp_AutoNoSMS := fieldByName('val').asInteger
                    else
                         Fp_AutoNoSMS := 0;

               end
               else
               begin
                     Fp_AutoNoSMS := 0;
               end;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0288';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         Fp_JubsuDelete := fieldByName('val').asInteger
                    else
                         Fp_JubsuDelete := 0;

               end
               else
               begin
                     Fp_JubsuDelete := 0;
               end;


               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0172';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         FP_DelayWorkView := fieldByName('val').asInteger
                    else
                         FP_DelayWorkView := 0;

               end
               else
               begin
                     FP_DelayWorkView := 0;
               end;






               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0289';
               open;
               if not isempty then
                    Fp_LunchstartTime_sat := fieldByName('val').asString
               else
                    Fp_LunchstartTime_sat := '13:00';

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0290';
               open;
               if not isempty then
                    Fp_Lunchfinishtime_sat := fieldByName('val').asString
               else
                    Fp_Lunchfinishtime_sat := '14:00';



               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0281';  //바코드카드 상단 캡션
               open;
               if not isEmpty then
                   FvarBarcardTopCaption := FieldByName('val').AsString
               else
                   FvarBarcardTopCaption  := '';

               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0282';  //바코드카드 하단 캡션
               open;
               if not isEmpty then
                   FvarBarcardBottomCaption := FieldByName('val').AsString
               else
                   FvarBarcardBottomCaption  := '';




               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0553';  //대기표 알림 문구
               open;
               if not isEmpty then
                   FvarNoticeRemark := FieldByName('val').AsString
               else
                   FvarNoticeRemark  := '';



               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0283';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         Fp_AutoSendSMS := fieldByName('val').asInteger
                    else
                         Fp_AutoSendSMS := 0;

               end
               else
               begin
                     Fp_AutoSendSMS := 0;
               end;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0284';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         FP_remarkPrint := fieldByName('val').asInteger
                    else
                         FP_remarkPrint := 0;

               end
               else
               begin
                     FP_remarkPrint := 0;
               end;

               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0455';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         FP_PromiseTeamLoad := fieldByName('val').asInteger
                    else
                         FP_PromiseTeamLoad := 0;

               end
               else
               begin
                     FP_PromiseTeamLoad := 0;
               end;





               close;
               sql.Clear;
               sql.add('select * from ma_config');
               sql.add('where code=:code');
               paramByName('code').asString := '0299';
               open;
               if not isempty then
               begin

                    if fieldByName('val').asString <> '' then
                         FvarPromiseTransfer := fieldByName('val').asInteger
                    else
                         FvarPromiseTransfer := 1;

               end
               else
               begin
                     FvarPromiseTransfer := 1;
               end;





               {  Close;

                 Sql.Clear;
                 Sql.Add('Select * from ma_config');
                 Sql.Add('Where code=:code');
                 ParamByName('code').AsString := '0303'; //백업 실행
                 open;
                 if not isEmpty then
                     FvarLoadBackup := FieldByName('val').AsString
                 else
                    FvarLoadBackup :='1';
                }

//               with dm_f.SqlChart do
//               begin
//
//                    if FvarChartConv = '1' then
//                    begin
//                         Close;
//                         Sql.Clear;
//                         Sql.Add('select chart from ma_gogek_basic where (charindex(''`'',chart) < 1) and (charindex(''.'',chart) < 1) ');
//                         sql.add('and (charindex('','',chart) < 1) and (charindex(''*'',chart) < 1) AND (CHARINDEX(''A'', chart) < 1) AND (CHARINDEX(''a'', chart) < 1) ');
//                         sql.add('AND (CHARINDEX(''-'', chart) < 1) AND (CHARINDEX(''['', chart) < 1) AND (CHARINDEX('']'', chart) < 1) ');
//                         Sql.Add('order by CONVERT(integer, chart, 112)');
//                         Open;
//                    end
//                    else
//                    begin
//                         Close;
//                         Sql.Clear;
//                         Sql.Add('select chart from ma_gogek_basic order by chart ');
//                         Open;
//                    end;
//
//               end;

          end;
     except

     end;

end;

procedure TConfigValue.saveValue(code, val: string; disp: string = '');
var
     varisEmpty: boolean;
begin
     with dm_f.SqlWork do
     begin
          close;
          sql.Clear;
          sql.add('select *  from ma_config ');
          sql.add('where code=:code');
          parambyname('code').AsString := code;
          open;
          varisEmpty := isEmpty;

     end;
     if varisEmpty = false then
     begin
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               sql.add('update  ma_config  set');
               sql.add('val=:val');
               //   sql.add(', remark=:remark');
               sql.add('where code=:code');
               parambyname('code').AsString := code;
               parambyname('val').AsString := val;
               //    parambyname('remark').AsString := disp;
               execsql;
          end;
     end
     else
     begin
          with dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               sql.add('insert into ma_config');
               sql.add('(code, val, remark) values');
               sql.add('(:code, :val, :remark)');
               parambyname('code').AsString := code;
               parambyname('val').AsString := val;
               parambyname('remark').AsString := disp;
               execsql;
          end;
     end;

end;

procedure TConfigValue.LoadQueryFunc(varKind: string);
begin
     case strCase(varKind, ['mssql',
          'mysql-5',
               'Oracle',
               'Interbase',
               'MS-ACCESS',
               'Firebird']) of
          0:
               begin
                    QTop := ' Top ';
                    QGetDate := ' GetDate() ';
                    Qisnull := ' isnull';
               end;

          1:
               begin
                    QTop := ' Limit ';
                    QGetDate := ' Now() ';
                    Qisnull := ' ifnull';
               end;
     end;

end;

procedure  TConfigValue.Db2infoSave;
var
     s, path: string;
     FormInit: Tinifile;

begin

     Path := 'c:\windows\' + 'win.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('file', '1', configvalue.ServerIp2);
     FormInit.WriteString('file', '2', configvalue.DbName2); //name
     FormInit.WriteString('file', '3', configvalue.DbPass2); //pass
     FormInit.WriteString('file', '4', configvalue.DbUser2); //user
     FormInit.WriteString('file', '5', configvalue.DbProtocol2); //protocol



     FormInit.Free;

end;


end.

