unit jumgumResult;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
              Forms,
       Dialogs, Grids, ComCtrls, StdCtrls;

type
       TjumgumResult_f = class(TForm)
              GroupBox1: TGroupBox;
              pgLog: TPageControl;
              TabSheet1: TTabSheet;
              stgLog: TStringGrid;
              TabSheet2: TTabSheet;
              stgResultList: TStringGrid;
              Button1: TButton;
              Button2: TButton;
              procedure FormCreate(Sender: TObject);
              procedure Button1Click(Sender: TObject);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
              procedure stgResultListDblClick(Sender: TObject);
              procedure Button2Click(Sender: TObject);
       private
              { Private declarations }
       public
              { Public declarations }
       end;

var
       jumgumResult_f: TjumgumResult_f;

implementation

uses uConfig, uDur, sayu, uDM;

{$R *.dfm}

procedure TjumgumResult_f.FormCreate(Sender: TObject);
begin
       caption := '���˰��';
       //���˰��
       stgResultList.Cells[0, 0] := 'No';
       stgResultList.Cells[1, 0] := '���˱���';
       stgResultList.Cells[2, 0] := '�����ǰ';
       stgResultList.Cells[3, 0] := '�Է¾�ǰ';
       stgResultList.Cells[4, 0] := '����';
       stgResultList.Cells[5, 0] := 'ó����';
       stgResultList.Cells[6, 0] := 'ó�����';
       stgResultList.Cells[7, 0] := 'ó������';
       stgResultList.Cells[8, 0] := '������';
       stgResultList.Cells[9, 0] := '1��������';
       stgResultList.Cells[10, 0] := '�����ϼ�';
       stgResultList.Cells[11, 0] := '�����Է�';

       pgLog.Pages[0].Caption := '�α�';
       pgLog.Pages[1].Caption := '���˰��';

       stgLog.Cells[0, 0] := 'No.';
       stgLog.Cells[1, 0] := 'Item';
       stgLog.Cells[2, 0] := 'Logs';
       stgLog.Cells[3, 0] := 'Time';

end;

procedure TjumgumResult_f.Button1Click(Sender: TObject);
begin
       close;
end;

procedure TjumgumResult_f.FormClose(Sender: TObject;
       var Action: TCloseAction);
begin
       action := cafree;
end;

procedure TjumgumResult_f.FormDestroy(Sender: TObject);
begin
       jumgumResult_f := nil;
end;

procedure TjumgumResult_f.stgResultListDblClick(Sender: TObject);
var
       i, selRow, row_count: Integer;
begin
       if stgResultList.RowCount > 0 then
       begin
              SelRow := stgResultList.Row;
              row_count := stgResultList.RowCount;
              if not Assigned(sayu_f) then
              begin
                     sayu_f :=
                            Tsayu_f.Create(application);
              end;

              if stgResultList.Cells[stgResultList.Col, stgResultList.Row] = ''
                     then
                     exit;

              i := StrToInt(stgResultList.Cells[stgResultList.Col,
                     stgResultList.Row]);

              sayu_f.nCheckType := nCheckType;
              sayu_f.strGubun.Text := ResultList[i - 1].strExamType;
              sayu_f.strMediA.Text := ResultList[i - 1].m_strMedcNMA;
              sayu_f.strMediB.Text := ResultList[i - 1].m_strMedcNMB;
              sayu_f.strReasonCd.Text := ResultList[i - 1].m_strReasonCD;
              sayu_f.strReason.Text := ResultList[i - 1].m_strReason;
              sayu_f.strMessage.Text := ResultList[i - 1].m_strMessage;
              //	sayu_f.strLevel.Text := Char(StrToInt(ResultList[i - 1].m_nLevel));
              sayu_f.strLevel.Text := ResultList[i - 1].m_nLevel;
              sayu_f.strPreReasonCd.Text := ResultList[i - 1].m_strReasonCD;
              sayu_f.strPreReason.Text := ResultList[i - 1].m_strReason;
              sayu_f.strSafeInfo.Text := ResultList[i - 1].m_strNotice;

              sayu_f.strDpPrscMake.Text := ResultList[i - 1].m_strDpPrscMake;
                     // �ߺ�ó����������
              sayu_f.strDpPrscYYMMDD.Text := ResultList[i - 1].m_strDpPrscYYMMDD;
                     // �ߺ�ó������
              sayu_f.strDpPrscHMMSS.Text := ResultList[i - 1].m_strDpPrscHMMSS;
                     // �ߺ�ó��ð�
              sayu_f.strDpPrscAdminCode.Text := ResultList[i -
                     1].m_strDpPrscAdminCode; // �ߺ�ó������ȣ
              sayu_f.strDpPrscGrantNo.Text := ResultList[i -
                     1].m_strDpPrscGrantNo; // �ߺ�ó�������ι�ȣ
              sayu_f.strDpPrscAdminName.Text := ResultList[i -
                     1].m_strDpPrscAdminName; // �ߺ�ó������
              sayu_f.strDpPrscTel.Text := ResultList[i - 1].m_strDpPrscTel;
                     // �ߺ�ó������ȭ
              sayu_f.strDpPrscFax.Text := ResultList[i - 1].m_strDpPrscFax;
                     // �ߺ�ó�����ѽ�
              sayu_f.strDpPrscName.Text := ResultList[i - 1].m_strDpPrscName;
                     // �ߺ�ó���ǻ��
              sayu_f.strDpPrscLic.Text := ResultList[i - 1].m_strDpPrscLic;
                     // �ߺ�ó���ǻ�����ȣ

              sayu_f.strDpMakeYYMMDD.Text := ResultList[i - 1].m_strDpMakeYYMMDD;
                     // �ߺ���������
              sayu_f.strDpMakeHMMSS.Text := ResultList[i - 1].m_strDpMakeHMMSS;
                     // �ߺ������ð�
              sayu_f.strDpMakeAdminCode.Text := ResultList[i -
                     1].m_strDpMakeAdminCode; // �ߺ����������ȣ
              sayu_f.strDpMakeAdminName.Text := ResultList[i -
                     1].m_strDpMakeAdminName; // �ߺ����������
              sayu_f.strDpMakeHMMSS.Text := ResultList[i - 1].m_strDpMakeTel;
                     // �ߺ����������ȭ
              sayu_f.strDpMakeName.Text := ResultList[i - 1].m_strDpMakeName;
                     // �ߺ������ǻ��
              sayu_f.strDpMakeLic.Text := ResultList[i - 1].m_strDpMakeLic;
                     // �ߺ������ǻ�����ȣ

              sayu_f.strDpMdsCd.Text := ResultList[i - 1].m_strMedcCDB;
              sayu_f.strDpMdsName.Text := ResultList[i - 1].m_strMedcNMB;
              sayu_f.strDpCmptCd.Text := ResultList[i - 1].m_strGnlNMCDB;
              sayu_f.strDpCmptName.Text := ResultList[i - 1].m_strGnlNMB;
              sayu_f.strDp1Time.Text := ResultList[i - 1].m_fDDMqtyFreqB;
              sayu_f.strDp1Day.Text := ResultList[i - 1].m_fDDTotalMqtyB;
              sayu_f.strDpTotDay.Text := ResultList[i - 1].m_nMdcnExecFreqB;

              if (sayu_f.strLevel.Text = 'B') or (sayu_f.strLevel.Text = 'D')
                     then
              begin
                     sayu_f.strReasonCd.Text := 'Text�Է�';
                     sayu_f.strReasonCd.Enabled := True;
                     sayu_f.strReason.Enabled := True;
                     sayu_f.BtnInReason.Enabled := True;
              end
              else
              begin
                     sayu_f.strReasonCd.Enabled := False;
                     sayu_f.strReason.Enabled := False;
                     sayu_f.BtnInReason.Enabled := False;
              end;

              sayu_f.ShowModal;

              if sayu_f.bOk then
              begin
                     ResultList[i - 1].m_strReasonCD := sayu_f.strReasonCd.Text;
                     ResultList[i - 1].m_strReason := sayu_f.strReason.Text;
                     UpdateResultSetToList(stgResultList);
              end;

       end;

end;

procedure TjumgumResult_f.Button2Click(Sender: TObject);
var
       i, nResult, nReasonNo: integer;
       ErrNum: integer;
begin
       modalResult := mrNone;
       try
              if nCheckType <> 0 then
                     Exit;

              if nTotResultCnt = 0 then
                     Exit;

              ClearSGrid(stgLog);

              for i := 1 to nTotResultCnt do
              begin
                     if (ResultList[i - 1].m_nLevel = 'B') and (ResultList[i -
                            1].m_strReasonCD = '') and (ResultList[i - 1].m_strReason =
                            '') then
                     begin
                            //WriteLog('1' ,'��������', '�����ڵ� ���Է� �׸��� �ֽ��ϴ�. �����ڵ带 �Է��Ͻʽÿ�.' );
                            ShowMessage('�����ڵ� ���Է� �׸��� �ֽ��ϴ�. �����ڵ带 �Է��Ͻʽÿ�.');
                            Exit;
                     end
                     else if (ResultList[i - 1].m_nLevel = 'C') then
                     begin
                            // WriteLog('1' ,'��������', 'ó��/���� ���� ��ǰ�� �ֽ��ϴ�. ��ǰ�� �����ϰų� �����Ͽ� �� ������ �ֽʽÿ�.' );
                            ShowMessage('ó��/���� ���� ��ǰ�� �ֽ��ϴ�. ��ǰ�� �����ϰų� �����Ͽ� �� ������ �ֽʽÿ�.');
                            Exit;
                     end;

              end;

              ErrNum := ErrNum;
              WriteLog(IntToStr(ErrNum), '��������',
                     '�������� ��û�� �����մϴ�.');
              ErrNum := ErrNum + 1;

              for i := 1 to nTotResultCnt do
              begin
                     if ((ResultList[i - 1].m_nLevel = 'B') or (ResultList[i -
                            1].m_nLevel = 'D')) and ((ResultList[i - 1].m_strReasonCD <>
                            '') or (ResultList[i - 1].m_strReason <> '')) then
                     begin
                            nResult := DurResultSet.AddReport(
                                   StrToInt(ResultList[i - 1].m_nIndex),
                                   ResultList[i - 1].m_strReasonCD,
                                   ResultList[i - 1].m_strReason);
                            if nResult <> 0 then
                            begin
                                   szLog := '���� �Է� ���� : ' +
                                          IntToStr(nResult);
                                   WriteLog(IntToStr(ErrNum), '��������',
                                          szLog);
                                   ErrNum := ErrNum + 1;
                                   //ShowMessage(szLog);
                            end;
                     end;
              end;

              if nTotResultCnt > 0 then
              begin
                     DurPrescription.RewindMedicine;

                     DurClient.AdminCode := configvalue.varYoyang;
                     nResult := DurClient.Report(DurPrescription, DurResultSet);

                     if nResult = 0 then
                     begin
                            szLog := '�������� �Ϸ�';
                            showmessage('�������ۿϷ�');
                            modalResult := mrOk;
                           // close;
                     end
                     else
                            szLog := '�������� ����[' + IntToStr(nResult) +
                                   '] : ' + DurClient.LastErrorMsg;

                     WriteLog(IntToStr(ErrNum), '��������', szLog);
                     ErrNum := ErrNum + 1;
                     //ShowMessage(szLog);
              end
              else
              begin
                     szLog := '������ �Է��� ������ ���˰�� �׸��� �����ϴ�.';
                     WriteLog(IntToStr(ErrNum), '��������', szLog);
                     ErrNum := ErrNum + 1;
                     //ShowMessage(szLog);
              end;
       except
              szLog := '�������� ���� : ';
              WriteLog(IntToStr(ErrNum), '��������', szLog);
              //ShowMessage(szLog);
       end;

end;
end.

