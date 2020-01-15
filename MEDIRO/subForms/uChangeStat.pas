unit uChangeStat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, AdvCombo,
  ColCombo, EllipsLabel, Vcl.StdCtrls, AdvPanel, ShellApi;

type
  TchangeStat_f = class(TForm)
    AdvPanel1: TAdvPanel;
    wLabel38: TLabel;
    cbJong: TComboBox;
    wLabel39: TLabel;
    cbChoje: TComboBox;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    Label1: TLabel;
    cbSanCode3: TComboBox;
    Label2: TLabel;
    cbIO: TComboBox;
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    Panel2: TPanel;
    Label3: TLabel;
    lblChart: TLabel;
    Label4: TLabel;
    lblJubsuID: TLabel;
    lblPatInfo: TLabel;
    Button1: TButton;
    lblPiboid: TLabel;
    edtSanjung: TEdit;
    edtTeakryeRegNo: TEdit;
    Label5: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel1: TLabel;
    procedure cbTreatRoomSelect(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
     function  checkClientProxynRun: Boolean;
  public
    { Public declarations }
     procedure  LoadDefaultValue;
  end;

var
  changeStat_f: TchangeStat_f;

implementation

uses uConfig, uDM, uRest, uFormInit, uFunctions, usysInfo, uGogekData, uWebservice;
{$R *.dfm}

function  TchangeStat_f.checkClientProxynRun: Boolean;
const
  file1 = 'C:\Program Files (x86)\SoftForum\ClientProxy\ClientProxy.exe';
  file2 = 'C:\Program Files\SoftForum\ClientProxy\ClientProxy.exe';
begin
  Result := False;
  if fileexists(file1) then
  begin
    ShellExecute(handle, nil, file1, nil, nil, SW_SHOW);
    Result := true;
  end
  else if fileexists(file2) then
  begin
    ShellExecute(handle, nil, file2, nil, nil, SW_SHOW);
    Result := true;
  end;

end;


procedure TchangeStat_f.Button1Click(Sender: TObject);
const
  NumberChar: array [0 .. 14] of Integer = (23, 25, 28, 38, 40, 41, 42, 44, 45,
    46, 47, 48, 49, 50, 51);

var
  strkiho, clientInfo, strJumin2, varJagyukID, varJagyukPass, sDate: string;
  hkind: string;
  S: string;

  Result : boolean;
  i, j: Integer;

  varPath, varParam, varParam1: string;
  teakryeCode: string;

  strJuminNo, strPaitName : string;

begin
  varPath := extractFilePath(paramStr(0)) + 'auto.exe';
  varParam1 := '만세만세';
  varParam := varParam1 + ' ' + configvalue.varJagyukID + ' ' +
    configvalue.varJagyukPass;
  // sleep(100);



  // showmessage(varPath +':'+ varParam) ;

  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
    SW_SHOWNORMAL);

  if checkClientProxynRun = False then
  begin
    showmessage('자격조회모듈(ClientProxy)을 설치하세요.');
    exit;
  end;

  LoadWebserviceDLL;

  { 본인부담여부
    "M001: 선택기관적용자(조건부연장 승인자) 1종
    M002: 선택기관 자발적 참여자 1종
    M003: 18세 미만인자 1종
    M004: 임산부1종
    M005: 희귀난치성질환자 1종
    M006: 장기이식환자 1종
    M007: 20세 이하인자로 중.고등학교 재학중인자 1종
    M008: 가정간호 대상자 1종
    M009: 응급환자인 선택기관 이용자 1종
    M010: 장애인보장구 지급받는 선택기관 이용자 1종
    M011: 행려환자 1종
    M012: 노숙인 1종
    M013: 응급환자인 노숙인 1종
    M014: 2차노숙인진료시설에서 3차로 의뢰된 노숙인 1종
    B001: 선택기관 적용자(조건부연장승인자) 2종
    B002: 선택기관 자발적 참여자 2종"
  }

  hkind := 'M1';

  strJuminNo :=  ma_jumin;  //저장전에는 값이 안들어간다.
  strPaitName :=  ma_paName;  //저장전에는 값이 안들어간다.
  strkiho := configvalue.varYoyang;
  clientInfo := '127.0.0.1';
  strJumin2 := configvalue.varJumin;
  varJagyukID := configvalue.varJagyukID;
  varJagyukPass := configvalue.varJagyukPass;
  sDate := formatdatetime('YYYMMDD', now);



  if CallM1(False, // 테스트모드인가?
    strJuminNo, strPaitName, strkiho, // 요양기관기호
    clientInfo, strJumin2, // 원장주민번호
    varJagyukID, varJagyukPass, sDate) // 조회일자
    = true then
  begin

  //  PageControl2.ActivePageIndex := 1;

   ma_PiboName := nhicInfo[6]; // Response_KeyName_M1[5,1];

    ma_jumin := nhicInfo[1]; // 주민등록번호
    ma_Paname := nhicInfo[2]; // 수진자성명
    // nhicInfo[3]; YoyangKiho
    ma_hira_jong := nhicInfo[4]; // 가입자구분
    // ma_jongbeul   := nhicInfo[4]; // 가입자구분
    // 1: 지역가입자 2: 지역세대원 4:임의계속직장가입자 5:직장가입자
    // 6:직장피부양자 7:의료급여1종 8:의료급여2종
    if (ma_hira_jong = '1') or (ma_hira_jong = '2') or (ma_hira_jong = '4') or
      (ma_hira_jong = '5') or (ma_hira_jong = '6') or (ma_hira_jong = '7') or
      (ma_hira_jong = '8') then
      Result := true
    else
      Result := False;

    ma_apply_Day := nhicInfo[5]; // 자격취득일  //ver.2.20
    ma_PiboName := nhicInfo[6]; // 세대주(가입자명)
    ma_Kiho := nhicInfo[7]; // 사업장기호
    ma_K_Number := nhicInfo[8]; // 보험증번호
    ma_cancelDay := nhicInfo[9]; // 급여제한일자
    ma_budam := nhicInfo[10]; // 본인부담여부, injek에 저장
    ma_janek := nhicInfo[11]; // 유지비잔액

    // boninJun      := NjunaekYN; //본인 전액 부담 여부

    // ma_Sunkiho1,  ma_Sunkiho2,  ma_Sunkiho3 ,ma_Sunkiho4
    ma_Sunkiho1 := trim(nhicInfo[12] + '  ' + nhicInfo[16]); // 선택기관기호1 명칭
    ma_Sunkiho2 := trim(nhicInfo[13] + '  ' + nhicInfo[17]); // 선택기관기호2
    ma_Sunkiho3 := trim(nhicInfo[14] + '  ' + nhicInfo[18]); // 선택기관기호3
    ma_Sunkiho4 := trim(nhicInfo[15] + '  ' + nhicInfo[19]);
    // 선택기관기호4 - 치과 //2008.12.8 관할지사명 미제공

    ma_overseas := nhicInfo[20]; // 출국자 여부
    ma_jangeil := nhicInfo[21]; // 장애일자

    ma_chaSangNo := trim(nhicInfo[24]); // 차상위 특정기호(4) + 시작일(8) + 종료일(8) + 구분(1)
    // 구분 1: 차상위 1종 구분 2: 차상위 2종
    // 1종 시행(C)
    // 2009.04.01 2종 시행(E, F)"


    // sanjung := copy(nhicInfo[22], 5, 15); // 산정특례등록대상자
    // ver.2.125 산정특례 등록번호
    // sanjung := trim(lblRegNo.Caption);

    // 2012.7.1
    // 등록번호(15) + 등록요양기관기호(8) + 틀니장착일(8) + 무상사후기간 종료일(8) + 시작일(8) + 종료일(8)
    ma_artTeeth1 := copy(nhicInfo[31], 1, 15); // 틀니등록번호(상악)
    ma_artTeeth2 := copy(nhicInfo[32], 1, 15); // 틀니등록번호(하악)

    ma_artYoyang1 := copy(nhicInfo[31], 16, 8);
    ma_artYoyang2 := copy(nhicInfo[32], 16, 8);
    // *****

    // ver.2.133 임플란트
    // "등록번호(18)+등록요양기관기호(8)
    // +최종단계시술일(8)+사후점검종료일(8)+시작유효일(8)+상실유효일(8)"
    ma_implTeeth1 := copy(nhicInfo[36], 1, 18); // 임플란트 등록번호(1)
    ma_implTeeth2 := copy(nhicInfo[37], 1, 18); // 임플란트 등록번호(2)

    ma_implYoyang1 := copy(nhicInfo[36], 19, 8);
    ma_implYoyang2 := copy(nhicInfo[37], 19, 8);

    ma_RestrictCd := nhicInfo[35]; // 급여제한 01 : 무자격자,  02 : 보험료체납 급여제한자"

    // ver.3.42 장애여부
    // "Y : 장애우
    // N : 비장애우"
    // 차상위 특정기호(E) 대상자 또는 의료급여 1·2종 대상자일 경우만 서비스 제공
    ma_special := nhicInfo[39]; // Y : 장애우 N: 비장애우

    {
      1건강보험
      2보호1종
      3보호2종
      4일반
      5보호4종
      6보호8종
      7산재
      8자보
      9차상위1종
      10차상위2종
      11차상위2종장애인 }

    if ((ma_cancelDay <> '') and ((trim(ma_Sunkiho1) = '') or
      (trim(ma_Sunkiho4) = '0000')) and (trim(ma_Sunkiho2) = '') and
      (trim(ma_Sunkiho3) = '') and (trim(ma_Sunkiho4) = '')) or
      (ma_RestrictCd = '01') // 01 : 무자격자
      or (ma_RestrictCd = '02') // 02 : 보험료체납 급여제한자"
      or not((ma_hira_jong = '1') or // 보험자격자.
      (ma_hira_jong = '2') or (ma_hira_jong = '4') or (ma_hira_jong = '5') or
      (ma_hira_jong = '6') or (ma_hira_jong = '7') or (ma_hira_jong = '8'))

    then
    begin // 전액본인(무자격자)
      ma_jongbeul := '4'; // '일반';
      ma_K_Number := '';
      ma_Kiho := '';
      ma_PiboName := '';
    end
    else if copy(ma_chaSangNo, 1, 1) = 'C' then
    begin
      ma_jongbeul := '9'; // '차상위1종';
    end
    else if copy(ma_chaSangNo, 1, 1) = 'E' then
    begin
      // jongbeul := '차상위2종';
      // ver.3.42 장애여부 확인 -------------
      if ma_special = 'Y' then
        ma_jongbeul := '11' // '차상위2종장애인'
      else
        ma_jongbeul := '10'; // '차상위2종';
      // ------------------------------------
    end
    else if copy(ma_chaSangNo, 1, 1) = 'F' then
    begin
      ma_jongbeul := '11'; // '차상위2종장애인';
    end

    else if ma_hira_jong = '7' then
    begin
      ma_jongbeul := '2'; // '보호1종';
    end
    else if (ma_hira_jong = '8') and (ma_jangeil <> '') then
    begin
      ma_jongbeul := '6'; // '보호8종';
      // isJange := true;      // 인적창에서 장애는 정신지체장애를 말하므로 무조건 장애라고하면 안된다.
    end
    else if (ma_hira_jong = '8') then
    begin
      // jongbeul := '보호2종';
      // ver.3.42 장애여부 확인 -------------
      if ma_special = 'Y' then
        ma_jongbeul := '6' // '보호8종'
      else
        ma_jongbeul := '3'; // '보호2종';
      // ------------------------------------

    end
    else
    begin
      ma_jongbeul := '1'; // '보험';
    end;

    // 종별
    // if (ma_jongbeul <> '') then
    // begin
    // for iIndex := 0 to JongbyulList.Count - 1 do
    // begin
    // if (JongbyulList.Strings[iIndex] = ma_jongbeul) then
    // begin
    // ma_jongbeul := IntToStr(iIndex + 1);
    // break;
    // end;
    // end;
    // end;

    cbJong.ItemIndex := strtoint(ma_jongbeul) - 1;
    // cbJong.Items.IndexOf(ma_jongbeul) ;
//    cbRel.ItemIndex := 0;
//    edtGiho.Text := ma_Kiho;
//    edtsaupname.Text := '';
//    edtJungNo.Text := ma_K_Number;
//    edtOwnDay.Text := nhicInfo[5]; // 취득일
//    edtEndDay.Text := nhicInfo[9]; // 급여제한일
//    edtSisulKiho.Text := '';
//    edtCancelRegNo.Text := copy(trim(nhicInfo[25]), 5, 15); // 중증암등록번호
//    edtPatriotNo.Text := '';
//    edthandicapNo.Text := '';
//
//    // =============================================
// //   edtBudam.Text := '';
//    cbBudam.ItemIndex := BoninBudamIndex(ma_budam);
//    edtBudam.text:=  ma_budam;
//
//    edtspKiho.Text := '';
//    edtbonNO.Text := '';
//    edtjanek.Text := ma_janek;
//
//    edtartTeeth1.Text := ma_artTeeth1;
//    edtartTeeth2.Text := ma_artTeeth2;
//
//    edtimplTeeth1.Text := ma_implTeeth1;
//    edtimplTeeth2.Text := ma_implTeeth2;
//
//    JSunkihoEdit1.Text := ma_Sunkiho1;
//    JSunkihoEdit2.Text := ma_Sunkiho2;
//    JSunkihoEdit3.Text := ma_Sunkiho3;
//    JSunkihoEdit4.Text := ma_Sunkiho4;
//
//    edtSangsil.Text := ma_cancelDay;

    // 산정특례 numberChar
    for i := 0 to 14 do
    begin
      j := NumberChar[i];
      if nhicInfo[j] <> '' then
      begin
        teakryeCode := nhicInfo[j]; // Response_KeyName_M1[ numberChar[i], 1];
        teakryeCode := copy(teakryeCode, 1, 4); // 특정기호(4)

        ma_teakRye := teakryeCode;

        if trim(edtSanjung.Text) = '' then
          edtSanjung.Text := teakryeCode
        else
          edtSanjung.Text := edtSanjung.Text + '|' + teakryeCode;

        // ToDo: 산정코드는 접수대에서 물어볼것이다.
        // if trim(uppercase(edtSanjung.text)) = 'V'  then
        // edtSanjung.text:='V001';

        teakryeCode := nhicInfo[j];
        // Response_KeyName_M1[ j, 1];//Response_KeyName_M1[ numberChar[i], 1];
        teakryeCode := copy(teakryeCode, 5, 15); // 등록번호(15)

        ma_teakryeCode := teakryeCode;

        if trim(edtTeakryeRegNo.Text) = '' then
          edtTeakryeRegNo.Text := teakryeCode
        else
          edtTeakryeRegNo.Text := edtTeakryeRegNo.Text + '|' + teakryeCode;

//        edtTeakRyeCodeAll.Text := edtTeakRyeCodeAll.Text + '|' + nhicInfo[j];
        // Response_KeyName_M1[ numberChar[i], 1];

      end;
    end;

//    edtSanjung.Hint := edtSanjung.Text;
//    ma_sanjung := edtTeakRyeCodeAll.Text;

    if trim(nhicInfo[9]) <> '' then
    begin
          showmessage('급여제한자 ('+trim(nhicInfo[9]) +')입니다.');
    end;

    if nhicInfo[53] <> 'IWS10001' then
    begin

      showmessage(nhicInfo[54]);
      //

    end
    else
    begin

      // 현재일자의 자격정보입니다.(접촉자)
      // Mers Disply
      {
        (접촉자)
        (격리대상자)
        (일상접촉자)
        (방문자)
        (중동입국자)
      }

      if Pos('접촉자', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(접촉자)입니다');
      end;
      if Pos('격리대상자', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(격리대상자)입니다');
      end;
      if Pos('일상접촉자', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(일상접촉자)입니다');
      end;
      if Pos('방문자', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(방문자)입니다');
      end;
      if Pos('중동입국자', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(중동입국자)입니다');
      end;





      // 조회 후 자격을 저장한다.
      // ToDo : 자격 히스토리 관리?
      // SaveGogek;

      if ma_Chart <> '' then
        saveGogekpibo(lblPiboid.Caption, ma_Chart, ma_Paname, // ma_PiboName,
          ma_K_Number, ma_jongbeul, // 종별
          '',//edtZip.Text, // 집우편번호
          '',//memAdd.Text, // 집주소
          ma_Kiho, // 조합기호
          '',//edtHphone.Text, // 집전화번호
          ma_apply_Day, // 보험증 적용일
          formatdatetime('YYYY-MM-DD', now), // regDay
          ma_budam, // bontype
          ma_janek, // janek
          ma_sanjung, // bonsanjung
          ma_teakRye, // bonsanjung
          ma_teakryeCode, // bonsanjung
          ma_artTeeth1, // artTeeth1
          ma_artTeeth2, // artTeeth2
          ma_implTeeth1, // implYoyang1
          ma_implTeeth2, // implYoyang2
          ma_artYoyang1, // implTeeth1
          ma_artYoyang2, // implTeeth2
          ma_implYoyang1, // artYoyang1
          ma_implYoyang2, // artYoyang2
          ma_Sunkiho1, // sunkiho1
          ma_Sunkiho2, // sunkiho2
          ma_Sunkiho3, // sunkiho3
          ma_Sunkiho4, // sunkiho4
          '', // pregnan
          ma_chaSangNo, // chaSangNo
          formatdatetime('YYYY-MM-DD', now), // johoidate
          ma_special, // jange //Y : 장애우 N: 비장애우
          ma_RestrictCd, // restricted //급여제한 01 : 무자격자,  02 : 보험료체납 급여제한자"
          ma_cancelDay, //
          ma_hira_jong, // hira_Jong
          ma_PiboName // sedejuNm
          );

      if ma_overseas = 'Y' then

        showmessage('출국자입니다.');

    end;

  end
  else
  begin
    showmessage('자격조회 오류');

    cbJong.ItemIndex := 3; // 일반

  end;
  // S := Format('"%s" "%s" "%s" "%s" "%s" "%s" "%s" "%s" "%s"',
  // [hkind, strJuminNo, strPaitName,
  // strkiho, clientInfo, strJumin2,
  // varJagyukID, varJagyukPass, sDate]);
  //
  // ShellExecute(0, 'open',
  // Pchar(ExtractFilePath(Application.ExeName)
  // + 'nhic.exe'), pChar(S), nil, SW_SHOWNORMAL);

  // tmpHandle := FindWindow('Form1',nil);
  // SetWindowPos(tmpHandle,HWND_TOPMOST,left,Top,Width,Height,SWP_SHOWWINDOW);



end;


procedure TchangeStat_f.cbTreatRoomSelect(Sender: TObject);
var
    team_key : string;
begin
   // showmessage('');
     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);

end;


procedure TchangeStat_f.LoadDefaultValue;
var
     varcode: string;
     team_key : string;
begin

     with dm_f.SqlWork do
     begin

          varCode := '002'; //종별
          cbJong.items.Clear;
          Close;
          Sql.Clear;
          Sql.Add(' select * from ma_basic');
          Sql.Add(' where Code like :Code and Code<> :code2');
          Sql.Add(' order by Code');
          ParamByName('Code').AsString := varCode + '%';
          ParamByName('Code2').AsString := varCode + '000';
          Open;
          First;
          while not eof do
          begin
               cbJong.items.Add(fieldByName('disp').asString);
               next;
          end;


          with cbTreatRoom do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          Close;
          Sql.Clear;
          Sql.text :=
               'Select * from ma_basic                                   ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
               'and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'' )   ' + #13#10 +
            //   'order by val,code                                        ';
               'order by disp                                       ';


          Open;
          if not isEmpty then
          begin

               with cbTreatRoom do
               begin
                     with Columns.Add do
                     begin
                          Width := 0;
                          Font.Style := [fsBold];
                          Font.Name:= '맑은 고딕';
                          Font.Size := 12;
                     end;
                     with Columns.Add do
                     begin
                          Width := 0;
                          Font.Color := clBlue;
                          Font.Style := [fsBold];
                          Font.Name:= '맑은 고딕';
                          Font.Size := 12;
                     end;
                     with Columns.Add do
                     begin
                          Width := 200;
                          Font.Name:= '맑은 고딕';
                          Font.Size := 12;
                     end;

               end;


               while not eof do
               begin

                   with cbTreatRoom.ComboItems.Add do
                   begin
                      Strings.Add(trim(FieldByName('val').AsString));     //Code
                      Strings.Add(trim(FieldByName('remark').AsString));  //code?
                      Strings.Add(trim(FieldByName('disp').AsString));

                   end;

                    next;
               end;

//               cbTreatRoom.ItemIndex := 0;
          end
          else
          begin
          end;
     end;

//     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
//     LoadDoclist(cbDoc, team_key);

end;


end.
