unit Cid;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs,  ExtCtrls  , StdCtrls,
       Buttons,   Menus, AdvProgressBar, DB,
       IdHTTP,  IdExplicitTLSClientServerBase, jpeg, Grids, AdvObj,
       BaseGrid, AdvGrid, AdvUtil , gogekAlretFrame;
type
   TDownloadThread = class(TThread)
   private
     HTTP: TIdHTTP;
     URL, savepath: String;
     iCnt : Integer;
     FListBox: TListBox;

     procedure DisplayFatalException;


   protected
     procedure Execute; override;
     procedure Display;
     procedure DoTerminate; override;
   public
          DownloadThread : TDownloadThread;

     constructor Create(const AURL, Asavepath: String; Aindex:integer); reintroduce;
     destructor Destroy; override;

    end;

const
  MY_MESSAGE = WM_USER + 4242;

  
type
       TCID_f = class(TForm)
              Timer1: TTimer;
              edtName: TEdit;
              edtChart: TEdit;
              edtTel: TEdit;
              lblTrcode: TLabel;
              progressbar: TAdvProgressBar;
              lblJuso: TLabel;
              lblTime: TLabel;
              lblnumber: TLabel;
              lblName: TLabel;
              lblChart: TLabel;
              LblTelnumber: TEdit;
              lblTelDate: TLabel;
              lblStatus: TLabel;
              memTelRec: TMemo;
              lblgender: TLabel;
              Button1: TButton;
              Button2: TButton;
              Button3: TButton;
              lblvarKind: TLabel;
              GrdTelRec: TAdvStringGrid;
              btnRefresh: TButton;
              btnSave: TButton;
              btnSave2: TButton;
              btnInfo: TButton;
              btnTelMem: TButton;
              spSkinButton1: TButton;
              spSkinButton2: TButton;
              lblCap: TLabel;
              spSkinLabel2: TLabel;
              spSkinLabel3: TLabel;
              spSkinLabel4: TLabel;
              Panel1: TPanel;
              pnlSave: TPanel;
              pnlTelNoRegi: TPanel;
              Panel3: TPanel;
              Pic: TImage;
              procedure FormShow(Sender: TObject);
              procedure Timer1Timer(Sender: TObject);
              procedure Button1Click(Sender: TObject);
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
              procedure btnSave2Click(Sender: TObject);
              procedure btnSaveClick(Sender: TObject);
              procedure edtNameKeyPress(Sender: TObject; var Key: Char);
              procedure btnRefreshClick(Sender: TObject);
              procedure btnTelMemClick(Sender: TObject);
              procedure btnInfoClick(Sender: TObject);
              procedure spSkinButton1Click(Sender: TObject);
              procedure spSkinButton2Click(Sender: TObject);
              procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
              procedure FormCreate(Sender: TObject);
              procedure Button2Click(Sender: TObject);
              procedure Button3Click(Sender: TObject);
    procedure GrdTelRecClickCell(Sender: TObject; ARow, ACol: Integer);

       private
              { Private declarations }
              loadresult: integer; //환자 검색 결과,
              TelRegiCase: integer;

               picpath: string;
               picpath_face: string;

              procedure FieldClear;
              procedure Sayhangul;
              procedure LoadPicture(chartNo: string);
    procedure showGogekAlret(varChart, varName: string;   varKind: Integer = 0);


       public
              { Public declarations }

              DownloadThread : TDownloadThread;
              CurrentFile: string;
              l_time: integer;
              procedure TelnoSet(RcvTelNo: string);
              procedure LoadFacePic(filename: string);

              //uKTCid에서 보내주는 값을 받아오자.
              procedure MessageReceiver(var msg: TMessage); message MY_MESSAGE;

              procedure SelectDataTelRec;
        end;

var
       CID_f: TCID_f;
       gogekalretFrame_fr: TgogekalretFrame_fr;

       HangeulNumber: string;
implementation

uses uConfig, uDM, ufunctions, uGogekData, uGogekData_find , uMain,
    //   telregi,
       cidView,
       FindGogek,
       uPromiseFrame, inputPromise,
   //    gogekAlret,
       telrec,
       IdURI,
       mapSend, gogekAlret;

{$R *.dfm}
constructor TDownloadThread.Create(const AURL, Asavepath: String; Aindex:integer);
begin
   inherited Create(False);

      FreeOnTerminate := True;
      URL := TIdURI.URLEncode(AURL);

     // URL := AURL;
      iCnt := Aindex;
      savepath := Asavepath;

end;

destructor TDownloadThread.Destroy;
begin

  inherited;
end;


procedure TDownloadThread.Display;
begin
       cid_f.LoadFacePic(savepath);

 end;

procedure TDownloadThread.Execute;
 var
   mStream: TMemoryStream;
   jpgImage : TJpegImage;
 begin
   mStream:=TMemoryStream.Create;
   HTTP := TIdHTTP.Create(nil);
   HTTP.HandleRedirects := True;
    
  try
     if not fileexists( savepath) then
     begin
     HTTP.Get(URL, mStream );
     mStream.SaveToFile(savepath);
     end;

    Synchronize(Display);

    finally

     HTTP.Free;
     FreeAndNil(mStream);

  end;
 end;

procedure TDownloadThread.DoTerminate;
 begin
   if FatalException <> nil then
   begin
      Synchronize(DisplayFatalException);

   end;
   inherited;
 end;

procedure TDownloadThread.DisplayFatalException;
 begin
  // imagesView_f.Memo1.Lines.Add(Exception(FatalException).Message);
 end;





procedure TCid_f.SelectDataTelRec;
const

     SQL_SELECT_DATA_TELREC = 'select top 5 *,                ' + #13#10 +
          '(select  top 1                                         ' + #13#10 +
          '(select top 1 name from ma_gogek_basic a where a.chart=       ' + #13#10 +
          'b.chart) as name from ma_gogek_phone b where (replace(b.phone,''-'','''')=trnumber  or b.phone=trnumber) ) as trname2   ' + #13#10 +
          ' from ma_telrec                                                 ' + #13#10 +
          'Where TRDate >= :TRDate1 and TRDate <= :TRDate2        ';

     //     SQL_SELECT_DATA_TELREC = 'SELECT * FROM ma_TELREC       ' + #13#10 +
     //          'Where TRDate >= :TRDate1 and TRDate <= :TRDate2        ';

begin
     with Dm_f.SqlWork, GrdTelRec do
     begin
          rowcount := 1;
          sql.Clear;
          SQL.Text := SQL_SELECT_DATA_TelRec;
          SQL.Text := SQL.Text + 'and  gubun <> :gubun  order by Trcode desc';
          ParamByName('gubun').AsString := '1';
          ParamByName('TrDate1').AsString := FormatDateTime('YYYY-MM-DD',
               now);
          ParamByName('TrDate2').AsString := FormatDateTime('YYYY-MM-DD',
               now);
          Open;
          if not Dm_f.SqlWork.IsEmpty then
               while not EOF do
               begin
                    AddRow; // 그리드에 빈 로우를 추가
                    Cells[1, RowCount - 1] := FieldByName('TrTime').AsString;
                    Cells[2, RowCount - 1] := FieldByName('TrNumber').AsString;
                    Cells[3, RowCount - 1] := FieldByName('Trname2').AsString;
                    Cells[4, RowCount - 1] := FieldByName('TrChart').AsString;
                    Cells[5, RowCount - 1] := FieldByName('TrRemark').AsString;
                    Next;
               end;
          autonumbercol(0);
     end;

end;


procedure TCid_f.Sayhangul;
var
       i, n: integer;
       source: string;
       cTmp: char;
       sTmp: string;

begin
       source := HangeulNumber;
       n := Length(Source);
       i := 1;
       while i <= n do
       begin
              sTmp := '';
              cTmp := Source[i];
              // Double byte char
              try
                     if ((integer(cTmp) and integer($80)) = integer($80)) then
                     begin
                            sTmp := cTmp;
                            Inc(i);
                            cTmp := Source[i];
                     end;
                     sTmp := Stmp + cTmp;
                     delay(350);
                     Inc(i);
              finally
                     saynum(stmp);

                     { do something for all cases }
              end;

       end;
end;

procedure TCID_f.FieldClear;
begin
       LblTelNumber.Text := '';

       lblNumber.Caption := '';
       lblChart.Caption := '';
       lblName.Caption := '';
       lblGender.Caption := '';
       lbljuso.Caption := '';
       memTelRec.Text := '';
       memTelRec.SetFocus;

       LblStatus.Caption := '';

       //     memChamgo.Text := '';

end;

procedure TCID_f.FormShow(Sender: TObject);
begin

       height := 352 + 122;
       with Cid_f do
       begin
              caption := '!전화가 왔습니다.';
       end;

       l_Time := 0;
       fieldclear;

end;

procedure TCID_f.Timer1Timer(Sender: TObject);
var
       l_clock, l_min, l_second: Integer;
begin
       application.ProcessMessages;
       l_clock := 0;
       l_min := 0;
       l_second := 0;
       l_clock := ((l_time div 60) div 60) mod 60;
       l_min := (l_time div 60) mod 60;
       l_second := l_time mod 60;
       inc(l_time);
       LblTime.caption := Format('%-2.2d:%-2.2d:%-2.2d', [l_Clock, l_min,    l_second]);
end;

procedure TCID_f.Button1Click(Sender: TObject);
var
       var1, var3: string;
       var2: integer;
begin
       var1 := deldash(lblNumber.Caption);
       Var3 := intToHanguel2(Var1);
       HangeulNumber := Var3;
       showmessage(HangeulNumber);
       sayHangul;
end;

procedure TCID_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       timer1.Enabled := false;
       Action := Cafree;
end;

procedure TCID_f.FormDestroy(Sender: TObject);
begin
       CID_f := nil;
end;

procedure TCid_f.LoadPicture(chartNo: string);
var
     CurrentFile: string;

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
     picType, picPath2: string;
     imagename2:string;

begin

     if configvalue.varUseHttp <> '1' then
     begin


          if trim(configvalue.imgSharefolderPath) = '' then
          begin
              try
                  //공유폴더 사용하지 않으면 DB에서 BLOB을 불러온다.

                   with dm_f.sqlWork do
                   begin
                        Close;
                        sql.Clear;
                        sql.Add(' Select * from ma_gogek_picture ');
                        sql.Add(' Where chart = :chart');
                        ParamByName('chart').value := ChartNo;
                        Open;
                        if not isEmpty then
                        begin
                          if  FieldByName('pic').asString <> '' then
                          begin
                            try
                                   picType := FieldByName('pictype').asString;
                                  BStream :=
                                       CreateBlobStream(FieldByName('pic'),
                                       bmRead);
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
                                       aString.SaveToFile(PicPath +  'picture\' + chartNo + '.' +
                                            picType);
                                  finally
                                       aString.Free;
                                  end;
                             finally
                                  BStream.Free;

                             end;
                          end;

                             if FileExists(PicPath + 'Picture\' + chartNo + '.BMP') then
                             begin
                                  CurrentFile := PicPath + 'Picture\' + chartNo + '.BMP';
                                  pic.Picture.LoadFromFile(CurrentFile);
                             end
                             else
                                  if FileExists(PicPath + 'Picture\' + chartNo + '.JPG') then
                                  begin
                                       CurrentFile := PicPath + 'Picture\' + chartNo + '.JPG';
                                       pic.Picture.LoadFromFile(CurrentFile);
                                   end
                                  else
                                  begin
                                       CurrentFile := PicPath + 'icons\Default.jpg';
                                       if FileExists(currentFile) then
                                        pic.Picture.LoadFromFile(CurrentFile)
                                       else
                                           Pic.picture.Bitmap := nil;

                                  end;

                        end;
                   end;
              except
                   on E: Exception do
                        ExceptLogging('Tdm_f.LoadChartItem:' + E.Message);
              end;
          end
          else
          begin
                  //공유폴더에서 가져오자....

                   if FileExists(PicPath_face + 'Picture\' + chartNo + '.BMP') then
                   begin
                        CurrentFile := PicPath_face + 'Picture\' + chartNo + '.BMP';
                         Pic.picture.Bitmap.LoadFromFile(CurrentFile);
                   end
                   else
                        if FileExists(PicPath_face + 'Picture\' + chartNo + '.JPG') then
                        begin
                             CurrentFile := PicPath_face + 'Picture\' + chartNo + '.JPG';
                              Pic.picture.Bitmap.LoadFromFile(CurrentFile);
                        end
                        else
                        begin
                             CurrentFile := PicPath + 'icons\Default.jpg';
                             if FileExists(currentFile) then
                                   Pic.picture.Bitmap.LoadFromFile(CurrentFile)
                             else
                                   Pic.picture.Bitmap := nil;

                        end;

          end
     end
     else
     begin
              //http방식에서 환자얼굴을 불러오기.

               with dm_f.sqlWork do
               begin
                    Close;
                    sql.Clear;
                    sql.Add(' Select * from ma_gogek_picture ');
                    sql.Add(' Where chart = :chart');
                    ParamByName('chart').value := ChartNo;
                    Open;
                    if not isEmpty then
                    begin
                         picPath2 :=  configvalue.varHttpPath +  FieldByName('picPath').asString;

                      //  showmessage(picpath2);
                         if trim(picpath2) <> '' then
                         begin
                          imagename2:= ExtractURLFileName(picpath2);

                      DownloadThread:= TDownloadThread.Create(picpath2,
                      extractFilepath(paramstr(0))+'picture\'+ imagename2, 0 );



                         end;
                    end;
               end;
     end;

end;

procedure TCid_f.LoadFacePic(filename: string);
begin

      Pic.picture.LoadFromFile( filename);

end;                         


{

procedure Tcid_f.LoadPicture(chartNo: string);
var
       CurrentFile: string;

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
       picType: string;
       currentDir, picpath: string;

begin
       currentDir := extractFilePath(ParamStr(0));
       picPath := extractFilePath(ParamStr(0));
       try
              with dm_f.sqlWork do
              begin
                     Close;
                     sql.Clear;
                     sql.Add(' Select * from ma_gogek_picture ');
                     sql.Add(' Where chart = :chart');
                     ParamByName('chart').value := ChartNo;
                     Open;
                     if not isEmpty then
                     begin
                            try
                                   picType := FieldByName('pictype').asString;
                                   BStream :=
                                          CreateBlobStream(FieldByName('pic'),
                                          bmRead);
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
                                          aString.SaveToFile(currentDir +
                                                 'picture\' + chartNo + '.' +
                                                 picType);
                                   finally
                                          aString.Free;
                                   end;

                            finally
                                   BStream.Free;

                            end;

                     end;
              end;
       except
              on E: Exception do
                     ExceptLogging('Tdm_f.LoadChartItem:' + E.Message);
       end;

       if FileExists(PicPath + 'Picture\' + chartNo + '.BMP') then
       begin
              CurrentFile := PicPath + 'Picture\' + chartNo + '.BMP';
              pic.Picture.LoadFromFile(CurrentFile);
       end
       else if FileExists(PicPath + 'Picture\' + chartNo + '.JPG') then
       begin
              CurrentFile := PicPath + 'Picture\' + chartNo + '.JPG';
              pic.Picture.LoadFromFile(CurrentFile);
       end
       else
       begin
              CurrentFile := PicPath + 'icons\Default.BMP';
              if FileExists(currentFile) then
                     pic.Picture.LoadFromFile(CurrentFile)
              else
                     pic.Picture := nil;

       end;
end;
}
procedure TCID_f.TelNoSet(RcvTelNo: string);
var
       Str, Str2, Addr: string;
begin

       LblChart.Caption := '';
       LblName.Caption := '';
       LblGender.Caption := '';
       LblJuso.Caption := '';
       //               MemChamgo.Text := '';
       Pic.Picture := nil;

     //  Cid_f.LblStatus.Caption := '';

       Str := Deldash(RcvTelNo);

      { if str <> '' then
              Str2 := Copy(str, 1, 3) + '-'
                     + Copy(str, 4, length(str) - 7) + '-'
                     + Copy(str, length(str) - 3, 4);
      }
       if str <> '' then
       begin
          Str2:=call_tel_type(Str);
       end;

       with Dm_f.SqlWork do
       begin
              Close;
              Sql.Clear;
              Sql.Add('Select b.name, b.chart, b.jumin from ma_gogek_phone a join ma_gogek_basic b on a.chart=b.chart');
              Sql.Add('Where phone=:Phone or  phone=:Phone2 ');
              ParamByName('phone2').AsString := Str;
              ParamByName('phone').AsString := Str2;
              open;
              if not isEmpty then
              begin
                     lblNumber.Caption := Str2;
                     LblChart.Caption := FieldByname('Chart').AsString;
                     LblName.Caption := FieldByname('Name').AsString;
                     Lblgender.Caption := '(' +
                            NaiCalc(FieldByname('Jumin').AsString) + '/' +
                            GenderDisp(FieldByname('Jumin').AsString) +
                            ')';

                     {  with dm_f.SqlTemp do
                       begin
                            Close;
                            Sql.Clear;
                            Sql.Add('Select * from ma_post');
                            Sql.Add('Where zipcode= :ZipCode');
                            ParamByName('ZipCode').AsString :=
                                 DisplayDash(Dm_f.sqlWork.FieldByName('H_zip').AsString);
                            Open;
                            Addr := Trim(FieldByName('Sido').AsString)
                                 + ' ' + Trim(FieldByName('GuGun').AsString)
                                 + ' ' + Trim(FieldByName('DOng').AsString);

                       end;

                       LblJuso.Caption := Addr + ' ' + FieldByname('H_juso').AsString;
                       MemChamgo.Text := FieldByname('Chamgo').AsString;
                      }

              end

              else
              begin

              Close;
              Sql.Clear;
              Sql.Add('Select name from ma_gogek_phone');
              Sql.Add('Where phone=:Phone or  phone=:Phone2 ');
              ParamByName('phone2').AsString := Str;
              ParamByName('phone').AsString := Str2;
              open;
              if not isEmpty then
              begin
                     lblNumber.Caption := Str2;
                     LblChart.Caption := '';
                     LblName.Caption := FieldByname('Name').AsString;
                     Lblgender.Caption := '';
                      LblJuso.Caption := '';
                     Pic.Picture := nil;
               end
               else
               begin


                     lblNumber.Caption := Str2;
                     LblChart.Caption := '';
                     LblName.Caption := '';
                     LblGender.Caption := '';
                     LblJuso.Caption := '';
                     //               MemChamgo.Text := '';
                     Pic.Picture := nil;
              end;
              end;
       end;

       if trim(lblChart.caption) <> '' then
       begin

               LoadPatientFace(trim(lblChart.caption), Pic);
             // LoadPicture(trim(lblChart.caption));
       end;
end;

procedure TCID_f.edtNameKeyPress(Sender: TObject; var Key: Char);
begin

       if Key = #13 then
       begin
              if (edtname.text <> '') then
              begin
                     loadResult := LoadGogekData_name(edtname.text,
                            progressbar,0, varViewAll);
                     case loadResult of
                            1: //mrOk정보있는 경우
                                   begin

                                          //기존환자정보를 뿌려주고
                                          edtname.text := ma_paname;
                                          edtChart.text := ma_chart;
                                          btnsave.Setfocus;

                                          {TODO 1 -oha -cMake Function:치료중단 안내나, 중단한 가족이있을경우 알려준다.}
                                          {TODO 1 -oha -cMake Function: 소개 감사, 선물감사}
                                   end;
                            2: //mrCancel취소한경우
                                   begin
                                          edtname.SetFocus;
                                   end;
                            6: //mrYes새로 입력한경우
                                   begin
                                          edtchart.SetFocus;
                                   end;
                     end;

              end;
       end;

       {  if Key = #13 then
           begin
                if (edtName.text <> '') then
                begin

                     if not Assigned(findGogek_f) then
                          findGogek_f := TfindGogek_f.Create(application);

                     with DM_f.Sqlwork do
                     begin
                          Close;
                          SQL.Clear;
                          SQL.Add('Select * From Injek');
                          if main_f.FilterResultCheck = false then
                          begin
                               Sql.Add('Where Name = :Name');
                               SQL.Add('and (fil <> ''1'' or fil is null) ');
                          end
                          else begin
                               Sql.Add('Where Name = :Name');
                          end;
                          SQL.Add('Order by Last_day DESC');
                          ParamByName('Name').AsString := edtName.text;
                          Open;
                          if not IsEmpty then
                          begin
                               with findGogek_f do
                               begin
                                    GrdFind.Clear;
                                    Edit1.text := edtChart.Text;
                                    Edit2.Text := edtName.Text;

                                    if ShowModal = mrOk then
                                    begin
                                          //기존환자정보를 뿌려주고
                                         edtname.text := edit2.text;
                                         edtChart.text := edit1.text;
                                         btnsave.Setfocus;
                                    end;
                               end;
                          end;
                          key := #0;

                     end;
                end;
           end;

        }

      {

           if Key = #13 then
           begin
                if (edtname.text <> '') then
                begin

                     if not Assigned(findGogek_f) then
                          findGogek_f := TfindGogek_f.Create(application);

                     with DM_f.SqlTemp do
                     begin
                          Close;
                          SQL.Clear;
                          SQL.Add('Select * From Injek');
                          Sql.Add('Where Name = :Name');
                          ParamByName('Name').AsString := edtname.Text;
                          Open;
                          if not IsEmpty then
                          begin
                               with findGogek_f do
                               begin
                                    GrdFind.Clear;

                                    Edit1.text := edtChart.Text;
                                    Edit2.Text := edtname.Text;
                                    DM_f.sqlWork.Close;
                                    DM_f.sqlWork.SQL.Clear;
                                    DM_f.sqlWork.SQL.Add('Select * From Injek');
                                    DM_f.sqlWork.SQL.Add('Where (Name =:Name or Chart =:Chart)');
                                    DM_f.sqlWork.SQL.Add('Order by Last_day DESC');
                                    if ShowModal = mrOk then
                                    begin
                                         //기존환자정보를 뿌려주고
                                         edtname.text := edit2.text;
                                         edtChart.text := edit1.text;
                                         btnsave.Setfocus;

                                    end;
                               end;

                          end;
                     end;
                end;
           end;
      }
end;

procedure TCID_f.btnRefreshClick(Sender: TObject);
begin
       btnSave2.Enabled := true;
       btntelMem.Enabled := true;
       height := 352+ 122;
       pnlsave.Visible := false;
       edtName.Text := '';
       edtTel.Text := cid_f.lblnumber.Caption;
       edtChart.Text := '';

end;

procedure TCID_f.btnSave2Click(Sender: TObject);
begin
       {
            timer1.Enabled := false;
            if not Assigned(ma_telregi_f) then
                 TelRegi_f := TTelRegi_f.Create(Application);
            TelRegi_f.Showmodal;
       }
       TelRegiCase := 1;
       //     pnlTelMemRegi.Visible := false;
       //     pnlTelMemRegi.Align := alClient;
          //  memTelrec.Align := alClient;
       lblCap.Caption := '고객 전화 번호 등록';
       pnlTelNoRegi.Align := alClient;
       pnlTelNoRegi.Visible := true;

       btnSave2.Enabled := false;
       pnlsave.Visible := true;
       height := height + 170;
       edtName.Text := '';
       edtTel.Text := cid_f.lblnumber.Caption;
       edtChart.Text := '';
       edtName.Setfocus;

end;

procedure TCID_f.btnTelMemClick(Sender: TObject);
begin

       TelRegiCase := 2;

       case TelRegiCase of
              1:
                     begin
                     end;
              2:
                     begin
                            TelRecUpdate2(LblTrCode.Caption,
                                   lblName.Caption, lblChart.Caption,
                                          lblTime.Caption,
                                   memTelRec.Text);
                     end;
       end;
       {

            btntelMem.Enabled := false;
            height := height + 170;
            pnlsave.Visible := true;
            pnlTelNoRegi.Align := alNone;
            pnlTelNoRegi.Visible := false;
            pnlTelMemRegi.Visible := true;
            pnlTelMemRegi.Align := alClient;
            lblCap.Caption := '전화 메모 등록';
            memTelRec.Text := '';
            memTelRec.SetFocus;
            {     btnSave2.Enabled := false;
                 pnlsave.Visible := true;
                 edtName.Text := '';
                 edtTel.Text := cid_f.lblnumber.Caption;
                 edtChart.Text := '';
                 edtName.Setfocus;
            }

end;

procedure TCID_f.btnSaveClick(Sender: TObject);
begin

       try
              if edtName.text = '' then
              begin
                     showmessage('이름을 입력하세요');
                     edtName.Setfocus;
                     exit;
              end;
              with DM_f.SqlWork do
              begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select * from ma_gogek_phone');
                     Sql.Add('where phone=:phone ');
                     ParamByName('phone').AsString := edtTel.text;
                     open;
                     if isEmpty then
                     begin
                            Close;
                            Sql.Clear;
                            Sql.Add('insert into ma_gogek_phone');
                            Sql.Add('(Chart, phone, Name) values');
                            Sql.Add('(:Chart, :phone, :Name)');
                            ParamByName('Chart').AsString := edtChart.text;
                            ParamByName('phone').AsString := edtTel.Text;
                            ParamByName('Name').AsString := edtName.text;
                            execSql;
                     end
                     else
                     begin
                            Close;
                            Sql.Clear;
                            Sql.Add('update ma_gogek_phone set');
                            Sql.Add('Name=:Name, Chart=:Chart');
                            Sql.Add('where phone=:phone ');
                            ParamByName('Chart').AsString := edtChart.text;
                            ParamByName('phone').AsString := edtTel.Text;
                            ParamByName('Name').AsString := edtName.Text;
                            execSql;
                     end;
              end;
              showmessage('저장되었습니다.');
       except
              showmessage('다시 저장하십시오.');
       end;
       //     close;
end;

procedure TCID_f.btnInfoClick(Sender: TObject);
begin
       if
              LoadGogekData_chart(lblChart.caption, progressbar, varViewAll) =
              true then
       begin
              isLoading:= true;
              main_f.Fieldset;
              //   varPidn2 := grdDaegi.cells[16,
              //          aRow];
              //   grdDaegi.setfocus;
       end;

      // showGogekAlret(edtChart.text, edtname.text);
//       if not assigned(gogekalret_f) then
//              gogekalret_f := Tgogekalret_f.Create(application);
//
//       if lblChart.Caption <> '' then
//              gogekalret_f.gogekalretFrame_fr1.PromiseSelect(lblChart.Caption);
//
//       with gogekalret_f do
//       begin
//              Caption := CID_f.lblname.caption + '(' +  CID_f.lblChart.Caption +
//                ')님의 상세기록';
//
//             // caption := '상세기록보기';
//              top := cid_f.Top + cid_f.Height;
//              left := cid_f.Left;
//              gogekalretFrame_fr1.varChartNo := CID_f.lblChart.Caption;
//
//              Show;
//       end;
// }\
end;

procedure TCID_f.showGogekAlret(varChart, varName: string;
  varKind: Integer = 0);
begin
   if not assigned(gogekalret_f) then
    gogekalret_f := Tgogekalret_f.Create(application);
    gogekalret_f.Caption := varName + '(' + varChart +
    ')님의 상세기록';
    gogekalret_f.gogekAlretFrame_fr1.preshow;
    gogekalret_f.gogekAlretFrame_fr1.fieldClear;

    gogekalret_f.gogekalretFrame_fr1.varChartNo := varChart;
    gogekalret_f.gogekalretFrame_fr1.varName := varName;


    if varChart <> '' then
    begin
        case varKind of
            0:
            begin
                gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex := 0;
                gogekalret_f.gogekalretFrame_fr1.PromiseSelect(varChart);
            end;
            1:
            begin
                gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex := 1;
                gogekalret_f.gogekalretFrame_fr1.RecallSelect(varChart);
            end;
        end;
    end;


     gogekalret_f.Show;
     gogekalret_f.gogekalretFrame_fr1.PreShow;
     gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex:= varKind;
     gogekalret_f.gogekalretFrame_fr1.loadTabInfo( gogekalret_f.gogekalretFrame_fr1.pcAlret.ActivePageIndex, varChart);


end;
procedure TCID_f.spSkinButton1Click(Sender: TObject);
var
       i: integer;
       varInterval: integer;
begin
       if
              LoadGogekData_chart(lblChart.caption, progressbar) =
              true then
       begin
             isLoading:=true;
              main_f.Fieldset;
              //   varPidn2 := grdDaegi.cells[16,
              //          aRow];
              //   grdDaegi.setfocus;
       end;

//       if main_f.PromiseMode = true then
//       begin
//              {  varInterval := Promisemain_f.timeinterval;
//                //Shift키를 누르고 드래그 해서 다중 선택 후 더블 클릭한다.
//                if not assigned(inputPromise_f) then
//                begin
//                       inputPromise_f := TinputPromise_f.Create(Application);
//                end;
//                inputPromise_f.cbSoyo.items.clear;
//
//                for i := 1 to 30 do
//                begin
//                       inputPromise_f.cbSoyo.items.Add(inttostr(varinterval * i));
//                end;
//
//                inputPromise_f.lblAppointNo.Caption := '';
//                inputPromise_f.Datetimepicker1.Date := promiseMain_f.dpsDate.date;
//                inputPromise_f.cbsTime.Text :=
//                       mintotime((promiseMain_f.Planner1.selitemBegin +
//                       Promisemain_f.StartTime) * varinterval);
//                inputPromise_f.cbfTime.Text :=
//                       mintotime((promiseMain_f.Planner1.selItemEnd +
//                       Promisemain_f.StartTime) * varinterval);
//                inputPromise_f.cbSoyo.ItemIndex :=
//                       promiseMain_f.Planner1.selItemEnd -
//                       promiseMain_f.Planner1.selitemBegin - 1;
//                inputPromise_f.cbGugan.ItemIndex :=
//                       promiseMain_f.Planner1.SelPosition;
//                inputPromise_f.cbJundam.Text := '';
//                inputPromise_f.cbTeam.Text := main_f.cbDamTeam.Text;
//
//                inputPromise_f.edtname.text := lblname.caption;
//                inputPromise_f.edtChart.text := lblChart.caption;
//                inputPromise_f.edtTel.text := lblnumber.caption;
//                inputPromise_f.memSulsik.text := '';
//
//                inputPromise_f.Show;
//                }
//
//              Promisemain_f.Show;
//       end
//       else
//       begin
//              if not assigned(Promisemain_f) then
//                     Promisemain_f := TPromisemain_f.Create(application);
//              Promisemain_f.WindowState := wsnormal;
//              main_f.PromiseMode := true;
//              Promisemain_f.Show;
//
//       end;

end;

procedure TCID_f.spSkinButton2Click(Sender: TObject);
begin
       if not assigned(telrec_f) then
              telrec_f := Ttelrec_f.Create(application);
       with telrec_f do
       begin
              varMode:=1;//telrec_f를 열때 1이면 fieldclear를 하지 않는다.
              edtTel.text := CID_f.lblnumber.caption;
              EDTcHART.TEXT := CID_f.lblChart.caption;
              edtName.text := CID_f.lblName.caption;
              memTelRec.Text:= CID_f.memTelrec.Text;
              Show;
       end;
end;

procedure TCID_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     if    cidFormCount >0 then
           cidFormCount := cidFormCount-1
     else
           cidFormCount := -1;

end;

procedure TCID_f.FormCreate(Sender: TObject);
begin
     picpath := extractFilePath(ParamStr(0)); // GetConfigDir;

      if  trim(configvalue.imgSharefolderPath) = '' then
           picpath_face := extractFilePath(ParamStr(0))
       else
          picpath_face := configvalue.imgSharefolderPath;

end;

procedure TCID_f.Button2Click(Sender: TObject);
begin
       l_time := 0;
       timer1.Enabled := not timer1.Enabled;
       TelRecUpdate2(LblTrCode.Caption,
                                   lblName.Caption, lblChart.Caption,
                                          lblTime.Caption,
                                   memTelRec.Text);

//       btnTelMemClick(self) ;
end;

procedure TCID_f.Button3Click(Sender: TObject);
begin

     if not Assigned(mapSend_f) then
          mapSend_f := TmapSend_f.Create(application);

     mapSend_f.edtsendno.text := lblNumber.caption;


     mapSend_f.edtSubject.text:=configvalue.varsaupname+ ' 오시는 길';
     mapSend_f.edtRcvno.text:=  configvalue.varTel1 ;



     mapSend_f.showmodal;


end;

procedure TCID_f.MessageReceiver(var msg: TMessage);
var 
  txt: PChar; 
begin
     txt := PChar(msg.lParam);
     msg.Result := 1;

     if  copy(txt, 1,1)= 'A' then
        LblStatus.Font.Color := clred
        else
           if  copy(txt, 1,1)= 'T' then
                 LblStatus.Font.Color := clBlue;
     LblStatus.Caption   := txt;


     TelRecUpdate2(LblTrCode.Caption,
                                   lblName.Caption, lblChart.Caption,
                                          lblTime.Caption,
                                   txt);


end;

procedure TCID_f.GrdTelRecClickCell(Sender: TObject; ARow, ACol: Integer);
var
   varChart, varname : string;
begin
//       varChart :=  grdTelRec.Cells[4,ARow] ;
//       varName :=  grdTelRec.Cells[3,ARow] ;
//
//       if trim(varChart) = '' then
//       begin
//           showmessage('등록된 자료가 없습니다.');
//           exit;
//       end;
//       if
//              LoadGogekData_chart(varChart , progressbar, varViewAll) =
//              true then
//       begin
//
//              main_f.Fieldset;
//              //   varPidn2 := grdDaegi.cells[16,
//              //          aRow];
//              //   grdDaegi.setfocus;
//       end;
//
//       if not assigned(gogekalret_f) then
//              gogekalret_f := Tgogekalret_f.Create(application);
//
//       if varChart <> '' then
//              gogekalret_f.gogekalretFrame_fr1.PromiseSelect(varChart);
//
//       with gogekalret_f do
//       begin
//              Caption := varName + '(' +  varChart +
//                ')님의 상세기록';
//
//             // caption := '상세기록보기';
//              top := cid_f.Top + cid_f.Height;
//              left := cid_f.Left;
//              gogekalretFrame_fr1.varChartNo := varChart;
//
//              Show;
//       end;
end;

end.


