unit uReferHospReqComplete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Uni,
  Vcl.ComCtrls, AdvEdit, EllipsLabel, AdvCombo, ColCombo,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,  HTTPAPP,
  IDURI,  IdMultiPartFormData ;

type
  TReferHospReqComplete_f = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    Label15: TLabel;
    lstDangName1: TListBox;
    Memo1: TMemo;
    Button1: TButton;
    Label18: TLabel;
    rgDesease: TRadioGroup;
    Panel4: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EdtDocName: TComboBox;
    lstDoctor: TListBox;
    RelDate: TDateTimePicker;
    Label24: TLabel;
    edtName: TAdvEdit;
    EdtBd: TAdvEdit;
    EdtPadd: TAdvEdit;
    EdtSeqNo: TAdvEdit;
    EdtJuminNo: TAdvEdit;
    EdtAge: TAdvEdit;
    edtChart: TAdvEdit;
    edtTelNo: TAdvEdit;
    EdtHName: TAdvEdit;
    EdtAdd: TAdvEdit;
    EdtLNo: TAdvEdit;
    edthphone: TAdvEdit;
    Label10: TLabel;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    edtGender: TAdvEdit;
    Label12: TLabel;
    Label13: TLabel;
    Image1: TImage;
    Button2: TButton;
    IdHTTP1: TIdHTTP;
    OpenDialog1: TOpenDialog;
    Memo2: TMemo;
    EllipsLabel1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure edtTelNoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

    { Private declarations }

    ReferImageTokenID : string;

//      function saveRequestComplete(
//           requestPK        : integer;// int,>
//           chartNo          : string;//, nvarchar(50),>
//           yearNo           : string;// nvarchar(50),>
//           residentNo       : string;//, varchar(14),>
//           patientName      : string;//, nvarchar(50),>
//           patientAddr      : string;//, nvarchar(150),>
//           patientPhone     : string;//, varchar(13),>
//           disease          : integer;//, tinyint,>
//           diseaseComment1  : string;// ntext,>
//           diseaseComment2  : string;// , ntext,>
//           comment          : string;// , ntext,>
//           doctorName       : string;// , nvarchar(50),>
//           hospitalName     : string;// , nvarchar(50),>
//           hospitalAddr     : string;// , nvarchar(150),>
//           hospitalPhone    : string;// , varchar(13),>
//           publicationDate  : TdateTime;// , date,>
//           requestDate      : TdateTime;// , smalldatetime,>)
//           out ID : integer ) : boolean;
    function NewSerial(WorkDate: TDateTime; sKind: string): string;
    procedure SaveToUrl(kind, fileName: string);
    function UpdateRP_attach(token: string; tablePK, bbsPK: integer): boolean;
  public
    { Public declarations }
  end;

var
  ReferHospReqComplete_f: TReferHospReqComplete_f;

implementation
uses uConfig,uFormInit, uDM, uFunctions,  uGogekData,  uMain;
{$R *.dfm}


procedure TReferHospReqComplete_f.SaveToUrl(kind:string; fileName : string);
var
  MultiPartFormData: TIdMultiPartFormDataStream;
  ResultStr: TStringStream;
  baseUrl : string;
  saveFolder : string;
  saveThumbFolder : string;
  url : string;
  ID, RET : String;
  foldername: string;
  dbKind : string;
begin
//
//    case ikind of
//       4:
//          begin
//             foldername:= 'image/';//
//             dbKind := '1';
//          end;
//       11:
//          begin
//             foldername:= 'agree/';//
//             dbKind := '2';
//          end;
//
//       12:
//          begin
//             foldername:= 'warnitem/';//
//             dbKind := '3';
//          end;
//
//    end;

    baseUrl := 'http://partner.humic.co.kr/process/attach/PMSUpload/';
  //  baseUrl := 'http://hmslab.co.kr/DentalHelperImage/files/upload.php?imagepath=';

//    saveFolder := 'image/'                    //�⺻ ����
//        + copy( HospID, 1,4) +'/'             //����� �ڵ� ù��° ���ڸ�
//        + HospID +'/'                         //�������ȣ
//        + formatDatetime('YYYYMM',now) + '/'  //�Է� ���
//        + patChart +'/'                       //��Ʈ��ȣ
//        + foldername ;                           //image : ���ܿ��� agree:���Ǽ�


//   if kind='1' then //thumbNail
//        saveFolder:=  saveFolder
//           + 'thumb/'  ;                         //thumbNail����


  MultiPartFormData:=TIdMultiPartFormDataStream.Create;
  ResultStr:=TStringStream.Create;
  try
    Url :=  TIdURI.URLEncode(baseUrl);// + saveFolder);
    // Request ����
    IdHTTP1.Request.UserAgent:='HmslabFileUploadService!!^^!!@';
    IdHTTP1.Request.ContentType:=MultiPartFormData.RequestContentType;
    // ����÷��
    MultiPartFormData.AddFile('attach', filename , 'application/octet-stream');
    MultiPartFormData.Position:=0;
    // POST ����
    try
      IdHTTP1.Post(Url, MultiPartFormData, ResultStr);

     // memo2.Lines.text :=  ResultStr.DataString;
     ReferImageTokenID   :=  ResultStr.DataString;

    except on E:Exception do
      OutputDebugString(PWideChar('POST ���۽��� : '+E.Message));
    end;
    // ������
    OutputDebugString(PWideChar(ResultStr.DataString));

//    if kind='0' then
//        begin
//        //ToDo : ����� ����Ǿ����� ����� �޾ƾ� �Ѵ�.
//        if  pos('has been uploaded',PWideChar( ResultStr.DataString)) > 0 then
//        begin
//          //TOdo : db�� �����Ѵ�.
//           ClientModule1.ServerMethods1Client.SaveImageInfo_Promise(
//              HospID ,
//              patChart,
//              '1',
//              saveFolder,
//              'admin',
//              filename,
//              dbKind,
//              edtTitle.Text,
//              ID,
//              Ret) ;
//
//             if trim(Ret) = '' then
//            begin
//
//                //�� HttpWorkEnd���� ������� ������?
//                ProgressBar1.Position := 100;
//                showmessage('����Ǿ����ϴ�.');
//
//             end
//             else
//             begin
//                showmessage('�ٽýõ��ϼ���.' + #10 + Ret);
//             end;
//        end
//        else
//        begin
//            showmessage('�ٽýõ��ϼ���.' +#10+ PWideChar( ResultStr.DataString));
//        end;
//
//   end;

  finally
    FreeAndNil(MultiPartFormData);
    FreeAndNil(ResultStr);
  end;




end;

procedure TReferHospReqComplete_f.Button2Click(Sender: TObject);
var
     filename , filename2, newFileName: string;
     fileext    : string;
     filepath   : string;
begin
         if opendialog1.Execute then
         begin
              filename  := opendialog1.FileName;


              filepath  :=  extractFilepath(filename);
              filename  :=  extractFileName(filename);

              fileext   :=  extractFileExt(filename);


              filename2 :=  UTF8Encode(filename);
              filename2 :=  HTTPEncode(filename);

              newFileName :=  FilePath +'\'+ filename2;;

              copyfile(pchar( opendialog1.FileName),
                       pchar(newFileName) , false );

//              copyfile(pchar(filename), pchar( filename2)

              // ToDo : �ѱ� ���ϸ��� PUT�� �ȵȴ�.
              // tempimg�� �̸��� �ٲ㼭 ������ �Ŀ�  �ٲ� ������ ��������.

              image1.Picture.LoadFromFile(newFileName);

              SaveToUrl('0', newFileName);
         end;


end;

procedure TReferHospReqComplete_f.edtTelNoChange(Sender: TObject);
begin
     (sender as TadvEdit).text := call_tel_type( (sender as TadvEdit).text);
     (sender as TadvEdit).SelStart := length( (sender as TadvEdit).text);

end;

procedure TReferHospReqComplete_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := caFree;
end;

procedure TReferHospReqComplete_f.FormDestroy(Sender: TObject);
begin
     ReferHospReqComplete_f := nil;
end;

procedure TReferHospReqComplete_f.FormShow(Sender: TObject);
begin

       caption:= '�����Ƿ� ȸ�ۼ� �ۼ�';

       edtChart.Text := ma_chart;
       edtname.Text  := ma_paName;
       edtJuminNo.Text := copy(ma_jumin, 1, 6) +'-'+ copy(ma_jumin, 7, 7);
       edtBd.Text    := jumintoBirth2(  ma_jumin);
       edtAge.Text   := juMinToNai(ma_jumin);
       edttelNo.Text := ma_c_Phone;
       edtGenDer.Text := GenderDisp(ma_jumin);
       edtPadd.Text   := ma_h_juso;

       edtHName.Text := configvalue.varsaupname;
       edtAdd.Text := configvalue.varAdd1 + ' ' + configvalue.varAdd2;
       edtHphone.Text := configvalue.varTel1;

       edtLno.Text := cbDoc.ColumnItems[cbDoc.itemindex, 3];
       relDate.Date := now;




end;


function TReferHospReqComplete_f.NewSerial(WorkDate: TDateTime; sKind: string): string;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select Max(substring(DateNo,10,2)) as maxSeq from tbReport where DateNo like :DateNo');
          ParamByName('DateNo').AsString := FormatDateTime('yyyymmdd', WorkDate) + sKind + '%';
          Open;
          First;
          //edtSeqNo.Enabled := False;
          edtSeqNo.Enabled := True;
          if not isEmpty then
          begin
               if FieldByName('maxSeq').AsString = '' then
                    Result := FormatDateTime('yyyymmdd', WorkDate) + '-' + sKind + '01'
               else
                    Result := FormatDateTime('yyyymmdd', WorkDate) + '-'
                       + sKind + FormatFloat('00', (FieldByName('maxSeq').Asinteger + 1));
          end
          else
          begin
               Result := FormatDateTime('yyyymmdd', WorkDate) + '-' + sKind + '01';
          end;
     end;
end;

function TReferHospReqComplete_f.UpdateRP_attach(token : string;
           tablePK: integer;
           bbsPK  : integer):boolean;

var
     tempQuery : TuniQuery ;
     tempQuery2 : TuniQuery ;
begin

    //���� ����
     result:= false;
     {$IFDEF DEBUG}
         Exit;
     {$ENDIF DEBUG}

     try


        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;



         with tempQuery do
             begin
             try
              Close;
              SQL.Clear;
              SQL.Text  :=   ' update [RP_attach]   set  '+#10+
                            '  [tablePK]  =  :tablePK,  [bbsPK]  =  :bbsPK,[TMP]  =  ''N''    '+#10+
                            ' where  token =:token               ';


              ParamByName('tablePK').AsInteger         :=  tablePK;
              ParamByName('bbsPK').AsInteger           :=  bbsPK;
              ParamByName('token').AsString             :=  token;

              execsql;

                   result:= true;
             except
                   on E: Exception do
                 begin
                      ExceptLogging('sqlUpdate : RP_attach' + E.Message);
                      Showmessage('sqlUpdate RP_attach.'+#10
                      + E.Message);

                 end;
             end;
           end;
     finally
          tempQuery.Free;
     end;
end;



procedure TReferHospReqComplete_f.Button1Click(Sender: TObject);
var
   rqPk : integer;

     tempQuery : TuniQuery ;
     i : integer;
     paramA, paramB : string;
     detailContent : string;
     patReqPK : string;

     sangList : string;
     yearNo : string;

     sID : integer;

begin
      i:= 0;
//     try
//
//
//
//        tempQuery := TuniQuery.create(self);
//        tempQuery.Connection:= dm_f.UniConnection1 ;
//
//
//         with tempQuery do
//          begin
//
//              Close;
//              SQL.Clear;
//              SQL.Text  :=  //sqlInsert;
//                 ' select  isNull(max(requestPK), 0) +1   as maxReq from [RP_requestCompleted]    ';
//              open;
//
//              rqPk :=  fieldByName('maxReq').AsInteger;
//
//
//         end;
//     finally
//        tempQuery.Free;
//     end;


       rqPk :=  ma_rp_RequestPK;//fieldByName('maxReq').AsInteger;

       yearNo :=formatDatetime('YYYYMMDD',now)+ inttostr(rqPk);

     for i:= 0 to lstDangname1.Items.Count -1 do
     begin
       if trim(sangList) = '' then
            sangList :=  lstDangname1.Items[i]
       else
          sangList := sangList +#10+ lstDangname1.Items[i]  ;
     end;

       EdtSeqNo.text:= yearNo ;


    if    saveRequestComplete(rqPk,
       edtChart.Text,
       formatDatetime('YYYYMMDD',now)+ inttostr(rqPk),
       EdtJuminNo.Text,
       edtName.Text,
       EdtPadd.Text,
       edtTelNo.text,
       rgDesease.ItemIndex + 1, //1: �ӻ�������  2: �����Ǵ�
       sangList,// lstDangName1.Items[0],
      '', //lstDangName1.Items[1],
       memo1.Text,
       cbDoc.ColumnItems[cbDoc.itemindex, 2],
       EdtHName.Text,
       EdtAdd.Text,
       edthphone.Text,
       now,
       now ,
       sID  )= true then
         begin


              //�̹��� ÷������ ������Ʈ

           if ReferImageTokenID <> '' then
           begin
             if  UpdateRP_attach(
                ReferImageTokenID , //token : string;
                3,    //    tablePK: integer;
                sID  //rqPk//    bbsPK  : integer
               )= true then
               begin

                  showmessage('���۵Ǿ����ϴ�.');
                  close;
               end
               else
               begin
                     showmessage('÷������ ���� ����.');
               end;
            end;


                  showmessage('����Ǿ����ϴ�.');
                  close;

         end
         else
         begin
              showmessage('ȸ�ۼ� ���� �����Դϴ�.');
         end;
end;

end.
