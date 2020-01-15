unit peninput;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, AdvToolBar, ImgList, Menus, AdvMenus, GifIMG,
     MSINKAUTLib_TLB, DB, ToolWin, ComCtrls, StdCtrls, Buttons,
     System.ImageList,  Vcl.ExtCtrls;

type
     Tpeninput_f = class(TForm)
          ImageList4: TImageList;
          popThickness: TAdvPopupMenu;
          N7: TMenuItem;
          N9: TMenuItem;
          N11: TMenuItem;
          pnlPenParent: TPanel;
          PentoolBar: TToolBar;
          pnlPen: TPanel;
    btnSignpen: TButton;
    btnEraser: TButton;
    AdvToolBarButton3: TButton;
    AdvToolBarButton2: TButton;
    AdvToolBarButton1: TButton;
    btnBlackSignPen: TButton;
    btnRedSignPen: TButton;
    btnGreenSignPen: TButton;
    btnBlueSignPen: TButton;
          procedure FormShow(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure pnlPenMouseMove(Sender: TObject; Shift: TShiftState; X,
               Y: Integer);
          procedure btnBlueSignPenClick(Sender: TObject);
          procedure N7Click(Sender: TObject);
          procedure btnEraserClick(Sender: TObject);
          procedure AdvToolBarButton1Click(Sender: TObject);
     private
          viewmode: integer;
          SysName: string;

          procedure AllClear;
          procedure LoadInkCollector;
          procedure LoadPenChartImageForMod(varChartseq: Double);
          procedure saveimageChart(varMode: integer; varChartSeq: Double);
          function LoadPenChartImage(varChartseq: Double;
               varRow: integer): string;
          procedure ColorChange(varColor: tColor);
          procedure ThickChange(varThick: integer);
          procedure EraseStrokes(varptX, varPtY: integer;
               varcurrentStroke: inkStrokes);
          procedure PenKindChange(varPen: integer; sender: TObject);
          { Private declarations }
     public
          LoadType: integer; //0:참고사항  1:CC  2:문진  3:원장요구 4:환자요청  5:pi   6:imp    7:plan
          varChartseq: integer;
          varGridRow: integer;
          varPeninputMode: integer; //0:insert 1:modify
          varinputDate: string;
          varTeam, varDam: string;
          { Public declarations }
     end;

var
     peninput_f: Tpeninput_f;
     TxInkCollector: TinkCollector;

implementation
uses uConfig, uGogekData, uDm, uFunctions, umain, uSysInfo, saveChamgo;

{$R *.dfm}

procedure Tpeninput_f.FormShow(Sender: TObject);
var
     varLeft, varTop, varRight, varBottom: integer;
     SysInfo: SystemInfoRecord;
begin

     Caption := '펜 입력 도구';
     sysinfo := GetAllSystemInfo;
     SysName := Sysinfo.ComputerName;

     allClear;

     //varGrdRow := grdProgress.Rowcount - 1;

     // pnlPen.Color := clWhite;
     pnlPen.align:=alClient;
//     pnlPen.Left :=0;// penToolbar.Width;
//     pnlPen.top := 0;
//     pnlPen.width := pnlPenParent.Width - penToolbar.Width;
//     pnlPen.Height := pnlPenParent.Height;
//
     {  varLeft := main_f.pnlLeft.Width;
       varTop := main_f.pnlLeft.Top;
       varRight := varLeft + grdProgress.Width;
       varBottom := varTop + 400;
      }
       // pnlPenParent.ManualFloat(Rect(varLeft, varTop, varRight, varBottom));

     pnlPenParent.Visible := true;

     if TxInkCollector.Enabled = false then
     begin
          //TxInkCollector.Enabled := true;
         // allclear;
          if varPeninputMode = 1 then
               LoadPenChartImageForMod(varChartSeq);


          TxInkCollector.hWnd_ := pnlPen.Handle;
          TxInkCollector.Enabled := true;
          pnlPen.Refresh;

     end
     else
     begin
          TxInkCollector.Enabled := false;
          if varPeninputMode = 1 then
               LoadPenChartImageForMod(varChartSeq);
          TxInkCollector.hWnd_ := pnlPen.Handle;
          TxInkCollector.Enabled := true;
          pnlPen.Refresh;

     end;

end;

procedure Tpeninput_f.FormCreate(Sender: TObject);
begin

     if not DirectoryExists( ExtractFilePath(ParamStr(0)) + 'temp\TempImage\') then
         ForceDirectories( ExtractFilePath(ParamStr(0)) + 'temp\TempImage\');



     //ink start----------------------------------------------------------------
     coInkCollector.Create;

     TxInkCollector := TInkCollector.Create(self);
     TxInkCollector.hwnd_ := pnlPen.Handle;
     // TxInkCollector.hwnd := mnumemo.Handle;
     // TxInkCollector.hwnd := advStringGrid1.Handle;
     //    TxInkCollector.hwnd := realGrid1.Handle;
     //  TxInkCollector.Transparency := 0;
     //TxInkCollector.Ink.
     TxInkCollector.DefaultDrawingAttributes.Color := clRed;
     TxInkCollector.DefaultDrawingAttributes.Width := 90;
     TxInkCollector.DefaultDrawingAttributes.Transparency := 100;
     TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;

     TxInkCollector.Enabled := true;
     //ink end----------------------------------------------------------------

     LoadInkCollector;

end;

procedure Tpeninput_f.LoadInkCollector;
begin

     //   coInkCollector.Create;

     //   TxInkCollector := TInkCollector.Create(self);

     TxInkCollector.Enabled := false;
     TxInkCollector.hWnd_ := pnlPen.Handle;
     TxInkCollector.DefaultDrawingAttributes.Width := 20;
     TxInkCollector.DefaultDrawingAttributes.Color := clRed;

     TxInkCollector.DefaultDrawingAttributes.AntiAliased := true;
     TxInkCollector.DefaultDrawingAttributes.FitToCurve := true;
     TxInkCollector.DefaultDrawingAttributes.Height := 5;
     TxInkCollector.DefaultDrawingAttributes.IgnorePressure := false;
     TxInkCollector.DefaultDrawingAttributes.PenTip := IPT_Ball;
     // IPT_Rectangle;
     TxInkCollector.MousePointer := IMP_Default;

     {
       IRO_Black = $00000001;
       IRO_NotMergePen = $00000002;
       IRO_MaskNotPen = $00000003;
       IRO_NotCopyPen = $00000004;
       IRO_MaskPenNot = $00000005;
       IRO_Not = $00000006;
       IRO_XOrPen = $00000007;
       IRO_NotMaskPen = $00000008;
       IRO_MaskPen = $00000009;
       IRO_NotXOrPen = $0000000A;
       IRO_NoOperation = $0000000B;
       IRO_MergeNotPen = $0000000C;
       IRO_CopyPen = $0000000D;
       IRO_MergePenNot = $0000000E;
       IRO_MergePen = $0000000F;
       IRO_White = $00000010;
     }

     {
       IMP_Default = $00000000;
       IMP_Arrow = $00000001;
       IMP_Crosshair = $00000002;
       IMP_Ibeam = $00000003;
       IMP_SizeNESW = $00000004;
       IMP_SizeNS = $00000005;
       IMP_SizeNWSE = $00000006;
       IMP_SizeWE = $00000007;
       IMP_UpArrow = $00000008;
       IMP_Hourglass = $00000009;
       IMP_NoDrop = $0000000A;
       IMP_ArrowHourglass = $0000000B;
       IMP_ArrowQuestion = $0000000C;
       IMP_SizeAll = $0000000D;
       IMP_Hand = $0000000E;
       IMP_Custom = $00000063;
      }

     TxInkCollector.DefaultDrawingAttributes.RasterOperation := IRO_CopyPen;
     TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
     TxInkCollector.DefaultDrawingAttributes.width := 53;

     TxInkCollector.Enabled := true;

end;

procedure Tpeninput_f.AllClear; //펜 이미지 삭제
var
     strokesToDelete: inkStrokes;
begin
     try
          strokesToDelete := TxInkCollector.Ink.Strokes;

          if not TxInkCollector.CollectingInk then
          begin
               TxInkCollector.Ink.DeleteStrokes(strokesToDelete);

               pnlPen.Refresh;
          end
          else
               Showmessage('Cannot clear ink while the ink collector is busy.');

          // TxInkCollector.Ink.DeleteStrokes(strokesToDelete);
     except
          on E: Exception do
               ExceptLogging('penAllClear:' + E.Message);

     end;
end;

function Tpeninput_f.LoadPenChartImage(varChartseq: Double; varRow: integer):
     string;
var
     loadedInk: TinkDisp;
     BinSize: integer;
     nFileStream: Tfilestream;
     BinData: array of byte;
     S: string;
     i: integer;

     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;
     VarBMP: TBitMap;

     signature, ms: TMemoryStream;
//     img: TGIFImage;
     bt: array of byte;
     varRowHeight: integer;
begin
//     result := '';
//     try
//          with dm_f.sqlTemp do
//          begin
//               Close;
//               SQL.Clear;
//               Sql.Add('select * from ma_chart_i ');
//               Sql.Add('where chartseq= :chartseq');
//               ParamByName('chartseq').value := varChartSeq;
//
//               Open;
//
//               if not isEmpty then
//               begin
//                    try
//
//                         BStream :=
//                              CreateBlobStream(FieldByName('ChartImage'),
//                              bmRead);
//                         MemSize := BStream.Size;
//                         SetLength(Buffer, MemSize);
//                         Inc(MemSize);
//                         BStream.Read(Pointer(Buffer)^, MemSize);
//                         for i := 0 to Memsize - 1 do
//                         begin
//                              A := A + Char(Buffer[i]);
//                         end;
//
//                         try
//                              aString := TStringList.Create;
//                              aString.Add(A);
//                              aString.SaveToFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\' + floatTostr(varChartSeq) + '.txt');
//                         finally
//                              aString.Free;
//                         end;
//
//                    finally
//                         BStream.Free;
//
//                    end;
//
//                    S := ExtractFilePath(ParamStr(0)) + 'temp\TempImage\'
//                         + floatTostr(varChartSeq) + '.txt';
//                    nFileStream := TFileStream.Create(S, fmOpenRead);
//                    BinSize := nFileStream.Size;
//                    SetLength(BinData, BinSize);
//
//                    nFileStream.Position := 0;
//                    for i := 0 to BinSize - 3 do
//                    begin
//                         nFileStream.Read(BinData[i], 1);
//                    end;
//                    nFileStream.Free;
//
//                    TxInkCollector.Enabled := false;
//
//                    loadedInk := TinkDisp.Create(pnlPen);
//                    loadedInk.Load(BinData);
//                    TxInkCollector.Ink := loadedInk.Clone;
//                    TxInkCollector.Enabled := false;
//
//                    ms := TMemoryStream.Create;
//                    signature := TMemoryStream.Create;
//                    img := TGIFImage.Create;
//
//
//                    try
//                         bt := TxInkCollector.Ink.Save(IPF_GIF,
//                              IPCM_MaximumCompression);
//                         //IPCM_NoCompression); //IPCM_Default);
//                         ms.Size := length(bt);
//                         ms.Write(Pointer(bt)^, length(bt));
//                         ms.Position := 0;
//                         img.LoadFromStream(ms);
//
//                         img.Bitmap.SaveToStream(signature);
//                         varRowHeight := img.Height;
//                         signature.Position := 0;
//                         img.SaveToFile(extractFilePath(paramstr(0)) +
//                              'temp\TempImage\' +
//                              floattostr(varChartSeq) +
//                              '.gif');
//
//                         // now to save the stream to a database you do the following
//                         //TBlobField(dataset.FieldByName('NameBlobField')).LoadFromStream(signature);
//
//                         result := extractFilePath(paramstr(0)) +
//                              'temp\TempImage\' +
//                              floattostr(varChartSeq) +
//                              '.gif'
//
//                    finally // wrap up
//                         img.Destroy;
//                         signature.free;
//                         ms.Free;
//                    end; // try/finally
//                    //ShrinkWithAspectRatio
//                 {   grdProgress.CreatePicture(3, varRow, false,
//                           noStretch, 0,
//                           AdvGrid.haLeft,
//                           AdvGrid.vaTop).LoadFromFile(ExtractFilePath(paramStr(0)) + 'temp\TempImage\' + floattostr(varChartSeq) + '.gif');
//
//                    grdProgress.RowHeights[varRow] :=
//                           varRowHeight;
//                  }
//               end;
//          end;
//     except
//          on E: Exception do
//               ExceptLogging('LoadPenChartImage:' + E.Message);
//     end;
end;

procedure Tpeninput_f.LoadPenChartImageForMod(varChartseq: Double);
var
     loadedInk: TinkDisp;
     BinSize: integer;
     nFileStream: Tfilestream;
     BinData: array of byte;
     S: string;
     i: integer;

     aString: TStringList;
     MemSize: Integer;
     BStream: TStream;
     A: string;
     Buffer: array of Byte;

begin
     allclear;
     try
          with dm_f.sqlTemp do
          begin
               Close;
               SQL.Clear;
               Sql.Add('select * from ma_chart_i ');
               Sql.Add('where chartseq= :chartseq');
               ParamByName('chartseq').value := varChartSeq;

               Open;

               if not isEmpty then
               begin
                    try

                         BStream :=
                              CreateBlobStream(FieldByName('ChartImage'),
                              bmRead);
                         MemSize := BStream.Size;
                         SetLength(Buffer, MemSize);
                         Inc(MemSize);
                         BStream.Read(Pointer(Buffer)^, MemSize);
                         for i := 0 to Memsize - 1 do
                         begin
                              A := A + Char(Buffer[i]);
                         end;

                         try
                              aString := TStringList.Create;
                              aString.Add(A);
                              aString.SaveToFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\' + floatTostr(varChartSeq) + '.txt');
                         finally
                              aString.Free;
                         end;

                    finally
                         BStream.Free;

                    end;

                    S := ExtractFilePath(ParamStr(0)) + 'temp\TempImage\'
                         + floatTostr(varChartSeq) + '.txt';
                    nFileStream := TFileStream.Create(S, fmOpenRead);
                    BinSize := nFileStream.Size;
                    SetLength(BinData, BinSize);

                    nFileStream.Position := 0;
                    for i := 0 to BinSize - 3 do
                    begin
                         nFileStream.Read(BinData[i], 1);
                    end;
                    nFileStream.Free;

                    loadedInk := TinkDisp.Create(pnlPen);
                    loadedInk.Load(BinData);
                    TxInkCollector.Ink := loadedInk.Clone;
                    TxInkCollector.Enabled := false;

               end;
          end;
     except
          on E: Exception do
               ExceptLogging('LoadPenChartImageForMod:' + E.Message);
     end;
end;

procedure TpenInput_f.saveimageChart(varMode: integer; varChartSeq: Double);
var
     myBytes: array of Byte;
     aString: TStringList;

     A: string;
     i, bufferSize: integer;

     strJinDay: string;

     signature, ms: TMemoryStream;
     img: TGIFImage;
     bt: array of byte;
     varRowHeight: integer;
begin



     try

          //여기서 null 차트. 0:참고사항  1:CC  2:문진medical Hx  3:원장요구 4:환자요청  5:pi   6:imp 7:Plan 에 저장 후 seq값 가져오기
          if varChartSeq = 0 then
          begin
               case loadType of
                    0: //참고사항
                         begin
                              with dm_f.sqlwork do
                              begin

                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxSRemark');
                                   Sql.Add('(srchart, srDate, srMemo,    Portion, isImage) values');
                                   Sql.Add('(:srchart, :srDate, :srMemo, :Portion,  :isImage)');
                                   ParamByName('srchart').AsString := ma_chart;
                                   ParamByName('srDate').AsDate := strToDate(strJinday);
                                   paramByName('srMemo').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(ID) as MaxChartSeq from  hxSRemark');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                              end;
                         end;
                    1: //CC
                         begin
                              with dm_f.sqlwork do
                              begin

                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxCC');
                                   Sql.Add('(CCchart, CCDate, CCMemo, portion, isImage) values');
                                   Sql.Add('(:CCchart, :CCDate, :CCMemo, :portion, :isImage)');
                                   ParamByName('CCChart').AsString := ma_chart;
                                   ParamByName('CCDate').AsDate := strToDate(strJinday);
                                   paramByName('CCMemo').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hxcc ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                              end;
                         end;



                     2: //문진
                         begin
                              with dm_f.sqlwork do
                              begin
                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxMed');
                                   Sql.Add('(Medchart, MedDate, MedMemo, portion,   isImage) values');
                                   Sql.Add('(:Medchart, :MedDate, :MedMemo, :portion,   :isImage)');
                                   ParamByName('Medchart').AsString := ma_chart;
                                   ParamByName('MedDate').AsDate := strToDate(strJinday);
                                   paramByName('MedMemo').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hxMed ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                              end;     
                         end;
                    3: //원장 요구사항
                         begin
                              with dm_f.sqlwork do
                              begin
                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxDent');
                                   Sql.Add('(Dchart, DDate, DMemo, portion,   isImage) values');
                                   Sql.Add('(:Dchart, :DDate, :DMemo, :portion,   :isImage)');
                                   ParamByName('Dchart').AsString := ma_chart;
                                   ParamByName('dDate').AsDate := strToDate(strJinday);
                                   paramByName('dMemo').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hxDent ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                               end;
                         end;
                    4: //환자요청사항
                         begin
                              with dm_f.sqlwork do
                              begin
                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxDesire');
                                   Sql.Add('(DSchart, DSDate, DSMemo, portion,   isImage) values');
                                   Sql.Add('(:DSchart, :DSDate, :DSMemo, :portion,   :isImage)');
                                   ParamByName('Dschart').AsString := ma_chart;
                                   ParamByName('dsDate').AsDate := strToDate(strJinday);
                                   paramByName('dsMemo').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hxDesire ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                                end;   
                         end;



                    5: //Present Ilness
                         begin
                              with dm_f.sqlwork do
                              begin

                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxPi');
                                   Sql.Add('(chart, jin_day, descript, portion, isImage) values');
                                   Sql.Add('(:chart, :jin_day, :descript, :portion, :isImage)');
                                   ParamByName('Chart').AsString := ma_chart;
                                   ParamByName('jin_day').AsDate := strToDate(strJinday);
                                   paramByName('descript').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hxPi ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                              end;
                         end;
                    6: //IMP
                         begin
                              with dm_f.sqlwork do
                              begin

                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hximp');
                                   Sql.Add('(chart, jin_day, descript, portion, isImage) values');
                                   Sql.Add('(:chart, :jin_day, :descript, :portion, :isImage)');
                                   ParamByName('Chart').AsString := ma_chart;
                                   ParamByName('jin_day').AsDate := strToDate(strJinday);
                                   paramByName('descript').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hximp ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                              end;
                         end;
                    7: //Plan
                         begin
                              with dm_f.sqlwork do
                              begin

                                   strJinDay := varInputDate;

                                   Close;
                                   Sql.Clear;
                                   Sql.Add('insert into hxPlan');
                                   Sql.Add('(chart, jin_day, descript, portion, isImage) values');
                                   Sql.Add('(:chart, :jin_day, :descript, :portion, :isImage)');
                                   ParamByName('Chart').AsString := ma_chart;
                                   ParamByName('jin_day').AsDate := strToDate(strJinday);
                                   paramByName('descript').asMemo := '';
                                   paramByName('Portion').asString := '';
                                   paramByName('isImage').asString := '1';
                                   execsql;

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Select max(seq) as MaxChartSeq from hxPlan ');
                                   Open;

                                   varChartSeq := fieldByName('maxChartSeq').asinteger;
                              end;
                         end;
               else
                    begin
                         with dm_f.sqlwork do
                         begin
                              Close;
                              Sql.Clear;

                              strJinDay := varInputDate;

                              SQL.Text := 'INSERT INTO  ma_chart_s (  ' + #13#10 +
                                   '             chart      ' + #13#10 +
                                   '             ,jin_day   ' + #13#10 +
                                   '             ,code      ' + #13#10 +
                                   '             ,descript  ' + #13#10 +
                                   '             ,Price  ' + #13#10 +
                                   '             ,portion   ' + #13#10 +
                                   '             ,nOrd      ' + #13#10 +
                                   '             ,Doctor    ' + #13#10 +
                                   '             ,Hygine    ' + #13#10 +
                                   '             ,userPcName' + #13#10 +
                                   '             ,isImage    ' + #13#10 +
                                   '             ,userID    ' + #13#10 +
                                   '  )  VALUES  (          ' + #13#10 +
                                   '              ' +
                                   QuotedStr(ma_chart) + #13#10 +
                                   '             ,' + QuotedStr(strJinDay) +
                                   #13#10 +
                                   '             ,' + QuotedStr('Tx.') + #13#10
                                   +
                                   '             ,' + QuotedStr('') + #13#10 +
                                   '             ,' + QuotedStr('') + #13#10 +
                                   '             ,' + QuotedStr('') +
                                   #13#10 +
                                   '             ,' + QuotedStr('') + #13#10 +
                                   '             ,' + QuotedStr(varTeam) +
                                   #13#10 +
                                   '             ,' + QuotedStr(varDam) +
                                   #13#10 +
                                   '             ,' + QuotedStr(SysName) + #13#10
                                   +
                                   '             ,' + QuotedStr('1') //isImage
                              + #13#10 +
                                   '             ,' + QuotedStr(main_f.V_UserID)
                                   + #13#10 +
                                   '             )';

                              ExecSQL;

                              Close;
                              sql.Clear;
                              sql.Add(' Select max(chartseq) as MaxChartSeq from ma_Chart_s ');
                              Open;

                              varChartSeq := fieldByName('maxChartSeq').asinteger;

                         end;
                    end;
               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('saveChartClick:' + E.Message);
          end;
     end;

     ms := TMemoryStream.Create;
     signature := TMemoryStream.Create;
     img := TGIFImage.Create;
     try
          bt := TxInkCollector.Ink.Save(IPF_GIF, IPCM_MaximumCompression);
          //IPCM_NoCompression); //IPCM_Default);
          ms.Size := length(bt);
          ms.Write(Pointer(bt)^, length(bt));
          ms.Position := 0;
          img.LoadFromStream(ms);

          //signed := true;
          img.Bitmap.SaveToStream(signature);
          varRowHeight := img.Height;
          signature.Position := 0;
          img.SaveToFile(ExtractFilePath(ParamStr(0)) + 'temp\tempImage\' +
               floattostr(varChartSeq) + '.gif');

     except
          on E: Exception do
          begin
               ExceptLogging('saveChartClick:' + E.Message);
               img.Destroy;
               signature.free;
               ms.Free;
          end;
     end;

     try
          myBytes := TxInkCollector.Ink.Save(IPF_InkSerializedFormat,
               IPCM_Default); //(0,0);
          bufferSize := length(myBytes);
          aString := TStringList.Create;
          for i := 0 to bufferSize - 1 do
          begin
               A := A + Char(myBytes[i]);
          end;
          aString.Add(A);
          aString.SaveToFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\'
               + floattostr(varChartSeq) + '.txt');
          aString.Free;

          with dm_f.sqlwork do
          begin

               Close;
               sql.Clear;
               sql.Add(' Select * from ma_Chart_i ');
               sql.Add(' Where chartseq = :chartseq and kind=:kind');
               ParamByName('chartSeq').value := varChartSeq;
               ParamByName('kind').value := inttostr(loadType);
               Open;
               last;
               if not IsEmpty then
               begin
                    if Application.MessageBox(pchar('[' +
                         main_f.edtName.text +
                         ']님의 입력된 문서를' + #13#13 +
                         '수정하시겠습니까?.'), '알림', MB_YESNO) =
                         IDYES then
                    begin

                         try
                              with dm_f.sqlTemp do
                              begin

                                   Close;
                                   sql.Clear;
                                   sql.Add(' Update ma_Chart_i Set ');
                                   sql.Add(' sDate = :sDate, chartImage = :ChartImage , modDay =:modDay');
                                   sql.Add(' Where ChartSeq = :chartSeq and kind=:kind');
                                   ParamByName('modDay').asDateTime := now;
                                   ParamByName('chartSeq').asString := floattostr(varChartSeq);
                                   ParamByName('kind').asString := inttostr(LoadType);

                                   ParamByName('sDate').asString := formatdateTime('YYYY-MM-DD', now);
                                   ParamByName('ChartImage').LoadFromFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\' + floattostr(varChartSeq) + '.txt', ftblob);
                                   ExecSQL;

                                   Application.MessageBox(Pchar('입력하신 정보가 수정 되었습니다.'), '알림', mb_ok + mb_IconInformation);

                              end;
                         except
                              on E: Exception do
                                   ExceptLogging('Tdm_f.saveimageChart:'
                                        + E.Message);
                         end;

                    end;
               end
               else
               begin

                    try
                         with dm_f.sqlWork do
                         begin

                              Close;
                              sql.Clear;
                              sql.Add(' Insert Into ma_Chart_i ');
                              sql.Add(' (chart, chartImage, SDate, chartSeq, kind, modDay) ');
                              sql.Add(' VALUES( :chart, :chartImage, :SDate, :chartSeq, :kind, :modDay) ');
                              ParamByName('modDay').asDateTime := now;
                              ParamByName('chart').asString := ma_chart;
                              ParamByName('kind').asString := inttostr(LoadType);
                              ParamByName('chartSeq').asString := floattostr(varChartSeq);
                              ParamByName('sDate').asstring := formatdateTime('YYYY-MM-DD', now);
                              ParamByName('ChartImage').LoadFromFile(ExtractFilePath(ParamStr(0)) + 'temp\TempImage\' + floattostr(varChartSeq) + '.txt', ftblob);
                              ExecSQL;

                              Application.MessageBox(Pchar('입력하신 정보가 저장 되었습니다.'), '알림', mb_ok + mb_IconInformation);

                         end;
                    except
                         on E: Exception do
                              ExceptLogging('Tdm_f.saveimageChart:'
                                   +
                                   E.Message);
                    end;

               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('saveChartClick:' + E.Message);
               img.Destroy;
               signature.free;
               ms.Free;
          end;
     end;

end;

procedure Tpeninput_f.EraseStrokes(varptX: integer; varPtY: integer;
     varcurrentStroke: inkStrokes);
var

     strokesHit: inkStrokes;
begin

     // Use HitTest to find the collection of strokes that are intersected
     // by the point.  The HitTestRadius constant is used to specify the
     // radius of the hit test circle in ink space coordinates (1 unit = .01mm).
     strokesHit := TxInkCollector.Ink.HitTestCircle(varptX, varPtY, 30);

     if (varcurrentStroke <> nil) then
          //and (strokesHit.Contains(varcurrentStroke))then

          //strokesHit
          strokesHit.Remove(varcurrentStroke.Item(0));

     // Delete all strokes that were hit by the point

     TxInkCollector.Ink.DeleteStrokes(strokesHit);

     if (strokesHit.Count > 0) then
     begin
          // Repaint the screen to reflect the change
          pnlPen.Refresh;
     end;
end;

procedure Tpeninput_f.PenKindChange(varPen: integer; sender: TObject);
begin
     try
          viewMode := 1;
          case varPen of
               0: //싸인펜
                    begin
                         TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
                         TxInkCollector.DefaultDrawingAttributes.IgnorePressure := false;
                         TxInkCollector.Enabled := true;
                    end;
               1: //볼펜
                    begin
                         TxInkCollector.DefaultDrawingAttributes.Transparency := 0;
                         TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;

                    end;
               2: //형광펜
                    begin
                         TxInkCollector.DefaultDrawingAttributes.Transparency := 100;
                         TxInkCollector.DefaultDrawingAttributes.IgnorePressure := true;
                    end;
          end;
//          btnBluesignpen.Down := false;
//          btnRedsignpen.Down := false;
//          btnGreensignpen.Down := false;
//          btnBlackSignpen.Down := false;
          //  (sender as TButton).Down := true;

          TxInkCollector.Enabled := true;

     except
          on E: Exception do
               ExceptLogging('Tdm_f.ColorChange:' + E.Message);
     end;
end;

procedure Tpeninput_f.ColorChange(varColor: tColor);
begin
     try
          TxInkCollector.DefaultDrawingAttributes.Color := varColor;
          TxInkCollector.Enabled := true;
     except
          on E: Exception do
               ExceptLogging('ColorChange:' + E.Message);
     end;
end;

procedure Tpeninput_f.ThickChange(varThick: integer);
begin
     try
          TxInkCollector.DefaultDrawingAttributes.Width := varthick;
          viewMode := 1;
          TxInkCollector.Enabled := true;
     except
          on E: Exception do
               ExceptLogging('ThickChange:' + E.Message);
     end;
end;

procedure Tpeninput_f.pnlPenMouseMove(Sender: TObject; Shift: TShiftState;
     X, Y: Integer);
begin
     try
          if (viewmode = 2) and (Shift = [ssLeft]) then
          begin
               TxInkCollector.Renderer.PixelToInkSpace(pnlPen.Handle, X,
                    Y);
               EraseStrokes(X, Y, nil);

               exit;
          end;
     except
          on E: Exception do
               ExceptLogging('ImgScreenMouseMove:' + E.Message);
     end;

end;

procedure Tpeninput_f.btnBlueSignPenClick(Sender: TObject);
begin
     PenKindChange(strtoInt(copy((sender as TButton).caption, 1,
          1)), (sender as TButton));
     ColorChange(stringToColor(substr((sender as TButton).caption,
          2,
          '_')));
     ThickChange(strtoInt(substr((sender as TButton).caption, 3,
          '_')));

end;

procedure Tpeninput_f.N7Click(Sender: TObject);
begin
     ThickChange((sender as TMenuItem).Tag);

end;

procedure Tpeninput_f.btnEraserClick(Sender: TObject);
begin
     // TxInkCollector.MousePointer := IMP_Crosshair;
     // Screen.Cursor := CR_ER2;
     try
          viewMode := 2;
          TxInkCollector.Enabled := false;
     except
          on E: Exception do
               ExceptLogging('Tdm_f.btnEraserClick:' + E.Message);
     end;

end;

procedure Tpeninput_f.AdvToolBarButton1Click(Sender: TObject);
begin
     if varPeninputMode = 0 then
          saveimageChart(varPeninputMode, 0)
     else
          saveimageChart(varPeninputMode, varChartSeq);

     if assigned(saveChamgo_f) then
             saveChamgo_f.LoadChamgo2(ma_chart);

     close;

     //    selectChartSDataAdv(ma_chart, '', '');

end;

end.

