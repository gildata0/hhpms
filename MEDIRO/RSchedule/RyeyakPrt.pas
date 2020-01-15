unit RyeyakPrt;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, Grids, BaseGrid, AdvGrid;

type
     TRyeyakPrt_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRBand2: TQRBand;
          lblName: TQRLabel;
          lblTime: TQRLabel;
          lblRemark: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel9: TQRLabel;
          QRLabel12: TQRLabel;
          QRBand3: TQRBand;
          lblSubject: TQRLabel;
          lblTel: TQRLabel;
          QRLabel15: TQRLabel;
          QRLabel16: TQRLabel;
          lblCode: TQRLabel;
          QRSysData1: TQRSysData;
          QRLabel1: TQRLabel;
          lblDate: TQRLabel;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
          LblScheduleDay: TQRLabel;
          QRLabel2: TQRLabel;
          QRLabel3: TQRLabel;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
     private
          { Private declarations }
          FGrid: TadvStringGrid;
          nRow: Integer;

     public
          { Public declarations }
          constructor CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);

     end;

var
     RyeyakPrt_f: TRyeyakPrt_f;

implementation
uses uConfig, Rschedule, uDM;

{$R *.dfm}

constructor TRyeyakPrt_f.CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TRyeyakPrt_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
var
     HospName: string;
begin
     HospName := configvalue.varsaupname;

     LblSubject.Caption := '�� �� �� Ȳ';
     LblHospName.Caption := HospName;
     LblPrtDay.Caption := '�������:' + FormatDateTime('YYYY-MM-DD', Now);
     LblScheduleDay.Caption := '�˻�����:' +
          '(' +
          formatDateTime('YYYY-MM-DD', RScheDule_f.dpYeyak1.Date) +
          ' ~ ' +
          formatDateTime('YYYY-MM-DD', RScheDule_f.dpYeyak2.Date) +
          ')';
     nRow := 1;
end;

procedure TRyeyakPrt_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
begin
     with FGrid do
     begin
          if (nRow < RowCount) and (nRow > 0) then
          begin
               lblTime.Caption := Cells[2, nRow]; //�ð�
               lblCode.Caption := Cells[3, nRow]; //íƮ
               lblName.Caption := Cells[4, nRow]; // ����
               lblTel.Caption := Cells[5, nRow]; //��ȭ
               lblRemark.Caption := Cells[6, nRow]; //����
               lblDate.Caption := Cells[1, nRow]; //����
               if Cells[7, nRow] = '1' then
                    qrLabel3.Caption := 'V'
               else
                    qrLabel3.Caption := '';

          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;
end;

procedure TRyeyakPrt_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := CaFree;
end;

procedure TRyeyakPrt_f.FormDestroy(Sender: TObject);
begin
     Ryeyakprt_f := nil;
end;

end.

