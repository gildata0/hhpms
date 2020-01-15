unit uStaticsMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  vcl.styles, vcl.themes, FormSize;

type
  TStatisticsMain_f = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    stylemenu: TMenuItem;
    N27: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N133: TMenuItem;
    N132: TMenuItem;
    N134: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    FormSize1: TFormSize;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
      procedure  StyleClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  StatisticsMain_f: TStatisticsMain_f;

implementation

{$R *.dfm}

uses uCorpHospStat, statTerm, uDailyAmount, uPatientABC, stat_sangbyung,
  uReferImageCount;

procedure TStatisticsMain_f.StyleClick(Sender: TObject);
var
  StyleName: String;
  i: Integer;
begin
  //get style name
  StyleName := StringReplace(TMenuItem(Sender).Caption, '&', '',
    [rfReplaceAll, rfIgnoreCase]);
  //set active style
  TStyleManager.SetStyle(StyleName);
  //check the currently selected menu item
  (Sender as TMenuItem).Checked := true;
  //uncheck all other style menu items
  for I := 0 to stylemenu.Count -1 do begin
    if not stylemenu.Items[i].Equals(Sender) then
      mainmenu1.Items[i].Checked := false;
  end;
end;

procedure TStatisticsMain_f.Button1Click(Sender: TObject);
begin
     if Not Assigned(corpHospStat_f) then
        corpHospStat_f := TcorpHospStat_f.Create(application);
   corpHospStat_f.Show;
end;

procedure TStatisticsMain_f.Button2Click(Sender: TObject);
begin
     if Not Assigned(statTerm_f) then
     statTerm_f := TstatTerm_f.Create(application);
     statTerm_f.Show;
end;

procedure TStatisticsMain_f.Button3Click(Sender: TObject);
begin

   if Not Assigned(DailyAmount_f) then
       DailyAmount_f := TDailyAmount_f.Create(application);
  DailyAmount_f.Show;

end;

procedure TStatisticsMain_f.Button4Click(Sender: TObject);
begin

   if Not Assigned(PatientABC_f) then
       PatientABC_f := TPatientABC_f.Create(application);
  PatientABC_f.Show;

end;

procedure TStatisticsMain_f.Button6Click(Sender: TObject);
begin

   if Not Assigned(stat_sangbyung_f) then
       stat_sangbyung_f := Tstat_sangbyung_f.Create(application);

  stat_sangbyung_f.formstyle:=       fsMDIChild;
  stat_sangbyung_f.Show;

end;

procedure TStatisticsMain_f.Button7Click(Sender: TObject);
begin

   if Not Assigned(ReferImageCount_f) then
       ReferImageCount_f := TReferImageCount_f.Create(application);

  ReferImageCount_f.formstyle:=       fsMDIChild;
  ReferImageCount_f.Show;
end;

procedure TStatisticsMain_f.FormCreate(Sender: TObject);
var
  i: Integer;
var
  Style: String;
  Item: TMenuItem;
begin
  //Add child menu items based on available styles.
  for Style in TStyleManager.StyleNames do
  begin
    Item := TMenuItem.Create(stylemenu);
    Item.Caption := Style;
    Item.OnClick := StyleClick;
    if TStyleManager.ActiveStyle.Name = Style then
      Item.Checked := true;
    StyleMenu.Add(Item);
  end;

      caption := 'HHPMS Statistics';
end;

end.
