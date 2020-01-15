unit login;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, StdCtrls, ExtCtrls, Buttons, Inifiles,
     IdBaseComponent, IdComponent,
     IdTCPConnection, IdTCPClient, IdFTP, IdException, jpeg,
     AdvShapeButton, AdvEdit, shellapi, ComCtrls, AdvProgr, AdvPanel,
     AdvOfficeButtons, AdvProgressBar, HTMLabel, ZipMstr, Grids, AdvObj,
     BaseGrid, AdvGrid, tmsAdvGridExcel, IdExplicitTLSClientServerBase,
     IdHTTP, IdURI, OleCtrls, SHDocVw, AdvUtil,
     uUpdateCheck ;

type
     TLogin_f = class(TForm)
          IdFTP1: TIdFTP;
          Timer1: TTimer;
          AdvPanel1: TAdvPanel;
          AdvPanelStyler1: TAdvPanelStyler;
          BtnCancel: TSpeedButton;
          btnLogin: TSpeedButton;
          edtid: TAdvEdit;
          edtpass: TAdvEdit;
          imgIntro: TImage;
          cbSave: TAdvOfficeCheckBox;
          AdvPanel2: TAdvPanel;
          lblMejangCode: TLabel;
          Label1: TLabel;
          lblVersion: TLabel;
          Label2: TLabel;
          lblStatus: TLabel;
          cbAuto: TAdvOfficeCheckBox;
          Label6: TLabel;
          AdvProgress1: TAdvProgressBar;
          Panel1: TPanel;
          Panel2: TPanel;
          Panel3: TPanel;
          Panel4: TPanel;
          Panel5: TPanel;
          Panel6: TPanel;
          btnCon: TLabel;
          btnNet: TLabel;
          btninfo: TLabel;
          Label5: TLabel;
          btnenv: TLabel;
          Label3: TLabel;
          btnUser: TLabel;
          pnlHtml: TAdvPanel;
          Label8: TLabel;
          ListBox1: TListBox;
          ListBox2: TListBox;
          Label10: TLabel;
          RichEdit1: TRichEdit;
          AdvGridExcelIO1: TAdvGridExcelIO;
          AdvStringGrid1: TAdvStringGrid;
    cbImageSync: TAdvOfficeCheckBox;
    IdHTTP1: TIdHTTP;
    Label13: TLabel;
    Panel7: TPanel;
    Label11: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cbUpdateAuto: TCheckBox;
    Label18: TLabel;
    lblKind: TLabel;
    cbRis: TCheckBox;
    cbLoginWithCert: TCheckBox;
          procedure FormShow(Sender: TObject);
          procedure BtnCancelClick(Sender: TObject);
          procedure edtIdKeyPress(Sender: TObject; var Key: Char);
          procedure BtnLoginClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure lblConSetupMouseEnter(Sender: TObject);
          procedure lblConSetupMouseLeave(Sender: TObject);
          procedure btnConClick(Sender: TObject);
          procedure btnNetClick(Sender: TObject);
          procedure btnUserClick(Sender: TObject);
          procedure btnenvClick(Sender: TObject);
          procedure Label3Click(Sender: TObject);
          procedure btninfoClick(Sender: TObject);
          procedure Label5Click(Sender: TObject);
          procedure Timer1Timer(Sender: TObject);
          procedure cbAutoClick(Sender: TObject);
          procedure Label5MouseEnter(Sender: TObject);
          procedure Label5MouseLeave(Sender: TObject);
          procedure Label7Click(Sender: TObject);
          procedure Label8Click(Sender: TObject);
          procedure Label9Click(Sender: TObject);
          procedure edtpassKeyPress(Sender: TObject; var Key: Char);
          procedure Label10Click(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure Label11Click(Sender: TObject);
    procedure edtidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image7DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbLoginWithCertClick(Sender: TObject);
     private
          { Private declarations }
          isAdvtiseShowed : boolean;
          timei: integer;
          CurrentDir: string;
          TotalSize1, TotalProgress1: Int64;

          soIp, soDB, soUserID, soPass: string;
          dbUpCount: integer; //�����ͺ��̽� ������Ʈ ���.
          //dentro.log���� 2��° ���� �о�ͼ� DB�� �ְ� ���Ѵ�.
          procedure LoadPicture(filename:string);
       //   procedure UpdateCheck;
       //   function LoadUpdateVersion: Boolean;
       //   function UpdateLogFileDown: boolean;
          procedure sendBirthSMS;
          function UserCheck: string;
          function GaejumCheck: boolean;
          function CreateView: boolean;
          function DropView: Boolean;
          procedure sugaChange;
          procedure LoadNews;
          function MakeID: boolean;
          function MakeModDay: boolean;
          procedure fileWebUpdate;
//          procedure ZipMasterProgress(Sender: TObject; ProgrType: ProgressType;
//               Filename: string; FileSize: int64);
          procedure ZipMasterProgress(Sender: TObject; details: TZMProgressDetails);
          procedure DbCheckNup;


           procedure  FrontImageUpdateCheckNLoad;
           function  LoadServerFrontImageName: string;
           function  DownFrontImage(filename:string): boolean;
    procedure CertProcess(varChartComment: widestring; varChartSSeq,
      varDoctorJumin: string; var isCorrectCert: boolean);

     public
          { Public declarations }
          VarHeight, VarWidth: string;
        //  V_PGKIND, V_UserID, V_UserName, V_UserPass, V_DptName, V_Power, v_version:  string;
     end;



//function InetIsOffline(Flag: Integer): Boolean; stdcall; external 'URL.DLL';
       //ToDo : �̰ɾ��� Webservice.Dll�� �浹�� �Ͼ��.
var
     Login_f: TLogin_f;
implementation

uses
     uConfig,
     uDM,
 //    update,
     uFunctions,
     uGogekData,
     uSugaUpdate,
     uSysinfo,
 //    sendSMS,
 //    nMeeting,
 //    sawon,
 //    gaejum,
     UGetNetworkAdapter,
 //    GyoDae,
     uMain,
//     pcinfo,
     advertise, dbsetting,
     uCert;//,
//     dbsetting;

{$R *.dfm}

procedure TLogin_f.FormShow(Sender: TObject);
var
     StrList: TStringList;
     filename: string;
     f: file of Byte;
     size: Longint;
     path:string;
     forminit:Tinifile;

     varmaclist: TStringList;
begin


    // ENCRYPT_MARK := '123'; // 'OURGREANGELHART��';
     //���ּ� �ҷ�����...
//     varmaclist:= TStringList.Create;
//     Get_AdaptersInfo(varmaclist);

//     ENCRYPT_MARK := 'OURGREANGELHART��'+ varmaclist[0];

//     varmaclist.Free;



     if V_PGKIND ='1' then
     begin
         lblKind.Caption := '[�����]';
         caption := 'Login to HPMS [�����]';
     end
         else if V_PGKIND ='2' then
     begin
       lblKind.Caption := '[������]';
       caption := 'Login to HPMS [������]';
     end;



   //   width := 800;


//     width:= 800 - 217;
     //panel8.visible:=false;
//     height := 397;


//     Webbrowser1.navigate(ExtractFileDir(Application.Exename) + '\webpage\adv_20171123.html');
//   webBrowser1.Navigate('  adv_20171123.png
//WebBrowser1.Navigate( 'file://' + GetCurrentDir + '/readme.htm' );
//Webbrowser.navigate(ExtractFileDir(Application.Exename) + '\readme.htm');

     timei := 0;
     advProgress1.Min := 0;
     advProgress1.position := 0;
     advProgress1.Max := 100;

     currentDir := ExtractFilePath(paramStr(0));

     if not DirectoryExists(currentDir + 'updates\new\') then
          if not ForceDirectories(currentDir + 'updates\new\') then
               raise Exception.Create('Cannot create ' +
                    currentDir + 'updates\new\');

     //    Path := GetConfigDir + 'db.ini';
     //    FormInit := TIniFile.Create(Path);
     //         FormInit.WriteString('SCHEDULE', 'DATE', FormatDateTime('YYYY-MM-DD',
     //              Now));
     //         FormInit.WriteString('SCHEDULE', 'VIEW', '0');






     Path := currentDir + 'db.ini';
     FormInit := TIniFile.Create(Path);


     if FormInit.ReadString('ETC', 'ImageSyncCheck', '')='0' then
          cbImageSync.Checked := false
     else
          cbImageSync.Checked := true;

     FormInit.Free;




     if loadini = true then
     begin


     //   configvalue := Tconfigvalue.Create;
        configvalue.LoadGlobalData_ini;  //ini������ ����.




          if configvalue.varIDSAVE = '1' then
          begin
               cbSave.Checked := true;
               edtid.text := configvalue.varLoginId;
               edtPass.text := configvalue.varLoginPass;

          end
          else
          begin
               cbSave.Checked := false;
               edtId.Text := '';
               edtpass.Text := '';
          end;

          if configvalue.varRISSYNC = '1' then
          begin

               cbRIS.Checked := true;
          end
          else
          begin
                cbRIS.Checked := false;
          end;

          if configvalue.varCertLogin = '1' then
          begin

               cbLoginWithCert.Checked := true;
          end
          else
          begin
                cbLoginWithCert.Checked := false;
          end;

          if configvalue.varAutoLogin = '1' then
          begin

               cbauto.Checked := true;
          end;

          if configvalue.varUpdateauto = '1' then
          begin

               cbUpdateauto.Checked := true;
          end;

          lblmejangcode.caption := configvalue.varsaupNo + '(' +
               configvalue.varsaupname + ')';
          lblStatus.Caption := '�α��� �Ͻʽÿ�.';

     end
     else
     begin
          lblStatus.Caption := '���������� ���� �����ϴ�.';
       //   LoadPicture;
          edtid.text := '';
          edtPass.text := '';
          lblmejangcode.caption := '';

     end;
     filename := currentDir + 'updates\new\dentro.log';
     try
          //updates\new\�� �ִ� dentro.log������ �����ͼ� ���� ��ȣ�� Ȯ���Ѵ�.
          if FileExists(filename) then
          begin
               //���ͳ��� ����ȵǴ°�� �ٿ�ε带 �����ؼ� dentro.log�� 0�̵ȴ�.
               AssignFile(f, FileName);
               Reset(f);
               try
                    size := FileSize(f);

               finally
                    CloseFile(f);
               end;

               if size > 0 then
               begin
                    StrList := TStringList.Create;
                    StrList.LoadFromFile(filename);
                    //lblVersion.Caption := StrList.Strings[0];
                    StrList.Free;
               end
               else
               begin
                    filename := currentDir + 'updates\old\dentro.log';
                    if FileExists(filename) then
                    begin

                         StrList := TStringList.Create;
                         StrList.LoadFromFile(filename);
                         //lblVersion.Caption := StrList.Strings[0];
                         StrList.Free;
                    end
                    else
                    begin
                         //lblVersion.Caption := '00';
                    end;

               end;
          end
          else
          begin

               //lblVersion.Caption := '00';
          end;
     except
          // lblVersion.Caption := '00';
     end;

     lblVersion.Caption := GetExeVersion(paramstr(0)) ;//getfileversion2;


     V_Version := lblVersion.Caption;

     FrontImageUpdateCheckNLoad;

    // LoadPicture('');
     //LoadNews;



     timer1.Enabled := true;


//     if  not fileexists(extractFilepath(paramstr(0)) + 'postDB\newpost.mdb' ) then
//     begin
//
//
//             ShellExecute(GetDeskTopWindow, 'open', Pchar(extractFilepath(paramstr(0)) + 'DownPostDBP.exe'),
//                  nil,
//                  nil,
//                 SW_SHOWNORMAL);
//
//
//
//     end;


     advertise_f:= Tadvertise_f.Create(application);
     advertise_f.show;





end;

procedure TLogin_f.BtnCancelClick(Sender: TObject);
begin
     ModalResult := mrCancel;
     close;
end;

procedure TLogin_f.edtIdKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;

end;

procedure TLogin_f.sendBirthSMS;
var
     varSendSms: string;

     FormInit: TIniFile;
     Rundir: string;
     RunFile: string;
     Path: string;
begin

     Path := currentDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varSendSms := FormInit.ReadString('BASEINFO', 'SendSMS', '0');
     FormInit.Free;
//
//     if varSendSms = '1' then
//     begin
//          //���� ���� SMS����� �ҷ����� ������ ������.
//          //=========================================================================
//          application.ProcessMessages;
//          if not Assigned(sendSMS_f) then
//               sendSMS_f := TsendSMS_f.Create(Application);
//
//          application.ProcessMessages;
//          sendSMS_f.Show;
//          // sendSMS_f.Free;
//  //=========================================================================
//
//     end;
     application.ProcessMessages;

end;



procedure TLogin_f.BtnLoginClick(Sender: TObject);
var
     varMaclist: tstringlist;

     FormInit: TIniFile;
     Rundir: string;
     RunFile: string;
     Path: string;
     varImgKind: integer;
     varPcName: string;
     varWinVersion: string;
     varmoddate: string;
     SearchRec: TSearchRec;

     varWonJuminNo : string;

var
   isCorrectCert: boolean ;
begin




     timer1.enabled := false;
     btnLogin.Enabled := false;
     application.ProcessMessages;
     advProgress1.position := 100;

     lblStatus.Caption := '�α��� ���Դϴ�.';

     // Path := currentDir + 'db.ini';
     Path := extractfilepath(paramstr(0)) + 'db.ini';
     if Edtid.Text = '' then
     begin
        //  showmessage('ID�� �Է��ϼ���.');
          Edtid.Setfocus;
          exit;
     end;
     if EdtPass.Text = '' then
     begin
        //  showmessage('Password�� �Է��ϼ���.');
          EdtPass.Setfocus;
          exit;
     end;


     application.ProcessMessages;


     //DB2�� ������ Win.ini�� ����


     //DB���� => 1��
     //1�� ���� ���н� 2������ �ڵ�����...


//{     if loadini = true then
//     begin
//        configvalue.LoadGlobalData_ini;  //ini������ ����.
//
//
//     if dm_f.ConnectDatabase(configvalue.varDbip,
//          configvalue.varDbname,
//          configvalue.varDbuser, configvalue.varDbpass,
//          configvalue.varDbProtocol,
//                          configvalue.varDbPort) = true then
//     begin
//
//       configvalue.LoadGlobalData_db;
//
//       //tableUpdate;
//
//
//
//          {$IFNDEF DEBUG}
//             if dm_f.ConnectDatabase_BIT(configvalue.varImageIp,
//                  'mediroPack',
//                  'sa',
//                  'bit',
//                  'mssql',
//                  51983) = true then
//             begin
//
//             end
//             else
//             begin
//                    showmessage('BIT conn check.'+#10+#13+configvalue.varImageIp);
//             end;
//          {$ENDIF DEBUG}
//
//     end
//     else
//     begin
//         showmessage('Required Internet status or Network.');
//         application.Terminate;
//     end;
//
//   end
//   else
//   begin
//      showmessage('Required Internet status or Network.');
//      application.Terminate;
//   end;
//}



     if dm_f.ConnectDatabase(configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser,
          configvalue.varDbpass,
          configvalue.varDbProtocol,
          configvalue.varDbPort) = true then
     begin
           //serverkind := 0;
           configvalue.LoadGlobalData_db;
           configvalue.LoadQueryFunc(configvalue.varDbProtocol);

          //DB2�� ������ Win.ini�� ����
      //    configvalue.Db2infoSave;


          {$IFNDEF DEBUG}
          if (cbRis.Checked = true) and  ( configvalue.varImageUse='1')   then
           begin
             if dm_f.ConnectDatabase_BIT(configvalue.varImageIp,
                  'mediroPack',
                  'sa',
                  'bit',
                  'mssql',
                  51983) = true then
             begin

             end
             else
             begin
                    showmessage('BIT conn check.'+#10+#13+configvalue.varImageIp);
             end;
           end;
          {$ENDIF DEBUG}



     end
     else
     begin
         exceptlogging(configvalue.varImageIp7);

          if Dm_f.ConnectDatabase(configvalue.ServerIp2,  //configvalue.varImageIp7, //
             configvalue.DbName2, // configvalue.varImageDB7,//
             configvalue.DbUser2,  // configvalue.varImageUser7,//
             configvalue.DbPass2,  //  configvalue.varImagePass7,//
             configvalue.DbProtocol2, //  configvalue.varDbProtocol,//
             configvalue.varDbPort  //1433���� �������� ���Ƿ� ���� �� �ִ�. �����δ� ���������Ǵ㿡 ,��Ʈ��ȣ ���ָ� ��
          ) = true then
          begin
             //serverkind := 1;
             configvalue.LoadGlobalData_db;
             configvalue.LoadQueryFunc(configvalue.varDbProtocol);
          end
          else
          begin
               // showmessage('�����ͺ��̽��� ������ �� �����ϴ�.');
               configvalue.DbCon := false;

               BtnLogin.Enabled := true;
               exit;
          end;


     end;

     if trim(configvalue.varImageKind) <> '' then
          varimgKind := strtoint(configvalue.varImageKind)
     else
          varimgKind := 0;

     BtnLogin.Enabled := false;
     application.ProcessMessages;
     lblStatus.Caption := '������Ʈ ������ Ȯ�� ���Դϴ�.';

     application.ProcessMessages;




   //  if configvalue.varWEb <> '0' then
   //  if configvalue.varUpdateauto = '1' then
     if cbUpdateauto.checked=true then
     begin



           {$IFNDEF DEBUG}

              if UpdateCheck = true then
               begin
                    ShellExecute(0, 'open',
                         Pchar(ExtractFilePath(Application.ExeName)
                         + 'Downloader_http_HHPMS.exe'), '', nil, SW_SHOWNORMAL);
               end;
            {$ENDIF DEBUG}



        //  UpdateCheck;
     end;

     application.ProcessMessages;
     lblStatus.Caption := '�����ͺ��̽��� ���� ���Դϴ�.';

     // if dm_f.ConnectDatabase(configvalue.varDbip,
    //         configvalue.varDbname,
    //         configvalue.varDbuser, configvalue.varDbpass,
   //          configvalue.varDbProtocol) then
   //   begin
     configvalue.DbCon := true;

//     dm_f.SyncServerTime(); //�ð��� ������ �����Ų��.

     application.ProcessMessages;
     lblStatus.Caption := '�����ͺ��̽�������Ʈ ���Դϴ�.';




     application.ProcessMessages;
     lblStatus.Caption := '������Ʈ ������ Ȯ�����Դϴ�. ��ø� ��ٸ�����.';

    // if configvalue.varWEb <> '0' then
    // begin
  //      DbCheckNup;
    // end;


     application.ProcessMessages;
     lblStatus.Caption := '���� ������ ���̺��� ������Ʈ���Դϴ�. ��ø� ��ٸ�����.';


     if configvalue.varWEb <> '0' then
     begin
   //     CreateTable;
     end;




     application.ProcessMessages;
     lblStatus.Caption := '����� ���̺��� ������Ʈ���Դϴ�. ��ø� ��ٸ�����.';

     if configvalue.varWEb <> '0' then
     begin


      //  TableUpdate;
     end;




     application.ProcessMessages;
     with Dm_f.SqlTemp2 do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_sawon_basic');
          Sql.Add('Where SaId=:SaId  and (NoUse <>''1''  or NoUse is Null) ');
          ParamByName('SaId').AsString := edtId.text; //Id
          open;
          last;
          if not Dm_f.SqlTemp2.isEmpty then
          begin

               varWonJuminNo :=  trim(  Dm_f.SqlTemp2.fieldByName('saJumin').AsString);

               if trim(edtPass.Text) <>
                  trim(  Dm_f.SqlTemp2.fieldByName('sapass').AsString) then
               begin
                    if MessageDlg('��ȣ�� �ٸ��ϴ�.' +
                         #10#13 +
                         '�����ڿ��� �����Ͻʽÿ�.',
                         mtConfirmation,
                         mbOkCancel, 0) = mrOk then
                    begin
                         EdtPass.SetFocus;
                         BtnLogin.Enabled := true;
                    end
                    else
                    begin
                         Application.terminate;
                    end;
               end
               else
               begin
                    V_UserID :=
                         fieldByName('saId').AsString;
                    V_UserName :=
                         fieldByName('saName').AsString;
                    V_UserPass :=
                         fieldByName('saPass').AsString;
                    V_Power :=
                         fieldByName('saPower').AsString;

                    //   main_f.V_UserID := V_UserID;
                    //   main_f.V_UserName := V_UserName;
                    //   main_f.V_UserPass := V_UserPass;
                    //   main_f.V_Power := V_power;

                    if cbRIS.Checked then
                    begin

                         FormInit :=  TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',  'RISSYNC',   '1');
                         FormInit.Free;
                    end
                    else
                    begin
                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',   'RISSYNC',   '0');
                         FormInit.Free;
                    end;


                    if cbLoginWithCert.Checked then
                    begin

                         FormInit :=  TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',  'CertLogin',   '1');
                         FormInit.Free;
                    end
                    else
                    begin
                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',   'CertLogin',   '0');
                         FormInit.Free;
                    end;


                    if cbUpdateAuto.Checked then
                    begin

                         FormInit :=  TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',  'UPDATEAUTO',   '1');
                         FormInit.Free;
                    end
                    else
                    begin
                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',   'UPDATEAUTO',   '0');
                         FormInit.Free;
                    end;



                    if cbAuto.Checked then
                    begin

                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',
                              'AUTO',
                              '1');
                         FormInit.Free;
                    end
                    else
                    begin
                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',
                              'AUTO',
                              '0');
                         FormInit.Free;
                    end;

                    if cbSave.Checked then
                    begin

                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',
                              'ID',
                              edtid.text);
                         FormInit.WriteString('LOGIN',
                              'PASS',
                              edtPASS.text);
                         FormInit.WriteString('LOGIN',
                              'IDSAVE',
                              '1');
                         FormInit.Free;
                    end
                    else
                    begin
                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('LOGIN',
                              'ID',
                              '');
                         FormInit.WriteString('LOGIN',
                              'PASS',
                              '');
                         FormInit.WriteString('LOGIN',
                              'IDSAVE',
                              '0');
                         FormInit.Free;
                    end;

                    application.ProcessMessages;
                    {  lblStatus.Caption := 'SMS ������ Ȯ�� ���Դϴ�.';

                      sendBirthSMS;

                      lblStatus.Caption := 'SMS ������ �Ϸ��Ͽ����ϴ�.';
                     }

                    //������ ������ �ҷ��´�.
                   // configvalue.LoadGlobalData_db;

                    //ȸ����ϰ� ȸ���ڵ�� ini���� �����Ѵ�.

                    if (configvalue.varsaupname <> '')
                         and
                         (configvalue.varsaupNo <>
                         '') then
                    begin
                         Path := currentDir + 'db.ini';
                         FormInit :=
                              TIniFile.Create(Path);
                         FormInit.WriteString('BASEINFO',
                              'COMPCODE',
                              configvalue.varsaupNo);
                         FormInit.WriteString('BASEINFO',
                              'COMPNAME',
                              configvalue.varsaupname);
                         FormInit.Free;
                    end
                    else
                    begin
                         //todo:���� ���� ��� â�� ����.
                    end;

                    // ������ �α����� ��������.

                   if cbLoginWithCert.Checked=true then
                  begin
                   CertProcess(
                   '1' ,                 //chartComment,
                   '1',                //chartSeq,
                    varWonJuminNo,      //�����ֹ�
                    isCorrectCert );

                   if isCorrectCert=false then
                   begin
                     showmessage('cert retry.');
                     exit;
                   end;


                  end;



                    //�����۾�----------------------------------------------




//                    if ((substr(UserCheck, 1, '/') = '')
//                         or
//                         (substr(UserCheck, 1, '/') =
//                         edtId.text)) then
//                    begin
//                         if gaejumcheck = false then
//                              //���� ���θ� üũ�Ѵ�.
//                         begin
//                              if
//                                   MessageDlg('������ �۾��� �Ͻðڽ��ϱ�?',
//                                   mtConfirmation,
//                                   [mbYes,
//                                   mbNo], 0) = mrYes then
//                              begin
////                                   Gaejum_f :=
////                                        TGaejum_f.Create(Application);
////                                   Gaejum_f.Show;
////                                   Gaejum_f.UserComBox.Text
////                                        :=
////                                        edtId.Text;
////                                   Gaejum_f.edtpass.text :=
////                                        edtpass.text;
//                                     ModalResult := mrOk;
//                              end
//                              else
//                              begin
//                                   ModalResult :=
//                                        mrOk;
//                                   //Login_f.Close;
//                              end;
//                         end
//                         else
//                         begin
//                              ModalResult := mrOk;
//                              //  Login_f.Close;
//                         end;
//
//                    end
//                    else
//                    begin
//                         //  showmessage(usercheck);
//                         if substr(UserCheck, 1, '/') <>
//                              edtId.Text then
//                         begin
////                              GyoDae_f :=
////                                   TGyoDae_f.Create(Application);
////                              GyoDae_f.Show;
////                              GyoDae_f.UserComBox.Text
////                                   :=
////                                   edtId.Text;
////                              GyoDae_f.edtpass.text :=
////                                   edtpass.text;
//
//                              // ModalResult := mrOk;
//                         end;
//
//                    end;
                    //-----------------------------------------------------
                   ModalResult := mrOk;
               end;

          end
          else
          begin
               showmessage('��ϵ� ����ڰ� �ƴմϴ�.' +
                    #10#13 +
                    '����� ��� �� �̿� �ϼ���.');
               BtnLogin.Enabled := true;
               exit;
          end;
     end;

     // end
     // else
     // begin
     //        configvalue.DbCon := false;
     //
     //        BtnLogin.Enabled := true;
     //        exit;
     // end;

     application.ProcessMessages;
     lblStatus.Caption := '�����ͺ��̽�������Ʈ�Ϸ�';



     if configvalue.varWEb <> '0' then
     begin
          exceptlogging('web LogWrite Start');

          //mysqldb �����ؼ� �α� �����
          if dm_f.ConnectMysqlDB = true then
          begin
               try
                    varmaclist := TstringList.Create;
//                    Get_AdaptersInfo(varmaclist);


                //    varPcName := GetAllSystemInfo.ComputerName;
                 //   varWinVersion := GetAllSystemInfo.version;
                    varPcName := GetLocalComputerName;// GetIPAddress;// 'ComputerName';
                    varWinVersion := 'version';




                    if FindFirst(extractFileName(paramStr(0)), faAnyFile, SearchRec) = 0 then // ã������.
                    begin
                         varModDate := datetimetostr(SearchRec.Time);
                    end;
                    with dm_f.sqlmysqldb do
                    begin

                         close;
                         sql.Clear;
                         sql.add('insert into tblmadanglog');
                         sql.add('(logtime, loguser, logmacadd, logmejangcode, logmejangname, logversion, pcname, winver, pgmoddate) values');
                         sql.add('(:logtime, :loguser, :logmacadd, :logmejangcode, :logmejangname,:logversion,:pcname, :winver, :pgModDate)');
                         paramByname('logtime').asdatetime :=
                              now;
                         paramByname('loguser').asString :=
                              edtid.text;
                         paramByname('logmacadd').asString :=
                             GetIPAddress;// varmaclist.Text;
                         //'123.111.123.123';
                         paramByname('logmejangcode').asString
                              :=
                              lblmejangcode.caption;
                         paramByname('logmejangname').asString
                              :=
                              configvalue.varsaupname;
                         paramByname('logversion').asString :=
                              lblVersion.Caption;
                         paramByname('pcname').asString :=
                              varPcname;
                         paramByname('winver').asString :=
                              varwinversion;
                         paramByname('pgmoddate').asString :=
                              varmoddate;
                         execsql;


                    end;
                    exceptlogging('web LogWrite complete');

                    dm_f.mysqldb.Close;
               except
                    on E: Exception do
                    begin
                         ExceptLogging('MYDB���ӽ���->' +
                              E.Message);
                       //  exit;
                    end;

               end;
          end;



     end;

     if configvalue.varSmsCustkind = '0' then
          dm_f.smsCustCode := 'WW-NYA-BN' //infomedi
     else
          dm_f.smsCustCode := 'OV-JJG-9R'; //humansoftlab




     advertise_f.Close;



     application.ProcessMessages;
//     lblStatus.Caption := '���� ���̺��� ������Ʈ���Դϴ�. ��ø� ��ٸ�����.';
     //���� �ۿ� Ʈ���Ÿ� ��������...
 ///    CreateTrigger;




    //������ ���������� win1.ini�� ����Ѵ�.
    //win1.ini���� ���������� �����´�.


//               Login_f.lblStatus.Caption :=
//                    '  �����ͺ��̽��� �������Դϴ�.';
//               Login_f.lblStatus.Caption := '  ' +
//                    'MEDIRO�� ���� �ϴ� ���Դϴ�. ��� ��ٸ�����.';
//               Login_f.lblStatus.Caption :=
//                    '  ���̵�� �н����带 �Է��ϼ���.';
//               // ProgressBar1.stepby(50);
//               Application.ProcessMessages;
//               if not assigned(dm_f) then
//                    Application.CreateForm(TDM_f, DM_f);



 //              Login_f.lblStatus.Caption :=
 //                   '  �����ͺ��̽��� ����Ǿ����ϴ�.';
 //              Application.ProcessMessages;

end;

procedure TLogin_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TLogin_f.FormDestroy(Sender: TObject);
begin
     Login_f := nil;
end;


procedure TLogin_f.LoadPicture(filename:string);
var
     sFile : string;
begin

//     if FileExists(currentDir + 'Logos\logo_christmas_micellDra.jpg') then
       if FileExists(currentDir +  'Logos\'+filename) then
     begin

        sFile := ThumbnailFromImageFile(currentDir +  'Logos\'+filename, 330);
        imgintro.Picture.LoadFromFile(sFile);

      //    imgintro.Picture.LoadFromFile(currentDir +
      //   'Logos\mone_garden.JPG');
           //    'Logos\logo_christmas_micellDra.jpg');
     end
     else
     begin

         sFile := ThumbnailFromImageFile(currentDir +  'Logos\HealthHub_Logo.jpg', 330);
         imgintro.Picture.LoadFromFile(sFile);
     end;
end;

procedure TLogin_f.lblConSetupMouseEnter(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := clBlue;
     (Sender as TLabel).Font.Style := [fsUnderline];

end;

procedure TLogin_f.lblConSetupMouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Color := clOlive;
     (Sender as TLabel).Font.Style := [];

end;

//procedure TLogin_f.UpdateCheck;
//var
//     varVersionNo : string;
//begin
//
////     if LoadUpdateVersion = true then
////     begin
//
//
//     if LoadUpdateVersion = true then
//     begin
//
//         if UpdateLogFileDown = true then
//         begin
//              varVersionNo := LoadUpdateVersionNo;
//         end;
//
////          if not assigned(update_f) then
////          begin
////               update_f := Tupdate_f.Create(self);
////          end;
////          update_f.VersionNo := varVersionNo;
////          update_f.ShowModal;
//
//          //copyfile(pchar(currentDir + 'downtemp\SOM.log'), pchar(currentDir + 'SOM.log'), false);
//          //ShellExecute(0, 'open', Pchar(ExtractFilePath(Application.ExeName) + 'downloader.exe'), '', nil, SW_SHOWNORMAL);
//     end;
//     //
//     //        ShellExecute(0, 'open', Pchar(ExtractFilePath(Application.ExeName) + '\EzUpdater.exe'), '',
//     //                                   Pchar(ExtractFilePath(Application.ExeName) + '\EzUpdater'), SW_SHOWNORMAL);
//
//end;

//function TLogin_f.LoadUpdateVersion: Boolean;
//var
//     E: EIdException;
//     StrList: TStringList;
//     StrList2: TStringList;
//     varPresentVersion, varGetVersion: double;
//begin
//     StrList := TStringList.Create;
//     StrList2 := TStringList.Create;
//     //
//      {try
//           UpdateLogFileDown;
//      except
//           on E: Exception do
//           begin
//                showmessage(E.Message);
//                exit;
//           end;
//      end;
//      }
//     if UpdateLogFileDown = true then
//     begin
//
//          //updates\new\�� �ִ� dentro.log������ �����ͼ� ���� ��ȣ�� Ȯ���Ѵ�.
//          if FileExists(currentDir + 'updates\new\dentro.log') then
//          begin
//               StrList.LoadFromFile(currentDir +
//                    'updates\new\dentro.log');
//               varPresentVersion := strToFloat(StrList.Strings[0]);
//               DbupCount := strToint(StrList.Strings[1]);
//               StrList.Free;
//          end
//          else
//          begin
//
//               varPresentVersion := 0;
//          end;
//
//          //updates\Old�� �ִ� dentro.log������ �����ͼ� ���� ��ȣ�� Ȯ���Ѵ�.
//          if FileExists(currentDir + 'updates\old\dentro.log') then
//          begin
//
//               StrList2.LoadFromFile(currentDir +
//                    'updates\old\dentro.log');
//               if StrList2.Count > 0 then
//               begin
//
//                    varGetVersion := strToFloat(StrList2.Strings[0]);
//
//               end
//               else
//               begin
//                    varGetVersion := 0;
//               end;
//
//               //lblVersion.Caption := StrList2.Strings[0];
//               StrList2.Free;
//          end
//          else
//          begin
//
//               varGetVersion := 0;
//               //lblVersion.Caption := '00';
//
//          end;
//
//          if varGetVersion < varPresentVersion then
//          begin
//               result := true;
//          end
//          else
//          begin
//               result := false;
//          end;
//
//     end
//     else
//     begin
//          result := false;
//     end;
//end;

//log������ �ٿ�ε� �޾Ƽ� ���� ��ġ�� �������� �񱳸� �õ��Ѵ�.

//function TLogin_f.UpdateLogFileDown: boolean;
//
//var
////   dStream: TFileStream;
//   HTTP: TIdHTTP;
//   mStream: TMemoryStream;
//   url : string;
//begin
////     try
//
////          with idftp1 do
////          begin
////               dStream := TFileStream.Create(currentDir +
////                    'updates\new\dentro.log', fmCreate or
////                    fmShareExclusive);
////
////               username := 'gildata';
////               password := 'gkgjsdu0';
////               Host := 'gildata.hosting.paran.com';
////               Connect;
////               ChangeDir('public_html/files/down/dentro');
////               Get('dentro.log', dStream);
////               dStream.Free;
////               disconnect;
////
////               { dStream := TFileStream.Create(currentDir +
////                       'updates\new\uplist.rtf',
////                       fmcreate or fmShareExclusive);
////
////                username := 'gildata';
////                password := 'gkgjsdu0';
////                Host := 'gildata.hosting.paran.com';
////                Connect;
////
////                ChangeDir('public_html/files/down/dentro');
////                Get('uplist.rtf', dStream);
////                dStream.Free;
////
////                disconnect;
////               }
////               result := true;
////          end;
////
////          {  dStream := TFileStream.Create(currentDir +
////                 'downtemp\uplist.rtf', fmCreate or fmShareExclusive);
////            with idftp1 do
////            begin
////                 username := 'gildata';
////                 password := 'gkgjsdu0';
////                 Host := 'gildata.hosting.paran.com';
////                 Connect;
////                 ChangeDir('public_html/files/down/madang');
////                 Get('uplist.rtf', dStream);
////                 dStream.Free;
////                 disconnect;
////                 result := true;
////            end;
////           }
////     except
////          on E: Exception do
////          begin
////               ExceptLogging('������Ʈ ���� ���� ����.'
////                    +
////                    #10#13
////                    +
////                    E.Message);
////               showmessage('������Ʈ ���� ���� ����. ���ͳ� ���� ���¸� Ȯ���ϼ���.'
////                    +
////                    #10#13
////                    +
////                    E.Message);
////               dStream.Free;
////               result := false;
////               //exit;
////          end;
////     end;
//
//
//      try
//           try
//
//             HTTP :=  TIdHTTP.Create(self);
//             URL := TIdURI.URLEncode('http://hmslab.co.kr/dentro/dentro.log');
//
//             mStream:=TMemoryStream.Create;
//             HTTP.Get(URL, mStream );
//             mStream.SaveToFile(currentDir + 'updates\new\dentro.log');
//
//            finally
//
//             HTTP.Free;
//             FreeAndNil(mStream);
//             result := true;
//            end;
//
//       except
//          on E: Exception do
//          begin
//               ExceptLogging('������Ʈ ���� ���� ����.'
//                    +
//                    #10#13
//                    +
//                    E.Message);
//               showmessage('������Ʈ ���� ���� ����. ���ͳ� ���� ���¸� Ȯ���ϼ���.'
//                    +
//                    #10#13
//                    +
//                    E.Message);
//               mStream.Free;
//               result := false;
//               //exit;
//          end;
//     end;
//end;

procedure TLogin_f.btnConClick(Sender: TObject);
begin
     timer1.enabled := false;
     if not Assigned(dbSetting_f) then
          dbSetting_f := TdbSetting_f.Create(application);
     dbSetting_f.Showmodal();

end;

procedure TLogin_f.btnNetClick(Sender: TObject);
begin
     timer1.enabled := false;
{     if not Assigned(netMeeting_f) then
     begin
          netMeeting_f := TnetMeeting_f.Create(Self);
          netMeeting_f.Showmodal;
     end;
 }
      ShellExecute(GetDeskTopWindow, 'open',
           Pchar('IEXPLORE.EXE'), '939.co.kr/inter', nil, SW_SHOWNORMAL);

end;

procedure TLogin_f.btnUserClick(Sender: TObject);
begin

     if dm_f.ConnectDatabase(configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser, configvalue.varDbpass,
          configvalue.varDbProtocol,
                          configvalue.varDbPort) = true then
     begin
          //��ϵ� ����ڰ� ���� ��츸 ��� ����.

          with Dm_f.SqlTemp do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_sawon_basic where and  NoUse <>''1''');
               open;
               last;
               if isEmpty then
               begin

//                    if not Assigned(sawon_f) then
//                         sawon_f := Tsawon_f.Create(application);
//                    {with sawon_f do
//                     begin
//                          pnlsawonlist.Visible := false;
//                          sapoweredit.Items.Clear;
//                          sapoweredit.Items.Add('guest');
//                     end;
//                     }
//                    sawon_f.Showmodal();
               end
               else
               begin
                    showmessage('��ϰ����� �����ڿ��� �����ϼ���.');
               end;
          end;

     end;
end;

procedure TLogin_f.btnenvClick(Sender: TObject);
begin
     //111
end;

function TLogin_f.GaejumCheck: boolean;
begin
     //�����۾��� �����ϸ�, ���ڵ尡  �ִ��� �˻��Ѵ�.

     with dm_f.sqlWork do
     begin
          CLose;
          Sql.Clear;
          Sql.Add('Select * from ma_gaejum');
          Sql.Add('Where GPandate = :GPandate and GPosNo= :GPosNo and Bigo= :Bigo');
          ParamByName('GPandate').AsString := FormatDateTime('yyyy-mm-dd',
               now);
          ParamByName('GPosNo').AsString := '01';
          ParamByName('Bigo').AsString := '����';
          Open;
     end;

     if dm_f.sqlWork.RecordCount > 0 then
     begin
          result := true;
          exit;
     end
     else
     begin
          result := false;
          exit;
     end;

end;

function TLogin_f.UserCheck: string;
//�α����� �ϸ�, ���� ��� ���켭 �� ���߿� ���� ������� Ȯ���Ѵ�.
var
     chasu: string;
begin

     //�����۾��� �����ϸ�, ���ڵ尡  �ִ��� �˻��Ѵ�.

     with dm_f.sqlWork do
     begin
          CLose;
          Sql.Clear;
          Sql.Add('Select * from ma_gaejum');
          Sql.Add('Where GPandate = :GPandate and GPosNo= :GPosNo and ((bigo <> ''����'') ANd (bigo <> ''����'')) ');
          Sql.Add('Order by GPanTime');
          ParamByName('GPandate').AsString := FormatDateTime('yyyy-mm-dd',
               Now);
          ParamByName('GPosNo').AsString := '01';
          Open;
          Last
     end;
     if dm_f.sqlWork.RecordCount > 0 then
     begin
          Chasu := IntToStr(dm_f.sqlWork.RecordCount);
          result := dm_f.sqlWork.FieldByName('GPanName').AsString + '/' +
               chasu;
          exit;
     end
     else
     begin
          Chasu := '1';
          result := '' + '/' + chasu;
          Exit;
     end;
end;


function TLogin_f.DropView: Boolean;
const
     dropViewText = 'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[view_gogek]'') and OBJECTPROPERTY(id, N''IsView'') = 1)'
          + #10#13 +
          'drop view [dbo].[view_gogek]';
begin

     try
          with Dm_f.SqlWork do
          begin
               sql.Text := dropViewText;
               ExecSQL;

          end;
          result := true;
     except
          result := False;
     end;
end;

function TLogin_f.CreateView: boolean;
var
     upSuccess: boolean;
     dbConts: TstringList;
     lineCount, i: integer;
     path: string;
begin

     path := extractFilepath(ParamStr(0)) + 'DownTemp\';
     try

          dbConts := TStringList.Create;
          dbConts.LoadFromFile(path + 'view_gogek.txt');
          lineCount := dbConts.Count;
          with Dm_f.SqlWork do
          begin
               close;
               sql.Clear;
               //Create view�� �ϰ�ó�������� �׻� ù°���̾�� ��.
               for i := 0 to linecount - 1 do
                    sql.Text := sql.Text + dbConts.Strings[i];
               ExecSQL;
          end;
          result := true;
     except
          result := False;
     end;
end;


procedure Tlogin_f.sugaChange;
var
     strProgram: string;
     strName1: string;
     strName2: string;
     varupdate: boolean;
begin
     with dm_f.sqlwork do
     begin
          close;
          sql.clear;
          sql.add('delete from suga');
          sql.add('where su_key=''205'' '); //�� �л����ġ�� ����
          execsql;
          close;
          sql.clear;
          sql.add('update suga set');
          sql.add('su_apply=''2011-01-01'',bo_day=''2011-01-01'', bo_dan=10950, su_point=156.25 ');
          sql.add('where su_key=''MX032'' '); //�� �л����ġ�� ������Ʈ
          execsql;
     end;
     ChangeWrite(
          formatdatetime('YYYY-MM-DD', now),
          'U', //���Ƿ� �߰��Ѱ��� U, ���Լ���������Ʈ�� S
          '�л����');
end;





procedure TLogin_f.Label3Click(Sender: TObject);
begin

     ShellExecute(Handle, 'Open', 'dentrosql.reg', '', '', SW_SHOWNORMAL);
     //  WinExec('Regedit.exe D:\Register.reg', SW_SHOWNORMAL);

end;

procedure TLogin_f.btninfoClick(Sender: TObject);
var
     obj: TNetworkAdapterInfo;
     i: integer;
begin
//     timer1.enabled := false;
//     obj := TNetworkAdapterInfo.Create;
//
//     if not Assigned(pcinfo_f) then
//          pcinfo_f := Tpcinfo_f.Create(application);
//     with pcinfo_f do
//     begin
//          caption := 'IP����';
//          memo1.lines.clear;
//          for i := 0 to obj.Cnt - 1 do
//               with Memo1.Lines, obj do
//               begin
//                    Add('------------------------------');
//                    Add('ip:' + obj.Item[i].Ip);
//                    Add('SubnetMask:' + Item[i].SubnetMask);
//                    Add('Broadcast:' + Item[i].Broadcast);
//                    if Item[i].InterfaceUp then
//                         Add('InterfaceUp ����')
//                    else
//                         Add('InterfaceDwon ����');
//
//                    if Item[i].BroadcastSupported then
//                         Add('BroadcastSupported ����')
//                    else
//                         Add('BroadcastSupported Not ����');
//
//                    if Item[i].InterfaceState = isLoopback then
//                         Add('isLoopback ����')
//                    else
//                         Add('isNetwork ����');
//               end;
//          showmodal;
//     end;
//     obj.free;
end;

procedure TLogin_f.Label5Click(Sender: TObject);
var
  InterConnect:boolean;
  VarUrl : string;
begin
    timer1.enabled := false;
    VarUrl :=  TIdURI.URLEncode('http://www.naver.com');
  //IdHTTP1.Host:='http://ysaraha.ttongfly.net/';


 try
    IdHTTP1.Get( varUrl) ;

//���ͳݿ� ����Ǿ� ���� ������ �����߻�
    ShowMessage('�� ��ǻ�ʹ� ���ͳݿ� ���� �Ǿ� �ֽ��ϴ�.');

  except
          on E: Exception do
          begin
               ShowMessage('�� ��ǻ�ʹ� ���ͳݿ� ���� �Ǿ� ���� �ʽ��ϴ�.'+#10#13+
               E.Message);
          end;
  end;


//     showmessage('���� �ߴܵ�(2014.09.19)');
 {    if InetIsOffline(0) then
          ShowMessage('This computer is not connected to Internet!')
     else
          ShowMessage('You are connected to Internet!');
  }
end;

procedure TLogin_f.Timer1Timer(Sender: TObject);
begin
     //       Forms.Application.ProcessMessages;
     if cbAuto.checked = false then
          exit;

     lblStatus.caption := inttostr(20 - timei) + '�� �� �ڵ� �α��ε˴ϴ�.';
     if timei > 20 then
     begin
          timer1.enabled := false;
          BtnLoginClick(self);
     end
     else
     begin
          advProgress1.Position := (100 div 20) * timei;

          timei := timei + 1;
     end;

end;

procedure TLogin_f.cbAutoClick(Sender: TObject);
begin
     timer1.enabled := false;
     advProgress1.Position := 0;
     lblStatus.caption := '�α��� �Ͻʽÿ�.';
end;

procedure TLogin_f.cbLoginWithCertClick(Sender: TObject);
var
   isCorrectCert: boolean ;
   varWonJuminNo :string;
begin

     timer1.enabled := false;



      if trim(edtId.Text) ='' then
      begin
          showmessage('���̵� �Է��Ͻ� �� ���� �ϼ���.');
          edtId.SetFocus;
          exit;
      end;


     //DB Connect
//     if dm_f.ConnectDatabase(configvalue.varDbip,
//          configvalue.varDbname,
//          configvalue.varDbuser,
//          configvalue.varDbpass,
//          configvalue.varDbProtocol,
//          configvalue.varDbPort) = true then
//     begin
//           //serverkind := 0;
//           configvalue.LoadGlobalData_db;
//           configvalue.LoadQueryFunc(configvalue.varDbProtocol);
//
//     end;
//
//
//     varWonJuminNo := loadWonJuminNo(edtId.Text);
//
//          CertProcess(
//                   '1' ,  // chartComment,
//                   '1' ,  // chartSeq,
//                   varWonJuminNo,//�����ֹ�
//                   isCorrectCert );
//
//     if isCorrectCert = false then
//     begin
//         cbLoginWithCert.Checked := true;
//    end;

 end;

procedure TLogin_f.Label5MouseEnter(Sender: TObject);
begin
     //     (Sender as TLabel).Font.Color := clGreen;
     (Sender as TLabel).Font.Style := [fsUnderline, fsbold];

end;

procedure TLogin_f.Label5MouseLeave(Sender: TObject);
begin
     //     (Sender as TLabel).Font.Color := clGreen;
     (Sender as TLabel).Font.Style := [];

end;

procedure TLogin_f.LoadNews;
begin
     pnlHtml.text :=
          '<BR><IMG src="idx:4"><A href="News1"> ���ο� �ҽ��� �����ϴ�.</A> ' +
          '<BR><BR><IMG src="idx:4"><A href="News1"> ���ο� �ҽ��� �����ϴ�.</A> ' +
          '<BR><BR><IMG src="idx:4"><A href="News1"> ���ο� �ҽ��� �����ϴ�.</A> ' +
          '<BR><BR><IMG src="idx:5"><A href="news1"> ���ο� �ҽ��� �����ϴ�.</A> ';
end;

procedure TLogin_f.Label7Click(Sender: TObject);
begin
//     ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://cafe.naver.com/ezzen/318', nil, SW_SHOWNORMAL);
//   ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=207', nil, SW_SHOWNORMAL);
   ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://hmslab2.cafe24.com/xe/board_jjuG37/229', nil, SW_SHOWNORMAL);

 //   http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=207


end;

procedure TLogin_f.Label8Click(Sender: TObject);
begin
//     ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://cafe.naver.com/ezzen/317', nil, SW_SHOWNORMAL);

// ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'),
//       'http://hmslab2.cafe24.com/xe/board_jjuG37/208', nil, SW_SHOWNORMAL);
 ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'),
       'http://hmslab2.cafe24.com/xe/board_jjuG37/231', nil, SW_SHOWNORMAL);

end;

procedure TLogin_f.Label9Click(Sender: TObject);
begin
     ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=194', nil, SW_SHOWNORMAL);
end;

procedure TLogin_f.edtpassKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          BtnLoginClick(self);
end;


function TLogin_f.MakeID: boolean;
var
     i: integer;
begin
     result := false;
     //��� Table�� ID�� �־�����...
     try
          for i := 0 to listbox1.count - 1 do
          begin

               if listbox1.Items[i] <> '' then
               begin
                    with Dm_f.SqlWork do
                    begin
                         close;
                         sql.clear;
                         Sql.Add('Select top 1 * from ' + listbox1.Items[i]);
                         Open;
                    end;

                    if Dm_f.SqlWork.FindField('id') = nil then
                    begin
                         with Dm_f.SqlTemp do
                         begin
                              close;
                              sql.clear;
                              sql.add('alter table  ' + listbox1.Items[i]);
                              sql.add('ADD ID int identity(1,1) not null');
                              execsql;
                         end;
                    end;
               end;
               result := true;
          end;
     except
          result := false;
     end;
end;

function TLogin_f.MakeModDay: boolean;
var
     i: integer;
begin
     result := false;
     //Blob�ʵ带 ����  Table�� ModDay�� �־�����...
     try
          for i := 0 to listbox2.count - 1 do
          begin

               if listbox2.Items[i] <> '' then
               begin
                    with Dm_f.SqlWork do
                    begin
                         close;
                         sql.clear;
                         Sql.Add('Select top 1 * from ' + listbox2.Items[i]);
                         Open;
                    end;

                    if Dm_f.SqlWork.FindField('modday') = nil then
                    begin
                         with Dm_f.SqlTemp do
                         begin
                              close;
                              sql.clear;
                              sql.add('alter table  ' + listbox2.Items[i]);
                              sql.add('ADD ModDay datetime null');
                              execsql;
                         end;
                    end;
               end;
               result := true;

          end;
     except
          result := false;
     end;
end;

procedure TLogin_f.fileWebUpdate;
var
     varpath: string;
     varVersionNo : string;
begin
//
//     //if LoadUpdateVersion = true then
//     //begin
//
//     if UpdateLogFileDown = true then
//     begin
//          varVersionNo := LoadUpdateVersionNo;
//     end;
//
//     varpath := ExtractFilePath(ParamStr(0));
//     try
//          KillProcess('downloader.exe') // �������� ���� ����
//     except
//          on E: Exception do
//          begin
//               showmessage(E.Message);
//               exit;
//          end;
//     end;
//
//     if fileExists(varpath + 'downtemp\downloader.zip') then
//     begin
//          if W_UnZip(varpath + 'downtemp\', 'downloader.zip',
//               varpath, zipmasterprogress) = true then
//          begin
//
//               ShellExecute(GetDeskTopWindow, 'open', Pchar(varpath
//                    + 'downloader.exe'), pchar(varVersionNo) , nil, SW_SHOWNORMAL);
//
//          end;
//     end
//     else
//     begin
//          ShellExecute(GetDeskTopWindow, 'open', Pchar(varpath +
//               'downloader.exe'),  pchar(varVersionNo) , nil, SW_SHOWNORMAL);
//     end;
//     //end;
end;


{
procedure Tlogin_f.ZipMasterProgress(Sender: TObject;
     ProgrType: ProgressType; Filename: string; FileSize: int64); // integer);
var
     Step: Integer;
begin
     case ProgrType of
          TotalSize2Process:
               begin
                    RichEdit1.Lines.Add('Total uncompressed size: ' +
                         IntToStr(FileSize div 1024) + ' Kb');
                    with advprogress1 do
                    begin
                         Max := 10001;
                         Position := 1; // Current position of bar.
                         Step := 100;
                    end;
                    TotalSize1 := FileSize;
                    TotalProgress1 := 0;
               end;
          TotalFiles2Process:
               begin
                    RichEdit1.Lines.Add(IntToStr(FileSize) +
                         ' files to add');
               end;
          NewFile:
               begin
                    //  FileBeingZipped.Caption := Filename;
               end;
          ProgressUpdate:
               begin
                    TotalProgress1 := TotalProgress1 + FileSize;
                    if TotalSize1 <> 0 then
                    begin
                         {$IFDEF VER120} // D4
 {                        Step := Integer(Int64(TotalProgress1) *
                              Int64(10000) div Int64(TotalSize1));
                         {$ELSE} // D2 and D3
{                         try
                              Step := Round(TotalProgress1 * 10000 /
                                   TotalSize1);
                         except
                              Step := 2147483647;
                         end;
                         {$ENDIF}
{                         advprogress1.Position := 1 + Step;
                    end
                    else
                         advprogress1.Position := 10001;
               end;
          EndOfBatch: // Reset the progress bar and filename.
               begin
                    //    FileBeingZipped.Caption := '';
                    advprogress1.Position := 1;
               end;
     end; // EOF Case
     Application.ProcessMessages;
end;
}



procedure TLogin_f.ZipMasterProgress(Sender: TObject; details:
    TZMProgressDetails);
begin
   case Details.Order of
      TotalSize2Process:
         begin
                    RichEdit1.Lines.Add( 'Total size: ' + IntToStr(Details.TotalSize div 1024 ) + ' Kb');
                    with advprogress1 do
                    begin
                         Max := 100;
                         Position := 1; // Current position of bar.
                        // Step := 100;
                    end;
//            MsgForm.StatusBar1.Panels.Items[0].Text :=
//             'Total size: ' + IntToStr(Details.TotalSize div 1024 ) + ' Kb';
//            MsgForm.ProgressBar2.Position := 1;
//            MsgForm.ProgressBar1.Max := 100;
//            MsgForm.ProgressBar2.Max := 100;
         end;
      TotalFiles2Process:
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type TotalFiles, files= ' + IntToStr( FileSize ) );
                    RichEdit1.Lines.Add( IntToStr(details.TotalCount) +   ' files to add');
         end;
      NewFile:
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type NewFile, size= ' + IntToStr( FileSize ) );
//            MsgForm.FileBeingZipped.Caption := details.ItemName;
//            MsgForm.ProgressBar1.Position   := 1;         // Current position of bar.
//            TotalSize1                      := details.ItemSize;
//            TotalProgress1                  := 0;
 //  FileBeingZipped.Caption := Filename;
          end;
      ProgressUpdate:
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type Update, size= ' + IntToStr( FileSize ) );
            // FileSize gives now the bytes processed since the last call.
//            TotalProgress1 := TotalProgress1 + FileSize;
//            TotalProgress2 := TotalProgress2 + FileSize;
//            if TotalSize1 <> 0 then
//            begin
//               {$IFDEF VERD6up}
//               Step := Integer( Int64(TotalProgress1) * Int64(10000) div Int64(TotalSize1) );
//               {$ELSE}
//               // D4+   (D5 gives a compiler error when using Int64 conversion!?)
//               Step := MulDiv(TotalProgress1, 10000, TotalSize1);
//               {$ENDIF}
               // ZipMaster1Message( self, 0, 'Step = ' + IntToStr( Step ) );
               advprogress1.Position := details.ItemPerCent;
//            end else
//               MsgForm.ProgressBar1.Position := 10001;
//            if TotalSize2 <> 0 then
//            begin
//               {$IFDEF VERD6up}
//               Step := Integer( Int64(TotalProgress2) * Int64(10000) div Int64(TotalSize2) );
//               {$ELSE}
//               Step := MulDiv(TotalProgress2, 10000, TotalSize2);
//               {$EndIf}
               advprogress1.Position := details.TotalPerCent;
//            end;
         end;
      EndOfBatch:    // Reset the progress bar and filename.
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type EndOfBatch' );
//            MsgForm.FileBeingZipped.Caption   := '';
//            MsgForm.ProgressBar1.Position     := 1;
//            MsgForm.StatusBar1.Panels[0].Text := '';
//            MsgForm.StatusBar1.Panels[1].Text := '';
//            MsgForm.ProgressBar2.Position     := 1;
              advprogress1.Position := 1;
         end;
   end;   // EOF Case
end;

procedure TLogin_f.Label10Click(Sender: TObject);
begin
     timer1.enabled := false;

     fileWebUpdate; //���⼭�� ������ȣ�� ������� ������ ������Ʈ �Ѵ�.
end;

procedure TLogin_f.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if (ssShift in shift) and (key = vk_F3) then
     begin

          timer1.enabled := false;

          btnCon.visible          := not btnCon.visible;
          cbRIS.visible           := not cbRIS.visible;
          cbLoginWithCert.visible := not cbLoginWithCert.visible;
     end;

end;



procedure TLogin_f.Label11Click(Sender: TObject);
begin
//     ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://cafe.naver.com/ezzen/541', nil, SW_SHOWNORMAL);  //�� ġ������ ��������ȳ�(2013.7.1����)
    ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://hmslab2.cafe24.com/xe/board_jjuG37/200', nil, SW_SHOWNORMAL);
end;


procedure  TLogin_f.DbCheckNup;
const
     SQL_INSERT_DATA = 'INSERT INTO ma_config                    ' + #13#10 +
          ' (code, val)                          ' + #13#10 +
          ' VALUES                                              ' + #13#10 +
          ' (:code, :val)                        ';

     SQL_UPDATE_DATA = 'UPDATE ma_config SET ' + #13#10 +
          '                    val  = :val' + #13#10 +
          '              WHERE code=:code';

var
     dbstat: integer;
     path: string;
     dbConts: TstringList;
     i, linecount: integer;
     UpSuccess: boolean;
begin
     upSuccess := false;
     path := extractFilepath(ParamStr(0));
     //������Ʈ�� DB������ ������  ������Ʈ �Ŀ� 0���� ���´�.
     //DbUp.txt�� ������ ��� ������Ʈ �ȴ�.
     with Dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select code, [dbUpcount]  from (');
          Sql.Add('Select code,  ' + configvalue.varisNull + '(Max(val),0) as [dbUpcount]  from ma_config  group by code) as X');
          Sql.Add('Where code=:code                                                 ');
          ParamByName('code').AsString := '0000';
          open;
          if not isEmpty then
          begin
               if fieldByname('dbUpCount').asString <> '' then
                    dbstat := fieldByname('dbUpCount').Asinteger
               else
                    dbstat := 0;
          end
          else
          begin
               dbStat := 0;
          end;
     end;
     if (dbStat < dbUpcount) and fileexists(path + 'dbup.txt') then
     begin
          try
               dbConts := TStringList.Create;
               dbConts.LoadFromFile(path + 'dbup.txt');
               lineCount := dbConts.Count;
               with Dm_f.SqlWork do
               begin
                    for i := 0 to linecount - 1 do
                         sql.Text := sql.Text + dbConts.Strings[i];
                    ExecSQL;
               end;
               upSuccess := true;
          except
               upSuccess := False;
          end;
     end;
     if upSuccess = true then
          with Dm_f.SqlTemp do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_config');
               Sql.Add('Where code=:code');
               ParamByName('code').AsString := '0000';
               open;
               if Dm_f.SqlTemp.isEmpty then
                    SQL.Text := SQL_INSERT_DATA
               else
                    SQL.Text := SQL_Update_DATA;
               ParamByName('code').AsString := '0000';
               ParamByName('val').AsString := inttostr(dbUpcount);
               ExecSQL;
          end;
end;

procedure TLogin_f.edtidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
     path: string;
     FormInit: Tinifile;

begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);

     case key of
          VK_F4:
               begin

                    cbImageSync.Checked:= not  cbImageSync.Checked;

               end;
     end;

     if cbImageSync.Checked then
     begin
          FormInit.WriteString('ETC', 'ImageSyncCheck', '1');
     end
     else
     begin
          FormInit.WriteString('ETC', 'ImageSyncCheck', '0');

     end;
     FormInit.Free;
end;

procedure TLogin_f.Image7DblClick(Sender: TObject);
begin

          btnCon.visible := not btnCon.visible;

end;

procedure TLogin_f.FormCreate(Sender: TObject);
//var
//     varmaclist: TStringList;
begin
//
//
//    // ENCRYPT_MARK := '123'; // 'OURGREANGELHART��';
//     //���ּ� �ҷ�����...
//     varmaclist:= TStringList.Create;
//     Get_AdaptersInfo(varmaclist);

     isAdvtiseShowed := false;
end;

procedure TLogin_f.Label12Click(Sender: TObject);
begin
    ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=202', nil, SW_SHOWNORMAL);

 //   http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=207
end;

procedure TLogin_f.Label13Click(Sender: TObject);
begin
   ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'),
       'http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=215', nil, SW_SHOWNORMAL);

end;

procedure TLogin_f.Label14Click(Sender: TObject);
begin
//     ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'), 'http://cafe.naver.com/ezzen/317', nil, SW_SHOWNORMAL);

 ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'),
       'http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=227', nil, SW_SHOWNORMAL);

end;

procedure TLogin_f.Label16Click(Sender: TObject);
begin
 ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'),
       'http://hmslab2.cafe24.com/xe/board_jjuG37/318', nil, SW_SHOWNORMAL);

end;

procedure TLogin_f.CheckBox1Click(Sender: TObject);
begin
      //panel8.Visible := false;
      //Login_f.width:= 800 - 217;
end;

procedure TLogin_f.FormActivate(Sender: TObject);
begin
   if isAdvtiseShowed = false then
   begin
     isAdvtiseShowed := true;

//     advertise_f:= Tadvertise_f.Create(application);
//     advertise_f.show;


     advertise_f.left := login_f.Left + login_f.Width;
     advertise_f.top := login_f.top ;
     advertise_f.height :=  login_f.height;
   end;

end;



procedure TLogin_f.FrontImageUpdateCheckNLoad;
var
    FormInit : Tinifile;
     Path : string;
     localImageName : string;
     ServerImageName : string;

begin


     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     localImageName:= FormInit.ReadString('FRONTImage', 'imagename',  'HealthHub_Logo.jpg');
     //              FormInit.WriteString('SCHEDULE', 'VIEW', '0');

     FormInit.free;

     ServerImageName := LoadServerFrontImageName ;


     if localImageName <>  ServerImageName then
     begin

         if fileExists(currentDir +  'Logos\'+ServerImageName)  then
         begin
              loadPicture(ServerImageName);
         end
         else
         begin


              if   DownFrontImage(ServerImageName ) = true then
              begin
                  loadPicture(ServerImageName);
              end
              else
              begin
                  loadPicture(localImageName);
              end;
         end;

     end
     else
     begin
          if fileExists(currentDir +  'Logos\'+ServerImageName)  then
         begin
              loadPicture(ServerImageName);
         end
     end;

end;



function TLogin_f.LoadServerFrontImageName: string;
var
   HTTP: TIdHTTP;
//   mStream: TMemoryStream;
   url : string;
begin
      result:='';
      try
           try

             HTTP :=  TIdHTTP.Create(self);

          //http://1.255.226.204/dangjindent/files_h/update_HHPMS/HHPMS.zip
          //   URL := TIdURI.URLEncode('http://hmslab.co.kr/dentro/frontimage.log');

         //    URL := TIdURI.URLEncode('http://1.255.226.204/dangjindent/files_h/update_HHPMS/frontimage.log');
            URL := TIdURI.URLEncode('http://hmslab.co.kr/dangjindent/files_h/update_HHPMS/frontimage.log');


           //  mStream:=TMemoryStream.Create;
           //  HTTP.Get(URL, mStream );
             result:=  HTTP.Get(URL);
          //   mStream. .SaveToFile(currentDir + 'updates\new\dentro.log');

            finally

             HTTP.Free;
            // FreeAndNil(mStream);
            // result := true;
            end;

       except
          on E: Exception do
          begin
               ExceptLogging('Front Image Log Down fail.'
                    +
                    #10#13
                    +
                    E.Message);

                    result:='';
              // showmessage('������Ʈ ���� ���� ����. ���ͳ� ���� ���¸� Ȯ���ϼ���.'
             //       +
             //       #10#13
             //       +
             //       E.Message);
             //  mStream.Free;
             //  result := false;
               //exit;
          end;
     end;
end;

function TLogin_f.DownFrontImage(filename:string): boolean;
var
   HTTP: TIdHTTP;
   mStream: TMemoryStream;
   url : string;
begin
      result:=false;
      try
           try

             HTTP :=  TIdHTTP.Create(self);
           //  URL := TIdURI.URLEncode('http://1.255.226.204/dangjindent/files_h/update_HHPMS/frontimage/'+filename);
              URL := TIdURI.URLEncode('http://hmslab.co.kr/dangjindent/files_h/update_HHPMS/frontimage/'+filename);

             mStream:=TMemoryStream.Create;
             HTTP.Get(URL, mStream );

             mStream.SaveToFile(currentDir + 'Logos/'+filename);

            finally

             HTTP.Free;
             FreeAndNil(mStream);
             result := true;
            end;

       except
          on E: Exception do
          begin
               ExceptLogging('Front Image File Down fail.'
                    +
                    #10#13
                    +
                    E.Message);

                    result:=false;
              // showmessage('������Ʈ ���� ���� ����. ���ͳ� ���� ���¸� Ȯ���ϼ���.'
             //       +
             //       #10#13
             //       +
             //       E.Message);
             //  mStream.Free;
             //  result := false;
               //exit;
          end;
     end;
end;







procedure TLogin_f.CertProcess(
     varChartComment : widestring;
     varChartSSeq:string;
     varDoctorJumin:string;
     var isCorrectCert: boolean);
var
     varElectsignedData : widestring;
     varPKCS7SignedData: widestring;
     varSignCert : WideString;
     varTimeStamp  : WideString;

     varCertIniPath : string;
     path : pAnsichar;

     ProPath : string;

     bCertValid : Boolean;

     varPosition: integer;

begin

      varPosition:=0;


          //���⼭���ʹ� ����������
      bCertValid := false;

  //    if dm_f.configvalue.varCert <> '1' then
  //    exit;

   //   ExpandEnvironmentStrings('%ProgramFiles%', Path, 256);
      propath:= GetProgramFilesDir + '\SignGATE\SecuTimeStamp\conf\server.ini';

      if  fileExists(proPath) then
            varCertIniPath  :=  propath// 'C:\Program Files (x86)\SignGATE\SecuTimeStamp\conf\server.ini'
      else
      begin
        varCertIniPath  := '';
        showmessage('TimeStamp ��������� ��ġ�ϼ���.');
        exit;
      end;


          try
               if varChartComment <> '' then
               begin

                      application.ProcessMessages;
                      varPosition:=20;

                      varSignCert :=   LoadSignCert2(  varDoctorJumin , isCorrectCert); //�����ֹι�ȣ



//                     application.ProcessMessages;
//                     varPosition:=40;
//                     varElectsignedData := DoElectSign(varChartComment).ElectsignedData;
//                     application.ProcessMessages;
//                     varPosition:=50;
//                     varPKCS7SignedData:=  DoElectSign(varChartComment).PKCS7SignedData;
//
//                     application.ProcessMessages;
//                      varPosition:=60;
//
//                     varTimeStamp := callTimeStamp( varCertIniPath ,  varChartComment);
//
//                     application.ProcessMessages;
//                      varPosition:=70;

                    bCertValid := varTSG_CAppAtx.ValidateCert(varSignCert ); //'����������


//                     application.ProcessMessages;
//                     varPosition:=80;
//
//                    if  bCertValid = true then
//                         saveDBCert(varChartComment, varSignCert , varElectsignedData, varPKCS7SignedData, varTimeStamp,  varChartSseq)
//
//                     else
//                     begin
//                         varTSG_CAppAtx.UnloadUserKeyCert;
//                     end;

//                      varPosition:=100;

               end;

           except
                   on E: Exception do
                      begin
                           exceptLogging('Cert Insert for Update '+ E.Message);

                      end;

           end;

end;

end.

