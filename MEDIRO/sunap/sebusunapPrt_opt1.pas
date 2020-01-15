unit sebusunapPrt_opt1;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QRCtrls, QuickRpt, ExtCtrls, AdvGrid;

type
     TsebusunapPrt_opt1_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRLabel8: TQRLabel;
          QRLabel10: TQRLabel;
          QRLabel12: TQRLabel;
          QRLabel15: TQRLabel;
          QRLabel16: TQRLabel;
          QRBand2: TQRBand;
          QRLabel4: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel14: TQRLabel;
          QRLabel17: TQRLabel;
          QRSysData1: TQRSysData;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          QRLabel13: TQRLabel;
          QRLabel21: TQRLabel;
          QRLabel23: TQRLabel;
          QRLabel27: TQRLabel;
          QRBand5: TQRBand;
          QRLabel29: TQRLabel;
          QRLabel31: TQRLabel;
          QRLabel32: TQRLabel;
          QRLabel33: TQRLabel;
          QRLabel34: TQRLabel;
          QRLabel38: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    LblSubject: TQRLabel;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
     private
          { Private declarations }
          FGrid: TadvStringGrid;
          nRow: Integer;
     public
          { Public declarations }
          varViewMode : string;
          varPrintMode : integer;
          constructor CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);
     end;

var
     sebusunapPrt_opt1_f: TsebusunapPrt_opt1_f;

implementation
uses uConfig, udm, uFunctions, uMain, sebusunap;

{$R *.dfm}

constructor TsebusunapPrt_opt1_f.CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TsebusunapPrt_opt1_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 2;
end;

procedure TsebusunapPrt_opt1_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     HospName: string;
begin
     LblHospName.Caption := configvalue.varsaupname;
     QRLabel29.Caption := Fgrid.Cells[8, 1];    //보험 합
     QRLabel31.Caption := Fgrid.Cells[7, 1];    //수납  합
     QRLabel32.Caption := Fgrid.Cells[13, 1];   //현금  합
     QRLabel33.Caption := Fgrid.Cells[14, 1];   //현영  합
     QRLabel34.Caption := Fgrid.Cells[15, 1];   //카드  합
     QRLabel44.Caption := Fgrid.Cells[17, 1];   //통장현영합

     with FGrid do
     begin
          if nRow < RowCount then
          begin
               QRLabel3.Caption := Cells[1, nRow]; //일자
               QRLabel1.Caption := Cells[2, nRow]; //성명

               QRLabel6.Caption := Cells[7, nRow]; //수납액
               QRLabel4.Caption := Cells[8, nRow]; //보험
               QRLabel14.Caption := Cells[13, nRow]; //현금
               QRLabel17.Caption := Cells[14, nRow]; //현금영수증
               QRLabel23.Caption := Cells[15, nRow]; //카드
               QRLabel43.Caption := Cells[17, nRow]; //통장현영
               QRLabel27.Caption := Cells[22, nRow]; //카드종류


          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;

end;

end.

