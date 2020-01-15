unit snapCapture;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ieview, imageenview, Buttons, ieds, ComCtrls, ExtCtrls,
  iemview, AdvGlowButton, hyieutils, iexBitmaps, hyiedefs, iesettings,
  iexLayers, iexRulers;

type
  TsnapCapture_f = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Label5: TLabel;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Button3: TButton;
    ImageEnView1: TImageEnView;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    btnShot: TAdvGlowButton;
    btnAcc: TAdvGlowButton;
    btnCls: TAdvGlowButton;
    procedure FormActivate(Sender: TObject);
    procedure ImageEnView1DShowNewFrame(Sender: TObject);
     procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnShotClick(Sender: TObject);
    procedure btnAccClick(Sender: TObject);
    procedure btnClsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
   private
    { Private declarations }
    fOutputFile:TFileStream;
    fPosFile:TFileStream;
    procedure startCapture(isCapture : boolean);
  public
    { Public declarations }
    procedure Connect;
    procedure Disconnect;
    procedure ShowVideoFormats;
  end;

var
  snapCapture_f: TsnapCapture_f;

implementation

uses imageenio, uConfig, uGogekData, uFunctions, uMain, uDm;

{$R *.DFM}
procedure TsnapCapture_f.FormActivate(Sender: TObject);
begin

  // Fill video source combobox
  ComboBox1.Items.Assign(ImageEnView1.IO.DShowParams.VideoInputs);

  // Select first item
  ComboBox1.ItemIndex := 0;

  ShowVideoFormats;
  ImageEnView1.IO.DShowParams.VideoInputSource := 2;

  startcapture(true);

end;

procedure TsnapCapture_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TsnapCapture_f.FormDestroy(Sender: TObject);
begin
       snapCapture_f := nil;
end;


// We have got a new frame

procedure TsnapCapture_f.ImageEnView1DShowNewFrame(Sender: TObject);
var
  p:int64;
begin
  // copy current sample to ImageEnView bitmap
  ImageEnView1.IO.DShowParams.GetSample(ImageEnView1.IEBitmap);

  // refresh ImageEnView1
  ImageEnView1.Update;

  // capturing jpegs
  if SpeedButton2.Down then
  begin
    p:=fOutputFile.Position;
    fPosFile.Write(p,sizeof(p));
    ImageEnView1.IO.SaveToStreamJpeg( fOutputFile );
  end;
end;

procedure TsnapCapture_f.Connect;
var
  w, h: integer;
begin
  if (not ImageEnView1.IO.DShowParams.Connected) then
  begin
    // set video source as index of IO.DShowParams.VideoInputs
    w := 0; h := 0;
    if ListBox1.ItemIndex > -1 then
    begin
      w := ImageEnView1.IO.DShowParams.VideoFormats[ ListBox1.ItemIndex ].MaxWidth;
      h := ImageEnView1.IO.DShowParams.VideoFormats[ ListBox1.ItemIndex ].MaxHeight;
    end;
    ImageEnView1.IO.DShowParams.SetVideoInput(ComboBox1.ItemIndex,
                                              StrToIntDef(edit4.Text,0), // set this parameter if you have more than one camera with same name
                                              w, // capture width
                                              h, // capture height
                                              ''    // format
                                              );
    // enable frame grabbing
    ImageEnView1.IO.DShowParams.EnableSampleGrabber := true;
    // connect to the video input
    ImageEnView1.IO.DShowParams.Connect;
  end;
end;


procedure TsnapCapture_f.Disconnect;
begin
  // stop and disconnect
  ImageEnView1.IO.DShowParams.Disconnect;
end;

// Capture button

procedure TsnapCapture_f.startCapture(isCapture : boolean);
begin
  if isCapture=true then
  begin
    Connect;
    // start capture
    ImageEnView1.IO.DShowParams.Run;
  end
  else
    Disconnect;
//  SpeedButton2.Enabled:=SpeedButton1.Down;
end;



// video dialog

procedure TsnapCapture_f.btnAccClick(Sender: TObject);
var
     varDir: string;
     varname: string;
begin
     varname := ma_Chart;

     varDir := GetConfigDir + 'picture\';



          if configvalue.varUseHttp = '1' then
               ftpFaceImageSave(varname, GetConfigDir + 'picture\'+ varname + '.' + 'jpg')      // Ftp저장
          else
            if  trim(configValue.imgSharefolderPath) <>  '' then   //공유폴더 저장
            begin

                 imageEnView1.IO.SaveToFileJpeg(configValue.imgSharefolderPath + '\Picture\' + varname + '.' + 'jpg');

            end
            else
                begin   //DB에 Blob저장
                 //  dm_f.PicSave(main_f.edtChart.text, varDir + varname, ImgName)
                      PicSave(ma_Chart, varDir + varname,'jpg');
                end;

               main_f.imgPic.Picture.LoadFromFile(varDir + varname + '.jpg');





     close;
end;


procedure TsnapCapture_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure TsnapCapture_f.btnShotClick(Sender: TObject);
var
   varDir  : string;
begin
        if  btnShot.tag = 0 then
        begin
          btnShot.tag := 1;
          btnShot.caption := '재촬영';
          startcapture(false);
          varDir := GetConfigDir + 'picture\';
          imageEnView1.IO.SaveToFileJpeg(varDir + ma_Chart + '.jpg');
        end
        else
        begin
            btnShot.tag := 0;
            btnShot.caption := '캡쳐';
            startcapture(true);
        end;
end;

procedure TsnapCapture_f.Button1Click(Sender: TObject);
begin
  Connect;
  ImageEnView1.IO.DShowParams.ShowPropertyPages(iepVideoInput, ietFilter,false);
end;

// Video source dialog

procedure TsnapCapture_f.Button3Click(Sender: TObject);
begin
  Connect;
  ImageEnView1.IO.DShowParams.ShowPropertyPages(iepVideoInputSource, ietFilter,false);
end;

// format dialog

procedure TsnapCapture_f.Button2Click(Sender: TObject);
begin
  Connect;
  ImageEnView1.IO.DShowParams.ShowPropertyPages(iepVideoInput, ietOutput, false);
end;

procedure TsnapCapture_f.ShowVideoFormats;
var
  i: integer;
  s: string;
begin
  Connect;

  // fills video formats list box
  ListBox1.Clear;
  with ImageEnView1.IO.DShowParams do
    for i := 0 to VideoFormatsCount - 1 do
    begin
      with VideoFormats[i] do
        s := SysUtils.Format('%s %dx%d', [Format, MaxWidth, MaxHeight]);
      ListBox1.Items.Add(s);
    end;
  ListBox1.ItemIndex:=0;

  // fills video source inputs
  ComboBox2.Items.Assign(ImageEnView1.IO.DShowParams.VideoInputSources);
  // set current video source input
  ComboBox2.ItemIndex := ImageEnView1.IO.DShowParams.VideoInputSource;

  Disconnect;
end;

// changes video source

procedure TsnapCapture_f.ComboBox1Change(Sender: TObject);
begin
     ShowVideoFormats;

end;

// set video source input

procedure TsnapCapture_f.ComboBox2Change(Sender: TObject);
begin
    ImageEnView1.IO.DShowParams.VideoInputSource := ComboBox2.ItemIndex;
end;


// Capture to jpeg stream button
procedure TsnapCapture_f.SpeedButton2Click(Sender: TObject);
begin
  if SpeedButton2.Down then
  begin
    DeleteFile(Edit1.Text);
    DeleteFile(Edit1.Text+'.pos');
    fOutputFile:=TFileStream.Create( Edit1.text, fmCreate );
    fPosFile:=TFileStream.Create( Edit1.text+'.pos', fmCreate );
  end
  else
  begin
    fOutputFile.Free;
    fPosFile.Free;
  end;
end;

// convert to AVI
procedure TsnapCapture_f.Button4Click(Sender: TObject);
var
  filename:string;
  fr:TFileStream;
  fp:TFileStream;
  p:int64;
begin
  SpeedButton2.Down := false;
  //SpeedButton1.Down := false;
  if FileExists(Edit1.Text) and FileExists(Edit1.text+'.pos') then
  begin
    filename:=Edit1.Text+'.avi';
    fr:=TFileStream.Create(Edit1.Text,fmOpenRead);
    fp:=TFileStream.Create(Edit1.Text+'.pos',fmOpenRead);
    ImageEnView1.IO.CreateAVIFile(Edit1.Text+'.avi');
    while fp.Position < fp.Size do
    begin
      fp.Read(p,sizeof(p));
      fr.Position := p;
      ImageEnView1.IO.LoadFromStreamJpeg( fr );
      ImageEnView1.IO.SaveToAVI;
      ImageEnView1.Paint;
    end;
    ImageEnView1.IO.CloseAVIFile;
    fr.Free;
    fp.Free;
  end;
end;

end.
