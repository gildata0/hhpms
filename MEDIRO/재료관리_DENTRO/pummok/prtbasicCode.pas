unit prtbasicCode;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, AdvGrid;

type
     TprtbasicCode_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRBand2: TQRBand;
          QRL1: TQRLabel;
          QRL3: TQRLabel;
          QRL4: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel8: TQRLabel;
          QRLabel9: TQRLabel;
          QRLabel16: TQRLabel;
          QRL2: TQRLabel;
          QRSysData1: TQRSysData;
          QRBand4: TQRBand;
          LblHospName: TQRLabel;
          LblPrtDay: TQRLabel;
          QRBand3: TQRBand;
          LblSubject: TQRLabel;
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
     prtbasicCode_f: TprtbasicCode_f;

implementation
uses BasicCode, DM;

{$R *.dfm}

constructor TprtbasicCode_f.CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;

procedure TprtbasicCode_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 1;
end;

procedure TprtbasicCode_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     HospName: string;
begin
     HospName := dm_f.Name;
     LblSubject.Caption := basiccode_f.lblsub.caption + ' ����Ʈ';
     LblHospName.Caption := HospName;
     LblPrtDay.Caption := '�������:' + FormatDateTime('YYYY-MM-DD', Now);
     with FGrid do
     begin
          if nRow < RowCount then
          begin
               QRL1.Caption := Cells[1, nRow]; //�ڵ�
               QRL2.Caption := Cells[2, nRow]; //��Ī
               QRL3.Caption := Cells[3, nRow]; //�����
               if Cells[4, nRow] = '0' then
                    QRL4.Caption := '�����' //��뿩��
               else if Cells[4, nRow] = '1' then

                    QRL4.Caption := '������' //��뿩��
          end;
          MoreData := nRow < RowCount;
          Inc(nRow);
     end;
end;
end.

