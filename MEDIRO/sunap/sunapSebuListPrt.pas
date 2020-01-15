unit sunapSebuListPrt;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QRCtrls, QuickRpt, ExtCtrls, AdvGrid;

type
     TsunapSebuListPrt_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRLabel7: TQRLabel;
          QRLabel10: TQRLabel;
          QRLabel11: TQRLabel;
          QRLabel12: TQRLabel;
          QRLabel15: TQRLabel;
          QRLabel16: TQRLabel;
          QRBand2: TQRBand;
          QRLabel1: TQRLabel;
          QRLabel4: TQRLabel;
          QRLabel5: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel14: TQRLabel;
          QRLabel17: TQRLabel;
          QRSysData1: TQRSysData;
          QRBand3: TQRBand;
          LblSubject: TQRLabel;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
          QRLabel13: TQRLabel;
          QRLabel18: TQRLabel;
          QRLabel19: TQRLabel;
          QRLabel20: TQRLabel;
          QRLabel21: TQRLabel;
          QRLabel23: TQRLabel;
          QRLabel24: TQRLabel;
          QRLabel25: TQRLabel;
          QRLabel27: TQRLabel;
          QRLabel28: TQRLabel;
          QRBand5: TQRBand;
          QRLabel29: TQRLabel;
          QRLabel30: TQRLabel;
          QRLabel31: TQRLabel;
          QRLabel32: TQRLabel;
          QRLabel33: TQRLabel;
          QRLabel34: TQRLabel;
          QRLabel35: TQRLabel;
          QRLabel36: TQRLabel;
          QRLabel37: TQRLabel;
          QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
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
     sunapSebuListPrt_f: TsunapSebuListPrt_f;

implementation
uses uConfig, uDm, uFunctions, uMain, sebusunap;

{$R *.dfm}

constructor TsunapSebuListPrt_f.CreateFrm(AOWner: TComponent; AGrid: TadvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TsunapSebuListPrt_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 2;
end;

procedure TsunapSebuListPrt_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     HospName: string;
begin
     LblHospName.Caption := configvalue.varsaupname;
     LblPrtDay.Caption := '�������:' + FormatDateTime('YYYY-MM-DD', Now);

     QRLabel29.Caption := Fgrid.Cells[6, 1];  //���� ��
     QRLabel30.Caption := Fgrid.Cells[9, 1];  //��  ��
     QRLabel31.Caption := Fgrid.Cells[5, 1];  //����  ��
     QRLabel32.Caption := Fgrid.Cells[11, 1]; //����  ��
     QRLabel33.Caption := Fgrid.Cells[12, 1]; //����  ��
     QRLabel34.Caption := Fgrid.Cells[13, 1]; //ī��  ��
     QRLabel35.Caption := Fgrid.Cells[14, 1]; //������
     QRLabel44.Caption := Fgrid.Cells[15, 1]; //����������
     QRLabel36.Caption := Fgrid.Cells[17, 1]; //���� ��
     QRLabel37.Caption := Fgrid.Cells[18, 1]; //�̼� ��

     with FGrid do
     begin
          if nRow < RowCount then
          begin
               QRLabel1.Caption := Cells[1, nRow]; //��������

               QRLabel6.Caption := Cells[5, nRow]; //������
               QRLabel4.Caption := Cells[6, nRow]; //����
               QRLabel5.Caption := Cells[9, nRow]; //��

               QRLabel14.Caption := Cells[11, nRow]; //����
               QRLabel17.Caption := Cells[12, nRow]; //���ݿ�����
               QRLabel23.Caption := Cells[13, nRow]; //ī��
               QRLabel24.Caption := Cells[14, nRow]; //����
               QRLabel43.Caption := Cells[15, nRow]; //��������
               QRLabel25.Caption := Cells[17, nRow]; //�����
               QRLabel28.Caption := Cells[18, nRow]; //�̼���
               QRLabel27.Caption := Cells[20, nRow]; //ī������
               QRLabel40.Caption := Cells[23, nRow]; //�������


          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;

end;

end.

