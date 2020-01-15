unit Prt_wonwe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, jpeg, iniFiles;

type
  TPrt_Wonwe_f = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel70: TQRLabel;
    QRShape2: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel1: TQRLabel;
    QRShape10: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRShape17: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape21: TQRShape;
    QRLabel91: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel100: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel101: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel103: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRShape48: TQRShape;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRShape49: TQRShape;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRRichText1: TQRRichText;
    QRRichText2: TQRRichText;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
          { Private declarations }
  public
          { Public declarations }
  end;

var
  Prt_Wonwe_f: TPrt_Wonwe_f;
  MyIniFile: TIniFile;
implementation

uses uConfig, uDM, jinryo,  wonwe ;

{$R *.dfm}

procedure TPrt_Wonwe_f.FormCreate(Sender: TObject);

begin
//    if dm_f.loadini=true then
//  begin
  QRLabel3.Caption := configvalue.varsaupName;
  QRLabel4.Caption := configvalue.vartel1;
  QRLabel5.Caption := configvalue.varfax1;
  QRLabel6.Caption := configvalue.varEmail;
  QRLabel15.Caption := '요양기관기호 : ' + configvalue.varYoyang;
//  end;
  with dm_f.sqlWork do
  begin
     Close;
     sql.clear;
     sql.Add(' Select * from injek ');
     sql.Add(' where chart = :chart ');
     ParamByName('chart').AsString := jinryo_f.varChartNo;
     Open;

     if not IsEmpty then
     begin
          QRLabel132.Caption := FieldbyName('piboname').AsString;
          QRLabel133.Caption := FieldbyName('kiho').AsString;
          QRLabel134.Caption := FieldbyName('k_number').AsString;
     end;
  end;
end;

end.

