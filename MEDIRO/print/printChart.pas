unit printChart;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, Grids,
     BaseGrid, AdvGrid, jpeg;

type
     TprintChart_f = class(TForm)
          QuickRep1: TQuickRep;
          qbTitle: TQRBand;
          qrHead: TQRBand;
          qlblDate: TQRLabel;
          qImgTeeth: TQRImage;
          qlbldoctor: TQRLabel;
          qlblHygine: TQRLabel;
          qlblPlanOrder: TQRLabel;
          QRShape3: TQRShape;
          QRBand1: TQRBand;
          QRSysData1: TQRSysData;

          qimgPatient: TQRImage;
          qlblJuso: TQRLabel;
          qlblJohap: TQRLabel;
          qlblChamgo: TQRLabel;
          qlblJumin: TQRLabel;
          qlblJung: TQRLabel;
          qlblHospitalName: TQRLabel;
          QRShape4: TQRShape;
          QRBand2: TQRBand;
          qlblChart: TQRLabel;
          QRSysData2: TQRSysData;
          QRShape2: TQRShape;
          qlblName: TQRLabel;
          qlblHospitalJuso: TQRLabel;
          QRimgBarcode: TQRImage;
          QRImage1: TQRImage;
          QRBand3: TQRBand;
          QRLabel1: TQRLabel;
          QRImage2: TQRImage;
          qlblTime: TQRLabel;
          qlblRemark: TQRRichText;
          procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
               var PrintReport: Boolean);
          procedure QuickRep1NeedData(Sender: TObject; var MoreData:
               Boolean);
     private
          { Private declarations }
          FGrid: TAdvStringGrid;
          nRowCount: integer;
          nRow: Integer;
     public
          { Public declarations }
          constructor CreateFrm(AOWner: TComponent; AGrid: TAdvStringGrid);
     end;

var
     printChart_f: TprintChart_f;

implementation

uses  uConfig, uDM, uMain, Result;

{$R *.dfm}

constructor TprintChart_f.CreateFrm(AOWner: TComponent; AGrid: TAdvstringGrid);
begin
     Create(AOWner);
     if Assigned(AGrid) then
          FGrid := AGrid;
end;


procedure WriteStreamInt(Stream : TStream; Num : integer);
 {writes an integer to the stream}
begin
 Stream.WriteBuffer(Num, SizeOf(Integer));
end;

procedure WriteStreamStr(Stream : TStream; Str : string);
 {writes a string to the stream}
var
 StrLen : integer;
begin
 {get length of string}
 StrLen := Length(Str);
 {write length of string}
 WriteStreamInt(Stream, StrLen);
 if StrLen > 0 then
 {write characters}
 Stream.Write(Str[1],  StrLen * SizeOf(Str[1]));
end;

procedure TprintChart_f.QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: Boolean);
var
     currentfile: string;
     strKiho: string;
     strJumin1: string;
     strJumin2: string;
     strKNumber: string;
     strAddress: string;
begin
     if FileExists(extractFilePath(ParamStr(0)) + 'Picture\' +
          trim(main_f.edtchart.text) + '.BMP') then
     begin
          CurrentFile := extractFilePath(ParamStr(0)) + 'Picture\' +
               trim(main_f.edtchart.text) + '.BMP';
          qimgPatient.Picture.LoadFromFile(CurrentFile);

     end
     else
          if FileExists(extractFilePath(ParamStr(0)) + 'Picture\' +
               trim(main_f.edtchart.text) + '.JPG') then
          begin
               CurrentFile := extractFilePath(ParamStr(0)) + 'Picture\' +
                    trim(main_f.edtchart.text) + '.JPG';
               qimgPatient.Picture.LoadFromFile(CurrentFile);

          end
          else
          begin
               qimgPatient.Picture := nil;

          end;

     if FileExists(ExtractFilePath(Application.ExeName) + 'temp\' +
          trim(main_f.edtchart.text) + '.BMP') then
     begin
          CurrentFile := ExtractFilePath(Application.ExeName) + 'temp\' +
               trim(main_f.edtchart.text) + '.BMP';
          qrimgBarcode.Picture.LoadFromFile(CurrentFile);

     end
     else
     begin
          qrimgBarcode.Picture := nil;
     end;

     nRow := 1;

     qlblName.caption   := '성명: ' + main_f.edtName.text;
     qlblChart.caption  := '차트번호: ' + main_f.edtchart.text;
     qlblJuso.caption   := '주소: ' + main_f.memAdd.text;
     qlblJohap.caption  := '조합기호: ' + main_f.edtgiho.text;
//     if eChart_f.cbPrintChartRemark.Checked then
//     qlblChamgo.caption := '참고: ' + main_f.memChamgo.Text
//     else
      qlblChamgo.caption := '참고: ';

     qlblJumin.caption  := '주민등록번호: ' + main_f.edtjumin.text + '-' +copy( main_f.edtjumin2.text,1,2)+'*****';
     qlblJung.caption   := '증번호: ' + main_f.edtjungno.text;
     qlblHospitalName.caption := configvalue.varsaupname;
     qlblHospitalJuso.caption := configvalue.varAdd1 + ' ' + configvalue.varAdd2;
end;


Function StringToStream(const AString: string): TStream;
begin
  Result := TStringStream.Create(AString);
end;

procedure TprintChart_f.QuickRep1NeedData(Sender: TObject; var MoreData:
     Boolean);
var
     currentpath: string;
     varRemark: string;
     varSeq: string;
     varSignFile:string;
      MemStr: TMemoryStream;
begin
     currentpath := extractFilePath(paramStr(0)) + 'temp\teethTemp\';
     with FGrid do
     begin

          if nRow < RowCount then
          begin
               //   qrHead.Height 초기화

               qrHead.Height := 27;

              //fontsize 초기화
               qlblPlanOrder.Font.Size := 10;//   // Tx. 번호
               qlblDate.Font.Size := 10;//  // 일자
               qlblTime.Font.Size := 10;//  // Jin_TIME


               varSeq:= floattostr(floats[7, nRow]);
               Qimgteeth.Width := 102;
            //   qlblRemark.Left := 310 - 100;
             //  qlblRemark.width := 250 + 100;

               qlblPlanOrder.Caption := Cells[0, nRow]; // Tx. 번호
               qlblDate.Caption := Cells[1, nRow]; // 일자
               qlblTime.Caption := Cells[10, nRow]; // Jin_TIME

               if Cells[7, nRow] <> '' then   //gridChartSeq
                    Qimgteeth.Picture.LoadFromFile(currentpath +
                        'TX' + varSeq + '.bmp') //치식
               else
                    Qimgteeth.Picture := nil;

               varSignFile := currentpath +   varSeq + 'sign.bmp';

          
               if  fileExists(varSignFile )  then
                    QrImage2.Picture.LoadFromFile( varSignFile )  //싸인
               else
                    QrImage2.Picture := nil;



           //    qlblremark.Width := 336;
                                   {Quickrep1.width -
                                   qlblPlanOrder.width
                                   - qlblDate.width
                                   - qImgTeeth.width
                                   - qlblHygine.width
                                   - qlblDoctor.width;}

               if Cells[8, nRow] = '1' then    //isImage
               begin
                    with qrImage1 do
                    begin
                         left := qlblremark.left;
                         top := qlblremark.top;
                         width := qlblremark.width;
                         height := qlblremark.Height;
                         visible := true;
                    end;

                    if fileexists( extractFilePath(paramstr(0)) +
                         'temp\TempImage\' +
                         floattostr(floats[7, nRow]) +
                         '.gif' ) then

                    qrImage1.Picture.LoadFromFile(extractFilePath(paramstr(0)) +
                         'temp\TempImage\' +
                         floattostr(floats[7, nRow]) +
                         '.gif')
                         else
                           qrImage1.Picture:=nil;




                    qrHead.Height :=qrImage1.height;
               //     qlblremark.Height := 0;


               end
               else
               begin
                    qrImage1.visible := false;
                    qrImage1.Picture := nil;

              //      qrHead.Height := ((29 - 4) * (length(Cells[3, nRow]) div 40)) + 29;
              //      qrshape1.Height := ((29 - 4) * (length(Cells[3, nRow]) div 40)) + 29;



              //        qlblremark.Height := (17 * (length(Cells[3, nRow]) div 40)) + 35;

               end;


               qlblremark.Lines.LoadFromStream(
                    StringToStream(cells[3, nRow])  );


               qlblDoctor.Caption := Cells[4, nRow]; // 의사
               qlblHygine.Caption := ''; //Cells[5, nRow]; // 위생사



          end;

          MoreData := nRow < RowCount;
          Inc(nRow);
     end;

end;

end.

