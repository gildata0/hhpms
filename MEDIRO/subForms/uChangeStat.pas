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
  varParam1 := '��������';
  varParam := varParam1 + ' ' + configvalue.varJagyukID + ' ' +
    configvalue.varJagyukPass;
  // sleep(100);



  // showmessage(varPath +':'+ varParam) ;

  ShellExecute(GetDeskTopWindow, 'open', pchar(varPath), pchar(varParam), nil,
    SW_SHOWNORMAL);

  if checkClientProxynRun = False then
  begin
    showmessage('�ڰ���ȸ���(ClientProxy)�� ��ġ�ϼ���.');
    exit;
  end;

  LoadWebserviceDLL;

  { ���κδ㿩��
    "M001: ���ñ��������(���Ǻο��� ������) 1��
    M002: ���ñ�� �ڹ��� ������ 1��
    M003: 18�� �̸����� 1��
    M004: �ӻ��1��
    M005: ��ͳ�ġ����ȯ�� 1��
    M006: ����̽�ȯ�� 1��
    M007: 20�� �������ڷ� ��.����б� ���������� 1��
    M008: ������ȣ ����� 1��
    M009: ����ȯ���� ���ñ�� �̿��� 1��
    M010: ����κ��屸 ���޹޴� ���ñ�� �̿��� 1��
    M011: ���ȯ�� 1��
    M012: ����� 1��
    M013: ����ȯ���� ����� 1��
    M014: 2�����������ü����� 3���� �Ƿڵ� ����� 1��
    B001: ���ñ�� ������(���Ǻο��������) 2��
    B002: ���ñ�� �ڹ��� ������ 2��"
  }

  hkind := 'M1';

  strJuminNo :=  ma_jumin;  //���������� ���� �ȵ���.
  strPaitName :=  ma_paName;  //���������� ���� �ȵ���.
  strkiho := configvalue.varYoyang;
  clientInfo := '127.0.0.1';
  strJumin2 := configvalue.varJumin;
  varJagyukID := configvalue.varJagyukID;
  varJagyukPass := configvalue.varJagyukPass;
  sDate := formatdatetime('YYYMMDD', now);



  if CallM1(False, // �׽�Ʈ����ΰ�?
    strJuminNo, strPaitName, strkiho, // �������ȣ
    clientInfo, strJumin2, // �����ֹι�ȣ
    varJagyukID, varJagyukPass, sDate) // ��ȸ����
    = true then
  begin

  //  PageControl2.ActivePageIndex := 1;

   ma_PiboName := nhicInfo[6]; // Response_KeyName_M1[5,1];

    ma_jumin := nhicInfo[1]; // �ֹε�Ϲ�ȣ
    ma_Paname := nhicInfo[2]; // �����ڼ���
    // nhicInfo[3]; YoyangKiho
    ma_hira_jong := nhicInfo[4]; // �����ڱ���
    // ma_jongbeul   := nhicInfo[4]; // �����ڱ���
    // 1: ���������� 2: ��������� 4:���ǰ�����尡���� 5:���尡����
    // 6:�����Ǻξ��� 7:�Ƿ�޿�1�� 8:�Ƿ�޿�2��
    if (ma_hira_jong = '1') or (ma_hira_jong = '2') or (ma_hira_jong = '4') or
      (ma_hira_jong = '5') or (ma_hira_jong = '6') or (ma_hira_jong = '7') or
      (ma_hira_jong = '8') then
      Result := true
    else
      Result := False;

    ma_apply_Day := nhicInfo[5]; // �ڰ������  //ver.2.20
    ma_PiboName := nhicInfo[6]; // ������(�����ڸ�)
    ma_Kiho := nhicInfo[7]; // ������ȣ
    ma_K_Number := nhicInfo[8]; // ��������ȣ
    ma_cancelDay := nhicInfo[9]; // �޿���������
    ma_budam := nhicInfo[10]; // ���κδ㿩��, injek�� ����
    ma_janek := nhicInfo[11]; // �������ܾ�

    // boninJun      := NjunaekYN; //���� ���� �δ� ����

    // ma_Sunkiho1,  ma_Sunkiho2,  ma_Sunkiho3 ,ma_Sunkiho4
    ma_Sunkiho1 := trim(nhicInfo[12] + '  ' + nhicInfo[16]); // ���ñ����ȣ1 ��Ī
    ma_Sunkiho2 := trim(nhicInfo[13] + '  ' + nhicInfo[17]); // ���ñ����ȣ2
    ma_Sunkiho3 := trim(nhicInfo[14] + '  ' + nhicInfo[18]); // ���ñ����ȣ3
    ma_Sunkiho4 := trim(nhicInfo[15] + '  ' + nhicInfo[19]);
    // ���ñ����ȣ4 - ġ�� //2008.12.8 ��������� ������

    ma_overseas := nhicInfo[20]; // �ⱹ�� ����
    ma_jangeil := nhicInfo[21]; // �������

    ma_chaSangNo := trim(nhicInfo[24]); // ������ Ư����ȣ(4) + ������(8) + ������(8) + ����(1)
    // ���� 1: ������ 1�� ���� 2: ������ 2��
    // 1�� ����(C)
    // 2009.04.01 2�� ����(E, F)"


    // sanjung := copy(nhicInfo[22], 5, 15); // ����Ư�ʵ�ϴ����
    // ver.2.125 ����Ư�� ��Ϲ�ȣ
    // sanjung := trim(lblRegNo.Caption);

    // 2012.7.1
    // ��Ϲ�ȣ(15) + ��Ͽ������ȣ(8) + Ʋ��������(8) + ������ıⰣ ������(8) + ������(8) + ������(8)
    ma_artTeeth1 := copy(nhicInfo[31], 1, 15); // Ʋ�ϵ�Ϲ�ȣ(���)
    ma_artTeeth2 := copy(nhicInfo[32], 1, 15); // Ʋ�ϵ�Ϲ�ȣ(�Ͼ�)

    ma_artYoyang1 := copy(nhicInfo[31], 16, 8);
    ma_artYoyang2 := copy(nhicInfo[32], 16, 8);
    // *****

    // ver.2.133 ���ö�Ʈ
    // "��Ϲ�ȣ(18)+��Ͽ������ȣ(8)
    // +�����ܰ�ü���(8)+��������������(8)+������ȿ��(8)+�����ȿ��(8)"
    ma_implTeeth1 := copy(nhicInfo[36], 1, 18); // ���ö�Ʈ ��Ϲ�ȣ(1)
    ma_implTeeth2 := copy(nhicInfo[37], 1, 18); // ���ö�Ʈ ��Ϲ�ȣ(2)

    ma_implYoyang1 := copy(nhicInfo[36], 19, 8);
    ma_implYoyang2 := copy(nhicInfo[37], 19, 8);

    ma_RestrictCd := nhicInfo[35]; // �޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"

    // ver.3.42 ��ֿ���
    // "Y : ��ֿ�
    // N : ����ֿ�"
    // ������ Ư����ȣ(E) ����� �Ǵ� �Ƿ�޿� 1��2�� ������� ��츸 ���� ����
    ma_special := nhicInfo[39]; // Y : ��ֿ� N: ����ֿ�

    {
      1�ǰ�����
      2��ȣ1��
      3��ȣ2��
      4�Ϲ�
      5��ȣ4��
      6��ȣ8��
      7����
      8�ں�
      9������1��
      10������2��
      11������2������� }

    if ((ma_cancelDay <> '') and ((trim(ma_Sunkiho1) = '') or
      (trim(ma_Sunkiho4) = '0000')) and (trim(ma_Sunkiho2) = '') and
      (trim(ma_Sunkiho3) = '') and (trim(ma_Sunkiho4) = '')) or
      (ma_RestrictCd = '01') // 01 : ���ڰ���
      or (ma_RestrictCd = '02') // 02 : �����ü�� �޿�������"
      or not((ma_hira_jong = '1') or // �����ڰ���.
      (ma_hira_jong = '2') or (ma_hira_jong = '4') or (ma_hira_jong = '5') or
      (ma_hira_jong = '6') or (ma_hira_jong = '7') or (ma_hira_jong = '8'))

    then
    begin // ���׺���(���ڰ���)
      ma_jongbeul := '4'; // '�Ϲ�';
      ma_K_Number := '';
      ma_Kiho := '';
      ma_PiboName := '';
    end
    else if copy(ma_chaSangNo, 1, 1) = 'C' then
    begin
      ma_jongbeul := '9'; // '������1��';
    end
    else if copy(ma_chaSangNo, 1, 1) = 'E' then
    begin
      // jongbeul := '������2��';
      // ver.3.42 ��ֿ��� Ȯ�� -------------
      if ma_special = 'Y' then
        ma_jongbeul := '11' // '������2�������'
      else
        ma_jongbeul := '10'; // '������2��';
      // ------------------------------------
    end
    else if copy(ma_chaSangNo, 1, 1) = 'F' then
    begin
      ma_jongbeul := '11'; // '������2�������';
    end

    else if ma_hira_jong = '7' then
    begin
      ma_jongbeul := '2'; // '��ȣ1��';
    end
    else if (ma_hira_jong = '8') and (ma_jangeil <> '') then
    begin
      ma_jongbeul := '6'; // '��ȣ8��';
      // isJange := true;      // ����â���� ��ִ� ������ü��ָ� ���ϹǷ� ������ ��ֶ���ϸ� �ȵȴ�.
    end
    else if (ma_hira_jong = '8') then
    begin
      // jongbeul := '��ȣ2��';
      // ver.3.42 ��ֿ��� Ȯ�� -------------
      if ma_special = 'Y' then
        ma_jongbeul := '6' // '��ȣ8��'
      else
        ma_jongbeul := '3'; // '��ȣ2��';
      // ------------------------------------

    end
    else
    begin
      ma_jongbeul := '1'; // '����';
    end;

    // ����
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
//    edtOwnDay.Text := nhicInfo[5]; // �����
//    edtEndDay.Text := nhicInfo[9]; // �޿�������
//    edtSisulKiho.Text := '';
//    edtCancelRegNo.Text := copy(trim(nhicInfo[25]), 5, 15); // �����ϵ�Ϲ�ȣ
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

    // ����Ư�� numberChar
    for i := 0 to 14 do
    begin
      j := NumberChar[i];
      if nhicInfo[j] <> '' then
      begin
        teakryeCode := nhicInfo[j]; // Response_KeyName_M1[ numberChar[i], 1];
        teakryeCode := copy(teakryeCode, 1, 4); // Ư����ȣ(4)

        ma_teakRye := teakryeCode;

        if trim(edtSanjung.Text) = '' then
          edtSanjung.Text := teakryeCode
        else
          edtSanjung.Text := edtSanjung.Text + '|' + teakryeCode;

        // ToDo: �����ڵ�� �����뿡�� ������̴�.
        // if trim(uppercase(edtSanjung.text)) = 'V'  then
        // edtSanjung.text:='V001';

        teakryeCode := nhicInfo[j];
        // Response_KeyName_M1[ j, 1];//Response_KeyName_M1[ numberChar[i], 1];
        teakryeCode := copy(teakryeCode, 5, 15); // ��Ϲ�ȣ(15)

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
          showmessage('�޿������� ('+trim(nhicInfo[9]) +')�Դϴ�.');
    end;

    if nhicInfo[53] <> 'IWS10001' then
    begin

      showmessage(nhicInfo[54]);
      //

    end
    else
    begin

      // ���������� �ڰ������Դϴ�.(������)
      // Mers Disply
      {
        (������)
        (�ݸ������)
        (�ϻ�������)
        (�湮��)
        (�ߵ��Ա���)
      }

      if Pos('������', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(������)�Դϴ�');
      end;
      if Pos('�ݸ������', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�ݸ������)�Դϴ�');
      end;
      if Pos('�ϻ�������', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�ϻ�������)�Դϴ�');
      end;
      if Pos('�湮��', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�湮��)�Դϴ�');
      end;
      if Pos('�ߵ��Ա���', nhicInfo[54]) > 0 then
      begin
        showmessage('MERS' + '(�ߵ��Ա���)�Դϴ�');
      end;





      // ��ȸ �� �ڰ��� �����Ѵ�.
      // ToDo : �ڰ� �����丮 ����?
      // SaveGogek;

      if ma_Chart <> '' then
        saveGogekpibo(lblPiboid.Caption, ma_Chart, ma_Paname, // ma_PiboName,
          ma_K_Number, ma_jongbeul, // ����
          '',//edtZip.Text, // �������ȣ
          '',//memAdd.Text, // ���ּ�
          ma_Kiho, // ���ձ�ȣ
          '',//edtHphone.Text, // ����ȭ��ȣ
          ma_apply_Day, // ������ ������
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
          ma_special, // jange //Y : ��ֿ� N: ����ֿ�
          ma_RestrictCd, // restricted //�޿����� 01 : ���ڰ���,  02 : �����ü�� �޿�������"
          ma_cancelDay, //
          ma_hira_jong, // hira_Jong
          ma_PiboName // sedejuNm
          );

      if ma_overseas = 'Y' then

        showmessage('�ⱹ���Դϴ�.');

    end;

  end
  else
  begin
    showmessage('�ڰ���ȸ ����');

    cbJong.ItemIndex := 3; // �Ϲ�

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

          varCode := '002'; //����
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
                          Font.Name:= '���� ���';
                          Font.Size := 12;
                     end;
                     with Columns.Add do
                     begin
                          Width := 0;
                          Font.Color := clBlue;
                          Font.Style := [fsBold];
                          Font.Name:= '���� ���';
                          Font.Size := 12;
                     end;
                     with Columns.Add do
                     begin
                          Width := 200;
                          Font.Name:= '���� ���';
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
