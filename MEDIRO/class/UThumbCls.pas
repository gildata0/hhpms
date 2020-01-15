{
==03.29
 1.ThumbNail Component �� �̻��ؼ� TImage�� �����ؼ�
   �׷��ִ°ɷ� ��ü�Ѵ�.
 2. ThumbNail Component�� ���ϸ� �װɷ� ��ü�Ұ�.
}
unit UThumbCls;

interface

uses
  Controls, Extctrls, Classes, SysUtils, StdCtrls;

  type
    FileErr = Class(Exception);
    
    Tbi_Thumb = Class(TGraphicControl)
    private
      FImg : TImage;
      FfLabel: TLabel; // �̸��� ���ѳ�
      //�����ϱ� ���� ������===
      FOwnName: String;     //Owner Name
      FImgName: String;     //Image Name
      FtbName: String;      //ThumbNail Name
      FDescription: String; //Description
      FImgKind : String;    //Image Kind
      FLocate  : String;    //Location
      function GetImgLeft: Integer;
      function GetImgTop : Integer;
    public
      Constructor Create(AOwner: TComponent); override;
      Destructor Destroy; override;
      procedure  LoadImg(ADir: String);
    published
      property Img: TImage read FImg;
      property fLabel: TLabel read FfLabel;
      property OwnName: String  read FOwnName write FOwnName;
      property ImgName: String  read FImgName write FImgName;
      property TbName : String  read FTbName  write FTbName;
      property ImgLeft: Integer read GetImgLeft;
      property ImgTop : Integer read GetImgTop;
      property Description : String read FDescription write FDescription;
      property ImgKind : String read FImgKind write FImgKind;
      property Locate : String read FLocate write FLocate;
    end;

implementation

Const
  FileEmpty = ' %S �� �ش��ϴ� ������ �����ϴ�.';

procedure ErrMsg(const Msg: String);
begin
  raise FileErr.Create(Msg);
end;

{ Tbi_Thumb }
constructor Tbi_Thumb.Create(AOwner: TComponent);
begin
  inherited;
  FImg := TImage.Create(AOwner);
  FfLabel:= TLabel.Create(AOwner);
end;

destructor Tbi_Thumb.Destroy;
begin
  if Assigned(Fimg) then
    FreeAndNil(FImg);
  if Assigned(fLabel) then
    FreeAndNil(FfLabel);
  inherited;
end;

function Tbi_Thumb.GetImgLeft: Integer;
begin
  Result := FImg.Left;
end;

function Tbi_Thumb.GetImgTop: Integer;
begin
  Result := FImg.Top;
end;

procedure Tbi_Thumb.LoadImg(ADir: String);
begin
  if FileExists(ADir) then
    FImg.Picture.LoadFromFile(ADir)
  else
    ErrMsg(Format(FileEmpty, [ADir]));
end;

end.
