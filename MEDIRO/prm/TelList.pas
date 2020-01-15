unit TelList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,  ComCtrls,
     StdCtrls, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, tmsAdvGridExcel,
     AdvUtil, ConverterQR2FR, frxClass;

type
     TtelList_f = class(TForm)
          DtTelFirst: TDateTimePicker;
          DtTelLast: TDateTimePicker;
          GrdtelRec: TAdvStringGrid;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          rgGubun: TComboBox;
          ComboBox2: TComboBox;
    Label5: TLabel;
    edtTelno: TEdit;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    BtnTel: TButton;
    BtnTelPrt: TButton;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    Panel1: TPanel;
    frxReport1: TfrxReport;
          procedure BtnTelClick(Sender: TObject);
          procedure BtnTelPrtClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure spSkinButton1Click(Sender: TObject);
          procedure GrdtelRecGetCellColor(Sender: TObject; ARow,
               ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure GrdtelRecDblClick(Sender: TObject);
    procedure spSkinButton2Click(Sender: TObject);
    procedure GrdtelRecClickSort(Sender: TObject; ACol: Integer);
    procedure GrdtelRecButtonClick(Sender: TObject; ACol, ARow: Integer);
     private
          { Private declarations }
          procedure SelectDataTelRec(telNo : string=''; varGubun: string = '');
     public
          { Public declarations }
     end;

var
     telList_f: TtelList_f;

implementation
uses uConfig, uDm, umain, telrecview,  mapSend,  TelPrint, uFormInit; //  telrecview;
{$R *.dfm}

procedure TtelList_f.SelectDataTelRec(telNo : string=''; varGubun: string = '');
const

     SQL_SELECT_DATA_TELREC = 'select  *,                ' + #13#10 +
          '(select  top 1                                         ' + #13#10 +
          '(select top 1 name from ma_gogek_basic a where a.chart=       ' + #13#10 +
          'b.chart) as name from ma_gogek_phone b where (replace(b.phone,''-'','''')=trnumber  or b.phone=trnumber) ) as trname2   ' + #13#10 +
          ' from ma_telrec                                                 ' + #13#10 +
          'Where (TRDate >= :TRDate1 and TRDate <= :TRDate2)        ';
     SQL_SELECT_TelNo = ' and  trnumber like ''%''+ :trnumber +''%'' ';

     //     SQL_SELECT_DATA_TELREC = 'SELECT * FROM ma_TELREC       ' + #13#10 +
     //          'Where TRDate >= :TRDate1 and TRDate <= :TRDate2        ';
var
 i : integer;
begin
     i:= 0;
     with Dm_f.SqlWork, GrdTelRec do
     begin
          rowcount := 1;
          sql.Clear;
          if  rgGubun.ItemIndex  = 0 then
          begin
               SQL.Text := SQL_SELECT_DATA_TelRec;
               if telno <> '' then
               begin
                     SQL.Text := SQL.Text + SQL_SELECT_TelNo +'order by Trcode desc';
                     ParamByName('trnumber').AsString := edtTelno.text;
               end
               else
               begin
                    SQL.Text := SQL.Text + 'order by Trcode desc';
               end;
          end
          else
          begin
               case rgGubun.ItemIndex of
                    1:
                         begin
                              SQL.Text := SQL_SELECT_DATA_TelRec;
                              SQL.Text := SQL.Text + 'and  gubun <> :gubun  order by Trcode desc';
                              ParamByName('gubun').AsString := varGubun;
                         end;
                    2:
                         begin
                              SQL.Text := SQL_SELECT_DATA_TelRec;
                              SQL.Text := SQL.Text + 'and  gubun = :gubun order by Trcode desc';
                              ParamByName('gubun').AsString := varGubun;
                         end;
               end;
          end;
          ParamByName('TrDate1').AsString := FormatDateTime('YYYY-MM-DD',  DtTelFirst.Date);
          ParamByName('TrDate2').AsString := FormatDateTime('YYYY-MM-DD',  DtTelLast.Date);
          Open;

          rowcount:= recordCount + 1;
          if not Dm_f.SqlWork.IsEmpty then
               while not EOF do
               begin
                   // AddRow; // 그리드에 빈 로우를 추가



                    i:= i+1;
                    Cells[1, i] := FieldByName('TrDate').AsString;
                    Cells[2, i] := FieldByName('Trname2').AsString;
                    Cells[3, i] := FieldByName('TrNumber').AsString;
                    Cells[4, i] := FieldByName('TrTime').AsString;
                    Cells[5, i] := FieldByName('TriTime').AsString;
                    Cells[6, i] := FieldByName('TrRemark').AsString;
                    Cells[7, i] := FieldByName('TrCode').AsString;
                    Cells[8, i] := FieldByName('degree').AsString;
                    Cells[9, i] := FieldByName('subject').AsString;
                    Cells[10, i] := FieldByName('transfer').AsString;
                    Cells[11, i] := FieldByName('receiver').AsString;
                    Cells[12, i] := FieldByName('gubun').AsString;
                    Cells[13, i] := FieldByName('TrChart').AsString;
                    AddButton(14, i,100, 20, '약도전송' ,ADVGrid.haCenter, ADVGrid.vaCenter);

                    Next;
               end;
          autonumbercol(0);
     end;

end;

procedure TtelList_f.BtnTelClick(Sender: TObject);
begin

     SelectDataTelRec(edtTelno.text, 'M');

end;

procedure TtelList_f.BtnTelPrtClick(Sender: TObject);
var
     TelPrint_f: TTelPrint_f;
//     conv : TConverterQr2Fr ;
begin
//     TelPrint_f := TTelPrint_f.CreateFrm(Self, grdTelRec);
//     try
//
//          conv := TConverterQr2Fr.Create;
//          conv.Source := TelPrint_f.QuickRep1  ;
//          conv.Target := FrxReport1;
//          conv.Convert;
//          FrxReport1.SaveToFile('converted_fromQR.fr3');
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
//          TelPrint_f.Free;
//     end;


end;

procedure TtelList_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TtelList_f.FormDestroy(Sender: TObject);
begin
     telList_f := nil;
end;

procedure TtelList_f.FormShow(Sender: TObject);
begin
     caption := '통화기록 보기';
     DtTelFirst.Date := now;
     DtTelLast.Date := now;
     edtTelNo.text:='';

     with grdTelRec do
     begin
          rowcount := 1;

          ColWidths[7] := 0;
          ColWidths[12] := 0;
          ColWidths[13] := 0;
     end;


      initAdvGrid(grdtelRec);


end;

procedure TtelList_f.spSkinButton1Click(Sender: TObject);
begin
     Close;
end;

procedure TtelList_f.GrdtelRecGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     case aCol of
          1:
               begin

                  if aRow > 0 then
                  begin
                    if GrdtelRec.cells[12, aRow] = 'M' then
                         ABrush.Color := clYellow
                    else
                         ABrush.Color := clBtnFace;
                  end;

               end;
     end;
end;

procedure TtelList_f.GrdtelRecButtonClick(Sender: TObject; ACol, ARow: Integer);
begin
        case acol of
          14 :
          begin



               if not Assigned(mapSend_f) then
                    mapSend_f := TmapSend_f.Create(application);

               mapSend_f.edtsendno.text := GrdtelRec.Cells[3, aRow];// .caption;


               mapSend_f.edtSubject.text   :=  configvalue.varsaupname+ ' 오시는 길';
               mapSend_f.edtRcvno.text     :=  configvalue.varTel1 ;



               mapSend_f.showmodal;


          end;
        end;
end;

procedure TtelList_f.GrdtelRecClickSort(Sender: TObject; ACol: Integer);
begin
    GrdtelRec.autonumberCol(0);
end;

procedure TtelList_f.GrdtelRecDblClick(Sender: TObject);
begin
     if ((GrdtelRec.Rowcount > 0) and (GrdtelRec.Row >= 1)) then
     begin

          if GrdtelRec.Cells[6, GrdtelRec.Row] = '' then
          begin

               exit;
          end;

          if not assigned(telrecview_f) then
               telrecview_f := Ttelrecview_f.Create(Application);

          telrecview_f.caption := '통화내용';
          telrecview_f.memMemo.text := GrdtelRec.Cells[6, GrdtelRec.Row];
          telrecview_f.showmodal;

     end;

end;

procedure TtelList_f.spSkinButton2Click(Sender: TObject);
begin

          savedialog1.fileName:= '통화정보'+'('+ formatdatetime('YYYYMMDD',dtTelFirst.date) +'~'+ formatdatetime('YYYYMMDD',dtTelLast.date)  +')'+'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;
end;

end.

