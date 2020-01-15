unit uUpdateCheck;
interface
uses
     SysUtils,
     Dialogs,
     Classes, StdCtrls, Controls,
     Windows, Math, Graphics,
     mmSystem, Forms, Messages, ExtCtrls, Registry,
     Maskutils, strutils, Mask, ShellApi, ShlObj, ActiveX, ShFolder,
     inifiles, AdvProgressBar, TLHelp32,
     TypInfo, idFtp, uFunctions,
     IdExplicitTLSClientServerBase, IdHTTP,idUri;

function LoadUpdateVersion: Boolean;
function LogFileDown: boolean;
function UpdateCheck:Boolean;

implementation

function UpdateCheck:Boolean;
var
     currentDir: string;
begin
     currentDir := ExtractFilePath(Application.ExeName);
     if not DirectoryExists(currentDir + 'updates\new\') then
          if not ForceDirectories(currentDir + 'updates\new\') then
               raise Exception.Create('Cannot create ' +
                    currentDir + 'updates\new\');
     if not DirectoryExists(currentDir + 'updates\old\') then
          if not ForceDirectories(currentDir + 'updates\old\') then
               raise Exception.Create('Cannot create ' +
                    currentDir + 'updates\old\');

     result:=  LoadUpdateVersion;
end;

function LoadUpdateVersion: Boolean;
var
     currentDir: string;
     StrList: TStringList;
     StrList2: TStringList;
     varPresentVersion, varGetVersion: double;
begin
     currentDir := ExtractFilePath(Application.ExeName);
     StrList := TStringList.Create;
     StrList2 := TStringList.Create;
     if LogFileDown = true then
     begin

          //updates\new\�� �ִ� HealthHubCID.log������ �����ͼ� ���� ��ȣ�� Ȯ���Ѵ�.
          if FileExists(currentDir + 'updates\new\HHPMS.log') then
          begin
               StrList.LoadFromFile(currentDir + 'updates\new\HHPMS.log');
               varGetVersion := strToFloat(StrList.Strings[0]);
               StrList.Free;
          end
          else
          begin

               varGetVersion := 0;
          end;

          //updates\Old�� �ִ� madang.log������ �����ͼ� ���� ��ȣ�� Ȯ���Ѵ�.
          if FileExists(currentDir + 'updates\old\HHPMS.log') then
          begin
               StrList2.LoadFromFile(currentDir + 'updates\old\HHPMS.log');
               if StrList2.Count > 0 then
                    varPresentVersion := strToFloat(StrList2.Strings[0])
               else
                    varPresentVersion := 0;


               StrList2.Free;
          end
          else
          begin

               varPresentVersion := 0;
          end;

          if varGetVersion > varPresentVersion then   //���� �������� �������ִ��ź��� ũ��
          begin
               result := true;
          end
          else
          begin
               result := false;
          end;

     end
     else
     begin
          result := false;
     end;
end;

//log������ �ٿ�ε� �޾Ƽ� ���� ��ġ�� �������� �񱳸� �õ��Ѵ�.

function LogFileDown: boolean;
var
     StrList: TStringList;
     i, linecount: integer;
     dStream: Tstream;
     currentDir: string;
     idftp1: TidFtp;

   HTTP: TIdHTTP;
   mStream: TMemoryStream;
   url : string;


begin
     currentDir := ExtractFilePath(Application.ExeName);

     try
        {  idFtp1 := TidFtp.Create(application);
          with idftp1 do
          begin
               Passive:=true;
               dStream :=
                    TFileStream.Create(currentDir +
                    'updates\new\HHPMS.log', fmCreate
                    or
                    fmShareExclusive);

               username := 'gildata';
               password := 'gkgjsdu0';
               Host := 'gildata.hosting.paran.com';
               Connect;
               ChangeDir('public_html/files/down/AutoSeperator');
               Get('HHPMS.log', dStream);
               dStream.Free;
               disconnect;
               result := true;
          end;
          idFtp1.Free; }



           try
             URL := TIdURI.URLEncode('http://hmslab.co.kr/dangjindent/files_h/update_HHPMS/HHPMS.zip');

             mStream:=TMemoryStream.Create;
             HTTP := TidHTTP.Create;
             HTTP.Get('http://hmslab.co.kr/dangjindent/files_h/update_HHPMS/HHPMS.log', mStream );
             mStream.SaveToFile(currentDir + 'updates\new\HHPMS.log');

            finally


             FreeAndNil(HTTP);
             FreeAndNil(mStream);
             result := true;
            end;



     except
          on E: Exception do
          begin
               ExceptLogging('������Ʈ ���� ���� ����. ���߿� �ٽ� �õ��ϼ���.'
                    +
                    #10#13
                    +
                    E.Message);
//               showmessage('������Ʈ ���� ���� ����. ���߿� �ٽ� �õ��ϼ���.'
//                    +
//                    #10#13
//                    +
//                    E.Message);
               dStream.Free;
               HTTP.Free;
             //  idFtp1.Free;
               result := false;
          end;
     end;
end;

end.

