unit DynamicPrint;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, AdvGrid;

type
     TDynamicPrint_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRBand2: TQRBand;
          QRBand3: TQRBand;
          LblSubject: TQRLabel;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
          lblTerm: TQRLabel;
          LblSchDay: TQRLabel;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
          procedure FormCreate(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
     private
          { Private declarations }
          FGrid: TAdvStringGrid;
          nRow, LineNo: Integer;
          DynamicLabel: TQrLabel;

     public
          { Public declarations }
          constructor CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);

     end;

var
     DynamicPrint_f: TDynamicPrint_f;
     VarColumn: Integer;

implementation

{$R *.dfm}
const
     QRMAX = 100;
     LeftInt = 35;
var
     DynamicLbl: array[0..QRMAX] of TQRLabel;
     DynamicShape: array[0..QRMAX] of TQRShape;
     DynamicHeaderLbl: array[0..QRMAX] of TQRLabel;

constructor TDynamicPrint_f.CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TDynamicPrint_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 1;
//     showmessage(inttoStr(FGrid.Rowcount));
end;

procedure TDynamicPrint_f.QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
var
     i: integer;
begin
     with FGrid do
     begin
          if nRow < RowCount then
          begin
               for i := 0 to varColumn - 1 do
               begin
                    DynamicHeaderLbl[i].Caption := Cells[i, 0];

                    DynamicLbl[i].Caption := Cells[i, nRow];
                    if nRow mod 2 <> 0 then
                         DynamicShape[i].Brush.Color := clGray
                    else DynamicShape[i].Brush.Color := clWhite;
               end;
          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;
end;

procedure TDynamicPrint_f.FormCreate(Sender: TObject);
var
     i, Varinter: integer;
begin
     varColumn := Fgrid.ColCount;
     qrBand2.Height := 20;

//색 보이기용 Shape생성
    Varinter := 0;
     for i := 0 to varColumn - 1 do
     begin
          DynamicShape[i] := TQRShape.Create(Self);
          with DynamicShape[i] do
          begin
               Parent := QuickRep1.Bands.DetailBand;
               Top := 0;
               Height := parent.Height;
               width := fGrid.ColWidths[i];
               Left := Varinter;
               Varinter := Varinter + width;
               Pen.Style := psClear;
               Brush.Color := clyellow;
          end;
     end;


//본문라벨생성

    Varinter := 0;
     for i := 0 to varColumn - 1 do
     begin
          DynamicLbl[i] := TQRLabel.Create(Self);

          with DynamicLbl[i] do
          begin
               Parent := QuickRep1.Bands.DetailBand;
//               alignment:= fGrid.h
               Autosize:=false;
               Top := 2;
               width := fGrid.ColWidths[i];
               Left := Varinter;
               Varinter := Varinter + width;
               Font.Name := '바탕체';
               Font.Size := 9;
               Transparent := True;
          end;
     end;

//제목생성
     Varinter := 0;
     for i := 0 to varColumn - 1 do
     begin
          DynamicHeaderLbl[i] := TQRLabel.Create(Self);
          with DynamicHeaderLbl[i] do
          begin
               Parent := QuickRep1.Bands.ColumnHeaderBand;
               Top := 1;
//               width := 100;
               width := fGrid.ColWidths[i];
               Left := Varinter;
               Varinter := Varinter + width;
               Font.Name := '바탕체';
               Font.Size := 9;
          end;
     end;
end;

procedure TDynamicPrint_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
var
     i: integer;
begin
     for i := 0 to varColumn - 1 do
     begin
          DynamicLbl[i].Free;
          DynamicHeaderLbl[i].Free;
          DynamicShape[i].Free;
     end;
end;

end.

