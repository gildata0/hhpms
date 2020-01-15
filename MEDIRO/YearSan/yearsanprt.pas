unit yearsanprt;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls, QuickRpt, QRCtrls, BaseGrid, AdvGrid, frxClass;

type
     Tyearsanprt_f = class(TForm)
          QuickRep1: TQuickRep;
          QRBand1: TQRBand;
          QRBand2: TQRBand;
          lblDate: TQRLabel;
          QRImage1: TQRImage;
          lblPlan: TQRLabel;
          lblUp: TQRLabel;
          lblEa: TQRLabel;
          lblAmount: TQRLabel;
          QRSysData1: TQRSysData;
          QRShape3: TQRShape;
          lblSubject: TQRLabel;
          QRShape2: TQRShape;
          QRLabel1: TQRLabel;
          QRShape9: TQRShape;
          QRShape11: TQRShape;
          QRShape19: TQRShape;
          QRShape21: TQRShape;
          QRShape22: TQRShape;
          QRShape23: TQRShape;
          QRShape24: TQRShape;
          QRShape25: TQRShape;
          QRShape26: TQRShape;
          QRShape27: TQRShape;
          QRLabel2: TQRLabel;
          QRLabel3: TQRLabel;
          QRLabel4: TQRLabel;
          QRLabel5: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel18: TQRLabel;
          QRLabel19: TQRLabel;
          QRLabel20: TQRLabel;
          QRLabel21: TQRLabel;
          QRLabel22: TQRLabel;
          QRLabel23: TQRLabel;
          QRLabel24: TQRLabel;
          QRLabel25: TQRLabel;
          QRLabel26: TQRLabel;
          QRLabel27: TQRLabel;
          QRShape28: TQRShape;
          QRShape29: TQRShape;
          QRShape30: TQRShape;
          QRShape31: TQRShape;
          QRShape32: TQRShape;
          QRLabel8: TQRLabel;
          QRLabel9: TQRLabel;
          QRLabel10: TQRLabel;
          QRLabel11: TQRLabel;
          QRLabel12: TQRLabel;
          QRLabel13: TQRLabel;
          QRLabel14: TQRLabel;
          QRLabel15: TQRLabel;
          QRBand4: TQRBand;
          QRShape4: TQRShape;
          QRShape5: TQRShape;
          QRShape6: TQRShape;
          QRShape8: TQRShape;
          QRLabel16: TQRLabel;
          QRLabel17: TQRLabel;
          QRLabel28: TQRLabel;
          QRLabel29: TQRLabel;
          QRLabel30: TQRLabel;
          QRLabel31: TQRLabel;
          QRLabel32: TQRLabel;
          QRShape10: TQRShape;
          QRShape12: TQRShape;
          QRShape13: TQRShape;
          QRShape14: TQRShape;
          QRShape15: TQRShape;
          QRShape16: TQRShape;
          QRShape17: TQRShape;
          QRShape7: TQRShape;
          QRShape18: TQRShape;
          QRShape20: TQRShape;
          QRShape33: TQRShape;
          QRLabel33: TQRLabel;
          QRLabel34: TQRLabel;
          QRLabel35: TQRLabel;
          QRLabel36: TQRLabel;
          QRLabel37: TQRLabel;
          QRLabel38: TQRLabel;
          QRLabel39: TQRLabel;
          QRLabel40: TQRLabel;
          QRLabel41: TQRLabel;
          QRLabel42: TQRLabel;
          QRLabel44: TQRLabel;
          QRLabel43: TQRLabel;
          QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape34: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape35: TQRShape;
    QRLabel56: TQRLabel;
    QRShape36: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape37: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape38: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape39: TQRShape;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    qrV1: TQRLabel;
    qrV2: TQRLabel;
    qrV3: TQRLabel;
    qrV4: TQRLabel;
    qrV5: TQRLabel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
          procedure FormCreate(Sender: TObject);
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
     private
          FGrid: TAdvStringgrid;
          nRow: Integer;
    { Private declarations }
     public
          constructor CreateFrm(AOWner: TComponent; AGrid: TAdvStringgrid);
    { Public declarations }
     end;

var
     yearsanprt_f: Tyearsanprt_f;

implementation
uses uConfig, uGogekData, udm, yearsan, uFunctions;

{$R *.dfm}

constructor Tyearsanprt_f.CreateFrm(AOWner: TComponent; AGrid: TAdvStringgrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;

end;

procedure Tyearsanprt_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := cafree;
end;

procedure Tyearsanprt_f.QuickRep1NeedData(Sender: TObject;
     var MoreData: Boolean);
var
     i: integer;
     state: boolean;

begin

     with FGrid do
     begin

          if (nRow < RowCount) then
          begin

                GetCheckBoxState(0, i, state) ;

               if state= true then
               begin
                   QRLabel8.Caption := Cells[1, nRow]; //진료일자
                   QRLabel10.Caption := displaywon(Cells[3, nRow]);
                   QRLabel11.Caption := displaywon(Cells[4, nRow]);
                   QRLabel12.Caption := displaywon(Cells[5, nRow]); //displaywon(Cells[4, nRow]);
                   QRLabel57.Caption := displaywon(Cells[6, nRow]);
                   QRLabel61.Caption := displaywon(inttostr((ints[5, nRow] + ints[6, nRow])));


                   QRLabel13.Caption := displaywon(Cells[7, nRow]);
                   QRLabel14.Caption := displaywon( inttostr( ints[8, nRow] + ints[11, nRow] ));
                   QRLabel15.Caption := displaywon( inttostr( ints[9, nRow] + ints[10, nRow] ));
                end;
         end;


         MoreData := nRow < RowCount;
         Inc(nRow);
     end;

end;

procedure Tyearsanprt_f.FormCreate(Sender: TObject);
begin
     QRLabel3.Caption := ma_paName;  //main_f.edtname.text;
     QRLabel5.Caption := copy(ma_jumin, 1, 6) + ' - *******'; //copy(main_f.edtJumin.text, 1, 6) + ' - *******';  // + copy(main_f.edtJumin.text, 7, 7);


     QRLabel38.Caption :=  yearsan_f.edtSaup.Text;


     QRLabel40.Caption :=  trim(yearsan_f.edtname.Text);// dm_f.configvalue.varSaupName;
     QRLabel39.Caption := configvalue.varAdd1 +' '+ configvalue.varAdd2;
     QRLabel68.Caption := configvalue.varTel1;
     QRLabel42.Caption :=  trim(yearsan_f.edtDaepyo.Text); // + '   (인)';
     QRLabel43.Caption := copy(yearsan_f.edtdayprt.Text, 1, 4) + ' 년 ' +
          copy(yearsan_f.edtdayprt.Text, 6, 2) + ' 월 ' +
          copy(yearsan_f.edtdayprt.Text, 9, 2) + ' 일';


{
     QRLabel17.Caption := formatFloat('#,0', yearsan_f.edtchong.Value);
     QRLabel28.Caption := formatFloat('#,0', yearsan_f.edtchung.Value);
     QRLabel29.Caption := formatFloat('#,0', yearsan_f.edtbonin.Value);
     QRLabel63.Caption := formatFloat('#,0', yearsan_f.edtbonin1.Value);
     QRLabel64.Caption := formatFloat('#,0', yearsan_f.edtbonin.Value + yearsan_f.edtbonin1.Value);

     QRLabel30.Caption := formatFloat('#,0', yearsan_f.edtcard.Value);
     QRLabel31.Caption := formatFloat('#,0', yearsan_f.edtreceipt.Value + yearsan_f.edtTongReceipt.value );
     QRLabel32.Caption := formatFloat('#,0', yearsan_f.edthyun.Value + yearsan_f.edttong.Value);

     QRLabel34.Caption := formatFloat('#,0', yearsan_f.edtsunapek.Value);
}


//     QRLabel17.Caption := formatFloat('#,0', strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[3].Footer.Values[0])));
//     QRLabel28.Caption := formatFloat('#,0', strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[4].Footer.Values[0])));
//     QRLabel29.Caption := formatFloat('#,0', strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[5].Footer.Values[0])));
//     QRLabel63.Caption := formatFloat('#,0', strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[6].Footer.Values[0])));
//     QRLabel64.Caption := formatFloat('#,0',strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[5].Footer.Values[0]))
//              + strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[6].Footer.Values[0])));
//
//     QRLabel30.Caption := formatFloat('#,0',  strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[7].Footer.Values[0])));
//     QRLabel31.Caption := formatFloat('#,0',  strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[8].Footer.Values[0]))
//              + strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[11].Footer.Values[0])) );
//     QRLabel32.Caption := formatFloat('#,0', strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[9].Footer.Values[0]))
//              + strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[10].Footer.Values[0])) );
//
//     QRLabel34.Caption := formatFloat('#,0', strToFloat(returnZeroInt(yearsan_f.grdPrint.Columns[12].Footer.Values[0])));
//



end;

procedure Tyearsanprt_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
begin
     nRow := 0;
end;

end.

