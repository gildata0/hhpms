unit uHttpThread;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ExtCtrls , jpeg, FileCtrl, Grids, AdvObj, BaseGrid,
  AdvGrid, whellScrollBox;

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
     constructor Create(const AURL, Asavepath: String; Aindex:integer); reintroduce;
     destructor Destroy; override;

    end;

implementation
//uses pdfChartList;
constructor TDownloadThread.Create(const AURL, Asavepath: String; Aindex:integer);
begin
   inherited Create(False);

      FreeOnTerminate := True;
      URL := AURL;
      iCnt := Aindex;
      savepath := Asavepath;

end;

destructor TDownloadThread.Destroy;
begin

  inherited;
end;


procedure TDownloadThread.Display;
begin
    // imagesView_f.LoadImages(savepath, iCnt);


//       pdfChartList_f.loadDownloadFile(savepath);

 end;

procedure TDownloadThread.Execute;
 var
   mStream: TMemoryStream;
   jpgImage : TJpegImage;
 begin
   mStream:=TMemoryStream.Create;
   HTTP := TIdHTTP.Create(nil);
   HTTP.HandleRedirects := True;
 //  Http. OnWork:= IdHTTP1Work;
 //  Http.OnWorkBegin:= IdHTTP1WorkBegin;
 //  Http.OnWorkend:= IdHTTP1WorkEnd;
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


end.
