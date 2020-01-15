unit TelPrint;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, BaseGrid, AdvGrid;

type
     TTelPrint_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRBand2: TQRBand;
          QRLabel1: TQRLabel;
          QRLabel2: TQRLabel;
          QRLabel3: TQRLabel;
          QRLabel4: TQRLabel;
          QRLabel5: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel8: TQRLabel;
          QRLabel9: TQRLabel;
          QRLabel10: TQRLabel;
          QRLabel11: TQRLabel;
          QRBand3: TQRBand;
          LblSubject: TQRLabel;
          QRSysData1: TQRSysData;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
          LblTerm: TQRLabel;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
     private
          { Private declarations }
          FGrid: TadvStringGrid;
          nRow: Integer;

     public
          { Public declarations }
          varFirst, varlast: string;
          constructor CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);

     end;

var
     TelPrint_f: TTelPrint_f;

implementation
uses uConfig, uDM, telList;

{$R *.dfm}

constructor TTelPrint_f.CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TTelPrint_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 1;

end;

procedure TTelPrint_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     HospName: string;
begin
     HospName := configvalue.varsaupname;

     LblSubject.Caption := '통화기록';
     LblHospName.Caption := HospName;
     LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);
     LblTerm.Caption := '(' + '조회일자:' + varFirst + '~' + varLast + ')';

     with FGrid do
     begin
          if (nRow < RowCount) and (nRow > 0 )then
          begin
               QRLabel1.Caption := Cells[1, nRow];
               QRLabel2.Caption := Cells[2, nRow];
               QRLabel3.Caption := Cells[3, nRow];
               QRLabel4.Caption := Cells[4, nRow];
               QRLabel5.Caption := Cells[5, nRow];
          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;

end;

end.

