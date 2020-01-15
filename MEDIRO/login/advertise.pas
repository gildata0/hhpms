unit advertise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, shellapi, MoveText;

type
  Tadvertise_f = class(TForm)
    procedure Label19MouseEnter(Sender: TObject);
    procedure Label19MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  advertise_f: Tadvertise_f;

implementation

{$R *.dfm}

procedure Tadvertise_f.Label19MouseEnter(Sender: TObject);
begin
     //     (Sender as TLabel).Font.Color := clGreen;
     (Sender as TLabel).Font.Style := [fsUnderline, fsbold];
end;

procedure Tadvertise_f.Label19MouseLeave(Sender: TObject);
begin
     (Sender as TLabel).Font.Style := [];

end;

procedure Tadvertise_f.FormCreate(Sender: TObject);
var
     currentDir: string;
begin
//     caption:='덴트로 새상품 안내';
       caption:='HPMS 업데이트 안내';
       currentDir := extractFilePath(paramStr(0));


//     imgAdv.Align := alClient;
//     imgAdv.Picture.LoadFromFile(currentDir + 'webpage\adv_20171123.jpg');




end;

procedure Tadvertise_f.CheckBox1Click(Sender: TObject);
begin
      close;
end;

end.




 ShellExecute(GetDeskTopWindow, 'open', Pchar('IEXPLORE.EXE'),
     'http://hmslab2.cafe24.com/xe/board_jjuG37/549', nil, SW_SHOWNORMAL);
