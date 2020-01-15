unit uFontInfoSave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, AdvEdit,
  AdvPanel, Vcl.CheckLst;

type
  TfontInfoSave_f = class(TForm)
    AdvPanel2: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    AdvPanel1: TAdvPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FontName: TComboBox;
    FontSize: TComboBox;
    edtRowHeight: TAdvEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    FixedFontName: TComboBox;
    FixedFontSize: TComboBox;
    edtFixedRowHeight: TAdvEdit;
    clbColumnCheck: TCheckListBox;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function SaveGridFontInf: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fontInfoSave_f: TfontInfoSave_f;

implementation
uses
   uSysinfo, uFunctions, inifiles;

{$R *.dfm}

function  TfontInfoSave_f.SaveGridFontInf: boolean;
var
  path: string;
  FormInit: TIniFile;
  VarChartRule: string;
begin
   result:= false;
  try
     path         := GetConfigDir + 'gridFont.ini';

     FormInit     := TIniFile.Create(path);
     FormInit.WriteString('GRIDINFO',  'FontName'  ,  FontName.Items[FontName.ItemIndex] );
     FormInit.WriteInteger('GRIDINFO', 'FontSize'  ,  strtoint(FontSize.Items[FontSize.ItemIndex]));
     FormInit.WriteInteger('GRIDINFO', 'RowHeight' ,  strtoint(edtRowHeight.Value));


     FormInit.WriteString('GRIDINFO',  'FixedFontName'  ,  FontName.Items[FixedFontName.ItemIndex]);
     FormInit.WriteInteger('GRIDINFO', 'FixedFontSize'  ,  strtoint(FixedFontSize.Items[FixedFontSize.ItemIndex]));
     FormInit.WriteInteger('GRIDINFO', 'FixedRowHeight' ,  strtoint(edtFixedRowHeight.Value));


     FormInit.Free;

     result:= true;
  except

  end;

 end;

procedure TfontInfoSave_f.btnOkClick(Sender: TObject);
begin
   if SaveGridFontInf  = true then
   (sender as TButton).modalResult := mrOK;
end;

procedure TfontInfoSave_f.FormCreate(Sender: TObject);
var
     SysInfo: SystemInfoRecord;
     FormInit: TIniFile;

     DC: HDC;
     cbFontSize, cbFontSize2, cbFontSize3 : string;
begin

     DC := GetDC(0);
     EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
     EnumFonts(DC, nil, @EnumFontsProc, Pointer(FixedFontName.Items));
     ReleaseDC(0, DC);
     FontName.Sorted := True;
     FixedFontName.Sorted := True;

end;

procedure TfontInfoSave_f.FormShow(Sender: TObject);
begin
       caption:='보기 설정';
end;

end.
