unit setting;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, ComCtrls,
     Mask, AdvSpin, JvExStdCtrls, JvCombobox, JvColorCombo, AsgCombo,
     ColorCombo ,
     OleCtrls,  inifiles, AdvEdit;

type
     Tsetting_f = class(TForm)
          Panel1: TPanel;
          Button1: TButton;
          Button2: TButton;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          TabSheet3: TTabSheet;
          Shape1: TShape;
          Shape2: TShape;
          Shape3: TShape;
          Shape4: TShape;
          Shape5: TShape;
          Shape6: TShape;
          Shape7: TShape;
          Shape8: TShape;
          Shape9: TShape;
          Shape10: TShape;
          Shape11: TShape;
          Shape13: TShape;
          Shape12: TShape;
          Shape14: TShape;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          Label8: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label11: TLabel;
          Label13: TLabel;
          Label14: TLabel;
          Label15: TLabel;
          rb1: TRadioButton;
          rb2: TRadioButton;
          rb3: TRadioButton;
          rb4: TRadioButton;
          rb5: TRadioButton;
          rb6: TRadioButton;
          memAdv: TMemo;
          Label16: TLabel;
          Label17: TLabel;
          Label18: TLabel;
          Label19: TLabel;
          Label20: TLabel;
          rgKind: TRadioGroup;
          Label22: TLabel;
          Label23: TLabel;
          Label24: TLabel;
          Label25: TLabel;
          Edit2: TEdit;
          Button4: TButton;
          OpenDialog1: TOpenDialog;
          lbList: TListBox;
          Button5: TButton;
          lblCurrentMediaName: TLabel;
          lblMediaName: TLabel;
          Shape15: TShape;
          Label12: TLabel;
          cb1: TRadioButton;
          cb2: TRadioButton;
    edtWidth: TAdvEdit;
    edtHeight: TAdvEdit;
    mvftColor: TAdvColorComboBox;
    mvColor: TAdvColorComboBox;
    mvftType: TJvFontComboBox;
    mvftSize: TAdvSpinEdit;
    mvSpeed: TAdvSpinEdit;
    mvStep: TAdvSpinEdit;
    AdvEdit2: TAdvEdit;
          procedure FormShow(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure Button4Click(Sender: TObject);
          procedure Button5Click(Sender: TObject);
          procedure rb2Click(Sender: TObject);
          procedure rb1Click(Sender: TObject);
          procedure rb3Click(Sender: TObject);
          procedure rb4Click(Sender: TObject);
          procedure rb5Click(Sender: TObject);
          procedure rb6Click(Sender: TObject);
          procedure cb1Click(Sender: TObject);
          procedure cb2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
     private
             varDaegipath:string;
             varScreenKind:string;
             varScreenwidth:string;
             varScreenheight:string;
             varMonitorKind:string;
             varAdvText:string;
             varAdvFont:string;
             varAdvSize:string;
             varAdvSpeed:string;
             varAdvStep:string;
             varAdvFontColor:string;
             varAdvBackColor:string;
             varDpKind:string;
             varLoadFileName: string;



    { Private declarations }
          procedure saveSet;
          procedure LoadSet;
     public
    { Public declarations }
     end;

var
     setting_f: Tsetting_f;

implementation
uses udm, uLoadValue, umain ;
{$R *.dfm}

procedure Tsetting_f.saveSet;
var
     forminit: Tinifile;
     i: integer;

     f: textfile;
     path, s: string;

begin
     for i := 1 to 6 do
     begin
          if (FindComponent('rb' + IntToStr(i)) as TRadioButton).Checked = True then
          begin
               varScreenKind := inttostr(i);
                end;
     end;





     varScreenwidth := inttostr(edtWidth.intValue);
     varScreenheight := inttostr(edtHeight.intValue);
     for i := 1 to 6 do
     begin
          if (FindComponent('rb' + IntToStr(i)) as TRadioButton).Checked = True then
          begin
               varMonitorKind := inttostr(i);
          end;
     end;
     varAdvText := memAdv.text;
     varAdvFont := mvftType.text;
     varAdvSize := mvftSize.text;
     varAdvSpeed := mvSpeed.text;
     varAdvStep := mvStep.text;
     varAdvFontColor :=colorToString(mvftcolor.SelectedColor);
     varAdvBackColor := colorToString(mvColor.SelectedColor);
     varDpKind := inttostr(rgKind.itemindex);

     case rgKind.itemindex of
          0:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'image.lst';
          1:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'ppt.lst';
          2:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'avi.lst';
          3:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'swf.lst';
     end;
   {  AssignFile(f, varLoadFileName);
     ReWrite(f);
     for i := 0 to lbList.Items.Count - 1 do
     begin
          s := lbList.Items.Strings[i];
          WriteLn(f, s);
     end;
     closefile(f);
    }
     Path := ExtractFilePath(ParamStr(0)) + 'Db.INI';
     FormInit := TIniFile.Create(Path);

     FormInit.WriteString('DAEDI', 'ScreenKind', varScreenKind);
     FormInit.WriteString('DAEDI', 'Screenwidth', varScreenWidth);
     FormInit.WriteString('DAEDI', 'Screenheight', varScreenHeight);
     FormInit.WriteString('DAEDI', 'MonitorKind', varMonitorKind);
     FormInit.WriteString('DAEDI', 'AdvText', varAdvText);
     FormInit.WriteString('DAEDI', 'AdvFont', varAdvFont);
     FormInit.WriteString('DAEDI', 'AdvSize', varAdvSize);
     FormInit.WriteString('DAEDI', 'AdvSpeed', varAdvSpeed);
     FormInit.WriteString('DAEDI', 'AdvStep', varAdvStep);
     FormInit.WriteString('DAEDI', 'AdvFontColor', varAdvFontColor);
     FormInit.WriteString('DAEDI', 'AdvBackColor', varAdvBackColor);
     FormInit.WriteString('DAEDI', 'DpKind', varDpKind);
     FormInit.WriteString('DAEDI', 'DpKind', varDpKind);
     FormInit.ReadString( 'DAEDI', 'LoadFileName', varLoadFileName);

     FormInit.Free;




end;

procedure Tsetting_f.loadSet;
var
     forminit: Tinifile;
     i: integer;

     f: textfile;
     s: string;

begin

//      (FindComponent('rb' + IntToStr(i)) as TRadioButton).Checked = True

    // (FindComponent('rb' + varScreenKind) as TRadioButton).Checked := True;
     dm_f.loadini;

     edtWidth.intvalue := strtoInt(dm_f.configvalue.varScreenwidth);
     edtHeight.intvalue := strtoInt(dm_f.configvalue.varScreenheight);
     (FindComponent('rb' + dm_f.configvalue.varMonitorKind) as TRadioButton).Checked := True;
     memAdv.text := dm_f.configvalue.varAdvText;

     mvftType.ItemIndex := mvftType.Items.IndexOf(dm_f.configvalue.varAdvFont);


     mvftSize.text := dm_f.configvalue.varAdvSize;
     mvSpeed.text := dm_f.configvalue.varAdvSpeed;
//     mvColor.Color    :=

     mvftcolor.SelectedColor  := stringToColor(dm_f.configvalue.varAdvFontColor);
     mvColor.SelectedColor := stringToColor(dm_f.configvalue.varAdvBackColor);
     rgKind.itemindex := strtoint(dm_f.configvalue.varDpKind);

     case rgKind.itemindex of
          0:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'image.lst';
          1:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'ppt.lst';
          2:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'avi.lst';
          3:
               varLoadFileName := ExtractFilePath(ParamStr(0)) + 'swf.lst';
     end;

     if fileexists(dm_f.configvalue.varLoadFileName) then
     begin
          lbList.Items.beginUpdate;
          try
               lbList.Items.Clear;
               AssignFile(f, dm_f.configvalue.varLoadFileName);
               Reset(f);
               while not eof(f) do
               begin
                    ReadLn(f, s);
                    lbList.Items.Add(s);
               end;
          finally
               lbList.Items.endUpdate;
          end;
     end;
end;




procedure Tsetting_f.FormShow(Sender: TObject);
begin
     caption := 'DSV Remote Controler ver1.0';
     height := 450;
     width := 400;
     setbounds((screen.width div 2) - (width div 2), (screen.height div 2) - (height div 2), width, height);
end;

procedure Tsetting_f.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure Tsetting_f.Button2Click(Sender: TObject);
begin
     saveset;

     with main_f.mtAdv do
     begin
          Items.clear;
          Items.add(memadv.Text);
          Font.Name := mvFttype.FontName;
          Font.Size := strtoInt((floattostr(mvFtsize.value)));
          Font.Color := mvftColor.SelectedColor;
          Color := mvColor.SelectedColor;
          Steps :=  mvStep.value; // strtoInt((floattostr(mvSpeed.value))) * 100;
          Speed :=  mvSpeed.value;//strtoInt((floattostr(mvSpeed.value))) * 200;

     end;
end;

procedure Tsetting_f.Button4Click(Sender: TObject);
//var
//     i: integer;
//     Media: IWMPMedia;

begin
    //  파일을 선택시키는
//     if OpenDialog1.Execute then
//     begin
//        //  가장 간단한 추가 방법(다만1파일 한정)
//
//        //player.URL := OpenDialog1.FileName;
//        //  모든 파일에 대해
//          for i := 0 to OpenDialog1.Files.Count - 1 do
//          begin
//
//               try
//                //  플레이 리스트에 추가하기 위한Media오브젝트를 작성하는
//                    Media := main_f.player.mediaCollection.add(OpenDialog1.Files[i]);
//                //  플레이 리스트에 추가하는
//                    main_f.player.currentPlaylist.appendItem(Media);
//                //  조작용의 리스트 박스에도 추가하는
//
//                    lbList.Items.Add(Media.name + '=' + Media.sourceURL);
//               except
//                //  미대응 파일은 무시하는
//                    ;
//               end;
//          end;
//     end;
end;

procedure Tsetting_f.Button5Click(Sender: TObject);
begin
//     if (lbList.ItemIndex = -1) then exit;
//    //  만약을 위해 지금의 미디어를 정지해 두어
//
//     main_f.player.controls.stop;
//    //  확인을 위해서(때문에) 지금의 미디어의 명칭을 표시
//     lblMediaName.Caption := main_f.player.currentMedia.name;
//    //  미디어를 바꾸는
//     main_f.player.controls.currentItem := main_f.player.currentPlaylist.Item[lbList.ItemIndex];
//    //  확인을 위해서(때문에) 지금의 미디어의 명칭을 표시
//     lblCurrentMediaName.Caption := main_f.player.currentMedia.name;
//    //  로 , 재생하는
//
//     main_f.player.controls.play;

end;

procedure Tsetting_f.rb1Click(Sender: TObject);
begin

//     main_f.grdDaegi.visible := true;
//     main_f.grdDaegi.width := 228;
//     main_f.grdDaegi.left := 12;
//     main_f.grdDaegi.top := 12;
//     main_f.grdDaegi.height := 745;
//
////     main_f.pnlPlayer.visible := true;
////     main_f.pnlPlayer.width := 748;
////     main_f.pnlPlayer.height := 664;
////     main_f.pnlPlayer.left := 254;
////     main_f.pnlPlayer.top := 12;
//
//     main_f.pnlMt.visible := true;
//     main_f.pnlMt.width := 748;
//     main_f.pnlMt.height := 71;
//     main_f.pnlMt.left := 253;
//     main_f.pnlMt.top := 685;

end;

procedure Tsetting_f.rb2Click(Sender: TObject);
begin
//     main_f.grdDaegi.visible := true;
//     main_f.grdDaegi.width := 228;
//     main_f.grdDaegi.left := 12;
//     main_f.grdDaegi.top := 12;
//     main_f.grdDaegi.height := 664;
//
////     main_f.Player.DoubleBuffered := true;
////     main_f.pnlPlayer.visible := true;
////     main_f.pnlPlayer.width := 748;
////     main_f.pnlPlayer.height := 664;
////     main_f.pnlPlayer.left := 254;
////     main_f.pnlPlayer.top := 12;
//
//     main_f.pnlMt.visible := true;
//     main_f.pnlMt.width := 748 + 228 + 15;
//     main_f.pnlMt.height := 71;
//     main_f.pnlMt.left := 12;
//     main_f.pnlMt.top := 685;
end;


procedure Tsetting_f.rb3Click(Sender: TObject);
begin
//     main_f.grdDaegi.visible := false;
//     main_f.grdDaegi.width := 228;
//     main_f.grdDaegi.left := 12;
//     main_f.grdDaegi.top := 12;
//     main_f.grdDaegi.height := 664;
//
////     main_f.pnlPlayer.visible := true;
////     main_f.Player.DoubleBuffered := true;
////     main_f.pnlPlayer.width := 748 + 228 + 15;
////     main_f.pnlPlayer.height := 664;
////     main_f.Player.ClientHeight := main_f.pnlPlayer.height;
////     main_f.Player.ClientWidth := main_f.pnlPlayer.Width;
////
////     main_f.Player.Align := alClient;
//
//
////     main_f.pnlPlayer.left := 12;
////     main_f.pnlPlayer.top := 12;
//
//     main_f.pnlMt.visible := true;
//     main_f.pnlMt.width := 748 + 228 + 15;
//     main_f.pnlMt.height := 71;
//     main_f.pnlMt.left := 12;
//     main_f.pnlMt.top := 685;

end;

procedure Tsetting_f.rb4Click(Sender: TObject);
begin
//     main_f.grdDaegi.visible := true;
//     main_f.grdDaegi.width := 748 + 228 + 15;
//     main_f.grdDaegi.left := 12;
//     main_f.grdDaegi.top := 12;
//     main_f.grdDaegi.height := 664;
//
////     main_f.pnlPlayer.visible := false;
////     main_f.pnlPlayer.width := 748 + 228 + 15;
////     main_f.pnlPlayer.height := 630;
////     main_f.pnlPlayer.left := 12;
////     main_f.pnlPlayer.top := 12;
//
//     main_f.pnlMt.visible := true;
//     main_f.pnlMt.width := 748 + 228 + 15;
//     main_f.pnlMt.height := 71;
//     main_f.pnlMt.left := 12;
//     main_f.pnlMt.top := 685;
end;

procedure Tsetting_f.rb5Click(Sender: TObject);
begin
//     main_f.grdDaegi.visible := false;
//     main_f.grdDaegi.width := 748 + 228 + 15;
//     main_f.grdDaegi.left := 12;
//     main_f.grdDaegi.top := 12;
//     main_f.grdDaegi.height := 630;
//
////     main_f.Player.DoubleBuffered := true;
////     main_f.pnlPlayer.visible := true;
////     main_f.pnlPlayer.width := 748 + 228 + 15;
////     main_f.pnlPlayer.height := 630 + 71 + 15 + 34;
////     main_f.Player.width := 748 + 228 + 15;
////     main_f.Player.height := 630 + 71 + 15;
////     main_f.pnlPlayer.left := 12;
////     main_f.pnlPlayer.top := 12;
////     main_f.Player.Align := alClient;
//
//     main_f.pnlMt.visible := false;
//     main_f.pnlMt.width := 748 + 228 + 15;
//     main_f.pnlMt.height := 71;
//     main_f.pnlMt.left := 12;
//     main_f.pnlMt.top := 685;

end;

procedure Tsetting_f.rb6Click(Sender: TObject);
begin
//     main_f.grdDaegi.visible := true;
//     main_f.grdDaegi.width := 748 + 228 + 15;
//     main_f.grdDaegi.left := 12;
//     main_f.grdDaegi.top := 12;
//     main_f.grdDaegi.height := 630 + 71 + 15 + 34;
//
////     main_f.pnlPlayer.visible := false;
////     main_f.pnlPlayer.width := 748 + 228 + 15;
////     main_f.pnlPlayer.height := 630 + 71 + 15;
////     main_f.pnlPlayer.left := 12;
////     main_f.pnlPlayer.top := 12;
//
//     main_f.pnlMt.visible := false;
//     main_f.pnlMt.width := 748 + 228 + 15;
//     main_f.pnlMt.height := 71;
//     main_f.pnlMt.left := 12;
//     main_f.pnlMt.top := 685;

end;

procedure Tsetting_f.cb1Click(Sender: TObject);
begin
     main_f.left := 0;
end;

procedure Tsetting_f.cb2Click(Sender: TObject);
begin
     main_f.left := screen.Width;

end;

procedure Tsetting_f.FormCreate(Sender: TObject);
begin
     lblCurrentMediaName.Visible := false;
     lblMediaName.Visible := false;
     edit2.Clear;
     loadSet;

     pageControl1.Pages[0].TabVisible:=false;
  //   pageControl1.Pages[2].TabVisible := false;


     tabsheet1.Visible := false;
  //   TabSheet3.Visible := false;



end;

end.

