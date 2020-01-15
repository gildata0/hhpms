unit main;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, AdvToolBar, AdvToolBarStylers, ImgList,
     AdvAppStyler, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
     AdvOfficeHint, Menus, AdvMenus, AdvMenuStylers, ActnList,
     AdvEdit, advlued, OleCtrls, SHDocVw, ExtDlgs, iniFiles, OleServer,
     AdvTabSet, Grids, BaseGrid, AdvGrid, ExtCtrls,
     AdvPanel, AdvSplitter, System.ImageList, System.Actions, FormSize ;

type
     Tmain_f = class(TForm)
          AdvDockPanel1: TAdvDockPanel;
          AdvToolBar1: TAdvToolBar;
          btnPummok: TAdvToolBarButton;
          btnBaljulist: TAdvToolBarButton;
          btnibgo: TAdvToolBarButton;
          AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
          AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
          AdvOfficeHint1: TAdvOfficeHint;

          AdvToolBar2: TAdvToolBar;
          AdvToolBarMenuButton1: TAdvToolBarMenuButton;
          btnClose: TAdvToolBarButton;
          AdvMainMenu1: TAdvMainMenu;
          mnuBasic: TMenuItem;
          mnuHelp: TMenuItem;
          AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
          AdvFormStyler1: TAdvFormStyler;
          AdvAppStyler1: TAdvAppStyler;
          ActionList1: TActionList;
          pummok: TAction;
          ibgolist: TAction;
          baljulist: TAction;
          ibchu: TAction;
          exit: TAction;
          edtSearch: TAdvLUEdit;
          mnuBackimage: TMenuItem;
          od: TOpenPictureDialog;
          N4: TMenuItem;
          AdvPanelStyler1: TAdvPanelStyler;
          It: TMenuItem;
          ImageList2: TImageList;
          ImageList1: TImageList;
          mnuWindow: TMenuItem;
          btnChulgo: TAdvToolBarButton;
          btnPummokList: TAdvToolBarButton;
          pummokList: TAction;
          mnuMeib: TMenuItem;
          mnuJego: TMenuItem;
          mnuibgo: TMenuItem;
          mnuChulgo: TMenuItem;
          mnuTonggye: TMenuItem;
          mnuJigub: TMenuItem;
          N11: TMenuItem;
          mnuClose: TMenuItem;
          mnuMeibMyungse: TMenuItem;
          mnuMeibWonjang: TMenuItem;
          mnu: TMenuItem;
          N16: TMenuItem;
          N17: TMenuItem;
          N18: TMenuItem;
          N19: TMenuItem;
          N20: TMenuItem;
          N21: TMenuItem;
          N22: TMenuItem;
          N24: TMenuItem;
          N25: TMenuItem;
          N23: TMenuItem;
          N26: TMenuItem;
          N27: TMenuItem;
          ABC1: TMenuItem;
          ABC2: TMenuItem;
          mnuPummok: TMenuItem;
          mnuSawon: TMenuItem;
          N30: TMenuItem;
          N1: TMenuItem;
          N2: TMenuItem;
          N3: TMenuItem;
          N5: TMenuItem;
          N6: TMenuItem;
          N7: TMenuItem;
          mnuUpche: TMenuItem;
          btnChulgoReg: TAdvToolBarButton;
          btnIbgoReg: TAdvToolBarButton;
          ibgo: TAction;
          N8: TMenuItem;
          N9: TMenuItem;
          N10: TMenuItem;
          N12: TMenuItem;
          N13: TMenuItem;
          N14: TMenuItem;
          AdvToolBarSeparator1: TAdvToolBarSeparator;
          AdvToolBarSeparator2: TAdvToolBarSeparator;
          AdvToolBarSeparator3: TAdvToolBarSeparator;
          chulgo: TAction;
          chulgoList: TAction;
          sawon: TAction;
          ibchuList: TAction;
          basicinfo: TAction;
          jego: TAction;
          AdvToolBarSeparator4: TAdvToolBarSeparator;
          N15: TMenuItem;
          Gh: TMenuItem;
          Jw: TMenuItem;
          btnBalju: TAdvToolBarButton;
    actbalju: TAction;
    N28: TMenuItem;
    N29: TMenuItem;
    N31: TMenuItem;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    N32: TMenuItem;
    N33: TMenuItem;
    AdvToolBarButton1: TAdvToolBarButton;
    Cloudbackup: TAction;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    FormSize1: TFormSize;
          procedure FormShow(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure exitExecute(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure mnuBackimageClick(Sender: TObject);
          procedure pummokExecute(Sender: TObject);
          procedure ibgolistExecute(Sender: TObject);
          procedure itClick(Sender: TObject);
          procedure pummokListExecute(Sender: TObject);
          procedure mnuCloseClick(Sender: TObject);
          procedure ibgoExecute(Sender: TObject);
          procedure chulgoExecute(Sender: TObject);
          procedure sawonExecute(Sender: TObject);
          procedure ibchuExecute(Sender: TObject);
          procedure ibchuListExecute(Sender: TObject);
          procedure basicinfoExecute(Sender: TObject);
          procedure chulgoListExecute(Sender: TObject);
          procedure jegoExecute(Sender: TObject);
    procedure actbaljuExecute(Sender: TObject);
    procedure baljulistExecute(Sender: TObject);
     private
          { Private declarations }
          procedure ButtonClick(FName: TForm; FClass: TFormClass);
          procedure LogWrite(varID: string; varName: string; varNumber: string; varContent: string);
     public
          { Public declarations }

     end;

var
     main_f: Tmain_f;
     FormExist: boolean;
implementation

uses dm, uFunctions, uJegoSet, pummokReg, ibgo, ibchuList, BasicCode, BasicInfo,
     pummokList, ibgolist, ibchuReg, chulgoReg, chulgoList, sawon, jego,
     baljureg, chulgoMain, baljulist;

{$R *.dfm}

procedure Tmain_f.LogWrite(varID: string; varName: string; varNumber: string; varContent: string);
var
     stFileText: TStringList;
     sFilePath: string;
     sFileName: string;
     varSendTime: string;
begin

     sFilePath := ExtractFilePath(paramStr(0)) + 'SmsLog';
     sFileName := sFilePath + '\SMS' + formatDateTime('YYYYMMDD', now) + '.Log';
     stFileText := TStringList.Create;
     varSendTime := formatDateTime('YYYYMMDDHHMMSS', now);

     if not DirectoryExists(sFilePath) then
     begin
          if not CreateDir(sFilePath) then
               raise Exception.Create('Cannot create' + sFilePath);

     end;

     if FileExists(sFileName) then
     begin
          stFileText.LoadFromFile(sFileName);
          stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName + ')' + varNumber + ':' + varContent);
          stFileText.SaveToFile(sFileName);
     end
     else
     begin
          stFileText.Insert(0, varSendTime + '>>' + varID + '(' + varName + ')' + varNumber + ':' + varContent);
          stFileText.SaveToFile(sFileName);
     end;
end;

procedure Tmain_f.ButtonClick(FName: TForm; FClass: TFormClass);
var
     i: word;
begin
     FormExist := False;
     for i := 0 to MDIChildCount - 1 do
     begin
          if MDIChildCount = 0 then Break;
          if MDIChildren[i] is FClass then
          begin
               FormExist := True;
               BREAK;
          end;
     end;

     if FormExist then
     begin
          MDIChildren[i].Show;
     end
     else
     begin
          FName := FClass.Create(self);
          FName.Show;
     end;

end;

procedure Tmain_f.FormShow(Sender: TObject);
begin
     caption := 'Healthhub ＆ Human Medical center Material Management System';
     edtSearch.text := '';
     width:=screen.Width;
     height:=screen.Height;

     AdvOfficeStatusBar1.Panels[1].text:= 'Ver. '+ GetExeVersion(paramstr(0)) ;//


     tableAlter;

end;

procedure Tmain_f.FormDestroy(Sender: TObject);
begin
     main_f := nil;
end;

procedure Tmain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

{procedure Tmain_f.studExecute(Sender: TObject);
begin
     ButtonClick(student_f, Tstudent_f);
     //폼이 생성된것을 인식하지 못하네...   왜그럴까?
end;
}

procedure Tmain_f.exitExecute(Sender: TObject);
begin
     close;
end;

procedure Tmain_f.FormCreate(Sender: TObject);
var
     path, varWallpaper: string;
     FormInit: TIniFile;
begin
     Path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
     FormInit := TIniFile.Create(Path);
     varWallpaper := FormInit.ReadString('WALLPAPER', 'picrure', '');
     FormInit.Free;

     //   if varWallpaper <> '' then
     //        wallpaper.Bitmap.LoadFromFile(varWallpaper);

end;

procedure Tmain_f.mnuBackimageClick(Sender: TObject);
var
     path, varWallpaper: string;
     FormInit: TIniFile;
begin
     {     Path := ExtractFilePath(ParamStr(0)) + 'pess.ini';
          FormInit := TIniFile.Create(Path);
          if od.Execute then
          begin
               wallpaper.Bitmap.LoadFromFile(od.FileName);
               wallpaper.Bitmap.Canvas.Refresh;
               main_f.Refresh;
               FormInit.WriteString('WALLPAPER', 'picrure', od.FileName);

          end;
          FormInit.Free;
          }
end;

procedure Tmain_f.pummokExecute(Sender: TObject);
begin
     if not Assigned(pummokReg_f) then
          pummokReg_f := TpummokReg_f.Create(application);
     pummokReg_f.show;

end;

procedure Tmain_f.ibgolistExecute(Sender: TObject);
var
     i: word;
begin
     FormExist := False;
     for i := 0 to MDIChildCount - 1 do
     begin
          if MDIChildCount = 0 then Break;
          if MDIChildren[i] is Tibgolist_f then
          begin
               FormExist := True;
               BREAK;
          end;
     end;

     if FormExist then
     begin
          MDIChildren[i].Show;
     end
     else
     begin
          ibgolist_f := Tibgolist_f.Create(Application);
          ibgolist_f.Show;
     end;

end;

procedure Tmain_f.itClick(Sender: TObject);
begin
     if not Assigned(BasicCode_f) then
          BasicCode_f := TBasicCode_f.Create(application);
     BasicCode_f.edtYoyul.Visible := false;
     BasicCode_f.lblYoyul.Visible := false;

     if (Sender as TMenuItem).Name = 'It' then
     begin
          BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
          BasicCode_f.LblKind.Caption := 'IpgoType';
     end
     else
          if (Sender as TMenuItem).Name = 'Bt' then
          begin
               BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
               BasicCode_f.LblKind.Caption := 'BaljuType';
          end
          else
               if (Sender as TMenuItem).Name = 'Ut' then
               begin
                    BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                    BasicCode_f.LblKind.Caption := 'UpcheType';
               end
               else
                    if (Sender as TMenuItem).Name = 'Lc' then
                    begin
                         BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                         BasicCode_f.LblKind.Caption := 'LocType';
                    end
                    else
                         if (Sender as TMenuItem).Name = 'Bk' then
                         begin
                              BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                              BasicCode_f.LblKind.Caption := 'BankType';
                         end
                         else
                              if (Sender as TMenuItem).Name = 'Cd' then
                              begin
                                   BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                   BasicCode_f.LblKind.Caption := 'CardType';
                                   BasicCode_f.edtYoyul.Visible := true;
                                   BasicCode_f.lblYoyul.Visible := true;
                              end
                              else
                                   if (Sender as TMenuItem).Name = 'Bl' then
                                   begin
                                        BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                        BasicCode_f.LblKind.Caption := 'Bunlarge';
                                   end
                                   else
                                        if (Sender as TMenuItem).Name = 'Bm' then
                                        begin
                                             BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                             BasicCode_f.LblKind.Caption := 'BunMiddle';
                                        end
                                        else
                                             if (Sender as TMenuItem).Name = 'Bs' then
                                             begin
                                                  BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                  BasicCode_f.LblKind.Caption := 'BunSmall';
                                             end

                                             else
                                                  if (Sender as TMenuItem).Name = 'Busu' then
                                                  begin
                                                       BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                       BasicCode_f.LblKind.Caption := 'Busu';
                                                  end
                                                  else
                                                       if (Sender as TMenuItem).Name = 'Cb' then
                                                       begin
                                                            BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                            BasicCode_f.LblKind.Caption := 'Chubun';
                                                       end
                                                       else
                                                            if (Sender as TMenuItem).Name = 'Sf' then
                                                            begin
                                                                 BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                                 BasicCode_f.LblKind.Caption := 'SangGakFinish';
                                                            end
                                                            else
                                                                 if (Sender as TMenuItem).Name = 'Sm' then
                                                                 begin
                                                                      BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                                      BasicCode_f.LblKind.Caption := 'SangGakMethod';
                                                                 end
                                                                 else
                                                                      if (Sender as TMenuItem).Name = 'Br' then
                                                                      begin
                                                                           BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                                           BasicCode_f.LblKind.Caption := 'Brand';
                                                                           BasicCode_f.Label3.Caption := '거래처';

                                                                      end
                                                                      else
                                                                           if (Sender as TMenuItem).Name = 'Gj' then
                                                                           begin
                                                                                BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                                                BasicCode_f.LblKind.Caption := 'GyeJung';
                                                                           end
                                                                           else
                                                                                if (Sender as TMenuItem).Name = 'Gh' then
                                                                                begin
                                                                                     BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                                                     BasicCode_f.LblKind.Caption := 'GwonHan';
                                                                                end
                                                                                else
                                                                                     if (Sender as TMenuItem).Name = 'Jw' then
                                                                                     begin
                                                                                          BasicCode_f.LblSub.Caption := (Sender as TMenuItem).Caption;
                                                                                          BasicCode_f.LblKind.Caption := 'JikWi';
                                                                                     end;

     BasicCode_f.Show;

end;

procedure Tmain_f.pummokListExecute(Sender: TObject);
var
     i: word;
begin
     FormExist := False;
     for i := 0 to MDIChildCount - 1 do
     begin
          if MDIChildCount = 0 then Break;
          if MDIChildren[i] is Tpummoklist_f then
          begin
               FormExist := True;
               BREAK;
          end;
     end;

     if FormExist then
     begin
          MDIChildren[i].Show;
     end
     else
     begin
          pummoklist_f := Tpummoklist_f.Create(Application);
          pummoklist_f.Show;
     end;

end;

procedure Tmain_f.mnuCloseClick(Sender: TObject);
begin
     close;
end;

procedure Tmain_f.ibgoExecute(Sender: TObject);
begin
     if not Assigned(ibgo_f) then
          ibgo_f := Tibgo_f.Create(application);
     ibgo_f.InsFlag := true;
     ibgo_f.show;

end;

procedure Tmain_f.chulgoExecute(Sender: TObject);
begin
     {     if not Assigned(chulgoReg_f) then
               chulgoReg_f := TchulgoReg_f.Create(application);
          chulgoReg_f.show;
     }
     if not Assigned(chulgoMain_f) then
          chulgoMain_f := TchulgoMain_f.Create(application);
     chulgoMain_f.show;

end;

procedure Tmain_f.sawonExecute(Sender: TObject);
begin
     if not Assigned(sawon_f) then
          sawon_f := Tsawon_f.Create(application);
     sawon_f.show;

end;

procedure Tmain_f.ibchuExecute(Sender: TObject);
begin
     if not Assigned(ibchuReg_f) then
          ibchuReg_f := TibchuReg_f.Create(application);
     ibchuReg_f.newset;
     
     ibchuReg_f.show;

end;

procedure Tmain_f.ibchuListExecute(Sender: TObject);
begin
     if not Assigned(ibchuList_f) then
          ibchuList_f := TibchuList_f.Create(application);
     ibchuList_f.show;

end;

procedure Tmain_f.basicinfoExecute(Sender: TObject);
begin
     if not Assigned(basicinfo_f) then
          basicinfo_f := Tbasicinfo_f.Create(application);
     basicinfo_f.Showmodal();

end;

procedure Tmain_f.chulgoListExecute(Sender: TObject);
begin
     if not Assigned(chulgoList_f) then
          chulgoList_f := TchulgoList_f.Create(application);
     chulgoList_f.show;

end;

procedure Tmain_f.jegoExecute(Sender: TObject);
begin
     if not Assigned(jego_f) then
          jego_f := Tjego_f.Create(application);
     jego_f.show;

end;

procedure Tmain_f.actbaljuExecute(Sender: TObject);
begin
     if not Assigned(baljureg_f) then
          baljureg_f := Tbaljureg_f.Create(application);
       baljureg_f.show;


end;

procedure Tmain_f.baljulistExecute(Sender: TObject);
begin
     if not Assigned(baljuList_f) then
          baljuList_f := TbaljuList_f.Create(application);
       baljuList_f.show;


end;

end.

