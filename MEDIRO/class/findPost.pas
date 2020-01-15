unit findPost;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ExtCtrls, AdvPanel,
     AdvGlowButton, AdvObj, AdvUtil;

type
     Tfindpost_f = class(TForm)
          AdvPanel2: TAdvPanel;
          AdvPanel1: TAdvPanel;
          btnOk: TAdvGlowButton;
          btnCancel: TAdvGlowButton;
          grdPost: TAdvStringGrid;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure grdPostKeyPress(Sender: TObject; var Key: Char);
    procedure grdPostDblClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     findpost_f: Tfindpost_f;

implementation

uses uDM;

{$R *.dfm}

procedure Tfindpost_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tfindpost_f.FormDestroy(Sender: TObject);
begin
     findpost_f := nil;
end;

procedure Tfindpost_f.FormShow(Sender: TObject);
var
     ARow: integer;
begin
     CAPTION := '우편번호 찾기';
     ARow := GrdPost.Row;

     btnOk.Enabled := true;
     DM_f.SqlTemp.Close;
     //  DM_f.SqlTemp.ParamByName('Name').AsString := Edit2.text + '%';
     DM_f.SqlTemp.Open;
     grdPost.SetFocus;

end;

procedure Tfindpost_f.grdPostKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          ModalResult := mrOk

     else
          if key = #27 then
               ModalResult := mrCancel;

end;

procedure Tfindpost_f.grdPostDblClick(Sender: TObject);
begin
     ModalResult := mrOk ;


end;

end.

