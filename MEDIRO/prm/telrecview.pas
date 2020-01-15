unit telrecview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, Vcl.StdCtrls;

type
  Ttelrecview_f = class(TForm)
    memMemo: TMemo;
    spSkinPanel2: TPanel;
    btnCls: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnClsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telrecview_f: Ttelrecview_f;

implementation

{$R *.dfm}

procedure Ttelrecview_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := caFree;
end;

procedure Ttelrecview_f.FormDestroy(Sender: TObject);
begin
    telrecview_f := nil;
end;

procedure Ttelrecview_f.btnClsClick(Sender: TObject);
begin
     close;
end;

procedure Ttelrecview_f.FormShow(Sender: TObject);
begin
    // memMemo.text:='';
end;

end.
