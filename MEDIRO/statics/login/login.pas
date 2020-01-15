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
     IdHTTP, IdURI, OleCtrls, SHDocVw, AdvUtil
      ;

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
          pnlHtml: TAdvPanel;
          Label8: TLabel;
          ListBox1: TListBox;
          ListBox2: TListBox;
          RichEdit1: TRichEdit;
          AdvGridExcelIO1: TAdvGridExcelIO;
          AdvStringGrid1: TAdvStringGrid;
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
    Label18: TLabel;
    lblKind: TLabel;
          procedure FormShow(Sender: TObject);
          procedure BtnCancelClick(Sender: TObject);
          procedure edtIdKeyPress(Sender: TObject; var Key: Char);
          procedure BtnLoginClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure lblConSetupMouseEnter(Sender: TObject);
          procedure lblConSetupMouseLeave(Sender: TObject);
          procedure btnConClick(Sender: TObject);
          procedure btnUserClick(Sender: TObject);
          procedure Timer1Timer(Sender: TObject);
          procedure cbAutoClick(Sender: TObject);
          procedure Label5MouseEnter(Sender: TObject);
          procedure Label5MouseLeave(Sender: TObject);
          procedure edtpassKeyPress(Sender: TObject; var Key: Char);
    procedure edtidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
           procedure  FrontImageUpdateCheckNLoad;
           function  LoadServerFrontImageName: string;
           function  DownFrontImage(filename:string): boolean;

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
     uFunctions,
     uGogekData,
     uSysinfo,
     uStaticsMain ;

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

          {$IFNDEF DEBUG}
        //     btnCertTest.Visible := false;
          {$ENDIF DEBUG}


       lblKind.Caption := '[HPMS statistics]';
       caption := 'Login to HPMS statistics';




     timei := 0;
     advProgress1.Min := 0;
     advProgress1.position := 0;
     advProgress1.Max := 100;

     currentDir := ExtractFilePath(paramStr(0));




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


          if configvalue.varAutoLogin = '1' then
          begin

               cbauto.Checked := true;
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



     timer1.Enabled := true;




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
          showmessage('ID�� �Է��ϼ���.');
          Edtid.Setfocus;
          exit;
     end;
     if EdtPass.Text = '' then
     begin
          showmessage('Password�� �Է��ϼ���.');
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


//          {$IFNDEF DEBUG}
//          if cbRis.Checked = true then
//           begin
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
//           end;
//          {$ENDIF DEBUG}



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
                    //�����۾�----------------------------------------------




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


     application.ProcessMessages;
     lblStatus.Caption := '�����ͺ��̽�������Ʈ�Ϸ�';





     application.ProcessMessages;

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
procedure TLogin_f.edtpassKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          BtnLoginClick(self);
end;



procedure TLogin_f.edtidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
     path: string;
     FormInit: Tinifile;

begin
     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.Free;
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



end.

