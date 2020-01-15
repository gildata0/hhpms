unit yearsan;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,  ExtCtrls, StdCtrls,   Mask, 
       AdvEdit, iniFiles, Spin, Grids,
     AdvObj, BaseGrid, AdvGrid, AdvUtil, frxClass, ConverterQR2FR;

type
     Tyearsan_f = class(TForm)
    pltop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtdaystart: TMaskEdit;
    edtdaylast: TMaskEdit;
    btnSearch: TButton;
    cblastYearJungsan: TCheckBox;
    cbZero: TCheckBox;
    plge: TPanel;
    edtchong: TAdvEdit;
    edtchung: TAdvEdit;
    edtbonin: TAdvEdit;
    edtbonin1: TAdvEdit;
    edtcard: TAdvEdit;
    edtreceipt: TAdvEdit;
    edthyun: TAdvEdit;
    edtsunapek: TAdvEdit;
    edtTong: TAdvEdit;
    edtTongReceipt: TAdvEdit;
    plbottom: TPanel;
    Label4: TLabel;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    edtdayprt: TMaskEdit;
    RadioGroup2: TRadioGroup;
    btnPrint: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    edtname: TEdit;
    Label5: TLabel;
    edtSaup: TEdit;
    Label6: TLabel;
    edtDaepyo: TEdit;
    cbUseYearSan: TCheckBox;
    CheckBox4: TCheckBox;
    Label7: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    grdmain: TAdvStringGrid;
    wLabel38: TLabel;
    frxReport1: TfrxReport;
    Button1: TButton;
    cbPreview: TCheckBox;
    frxUserDataSet_feeDetail: TfrxUserDataSet;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnSearchClick(Sender: TObject);
          procedure btnPrintClick(Sender: TObject);
    procedure cblastYearJungsanClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure frxUserDataSet_feeDetailGetValue(const VarName: string;
      var Value: Variant);
     private
    { Private declarations }
     public
    { Public declarations }
     end;

var
     yearsan_f: Tyearsan_f;

implementation
uses uConfig, uGogekData,  udm, yearsanprt, uFunctions, printChart;

{$R *.dfm}

procedure Tyearsan_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tyearsan_f.FormDestroy(Sender: TObject);
begin
     yearsan_f := nil;
end;

procedure Tyearsan_f.FormShow(Sender: TObject);
var
     iHeight: Integer;
     iWidth: Integer;

     s, path: string;
     FormInit: Tinifile;
     varSaupNO, varDaepyo, varSaupName : string;

begin

     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     varSaupNO := FormInit.ReadString('BASEINFO', 'saupno', '');
     varDaepyo := FormInit.ReadString('BASEINFO', 'daepyo', '');
     varsaupName := FormInit.ReadString('BASEINFO', 'saupname', '');

     spinedit1.value :=  FormInit.ReadInteger('printmargin', 'top',  10  );
     spinedit2.value :=  FormInit.ReadInteger('printmargin', 'bottom', 10 );



     FormInit.Free;
   {  iHeight := 540;//main_f.ClientHeight;
     iWidth := 1024;//main_f.ClientWidth;
     iHeight := iHeight - GetSystemMetrics(SM_CYDLGFRAME) - 20;
     iWidth := iWidth - GetSystemMetrics(SM_CXDLGFRAME) - 1;
     SetBounds(233, 55, iWidth, iHeight);

    // main_f.GridSet(grdmain, true, plgrid, alclient, 0, 0, 0, 0);
   } // main_f.panelSet(plbottom, albottom);
    // main_f.panelSet(pltop, altop);
    // main_f.panelSet(plge, altop);
    // main_f.panelSet(plgrid, altop);



   //  edtname.Text := dm_f.configvalue.varSaupName;


//     if varSaupName <> '' then
//        edtName.Text := varSaupName
//     else
        edtname.Text :=  configvalue.varSaupName;

//     if varSaupNo <> '' then
//        edtSaup.Text := varSaupNo
//     else
        edtSaup.Text := configvalue.varsaupNo;

//     if varDaePyo <> '' then
//       edtDaepyo.Text := varDaepyo
//     else
        edtDaepyo.Text := trim(configvalue.varDaepyo);



     if cblastYearJungsan.Checked then
     begin
         edtdaystart.Text :=formatDateTime('YYYY-MM-DD', dateBeginOfYear(now));
         edtdaylast.Text := formatDateTime('YYYY-MM-DD', dateEndOfYear(now));
     end
     else
     begin
     //  edtdaystart.Text :=formatDateTime('YYYY-MM-DD', dateBeginOfYear(now));


       edtdaystart.Text :=formatDateTime('YYYY-MM-DD', now - 7);
       edtdaylast.Text := formatDateTime('YYYY-MM-DD', now);
     end;


     edtdayprt.Text := formatDateTime('YYYY-MM-DD', now);

end;

procedure Tyearsan_f.frxUserDataSet_feeDetailGetValue(const VarName: string;
  var Value: Variant);
begin
         if VarName = 'val1' then
            Value := grdMain.cells[ 2, frxUserDataSet_feeDetail.RecNo+1]    //내원일자
          else if VarName = 'val2' then
            Value := grdMain.cells[ 5, frxUserDataSet_feeDetail.RecNo+1]    //진료과목
          else if VarName = 'val3' then
            Value := grdMain.cells[ 9, frxUserDataSet_feeDetail.RecNo+1]    //담당의

          else if VarName = 'val4' then
            Value := grdMain.cells[ 6, frxUserDataSet_feeDetail.RecNo+1]    //보험유형

          else if VarName = 'val5' then
            Value := grdMain.cells[ 12, frxUserDataSet_feeDetail.RecNo+1]    //사업체기호
          else if VarName = 'val6' then
            Value := grdMain.cells[ 13, frxUserDataSet_feeDetail.RecNo+1]     //증번호
          else if VarName = 'val7' then
            Value := grdMain.cells[ 4, frxUserDataSet_feeDetail.RecNo+1]     //초재진구분
          else if VarName = 'val8' then
            Value := grdMain.cells[ 10, frxUserDataSet_feeDetail.RecNo+1]     //접수시간

          else if VarName = 'val9' then
            Value := grdMain.cells[ 11, frxUserDataSet_feeDetail.RecNo+1];    //접수완료시간

end;

procedure Tyearsan_f.btnSearchClick(Sender: TObject);
var i: integer;
begin


     with dm_f.sqlwork do
     begin

          close;
          sql.clear;
          if checkBox3.Checked then
          begin
               sql.add('  select sday, sum(chong) as chong,sum(chung) as chung,sum(bonin1) as bonin1,sum(iilbanek) as iilbanek,sum(iBohumek) as iBohumek,                         ');
               sql.add('     sum(sunapek) as sunapek,sum(bohum) as bohum,sum(card) as card,sum(hyun) as hyun, sum(hyunreceipt) as hyunreceipt,sum(tong) as tong, sum(hyunreceipt_tong) as hyunreceipt_tong  ');
               sql.add('  from ma_sunap                                                                                      ');




          end
          else
          begin
                sql.add(' select sday,chong,chung,bonin1,iilbanek,iBohumek, sunapek,bohum,card,hyun, hyunreceipt,tong, hyunreceipt_tong');
                sql.add(' from ma_sunap                                                                                                ');
          end;

                sql.add(' where (chart=:chart) and ((sday>=:sday )and(sday<=:eday))                                                    ');
          if cbZero.checked = false then
              sql.add('  and (sunapek <> 0)');
          if checkBox3.Checked then
          begin
               sql.add('  group by sDay                                                                                      ');

          end;
          sql.add('order by sday asc ');
          parambyname('chart').asstring := ma_chart;// main_f.edtChart.text;
          parambyname('sday').AsString := edtdaystart.Text;
          parambyname('eday').AsString := edtdaylast.Text;
          open;
          if not isEmpty then
          begin
//               grdmain.Clear;
               grdmain.RemoveRows(1, grdmain.RowCount -1 );

               while not eof do
               begin
                    grdmain.AddRow;
                //    grdMain.cells[0, grdmain.RowCount - 1].AsBoolean := true;
                    grdMain.AddCheckBox(0, grdmain.RowCount - 1, true, false);

                    grdmain.Cells[1, grdmain.RowCount - 1] := FieldByName('sday').AsString;

                    grdmain.Cells[2, grdmain.RowCount - 1] := '수납';
                    grdmain.ints[3, grdmain.RowCount - 1] := FieldByname('chung').AsInteger + FieldByName('bohum').AsInteger + FieldByName('bonin1').AsInteger; //FieldByName('chong').AsInteger;
                    grdmain.ints[4, grdmain.RowCount - 1] := FieldByname('chung').AsInteger;
                    grdmain.ints[5, grdmain.RowCount - 1] := FieldByName('bohum').AsInteger;
                    grdmain.ints[6, grdmain.RowCount - 1] := FieldByName('bonin1').AsInteger;
                    grdmain.ints[7, grdmain.RowCount - 1] := FieldByName('card').AsInteger;
                    grdmain.ints[8, grdmain.RowCount - 1] := FieldByName('hyunReceipt').AsInteger;
                    grdmain.ints[9, grdmain.RowCount - 1] := FieldByName('hyun').AsInteger  ;
                    grdmain.ints[10, grdmain.RowCount - 1] := FieldByName('tong').AsInteger  ;
                    grdmain.ints[11, grdmain.RowCount - 1] := FieldByName('hyunReceipt_tong').AsInteger;
                    grdmain.ints[12, grdmain.RowCount - 1] := FieldByName('sunapek').AsInteger;



                    next;
               end;
          end;
    //      grdmain.CalcFooters;
     end;
     if grdmain.rowcount >= 20 then
     begin
          for i := 0 to (20 - grdmain.RowCount) do
          begin
               grdmain.AddRow;
          end;
     end;

//     edtchong.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[3].Footer.Values[0]));
//     edtchung.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[4].Footer.Values[0]));
//     edtbonin.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[5].Footer.Values[0]));
//     edtbonin1.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[6].Footer.Values[0]));
//     edtcard.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[7].Footer.Values[0]));
//     edtreceipt.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[8].Footer.Values[0]));
//     edthyun.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[9].Footer.Values[0]));
//     edttong.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[10].Footer.Values[0]));
//     edtTongReceipt.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[11].Footer.Values[0]));
//     edtsunapek.floatValue :=  strToFloat(returnZeroInt(grdmain.Columns[12].Footer.Values[0]));


end;

procedure Tyearsan_f.Button1Click(Sender: TObject);
begin
     printChart_f := TprintChart_f.CreateFrm(Self, grdmain);
     try


//          with TelPrint_f, QuickRep1 do
//          begin
//               varFirst := FormatDateTime('YYYY-MM-DD',
//                    telList_f.DtTelFirst.Date);
//               varLast := FormatDateTime('YYYY-MM-DD',
//                    telList_f.DtTelLast.Date);
//               //PreviewModal;
//               print;
//          end;
     finally
          printChart_f.Free;
     end;



end;

procedure Tyearsan_f.btnPrintClick(Sender: TObject);
var
    WPath : string;
    bReturn : boolean;

    Pict1 : TfrxPictureView;
    Pict2 : TfrxPictureView;
    Image1: TImage;
    Image2: TImage;

begin


    //E:\_Projects\HPMS\Win32\Release\print\rptFeeDetailList.fr3


 //   InitFastReport;

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin

           LoadFromFile(WPath + 'rptFeeDetailList.fr3') ;


         if configvalue.signfilePath1 <> '' then
         begin
                if fileexists(configvalue.signfilePath1) then
                begin
                    Pict1 := frxreport1.FindComponent('Picture1') as TfrxPictureView;

                    Image1 := TImage.Create(nil);
                    Image1.Picture.LoadFromFile(configvalue.signfilePath1);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );

                    Pict1.Picture := Image1.Picture;
                    Image1.Free;
                end;
         end;


         if configvalue.signfilePath2 <> '' then
         begin
                if fileexists(configvalue.signfilePath2) then
                begin
                    Pict2 := frxreport1.FindComponent('Picture2') as TfrxPictureView;

                    Image2 := TImage.Create(nil);
                    Image2.Picture.LoadFromFile(configvalue.signfilePath2);//  'C:\_Projects\_NewProjects\Dentro\bin\picture\stamp2.bmp' );
                    Pict2.Picture := Image2.Picture;
                    Image2.Free;
                end;
         end;





           frxUserDataSet_feeDetail.RangeEnd      := reCount;
           frxUserDataSet_feeDetail.RangeEndCount := grdMain.RowCount-1;
//
//
//           frxUserDataSet2.RangeEnd      := reCount;
//           frxUserDataSet2.RangeEndCount := grdHx.RowCount-1;
//
//
//           frxUserDataSet3.RangeEnd      := reCount;
//           frxUserDataSet3.RangeEndCount := grdCC.RowCount-1;
//
//
//           frxUserDataSet4.RangeEnd      := reCount;
//           frxUserDataSet4.RangeEndCount := grdSangByung.RowCount-1;

    //       DataToPrintForm('', '');

           if cbPreview.Checked then
               ShowReport()
           else
           begin
               PrepareReport();
               bReturn := Print();
           end;
     end;

end;




//     yearsanprt_f := Tyearsanprt_f.CreateFrm(Self, grdmain);
//     try
//
//          conv := TConverterQr2Fr.Create;
//          conv.Source := yearsanprt_f.QuickRep1  ;
//          conv.Target := FrxReport1;
//          conv.Convert;
//          FrxReport1.SaveToFile('converted_fromQR_yearsan.fr3');
//
////          with TelPrint_f, QuickRep1 do
////          begin
////               varFirst := FormatDateTime('YYYY-MM-DD',
////                    telList_f.DtTelFirst.Date);
////               varLast := FormatDateTime('YYYY-MM-DD',
////                    telList_f.DtTelLast.Date);
////               //PreviewModal;
////               print;
////          end;
//     finally
//          yearsanprt_f.Free;
//     end;





//  //   grdPrint.clear;
//     for i:=0 to grdMain.rowcount-1 do
//     begin
//
//              if grdMain.cells[0, i].AsBoolean = true then
//              begin
//
//                  grdPrint.AddRow() ;
//                  for j:= 0 to 12 do  //grdmain.colcount
//                  begin
//                       grdPrint.Cells[j, grdPrint.rowcount-1]:=grdMain.cells[j, i];
//                  end;
//
//              end;
//
//
//     end;
//  //   grdPrint.CalcFooters;
//
//


//
//     yearsanprt_f := Tyearsanprt_f.CreateFrm(Self, grdmain);
//     try
//          with yearsanprt_f, QuickRep1 do
//          begin
//
//               Page.TopMargin    := spinedit1.Value;
//               Page.BottomMargin := spinedit2.Value;
//
//                  yearsanprt_f.qrV1.caption :='';
//                  yearsanprt_f.qrV2.caption :='';
//                  yearsanprt_f.qrV3.caption :='';
//                  yearsanprt_f.qrV4.caption :='';
//                  yearsanprt_f.qrV5.caption :='';
//
//                   if configvalue.varGubun = '병원' then
//                         yearsanprt_f.qrV2.caption :='V'
//                         else
//                            yearsanprt_f.qrV1.caption :='V';
//
//               if cbUseYearSan.Checked=false then
//               begin
//                yearsanprt_f.Qrlabel24.caption := '수납금액';
//                yearsanprt_f.Qrlabel33.caption := '총 수납금액';
//                   yearsanprt_f.Qrlabel45.caption := '';
//                   yearsanprt_f.Qrlabel46.caption := '';
//                   yearsanprt_f.Qrlabel70.caption := '';
//
//               end;
//
//               if RadioGroup2.ItemIndex <> 1 then
//                    PreviewModal
//               else
//               begin
//
//
//                    if RadioGroup2.ItemIndex = 1 then
//                       print
//                    else
//                     if RadioGroup2.ItemIndex = 2 then
//                     begin
//                         print;
//                         print;
//                     end;
//               end;
//
//          end;
//     finally
//          yearsanprt_f.Free;
//     end;

procedure Tyearsan_f.cblastYearJungsanClick(Sender: TObject);
begin

    if cblastYearJungsan.Checked then
     begin
         edtdaystart.Text := formatDateTime('YYYY-MM-DD', dateBeginOfYear(now -365 ));  
         edtdaylast.Text :=  formatDateTime('YYYY', dateBeginOfYear(now -365 ))   + '12-31' ;
     end
     else
     begin
       edtdaystart.Text :=formatDateTime('YYYY-MM-DD', dateBeginOfYear(now));
       edtdaylast.Text := formatDateTime('YYYY-MM-DD', now);
     end;

end;

procedure Tyearsan_f.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
     s, path: string;
     FormInit: Tinifile;

begin


     Path := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('BASEINFO', 'saupname',  edtname.text);
     FormInit.WriteString('BASEINFO', 'saupno',  edtsaup.text);
     FormInit.WriteString('BASEINFO', 'daepyo',  edtdaepyo.text);
     FormInit.WriteInteger('printmargin', 'top',     spinedit1.value);
     FormInit.WriteInteger('printmargin', 'bottom',  spinedit2.value);

     FormInit.Free;

end;

end.

