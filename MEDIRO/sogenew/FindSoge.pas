unit findsoge;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Grids, BaseGrid, AdvGrid, AdvPanel, StdCtrls, ExtCtrls,
     EllipsLabel, AdvGlowButton , AdvObj, AdvUtil;

type
     TfindSoge_f = class(TForm)
    grdFind: TAdvStringGrid;
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnNew: TAdvGlowButton;
    lblCount: TLabel;
    lbltime: TLabel;
    lblshowtime: TLabel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure grdFindKeyPress(Sender: TObject; var Key: Char);
          procedure grdFindDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdFindGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     findSoge_f: TfindSoge_f;

implementation
{$R *.dfm}

procedure TfindSoge_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TfindSoge_f.FormDestroy(Sender: TObject);
begin
     findSoge_f := nil;
end;

procedure TfindSoge_f.FormShow(Sender: TObject);
begin
     caption := '소개자검색';
end;

procedure TfindSoge_f.btnCancelClick(Sender: TObject);
begin
     close;
end;

procedure TfindSoge_f.grdFindKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          ModalResult := mrOk

     else
          if key = #27 then
               ModalResult := mrCancel;

end;

procedure TfindSoge_f.grdFindDblClick(Sender: TObject);
begin
     ModalResult := mrOk;

//     grdfind.SortIndexes.a

end;

procedure TfindSoge_f.FormCreate(Sender: TObject);
begin
   //   grdFind.ColWidths[1] := 0;
   //   grdFind.ColWidths[9] := 0;
       grdFind.align := alClient;
end;

procedure TfindSoge_f.grdFindGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          3, 5:
               Halign := taCenter;
     end;

end;

end.

