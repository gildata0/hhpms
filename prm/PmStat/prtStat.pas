unit prtStat;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls,  BaseGrid, AdvGrid;

type
     TprtStat_f = class(TForm)
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
    QRLabel6: TQRLabel;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
     private
          { Private declarations }
          FGrid: TAdvStringGrid;
          nRow: Integer;

     public
          { Public declarations }
          constructor CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);

     end;

var
     prtStat_f: TprtStat_f;

implementation


{$R *.dfm}

constructor TprtStat_f.CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TprtStat_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 0;

end;

procedure TprtStat_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     HospName: string;
begin
     HospName := ''; //main_f.sbMain.Panels[0].Text;

     LblSubject.Caption := '';
     LblHospName.Caption := HospName;
     LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);

     with FGrid do
     begin
          if nRow < RowCount then
          begin
               QRLabel1.Caption := Cells[0, nRow] ;
               QRLabel2.Caption := Cells[1, nRow];
               QRLabel3.Caption := Cells[2, nRow];
               QRLabel4.Caption := Cells[3, nRow];
               QRLabel5.Caption := Cells[4, nRow];
               QRLabel6.Caption := Cells[5, nRow];
          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;

end;

end.
