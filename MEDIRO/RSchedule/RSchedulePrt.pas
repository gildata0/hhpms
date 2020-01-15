unit RSchedulePrt;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, Grids, BaseGrid, AdvGrid;

type
     TRSchedulePrt_f = class(TForm)
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
          lblFinish: TQRLabel;
          QRLabel15: TQRLabel;
          QRSysData1: TQRSysData;
          QRLabel1: TQRLabel;
          lblDate: TQRLabel;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
          LblScheduleDay: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lblRefer: TQRLabel;
    lblResult: TQRLabel;
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
     RSchedulePrt_f: TRSchedulePrt_f;

implementation
uses uConfig, uDM, Rschedule ;

{$R *.dfm}

constructor TRSchedulePrt_f.CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TRSchedulePrt_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
var
     HospName: string;
begin
     HospName := configvalue.varsaupname;

     LblSubject.Caption := '���� ����';
     LblHospName.Caption := HospName;
     LblPrtDay.Caption := '�������:' + FormatDateTime('YYYY-MM-DD', Now);
     LblScheduleDay.Caption := '�˻�����:' +
          '(' +
          formatDateTime('YYYY-MM-DD', RScheDule_f.deSch1.Date) +
          ' ~ ' +
          formatDateTime('YYYY-MM-DD', RScheDule_f.deSch2.Date) +
          ')';
     nRow := 1;
end;

procedure TRSchedulePrt_f.QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
begin
     with FGrid do
     begin
          if (nRow < RowCount) and (nRow > 0 )then
          begin
               lblDate.Caption := Cells[1, nRow] ; //����
               lblName.Caption := Cells[2, nRow] ; // �����
               lblTime.Caption := Cells[3, nRow] ; //�ð�
               lblRemark.Caption := Cells[5, nRow] ; //����
               lblFinish.Caption := Cells[6, nRow] ; //�Ϸ�
               lblRefer.Caption := Cells[7, nRow] ; //������
               lblResult.Caption := Cells[9, nRow] ; //ó�����
          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;
end;

procedure TRSchedulePrt_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := CaFree;
end;

procedure TRSchedulePrt_f.FormDestroy(Sender: TObject);
begin
     RSchedulePrt_f := nil;
end;

end.

