unit mapSend;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls,   jpeg, ExtDlgs , DB;

type
     TmapSend_f = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    od: TOpenDialog;
    Panel1: TPanel;
    imgMap: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    LblMemcontentSize: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    memContent: TMemo;
    edtSubject: TEdit;
    edtRcvNo: TEdit;
    edtSendNo: TEdit;
    btnSend: TButton;
    regMap: TButton;
    Button2: TButton;
    Panel2: TPanel;
    lblCount: TLabel;
    lblExt: TLabel;
    Label1: TLabel;
    btnRestMoney: TButton;
    Button1: TButton;
    cbUseURL: TCheckBox;
    pnlUrl: TPanel;
          procedure btnSendClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
    procedure btnRestMoneyClick(Sender: TObject);
    procedure regMapClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure memContentChange(Sender: TObject);
    procedure edtSendNoExit(Sender: TObject);
    procedure edtRcvNoExit(Sender: TObject);
    procedure cbUseURLClick(Sender: TObject);
     private
    { Private declarations }
          Rtel, STel,
               sCust, sCustName,
         VId,
          VPass: widestring;

          function SendMMS(RecvTelNo: string; varTelno: string; varCode: string):integer;
          function Sendresult(varReturn: integer): string;
          procedure PostData_MMSCard(varRecvNoTong, varRecvNoGuk,  varRecvNoBun: string);
          procedure MakeJpegImage;
    procedure MMsImageSave(varKind: string; varPic:string);
    procedure loadMMSImage(varKind: string; varPic:string);
    procedure MMsTextSave(varkind: string);
    procedure loadMMSText(varKind: string);
     public
    { Public declarations }
          varGogekCode:string;
       //   varVipNumber :string;

          procedure ViewRestMoney;
     end;

var
     mapSend_f: TmapSend_f;

implementation
uses uConfig, uDM, uMain,  uFunctions, uGogekData;

{$R *.dfm}
const
     SQL_INSERT_DATA = 'INSERT INTO SResultLogin                    ' + #13#10 +
          ' (SLCODE, SLCOMMENT)                          ' + #13#10 +
          ' VALUES                                              ' + #13#10 +
          ' (:SLCODE, :SLCOMMENT)                        ';

     SQL_UPDATE_DATA = 'UPDATE SResultLogin SET ' + #13#10 +
          '                    SLCOMMENT  = :SLCOMMENT' + #13#10 +
          '              WHERE SLCODE=:SLCODE';


procedure TmapSend_f.PostData_MMSCard(varRecvNoTong: string; varRecvNoGuk: string;
     varRecvNoBun: string); //MMS ī�� ���� ���� ���� �߼������� �����Ѵ�.
const
          SQL_INSERT_DATA = 'INSERT INTO ma_sms_sendlist                    ' +
          #13#10 +
          '(SBCode, SBChart,SBName,SBTel,SBMail,     ' + #13#10 +
          'SBHp,SBContent,SBRegDate,SBSendDate,      ' + #13#10 +
          'SBSendTime,SBZip,SBAdd,SBQty,SBGroup,SBCHOICE,       ' + #13#10 +
          'SBSFSMS,SBSFMAIL,SBSFFAX,SBSFDM,SBSFRECALL)' + #13#10 +
          'VALUES                                              ' + #13#10 +
          '(:SBCode, :SBChart, :SBName, :SBTel,:SBMail,     ' + #13#10 +
          ':SBHp,:SBContent, :SBRegDate, :SBSendDate,      ' + #13#10 +
          ':SBSendTime, :SBZip, :SBAdd, :SBQty, :SBGroup,:SBCHOICE,       ' + #13#10
          +
          ':SBSFSMS, :SBSFMAIL, :SBSFFAX, :SBSFDM, :SBSFRECALL)';

var
     MaxSBcode: string;
begin

     with Dm_f.SqlWork do
     begin
          close;
          sql.clear;
          sql.add('select max(SBCode) MSBcode from ma_sms_sendlist');
          open;
          MaxSBCode := FieldByName('MSBcode').AsString;
     end;

     with Dm_f.SqlWork do
     begin
          SQL.Text := SQL_INSERT_DATA;
          if MaxSBCode <> '' then
               ParamByName('SBCODE').AsString :=
                    FormatFloat('0000000000', (StrToInt(MaxSBcode)
                    + 1))
          else
               ParamByName('SBCODE').AsString := '0000000001';
          ParamByName('SBChart').AsString := main_f.edtChart.text;
          ParamByName('SBName').AsString := main_f.edtName.text;
          ParamByName('SBTel').AsString := '';
          ParamByName('SBMail').AsString := '';
          ParamByName('SBHp').AsString := varRecvNoTong + '-' + varRecvNoGuk    + '-' + varRecvNoBun;
          ParamByName('SBContent').AsString := memContent.Text;
          ParamByName('SBRegDate').AsString :=  FormatDateTime('YYYY-MM-DD', now);
          ParamByName('SBZip').AsString := '';
          ParamByName('SBAdd').AsString := '';
          ParamByName('SBQty').AsString := '';
          ParamByName('SBGroup').AsString := '1';
          ParamByName('SBSFSMS').AsString := '1';
          ParamByName('SBSFMAIL').AsString := '';
          ParamByName('SBSFFAX').AsString := '';
          ParamByName('SBSFDM').AsString := '';
          ParamByName('SBSFRECALL').AsString := '0';
          ParamByName('SBSendDate').AsString :=  ForMatDateTime('YYYY-MM-DD',  now);
          ParamByName('SBSendTime').AsString := ForMatDateTime('HH:MM',  now);
          ParamByName('SBCHOICE').AsString := '6';   //MMS���ڵ� ī��
          //1:SMS 2:MAIL 3:DM 4:TEL 5:ALL 6:MMS���ڵ� ī��
          ExecSQL;

     end;
end;


function TmapSend_f.SendMMS(RecvTelNo: string; varTelno: string; varCode: string):integer;
const

     SQL_INSERT_DATA2 = 'INSERT INTO ma_sms_sendResult                    ' + #13#10 +
          ' (SRCode, SRDate, SRTime, SRResult,SRResult2)                          ' + #13#10
          +
          ' VALUES                                              ' + #13#10 +
          ' (:SRCode, :SRDate, :SRTime, :SRResult,:SRResult2)                        ';


var
     VName,
          VMem,
              VYDay,
          VYTime,
          VTel, MaxSBCode, recvTel, varsubject, varFilepath
          : WideString;
     nRet, nRem, nUnCost, nRet2: integer;
    sReqTel1, sReqtel2, sReqtel3: WideString;
    varRecvNoTong, varRecvNoGuk, varRecvNoBun:string;
    varTong, varGuk, varBun:string;
begin
     VName := '';
     VMem := '';
     VTel := deldash(varTelno);


     varSubject := edtSubject.text;
     recvtel := deldash(RecvTelNo);

     varRecvNoTong:=substr(RecvTelNo,1,'-');
     varRecvNoGuk:=substr(RecvTelNo,2,'-');
     varRecvNoBun:=substr(RecvTelNo,3,'-');


     varTong:=substr(varTelno,1,'-');
     varGuk :=substr(varTelno,2,'-');
     varBun :=substr(varTelno,3,'-');


     varFilePath := ExtractFilePath(paramStr(0)) + 'tempimage\' + 'map1.jpg';



     VMem := MemContent.text;
     VMem:= stringReplace(Vmem, '+ddd+', main_f.edtName.text,[rfReplaceAll]);
     VMem:= stringReplace(Vmem, '+aaa+', configvalue.varsaupname,[rfReplaceAll]);

     MemContent.text := VMem;

     nRet2 :=
          main_f.smscallmsg1.SMSLogin(VId, VPass, sCust, sCustName, sReqTel1, sReqtel2,
          sReqtel3, nRem, nUnCost);


     if cbUseURL.Checked  then
     begin




          nRet := main_f.smscallmsg1.SMSSendUnit(1, VId, sCustname, sCust,
               sCustName,
               varRecvNoTong, varRecvNoGuk, varRecvNoBun,
               VName,
               VarTong, VarGuk, VarBun,
               Trim(VMem), '00000000', '000000', nRem, nUnCost);

     end
     else
     begin
          nRet := main_f.smscallmsg1.MMSSend('1', VId, sCust, recvtel, vTel, Trim(varSubject),
                                   Trim(VMem), '', varFilePath, '', '');
     end;

     PostData_MMSCard(varRecvNoTong, varRecvNoGuk, varRecvNoBun);


     with Dm_f.SqlWork do
     begin
          close;
          sql.clear;
          sql.add('select max(SBCode) MSBcode from ma_sms_SendList');
          open;
          MaxSBCode := FieldByName('MSBcode').AsString;
     end;

     with Dm_f.sqlTemp do
     begin
          SQL.Text := SQL_INSERT_DATA2;
          if MaxSBCode <> '' then
               ParamByName('SRCODE').AsString :=
                    FormatFloat('0000000000', (StrToInt(MaxSBcode)  ))
          else
               ParamByName('SRCODE').AsString := '0000000001';
          ParamByName('SRDate').AsString := FormatDateTime('YYYY-MM-DD', now);
          ParamByName('SRTime').AsString := FormatDateTime('HH:MM', now);
          ParamByName('SRResult').AsString := IntTostr(nRet2); //Login
          ParamByName('SRResult2').AsString := IntTostr(nRet); //Send
          ExecSQL;
     end;

     if nRet = 1 then
          Showmessage('�����൵ �޽����� �����Ͽ����ϴ�.')

     else
          Showmessage('�����൵ �޽������ۿ� �����Ͽ����ϴ�.' + '[' + Sendresult(nRet) + ']');

     result:= nRet;

end;


procedure TmapSend_f.btnSendClick(Sender: TObject);
var
   varsendResult:integer;
begin
     //showmessage(rtel+':'+stel+':'+varGogekCode);


     if  edtSendno.text='' then
     begin
        showmessage('�� ��ȭ��ȣ�� �����ϴ�.');
        edtSendno.setfocus;
        exit;
     end;


     //�̹����� �ҷ�����.
     MakeJpegImage;

     if Application.MessageBox(PChar( '�൵�� ���� �Ͻðڽ��ϱ�?'), '�൵ ���� Ȯ��', MB_YESNO) =
          IDYES then
     begin

        varsendResult := SendMMS(edtSendno.text, edtRcvno.text, varGogekCode);

       // SaveVipNumber(main_f.edtchart.text, varGogekCode, varvipNumber);

        ViewRestMoney;
     end;
     if varsendResult = 1 then
     close;
end;

procedure TmapSend_f.FormShow(Sender: TObject);
var
     Vmem:string;
     varLogo1, varLogo2, varMmsMessage : string;
     varTopCaption, varBottomCaption:string;
     CurrentDir: string;

begin


     caption := '���� �൵ ����';

     CurrentDir:= ExtractFilePath(paramStr(0));

     sCust := dm_f.smsCustCode; //  'OV-JJG-9R';
    // sCust := 'WW-NYA-BN';
    // sCustname := HpName;
     //���������ε�
     ////////////////////////////////////////////////////////////////////////////////


     stel := configvalue.varTel1;
     sCustname := configvalue.varsaupname;
     VPass := configvalue.varSmspass;
     VId := configvalue.varSmsId;

     varMmsMessage:=   CurrentDir + 'smsImages\' + 'map.txt' ;

     if fileexists(varMmsMessage ) then
     begin
        memContent.Lines.LoadFromFile(varMmsMessage);
     end;




     VMem := MemContent.text;
     VMem:= stringReplace(Vmem, '+ddd+', main_f.edtName.text,[rfReplaceAll]);
     VMem:= stringReplace(Vmem, '+aaa+', configvalue.varsaupname,[rfReplaceAll]);

     MemContent.text := VMem;


     if configvalue.varBarCardTopCaption = '' then
           varTopCaption:=  '   '+configvalue.varsaupname
     else
            varTopCaption:=    configvalue.varBarCardTopCaption;


     if configvalue.varBarCardBottomCaption = '' then
           varBottomCaption:=  '                ��'+configvalue.varTel1
     else
            varBottomCaption:=   configvalue.varBarCardBottomCaption ;

      loadMMSImage('3', CurrentDir+ 'tempimage\'+'map');
      loadMMSText('5');
      ViewRestMoney;
end;

procedure TmapSend_f.loadMMSImage(varKind:string; varPic:string);
var
     BinSize: integer;
     nFileStream: Tfilestream;
     BinData: array of byte;
     S: string;
     i: integer;

     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;
     varext : string;
begin
     try


        with dm_f.sqlWork do
        begin
             Close;
             sql.Clear;
             sql.Add(' Select * from ma_sms_picture ');
             sql.Add(' Where kind = :kind');
             ParamByName('kind').value := varKind;
             Open;
             if not isEmpty then
             begin

               if  FieldByName('pic').asString <> '' then
               begin
                 try

                       varext :=  FieldByName('ext').asString;
                       lblExt.caption  :=  varExt;

                       BStream := CreateBlobStream(FieldByName('pic'), bmRead);
                       MemSize := BStream.Size;
                       SetLength(Buffer, MemSize);
                       Inc(MemSize);
                       BStream.Read(Pointer(Buffer)^, MemSize);
                       for i := 0 to Memsize - 1 do
                       begin
                            A := A + Char(Buffer[i]);
                       end;

                       try
                            aString := TStringList.Create;
                            aString.Add(A);
                            aString.SaveToFile(varPic + varExt);
                       finally
                            aString.Free;
                       end;
                  finally
                       BStream.Free;

                  end;
               end;

               imgMap.Picture.LoadFromFile(varPic + varExt);

             end;
        end;
   except
        on E: Exception do
             ExceptLogging('LoadSmsImages:' + E.Message);
   end;

end;


procedure TmapSend_f.loadMMSText(varKind:string);
var
     BinSize: integer;
     nFileStream: Tfilestream;
     BinData: array of byte;
     S: string;
     i: integer;

     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;
     varext : string;
begin
     try


        with dm_f.sqlWork do
        begin
             Close;
             sql.Clear;
             sql.Add(' Select * from ma_sms_picture ');
             sql.Add(' Where kind = :kind');
             ParamByName('kind').value := varKind;
             Open;
             if not isEmpty then
             begin

               if  FieldByName('memContent').asString <> '' then
               begin
                     memContent.text := FieldByName('memContent').asString;

               end
               else
               begin
                   memContent.text := '';
               end;


             end;
        end;
   except
        on E: Exception do
             ExceptLogging('LoadSmsText:' + E.Message);
   end;

end;



function TmapSend_f.Sendresult(varReturn: integer): string;
begin
     case varReturn of
          1:
               result := '(O)ȣ���û����';
          70:
               result := '(F)�Ǽ�����';
          73:
               result := '(I)�̵�� ID ';
          69:
               result := '(E)�˼����� �ý��ۿ���';
          67:
               result := '(C)�ܾ׿���';
          84:
               result := '(T)�̵�� ������ type ';
          80:
               result := '(P)��ȭ��ȣ �̻� ';
          85:
               result := '(U)������ ��������  ';
          79:
               result := '(O)���Ͽ������';
          78:
               result := '(N)���ϰ�ο���';
          -2:
               result := '��Ʈ�����ۿ���';
          -3:
               result := '��Ʈ�����ſ���';
          -1:
               result := '��Ʈ�����ӿ���';
     end;
end;


procedure TmapSend_f.ViewRestMoney;
var
     VName,
          VMem,
          
          VYDay,
          VYTime,
          VTel, MaxSBCode, recvTel, varsubject, varFilepath
          : WideString;
     nRet, nRem, nUnCost, nRet2, nTotalPrice, nPerPrice, nPermitCount, nLeftCount: integer;
     sReqTel1, sReqtel2, sReqtel3, sYn: WideString;
begin
    // sCust := 'OV-JJG-9R';
//     sCust := 'OV-JJG-9R';
    // VPass := 'eogksalsrn';
    // VId := 'gildata';
{     sCust := 'WW-NYA-BN';
     sCustname := 'infomedi';
     VPass := 'aksakstpek';
     VId := 'infomedi';
}



     nRet := main_f.smscallmsg1.CashCheck(
          Vid,
          VPass,
          sCust,
          '1',
          nTotalPrice,
          nPerPrice,
          sYn,
          nPermitCount,
          nLeftCount);

     LblCount.Caption :=
          '�ѱݾ�' + FormatFloat('###,###,###,##0', nTotalPrice); // + #10#13 +
         // '�Ǵ�ݾ�' + FormatFloat('###,###,###,##0', nPerPrice) + #10#13 +
         // '������Ǽ�' + FormatFloat('###,###,###,##0', nPermitCount) + #10#13 +
         // '��밡�ɰǼ�' + FormatFloat('###,###,###,##0', nLeftCount) + #10#13 +
         // '��밡�ɰǼ�' + FormatFloat('###,###,###,##0', nTotalPrice / nPerPrice);
  //   if (nTotalPrice <> 0) and (nPerPrice <> 0) then
  //        LblRest.Caption := FormatFloat('###,###,###,##0',
  //             nTotalPrice / nPerPrice)
  //   else
  //        LblRest.Caption := '0'

end;





procedure TmapSend_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TmapSend_f.FormDestroy(Sender: TObject);
begin
     mapSend_f := nil;
end;

procedure TmapSend_f.btnRestMoneyClick(Sender: TObject);
begin
     ViewRestMoney;
end;

procedure TmapSend_f.MakeJpegImage;
var

      jpgFile : TJpegImage;

begin
     if lowerCase(lblExt.caption) = '.bmp' then
     begin

         jpgFile := TJpegImage.Create;
         jpgFile.Assign( imgMap.Picture.Bitmap);
         jpgFile.SaveToFile(ExtractFilePath(paramStr(0)) + 'tempImage\' + 'map1.jpg');
         jpgFile.Free;
     end
     else
     begin
        imgMap.Picture.SaveToFile(ExtractFilePath(paramStr(0)) + 'tempImage\' + 'map1.jpg');
     end;

end;

procedure TmapSend_f.MMsImageSave(varkind: string; varPic:string);
var
     varDir: string;
     varname: string;
     CurrentDir:string;
     varExt : string;
begin
     CurrentDir:= ExtractFilePath(paramStr(0));
     try
          with dm_f.sqlWork do
          begin
               Close;
               sql.Clear;
               sql.Add(' Select * from ma_sms_picture ');
               sql.Add(' Where kind = :kind');
               ParamByName('kind').value := varKind;
               Open;
               last;
               if not IsEmpty then
               begin
                    if Application.MessageBox(pchar( '���� �Էµ� �����͸�' + #13#13 +
                         '�����Ͻðڽ��ϱ�?.'), '�˸�', MB_YESNO) =
                         IDYES then
                    begin

                         try
                                varExt:= extractFileExt(varPic);
                                lblExt.caption  :=  varExt;

                              with dm_f.sqlTemp do
                              begin

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Update ma_sms_picture Set ');
                                   sql.Add(' pic = :pic, regdate=:regdate, ext = :ext ');
                                   sql.Add(' Where  kind = :kind');
                                   ParamByName('kind').asString :=  varKind;
                                   ParamByName('ext').asString :=  varExt  ;
                                   ParamByName('regDate').asString := formatdateTime('YYYY-MM-DD', now);
                                   ParamByName('pic').LoadFromFile(varPic, ftblob);
                                   ExecSQL;

                                   Application.MessageBox(Pchar('�Է��Ͻ� ������ ���� �Ǿ����ϴ�.'), '�˸�', mb_ok + mb_IconInformation);

                              end;
                         except
                              on E: Exception do
                                   ExceptLogging('saveSMSPicture:'    + E.Message);
                         end;

                    end;
               end
               else
               begin

                    try

                      varExt:= extractFileExt(varPic);
                                lblExt.caption  :=  varExt;

                         with dm_f.sqlWork do
                         begin

                              Close;
                              sql.Clear;
                              sql.Add(' Insert Into ma_sms_picture');
                              sql.Add(' (kind, pic, ext, regDate) ');
                              sql.Add(' VALUES( :kind, :pic, :ext, :regDate) ');
                              ParamByName('kind').value :=   varkind;
                              ParamByName('ext').asString := varExt  ;
                              ParamByName('regDate').asString := formatdateTime('YYYY-MM-DD', now);
                              ParamByName('pic').LoadFromFile(varPic, ftblob);
                              ExecSQL;

                              Application.MessageBox(Pchar('�Է��Ͻ� ������ ���� �Ǿ����ϴ�.'), '�˸�', mb_ok + mb_IconInformation);

                         end;
                    except
                         on E: Exception do
                              ExceptLogging( 'saveSMSPicture:' +
                                   E.Message);
                    end;

               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('savePictureClick:' + E.Message);

          end;
     end;
end;

procedure TmapSend_f.MMsTextSave(varkind: string);
var
     varDir: string;
     varname: string;
     CurrentDir:string;
begin
     CurrentDir:= ExtractFilePath(paramStr(0));
     try
          with dm_f.sqlWork do
          begin
               Close;
               sql.Clear;
               sql.Add(' Select * from ma_sms_picture ');
               sql.Add(' Where kind = :kind');
               ParamByName('kind').value := varKind;
               Open;
               last;
               if not IsEmpty then
               begin
                    if Application.MessageBox(pchar( '���� �Էµ� �����͸�' + #13#13 +
                         '�����Ͻðڽ��ϱ�?.'), '�˸�', MB_YESNO) =
                         IDYES then
                    begin

                         try
                              with dm_f.sqlTemp do
                              begin

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Update ma_sms_picture Set ');
                                   sql.Add(' memContent = :memContent, regdate=:regdate ');
                                   sql.Add(' Where  kind = :kind');
                                   ParamByName('kind').asString :=  varKind;
                                   ParamByName('regDate').asString := formatdateTime('YYYY-MM-DD', now);
                                   ParamByName('memContent').AsMemo := memContent.text;
                                   ExecSQL;

                                   Application.MessageBox(Pchar('�Է��Ͻ� ������ ���� �Ǿ����ϴ�.'), '�˸�', mb_ok + mb_IconInformation);

                              end;
                         except
                              on E: Exception do
                                   ExceptLogging('saveSMSMemo:'    + E.Message);
                         end;

                    end;
               end
               else
               begin

                    try
                         with dm_f.sqlWork do
                         begin

                              Close;
                              sql.Clear;
                              sql.Add(' Insert Into ma_sms_picture');
                              sql.Add(' (kind, memContent,   regDate) ');
                              sql.Add(' VALUES( :kind, :memContent,   :regDate) ');
                              ParamByName('kind').value :=   varkind;
                              ParamByName('regDate').asString := formatdateTime('YYYY-MM-DD', now);
                              ParamByName('memContent').AsMemo := memContent.text;
                              ExecSQL;

                              Application.MessageBox(Pchar('�Է��Ͻ� ������ ���� �Ǿ����ϴ�.'), '�˸�', mb_ok + mb_IconInformation);

                         end;
                    except
                         on E: Exception do
                              ExceptLogging( 'saveSMSMemo:' +
                                   E.Message);
                    end;

               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('saveMemoClick:' + E.Message);

          end;
     end;
end;


procedure TmapSend_f.regMapClick(Sender: TObject);
begin
      if od.Execute then
      begin
         imgMap.Picture.LoadFromFile(od.FileName);

         MMsImageSave('3', od.FileName);  // DB����//1:logo��� 2: logo�ϴ� 3:�൵1

      end;

end;

procedure TmapSend_f.Button1Click(Sender: TObject);
begin
    MakeJpegImage;
end;

procedure TmapSend_f.Button2Click(Sender: TObject);
begin
    MMsTextSave('5');
end;

procedure TmapSend_f.cbUseURLClick(Sender: TObject);
begin

    pnlUrl.Visible := cbUseURL.checked;

end;

procedure TmapSend_f.edtRcvNoExit(Sender: TObject);
begin
   edtRcvNo.text := call_tel_type(edtRcvNo.text);
end;

procedure TmapSend_f.edtSendNoExit(Sender: TObject);
begin
   edtSendNo.text := call_tel_type(edtSendNo.text);
end;

procedure TmapSend_f.memContentChange(Sender: TObject);
begin

     LblMemcontentSize.Caption := IntToStr(Length(MemContent.Text));

end;

end.

