unit uNurseActing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvPanel,
  DB, uSysinfo, Vcl.Buttons, Vcl.Imaging.GIFImg, iniFiles, FormSize, EllipsLabel,
  frxClass, frxBarcode;
type
     PMyRec = ^TMyRec;
     TMyRec = record
          FName: string;
          LName: string;
          FPrice: string;
          FGroupCode: string;
          FGroupName: string;

          FChartTag: string;
          FisGroup : boolean;

          FFontName: string;
          FFontSize: string;
          FFontColor: string; //글자색
          FFontBackColor: string; //글자배경색
          FFontStyle: string;


end;

type
  TnurseActing_f = class(TForm)
    Panel2: TPanel;
    AdvPanel1: TAdvPanel;
    lblPatInfo: TLabel;
    Panel3: TPanel;
    pnlInput: TAdvPanel;
    PageControl1: TPageControl;
    tsFirstTab: TTabSheet;
    Tree1: TTreeView;
    Panel1: TPanel;
    Label1: TLabel;
    dtToday: TDateTimePicker;
    pnlTool: TPanel;
    btnNew: TButton;
    btnall: TButton;
    lblProgresstime: TLabel;
    Image4: TImage;
    grdProgress: TAdvStringGrid;
    Image2: TImage;
    btnChartMod: TButton;
    btnDateMod: TButton;
    btnTeethEdit: TButton;
    btnChartInput: TButton;
    pnlBottom: TPanel;
    Button2: TButton;
    btnModNewChart: TButton;
    AdvPanel3: TAdvPanel;
    lbCharttagList: TListBox;
    edtChartTag: TEdit;
    edtCharttagOrder: TEdit;
    pnlEditor: TAdvPanel;
    edtTxPrg: TRichEdit;
    edtTxPrice: TEdit;
    edtCC: TEdit;
    edtTx: TEdit;
    Image1: TImage;
    Label2: TLabel;
    rgSelect: TRadioGroup;
    FormSize1: TFormSize;
    AdvPanel2: TPanel;
    CheckBox1: TCheckBox;
    spSkinButton6: TButton;
    spSkinButton7: TButton;
    spSkinButton8: TButton;
    spSkinButton9: TButton;
    spSkinButton10: TButton;
    spSkinButton11: TButton;
    spSkinButton12: TButton;
    spSkinButton13: TButton;
    ItalBtn: TSpeedButton;
    BoldBtn: TSpeedButton;
    UnderBtn: TSpeedButton;
    ColorBtn: TSpeedButton;
    FontBtn: TSpeedButton;
    LeftBtn: TSpeedButton;
    CenterBtn: TSpeedButton;
    RightBtn: TSpeedButton;
    FontName: TComboBox;
    FontSize: TComboBox;
    pnlCol1: TPanel;
    pnlcol2: TPanel;
    pnlcol3: TPanel;
    pnlcol4: TPanel;
    pnlcol5: TPanel;
    pnlCol6: TPanel;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Label3: TLabel;
    Label4: TLabel;
    cbTime: TComboBox;
    cbmin: TComboBox;
    cbAutoTime: TCheckBox;
    cbDam: TComboBox;
    Timer1: TTimer;
    Splitter1: TSplitter;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    btnPrint: TButton;
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxUserDataSet1: TfrxUserDataSet;
    cbPreview: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tree1CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure Tree1DblClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnModNewChartClick(Sender: TObject);
    procedure btnallClick(Sender: TObject);
    procedure BoldBtnClick(Sender: TObject);
    procedure ItalBtnClick(Sender: TObject);
    procedure UnderBtnClick(Sender: TObject);
    procedure pnlCol1Click(Sender: TObject);
    procedure ColorBtnClick(Sender: TObject);
    procedure FontBtnClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure LeftBtnClick(Sender: TObject);
    procedure CenterBtnClick(Sender: TObject);
    procedure RightBtnClick(Sender: TObject);
    procedure edtTxPrgSelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbAutoTimeClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure grdProgressGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure grdProgressComboChange(Sender: TObject; ACol, ARow,
      AItemIndex: Integer; ASelection: string);
    procedure Button2Click(Sender: TObject);
    procedure grdProgressDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtTxPrgClick(Sender: TObject);
    procedure edtTxPrgContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure btnPrintClick(Sender: TObject);
  private
  { Private declarations }

           SysInfo: SystemInfoRecord;
           SysName : string;
           isOnUpdate: boolean;

           selectedRow : integer;



           varPath:string;
           isEditMode : boolean;  //true then chart update

           iCircleNum, varCircleDefault, varCircleValue: integer;
           CharCircle: string;

           varCurrPos : integer;
           stringList1,
           stringList2,
           stringlist3,
           stringlist4,
           stringlist5, //Xray
           stringlist6, //마취
           stringListKind, stringListNext: TStringList;

           varDoctor, varHygine, varAppday, varArch1, varArch2: string;

    procedure Makenode(Flag: Integer; fTree: TTreeView; fTName, UId: string);
    procedure MakeTabSheet(UsePageControl: TPageControl);
    procedure MakeTree;
    procedure InsertChartRichText(varChartComment: string; chartKind: string = '1'; varKind: string = 'Tx.');
    procedure UpdateChartSAdv(varChartSeq: double);
    procedure selectChartSDataAdv(
               varChart: string;
               varScript: string;
               varTeeth: string;
               varChartKind:string='');
    function selectComment(varChartSeq: double): string;
    function CurrText(varRichText: TRichedit): TTextAttributes;
    procedure DeleteTx(Sender: TObject);
    function DeleteChartSAdv(varChartSeq: double): boolean;
    procedure MakeTree2;
    procedure DataToPrintForm(varDate, sYoungNo: string);
            //   multiSort : integer= 0);  //0:전체 1: 구분없음 2:선택된 chartKind

  public
    { Public declarations }
  end;
const
     SQL_SELECT_ChartSort_filter =
          'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''0990%'') and (code <> ''099000'')     and ( val <>  ''A'' )    ' + #13#10 +
          'order by code    ';


     conColcount = 50;
     GridAdd = 4;

     gridNo = 0;
     gridKind = 1;
     gridDate = 2;
     gridChartTime = 3; //47

     gridTeeth = 4;

     gridarch1 = 5;
     gridarch2 = 6;

     gridDescription = 3 + GridAdd;

     gridImage = 4 + GridAdd;


     //GRIDP1 마취 , Gridp2 X-ray
     gridP1 = 5 + GridAdd;
     gridp2 = 6 + GridAdd;

     gridp3 = 7 + GridAdd;
     gridp4 = 8 + GridAdd;
     gridcode = 9 + GridAdd;
     gridDoctor = 10 + GridAdd;
     gridHygine = 11 + GridAdd;
     gridpath = 12 + GridAdd;
     gridportion = 13 + GridAdd;
     gridchk = 14 + GridAdd;
     gridnord = 15 + GridAdd;
     gridfil = 18 + GridAdd;

     griddesFontName = 22 + GridAdd;
     gridMx = 23 + GridAdd;
     gridMd = 24 + GridAdd;
     gridapp = 25 + GridAdd;
     gridNext = 26 + GridAdd;
     gridChartSeq = 27 + GridAdd;
     gridisRich = 28 + GridAdd;
     gridisImage = 29 + GridAdd;
     gridDescript = 30 + GridAdd;

     gridetc1 = 31 + GridAdd;
     gridetc2 = 32 + GridAdd;
     gridetc3 = 33 + GridAdd;
     gridetc4 = 34 + GridAdd;
     gridetc5 = 35 + GridAdd;
     gridetc6 = 36 + GridAdd;
     gridetc7 = 37 + GridAdd;
     gridetc8 = 38 + GridAdd;
     gridTeethFilename = 39 + GridAdd;
     gridPrintCheck = 40 + GridAdd;

     gridRowHeight = 41 + GridAdd;
     gridSignInput = 42 + GridAdd;

     gridCharttag = 43 + GridAdd;//
     gridLineNo = 44 + GridAdd; //
     gridisNotice = 45 + GridAdd; //

     extra = 37;
     intra = 26;
     tmj = 21;
     edintra = 20;
     edModel = 84;
     cbanal = 6;
     edalal = 34;
     edTmj = 4;

     rbTmj = 2;
     //   intra
     //   model
     //   anal
     //   alal
     //   tmj


var
  nurseActing_f: TnurseActing_f;

implementation
uses uConfig, uFunctions,  uDm, uGogekData,uFormInit, uGogekData_Find, System.DateUtils;

{$R *.dfm}
function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
     FontType: Integer; Data: Pointer): Integer; stdcall;
begin
     TStrings(Data).Add(LogFont.lfFaceName);
     Result := 1;
end;

Function CountChildNodes(oTreeView : TTreeView): Integer;
var
     i : Integer;
begin
      Result := 0;

      if oTreeView.Selected = Nil then
      begin
         for i:=0 to oTreeView.Items.Count-1 do
             if oTreeView.Items[i].Level = 0 then
                Inc(Result);
      end
      else
      begin
          Result := oTreeView.Selected.Count;
      end;
end;

procedure TnurseActing_f.BoldBtnClick(Sender: TObject);
begin
//            if grdProgress.InplaceRichEdit.Visible then
//             begin
//                  if fsBold in grdProgress.InplaceRichEdit.SelAttributes.Style then
//                       grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                            grdProgress.InplaceRichEdit.SelAttributes.Style -
//                            [fsBold]
//                  else
//                       grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                            grdProgress.InplaceRichEdit.SelAttributes.Style +
//                            [fsBold]
//            end
//            else
                    begin

                          if fsBold in edtTxprg.SelAttributes.Style then
                               edtTxprg.SelAttributes.Style :=
                                    edtTxprg.SelAttributes.Style -
                                    [fsBold]
                          else
                               edtTxprg.SelAttributes.Style :=
                                    edtTxprg.SelAttributes.Style +
                                    [fsBold]


                    end;

end;

procedure TnurseActing_f.btnallClick(Sender: TObject);
begin
     grdProgress.rowcount := 1;
     if btnAll.Caption = 'DAY' then
          btnAll.Caption := 'ALL'
     else
          btnAll.Caption := 'DAY';

     selectChartSDataAdv(ma_chart, '', '',   '');

end;

procedure TnurseActing_f.btnModNewChartClick(Sender: TObject);
var
     Path: string;
     FormInit: TInifile;
     varCharttag:string;
begin
  if isEditMode = true then
  begin

     grdProgress.UpdateEditMode;

     grdProgress.RichToCell(  gridDescription, grdProgress.Row,   edtTxPrg);

     UpdateChartSAdv(grdProgress.Floats[gridChartSeq, grdProgress.Row]);

     isEditMode:=false;

  end
  else
  begin
              if trim(edtTxPrg.text) = '' then
              exit;


              //    varChartSortCap := loadsearchChartKindValue;


              //    if isChartKindSearch = true then
              //    begin
              //        varChartSortCap := loadsearchChartKindValue;
              //    end
              //    else
              //    begin
              //        varChartSortCap := tabChartSort.AdvTabs.Items[strtoint(dm_f.configvalue.varChartTab)].Caption;
              //    end;



              //     varCharttag := edtChartTag.text;
              //     if (varchartTag = '1차교정')
              //        or (varchartTag =   '2차교정')
              //        or (varchartTag =   '전체교정')
              //        or (varchartTag =   '부분교정')
              //        or (varchartTag =   '단순교정')
              //        or (varchartTag =   '재교정') then
              //          begin
              //
              //          //기존 입력된 내용을 찾아서 초기화 시켜주자.
              //             initCharttag(ma_chart);
              //
              //          end;


                   //차트Tag에 Model이 들어오면 모델번호를 만들어서 저장하자. ma_chart_Mno

              //     if (UpperCase(varchartTag) = 'MODEL') then
              //     begin
              //
              //      if  saveModelNo(ma_chart  ,
              //           formatDatetime('YYMMDD', dtToday.Date) +  main_f.edtName.text ,
              //           formatDatetime('YYYY-MM-DD', now))  = true then
              //           begin
              //
              //                main_f.edtModelNo.text:=  formatDatetime('YYMMDD',dtToday.Date) +  main_f.edtName.text;
              //
              //           end;
              //
              //     end;


                   if trim(edtTxPrg.text) <> '' then
                   begin
                        InsertChartRichText(edtTxPrg.text);
                        iCircleNum := 0;
                        varCircleDefault := 2460;
                        edtTxPrg.Clear;
                   end;




                   //차트내용이 저장되면 서버로 갱신신호를 보낸다.
              //     if configvalue.varDaegiSocketUse  = '1' then    //1:다비서버이용, 0:직접저장
              //     begin
              //          if dm_f.IdTCPClient2.Connected = false then
              //                dm_f.ConnectImageDBServer;
              //          dm_f.IdTCPClient2.iohandler.WriteLn('CCS');
              //     end;




  end;

     pnlInput.visible:= false;
     selectChartSDataAdv(ma_chart, '', '',   '');

end;

procedure TnurseActing_f.btnNewClick(Sender: TObject);
begin

       if trim(ma_chart) = '' then
       begin
            showmessage('환자를 선택하세요.');
            exit;
       end;
      isEditMode:= false;
      edtTxPrg.Clear;

      cbAutoTime.Checked := false;
      timer1.Enabled := false;


      pnlinput.Visible := not   pnlinput.Visible;
end;

procedure TnurseActing_f.btnPrintClick(Sender: TObject);
var
    WPath   : string;
    bReturn : boolean;
    barcode1:  TfrxBarcodeView;
begin


     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin

           LoadFromFile(WPath + 'rptNurseActing.fr3') ;



           barcode1      := FindComponent('BarCode1') as TfrxBarcodeView;
           barcode1.Text := ma_chart  ;


           frxUserDataSet1.RangeEnd      := reCount;
           frxUserDataSet1.RangeEndCount := grdProgress.RowCount-1;


           DataToPrintForm('', '');

           if cbPreview.Checked then
               ShowReport()
           else
           begin
               PrepareReport();
               bReturn := Print();
           end;
     end;

end;
procedure TnurseActing_f.DataToPrintForm(varDate, sYoungNo: string);
var
     imsiryo, i: integer;
begin

      with frxReport1 do
     begin
       //  barcode1.text:=  edtchart.text;
          Variables['성명']         := QuotedStr('성명: '         + ma_paName);//edtName.text); //
          Variables['차트번호']     := QuotedStr('차트번호: '     + ma_chart);////edtchart.text); //
          Variables['주소']         := QuotedStr('주소: '         + ma_h_juso);//lblJuso.Caption);///ma_h_juso); //
          Variables['조합기호']     := QuotedStr('조합기호: '     + ma_kiho);//lblJohap.Caption);// ma_kiho); //
          Variables['주민등록번호'] := QuotedStr('주민등록번호: ' + copy(ma_jumin, 1,6) + '-' +copy(ma_jumin, 7,1) +'******');//edtJumin.text+'-'+ edtJumin2.text); //
          Variables['증번호']       := QuotedStr('증번호: '       + ma_k_number);//lblJungNo.Caption);// ma_k_number); //
          Variables['병원명']       := QuotedStr('의료기관 : '    + configvalue.varsaupname); //
          Variables['병원주소']     := QuotedStr('주소 : '        + configvalue.varAdd1 + ' ' + configvalue.varAdd2); //
      end;
end;


procedure TnurseActing_f.cbAutoTimeClick(Sender: TObject);
begin

      timer1.Enabled := cbAutoTime.Checked;


end;

procedure TnurseActing_f.Button2Click(Sender: TObject);
begin
     pnlinput.Visible := false;
end;

procedure TnurseActing_f.FontBtnClick(Sender: TObject);
begin
//             if  grdProgress.InplaceRichEdit.Visible = true then
//             begin
//
//                   FontDialog1.Font.Name := grdProgress.InplaceRichEdit.SelAttributes.Name;
//                   FontDialog1.Font.Style :=
//                        grdProgress.InplaceRichEdit.SelAttributes.Style;
//                   FontDialog1.Font.Size := grdProgress.InplaceRichEdit.SelAttributes.Size;
//
//                   if FontDialog1.Execute then
//                   begin
//                        grdProgress.InplaceRichEdit.SelAttributes.Name :=
//                             FontDialog1.Font.Name;
//                        grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                             FontDialog1.Font.Style;
//                        grdProgress.InplaceRichEdit.SelAttributes.Size :=
//                             FontDialog1.Font.Size;
//                   end;
//             end
//             else
             begin

                   FontDialog1.Font.Name := edtTxprg.SelAttributes.Name;
                   FontDialog1.Font.Style :=
                        edtTxprg.SelAttributes.Style;
                   FontDialog1.Font.Size := edtTxprg.SelAttributes.Size;

                   if FontDialog1.Execute then
                   begin
                        edtTxprg.SelAttributes.Name :=
                             FontDialog1.Font.Name;
                        edtTxprg.SelAttributes.Style :=
                             FontDialog1.Font.Style;
                        edtTxprg.SelAttributes.Size :=
                             FontDialog1.Font.Size;
                   end;


             end;

end;

procedure TnurseActing_f.FontNameChange(Sender: TObject);
begin
//             if grdProgress.InplaceRichEdit.Visible then
//                  grdProgress.InplaceRichEdit.SelAttributes.Name :=
//                       FontName.Items[FontName.ItemIndex]
//                       else
                            edtTxprg.SelAttributes.Name :=
                              FontName.Items[FontName.ItemIndex];

end;

procedure TnurseActing_f.FontSizeChange(Sender: TObject);
var
     FormInit: Tinifile;
     Path : string;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'db.ini';
     FormInit := TIniFile.Create(Path);
     FormInit.WriteString('기타정보', 'FontSize', FontSize.text);
     FormInit.free;


//     if grdProgress.InplaceRichEdit.Visible then
//          grdProgress.InplaceRichEdit.SelAttributes.Size :=
//               StrToInt(FontSize.Items[FontSize.ItemIndex])
//     else
     begin
         edtTxprg.Font.size := strtoint(FontSize.text);
         edtTxprg.SelAttributes.Size := strtoint(FontSize.text);
     end;


end;


procedure TnurseActing_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:=caFree;
end;

procedure TnurseActing_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
    path     : string;
    FormInit : TIniFile;
begin
     Path := GetConfigDir + 'db.ini';

     FormInit := TIniFile.Create(Path);
     FormInit.WriteInteger('splitInfo', 'NxTxItemsWidth', pageControl1.Width);

     FormInit.Free;

end;

procedure TnurseActing_f.FormCreate(Sender: TObject);
var
     DC: HDC;

begin


     DC := GetDC(0);
     EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
     ReleaseDC(0, DC);
     FontName.Sorted := True;

     FontName.ItemIndex := fontname.Items.IndexOf('돋움');
     FontSize.ItemIndex := fontsize.Items.IndexOf('10');

     edtTxprg.WantReturns := false;
     edtTxprg.Font.Size := strtoint(FontSize.Text);
     edtTxprg.Font.Name := FontName.Items[FontName.ItemIndex];

     stringList2 := TstringList.Create;


end;

procedure TnurseActing_f.FormDestroy(Sender: TObject);
begin
      nurseActing_f := nil;
end;

procedure TnurseActing_f.FormShow(Sender: TObject);
var
     FormInit: Tinifile;
     path :string;
     genderAge : string;
begin


      caption:='간호기록부';

      varPath := extractfilepath(paramstr(0)) + 'temp\teethtemp\';

      initAdvGrid(grdProgress, true);


      if isDate(JuminToBirthDash(ma_jumin)) = true then
      begin
             //    lblgenderAge.Font.Color := clNavy;
           genderAge := jumintogender(ma_jumin) + ' / '
                +
                inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) div 12) + 'y ' +
                inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) mod 12) + 'm'; //+ jumintonai(ma_jumin);
      end
      else
      begin
          //       lblgenderAge.Font.Color := clNavy;
          genderAge := jumintogender(ma_jumin) + ' / '
                +
                'unknown';
      end;

      if trim(ma_Chart) <> '' then
     begin

     //  caption:=  '[진료실] '+ ' '+ ma_Chart +'('+ ma_Paname+')' + genderAge +'';
       lblPatInfo.caption :=  ma_Chart +'('+ ma_Paname+')' + genderAge +'';
     end;

      dtToday.date:= now;







     Path     := GetConfigDir + 'db.ini';
     FormInit := TIniFile.Create(Path);
     pageControl1.width  := FormInit.ReadInteger('splitInfo', 'NxTxItemsWidth', 300);

     FormInit.Free;








      MakeTabSheet(PageControl1);

      MakeTree2;




   with dm_f.sqlTemp do
   begin
        close;
        sql.Clear;
        sql.Add('Select * from ma_Sawon_basic                 ');
        sql.Add(' where  sajikGub = ''0''  and noUse <> ''1'' ');
        sql.Add(' order by sabun                              ');
        open;
         cbDam.items.Clear;
        cbDam.Items.Add('');
        stringList2.Add('');
        if not isEmpty then
        begin
          while not eof do
          begin
            stringList2.Add(fieldbyname('saname').asString);
            cbDam.Items.Add(fieldbyname('saname').asString);
            next;
          end;
        end
    end;



      selectChartSDataAdv(ma_chart, '', '',   '');


//     sysinfo := GetAllSystemInfo;
//     SysName := Sysinfo.ComputerName;



end;



procedure TnurseActing_f.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin

{jinday
jintime
remark
nurseName
}
         if VarName = 'jinday' then
            Value := grdProgress.cells[ 2, frxUserDataSet1.RecNo+1]
          else if VarName = 'jintime' then
            Value := grdProgress.cells[ 3, frxUserDataSet1.RecNo+1]

          else if VarName = 'remark' then
        //    Value := grdProgress.cells[ 7, frxUserDataSet1.RecNo+1]
             Value := grdProgress.StrippedCells[ 7, frxUserDataSet1.RecNo+1]

          else if VarName = 'nurseName' then
            Value := grdProgress.cells[ 15, frxUserDataSet1.RecNo+1];

end;

procedure TnurseActing_f.grdProgressComboChange(Sender: TObject; ACol, ARow,
  AItemIndex: Integer; ASelection: string);
var
     varSeq: double;
     varDoctor:string;
     varDescript:string;
     varChartComment :wideString;
     varChartSseq  : widestring;
     varDay : string;

begin
     varSeq := grdProgress.Floats[gridChartSeq, ARow];



          varDay := grdProgress.Cells[gridDate, grdProgress.Row];

          varDescript := grdProgress.Cells[gridDesCript, grdProgress.Row];
          varDoctor := grdProgress.Cells[gridDoctor, grdProgress.Row];





     case ACol of
          gridarch1:
               begin

                    varArch1 :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('archwire=:archwire');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('archwire').value := varArch1;
                         ExecSQL;
                    end;

               end;
          gridarch2:
               begin

                    varArch2 :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('archwire2=:archwire');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('archwire').value := varArch2;
                         ExecSQL;
                    end;

               end;
          griddoctor:
               begin

                    varDoctor :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('Doctor=:Doctor');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('Doctor').value := varDoctor;
                         ExecSQL;
                    end;

               end;
          gridhygine:
               begin
                    //varHygine := grdProgress.Cells[Acol, ARow];
                    varHygine :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('Hygine=:Hygine');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('Hygine').value := varHyGine;
                         ExecSQL;
                    end;
               end;
          gridapp:
               begin
                    varAppday :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('app=:app');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('app').value := varAppday;
                         ExecSQL;
                    end;
                    // if varAppday <> '' then
                    //        edttxprg.SetFocus;

               end;


          gridP1:
               begin
                    varAppday :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('p1=:p1');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('p1').value := varAppday;
                         ExecSQL;
                    end;
                    // if varAppday <> '' then
                    //        edttxprg.SetFocus;

               end;
          gridP2:
               begin
                    varAppday :=
                         grdProgress.Combobox.Items.Strings[AItemIndex];
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;
                         Sql.Add('update ma_chart_s Set');
                         Sql.Add('p2=:p2');
                         Sql.Add('where Chartseq=:chartseq');
                         ParamByName('chartSeq').value := varSeq;
                         ParamByName('p2').value := varAppday;
                         ExecSQL;
                    end;
                    // if varAppday <> '' then
                    //        edttxprg.SetFocus;

               end;
     end;


//            varChartComment:=
//                                    '|Chart|' + main_f.edtchart.text
//                                   +'|date|' + varDay
//                                   +'|portion|' + varPortion
//                                   +'|charting|' + varDescript
//                                   +'|doctor|' + varDoctor ;
//
//
//            CertProcess(varChartComment , floatToStr(varSeq));


     grdProgress.Refresh;


end;


procedure TnurseActing_f.DeleteTx(Sender: TObject);
var
     varSeq: double;
     varpassWord : string;

begin

      //(Sender as TAdvStringGrid).Row ==> SelectedRow 수정

          // dm_f.configvalue.varPassChartDelete <> '123' then

       if  ( configvalue.varPassChartDelete <> '123')
          and  (configvalue.varPassChartDelete <> '') then
            varpassWord  :=  configvalue.varPassChartDelete
            else
            varpassWord  :=  formatdatetime('dd', now);



     if (((Sender as TAdvStringGrid).RowCount > 0) and (SelectedRow >= 0)) then
     begin
          varSeq := (Sender as TAdvStringGrid).floats[gridChartSeq, SelectedRow];



                    if inputbox('암호를 입력하세요', '오늘은', '***') <>   varpassWord then
                    begin
                        showmessage('관리자에게 문의하십시오.');
                        exit;
                    end;

          if Application.MessageBox('진료기록을 삭제하시겠습니까?', '확인',
               MB_OKCANCEL) = 1 then
          begin

               if DeleteChartSAdv(varSeq) = true then
               begin

                    (Sender as TAdvStringGrid).RemoveRows(SelectedRow, 1);
               end;
          end;
     end;
end;


function TnurseActing_f.DeleteChartSAdv(varChartSeq: double): boolean;
begin
     result := false;
     if grdProgress.rowcount > 0 then
     begin
          try

               with Dm_f.SqlWork do
               begin
                    Close;
                    Sql.Clear;
                    Sql.Add('delete from  ma_chart_s');
                    Sql.Add('where ');
                    Sql.Add(' Chartseq=:chartseq');
                    ParamByName('chartseq').value := varcHARTsEQ;
                    ExecSQL;

                    Close;
                    Sql.Clear;
                    Sql.Add('delete from  ma_chart_i');
                    Sql.Add('where ');
                    Sql.Add(' Chartseq=:chartseq');
                    ParamByName('chartseq').value := varChartSeq;
                    ExecSQL;


                    result := true;
               end;
          except
               result := false;
          end;
     end;

end;



procedure TnurseActing_f.grdProgressDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if aRow <= 0 then
     exit;


     SelectedRow :=  arow;
   case aCol of
      gridNo:
        begin


          if aRow > 0 then
             // if selectedRow > 0 then
              begin
                   grdProgress.Row :=  aRow;
                   DeleteTx(grdProgress);
              end;



         end;

       1..20:
       begin
               pnlinput.Visible :=   true;
               isEditMode       :=   true;

              timer1.Enabled := false;
              cbAutoTime.Checked := false;


              dtToday.Date := strtoDate( grdProgress.Cells[gridDate, ARow]);

              cbtime.itemindex := cbtime.Items.IndexOf( substr( grdProgress.Cells[gridChartTime, ARow], 1, ':'));
              cbMin.itemindex  := cbMin.Items.IndexOf(  substr( grdProgress.Cells[gridChartTime, ARow], 2, ':') );
              cbDam.itemindex  := cbDam.Items.IndexOf(  grdProgress.Cells[gridHygine, ARow]);

               grdProgress.UpdateEditMode;

             //  edtTxPrg.text    := grdProgress.cells[gridDescription, grdProgress.Row];
               grdProgress.CellToRich(gridDescription, grdProgress.Row, edtTxPrg);

             //  edtTxPrg.text    := grdProgress .cells[gridDescription, aRow];
       end;
 end;
end;

procedure TnurseActing_f.grdProgressGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
     if arow > 0 then

          case ACol of
               gridKind:
                    begin
                         AEditor := edComboList;
                      //   grdProgress.Combobox.Items.Assign(StringListKind);
                    end;
               gridDate:
                    begin
                         aEditor := edDateEdit;
                    end;
               gridDescription:
                    begin
                         if configvalue.varArchInputKind = '0' then
                         begin
                              aEditor := edRichEdit;
                         end
                         else
                         begin
                              aEditor := edRichEdit;
                                  AEditor := edEditBtn;
                         end;

                    end;
               gridDoctor:
                    begin
                         AEditor := edComboEdit;
                     //    grdProgress.Combobox.Items.Assign(StringList1);
                    end;
               gridHygine:
                    begin
                         AEditor := edComboList;
                         grdProgress.Combobox.Items.Assign(StringList2);
                    end;
               gridapp:
                    begin
                         AEditor := edComboList;
                     //   grdProgress.Combobox.Items.Assign(StringList3);
                    end;


               gridarch1:
                    begin
                         if configvalue.varArchInputKind = '0' then
                         begin
                              AEditor := edComboList;
                         //     grdProgress.Combobox.Items.Assign(StringList4);
                         end
                         else
                         begin
                              AEditor := edEditBtn;
                         end;
                    end;
               gridarch2:
                    begin
                         if configvalue.varArchInputKind = '0' then
                         begin
                              AEditor := edComboList;
                            //  grdProgress.Combobox.Items.Assign(StringList4);
                         end
                         else
                         begin
                              AEditor := edEditBtn;

                         end;
                    end;


               gridP1://Xray
                    begin
                         AEditor := edComboList;
                        // grdProgress.Combobox.Items.Assign(StringList5);
                    end;

               gridP2://마취
                    begin
                         AEditor := edComboList;
                      //   grdProgress.Combobox.Items.Assign(StringList6);
                    end;



               gridPrintCheck:
                    begin
                         AEditor := edCheckBox;
                    end;
               gridSignInput:
                    begin
                         AEditor := edButton;
                    end;
          else
               AEditor := edNormal;
          end;

end;

procedure TnurseActing_f.Makenode(Flag: Integer; fTree: TTreeView; fTName: string; UId: string);
var
     MyRecPtr: PMyRec;
     TreeTemp1, TreeTemp2, TreeTemp3, TreeTemp4, TreeTemp5, TreeTemp6: TTreeNode;
begin
     TreeTemp1 := nil;
     TreeTemp2 := nil;
     TreeTemp3 := nil;
     TreeTemp4 := nil;
     TreeTemp5 := nil;
     TreeTemp6 := nil;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from txnew');
          Sql.Add(' where txkind=:txkind ');
          Sql.Add(' and id=:id    and ( inUse <> ''0'' or inUse is null)  ');
          Sql.Add('order by treepath');
          ParamByName('txKind').AsString := IntToStr(Flag);
          ParamByName('id').AsString := UId;
          Open;

          First;
          while not eof do
          begin
               New(MyRecPtr);

               MyRecPtr^.FName := FieldByName('txname').AsString;
               MyRecPtr^.FChartTag := FieldByName('chartTag').AsString;
               MyRecPtr^.LName := FieldByName('txcode').AsString;
               MyRecPtr^.FPrice := FieldByName('Price').AsString;
               MyRecPtr^.FGroupCode := FieldByName('GroupCode').AsString;
               MyRecPtr^.FGroupName := FieldByName('GroupName').AsString;

               MyRecPtr^.FFontName := FieldByName('FontName').AsString;


               if FieldByName('isGroup').AsString = '1' then
                    MyRecPtr^.FisGroup :=  true
               else
                    MyRecPtr^.FisGroup :=  false;



               if FieldByName('FontColor').AsString <> '' then
                    MyRecPtr^.FFontColor := FieldByName('FontColor').AsString
               else
                    MyRecPtr^.FFontColor := 'clblack';

               if FieldByName('BackColor').AsString <> '' then
                    MyRecPtr^.FFontBackColor := FieldByName('BackColor').AsString
               else
                    MyRecPtr^.FFontBackColor := 'clWhite';

               MyRecPtr^.FFontSize := FieldByName('FontSize').AsString;
               MyRecPtr^.FFontStyle := FieldByName('FontStyle').AsString;






               if Copy(FieldByName('treepath').AsString, 4, 18) = '000000000000000000' then
               begin
                    TreeTemp1 := fTree.Items.AddChildObject(nil, FieldByName('txcap').AsString, MyRecPtr);
               end
               else
                    if Copy(FieldByName('treepath').AsString, 7, 15) = '000000000000000' then
                    begin
                         TreeTemp2 := fTree.Items.AddChildObject(TreeTemp1, FieldByName('txcap').AsString, MyRecPtr);
                    end
                    else
                         if Copy(FieldByName('treepath').AsString, 10, 12) = '000000000000' then
                         begin
                              TreeTemp3 := fTree.Items.AddChildObject(TreeTemp2, FieldByName('txcap').AsString, MyRecPtr);
                         end
                         else
                              if Copy(FieldByName('treepath').AsString, 13, 9) = '000000000' then
                              begin
                                   TreeTemp4 := fTree.Items.AddChildObject(TreeTemp3, FieldByName('txcap').AsString, MyRecPtr);
                              end
                              else
                                   if Copy(FieldByName('treepath').AsString, 16, 6) = '000000' then
                                   begin
                                        TreeTemp5 := fTree.Items.AddChildObject(TreeTemp4, FieldByName('txcap').AsString, MyRecPtr);
                                   end
                                   else
                                        if Copy(FieldByName('treepath').AsString, 19, 3) = '000' then
                                        begin
                                             TreeTemp6 := fTree.Items.AddChildObject(TreeTemp5, FieldByName('txcap').AsString, MyRecPtr);
                                        end
                                        else {//아이템}
                                        begin
                                             fTree.Items.AddChildObject(TreeTemp6, FieldByName('txcap').AsString, MyRecPtr);
                                        end;
               Next;
          end;
     end;
end;

procedure TnurseActing_f.MakeTree;
var
     NewTreeS: TTreeView;
     i: Integer;
     varGroupKind1 : integer;
begin
     Tree1.Align := alClient;
     Tree1.Visible := True;
     //Tree0.AutoExpand := True;
     //1.TxKind에서 kindName이 상담인것의 GroupKind1을 읽어온다.
     //2.
    // varGroupKind1 := loadSangDamKind;
     varGroupKind1 := 1;//
     MakeNode(varGroupKind1 , Tree1, pageControl1.Pages[0].Caption, V_UserId);
     tsFirstTab.Caption := 'Acting';
     //               tsFirstTab.Name := 'UserSheet_' + FieldByName('sortKey').AsString;

         { for i := 1 to pgtxPlan.PageCount - 1 do begin
               NewTreeS := TTreeView.Create(txPlan_f);
               NewTreeS.Parent := pgtxPlan.Pages[i];
               NewTreeS.Name := 'Tree1' + IntToStr(i);
               NewTreeS.Align := alClient;
             //NewTreeS.AutoExpand := True;
               NewTreeS.OnDblClick := Tree1DblClick;
               MakeNode(i, NewTreeS, pgtxPlan.Pages[i].Caption, Main_f.V_UserId);
          end; }
end;



procedure TnurseActing_f.MakeTree2;
var
     NewTreeS: TTreeView;
     i, varGroupKind: Integer;
     FormInit: Tinifile;
     path : string;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'DB.ini';
     FormInit := TIniFile.Create(Path);
     varTreeFontSize := FormInit.ReadInteger('기타정보', 'TREEFONTSIZE', 10);
     FormInit.Free;
     SetLength(varTreeViewArray, pageControl1.PageCount);

     // MakeNode(0, Tree0, pgTxProgress.Pages[0].Caption, dm_f.sawonNo);
     for i := 0 to pageControl1.PageCount - 1 do
     begin

          varGroupKind := pageControl1.Pages[i].Tag;

          NewTreeS := TTreeView.Create(nurseActing_f);


          NewTreeS.Parent := pageControl1.Pages[i];
          NewTreeS.Align := alClient;
          NewTreeS.readonly := true;
          NewTrees.Font.Size := varTreeFontSize;
          NewTreeS.Name := 'Tree0' + IntToStr(i);
          NewTreeS.DragCursor := crDrag;
          NewTreeS.DragMode := dmAutomatic;
          NewTreeS.OnDblClick := Tree1DblClick;
          NewTreeS.OnCustomDrawItem := Tree1CustomDrawItem;
          //MakeNode(i + 1, NewTreeS, pgTxProgress.Pages[i].Caption, dm_f.sawonNo);

          varTreeViewArray[i]:=  NewTreeS;

          MakeNode(varGroupKind, NewTreeS, pageControl1.Pages[i].Caption,
               V_UserID);
     end;

     pageControl1.ActivePageIndex := 0;
end;




procedure TnurseActing_f.pnlCol1Click(Sender: TObject);
begin
     edtTxprg.SelAttributes.Color := (sender as
                TPanel).color;

//     if not grdProgress.InplaceRichEdit.Visible then
//          Exit;
//
//     grdProgress.InplaceRichEdit.SelAttributes.Color := (sender as
//          TPanel).color;

end;

procedure TnurseActing_f.RightBtnClick(Sender: TObject);
begin
//     if grdProgress.InplaceRichEdit.Visible then
//     begin
//          grdProgress.InplaceRichEdit.Paragraph.Alignment :=  taRightJustify;
//     end
//           else
           begin
                edtTxprg.Paragraph.Alignment :=  taRightJustify;
           end;

end;

procedure TnurseActing_f.Timer1Timer(Sender: TObject);
begin
      cbTime.ItemIndex := cbTime.Items.IndexOf(formatDatetime('HH', now)) ;
      cbMin.ItemIndex  := cbMin.Items.IndexOf(formatDatetime('NN', now)) ;
end;

procedure TnurseActing_f.Tree1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
     //  New(MyRecPtr);
          with (Sender as TTreeView).Canvas do
          begin
               font.color := clBlack;
               font.Size := 11;
               brush.color := clwhite;

               if pmyRec(node.Data)^.FFontColor <> '' then
                    Font.Color := stringtocolor(pmyRec(node.Data)^.FFontColor);
               if pmyRec(node.Data)^.FFontBackColor <> '' then
                    Brush.Color := stringtocolor(pmyRec(node.Data)^.FFontBackColor);

          end;
end;

procedure TnurseActing_f.Tree1DblClick(Sender: TObject);
//var
//    i:integer;
//    Node : TTreeNode;
//    nodeCount:integer;
//
//begin
//
//     if (not (Sender as TTreeView).Selected.HasChildren) then
//     begin
//       //   TxPlanInput(grdPlan, Sender);
//     end
//     else
//     if  (((Sender as TTreeView).Selected.HasChildren)
//         and (PMyRec((Sender as TTReeView).Selected.Data)^.FisGroup = true))  then
//     begin
//          nodeCount:=   CountChildNodes((Sender as TTReeView));
//           //그룹이면 그룹명을 추가하자.
//          //TxPlanInput2(grdPlan, PMyRec((Sender as TTReeView).Selected.Data)^.FName);
//
//              Node :=(Sender as TTReeView).Selected.getFirstChild ;
//              Node.Selected := true;
//
//          for i:= 0 to  nodeCount  -1 do
//          begin
//
//            // TxPlanInput(grdPlan, Sender);
//             if i < nodeCount-1 then
//             begin
//                 Node :=(Sender as TTReeView).Selected.getNextSibling;
//                 Node.Selected := true;
//             end;
//          end;
//
//     end;
//
//
//   //  if not (Sender as TTreeView).Selected.HasChildren then
//   //  begin
//   //       TxPlanInput(grdPlan, Sender);
//   //   end;
//
//end;


var
     i: integer;
     varDispNumber: string;
     varSelectedItem: string;
     varSelectedItemHead: string;
     varSelectedItemBody: string;
     varCharttag : string;
     varCharttagOrder : string;
     varEditEnd: integer;
     varSelLength :integer;




begin
//     showmessage((Sender as TTReeView).name);
     if (Sender as TTReeView).Items.Count <= 0 then
          exit;
     if edtTxprg.text <> '' then
          varEditEnd := length(edtTxprg.text) + 1
     else
          varEditEnd := 0;

     //커서가 위치한곳에 이어서 단어를 넣기 위해서
     //현재 커서의 위치를 기억해놓자.

     edtTxprg.SelAttributes.Color := clBlack;

     varSelectedItem := trim(PMyRec((Sender as TTReeView).Selected.Data)^.FName);

     varCharttag:= trim(PMyRec((Sender as TTReeView).Selected.Data)^.FChartTag);

     varCharttagOrder:=  inttostr( lbChartTagList.Items.IndexOf(varCharttag));

     varSelectedItemHead := copy(varSelectedItem, 1, 1);


          if not (Sender as TTReeView).Selected.HasChildren then
          begin
               if PMyRec((Sender as TTReeView).Selected.Data)^.LName = 'Group' then
               begin

                    //그룹kind
               end
               else
               begin
                    // pnlTxprg.Caption := pnlTxprg.Caption + PMyRec((Sender as TTReeView).Selected.Data)^.FName + '+';
                    case rgSelect.itemindex of
                         0:

                              begin

                                   //#$2460
                                  // i:= varCircleDefault+j;//:= 2460;
                                   i := 2460;
                                   varCircleValue :=
                                        Hextointeger(inttostr(i));

                                   if (varSelectedItemHead = '~')
                                        or (varSelectedItemHead
                                        =
                                        '^')
                                        or (varSelectedItemHead
                                        =
                                        '=')
                                        or (varSelectedItemHead
                                        =
                                        '@')
                                        or (varSelectedItemHead
                                        =
                                        '$')
                                        or (varSelectedItemHead
                                        =
                                        '%')
                                        or (varSelectedItemHead
                                        =
                                        '&')
                                        or (varSelectedItemHead
                                        =
                                        '*')
                                        or (varSelectedItemHead
                                        =
                                        '!')
                                        or (varSelectedItemHead
                                        =
                                        '+')
                                        or (varSelectedItemHead
                                        =
                                        '-')
                                        or (varSelectedItemHead
                                        =
                                        '#') then
                                   begin
                                        varSelectedItemBody :=
                                             copy(varSelectedItem, 2,
                                             length(varSelectedItem)
                                             + 1);
                                        varDispNumber := '';

                                   end
                                   else
                                   begin
                                        varDispNumber :=
                                             widechar(varCircleValue
                                             + iCircleNum); //#$65;
                                        iCircleNum := iCircleNum + 1;
                                        i := i + 1;

                                   end;

                                   if CharCircle = '1' then
                                   begin
                                        edtTxprg.Text :=
                                             edtTxprg.Text
                                             +
                                             varDispNumber +
                                             varSelectedItem;
                                   end
                                   else
                                   begin

                                          //Richedit1으로 보내는지 edtTxprg로 보내는지 결정하자.
                                          //if pnlChartMod.visible = false then
                                          //begin


                                                  if PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor <> '' then
                                                       edtTxprg.SelAttributes.Color :=
                                                           stringtoColor(PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor);

                                                  if
                                                       length(trim(edtTxprg.Text)) > 0 then
                                                  begin
                                                       edtTxprg.SelText
                                                            := ' ' +
                                                            varSelectedItem +
                                                            ' ';
                                                  end
                                                  else
                                                  begin
                                                       edtTxprg.SelStart := 0;
                                                       edtTxprg.Text :=
                                                            varSelectedItem;

                                                  end;


                                                  edtTxprg.selStart := varEditEnd;
                                                  varSelLength :=  length(varSelectedItem);

                                                  edtTxprg.SelLength := varSelLength;

                                                  if PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor <> '' then
                                                       edtTxprg.SelAttributes.Color := stringtoColor(PMyRec((Sender as TTReeView).Selected.Data)^.FFontColor);

                                               //   edtTxprg.Perform(EM_LINESCROLL, 100, 100);

                                                  edtTxprg.SelStart :=  varCurrPos + varSelLength +1;
                                                  varCurrPos :=  edtTxprg.SelStart;
                                                   //    length(edtTxprg.text) +
                                                   //    1;


                                                  edtTxprg.setfocus;
                                        //   end

                                   end;
                                   if edtTxprice.text <> '' then
                                        edtTxprice.text :=
                                             edtTxprice.text +
                                             '/' +
                                             displaywon(PMyRec((Sender
                                             as
                                             TTReeView).Selected.Data)^.FPrice)
                                   else
                                        edtTxprice.text :=
                                             displaywon(PMyRec((Sender
                                             as
                                             TTReeView).Selected.Data)^.FPrice);

                              end;
                         1:
                              edtCC.Text := edtCC.Text +
                                   varSelectedItem; // + '+';
                         2:
                              edtTx.Text := edtTx.Text +
                                   varSelectedItem; // + '+';

                    end;


               end;
               //    TeethClass_fr11.ChoiceToothClear;
          end;
     edtCharttag.text:= varCharttag;
     edtCharttagOrder.text:= varCharttagOrder;
end;

procedure TnurseActing_f.MakeTabSheet(UsePageControl: TPageControl);
   procedure FreePagess(aPageControl: TPageControl);
     var
          I: Integer;
     begin
          for I := aPageControl.PageCount - 1 downto 0 do
          begin
               //    aPageControl.AdvPages[i].RemoveComponent(Ttreeview);
               aPageControl.Pages[i].Destroy;
          end;
     end;
var
     NewTabSheet: TTabSheet;
begin
     FreePagess(UsePageControl);

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          //    Sql.Add('select * from groupkind where groupkind2=0 and groupkind3=0 order by sortkey');
          Sql.Add('select * from Txkind ');
          Sql.Add('where groupkind1 = :groupKind1 order by sortkey');
          paramByName('groupKind1').AsString := '2';//Nurse Acting
          Open;
          First;
          if RecordCount > 0 then
          begin
             //  tsFirstTab.Caption := FieldByName('KindName').AsString;
             //  tsFirstTab.Name := 'UserSheet_' + FieldByName('sortKey').AsString;
             //  Next;
               while not eof do
               begin
                    NewTabSheet := TTabSheet.Create(self);
                    NewTabSheet.PageControl := UsePageControl;
                    NewTabSheet.Caption := FieldByName('KindName').AsString;
                    NewTabsheet.Tag := FieldByName('groupkind3').asinteger;
                    NewTabSheet.Name := 'UserSheet_' + FieldByName('sortKey').AsString;
                    Next;
               end;
          end;
     end;
end;




procedure TnurseActing_f.InsertChartRichText(varChartComment: string; chartKind: string = '1'; varKind: string = 'Tx.');
//ChartKind : RichText,
//varKind : Tx.=charting C=Canal P=Perio   Cc.= CC  M.= Memo N) = Next
var
     I: Integer;
     comp_word, sComp, tmpS: string;
     sList: TStringList;
     teethFilename: string;
     strJinDay: string;
     strJinTime: string;
     inOrd: Integer;
     strSQL: string;
     ms: TMemorystream;


     varElectsignedData : widestring;
     varPKCS7SignedData: widestring;
     varSignCert : WideString;
     varTimeStamp  : WideString;

     varChartSseq : string;


begin



     if trim(ma_chart) <> '' then
     begin
          if varChartComment <> '' then
          begin
               comp_word := varChartComment; //edtTxPrg.text;

               ms := TMemoryStream.Create;
               edtTxPrg.Lines.SaveToStream(ms);
               strJinDay  := formatDateTime('yyyy-mm-dd', dtToday.Date);

             //  if cbAutoTime.Checked = false then
               strJinTime := cbtime.Text +':'+cbMin.Text ;
             //  else
             //     strJinTime := cbtime.Text +':'+cbMin.Text

               //저장
               try
                    with Dm_f.SqlWork do
                    begin
                         Close;
                         Sql.Clear;

                         SQL.Text := 'INSERT INTO  ma_chart_s (  ' + #13#10 +
                              '             chart      ' + #13#10 +
                              '             ,jin_day   ' + #13#10 +
                              '             ,jin_time   ' + #13#10 +
                              '             ,code      ' + #13#10 +
                              '             ,descript  ' + #13#10 +
                              '             ,Price  ' + #13#10 +
                              '             ,portion   ' + #13#10 +
                              '             ,nOrd      ' + #13#10 +
                              '             ,Doctor    ' + #13#10 +
                              '             ,Hygine    ' + #13#10 +
                              '             ,modday' + #13#10 +
                              '             ,userPcName' + #13#10 +
                              '             ,userID    ' + #13#10 +
                              '             ,charttag    ' + #13#10 +
                              '             ,charttagOrder    ' + #13#10 +
                              '             ,richtext    ' + #13#10 +
                              '             ,isImage    ' + #13#10 +
                              '             ,etc1    ' + #13#10 +
                              '             ,cKind    ' + #13#10 +
                              '             ,isElastic    ' + #13#10 +
                              '             ,isRich    ' + #13#10 +
                              '  )  VALUES  (          ' + #13#10 +
                              '             :chart      ' + #13#10 +
                              '             ,:jin_day   ' + #13#10 +
                              '             ,:jin_time   ' + #13#10 +
                              '             ,:code      ' + #13#10 +
                              '             ,:descript  ' + #13#10 +
                              '             ,:Price  ' + #13#10 +
                              '             ,:portion   ' + #13#10 +
                              '             ,:nOrd      ' + #13#10 +
                              '             ,:Doctor    ' + #13#10 +
                              '             ,:Hygine    ' + #13#10 +
                              '             ,:modday    ' + #13#10 +
                              '             ,:userPcName    ' + #13#10 +
                              '             ,:userID        ' + #13#10 +
                              '             ,:charttag       ' + #13#10 +
                              '             ,:charttagOrder  ' + #13#10 +
                              '             ,:richtext       ' + #13#10 +
                              '             ,:isImage      ' + #13#10 +
                              '             ,:etc1         ' + #13#10 +
                              '             ,:cKind        ' + #13#10 +
                              '             ,:isElastic    ' + #13#10 +
                              '             ,:isRich    )';

                         paramByName('chart').asString         := ma_chart;
                         paramByName('jin_day').asString       := strJinDay;
                         paramByName('jin_time').asString      := strJinTime;
                         paramByName('code').asString          := varKind;
                         paramByName('descript').AsMemo        := Comp_Word;
                         paramByName('Price').asString         := '0';//edtTxPrice.text;
                         paramByName('portion').asString       := '';//Edit7.text;
                         paramByName('nOrd').asString          := inttoStr(inOrd);
                         paramByName('Doctor').asString        :=  '';//  cbDoc.ColumnItems[cbDoc.itemindex, 2];
                         paramByName('Hygine').asString        := cbDam.text;
                         paramByName('modday').asDateTime      := now;
                         paramByName('userPcName').asString    := '';//SysName;
                         paramByName('userID').asString        := V_UserID;
                         paramByName('charttag').asString      := '';//edtChartTag.text;
                         paramByName('charttagOrder').asString := '';//edtChartTagOrder.text;
                         paramByName('richtext').LoadFromStream(ms, ftBlob);
                         paramByName('isRich').asString := chartKind;
                         paramByName('isImage').asString := '';
                         paramByName('isElastic').asString := '';
                         paramByName('etc1').asString := '';
                         paramByName('cKind').asString := '';
                         ExecSQL;


                        close;
                        sql.clear;
                        sql.text:=' select @@Identity as sid';
                        open;

                        varChartSseq  :=  fieldbyname('sid').asString;   //방금저장한 chart_s    chartseq를 불러온다...

                    end;
               finally

                    ms.Free;
                    //   edtTxPrg.Text := '';
//                    edtTxprice.Text := '';
//                    Edit7.Text := '';
//               end;
          end;

     end;
 end;

end;



procedure TnurseActing_f.ItalBtnClick(Sender: TObject);
begin

//             if grdProgress.InplaceRichEdit.Visible then
//             begin
//                  if fsItalic in grdProgress.InplaceRichEdit.SelAttributes.Style then
//                       grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                            grdProgress.InplaceRichEdit.SelAttributes.Style -
//                            [fsItalic]
//                  else
//                       grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                            grdProgress.InplaceRichEdit.SelAttributes.Style +
//                            [fsItalic]
//             end
//             else
             begin
                  if fsItalic in edtTxprg.SelAttributes.Style then
                       edtTxprg.SelAttributes.Style :=
                            edtTxprg.SelAttributes.Style -
                            [fsItalic]
                  else
                       edtTxprg.SelAttributes.Style :=
                            edtTxprg.SelAttributes.Style +
                            [fsItalic]
             end;
end;

procedure TnurseActing_f.LeftBtnClick(Sender: TObject);
begin
//     if grdProgress.InplaceRichEdit.Visible then
//     begin
//          grdProgress.InplaceRichEdit.Paragraph.Alignment := taLeftJustify;
//     end
//           else
           begin
                edtTxprg.Paragraph.Alignment := taLeftJustify;
           end;


end;

procedure TnurseActing_f.UnderBtnClick(Sender: TObject);
begin
//          if grdProgress.InplaceRichEdit.Visible then
//           begin
//                if fsUnderline in grdProgress.InplaceRichEdit.SelAttributes.Style then
//                     grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                          grdProgress.InplaceRichEdit.SelAttributes.Style -
//                          [fsUnderline]
//                else
//                     grdProgress.InplaceRichEdit.SelAttributes.Style :=
//                          grdProgress.InplaceRichEdit.SelAttributes.Style +
//                          [fsUnderline]
//           end
//           else
           begin
                if fsUnderline in edtTxprg.SelAttributes.Style then
                     edtTxprg.SelAttributes.Style :=
                          edtTxprg.SelAttributes.Style -
                          [fsUnderline]
                else
                     edtTxprg.SelAttributes.Style :=
                          edtTxprg.SelAttributes.Style +
                          [fsUnderline]
           end;

end;

procedure TnurseActing_f.UpdateChartSAdv(varChartSeq: double);
var
     strJinDay: string;
     strJinTime: string;
     ordNo: string;

     varSeq: double;
     varChartKind: string;
     varDay,
          varDescript,
          varDoctor,
          varHygine,
          varFontKind,
          varMx,
          varMd,
          varApp,
          varMachi,
          varXray,
          varNextTx,
          varArch1, varArch2,
          varetc1,
          varcKind: string;
     varRich, varImage: string;
     isRich: boolean;
     ms: TmemoryStream;

      varChartComment :wideString;
     varElectsignedData : widestring;
     varPKCS7SignedData: widestring;
     varSignCert : WideString;
     varTimeStamp  : WideString;

     varChartSseq  : widestring;

      varpassWord : string;

begin

          // configvalue.varPassChartDelete <> '123' then

       if  ( configvalue.varPassChartDelete <> '123')
          and  (configvalue.varPassChartDelete <> '') then
            varpassWord  :=   configvalue.varPassChartDelete
            else
            varpassWord  :=  formatdatetime('dd', now);

         if configvalue.varChartDelete = '1' then
         begin
             if grdProgress.Cells[gridDate, grdProgress.Row] <>
                    formatdatetime('YYYY-MM-DD', now)  then
                    begin



                              //암호를 물어보자.
                              if inputbox('암호를 입력하세요', 'password', '**********') <> varpassWord then
                              begin
                                  showmessage('수정할 수 없습니다. 관리자에게 문의하십시오.');
                                  exit;
                              end;

                    end;
         end;

     if grdProgress.rowcount > 0 then
     begin
          isOnUpdate := true;
          varSeq     := varChartseq;
       //   varDay     := // grdProgress.Cells[gridDate, grdProgress.Row];
       //   strJinTime := // grdProgress.Cells[gridChartTime, grdProgress.Row];
          strJinDay  := formatDateTime('yyyy-mm-dd', dtToday.Date);

             //  if cbAutoTime.Checked = false then
          strJinTime := cbtime.Text +':'+cbMin.Text ;
          grdProgress.CellToRich(gridDescription, grdProgress.Row, edtTxPrg);

          varDescript := edtTxPrg.text;

          varDoctor := grdProgress.Cells[gridDoctor, grdProgress.Row];
          varHygine := grdProgress.Cells[gridHygine, grdProgress.Row];

          varFontKind := grdProgress.Cells[griddesFontName, grdProgress.Row];
          varMx := grdProgress.Cells[gridMx, grdProgress.Row];
          varMd := grdProgress.Cells[gridMd, grdProgress.Row];
          varApp := grdProgress.Cells[gridApp, grdProgress.Row];

          varXray := grdProgress.Cells[gridP1, grdProgress.Row];
          varMachi := grdProgress.Cells[gridP2, grdProgress.Row];

          varNextTx := grdProgress.Cells[gridNext, grdProgress.Row];

          varChartKind := grdProgress.Cells[gridKind, grdProgress.Row];

          varArch1 := grdProgress.Cells[gridarch1, grdProgress.Row];
          varArch2 := grdProgress.Cells[gridarch2, grdProgress.Row];
          varEtc1 := grdProgress.Cells[gridEtc1, grdProgress.Row];

          varcKind := grdProgress.Cells[gridKind, grdProgress.Row];


          if grdProgress.Cells[gridisRich, grdProgress.Row] = '1' then
               isRich := true
          else
               isRich := false;

          varRich := grdProgress.Cells[gridisRich, grdProgress.Row];
          varImage := grdProgress.Cells[gridisImage, grdProgress.Row];

          with Dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('update ma_chart_s Set');
               Sql.Add('descript=:DesCript, Doctor=:Doctor, Hygine=:Hygine,');
               Sql.Add(' fil=:fil, fontKind=:fontKind, Md=:Md, Mx=:Mx, App=:App, nexttx=:nextTx,');
               Sql.Add(' archwire=:archwire,');
               Sql.Add(' archwire2=:archwire2,');
               Sql.Add(' richtext=:richtext,');
               Sql.Add(' isRich=:isRich,');
               Sql.Add(' jin_day=:jin_day,');
               Sql.Add(' jin_time=:jin_time,');
               Sql.Add(' etc1=:etc1,');
               Sql.Add(' cKind=:cKind,');
               Sql.Add(' modDay=:modday');
               Sql.Add(' where Chartseq=:chartseq');
               ParamByName('chartSeq').asFloat := varSeq;
            //   strJinDay := varDay;

               ms := TMemoryStream.Create;
               edtTxPrg.Lines.SaveToStream(ms);

               ParamByName('descript').asString := varDescript;
               ParamByName('richText').LoadFromStream(ms, ftBlob);
               ParamByName('Doctor').value := varDoctor;
               ParamByName('Hygine').value := varHygine;
               if grdProgress.Cells[gridFil, grdProgress.Row] = '1' then
                    ParamByName('fil').value := '1'
               else
                    ParamByName('fil').value := '0';
               ParamByName('FontKind').value := varFontKind;
               ParamByName('Mx').value := varMx;
               ParamByName('Md').value := varMd;
               ParamByName('App').value := varApp;
               ParamByName('nextTx').value := varNextTx;
               ParamByName('archwire').value := varArch1;
               ParamByName('archwire2').value := varArch2;
               ParamByName('etc1').value := varEtc1;
               ParamByName('cKind').value := varcKind;
               ParamByName('isRich').value := '1';
               ParamByName('jin_day').value := strJinDay;
               ParamByName('jin_time').value := strJinTime;
               ParamByName('modDay').value := now;
               ExecSQL;
               isOnUpdate := false;
          end;
          showmessage('수정되었습니다. ');

          //여기서부터는 인증서관련

//                      varChartSseq :=  floatToStr(varSeq );
//                      varChartComment:=
//                                    '|Chart|' + ma_chart
//                                   +'|date|' + strJinDay
//                                   +'|portion|' + varPortion
//                                   +'|charting|' + varDescript
//                                   +'|doctor|' + varDoctor ;
//
//          CertProcess(varChartComment , varChartSSeq );


     end;

end;



procedure TnurseActing_f.selectChartSDataAdv(varChart: string; varScript: string;
     varTeeth: string; varChartKind:string=''); //  multiSort : integer= 0);


     procedure RowMakeVisible(AGrid: TadvStringGrid; ARow: integer);
     var
          iTopRow,
          visRows,
          lastRow : integer;
     begin
          if (ARow > -1) and (ARow < AGrid.RowCount) then
          begin
               iTopRow := AGrid.TopRow;
               visRows := AGrid.VisibleRowCount;
               lastRow := iTopRow +visRows -1;

               if ARow < iTopRow then
                   AGrid.TopRow := ARow
               else
                   if ARow > lastRow then
                      AGrid.TopRow := ARow -visRows + 1;
           end;
     end;

var
     teethFilename: string;
     bstream: Tstream;
     varisRich: boolean;
     varisImage: boolean;
     i, r, reccount: integer;
     varRowHeight: integer;
     varRicheditHeight:integer;
     varDesc:string;

     varPenimage: string;
     varTeethimage: string;

     varXrayImage: string;
     varDescript: string;

     varChartComment : string;

     stime, ftime, itime: integer;
     varQuery: string;

     img: TGIFImage;
  //   elasticPoint : TElasticPoint;

     tempStringList:TStringList;
     varCond : string;
     varKindCap :string;

     multiSort : integer;

begin

     stime := GetTickCount;

     if isOnUpdate = true then
          exit;





     tempStringList:=  TStringList.Create;

     tempStringList.Delimiter := '+'; // 구분자
     tempStringList.DelimitedText := varChartKind; // 나눌 문자
     varCond :='';

     varPenImage := '';
     varXrayImage := '';

     grdprogress.RemoveRows(1, grdprogress.RowCount - 1);

     grdProgress.RowCount := 1;
//     grdProgress.FixedRows:= 3;
     try

          with dm_f.SqlTemp2 do
          begin

               Close;
               SQl.Clear;
               SQL.Add('select count(chart) as aCount from ma_chart_s');
               SQL.Add(' where chart=:Chart and isNotice =''1'' ');
               ParamByName('chart').value := varChart;
               open;
               grdProgress.FixedRows := 1+ dm_f.SqlTemp2.fieldByName('aCount').asInteger;
          end;

          with dm_f.SqlTemp2 do
          begin

               Close;
               SQl.Clear;
               SQL.Add('select * from ma_chart_s');
               SQL.Add(' where chart=:Chart and isNotice =''1'' ');

               SQL.Add(' union ALL ');

               SQL.Add('select * from ma_chart_s');
               SQL.Add(' where chart=:Chart and (isNotice <> ''1'' or isNotice is null) ');
           //    SQL.Add(' where chart=:Chart   ');

               if btnAll.Caption <> 'ALL' then
                    SQL.Add('and jin_Day=:jin_Day ');

               if varScript <> '' then
               begin
                    SQL.Add('and descript like :descript ');
                    ParamByName('descript').value := '%' + varScript + '%';
               end;
//               if cbSch.ValueIndex = 0 then
//               begin
//                    SQL.Add(' and Portion like :Portion ');
//                    ParamByName('Portion').value := '%' + varTeeth + '%';
//               end;
//
//               if cbBohum.Checked = false then
//               begin
//                    SQL.Add(' and code <> ''I.Tx.''  ');
//               end;

//               case multiSort of
//               0: //전체
//                   begin
//                         //
//                   end;
//               1://구분없음
//                   begin
//                              SQL.Add(' and ckind = :ckind  ');
//                              ParamByName('ckind').value := '' ;
//
//                   end;
//               2://chartKind
//                   begin
//
//                      for i:= 0 to tempStringList.Count -1 do
//                       begin
//                           if tempStringList[i]= '구분없음' then
//                                varKindCap := ''
//                           else
//                                varKindCap  :=  tempStringList[i];
//
//                           if varCond = '' then
//                               varCond :=  ' cKind= '+ ''''+varKindCap+''''
//                           else
//                              varCond := varCond +' or '+ 'cKind= '+ ''''+varKindCap+'''' ;
//                       end;
//
//
//                       if trim(varCond) <> '' then
//                           varCond := ' and '+ '('+  varCond  +')';
//
//                        SQL.text := SQL.text + varCond;
//
//                   end;
//               end;




               varQuery := LoadChartDataQuery;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  ' + varQuery);

               end;



//               if Configvalue.varChartListOrder ='1' then
//               begin
//                   SQL.Add(' order by isNotice desc,   [lineNo] desc, jin_day desc , chartseq desc') ;
//               end
//               else
//               begin
//                   SQL.Add(' order by isNotice desc,   [lineNo] desc, jin_day asc , chartseq asc') ;
//               end;
                   SQL.Add(' order by   jin_day asc ,jin_time asc') ;




               ParamByName('chart').value := varChart;
               if btnAll.Caption <> 'ALL' then
                    ParamByName('jin_day').value :=
                         formatDateTime('YYYY-MM-DD', dtToday.date);
               Open;
               //  Last;
               if RecordCount > 0 then
               begin
                    //     first;

                    //imgCnt := 0;
                    recCount := recordCount;

                    grdProgress.beginUpdate;
//                    grdProgress.RemoveRows(1, grdProgress.RowCount -1);
                    grdProgress.RowCount := recCount + 1;

                    for i := 1 to recCount do
                    begin

                   //      application.ProcessMessages;

                         varDescript := FieldByName('descript').AsString;


                        // if configvalue.varDaegiOrder = '1' then

                        if configvalue.varChartListOrder ='1' then
                             grdProgress.cells[gridNo, i] := inttostr(Reccount - i + 1)
                         else
                              grdProgress.cells[gridNo, i] := inttostr(i);



                         grdProgress.Floats[gridChartseq, i] :=   FieldByName('ChartSeq').AsFloat;


                         if grdProgress.ints[gridChartSeq, i] > 0 then
                         begin
                             teethFilename := 'TX' +IntToStr( grdProgress.ints[gridChartSeq, i]); //IntToStr(imgCnt + 1);



                           //  TeethClass_fr11.memo1.clear;

                             if   fieldByName('isElastic').asString = '' then
                             begin
//                                   MakeImage(FieldByName('portion').asString, teethFilename,
//                                     stringToColor(substr(configvalue.varUpperToothColor, 2, ',')),
//                                     stringToColor(substr(configvalue.varLowerToothColor, 2, ',')));
                             end
                             else
                             begin

                                  // TeethClass_fr11.memo1에 데이터를 가져오자.
//                                   loadElasticData( FieldByName('ChartSeq').AsFloat);

                                  //ToDo : Elastic Point를 구하자.

//                                   elasticPoint:=   makeElasticPoint(TeethClass_fr11.memo1);
//
//
//                                  //ToDo : Elastic 이미지를 만들자.
//                                   MakeImage_elastic( TeethClass_fr11.memo1.Lines.Count,
//                                    FieldByName('portion').asString,
//                                    elasticPoint,
//                                     teethFilename,
//                                     stringToColor(substr(configvalue.varUpperToothColor, 2, ',')),
//                                     stringToColor(substr(configvalue.varLowerToothColor, 2, ',')));


                             end;

                             // .memo1.clear를 해줘야 다음에 선택하는것에 반영이 안된다.
                         //    TeethClass_fr11.memo1.clear;

//                             grdProgress.CreatePicture(gridteeth,
//                              i, false, ShrinkWithAspectRatio, 0,
//                              AdvGrid.haLeft,
//                              AdvGrid.vaTop).LoadFromFile(varPath +
//                              teethFilename +
//                              '.BMP'); //치식도 가져오기

                         end
                         else
                             teethFilename := '';



                         //ToDo : 아래 코드는 뭐지?
                      {   if trim(FieldByName('portion').asString) = '' then
                         begin
                              //noStretch,Stretch,StretchWithAspectRatio,Shrink,ShrinkWithAspectRatio
                              varTeethImage :=
                                   LoadTeethImage(grdProgress.Floats[gridChartSeq, i], i);
                              grdProgress.CreatePicture(gridTeeth, i, false,
                                   StretchWithAspectRatio, 0,
                                   AdvGrid.haLeft,
                                   AdvGrid.vaTop).LoadFromFile(varTeethImage);

                         end;
                       }



                         grdProgress.Cells[gridTeethFileName, i] := teethFilename;


                         if FieldByName('isRich').asString = '1' then
                              varisRich := true
                         else
                              varisRich := false;

                         if FieldByName('isImage').asString = '1' then
                              varisImage := true
                         else
                              varisImage := false;

                     //    imgCnt := imgCnt + 1;


                         grdProgress.cells[gridisRich, i] :=   FieldByName('isRich').AsString;
                         grdProgress.cells[gridisImage, i] :=   FieldByName('isImage').AsString;

                         if varisRich = true then
                         begin


                             BStream := CreateBlobStream(FieldByName('richtext'), bmRead);
                              edtTxPrg.Lines.LoadFromStream(bStream);
                              BStream.Free;

                              grdProgress.HideInplaceEdit;
                              grdProgress.RichToCell(gridDescription, i, edtTxPrg);
                              varDesc:=edtTxPrg.Text ;
                              //Ridhedit의 높이를 구하기 위해  GetRichEditHeight을 사용
                             if trim(varDesc) <> ''  then
                             begin
                                varRicheditHeight  := GetRichEditHeight(edtTxPrg)+ 10 ; //==>한줄일때는 27
                             end
                             else
                             begin
                                 varRicheditHeight  := grdProgress.DefaultRowHeight;
                             end;



                             //TODO : 아래 코드를 실행하는데 많은 시간이 걸린다....
                             //어떻게하면 높이를 빨리 조절할 수있을까?
                         //    if  varRicheditHeight > 27 then
                         //    grdProgress.RowHeights[i] :=  varRicheditHeight;


                                //toDo : richedit인 경우 그리드높이를 써놓은 후 resizeRoeheight를 돌려준다.
                              grdProgress.ints[gridRowHeight, i] := varRicheditHeight;


                         end
                         else
                         begin

                              grdProgress.Cells[gridDescription, i] := varDescript;
                              //
                              grdProgress.AutoSizeRow(i, 0);

                              grdProgress.ints[gridRowHeight, i] :=  grdProgress.RowHeights[i] ;


                         end;

                        //높이를 맞추자.

                      //    application.ProcessMessages;
                //          if (grdProgress.cells[gridisImage, i] <>  '1')
                //        and  ( grdProgress.ints[gridRowHeight, i] > 27) then
                //          grdProgress.RowHeights[i]:=  grdProgress.ints[gridRowHeight, i];

                           if (grdProgress.cells[gridisImage, i] <>  '1')
                              and  ( grdProgress.ints[gridRowHeight, i] > 27) then
                                grdProgress.RowHeights[i]:=  grdProgress.ints[gridRowHeight, i];




                        varChartComment:=  trim( selectComment(FieldByName('ChartSeq').AsFloat));
                        if  varChartComment <>  '' then
                                 grdProgress.addcomment(gridDescription, i,  varChartComment)
                          else
                               grdProgress.RemoveComment(gridDescription, i);

//                         if varisImage = true then
//                         begin
//                             try
//                              varPenImage :=
//                                   LoadPenChartImage(grdProgress.Floats[gridChartSeq, i], i);
//
//                                   img:= TGIFImage.Create;
//                                   img.LoadFromFile(varPenImage);
//
//                            //그림의 가로길이를 읽어와서
//                            //description의 크기보다 작거나 같으면 noStretch
//                            //description의 크기보다 크면          StretchWithAspectRatio
//                                   if ( img.Width > grdProgress.ColWidths[gridDescription])
//                                   and ( img.height > 200) then
//                                   begin
//
//                                      grdProgress.CreatePicture(gridDescription, i, false,
//                                          StretchWithAspectRatio, 0,     //noStretch,Stretch,StretchWithAspectRatio,Shrink,ShrinkWithAspectRatio
//                                           AdvGrid.haLeft,
//                                           AdvGrid.vaTop).LoadFromFile(varPenImage);
//
//                                      grdProgress.RowHeights[i] := 200;
//                                   end
//                                   else
//                                   begin
//                                      grdProgress.CreatePicture(gridDescription, i, false,
//                                           noStretch, 0,     //noStretch,Stretch,StretchWithAspectRatio,Shrink,ShrinkWithAspectRatio
//                                           AdvGrid.haLeft,
//                                           AdvGrid.vaTop).LoadFromFile(varPenImage);
//
//                                        grdProgress.RowHeights[i] := img.height;
//                                   end;
//                                   img.Free;
//                           except
//                           end;
//
//
//                         end
//                         else
//                         begin
//                              grdprogress.RemovePicture(gridDescription, i);
//
//                         end;


                         varPenImage := '';

                         grdprogress.CellProperties[gridDate, i].ReadOnly := false;
                         grdprogress.CellProperties[gridTeeth, i].ReadOnly := true;
                         grdprogress.CellProperties[gridImage, i].ReadOnly := true;
                         grdProgress.Cells[gridcode, i] := FieldByName('Code').asString;
                         if (FieldByName('Code').asString = 'C') or
                              (FieldByName('Code').asString = 'P') then
                         begin
                              grdprogress.CellProperties[gridDescription, i].ReadOnly := true;
                         end
                         else
                         begin
                              grdprogress.CellProperties[gridDescription, i].ReadOnly := false;
                         end;
                         grdProgress.Cells[gridDoctor, i] := FieldByName('doctor').asString;
                         grdProgress.Cells[gridHygine, i] := FieldByName('hygine').asString;
                         grdProgress.Cells[gridpath, i] := teethFilename;
                         grdProgress.Cells[gridportion, i] := FieldByName('Portion').asString;
                         grdProgress.Cells[griddesFontName, i] := FieldByName('FontKind').asString;
                         grdProgress.Cells[gridMx, i] := FieldByName('Mx').asString;
                         grdProgress.Cells[gridMd, i] := FieldByName('Md').asString;
                         grdProgress.Cells[gridapp, i] := FieldByName('App').asString;

                         grdProgress.Cells[gridP1, i] := FieldByName('P1').asString;//Xray
                         grdProgress.Cells[gridP2, i] := FieldByName('P2').asString;//마취

                         grdProgress.Cells[gridNext, i] := FieldByName('NextTx').asString;
                         grdProgress.Cells[gridDescript, i] := FieldByName('descript').asString;
                         grdProgress.Cells[gridArch1, i] := FieldByName('archwire').asString;
                         grdProgress.Cells[gridArch2, i] := FieldByName('archwire2').asString;

                         grdProgress.Cells[gridKind, i] := FieldByName('cKind').asString;

                         grdProgress.Cells[gridEtc1, i] := FieldByName('etc1').asString;

                         teethFilename := '';

                         grdProgress.Cells[gridDate, i] := FieldByName('jin_day').asString;

                         grdProgress.Cells[gridChartTag, i] := FieldByName('ChartTag').asString;
                         grdProgress.Cells[gridChartTime, i] := FieldByName('Jin_time').asString;

                          //맨위로 보내기, [공지]로 사용 하면 번호가 들어온다.
                         grdProgress.Cells[gridLineNo, i] := FieldByName('LineNo').asString;
                         grdProgress.Cells[gridisNotice, i] := FieldByName('isNotice').asString;



                         grdProgress.AddCheckBox(gridPrintCheck, i, true, false);

                         grdprogress.RemovePicture(gridDoctor, i);

                       if   FieldByName('signKind').asString = '1' then
                        begin
                             if   LoadChartSignData(FieldByName('ChartSeq').AsFloat,
                                 '1',
                                 image4,
                                 varPath +floatToStr(FieldByName('ChartSeq').AsFloat) + 'sign.bmp')= true then
                             begin

                              grdProgress.CreatePicture(gridDoctor,
                                   i, false, ShrinkWithAspectRatio, 0,
                                   AdvGrid.haLeft,
                                   AdvGrid.vaTop).LoadFromFile(varPath  +floatToStr(FieldByName('ChartSeq').AsFloat) + 'sign.bmp'); //싸인데이터  가져오기
                             end;
                        end
                        else
                        if   FieldByName('signKind').asString = '2' then
                        begin
//                             if   LoadChartSignData_Tablet(FieldByName('ChartSeq').AsFloat,
//                                 '2',
//                                 image4,
//                                 varPath  +floatToStr(FieldByName('ChartSeq').AsFloat) + 'sign.bmp')= true then
//                             begin
//
//                              grdProgress.CreatePicture(gridDoctor,
//                                   i, false, ShrinkWithAspectRatio, 0,
//                                   AdvGrid.haLeft,
//                                   AdvGrid.vaTop).LoadFromFile(varPath  +floatToStr(FieldByName('ChartSeq').AsFloat) + 'sign.bmp'); //싸인데이터  가져오기
//                             end;
                        end;




                         //AutosizeRow는 속도가 늦어도 너~~~무 느리다...   왜?
                         //RichEidt일 경우만 그러는가?

                        //   grdProgress.AutoSizeRow(i, varPadding);
                         Next;

                    end;
                    //AutosizeRow는 속도가 늦어도 너~~~무 느리다...   왜?
                   // grdProgress.AutoSizeRows(false, varPadding);


                // ToDo : mergeColumn이 문제다...획기적인 방법이 없을까?
                //       grdProgress.MergeColumnCells(gridDate, true);

                   grdProgress.endUpdate;

               end;
          end;
     except
          on E: Exception do
          begin
               exceptLogging(E.Message);
               grdProgress.endUpdate;
          end;

     end;

//   if checkBox124.checked =false then
//     resetRowheight;

     if configvalue.varChartListOrder ='1' then
     begin
           if grdProgress.rowcount > 0 then
                grdProgress.Row:=  0;
     end
     else
     begin
      //    grdProgress.Row:=  grdProgress.RowCount-1;
         // grdProgress.ScrollBy( 0, grdProgress.Row);
           if grdProgress.rowcount > 1 then
          grdProgress.Row:= grdProgress.rowcount-1;
         grdProgress.Perform(EM_LINESCROLL,0,grdProgress.Row)
       //   RowMakeVisible(grdProgress, grdProgress.Rowcount-1);//1);
     end;

     tempStringList.Free;
     ftime:= GetTickCount;
     itime := ftime - stime ;
     lblProgresstime.Caption := inttostr(itime) + 'ms';



end;


function TnurseActing_f.selectComment(varChartSeq:double) :string;
begin
     result:='';

     with dm_f.sqlTemp do
     begin
         close;
         sql.Clear;
         sql.Text:= ' select * from ma_chart_remark where chartSeq=:chartSeq' ;
         paramByName('chartSeq').asFloat :=   varChartSeq;
         open;
         if not isEmpty then
         begin
              result:= fieldByName('remark').asString;
         end
         else
         begin
               result:='';
         end;


     end;
end;


procedure TnurseActing_f.CenterBtnClick(Sender: TObject);
begin

//     if grdProgress.InplaceRichEdit.Visible then
//     begin
//          grdProgress.InplaceRichEdit.Paragraph.Alignment :=  TAlignment(taCenter);
//     end
//           else
           begin
                edtTxprg.Paragraph.Alignment :=  TAlignment(taCenter);
           end;

end;

procedure TnurseActing_f.ColorBtnClick(Sender: TObject);
begin

//                if  grdProgress.InplaceRichEdit.Visible = true then
//                begin
//                   ColorDialog1.Color := grdProgress.InplaceRichEdit.SelAttributes.Color;
//
//                   if ColorDialog1.Execute then
//                   begin
//
//
//                         grdProgress.InplaceRichEdit.SelAttributes.Color :=
//                             ColorDialog1.Color;
//                   end;
//               end
//               else
               begin
                   ColorDialog1.Color := edtTxprg.SelAttributes.Color;

                   if ColorDialog1.Execute then
                   begin


                          edtTxprg.SelAttributes.Color :=
                             ColorDialog1.Color;
                   end;

               end;
end;

function TnurseActing_f.CurrText(varRichText: TRichedit): TTextAttributes;
begin
     if varRichText.SelLength > 0 then
          Result := varRichText.SelAttributes
     else
          Result := varRichText.DefAttributes;
end;


procedure TnurseActing_f.edtTxPrgClick(Sender: TObject);
begin
 SetImeInputMode(edtTxPrg.Handle  , imHangul);
end;

procedure TnurseActing_f.edtTxPrgContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

  RichEditPopupMenu(TRichEdit(Sender));
  Handled := true;
end;

procedure TnurseActing_f.edtTxPrgSelectionChange(Sender: TObject);
begin
     BoldBtn.Down   := fsBold in edtTxPrg.SelAttributes.Style;
     ItalBtn.Down   := fsItalic in edtTxPrg.SelAttributes.Style;
     UnderBtn.Down  := fsUnderline in edtTxPrg.SelAttributes.Style;

     LeftBtn.Down   := edtTxPrg.Paragraph.Alignment =  TAlignment(taLeftJustify);   //paLeftJustify, paRightJustify, paCenter, paJustify
     CenterBtn.Down := edtTxPrg.Paragraph.Alignment =  TAlignment(taCenter);
     RightBtn.Down  := edtTxPrg.Paragraph.Alignment =  TAlignment(taRightJustify);

     FontName.ItemIndex :=
          FontName.Items.IndexOf(edtTxPrg.SelAttributes.Name);
     FontSize.ItemIndex :=
          FontSize.Items.IndexOf(IntToStr(edtTxPrg.SelAttributes.Size));


end;

end.


00
01
02
03
04
05
06
07
08
09
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59

