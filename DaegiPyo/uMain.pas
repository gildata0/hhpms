unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, WMPLib_TLB, Vcl.StdCtrls,
  Vcl.FileCtrl, Vcl.ExtCtrls, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, MoveText,
  Vcl.Menus, AdvSmoothSlideShow, AdvUtil;

type
  Tmain_f = class(TForm)
    FileListBox1: TFileListBox;
    grdDaegi: TAdvStringGrid;
    pnlLeft: TPanel;
    pnlMovie: TPanel;
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    pnlMt: TPanel;
    mtAdv: TMoveText;
    Timer2: TTimer;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Setting1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    TrayIcon1: TTrayIcon;
    pnlBody: TPanel;
    AdvSmoothSlideShow1: TAdvSmoothSlideShow;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Setting1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
          SeqNo: integer;
          remoteDaegi : boolean;
    procedure addMovieFiles;
    procedure DaegiSelectData(varDate: string);
    procedure DaegiSelect_doobun(gubun, daegiDate: string);
    procedure AddSlideFiles;
    procedure StartRotation;
    procedure DaegiSelect_dentro(gubun, daegiDate: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_f: Tmain_f;

implementation

{$R *.dfm}

uses uDm, uConst, setting;


procedure Tmain_f.addMovieFiles;
var

    i: integer;
    Media: IWMPMedia;
    fileDir : string;
    filename: string;

begin

    //  파일을 선택시키는


        //  가장 간단한 추가 방법(다만1파일 한정)
        //player.URL := OpenDialog1.FileName;
       //  모든 파일에 대해
        fileDir := extractFilePath(paramStr(0)) + 'videos\*.*';
        FileListBox1.ApplyFilePath(fileDir);

        for i := 0 to fileListBox1.Count -1  do
        begin


            try

               filename:= extractFilePath(paramStr(0)) +'videos\' + fileListBox1.Items[i];

                //  플레이 리스트에 추가하기 위한Media오브젝트를 작성하는
                Media := windowsMediaPlayer1.mediaCollection.add(filename);
                //  플레이 리스트에 추가하는
                windowsMediaPlayer1.currentPlaylist.appendItem(Media);
                //  조작용의 리스트 박스에도 추가하는

//                ListBox1.Items.Add(Media.name + '=' + Media.sourceURL);

            except

                //  미대응 파일은 무시하는

                ;

            end;

        end;



        FileListBox1.Enabled:=false ;

end;


procedure Tmain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //    action:=caFree;
end;

procedure Tmain_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     timer1.Enabled := false;
     timer2.Enabled := false;
 //    pnlLeft.Parent := main_f;
     AdvSmoothSlideShow1.Rotation :=  false;

end;

procedure Tmain_f.FormCreate(Sender: TObject);
var
     sk: integer;
     sc: integer;
begin

     pnlMovie.Caption := '';
     pnlLeft.Caption := '';
     pnlBody.Caption := '';



     sc := Screen.MonitorCount;


     if sc > 1 then
     begin
          width := Screen.Monitors[1].Width;
          height := Screen.Monitors[1].height;
          setbounds(screen.Width, 0, width, height);
     end
     else
     begin
          width := Screen.Monitors[0].Width;
          height := Screen.Monitors[0].height;
          setbounds(0, 0, width, height);
     end;

//     pnlBody.top := (height - 982) div 2 ;
//     pnlBody.left := (width  - 1550) div 2 ;
//     pnlBody.Width := 1550;   //1559
//     pnlBody.height := 982;


      pnlBody.Align := alClient;

      grdDaegi.DefaultRowHeight :=   pnlBody.Height div 10;



     mtAdv.Font.Name := dm_f.configvalue.varAdvfont;
     mtAdv.Font.Size := strToInt(dm_f.configvalue.varAdvSize);
     mtAdv.Font.Color := stringtocolor(dm_f.configvalue.varAdvFontColor);
     mtAdv.Color := stringtocolor(dm_f.configvalue.varAdvBackColor);
     mtAdv.Steps := strtoint(dm_f.configvalue.varadvStep);
     mtAdv.Speed := strtoint(dm_f.configvalue.varadvSpeed);

     mtAdv.Items.Text := dm_f.configvalue.varadvText;

     sk := strtoInt(dm_f.configvalue.vardpKind);

     case Sk of
          0: //그림
               begin
                 //   img.visible := false;
                    AdvSmoothSlideShow1.visible := true;
                    WindowsMediaPlayer1.visible := false;
                  //  web.visible := false;
                  //  swfplayer.visible := false;

                 //   img.Align := alClient;
                    AdvSmoothSlideShow1.Align := alClient;
                    AdvSmoothSlideShow1.Items.Clear;
                    AddSlideFiles;

               end;
          1: //파워포인트
               begin
             //       img.visible := false;
             //       WindowsMediaPlayer1.visible := false;
                  //  web.visible := true;
                  //  swfplayer.visible := false;

            //        web.Align := alClient;
               end;
          2: //동영상
               begin
//                    img.visible := false;
//                    AdvSmoothSlideShow1.visible := false;
                    pnlMovie.Visible := true;
                    pnlMovie.Align := alClient;
                    addMovieFiles;
                    WindowsMediaPlayer1.visible := true;
                    WindowsMediaPlayer1.uiMode := 'none';
                  //  web.visible := false;
                  //  swfplayer.visible := false;

                    WindowsMediaPlayer1.settings.setMode('shuffle', true);
                    WindowsMediaPlayer1.settings.setMode('loop', true);
                    WindowsMediaPlayer1.Controls.play;

                //    windowsMediaPlayer1.URL := '\\Mac\Home\Desktop\치아관리\내 치아를 건강하게 관리하는 방법[1_5].avi';

                    WindowsMediaPlayer1.Align := alClient;
               end;
          3: //플래쉬
               begin
//                    img.visible := false;
//                    WindowsMediaPlayer1.visible := false;
//                    AdvSmoothSlideShow1.visible := false;
                //    web.visible := false;
               //     swfplayer.visible := true;

               //     swfplayer.Align := alClient;
               end;
     end;

   remoteDaegi := false;

   LoadIniData;

end;

procedure Tmain_f.FormDestroy(Sender: TObject);
begin
         main_f := nil;
end;

procedure Tmain_f.FormShow(Sender: TObject);
begin
     DaegiSelectData(formatDateTime('YYYY-MM-DD', now));

end;

procedure Tmain_f.Setting1Click(Sender: TObject);
begin

     if not Assigned(setting_f) then
          setting_f := Tsetting_f.Create(application);
     setting_f.showmodal;
end;
procedure Tmain_f.Timer1Timer(Sender: TObject);
begin


     DaegiSelectData(formatDateTime('YYYY-MM-DD', now));



//     GetPatientInfoJubsu(0);


end;


procedure Tmain_f.Timer2Timer(Sender: TObject);
begin
      if remoteDaegi  then
      begin
   //        pnlTop.Visible := true ;
        //   remoteDaegi := false;

      end
      else
      begin

    //       pnlTop.Visible := false ;
        //   remoteDaegi := false;
           Timer2.Enabled := false;
      end;
end;

procedure Tmain_f.DaegiSelectData(varDate: string);

begin

     Application.ProcessMessages;
     //    grdDaegi.Clear;
       //  daegiSelect('0', '진료대기', 'D', varDate);
{프로그램을 선택하세요.
dentro
hanaro
doobune
andwin
dentweb
ipro
d4sodent
madang

}

//     if ( pKind = 'hanaro')
//        or  ( pKind = 'doobune') then
//     DaegiSelect_doobun('1', varDate);
//     if ( pKind = 'dentro')   then
     DaegiSelect_dentro('0', varDate);

end;



procedure Tmain_f.DaegiSelect_dentro(gubun: string; daegiDate: string);
const
     sqltext2 = '      SELECT   i.chart, i.name, i.team, i.first_day,i.jumin,'+#10+
       '   N.gubun, N.jinstime, N.jinftime, N.sunaptime,'+#10+
       '   N.jin_time, N.jin_day, N.fchart, '+#10+
       '    (SELECT   TOP 1 Chart'+#10+
       '  FROM      ma_promise                   '+#10+
       '  WHERE   (chart = n.chart) AND (pday = :Jin_Day) and (Cancel <> ''Y'') and ( CanCel <> ''R'' ) and ( CanCel <> ''U'' ) and ( CanCel <> ''C'' )) AS dddd  '+#10+
       '  FROM   ma_jubsu  N INNER JOIN '+#10+
       '   ma_gogek_basic i ON i.chart = N.chart'+#10+
       '  WHERE   (N.jin_day = :JIn_Day) '+#10+
       '  and (N.gubun = :Gubun) '+#10+
       '  ORDER BY   gubun asc, nOrder asc ';//
  //     '  ORDER BY dddd desc, N.jin_time ASC         '  ;

var
     chartNo: string;
begin
     Application.ProcessMessages;
     seqNo := 1;
     grdDaegi.Clear;
     //진료대기중인 환자를 들을 보여주고
     with DM_f.SqlWork  do
     begin
          Close;
          Sql.Clear;
          sql.Text := sqltext2;
          ParamByName('gubun').AsString := gubun;
          ParamByName('Jin_Day').AsString := daegiDate;
          Open;
          First;
          if not IsEmpty then
          begin
               Application.ProcessMessages;
               while not EOF do
               begin
                    Application.ProcessMessages;
                  //  AddRow;
                 //   if FieldByName('rsv_dat').AsString = '' then
                 //      grdDaegi.Cells[0, seqNo] := intToStr(seqNo)
                 //   else
                 //      grdDaegi.Cells[0, grdDaegi.RowCount - 1] := '예약';

                    grdDaegi.Cells[0, seqNo-1] := intToStr(seqNo) +'. ' + copy( FieldByName('Name').AsString, 1, length(FieldByName('Name').AsString) -1) +'*' ;
                    seqNo := seqNo + 1;
                    next;
               end;
          end;
     end;

end;





procedure Tmain_f.DaegiSelect_doobun(gubun: string; daegiDate: string);
const
     sqltext = 'select acpt_dat,acpt_seq, pnt_id,  ' + #10#13 +
          '(select pnt_name from tb_hp010 where tb_hp010.pnt_id=tb_ha010.pnt_id) as pnt_name' + #10#13 +
          ', rsv_dat, acpt_div, pnt_newold, insur_div from tb_ha010  ' + #10#13 +
          'where substring(acpt_dat,1,4)+''-''+substring(acpt_dat,5,2)+''-''+substring(acpt_dat,7,2) =:jin_day and acpt_div=:gubun ' + #10#13 +
          'order by  acpt_dat,rsv_dat desc, acpt_seq ';
     sqltext2 = 'select acpt_dat,acpt_seq, pnt_id,  ' + #10#13 +
          '(select pnt_name from tb_patient_info where tb_patient_info.pnt_id=tb_accept.pnt_id) as pnt_name' + #10#13 +
          ', rsv_dat, acpt_div, pnt_newold, insur_div from tb_accept  ' + #10#13 +
          'where substring(acpt_dat,1,4)+''-''+substring(acpt_dat,5,2)+''-''+substring(acpt_dat,7,2) =:jin_day and acpt_div=:gubun ' + #10#13 +
          'order by  acpt_seq , acpt_dat,rsv_dat desc  ';

var
     chartNo: string;
begin
     Application.ProcessMessages;
     seqNo := 1;
     grdDaegi.Clear;
     //진료대기중인 환자를 들을 보여주고
     with DM_f.SqlWork  do
     begin
          Close;
          Sql.Clear;
          sql.Text := sqltext2;
          ParamByName('gubun').AsString := gubun;
          ParamByName('Jin_Day').AsString := daegiDate;
          Open;
          First;
          if not IsEmpty then
          begin
               Application.ProcessMessages;
               while not EOF do
               begin
                    Application.ProcessMessages;
                  //  AddRow;
                 //   if FieldByName('rsv_dat').AsString = '' then
                 //      grdDaegi.Cells[0, seqNo] := intToStr(seqNo)
                 //   else
                 //      grdDaegi.Cells[0, grdDaegi.RowCount - 1] := '예약';

                    grdDaegi.Cells[0, seqNo-1] := intToStr(seqNo) +'. ' + copy( FieldByName('pnt_Name').AsString, 1, length(FieldByName('pnt_Name').AsString) -1) +'*' ;
                    seqNo := seqNo + 1;
                    next;
               end;
          end;
     end;

end;



procedure Tmain_f.Exit1Click(Sender: TObject);
begin
         Close;
end;



procedure Tmain_f.AddSlideFiles;
var
     i: integer;
begin

   with AdvSmoothSlideShow1 do
   begin
         BeginUpdate;
         AddItemsFromFolder('images\*.*', ikImage, true, true, true);

         Transitions := [stPlaceHolder, stFade];

         AspectRatio := false;
         ItemMode := AdvSmoothSlideShow.imNormal;
         Rotation := false;
         // CheckBox5.Checked := true;
         RotationInterval := 5000;
         //  SpinEdit1.Value := 3000;
         //  ComboBox2.ItemIndex := 3;
         FadeAnimationFactor := 0;
         Animations := [saBottomToTop];
         ThumbNails := false;
         LoadEffect := true;
         DescriptionFill.Opacity := 50;

         for I := 0 to  Items.Count - 1 do
         begin
              Items[i].DescriptionFont.Color := clWhite;
         end;

        EndUpdate;
   end;

       StartRotation;

end;



procedure Tmain_f.StartRotation;
begin
     AdvSmoothSlideShow1.Rotation := not AdvSmoothSlideShow1.Rotation;
   //  if AdvSmoothSlideShow1.Rotation then
   //       Button1.Caption := 'Stop Rotation'
   //  else
   //       Button1.Caption := 'Start Rotation';
end;



end.
