unit prtSmsList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls,Grids, BaseGrid, AdvGrid;
type
     TprtSmsList_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRBand2: TQRBand;
          QRLabel1: TQRLabel;
          QRLabel2: TQRLabel;
          QRLabel3: TQRLabel;
          QRLabel4: TQRLabel;
          QRLabel5: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel8: TQRLabel;
          QRLabel9: TQRLabel;
          QRLabel10: TQRLabel;
          QRLabel11: TQRLabel;
          QRLabel12: TQRLabel;
          QRBand3: TQRBand;
          LblSubject: TQRLabel;
          QRLabel14: TQRLabel;
          QRLabel15: TQRLabel;
          QRLabel16: TQRLabel;
          QRLabel17: TQRLabel;
          QRSysData1: TQRSysData;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
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
     prtSmsList_f: TprtSmsList_f;

implementation
uses SmsResult,uDM;

{$R *.dfm}

constructor TprtSmsList_f.CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TprtSmsList_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 1;

end;

procedure TprtSmsList_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     HospName: string;
begin
     HospName := dm_f.Name;

     LblSubject.Caption := 'SMS전송내역';
     LblHospName.Caption := HospName;
     LblPrtDay.Caption := '출력일자:' + FormatDateTime('YYYY-MM-DD', Now);

     with FGrid do
     begin
          if nRow < RowCount then
          begin
               QRLabel1.Caption := Cells[2, nRow]; //챠트
               QRLabel2.Caption := Cells[3, nRow]; //성명
               QRLabel3.Caption := Cells[4, nRow]; //핸드폰
               QRLabel4.Caption := Cells[6, nRow]; //전송일자
               QRLabel5.Caption := Cells[7, nRow]; //전송시간
               QRLabel6.Caption := Cells[8, nRow]; //전송결과
               QRLabel14.Caption := Cells[10, nRow]; //에약전송일자
               QRLabel17.Caption := Cells[11, nRow]; //예약전송시간
               QRLabel18.Caption := Cells[12, nRow]; //내용
          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;

end;

end.
