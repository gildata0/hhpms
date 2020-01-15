unit SmsResult;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ComCtrls,
     Menus, ExtCtrls, AdvPanel, Grids, BaseGrid, AdvGrid, AdvObj, AdvUtil;

type
     TSmsResult_f = class(TForm)
          PopupMenu1: TPopupMenu;
          N1: TMenuItem;
          pnlName: TAdvPanel;
          edtName: TEdit;
          AdvPanel2: TAdvPanel;
          Label1: TLabel;
          Button1: TButton;
          DtFirst: TDateTimePicker;
          DtLast: TDateTimePicker;
          Button2: TButton;
          Button3: TButton;
          Button4: TButton;
          cbYeyak: TCheckBox;
          Button5: TButton;
          grdResult: TAdvStringGrid;
    CheckBox1: TCheckBox;
          procedure Button1Click(Sender: TObject);
          procedure SmsSelectData;
          procedure SmsSelectYeyakData;
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure Button3Click(Sender: TObject);
          procedure Button4Click(Sender: TObject);
          procedure Button5Click(Sender: TObject);
          procedure N1Click(Sender: TObject);
          procedure grdResultGetCellColor(Sender: TObject; ARow, ACol: Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure FormResize(Sender: TObject);

     private
          { Private declarations }
          nRet: INTEGER;
          sCust, sRet: WideString;
          procedure SmsSendMsgLode;
          procedure LogWrite(varID: string; varName: string; varNumber: string;
               varContent: string);
     public
          { Public declarations }
          procedure SmsSelectYeyakDataName(varCode: string);
     end;

var
     SmsResult_f: TSmsResult_f;

implementation

uses uConfig, uDM, uFunctions, uMain, prtsmslist;

{$R *.dfm}

procedure TSmsResult_f.SmsSelectData;
var
     i, recCount: integer;
begin

     with DM_f.SqlWork, grdResult do
     begin
          // Clear;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_sms_sendresult a left join  ma_sms_sendlist b on a.sRcode=b.SbCode');
          if cbyeyak.Checked = false then
               Sql.Add('Where (SrDate >= :SrDate1 and SrDate <= :SrDate2)')
          else
               Sql.Add('Where (SBSendDate >= :SrDate1 and SBSendDate <= :SrDate2)');
          ParamByname('SrDate1').AsString := FormatDateTime('YYYY-MM-DD',
               DtFirst.Date);
          ParamByname('SrDate2').AsString := FormatDateTime('YYYY-MM-DD',
               DtLast.Date);
          Open;
          if not DM_f.SqlWork.IsEmpty then
          begin
               recCount := recordCount;
               RowCount := recCount + 1;
               FixedRows := 1;

               while not EOF do
               begin
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);

                         Cells[2, i] := FieldByName('SBChart').AsString;
                         Cells[3, i] := FieldByName('SBName').AsString;
                         Cells[4, i] := FieldByName('SBHp').AsString;
                         Cells[5, i] := FieldByName('SrCode').AsString;
                         Cells[6, i] := FieldByName('SbSendDate').AsString;
                         Cells[7, i] := FieldByName('SbSendTime').AsString;
                         Cells[8, i] :=
                          Dm_f.SqlWork.FieldByName('SrResult').AsString+':'+    smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult').Asinteger);
                         Cells[9, i] :=
                            Dm_f.SqlWork.FieldByName('SrResult2').AsString+':'+      smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult2').Asinteger);
                         Cells[10, i] := FieldByName('SrDate').AsString;
                         Cells[11, i] := FieldByName('SrTime').AsString;
                         Cells[12, i] := FieldByName('SbContent').AsString;
                         Cells[13, i] := FieldByName('SbsfRecall').AsString;
                         //���������ߴ���(1) ����ߴ���(3)������ ������
                         next;
                    end;
                    autoNumberCol(0);
                    AutoSizeRows(false);
                    //autosizecolumns(true, 20);

               end;
          end;
     end;

end;

procedure TSmsResult_f.SmsSelectYeyakData;
const
     selectYeyakdata =
          'Select * from ma_sms_sendresult a left join  ma_sms_sendlist b on a.sRcode=b.SbCode';
     selectYeyakWhere1 = ' Where (SBSendDate >= :SrDate1 and SBSendDate<= :SrDate2)';
     selectYeyakWhere2 =
          ' Where (SBSendDate >= :SrDate1 and SBSendDate <= :SrDate2)  and (SbSfRecall=:SbSfRecall1 or SbSfRecall=:SbSfRecall2)';
var
     i, recCount: integer;
begin
     with DM_f.SqlWork, grdResult do
     begin
          Close;
          Sql.Clear;
          Sql.text := selectYeyakdata;
          if cbyeyak.Checked = false then
               Sql.text := Sql.text + selectYeyakWhere1

          else
          begin
               Sql.text := Sql.text + selectYeyakWhere2;
               ParamByname('SbSfRecall1').AsString := '1'; //���������Ѱ�
               ParamByname('SbSfRecall2').AsString := '3'; //����������ҵȰ�
          end;

          ParamByname('SrDate1').AsString := FormatDateTime('YYYY-MM-DD',
               DtFirst.Date);
          ParamByname('SrDate2').AsString := FormatDateTime('YYYY-MM-DD',
               DtLast.Date);
          Open;
          if not DM_f.SqlWork.IsEmpty then
          begin
               recCount := recordCount;
               RowCount := recCount + 1;
               FixedRows := 1;

               while not EOF do
               begin
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);
                         Cells[2, i] :=
                              FieldByName('SBChart').AsString;
                         Cells[3, i] :=
                              FieldByName('SBName').AsString;
                         Cells[4, i] :=
                              FieldByName('SBHp').AsString;
                         Cells[5, i] :=
                              FieldByName('SrCode').AsString;
                         Cells[6, i] :=
                              FieldByName('SbSendDate').AsString;
                         Cells[7, i] :=
                              FieldByName('SbSendTime').AsString;
                         Cells[8, i] :=
                           Dm_f.SqlWork.FieldByName('SrResult').AsString+':'+       smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult').Asinteger);
                         Cells[9, i] :=
                           Dm_f.SqlWork.FieldByName('SrResult2').AsString+':'+      smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult2').Asinteger);

                         Cells[10, i] :=
                              FieldByName('SrDate').AsString;
                         Cells[11, i] :=
                              FieldByName('SrTime').AsString;
                         Cells[12, i] :=
                              FieldByName('SbContent').AsString;
                         Cells[13, i] :=
                              FieldByName('SbsfRecall').AsString;
                         //���������ߴ���(1) ����ߴ���(3)������ ������

                         next;
                    end;
                    autoNumberCol(0);
               end;
          end;
     end;

end;

procedure TSmsResult_f.SmsSelectYeyakDataName(varCode: string);
var
     i, recCount: integer;
begin
     with DM_f.SqlWork, grdResult do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_sms_sendresult a left join  ma_sms_sendlist b on a.sRcode=b.SbCode');
          //Sql.Add('Where (SBSendDate >= :SrDate1 and SBSendDate <= :SrDate2) and sbChart=:sbChart');
          Sql.Add('Where  sbChart=:sbChart');
          //ParamByname('SrDate1').AsString := FormatDateTime('YYYY-MM-DD', DtFirst.Date);
          //ParamByname('SrDate2').AsString := FormatDateTime('YYYY-MM-DD', DtLast.Date);
          ParamByname('sbChart').AsString := varCode;
          //  ParamByname('SbSfRecall').AsString := '1'; //
          Open;
          if not DM_f.SqlWork.IsEmpty then
          begin
               recCount := recordCount;
               RowCount := recCount + 1;
               FixedRows := 1;

               while not EOF do
               begin
                    for i := 1 to Reccount do
                    begin
                         AddCheckBox(1, i, false, false);

                         Cells[2, RowCount - 1] :=
                              FieldByName('SBChart').AsString;
                         Cells[3, RowCount - 1] :=
                              FieldByName('SBName').AsString;
                         Cells[4, RowCount - 1] :=
                              FieldByName('SBHp').AsString;
                         Cells[5, RowCount - 1] :=
                              FieldByName('SrCode').AsString;
                         Cells[6, RowCount - 1] :=
                              FieldByName('SbSendDate').AsString;
                         Cells[7, RowCount - 1] :=
                              FieldByName('SbSendTime').AsString;
                         Cells[8, RowCount - 1] :=
                              smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult').AsInteger);

                         Cells[9, RowCount - 1] :=
                              smsErrorCheck(Dm_f.SqlWork.FieldByName('SrResult2').Asinteger);

                         Cells[10, RowCount - 1] :=
                              FieldByName('SrDate').AsString;
                         Cells[11, RowCount - 1] :=
                              FieldByName('SrTime').AsString;
                         Cells[12, RowCount - 1] :=
                              FieldByName('SbContent').AsString;
                         Cells[13, RowCount - 1] :=
                              FieldByName('SbsfRecall').AsString;
                         //���������ߴ���(1) ����ߴ���(3)������ ������

                         next;
                    end;
                     autoNumberCol(0);
               end;
          end;

     end;
end;

procedure TSmsResult_f.Button1Click(Sender: TObject);
begin
     SmsSelectdata;
end;

procedure TSmsResult_f.FormDestroy(Sender: TObject);
begin
     SmsResult_f := nil;
end;

procedure TSmsResult_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     Action := Cafree;
end;

procedure TSmsResult_f.FormShow(Sender: TObject);
begin
     sCust := dm_f.smsCustCode;//'OV-JJG-9R';

     grdResult.Align := alClient;
     DtFirst.Date := now;
     DtLast.Date := now;
     grdResult.ColWidths[2] := 0;
     grdResult.ColWidths[5] := 0;
     grdResult.ColWidths[8] := 0;
     grdResult.ColWidths[13] := 0;
     //SmsSendMsgLode;
    // case smsTag of
    //      2: SmsSelectdata;
    //      3: SmsSelectYeyakdata;
    // end;
end;

procedure TSmsResult_f.SmsSendMsgLode;
begin
     with dm_f.sqlWork do
     begin
          //ma_sms_sendlist
          Close;
          sql.Clear;
          sql.Add('  ')

     end;

end;

procedure TSmsResult_f.Button2Click(Sender: TObject);
begin
     Close;
end;

procedure TSmsResult_f.Button3Click(Sender: TObject);
begin

     SmsSelectYeyakdata;

end;

procedure TSmsResult_f.LogWrite(varID: string; varName: string; varNumber:
     string; varContent: string);
var
     stFileText: TStringList;
     sFilePath: string;
     sFileName: string;
     varSendTime: string;
begin

     sFilePath := ExtractFilePath(paramStr(0)) + 'SmsLog';
     sFileName := sFilePath + '\SMS' + formatDateTime('YYYYMMDD', now) + '.Log';
     stFileText := TStringList.Create;
     varSendTime := formatDateTime('YYYYMMDDHHMMSS', now);

     if not DirectoryExists(sFilePath) then
     begin
          if not CreateDir(sFilePath) then
               raise Exception.Create('Cannot create' + sFilePath);

     end;

     if FileExists(sFileName) then
     begin
          stFileText.LoadFromFile(sFileName);
          stFileText.Insert(0, '[Cancel]' + varSendTime + '>>' + varID + '(' +
               varName + ')' + varNumber + ':' + varContent);
          stFileText.SaveToFile(sFileName);
     end
     else
     begin
          stFileText.Insert(0, '[Cancel]' + varSendTime + '>>' + varID + '(' +
               varName + ')' + varNumber + ':' + varContent);
          stFileText.SaveToFile(sFileName);
     end;
end;

procedure TSmsResult_f.Button4Click(Sender: TObject);
var
     Vtong,
          VGuk,
          VBun,
          VId,
          VYDay,
          VTel,
          VbstrType: WideString;
     vDwMember, i: Integer;
     stat:boolean;
begin

     if grdResult.RowCount > 0 then
     begin
          Vtong := '';
          VGuk := '';
          VBun := '';
          VId := '';
          VTel := '';
          VId :=  configvalue.varsmsId;

          for i := 1 to grdResult.RowCount - 1 do
          begin
               try
                    grdResult.GetCheckBoxState(1, i, stat);

                    if STAT = true then
                    begin

                         VTel := grdResult.Cells[4, i];
                         Vtong := SubStr(vTel, 1, '-');
                         VGuk := SubStr(vTel, 2, '-');
                         VBun := SubStr(vTel, 3, '-');
                         VYDay := deldash(grdResult.Cells[6, i]);
                         VbstrType := '1';
                         vDwMember := 1;

                         // Cancel
                         sRet := main_f.SMSCALLMSG1.UserReservedCancel(VYDay,
                              VId,
                              sCust, VTong, VGuk, VBun, VDwMember, VbstrType);
                         nRet := StrToInt(SubStr(sRet, 1, ','));

                         if nRet = 1 then
                         begin
                              with Dm_f.SqlWork do
                              begin
                                   SQL.Text := 'Update ma_sms_sendlist Set' +
                                        #10#13
                                        +
                                        'SBSFRECALL=:SBSFRECALL' + #10#13 +
                                        'Where SbSendDate=:SbSendDate and SbHp=:SbHp';
                                   ParamByName('SbHp').AsString :=
                                        grdResult.Cells[4, i];
                                   ParamByName('SbSendDate').AsString :=
                                        grdResult.Cells[6, i];
                                   ParamByName('SBSFRECALL').AsString := '3';
                                   //����Ѱ� 3�� ����.
                                   execsql;
                              end;
                              LogWrite(grdResult.Cells[2, i],
                                   grdResult.Cells[3, i],
                                   grdResult.Cells[4,
                                   i], grdResult.Cells[11,
                                        i]);


                              showmessage('�����Ͻ� ' + grdResult.Cells[6, i] +
                                   '������' + #10#13 +
                                   '<' + grdResult.Cells[3, i] + '>' +
                                   '���� ���������� ����Ͽ����ϴ�.');
                              //sms_f.ViewRestmoney;


                         end
                         else
                         begin
                              //  showmessage('�����Ͻ� �������� ��ҿ� �����Ͽ����ϴ�.');
                              LogWrite('�������ۻ�������>>' + grdResult.Cells[1,
                                   i], grdResult.Cells[3, i],
                                        grdResult.Cells[3, i],
                                   grdResult.Cells[11, i]);
                                   showmessage('�����Ͻ� ' + grdResult.Cells[6,i]  +
                                   '������' + #10#13 +
                                   '<' + grdResult.Cells[3, i] + '>' +
                                   '���� �������� ��ҿ� �����Ͽ����ϴ�.');


                         end;
                    end;
               except
                    on E: Exception do
                    begin

                         LogWrite('�������ۻ�������>>' + grdResult.Cells[1,
                              i], grdResult.Cells[3, i],
                                   grdResult.Cells[3, i],
                              grdResult.Cells[11,
                              i] + ':' + E.Message);
                                                                 showmessage('�����Ͻ� ' + grdResult.Cells[6, i]+
                                   '������' + #10#13 +
                                   '<' + grdResult.Cells[3, i] + '>' +
                                   '���� �������� ��ҿ� �����Ͽ����ϴ�.' + E.Message);

                    end;
               end;
          end;
          SmsSelectYeyakdata;

     end
     else
     begin
          showmessage('�����Ͻ� �������۳����� �����ϴ�.');
     end;
end;

{     if ARow mod 2 = 1 then
          BCol := $00EFEFEF;
     if GrdResult.Cells[12, ARow].AsString = '3' then
     begin
          BCol := ClBlue;
          FCol := ClWhite;
     end;
 }

procedure TSmsResult_f.Button5Click(Sender: TObject);
var
     prtSmsList_f: TprtSmsList_f;
begin
     prtSmsList_f := TprtSmsList_f.CreateFrm(Self, grdResult);
     try
          with prtSmsList_f, QuickRep1 do
          begin
               PreviewModal;
          end;
     finally
          prtSmsList_f.Free;
     end;

end;

procedure TSmsResult_f.N1Click(Sender: TObject);
var
     varDay: string;
     state : boolean;
     i, j: integer;
     code : string;
begin


          if inputbox('��ȣ�� �Է��ϼ���', '������', '***') <>  formatdatetime('dd', now) then
           begin
               showmessage('�����ڿ��� �����Ͻʽÿ�.');
               exit;
          end;

          if Application.MessageBox(PChar('�����Ͻ� SMS���۳����� [����]�Ͻðڽ��ϱ�?'
          +
          #10#13 + '�����Ͻ� ������ �������� �ʽ��ϴ�.'),
          'SMS���۳��� ����', MB_YESNO) = IDYES then
          begin

             for i:= 1 to  grdresult.RowCount -1 do
             begin

                  grdresult.GetCheckBoxState(1, i, state);
                  if state = true then
                  begin
                      //  j:=  grdsms.RealRowIndex(i);
                        code:=  grdResult.cells[5, i ];


                        try
                             with Dm_f.SqlWork do
                             begin
                                  SQL.Text := 'delete from ma_sms_sendlist' + #10#13 +
                                       'Where SBCode=:SBCode';
                                  ParamByname('SBCode').AsString := code;
                                  execsql;

                                  close;
                                  sql.clear;

                                  SQL.Text := 'delete from ma_sms_sendresult' + #10#13 +
                                       'Where SrCode=:SrCode';
                                  ParamByname('SrCode').AsString := code;
                                  execsql;

                                   

                             end;

                        except
                             on E: Exception do
                             begin

                                  LogWrite('���۳�����������>>' + grdResult.Cells[1,
                                       grdResult.row], grdResult.Cells[3,
                                            grdResult.row], grdResult.Cells[3,
                                            grdResult.row], grdResult.Cells[11,
                                            grdResult.row] + ':' + E.Message);
                             end;
                        end;

                  end;
             end;
              SmsSelectdata;         
     end;
end;

procedure TSmsResult_f.grdResultGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if grdResult.Cells[13, arow] = '3' then
          aBrush.Color := clBlue;
end;

procedure TSmsResult_f.FormResize(Sender: TObject);
var
     i, j: integer;
begin
     for i := 0 to 11 do
          j := grdResult.ColWidths[i];
     grdResult.ColWidths[12] := SmsResult_f.Width - j;

end;

end.

