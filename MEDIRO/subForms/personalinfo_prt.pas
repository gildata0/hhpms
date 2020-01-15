unit personalinfo_prt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls ;

type
  Tpersonalinfo_prt_f = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    lblTitle: TQRLabel;
    QRBand2: TQRBand;
    QRImage1: TQRImage;
    QRBand3: TQRBand;
    qrLblDate: TQRLabel;
    qrLblName: TQRLabel;
    qrLblJumin: TQRLabel;
    qrlblSangho: TQRLabel;
    QRLabel2: TQRLabel;
    QRImage2: TQRImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  personalinfo_prt_f: Tpersonalinfo_prt_f;

implementation

{$R *.dfm}

end.
