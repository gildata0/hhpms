unit uConst;

interface
uses

     sysutils, iniFiles,Dialogs, ActiveX, mmSystem,
     Graphics, Jpeg, GIFImg, PngImage, GraphUtil,
       Data.FireDACJSONReflect, Datasnap.DSClientRest, IDUri,
       System.JSON;

type
     TDayOfWeek =
          (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday);



function GetNicAddr: AnsiString;
function ThumbnailFromImageFile(ImagePath: string; ThumbnailSize: integer): string;
function ResizeFromImageFile(kind : string;
                   ImagePath: string;
                   SavePath: string;
                   saveFileName : string;
                   ThumbnailSize: integer ): string;

function GetTemplateFileName(const AFileName: string): string;
procedure LoadIniData;
function ReturnWeek(m_Date: TDateTime): string;
function ReturnWeek2(m_Date: TDateTime): string;
function HangeulTime(Str: string): string;
function HangeulTime2(Str: string): string;
function HangeulTime_AmPm(Str: string): string;
function HangeulTime_Hour(Str: string): string;


function HangeulMin(Str: string): string;
function HangeulMin2(Str: string): string;

function DoGetPhoneNumber: string;
function call_tel_type(const AnTel: string): string;
procedure EndApp;
procedure HandleRESTException(const AConnection: TDSRestConnection; const APrefix: string;
       const E: TDSRestProtocolException);
function GetConfigDir: string;
procedure DoSound(AMsg: string);
procedure DoSound2(AMsg: string);
function ExtractURLFileName( S: String ): String;

var

     isStandBy : boolean;
     machineKind : integer;
     dispDay : string;
     path : string;

     varSaupID : string;
     SyncIP : string;
     SyncPORT : integer;

     //병원정보
     HospID : string;    //요양기관기호
     HospName : string;  //병원명
     HospPhoneNumber : string; //병원 전화


     UserID, UserPass, MonitorNum : string;
     userbarcode : string;
     userName : string;
     PatName, PatChart, PatAgeYear, PatAgeMonth, PatGender, PatBirth, PatJumin, kinVeyID: string;

     AutoLogin , IdSave: string;
     path1, path2 : string;  // path1 :  edtHttpPath
                             // path2 :  edtFtpPath

     imgPath1, imgPath2 : string;    //imgPath1  edtxrayImageHttpPath2
                                     //imgPath2  edtxrayImageHttpPath2

     thumbSize     : integer;
     imageHorzSize : integer;

     pKind : string;

     HttpLoadPath : string;
     ftpID , ftpPass , ftpIP, ftpSavePath: string;
     patMemo : string;

     varKind : integer; //0:slide 1:fade 2:event
     dispTime : integer;
     varEffect : integer; //0:none 1: snow
     varMemo :string;
     memoScroll : integer; //scrollamount
     memofSize : string;
     memofKind : string;
     memofColor : string;

     aGCMAppID            : string;
     aPushEndPoint        : string;
     aAppKey              : string;
     aAppSecret           : string;
     aMasterSecret        : string;
     aUserName            : string;
     aPassword            : string;


     fAgreeForm           : integer;
     fFaq                 : integer;
     fAccount             : integer;
     fTreatImage          : integer;
     fQna                 : integer;
     fDoctorQna           : integer;
     fWarnItem            : integer;
     fPushMessage         : integer;
     fPoint               : integer;
     fCoupon              : integer;
     fPhone               : integer;
     fautoRecept          : integer;

     inifile : Tinifile;


implementation
uses  system.IOUtils, dateutils;


procedure HandleRESTException(const AConnection: TDSRestConnection; const APrefix: string; const E: TDSRestProtocolException);
var
  LJSONValue: TJSONValue;
  LMessage: string;
  LPair: TJSONPair;
begin
  LJSONValue := TJSONObject.ParseJSONValue(BytesOf(E.ResponseText), 0);
  try
    if LJSONValue is TJSONObject then
    begin
      LPair := TJSONObject(LJSONValue).Get(0);
      if LPair.JsonString.Value = 'SessionExpired' then

        // Clear session id because it is no good
        AConnection.SessionID := '';

      // Extract error message
      LMessage := LPair.JSONValue.Value;
    end
    else
      LMessage :=  E.ResponseText;
  finally
    LJSONValue.Free;
  end;
 // ShowMessage('%s: %s', [APrefix, LMessage]);
end;



function DoGetPhoneNumber: string;
var
  sTemp: string;
  nPos: integer;
{$IFDEF Android}
  tMgr: JTelephonyManager;
{$ENDIF}
begin
{$IFDEF Android}
  integer(Result) := 0;
  tMgr := TJTelephonyManager.Wrap((SharedActivityContext.getSystemService(TJContext.JavaClass.TELEPHONY_SERVICE)
        as ILocalObject).GetObjectID);
  sTemp := JStringToString(tMgr.getLine1Number);

  nPos := Pos('10', sTemp);
  if nPos > 0 then
    Result := '0' + Copy(sTemp, nPos, MaxInt)
  else
    Result := sTemp;
{$ENDIF}
end;

//
function call_tel_type(const AnTel: string): string;
var
     str_buf: string;
     length_buf: integer;
begin
     str_buf := trim(AnTel);
     str_buf := StringReplace(str_buf, '-', '', [rfReplaceAll]);
     length_buf := length(str_buf);
     case length_buf of
          0..4:
               begin
                    result := str_buf;
               end;
          5: // 00-000
               begin
                    result := copy(str_buf, 1, 2) + '-' + copy(str_buf,
                         3, 3);
               end;
          6: // 000-000
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 3);
               end;
          7: // 000-0000
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 4);
               end;
          8: //0000-0000 인경우
               begin
                    result := copy(str_buf, 1, 4) + '-' + copy(str_buf,
                         5, 4);
               end;
          // 서울전화 00-000-0000 인 경우
          9:
               begin
                    result := copy(str_buf, 1, 2) + '-' + copy(str_buf,
                         3, 3) +
                         '-' + copy(str_buf, 6, 4);
               end;
          /// 서울전화 - 또는 지방 000-000-0000 인 경우
          10:
               begin
                    if copy(str_buf, 1, 2) = '02' then
                    begin
                         result := copy(str_buf, 1, 2) + '-' +
                              copy(str_buf, 3,
                              4) + '-' + copy(str_buf, 7, 4);
                    end
                    else
                    begin
                         result := copy(str_buf, 1, 3) + '-' +
                              copy(str_buf, 4,
                              3) + '-' + copy(str_buf, 7, 4);
                    end;
               end;
          ///  000-0000-0000 인 경우
          11:
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 4) +
                         '-' + copy(str_buf, 8, 4);
               end;
          ///  000-0000-00000 인 경우
          12:
               begin
                    result := copy(str_buf, 1, 3) + '-' + copy(str_buf,
                         4, 4) +
                         '-' + copy(str_buf, 8, 5);
               end;
     end;
end;


function GetTemplateFileName(const AFileName: string): string;
begin
          Result := ExtractFileDir(paramstr(0)) +'\template\'+ AFileName;
end;

function HangeulTime(Str: string): string;
var
     varTime: integer;
begin
     varTime := strToint(str);

     if VarTime < 12 then
          result := '오전 ' + intToStr(VarTime) + '시'
     else
          if VarTime = 12 then
               result := '오후 ' + '12시'
          else
               if VarTime > 12 then
                    result := '오후 ' + intToStr(vartime - 12) + '시';
end;

function HangeulTime_AmPm(Str: string): string;
var
     varTime: integer;
begin
     varTime := strToint(str);

     if VarTime < 12 then
          result := 'AM'
     else
          if VarTime = 12 then
               result := 'PM '
          else
               if VarTime > 12 then
                    result := 'PM ';
end;



function HangeulTime_Hour(Str: string): string;
var
     varTime: integer;
begin
     varTime := strToint(str);

     if VarTime < 12 then
          result :=  intToStr(VarTime) + ' : '
     else
          if VarTime = 12 then
               result :='12 : '
          else
               if VarTime > 12 then
                    result := intToStr(vartime - 12) + ' : ';
end;

function HangeulMin(Str: string): string;
var
     varMin: integer;
begin
     varMin := strToInt(str);
     if varMin > 0 then
          result := intToStr(VarMin) //+ '분'
     else
      //    result := '00' + '분';
          result := '';

end;

function HangeulTime2(Str: string): string;
var
     varTime: integer;
begin
     varTime := strToint(str);

     if VarTime <= 12 then
          result := intToStr(VarTime)
     else
          result := intToStr(vartime - 12);
end;

function HangeulMin2(Str: string): string;
var
     varMin: integer;
begin
     varMin := strToInt(str);
     if varMin > 0 then
          result := intToStr(VarMin)
     else
          result := '00';

end;


function ReturnWeek(m_Date: TDateTime): string;
begin
     case DayOfWeek(m_Date) of
          1: result := '일요일';
          2: result := '월요일';
          3: result := '화요일';
          4: result := '수요일';
          5: result := '목요일';
          6: result := '금요일';
          7: result := '토요일';
     end;
end;
//요일구하기2

function ReturnWeek2(m_Date: TDateTime): string;
begin
     case DayOfWeek(m_Date) of
          1: result := '일';
          2: result := '월';
          3: result := '화';
          4: result := '수';
          5: result := '목';
          6: result := '금';
          7: result := '토';
     end;
end;


procedure EndApp;
begin
    { Show a multiple-button alert that triggers different code blocks according to
       your input }

     {$IFDEF ANDROID}

    MessageDlg(userName + '님 앱을 종료하시겠습니까?', System.UITypes.TMsgDlgType.mtInformation,
      [
        System.UITypes.TMsgDlgBtn.mbYes,
        System.UITypes.TMsgDlgBtn.mbNo
        //System.UITypes.TMsgDlgBtn.mbCancel
      ], 0,
      procedure (const AResult: TModalResult)
      begin
        if AResult = mrYes then
            SharedActivity.finish;
      end
      );
      {$ENDIF}
end;


procedure LoadIniData;
var
     inifile : Tinifile;
begin


//  {$IFDEF ANDROID OR IOS}
//     path:=   TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + 'notipromise.ini';
//  {$ENDIF}

//  {$IFDEF WINDOWS}
     path:=   extractFilePath(paramStr(0))  + 'db.ini';
//  {$ENDIF}
     //extractFilepath(paramstr(0))+'db.ini';
     inifile:= Tinifile.Create(path);
    //  TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + 'user.dat';
//     AutoLogin  := inifile.ReadString('SET','AUTO','1');
//     UserID  :=  inifile.ReadString('SET','userid','');
//     UserPass := inifile.ReadString('SET','userpass','');


//------------------------------------------------------------------------------


     AutoLogin  := inifile.ReadString('SET','AUTO','');
     IdSave  := inifile.ReadString('SET','IDSAVE','');

     UserID  :=  inifile.ReadString('SET','userid','');
     UserPass := inifile.ReadString('SET','userpass','');  //Password 암호화

     HospPhoneNumber  := inifile.ReadString('SET','phone','');

     HospID   := inifile.ReadString('BASEINFO','yoyangKiho','');


     //HospName   := inifile.ReadString('SET','company','');
     UserName   := inifile.ReadString('SET','username','');
//


     //덴트로 이미지DB서버에 접속/////////////////////////////////////////////////////////////////
     SyncIP := inifile.ReadString('SET','IP','');// '192.168.0.14';
     SyncPORT := inifile.ReadInteger('SET','PORT',8095);//'8090';

                                                               // DentalHelperImage
     Path1 := trim(inifile.ReadString('SET','PATH1','http://hmslab.co.kr/DentalHelperImage/files'));  // path1 :  edtHttpPath
     Path2 := trim(inifile.ReadString('SET','PATH2','/home/hmslabs/home/DentalHelperImage/files'));  // path2 :  edtFtpPath

     imgPath1 := trim(inifile.readString('SET','xrayimageHttppath1','http://192.168.0.150/ImageBackUp'));
     imgPath2 := trim(inifile.readString('SET','xrayimageHttppath2','http://192.168.0.150/File Server/Files'));

     ftpIP   := trim(inifile.ReadString('SET','FTPIP',''));
     ftpID   := trim(inifile.ReadString('SET','FTPID',''));
     ftpPass:= trim(inifile.ReadString('SET','FTPPASS',''));


     thumbSize:=      inifile.ReadInteger('SET','thumbSize',320);
     imageHorzSize:=  inifile.ReadInteger('SET','imageHorzSize',2048);



     PatChart :='';

      userbarcode :=  inifile.ReadString('SET','userBarcode','9838510294000001');
      userbarcode := copy(userbarcode, 1,  16);

           pKind  :=iniFile.ReadString('BASEINFO','PGKIND' ,   'dentro' );






     inifile.free;

end;




function ThumbnailFromImageFile(ImagePath: string; ThumbnailSize: integer): string;
const
  FileNamePrefix = 'thumb_';
var
  ImageExt: string;
  graphicSource: TGraphic;
  bmpSource: TBitmap;
  pngThumbnail: TPngImage;
  bmpThumbmail: TBitmap;
  fScale: double;
  jpgThumbnail: TJpegImage;
begin
  ImageExt := LowerCase(ExtractFileExt(ImagePath));
  if ImageExt='.jpg' then      graphicSource := TJPEGImage.Create
  else if ImageExt='.png' then graphicSource := TPngImage.Create
  else if ImageExt='.gif' then graphicSource := TGIFImage.Create
  else if ImageExt='.bmp' then graphicSource := TBitmap.Create
  else                         exit;

  try
    graphicSource.LoadFromFile(ImagePath);
    if ImageExt='.bmp' then
      bmpSource := TBitmap(graphicSource)
    else
    begin
      bmpSource := TBitmap.Create;
      bmpSource.Assign(graphicSource);
    end;

    bmpThumbmail := TBitmap.Create;
    try
      if bmpSource.Width >= bmpSource.Height then
        fScale := ThumbnailSize / bmpSource.Width
      else
        fScale := ThumbnailSize / bmpSource.Height;

      ScaleImage(bmpSource, bmpThumbmail, fScale);

//      pngThumbnail := TPngImage.Create;
//      try
//        pngThumbnail.Assign(bmpThumbmail);
//        result := ExtractFilePath(ImagePath) + FileNamePrefix + ChangeFileExt(ExtractFileName(ImagePath), '.png');
//        try
//          pngThumbnail.SaveToFile(result);
//        except
//          result := '';
//        end;
//      finally
//        pngThumbnail.Free;
//      end;

      jpgThumbnail := TJpegImage.Create;
      try
        jpgThumbnail.Assign(bmpThumbmail);
        result := ExtractFilePath(ImagePath) + FileNamePrefix + ChangeFileExt(ExtractFileName(ImagePath), '.jpg');
        try
          jpgThumbnail.SaveToFile(result);
        except
          result := '';
        end;
      finally
        jpgThumbnail.Free;
      end;





    finally
      bmpThumbmail.Free;
      if graphicSource<>bmpSource then
        bmpSource.Free;
    end;
  finally
    graphicSource.Free;
  end;
end;


function GetNicAddr: AnsiString;
const
     GUID_MAX = 72;
var
     guid: TGuid;
     buf: array[0..GUID_MAX] of WideChar;
begin
     CoCreateGuid(guid);
     StringFromGUID2(guid, buf, GUID_MAX);
     Result := Copy(WideCharToString(buf), 26, 12);
end;



function ResizeFromImageFile(kind : string;
     ImagePath: string;
     SavePath: string;
     saveFileName : string;
     ThumbnailSize: integer): string;
const
  FileNamePrefix = 'thumb_';
var
  ImageExt: string;

  graphicSource: TGraphic;
  bmpSource: TBitmap;
  pngThumbnail: TPngImage;
  bmpThumbmail: TBitmap;
  fScale: double;
  jpgThumbnail: TJpegImage;
begin
  ImageExt := LowerCase(ExtractFileExt(ImagePath));
  if ImageExt='.jpg' then      graphicSource := TJPEGImage.Create
  else if ImageExt='.png' then graphicSource := TPngImage.Create
  else if ImageExt='.gif' then graphicSource := TGIFImage.Create
  else if ImageExt='.bmp' then graphicSource := TBitmap.Create
  else                         exit;

  try
    graphicSource.LoadFromFile(ImagePath);
    if ImageExt='.bmp' then
      bmpSource := TBitmap(graphicSource)
    else
    begin
      bmpSource := TBitmap.Create;
      bmpSource.Assign(graphicSource);
    end;

    bmpThumbmail := TBitmap.Create;
    try


      if bmpSource.Width >= bmpSource.Height then
        fScale := ThumbnailSize / bmpSource.Width
      else
        fScale := ThumbnailSize / bmpSource.Height;

      if ThumbnailSize > bmpSource.Width then
        fScale := 1;


      ScaleImage(bmpSource, bmpThumbmail, fScale);

//      pngThumbnail := TPngImage.Create;
//      try
//        pngThumbnail.Assign(bmpThumbmail);
//        result := ExtractFilePath(ImagePath) + FileNamePrefix + ChangeFileExt(ExtractFileName(ImagePath), '.png');
//        try
//          pngThumbnail.SaveToFile(result);
//        except
//          result := '';
//        end;
//      finally
//        pngThumbnail.Free;
//      end;



      jpgThumbnail := TJpegImage.Create;
      try
        jpgThumbnail.Assign(bmpThumbmail);
        if kind='0' then  //썸네일로 저장
        begin

         result   := savePath + FileNamePrefix +  saveFileName +'.jpg';//ChangeFileExt(ExtractFileName(ImagePath), '.jpg');

        end
           else
           if kind='1' then  //가로크기(2048) 축소로 저장
           begin
               result   := savePath +  saveFileName +'.jpg';// ChangeFileExt(ExtractFileName(ImagePath), '.jpg');
           end;

        try
          jpgThumbnail.SaveToFile(result);
        except
          result := '';
        end;
      finally
        jpgThumbnail.Free;
      end;





    finally
      bmpThumbmail.Free;
      if graphicSource<>bmpSource then
        bmpSource.Free;
    end;
  finally
    graphicSource.Free;
  end;
end;


function GetConfigDir: string;
var
     Path: array[0..255] of AnsiChar;
  //   itemidList: PItemIDList;
begin
     result := extractFilePath(paramStr(0));
     { SHgetSpecialFolderLocation(0, CSIDL_LOCAL_APPDATA, itemidList);
      SHGetPathFromidlistA(itemidList, path);
      result := includetrailingpathdelimiter(strpas(Path)) + 'Madang2010\';
   if not directoryExists(result) then
        ForceDirectories(result);
      }
end;

procedure DoSound2(AMsg: string);
begin
     if AMsg = 'Success' then
     begin
          if fileexists(pchar(GetConfigDir +
               'wave\JUBSUSUCCESS.wav')) then
               PlaySound(pchar(GetConfigDir +
                    'wave\JUBSUSUCCESS.wav'), 0, SND_ASYNC);
     end
     else
          if AMsg = 'Fail' then
          begin
               if fileexists(pchar(GetConfigDir +
                    'wave\JUBSUFAIL.wav')) then
                    PlaySound(pchar(GetConfigDir +
                         'wave\JUBSUFAIL.wav'), 0, SND_ASYNC);
          end
          else
               if AMsg = 'Already' then
               begin
                    if fileexists(pchar(GetConfigDir +
                         'wave\ALREADY.wav')) then
                         PlaySound(pchar(GetConfigDir +
                              'wave\ALREADY.wav'), 0, SND_ASYNC);
               end;

end;
procedure DoSound(AMsg: string);
begin

     PlaySound(pchar(GetConfigDir +
             'wave\'+AMsg +'.wav'), 0, SND_ASYNC);

end;


function ExtractURLFileName( S: String ): String;
var
     i: Integer;
begin
    Result := S;
    if Length( S ) > 0 then
      for i := Length( S ) downto 1 do
        if S[i] in ['/','''','=','&'] then
        begin
           Result := Copy( S, i + 1, Length( S ) - i );
           Exit;
       end;
end;


end.
