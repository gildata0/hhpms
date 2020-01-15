program HHPMS;
uses
  Forms,
  SysUtils,
  dialogs,
  Windows,
  iniFiles,
  shellAPI,
  Controls,
  messages,
  uConfig in 'class\uConfig.pas',
  uMain in 'uMain.pas' {main_f},
  uDm in 'Dm\uDm.pas' {dm_f: TDataModule},
  amMouseWheel in 'class\amMouseWheel.pas',
  uAccVarible in 'class\uAccVarible.pas',
  uCert in 'class\uCert.pas',
  uDentwebSave in 'class\uDentwebSave.pas',
  uFunctions in 'class\uFunctions.pas',
  UGetNetworkAdapter in 'class\UGetNetworkAdapter.pas',
  uGogekData_Find in 'class\uGogekData_Find.pas',
  uHiliteSLVitem in 'class\uHiliteSLVitem.pas',
  uHttpThread in 'class\uHttpThread.pas',
  uLoadValue in 'class\uLoadValue.pas',
  uPlanData in 'class\uPlanData.pas',
  uStringToVK in 'class\uStringToVK.pas',
  uSugaUpdate in 'class\uSugaUpdate.pas',
  UThumbCls in 'class\UThumbCls.pas',
  Utils in 'class\Utils.pas',
  wait2 in 'class\wait2.pas' {wait2_f},
  wait3 in 'class\wait3.pas' {wait3_f},
  whellScrollBox in 'class\whellScrollBox.pas',
  filefind in 'class\filefind.pas' {filefind_f},
  findPost in 'class\findPost.pas' {findpost_f},
  findpost_new in 'class\findpost_new.pas' {findpost_new_f},
  FindSoge in 'sogenew\FindSoge.pas' {findSoge_f},
  choiceChair in 'subForms\choiceChair.pas' {choiceChair_f},
  uPromiseData in 'class\uPromiseData.pas',
  passInput in 'subForms\passInput.pas' {PassInput_f},
  uPromiseFrame in 'promise\uPromiseFrame.pas' {promiseFrame_fr: TFrame},
  uSendSMS in 'class\uSendSMS.pas',
  uFormInit in 'class\uFormInit.pas',
  uSysinfo in 'class\uSysinfo.pas',
  uUpdateCheck in 'class\uUpdateCheck.pas',
  promiseJohoi in 'promise\promiseJohoi.pas' {promiseJohoi_f},
  uKtCid in 'ktCid\uKtCid.pas' {ktcid_f},
  Cid in 'cid\Cid.pas' {CID_f},
  cidView in 'cid\cidView.pas' {cidView_f},
  telrec in 'cid\telrec.pas' {telrec_f},
  mapSend in 'sms\mapSend.pas' {mapSend_f},
  Chamgo in 'jubsu\Chamgo.pas' {Chamgo_f},
  advertise in 'login\advertise.pas' {advertise_f},
  dbsetting in 'dbSetting\dbsetting.pas' {dbsetting_f},
  jinryo in 'jinryo\jinryo.pas' {Jinryo_f},
  SangSeek in 'jinryo\SangSeek.pas' {SangSeek_f},
  insertOnce in 'jinryo\insertOnce.pas' {insertOnce_F},
  uDaegiFrame in 'subForms\uDaegiFrame.pas' {DaegiFrame_fr: TFrame},
  uMigration in 'uMigration.pas' {migration_f},
  optionset in 'Options\optionset.pas' {optionSet_f},
  smsone in 'sms\smsone.pas' {smsone_f},
  waiter in 'class\waiter.pas' {Waiter_f},
  Caller in 'caller\Caller.pas' {Caller_f},
  phoneRec in 'caller\phoneRec.pas' {phoneRec_f},
  uRest in 'Dm\uRest.pas' {dmRest_f: TDataModule},
  saveChamgo in 'savechamgo\saveChamgo.pas' {saveChamgo_f},
  addUseWord in 'savechamgo\addUseWord.pas' {addUseWord_f},
  peninput in 'savechamgo\peninput.pas' {peninput_f},
  toothClass_fr in 'Tooth\toothClass_fr.pas' {TeethClass_fr1: TFrame},
  uGroupcodeSelector in 'jinryo\uGroupcodeSelector.pas' {groupCodeSelector_f},
  TelList in 'prm\TelList.pas' {telList_f},
  telrecview in 'prm\telrecview.pas' {telrecview_f},
  TreeEdit in 'treeEdit\TreeEdit.pas' {TreeEdit_f},
  Recall in 'Recall\Recall.pas' {recall_f},
  recallRepeat in 'Recall\recallRepeat.pas' {recallRepeat_f},
  inputPromise in 'promise\inputPromise.pas' {inputPromise_f},
  inputBlock in 'promise\inputBlock.pas' {inputBlock_f},
  sms in 'sms\sms.pas' {sms_f},
  SmsUrl in 'sms\SmsUrl.pas' {SmsUrl_f},
  SmsResult in 'sms\SmsResult.pas' {SmsResult_f},
  prtSmsList in 'sms\prtSmsList.pas' {prtSmsList_f},
  uWebservice in 'webservice\uWebservice.pas',
  regiSchedure in 'RSchedule\regiSchedure.pas' {regiSchedule_f},
  sawon in 'sawon\sawon.pas' {sawon_f},
  LoadJusoFind in 'FindLoadJuso\LoadJusoFind.pas' {loadJusoFind_f},
  snapCapture in 'snapCapture\snapCapture.pas' {snapCapture_f},
  largeview in 'jubsu\largeview.pas' {largeView_f},
  personalinfo in 'subForms\personalinfo.pas' {personalinfo_f},
  personalinfo_prt in 'subForms\personalinfo_prt.pas' {personalinfo_prt_f},
  DataSetConverter4D.Helper in 'DataSetConverter4Delphi\src\DataSetConverter4D.Helper.pas',
  DataSetConverter4D.Impl in 'DataSetConverter4Delphi\src\DataSetConverter4D.Impl.pas',
  DataSetConverter4D in 'DataSetConverter4Delphi\src\DataSetConverter4D.pas',
  DataSetConverter4D.Util in 'DataSetConverter4Delphi\src\DataSetConverter4D.Util.pas',
  cancelJumgum in 'uDur\cancelJumgum.pas' {cancelJumgum_f},
  HiraDur_TLB in 'uDur\HiraDur_TLB.pas',
  jumgumResult in 'uDur\jumgumResult.pas' {jumgumResult_f},
  Result in 'uDur\Result.pas',
  sayu in 'uDur\sayu.pas' {sayu_f},
  SQLite3 in 'uDur\SQLite3.pas',
  SQLiteTable3 in 'uDur\SQLiteTable3.pas',
  uDur in 'uDur\uDur.pas',
  wonweopen in 'wonwe\wonweopen.pas' {wonweopen_f},
  phrase in 'wonwe\phrase.pas' {phrase_f},
  sangcombo in 'wonwe\sangcombo.pas' {sangcombo_F},
  nIlsu in 'wonwe\nIlsu.pas' {nIlsu_f},
  wonwe in 'wonwe\wonwe.pas' {wonwe_f},
  uOrderInfo in 'OrderInfo\uOrderInfo.pas' {orderInfo_f},
  Rschedule in 'RSchedule\Rschedule.pas' {RSchedule_f},
  RRecallPrt in 'RSchedule\RRecallPrt.pas' {RRecallPrt_f},
  RSchedulePrt in 'RSchedule\RSchedulePrt.pas' {RSchedulePrt_f},
  RyeyakPrt in 'RSchedule\RyeyakPrt.pas' {RyeyakPrt_f},
  uLabOrder in 'LabOrder\uLabOrder.pas' {labOrder_f},
  EwonService in 'OrderInfo\EwonService.pas',
  sunap in 'sunap\sunap.pas' {sunap_f},
  sugaUpdate in 'sugaupdate\sugaUpdate.pas' {sugaUpdate_f},
  yearsan in 'YearSan\yearsan.pas' {yearsan_f},
  yearsanprt in 'YearSan\yearsanprt.pas' {yearsanprt_f},
  uEecp in 'eecp\uEecp.pas' {eecp_f},
  jumgum in 'jumgum\jumgum.pas' {jumgum_f},
  sebusunap in 'sunap\sebusunap.pas' {sebusunap_f},
  Jungsan_day in 'jungSan\Jungsan_day.pas' {jungsanDay_f},
  sebusunapprt in 'sunap\sebusunapprt.pas' {sebusunapprt_f},
  sebusunapPrt_opt1 in 'sunap\sebusunapPrt_opt1.pas' {sebusunapPrt_opt1_f},
  sunapsebulist in 'sunap\sunapsebulist.pas' {sunapsebulist_f},
  sunapSebuListPrt in 'sunap\sunapSebuListPrt.pas' {sunapSebuListPrt_f},
  uInPatient in 'inPatient\uInPatient.pas' {inPatient_f},
  uNurseActing in 'inPatient\uNurseActing.pas' {nurseActing_f},
  uReferHospChoice in 'subForms\uReferHospChoice.pas' {ReferHospChoice_f},
  chairName2 in 'subForms\chairName2.pas' {ChairName2_f},
  uReferHosp in 'basicInfo\uReferHosp.pas' {referHosp_f},
  regSogeNeyuk in 'jubsu\regSogeNeyuk.pas' {regSogeNeyuk_f},
  SugaRegi in 'sugaEdit\SugaRegi.pas' {SugaRegi_f},
  SugaProp in 'sugaEdit\SugaProp.pas' {SugaProp_f},
  uChangeStat in 'subForms\uChangeStat.pas' {changeStat_f},
  uReferHospReqComplete in 'subForms\uReferHospReqComplete.pas' {ReferHospReqComplete_f},
  TelPrint in 'tel\TelPrint.pas' {TelPrint_f},
  printChart in 'print\printChart.pas' {printChart_f},
  Sulsik in 'promise\sulsik\Sulsik.pas' {Sulsik_f},
  login in 'login\login.pas' {Login_f},
  uchklistSave in 'chklistSave\uchklistSave.pas' {chklistSave_f},
  uJinryoCalc in 'class\uJinryoCalc.pas',
  uTeeth in 'class\uTeeth.pas',
  umisuSunap in 'sunap\umisuSunap.pas' {misuSunap_f},
  uHLClass in 'HL7\uHLClass.pas',
  ZAUSegUnit in 'HL7\ZAUSegUnit.pas',
  ZINSegUnit in 'HL7\ZINSegUnit.pas',
  ZPI_Z01MsgUnit in 'HL7\ZPI_Z01MsgUnit.pas',
  uRisSave in 'class\uRisSave.pas',
  uTCPcs in 'Dm\uTCPcs.pas' {dmTcpCs_f: TDataModule},
  uHxJiinryo_p in 'jinryo\uHxJiinryo_p.pas' {HxJiinryo_p_f},
  FindGogek in 'gogekFind\FindGogek.pas' {findGogek_f},
  gogekFind in 'gogekFind\gogekFind.pas' {gogekfind_f},
  uNimsGuibBogo in 'NIMS\uNimsGuibBogo.pas' {nimsGuibBogo_f},
  uJinryoBiList in 'PrintForms\uJinryoBiList.pas' {jinryobiList_f},
  uTxList in 'TxList\uTxList.pas' {txList_f},
  Vcl.Themes,
  Vcl.Styles,
  uInputTeakJung in 'jinryo\uInputTeakJung.pas' {InputTeakJung_f},
  uCorpHospStat in 'statics\uCorpHospStat.pas' {corpHospStat_f},
  Holiday in 'config\Holiday.pas' {Holiday_f},
  gogekAlretFrame in 'alret\gogekAlretFrame.pas' {gogekalretFrame_fr: TFrame},
  gogekAlret in 'alret\gogekAlret.pas' {gogekAlret_f},
  uDailyAmount in 'statics\uDailyAmount.pas' {DailyAmount_f},
  statTerm in 'statics\statTerm.pas' {statTerm_f},
  inputElectSign in 'subForms\inputElectSign.pas' {inputElectSign_f},
  uNimsSet in 'NIMS\uNimsSet.pas' {nimsSet_f},
  uLageTextStringReplace in 'class\uLageTextStringReplace.pas',
  uInputHealthJinchalSayu in 'jinryo\uInputHealthJinchalSayu.pas' {InputHealthJinchalSayu_f},
  uGogekData in 'class\uGogekData.pas',
  ibchuReg in 'ibchu\ibchuReg.pas' {ibchuReg_f},
  ibchuRegInput in 'ibchu\ibchuRegInput.pas' {ibchuRegInput_f},
  uOutPatient in 'inPatient\uOutPatient.pas' {OutPatient_f},
  uReferHospPatListFrame in 'subForms\uReferHospPatListFrame.pas' {ReferHospPatListFrame_fr: TFrame},
  uReferHospPatList in 'subForms\uReferHospPatList.pas' {referHospPatList_f},
  uWebgMap in 'class\uWebgMap.pas',
  addPhone in 'subForms\addPhone.pas' {addPhone_f},
  uPharmInfoRest in 'Dm\uPharmInfoRest.pas' {dmPharmInfoRest_f: TDataModule},
  uPharmInfo in 'subForms\uPharmInfo.pas' {PharmInfo_f},
  stat_Sangbyung in 'subForms\stat_Sangbyung.pas' {stat_sangbyung_f},
  findList in 'subForms\findList.pas' {findlist_f},
  uFontInfoSave in 'subForms\uFontInfoSave.pas' {fontInfoSave_f},
  uResources in 'Class_thread\uResources.pas',
  uThreads in 'Class_thread\uThreads.pas',
  uSignPadKovan in 'class\uSignPadKovan.pas',
  yearAcc in 'yearAcc\yearAcc.pas' {yearAcc_f};

{$R *.res}
var
     Mutex: THandle;
     Phdl: integer;
     strPGMName: string;
     mrResult: TModalResult;
     DV_UserID,
          DV_UserName,
          DV_UserPass,
          DV_Version,
          DV_POWER: string;

     PrevInstHandle: THandle;
     {$R *.res}

function EnumWindowsProc(hWnd: THandle; lParam: LPARAM): Boolean; stdcall;
var
     szClassName: array[0..255] of char;
     szCaption: array[0..255] of Char;
begin
     Result := True;

     GetClassName(hWnd, szClassName, Sizeof(szClassName));
     if (Trim(string(szClassName)) = 'Tmain_f') then
     begin
          ZeroMemory(@szCaption, Sizeof(szCaption));
          GetWindowText(hWnd, szCaption, Sizeof(szCaption));

     //     if (Trim(string(szCaption)) = strPGMName) then
     //     begin
     //          exit;
     //     end;
            SendMessage(hWnd, WM_SYSCOMMAND, SC_RESTORE, 0);

      //       SendMessage(Application.Handle, WM_SYSCOMMAND, SC_RESTORE, 0);

    //      ShowWindow(hWnd, SW_SHOWDEFAULT);//SW_SHOWNORMAL);// SW_SHOW);//SW_RESTORE);
   //       SetForegroundWindow(hWnd);

      //    Phdl := GlobalAddAtom(Pchar(Paramstr(1)));
      //   PostMessage(hWnd, WM_OPENCHART, Phdl, 0);

          Result := False;
     end;
end;


begin


     Mutex := CreateMutex(nil, True, 'HHPMSSuccess');
     if (Mutex <> 0) and (GetLastError = 0) then
     begin
          Application.Initialize;
          Application.ProcessMessages;

          Application.CreateForm(TdmRest_f, dmRest_f);
  if not assigned(dm_f) then
          Application.CreateForm(TDM_f, DM_f);

          Application.CreateForm(TLogin_f, Login_f);

         // Application.CreateForm(Tmain_f, main_f);

//          if not assigned(Login_f) then
//                Application.CreateForm(TLogin_f, Login_f);

          Application.Initialize;
          Application.Title := '접수';

          with TLogin_f.Create(Application) do
          try
               lblStatus.Caption := '';

               Application.ProcessMessages;
               V_PGKIND := '2';

               //mrResult := Login_f.ShowModal();
               if Login_f.ShowModal() = mrOK then
              begin

               Update; // force display of SplashForm


               DV_UserID    := V_UserID;
               DV_UserName  := V_UserName;
               DV_UserPass  := V_UserPass;
               DV_POWER     := V_POWER;
               DV_Version   := V_version;




               Login_f.Free();

               lblStatus.Caption :=
                    '  데이터베이스에 연결중입니다.';
               // ProgressBar1.stepby(50);
               Application.ProcessMessages;
               if not assigned(dm_f) then
                    Application.CreateForm(TDM_f, DM_f);
               lblStatus.Caption :=
                    '  데이터베이스에 연결되었습니다.';
               Application.ProcessMessages;

               Application.CreateForm(TMain_f, Main_f);
               main_f.V_UserID := DV_UserID;
               main_f.V_UserName := DV_UserName;
               main_f.V_UserPass := DV_UserPass;
               main_f.V_POWER := DV_POWER;
               main_f.V_Version := DV_Version;

               lblStatus.Caption := '  ' +
                    'HHPMS를 시작 하는 중입니다. 잠시 기다리세요.';
               lblStatus.Caption :=
                    '  아이디와 패스워드를 입력하세요.';
              end
              else
              begin
                     DM_f.Free();
                     Application.Terminate();
                    exit;
              end;

          finally

          end;



          Application.Run;


      end;
{
//        //  with Login_f do
          try
               Login_f.lblStatus.Caption := '';

               Application.ProcessMessages;

           //    mrResult :=  Login_f.ShowModal();
               if Login_f.ShowModal() = mrOK then
               begin


                   Login_f.Update; // force display of SplashForm
                   DV_UserID := Login_f.V_UserID;
                   DV_UserName := Login_f.V_UserName;
                   DV_UserPass := Login_f.V_UserPass;
                   DV_POWER := Login_f.V_POWER;
                   DV_Version := Login_f.V_version;


               Application.CreateForm(TMain_f, Main_f);
               main_f.V_UserID := V_UserID;
               main_f.V_UserName := V_UserName;
               main_f.V_UserPass := V_UserPass;
               main_f.V_POWER := V_POWER;
               main_f.V_Version := V_Version;



               end
               else
              // if mrResult <> mrOK then
               begin
                    DM_f.Free();
                    Application.Terminate();
                //    exit;
               end;



          finally

               Login_f.Free();

          end;

          Application.Run;
}

 {
          with Login_f do//.Create(application)   do
                try
                     Login_f.lblStatus.Caption := '';

                     Application.ProcessMessages;
                     //ProgressBar1.Max := 150;
                      //    Show; // show a splash screen contain ProgressBar control

                     mrResult := Login_f.ShowModal();


                     Update; // force display of SplashForm
                     DV_UserID := Login_f.V_UserID;
                     DV_UserName := Login_f.V_UserName;
                     DV_UserPass := Login_f.V_UserPass;
                     DV_POWER := Login_f.V_POWER;
                     DV_Version := Login_f.V_version;

                     //main_f.V_Dbip := dm_f.configvalue.varDbIp;
                      //main_f.V_fileip := dm_f.configvalue.varServerIP;

                //     Login_f.Free();

                     if mrResult <> mrOK then
                     begin
                          DM_f.Free();
                          Application.Terminate();
                          exit;
                     end;

                //    lblStatus.Caption :=
                //          '  데이터베이스에 연결중입니다.';
                     // ProgressBar1.stepby(50);
                     Application.ProcessMessages;
                     if not assigned(dm_f) then
                          Application.CreateForm(TDM_f, DM_f);
                 //     lblStatus.Caption :=
                 //         '  데이터베이스에 연결되었습니다.';
                     Application.ProcessMessages;



                     Application.CreateForm(TMain_f, Main_f);
                     main_f.V_UserID := DV_UserID;
                     main_f.V_UserName := DV_UserName;
                     main_f.V_UserPass := DV_UserPass;
                     main_f.V_POWER := DV_POWER;
                     main_f.V_Version := DV_Version;

                //    lblStatus.Caption := '  ' +
                //         'MEDIRO을 시작 하는 중입니다. 잠시 기다리세요.';
                //    lblStatus.Caption :=
                //          '  아이디와 패스워드를 입력하세요.';

                finally

                       Login_f.Free();

                end;





     end
     else
     begin



         Application.MessageBox('MEDIRO가 이미 실행중입니다', '확인', 0);
         EnumWindows(@EnumWindowsProc, 0);
      //  SendMessage(Application.Handle, WM_SYSCOMMAND, SC_RESTORE, 0);

     {     if (Paramstr(1) <> '') then
               // 프로그램이 실행되고 챠트번호가 들어온 경우
          begin
               Application.Initialize;
               strPGMName := GetIniValue('General', 'ProgramName');
          //     if (strPGMName <> '') then
                    EnumWindows(@EnumWindowsProc, 0);
          end;   }
 //    end;


//  Application.Initialize;
//  Application.Title := 'HHPMS';
end.

