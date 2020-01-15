unit prtDm1;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, Grids, BaseGrid, AdvGrid;

type
     TprtDm1_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          lblName: TQRLabel;
          lblZip: TQRLabel;
          lblSub: TQRLabel;
          lblJuso2: TQRLabel;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
     private
          { Private declarations }

          FGrid: TAdvStringGrid;
          nRow: Integer;

     public
          { Public declarations }
          constructor CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);

     end;

var
     prtDm1_f: TprtDm1_f;

implementation
uses dm, uFunctions;

{$R *.dfm}

constructor TprtDm1_f.CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TprtDm1_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 1;

end;

procedure TprtDm1_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);

var
     HospName: string;

     state: Boolean;
begin
     HospName := dm_f.Name;

     with FGrid do
     begin
          if nRow < RowCount then
          begin
               LblName.Caption := Cells[4, nRow];
               LblZip.Caption := copy(Cells[8, nRow], 1, 3) + ' - ' + copy(Cells[8, nRow], 4, 3);
               LblJuso2.Caption := Cells[9, nRow];
          end;

          MoreData := (nRow < RowCount); //and (Cells[1, nRow] <> '');
          Inc(nRow);
     end;
end;

procedure TprtDm1_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TprtDm1_f.FormDestroy(Sender: TObject);
begin
     prtDm1_f := nil;
end;

end.

