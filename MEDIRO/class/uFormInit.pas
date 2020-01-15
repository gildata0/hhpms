unit uFormInit;
interface
uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Vcl.ExtCtrls,  AdvPanel,
     Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
     LMDControl, LMDCustomControl, LMDCustomPanel,
     LMDCustomBevelPanel, LMDCaptionPanel,
     IniFiles,


     Forms, PictureContainer;

var
     aGridFontName       : string;
     aGridFontSize       : integer;
     aGridRowHeight      : integer;
     aGridFixedFontName  : string;
     aGridFixedFontSize  : integer;
     aGridFixedRowHeight : integer;

procedure advGridGetCellBorder(Sender: TObject; ARow,
     ACol: Integer; APen: TPen; var Borders: TCellBorders);

procedure initAdvGrid(aGrid : TAdvStringGrid; aWordWrap : boolean= false);
procedure initPanel(aPanel : TPanel);
procedure initAdvPanel(aPanel : TAdvPanel; pictureContainerA:TpictureContainer; nBorderWidth:integer=1);
procedure initLMDPanel(aPanel : TLMDCaptionPanel; pictureContainerA:TpictureContainer);

procedure  LoadGridColumnOrder(aGrid:TadvstringGrid; formName:string);
procedure  saveGridColumnOrder(aGrid:TadvstringGrid; formName:string);

function loadGridFontInf: boolean;


var
    pnlArray    : array  of TPanel;
    AdvPnlArray  : array  of TAdvPanel;
    LMDPnlArray  : array  of TLmdCaptionPanel;
implementation
//uses Dm, uFunctions;
uses uDm, uFunctions;

function loadGridFontInf: boolean;
var
  path: string;
  FormInit: TIniFile;
  VarChartRule: string;
begin

     path         := GetConfigDir + 'gridFont.ini';

     FormInit     := TIniFile.Create(path);
     aGridFontName       := FormInit.ReadString('GRIDINFO', 'FontName', '¸¼Àº°íµñ');
     aGridFontSize       := FormInit.ReadInteger('GRIDINFO', 'FontSize', 12);
     aGridRowHeight      := FormInit.ReadInteger('GRIDINFO', 'RowHeight', 32);

     aGridFixedFontName  := FormInit.ReadString('GRIDINFO', 'FixedFontName', '¸¼Àº°íµñ');
     aGridFixedFontSize  := FormInit.ReadInteger('GRIDINFO', 'FixedFontSize', 12);
     aGridFixedRowHeight  := FormInit.ReadInteger('GRIDINFO', 'FixedRowHeight', 32);
    // FormInit.WriteInteger('GRIDINFO', 'FixedRowHeight' ,  strtoint(edtFixedRowHeight.Value));


     FormInit.Free;

 end;

procedure advGridGetCellBorder(Sender: TObject; ARow,
     ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
          if (aCol > 0) and (aRow > 0) then
          begin
               Borders := [cbTop];
               APen.Width := 2;
               APen.Color := clSilver; //clGray;
          end;

 end;

//procedure TDaegiFrame_fr.grdDaegiGetCellBorder(Sender: TObject; ARow,
//  ACol: Integer; APen: TPen; var Borders: TCellBorders);

procedure initAdvGrid(aGrid : TAdvStringGrid; aWordWrap : boolean= false);
begin

  loadGridFontInf;

  with aGrid  do
  begin
   try
   //   OnGetCellBorder      := advGridGetCellBorder;
      WordWrap             := aWordWrap;//false;


      VAlignment           := vtaCenter;

      Font.Charset         := DEFAULT_CHARSET ; //HANGEUL_CHARSET ;

      DefaultRowHeight     :=aGridRowHeight;// 30;//32;
      Font.color           := $002e2e2e;
      Font.Name            := aGridFontName;//  '¸¼Àº°íµñ';// 'µ¸¿ò'; //
      Font.Size            := aGridFontSize;//12;
      Font.Style           :=Font.Style- [fsBold];


      FixedRowHeight     := aGridFixedRowHeight;//32;//32;
      FixedFont.color    := $ffffffff;
      FixedFont.Name     := aGridFixedFontName;//'¸¼Àº°íµñ';// 'µ¸¿ò';  //
      FixedFont.Size     := aGridFixedFontSize;//12;
 //     FixedFont.Style    := [fsBold];
      BorderStyle        := bsNone;
      Flat               :=   true;

      FixedFont.Charset  := DEFAULT_CHARSET;//HANGEUL_CHARSET ;
      FixedFont.Color    :=   clWhite;
      BorderColor        :=   $00B99D7F;
      FixedColor         :=   $00FB9B60;
      GradientEndColor   :=   $00FF9B8A;
      GradientStartColor :=   $00FF9B8A;

//      GridFixedLineColor :=   $00FF9B8A;
//      GridLineColor      :=   $00FF9B8A;

      GridFixedLineColor :=   $00FDB88D;//$00FF9B8A;
      GridLineColor      :=   $00FDB88D;//$00FF9B8A;
      SelectionColor     :=   $00B1F5D9; //$0049E7FF;
      SelectionTextColor :=   $002e2e2e;// $00676767
   finally
      Repaint;
      LockUpdate := false;
   end;
  end;
end;

procedure initPanel(aPanel : TPanel);
begin
     with aPanel do
     begin
         caption:='';
         Ctl3D := false;

         BevelInner := bvNone;
         BevelKind  := bkNone;
         BevelOuter := bvNone;

     end;
end;
procedure initAdvPanel(aPanel : TAdvPanel; pictureContainerA:TpictureContainer; nBorderWidth:integer=1);
var
    aName : string;
begin
     aName := aPanel.Name;
     with aPanel do
     begin
       //  caption:='';
       //   Ctl3D := false;
         pictureContainer   := pictureContainerA;

         AlignWithMargins     := true;
         margins.Left         := 0;
         margins.right        := 0;
         margins.top          := 0;
         margins.bottom       := 0;

         BevelInner         := bvNone;
         //BevelKind  := bkNone;
         BevelOuter         := bvNone;
         BorderStyle        := bsNone;

         borderColor        :=   $00F0CAA7;
         BorderWidth        := nBorderWidth;
         Color      :=  $00F9EDE1;//$00EBDAD1;//$00CAA18A;//clWhite; // $00A7A754;//$00E1FFF0;
         ColorTo    :=  $00F9EDE1;//$00EBDAD1;//$00CAA18A;//clWhite;// $00E1FFF0;

         //<FONT face="¸¼Àº °íµñ">±âÃÊ°Ë»çÇ×¸ñ</FONT>
         //<FONT face="¹ÙÅÁ" size="11">
//         caption.Text       := '<img src="'+ aName +'" width="32">'+' '+ caption.Text;
         caption.Text       := '<img src="'+ aName +'" width="18">'+' '
             +'<FONT face="¸¼Àº °íµñ" size="11">' + caption.Text + '</FONT>';
         caption.ShadeType  := stBitMap;
         caption.indent     := 5;
         caption.height     := 29;
         caption.TopIndent  := 5;
         caption.Color      := $00F9EDE1;//$00EBDAD1;//$00CAA18A;//clWhite; // $00A7A754;//$00E1FFF0;
         caption.ColorTo    := $00F9EDE1;//$00EBDAD1;//$00CAA18A;//clWhite;// $00E1FFF0;
 //        caption.Font.name  := 'µ¸¿ò';//'¸¼Àº °íµñ' ;
//         caption.Font.size  := 13;
         caption.Font.color := $005F5C58;
 //        caption.Font.Style := [fsBold];

//         caption.Font.Color := clBlack;//clTeal;//clTeal;

      //   caption.Font.Name := '¸¼Àº °íµñ';
      //   caption.Font.Size := 10;//10;
      //   caption.Font.Style := [fsBold]  ;

     end;


end;

procedure initLMDPanel(aPanel : TLMDCaptionPanel; pictureContainerA:TpictureContainer);
var
    aName : string;
begin
     aName := aPanel.Name;
     with aPanel do
     begin
//         BevelInner         := bvNone;
//         BevelOuter         := bvNone;
//         BorderStyle        := bsNone;
//
//         caption.height     := 29;
//         caption.TopIndent  := 5;
//         caption.Color      := $00F9EDE1;//$00EBDAD1;//$00CAA18A;//clWhite; // $00A7A754;//$00E1FFF0;
//         caption.ColorTo    := $00F9EDE1;//$00EBDAD1;//$00CAA18A;//clWhite;// $00E1FFF0;
//         caption.Font.name  := 'µ¸¿ò';//'¸¼Àº °íµñ' ;
//         caption.Font.size  := 13;
//         caption.Font.color := $005F5C58;
//         caption.Font.Style := [fsBold];

     end;
end;


procedure  saveGridColumnOrder(aGrid:TadvstringGrid; formName:string);
var
  inifile: TInifile;
begin
  inifile := TIniFile.Create('.\gridset\gridset_wait_col.ini');
  inifile.WriteString('SETTINGS'+'_'+formName, aGrid.name, aGrid.ColumnStatesToString);
  inifile.Free;


end;

procedure  LoadGridColumnOrder(aGrid:TadvstringGrid; formName:string);
var
  inifile: TInifile;
  s: string;
begin

  inifile := TIniFile.Create('.\gridset\gridset_wait_col.ini');
  s := inifile.ReadString('SETTINGS'+'_'+formName,  aGrid.name,'');
  inifile.Free;

  if s <> '' then
    aGrid.StringToColumnStates(s);
end;

end.
