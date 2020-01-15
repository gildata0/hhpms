unit toothClass_fr;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, math, Forms,
     Dialogs, StdCtrls, ExtCtrls, AdvPanel, Menus, AdvGlowButton, IniFiles;
type
     TDragCon = record
          Draged: Boolean;
          StartP: Integer;
          EndP: Integer;
          DRect: TRect;
     end;

type
     TTeethClass_fr1 = class(TFrame)
          pnlChoiceTeeth2: TAdvPanel;
          pnlChoiceTeeth: TAdvPanel;
          Tc11: TImage;
          Tc12: TImage;
          Tc13: TImage;
          Tc14: TImage;
          Tc15: TImage;
          Tc21: TImage;
          Tc22: TImage;
          Tc23: TImage;
          Tc24: TImage;
          Tc25: TImage;
          Tc41: TImage;
          Tc42: TImage;
          Tc43: TImage;
          Tc44: TImage;
          Tc45: TImage;
          Tc35: TImage;
          Tc34: TImage;
          Tc33: TImage;
          Tc32: TImage;
          Tc31: TImage;
          Ti18: TImage;
          Ti17: TImage;
          Ti16: TImage;
          Ti15: TImage;
          Ti14: TImage;
          Ti13: TImage;
          Ti12: TImage;
          Ti11: TImage;
          Ti21: TImage;
          Ti22: TImage;
          Ti23: TImage;
          Ti24: TImage;
          Ti25: TImage;
          Ti26: TImage;
          Ti27: TImage;
          Ti28: TImage;
          Ti48: TImage;
          Ti47: TImage;
          Ti46: TImage;
          Ti45: TImage;
          Ti44: TImage;
          Ti43: TImage;
          Ti42: TImage;
          Ti41: TImage;
          Ti31: TImage;
          Ti34: TImage;
          Ti35: TImage;
          Ti36: TImage;
          Ti37: TImage;
          Ti38: TImage;
          Ti33: TImage;
          Ti32: TImage;
          PaintBox1: TPaintBox;
          spSkinPanel1: TAdvPanel;
          imgTeeth2: TImage;
          imgTeeth: TImage;
          btnL: TAdvGlowButton;
          btnLR: TAdvGlowButton;
          btnLA: TAdvGlowButton;
          btnLL: TAdvGlowButton;
          AdvPanel1: TAdvPanel;
          btnUR: TAdvGlowButton;
          btnUA: TAdvGlowButton;
          btnUL: TAdvGlowButton;
          btnU: TAdvGlowButton;
          AdvPanelStyler1: TAdvPanelStyler;
          btnAc: TAdvGlowButton;
          btnPontic: TAdvGlowButton;
          btnUL2: TAdvGlowButton;
          btnMissing: TAdvGlowButton;
          Button1: TButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    cbElastic: TCheckBox;
    AdvGlowButton6: TAdvGlowButton;
          procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
               Y: Integer);
          procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure btnPonticClick(Sender: TObject);
          procedure btnURClick(Sender: TObject);
          procedure btnAcClick(Sender: TObject);
          procedure PaintBox1Paint(Sender: TObject);
          procedure Button1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
     private
          ImgArray: array of TImage;

          nCnt: integer;

          a1, b1, c1: integer;
          a, b, c: Tpoint;
          bitmap: TBitmap;

          varCurx, varCury: integer;
          procedure ChkTImage(Sender: TImage; Flag: Boolean);
          function ChrToNum(f1: string): string;
          function NumToChr(f1: string): string;
          procedure changeTeethStat(varTeeth: string; varTeethStat: integer);
          procedure makeColor(flag: string; varStat: boolean);
          procedure DrawElastic(imgA, imgB, imgC: Timage);
          procedure SetImgArray;
          procedure ChgImg(OrigImg: TImage);
          { Private declarations }
     public
          { Public declarations }
          procedure PreShow;
          procedure ChoiceToothClear;
          function MakePortion(APanel: TadvPanel): widestring;
     end;

implementation
uses uFunctions, uTeeth;
{$R *.dfm}

function findTeethNo(varTeeth: string): integer;
begin
     result := teethList.IndexOf(varteeth);
end;

procedure TTeethClass_fr1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
var
     p: Tpoint;
begin
     if Shift = [ssLeft] then
     begin
          with AMCon do
          begin
               Draged := True;
               with DRect do
               begin
                    Left := 0;
                    Right := 0;
                    Top := 0;
                    Bottom := 0;
               end;
               PaintBox1.Canvas.DrawFocusRect(AMCon.DRect);
               StartP := x;
               EndP := y;
          end;
     end
     else
          if Button = mbRight then
          begin

               with AMCon do
               begin
                    Draged := false;
                    with DRect do
                    begin
                         Left := 0;
                         Right := 0;
                         Top := 0;
                         Bottom := 0;
                    end;
                    PaintBox1.Canvas.DrawFocusRect(AMCon.DRect);
                    StartP := x;
                    EndP := y;
                    varCurX := x;
                    varCurY := y;
               end;
               {  if pnlChoiceTeeth.Floating then begin
                      GetCursorPos(p);
                      PopupMenu3.Popup(p.X, p.Y);
                 end
                 else begin
                      GetCursorPos(p);
                      PopupMenu3.Popup(p.X, p.Y);
                 end;
                 }
          end;

end;


procedure TTeethClass_fr1.ChgImg(OrigImg: TImage);
var
    runDir: string;
begin
    RunDir := ExtractFileDir(application.exename);
    if isClear then
    begin
         ChoiceToothClear;
         isClear := False;
    end;

    if Copy(OrigImg.Name, 2, 1) = 'i' then
    begin
         if OrigImg.Hint = 'X' then
         begin
              OrigImg.Picture.LoadFromFile(RunDir +
                   '/image/tb' + (Copy(OrigImg.Name, 3, 2)
                   +
                   '.bmp'));
              OrigImg.Hint := 'O';

              memo1.Lines.add( Copy(OrigImg.Name, 3, 2));
         end
         else
         begin

              OrigImg.Picture.LoadFromFile(RunDir +
                   '/image/t' + (Copy(OrigImg.Name, 3, 2)
                   +
                   '.bmp'));

              OrigImg.Hint := 'X';

              memo1.Lines.Delete( memo1.Lines.IndexOf(Copy(OrigImg.Name, 3, 2)));

         end;

    end
    else
         if Copy(OrigImg.Name, 2, 1) = 'c' then
         begin
              if OrigImg.Hint = 'X' then
              begin
                   OrigImg.Picture.LoadFromFile(RunDir +
                        '/image/tb' +
                        InttoStr(StrToInt(Copy(OrigImg.Name,
                        3, 1)) +
                        4) + (Copy(OrigImg.Name, 4, 1) +
                        '.bmp'));
                   OrigImg.Hint := 'O';
              end
              else
              begin
                   OrigImg.Picture.LoadFromFile(RunDir +
                        '/image/t' +
                        InttoStr(StrToInt(Copy(OrigImg.Name,
                        3, 1)) +
                        4) + (Copy(OrigImg.Name, 4, 1) +
                        '.bmp'));
                   OrigImg.Hint := 'X';
              end
         end;
end;
procedure TTeethClass_fr1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
     X, Y: Integer);
begin
     if AMCon.Draged then
     begin

          PaintBox1.Canvas.DrawFocusRect(AMCon.DRect);
          with AMcon.DRect do
          begin
               Left := min(AMcon.StartP, x);
               Right := max(AMcon.StartP, x);
               Top := min(AMcon.EndP, y);
               Bottom := max(AMcon.EndP, y);
          end;
          PaintBox1.Canvas.DrawFocusRect(AMCon.DRect);

     end;

end;

procedure TTeethClass_fr1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);


var
     I: Integer;
     AWidth: Integer;
     AHeight: Integer;
     AImg: TImage;
begin
     if AMcon.Draged then
     begin
          AMCon.Draged := False;
          with AMcon.DRect do
          begin
               Left := min(AMcon.StartP, x);
               Right := max(AMcon.StartP, x);
               Top := min(AMcon.EndP, y);
               Bottom := max(AMcon.EndP, y);
          end;
          PaintBox1.Canvas.DrawFocusRect(AMCon.DRect);

          for I := 0 to pnlChoiceTeeth.ControlCount - 1 do
          begin
               if pnlChoiceTeeth.Controls[i] is TImage then
               begin

                    AImg := TImage(pnlChoiceTeeth.Controls[I]);

                    Awidth := Max(abs(AImg.Left + AImg.Width - AMCon.DRect.Left),
                         abs(AImg.Left - AMCon.DRect.Right));

                    AHeight := Max(abs(AImg.Top + AImg.Height - AMCon.DRect.Top),
                         abs(AImg.Top - AMcon.DRect.Bottom));

                    if (AWidth <= ((AMcon.DRect.Right - AMCon.DRect.Left) + (AImg.Width))) and
                         (AHeight <= ((AMCon.DRect.Bottom - AMCon.DRect.Top) + (AImg.Height))) then
                    begin
                         ChgImg(AImg);

                    end;
               end;
          end;
     end;
     varPortion := MakePortion(pnlChoiceTeeth);
     //     memo1.Text := varportion;
end;

procedure TTeethClass_fr1.ChkTImage(Sender: TImage; Flag: Boolean);
var
     runDir: string;
begin
     RunDir := ExtractFileDir(application.exename);

     if Copy((Sender as TImage).Name, 2, 1) = 'i' then
     begin
          if Flag then
          begin
               (Sender as TImage).Picture.LoadFromFile(RunDir +
                    '/image/tb' + (Copy((Sender as TImage).Name,
                    3, 2) +
                    '.bmp'));
               (Sender as TImage).Hint := 'O'
          end
          else
          begin
               (Sender as TImage).Picture.LoadFromFile(RunDir +
                    '/image/t' + (Copy((Sender as TImage).Name,
                    3, 2) +
                    '.bmp'));
               (Sender as TImage).Hint := 'X'
          end;
     end
     else
          if Copy((Sender as TImage).Name, 2, 1) = 'c' then
          begin
               if Flag then
               begin
                    (Sender as TImage).Picture.LoadFromFile(RunDir +
                         '/image/tb' + InttoStr(StrToInt(Copy((Sender
                         as
                         TImage).Name, 3, 1)) + 4) + (Copy((Sender as
                         TImage).Name, 4, 1) + '.bmp'));
                    (Sender as TImage).Hint := 'O'
               end
               else
               begin
                    (Sender as TImage).Picture.LoadFromFile(RunDir +
                         '/image/t' + InttoStr(StrToInt(Copy((Sender
                         as
                         TImage).Name, 3, 1)) + 4) + (Copy((Sender as
                         TImage).Name, 4, 1) + '.bmp'));
                    (Sender as TImage).Hint := 'X'
               end;
          end;

end;

procedure TTeethClass_fr1.SetImgArray;
begin
     setLength(ImgArray, 52);
     ImgArray[0] := Ti11;
     ImgArray[1] := Ti12;
     ImgArray[2] := Ti13;
     ImgArray[3] := Ti14;
     ImgArray[4] := Ti15;
     ImgArray[5] := Ti16;
     ImgArray[6] := Ti17;
     ImgArray[7] := Ti18;
     ImgArray[8] := Ti21;
     ImgArray[9] := Ti22;
     ImgArray[10] := Ti23;
     ImgArray[11] := Ti24;
     ImgArray[12] := Ti25;
     ImgArray[13] := Ti26;
     ImgArray[14] := Ti27;
     ImgArray[15] := Ti28;
     ImgArray[16] := Ti31;
     ImgArray[17] := Ti32;
     ImgArray[18] := Ti33;
     ImgArray[19] := Ti34;
     ImgArray[20] := Ti35;
     ImgArray[21] := Ti36;
     ImgArray[22] := Ti37;
     ImgArray[23] := Ti38;
     ImgArray[24] := Ti41;
     ImgArray[25] := Ti42;
     ImgArray[26] := Ti43;
     ImgArray[27] := Ti44;
     ImgArray[28] := Ti45;
     ImgArray[29] := Ti46;
     ImgArray[30] := Ti47;
     ImgArray[31] := Ti48;
     ImgArray[32] := Tc11;
     ImgArray[33] := Tc12;
     ImgArray[34] := Tc13;
     ImgArray[35] := Tc14;
     ImgArray[36] := Tc15;
     ImgArray[37] := Tc21;
     ImgArray[38] := Tc22;
     ImgArray[39] := Tc23;
     ImgArray[40] := Tc24;
     ImgArray[41] := Tc25;
     ImgArray[42] := Tc31;
     ImgArray[43] := Tc32;
     ImgArray[44] := Tc33;
     ImgArray[45] := Tc34;
     ImgArray[46] := Tc35;
     ImgArray[47] := Tc41;
     ImgArray[48] := Tc42;
     ImgArray[49] := Tc43;
     ImgArray[50] := Tc44;
     ImgArray[51] := Tc45;

end;

procedure TTeethClass_fr1.ChoiceToothClear;
var
     i: integer;
begin
     for i := 0 to 51 do
     begin
          ChkTImage(ImgArray[i], False);
     end;
     varPortion := '';
     memo1.Lines.Clear;
     cbElastic.Checked :=false;
end;

function TTeethClass_fr1.MakePortion(APanel: TadvPanel): widestring;
var
     i: Integer;
     tmp1, tmp2: string;
     tmpCol: string;
     varTeethKind: string;
begin
     Result := '';
     tmp1 := '';
     tmp2 := '';
     tmpcol := '';
     for i := 0 to APanel.ControlCount - 1 do
     begin
          if APanel.Controls[i] is TImage then
               varTeethKind := Copy((APanel.Controls[i] as TImage).Name, 1, 2);

          if ((APanel.Controls[i] is TImage)
               and ((varTeethKind = 'Ti')
               or (varTeethKind = 'Tc'))) then
          begin
               tmp1 := copy((APanel.Controls[i] as TImage).Name, 3, 1);
               tmp2 := copy((APanel.Controls[i] as TImage).Name, 4, 1);
               tmpCol := (APanel.Controls[i] as TImage).Hint;
               if ((tmp1 >= '1') and (tmp1 <= '4')) then
               begin
                    if tmpCol = 'AA' then
                    begin
                         if ((tmp2 = '1')
                              or (tmp2 = '2')
                              or (tmp2 = '3')
                              or (tmp2 = '4')
                              or (tmp2 = '5')
                              or (tmp2 = '6')
                              or (tmp2 = '7')
                              or (tmp2 = '8')) then
                              Result := Result + ',#' + copy((APanel.Controls[i] as TImage).Name, 3, 2) + '001'
                         else
                              Result := Result + ',#' +
                                   IntToStr(StrToInt(copy((APanel.Controls[i] as
                                   TImage).Name, 3, 1)) + 4) +
                                   copy((APanel.Controls[i] as
                                   TImage).Name, 4,
                                   1) + '001';
                    end
                    else
                    if tmpCol = 'PP' then
                    begin
                         if ((tmp2 = '1')
                              or (tmp2 = '2')
                              or (tmp2 = '3')
                              or (tmp2 = '4')
                              or (tmp2 = '5')
                              or (tmp2 = '6')
                              or (tmp2 = '7')
                              or (tmp2 = '8')) then
                              Result := Result + ',#' + copy((APanel.Controls[i] as TImage).Name, 3, 2) + '002'
                         else
                              Result := Result + ',#' +
                                   IntToStr(StrToInt(copy((APanel.Controls[i] as
                                   TImage).Name, 3, 1)) + 4) +
                                   copy((APanel.Controls[i] as
                                   TImage).Name, 4,
                                   1) + '002';
                    end
                    else
                    if tmpCol = 'HH' then
                    begin
                         if ((tmp2 = '1')
                              or (tmp2 = '2')
                              or (tmp2 = '3')
                              or (tmp2 = '4')
                              or (tmp2 = '5')
                              or (tmp2 = '6')
                              or (tmp2 = '7')
                              or (tmp2 = '8')) then
                              Result := Result + ',#' + copy((APanel.Controls[i] as TImage).Name, 3, 2) + '003'
                         else
                              Result := Result + ',#' +
                                   IntToStr(StrToInt(copy((APanel.Controls[i] as
                                   TImage).Name, 3, 1)) + 4) +
                                   copy((APanel.Controls[i] as
                                   TImage).Name, 4,
                                   1) + '003';
                    end
                    else
                    if tmpCol = 'XX' then
                    begin
                         if ((tmp2 = '1')
                              or (tmp2 = '2')
                              or (tmp2 = '3')
                              or (tmp2 = '4')
                              or (tmp2 = '5')
                              or (tmp2 = '6')
                              or (tmp2 = '7')
                              or (tmp2 = '8')) then
                              Result := Result + ',#' + copy((APanel.Controls[i] as TImage).Name, 3, 2) + '004'
                         else
                              Result := Result + ',#' +
                                   IntToStr(StrToInt(copy((APanel.Controls[i] as
                                   TImage).Name, 3, 1)) + 4) +
                                   copy((APanel.Controls[i] as
                                   TImage).Name, 4,
                                   1) + '004';
                    end
                    else
                    if tmpCol = 'SS' then
                    begin
                         if ((tmp2 = '1')
                              or (tmp2 = '2')
                              or (tmp2 = '3')
                              or (tmp2 = '4')
                              or (tmp2 = '5')
                              or (tmp2 = '6')
                              or (tmp2 = '7')
                              or (tmp2 = '8')) then
                              Result := Result + ',#' + copy((APanel.Controls[i] as TImage).Name, 3, 2) + '005'
                         else
                              Result := Result + ',#' +
                                   IntToStr(StrToInt(copy((APanel.Controls[i] as
                                   TImage).Name, 3, 1)) + 4) +
                                   copy((APanel.Controls[i] as
                                   TImage).Name, 4,
                                   1) + '005';
                    end
                    else




                         if not ((varTeethKind = 'Tc') and (tmpCol = 'O')) then
                         begin
                              if (((tmp2 = '1')
                                   or (tmp2 = '2')
                                   or (tmp2 = '3')
                                   or (tmp2 = '4')
                                   or (tmp2 = '5')
                                   or (tmp2 = '6')
                                   or (tmp2 = '7')
                                   or (tmp2 = '8'))
                                   and (tmpCol = 'O')) then
                              begin //영구치
                                   Result := Result + ',#' + copy((APanel.Controls[i] as TImage).Name, 3, 2) + '000';
                              end;
                         end
                         else //유치
                              Result := Result + ',#' +
                                   IntToStr(StrToInt(copy((APanel.Controls[i] as
                                   TImage).Name, 3, 1)) + 4) +
                                   copy((APanel.Controls[i] as
                                   TImage).Name, 4,
                                   1) + '000';
               end;
          end;
     end;
     Result := Copy(Result, 2, 500);
end;

function TTeethClass_fr1.NumToChr(f1: string): string;
begin
     if f1 = '1' then
          Result := 'A'
     else
          if f1 = '2' then
               Result := 'B'
          else
               if f1 = '3' then
                    Result := 'C'
               else
                    if f1 = '4' then
                         Result := 'D'
                    else
                         if f1 = '5' then
                              Result := 'E';
end;

function TTeethClass_fr1.ChrToNum(f1: string): string;
begin
     if f1 = 'A' then
          Result := '1'
     else
          if f1 = 'B' then
               Result := '2'
          else
               if f1 = 'C' then
                    Result := '3'
               else
                    if f1 = 'D' then
                         Result := '4'
                    else
                         if f1 = 'E' then
                              Result := '5';
end;

procedure TTeethClass_fr1.PreShow;
var
     strPath: string;
     strFilFlag: string;
     ChartIni: TIniFile;
begin


     strPath := ExtractFilePath(paramStr(0)) + 'db.ini';
     ChartIni := TIniFile.Create(strPath);

     if ChartIni.ReadString('기타정보', 'selectTeethClear', 'N') = 'Y' then
        checkbox1.checked:=false
     else
        checkbox1.checked:=true;
    ChartIni.Free;



     Bitmap := TBitmap.Create;

     SetImgArray;
     LoadTeethList;

     paintbox1.align := alClient;
     ChoiceToothClear;
     with AMCon do
     begin
          Draged := False;
          with DRect do
          begin
               Left := 0;
               Right := 0;
               Top := 0;
               Bottom := 0;
          end;
     end;

end;

procedure TTeethClass_fr1.changeTeethStat(varTeeth: string; varTeethStat: integer);
     procedure ChgImg(OrigImg: TImage; varTeethStat: integer);
     var
          runDir: string;
     begin
          RunDir := ExtractFileDir(application.exename);

          if isClear then
          begin
               ChoiceToothClear;
               isClear := False;
          end;
          case varTeethStat of
               1:
                    begin
                         OrigImg.Picture.LoadFromFile(RunDir +
                              '/image/A.bmp');
                         OrigImg.Hint := 'AA'
                    end;
          end;
     end;

var
     I: Integer;
     AWidth: Integer;
     AHeight: Integer;
     AImg: TImage;
     szArrString: TArrString;
begin
     { SetLength(szArrString, 1);

      m := ScanString(PChar(varTeeth), szArrString, ',', ',');

      for I := 0 to m - 1 do
      begin
           AImg := TImage(pnlChoiceTeeth.Controls[I]);
           if varTeeth = Aimg.Nmae then
           begin
                ChgImg(AImg, varTeethStat);
           end;

      end;
     }// varPortion := MakePortion(pnlChoiceTeeth);
end;

procedure TTeethClass_fr1.btnPonticClick(Sender: TObject);
begin
     displayTeeth(pnlChoiceTeeth, varPortion, 1);
     varPortion := MakePortion(pnlChoiceTeeth);
     //     memo1.Text:=varportion;
end;

procedure TTeethClass_fr1.makeColor(flag: string; varStat: boolean);
begin
     case strcase(Flag, ['U', 'L', 'U/L', 'UA', 'UL', 'UR', 'LL', 'LA', 'LR']) of
          0:
               begin
                    ChkTImage(Ti11, varStat);
                    ChkTImage(Ti12, varStat);
                    ChkTImage(Ti13, varStat);
                    ChkTImage(Ti14, varStat);
                    ChkTImage(Ti15, varStat);
                    ChkTImage(Ti16, varStat);
                    ChkTImage(Ti17, varStat);

                    ChkTImage(Ti21, varStat);
                    ChkTImage(Ti22, varStat);
                    ChkTImage(Ti23, varStat);
                    ChkTImage(Ti24, varStat);
                    ChkTImage(Ti25, varStat);
                    ChkTImage(Ti26, varStat);
                    ChkTImage(Ti27, varStat);
               end;
          1:
               begin
                    ChkTImage(Ti31, varStat);
                    ChkTImage(Ti32, varStat);
                    ChkTImage(Ti33, varStat);
                    ChkTImage(Ti34, varStat);
                    ChkTImage(Ti35, varStat);
                    ChkTImage(Ti36, varStat);
                    ChkTImage(Ti37, varStat);

                    ChkTImage(Ti41, varStat);
                    ChkTImage(Ti42, varStat);
                    ChkTImage(Ti43, varStat);
                    ChkTImage(Ti44, varStat);
                    ChkTImage(Ti45, varStat);
                    ChkTImage(Ti46, varStat);
                    ChkTImage(Ti47, varStat);
               end;
          2:
               begin
                    ChkTImage(Ti11, varStat);
                    ChkTImage(Ti12, varStat);
                    ChkTImage(Ti13, varStat);
                    ChkTImage(Ti14, varStat);
                    ChkTImage(Ti15, varStat);
                    ChkTImage(Ti16, varStat);
                    ChkTImage(Ti17, varStat);

                    ChkTImage(Ti21, varStat);
                    ChkTImage(Ti22, varStat);
                    ChkTImage(Ti23, varStat);
                    ChkTImage(Ti24, varStat);
                    ChkTImage(Ti25, varStat);
                    ChkTImage(Ti26, varStat);
                    ChkTImage(Ti27, varStat);

                    ChkTImage(Ti31, varStat);
                    ChkTImage(Ti32, varStat);
                    ChkTImage(Ti33, varStat);
                    ChkTImage(Ti34, varStat);
                    ChkTImage(Ti35, varStat);
                    ChkTImage(Ti36, varStat);
                    ChkTImage(Ti37, varStat);

                    ChkTImage(Ti41, varStat);
                    ChkTImage(Ti42, varStat);
                    ChkTImage(Ti43, varStat);
                    ChkTImage(Ti44, varStat);
                    ChkTImage(Ti45, varStat);
                    ChkTImage(Ti46, varStat);
                    ChkTImage(Ti47, varStat);
               end;
          3:
               begin
                    ChkTImage(Ti11, varStat);
                    ChkTImage(Ti12, varStat);
                    ChkTImage(Ti13, varStat);
                    ChkTImage(Ti21, varStat);
                    ChkTImage(Ti22, varStat);
                    ChkTImage(Ti23, varStat);
               end;
          4:
               begin
                    ChkTImage(Ti24, varStat);
                    ChkTImage(Ti25, varStat);
                    ChkTImage(Ti26, varStat);
                    ChkTImage(Ti27, varStat);
               end;
          5:
               begin
                    ChkTImage(Ti14, varStat);
                    ChkTImage(Ti15, varStat);
                    ChkTImage(Ti16, varStat);
                    ChkTImage(Ti17, varStat);
               end;
          6:

               begin
                    ChkTImage(Ti34, varStat);
                    ChkTImage(Ti35, varStat);
                    ChkTImage(Ti36, varStat);
                    ChkTImage(Ti37, varStat);
               end;
          7:
               begin
                    ChkTImage(Ti31, varStat);
                    ChkTImage(Ti32, varStat);
                    ChkTImage(Ti33, varStat);
                    ChkTImage(Ti41, varStat);
                    ChkTImage(Ti42, varStat);
                    ChkTImage(Ti43, varStat);
               end;
          8:
               begin
                    ChkTImage(Ti44, varStat);
                    ChkTImage(Ti45, varStat);
                    ChkTImage(Ti46, varStat);
                    ChkTImage(Ti47, varStat);
               end;
     end;
end;

procedure TTeethClass_fr1.btnURClick(Sender: TObject);
var
     isTrue: boolean;
begin
     if checkBox1.Checked = false then
         ChoiceToothClear;

//todo : 아래를 실행하면 차트입력에서 엔터치면 치아에 포커스가 간다.
//todo : 해제 할때는 그냥 해제버튼을 사용하자...
//     isTrue := (Sender as TadvGlowButton).default;
//     if isTrue = true then
//     begin
          //todo : 버튼을 배열로 만들어서 한번에 .deault를 true/false해야한다.
   //       (Sender as TadvGlowButton).default := false;
//     end
//     else
//     begin
   //       (Sender as TadvGlowButton).default := true;
//     end;






   //  makeColor((Sender as TadvGlowButton).Hint, (Sender as TadvGlowButton).default);

       makeColor((Sender as TadvGlowButton).Hint, true);
     varPortion :=  MakePortion(pnlChoiceTeeth);//(Sender as TadvGlowButton).Hint;

end;

procedure TTeethClass_fr1.btnAcClick(Sender: TObject);
begin
     ChoiceToothClear;

end;



procedure TTeethClass_fr1.PaintBox1Paint(Sender: TObject);
begin
     {     with PaintBox1.Canvas do
          begin
          Refresh;
               Brush.Color := clWhite;
               Brush.Style := bsClear;
               FillRect(ClientRect);
          end;
          {Bitmap := TBitmap.Create;
          with Bitmap do
          begin
               Width := 300;
               Height := 100;

               Canvas.Brush.Color := clBlack;
               Canvas.FillRect(Rect(0, 0, 300, 100));

              // if isMouseDown then
              // begin
                    Canvas.Font.Color := clWhite;
                    Canvas.Font.Size := 20;
                    Canvas.TextOut(30, 30, '글자만 투명한 효과');

                    TransParentColor := clWhite;
                    TransParent := true;
              // end;

          end;
          }
     //     PaintBox1.Canvas.Draw(0, 0, Bitmap);
     //     Bitmap.Free;

     //     Bitmap.Free;
//     DrawElastic(ImgArray[a1], ImgArray[b1], ImgArray[c1]);

end;

procedure TTeethClass_fr1.DrawElastic(imgA, imgB, imgC: Timage);
begin

     //1. 시작점으로 moveto
     //2. 선을 그린다, lineto

     //A.x, A.y
     //B.x  B.y
     //C.x  C.y

     //PaintBox1을 리프레쉬하는 방법 - 이게 최선인가?
//     PaintBox1.Visible := false;
//     PaintBox1.Visible := true;

     with Bitmap do
     begin
          Width := 450;
          Height := 150;

          Canvas.Brush.Color := clWhite; // 색 지정
          // Canvas.Brush.Style := bsClear;
           //Canvas.FillRect(Rect(0, 0, 300, 100));
          Canvas.FillRect(ClientRect); // 지정된 색으로 영역 색칠
          canvas.Pen.Color := clred;
          canvas.Pen.Width := 3;

          a.x := imgA.Left + (imgA.width div 2);
          a.y := imgA.top + (imgA.height div 2);

          b.x := imgB.Left + (imgB.width div 2);
          b.y := imgB.top + (imgB.height div 2);

          c.x := imgC.Left + (imgC.width div 2);
          c.y := imgC.top + (imgC.height div 2);

          Canvas.moveTo(a.X, a.y); // Point A
          Canvas.lineTo(b.X, b.y); // point B
          Canvas.moveTo(a.x, a.y); // Point A
          Canvas.lineto(c.x, c.y); // point C
          Canvas.moveto(b.x, b.y); // point B
          Canvas.lineto(c.x, c.y); // point C
          Canvas.Font.Color := clyellow;
          //     Canvas.Font.Size := 20;
          //     Canvas.TextOut(30, 30, '글자만 투명한 효과');

          TransParentColor := clWhite;
          TransParent := true;
     end;
     PaintBox1.Canvas.Draw(0, 0, Bitmap);

     //     Bitmap.Free;

end;

procedure TTeethClass_fr1.Button1Click(Sender: TObject);
var
     aPoint: array of TPoint;

begin
 {    SetLength(aPoint, 5); // 배열의 크기를 정한다.
     aPoint[0].x := 30; // TPoint에 각각 값을 넣는다.
     aPoint[0].y := 10;
     aPoint[1].x := 10;
     aPoint[1].y := 100;
     aPoint[2].x := 100;
     aPoint[2].y := 100;
     aPoint[3].x := 10;
     aPoint[3].y := 10;
     aPoint[4].x := 70;
     aPoint[4].y := 70;
     aPoint[5].x := 30;
     aPoint[5].y := 10;
     //Canvas.Polygon(aPoint); // Polygon을 그린다.
  }
     with Bitmap do
     begin
          Width := 450;
          Height := 150;

          Canvas.Brush.Color := clWhite; // 색 지정
          // Canvas.Brush.Style := bsClear;
           //Canvas.FillRect(Rect(0, 0, 300, 100));
          Canvas.FillRect(ClientRect); // 지정된 색으로 영역 색칠
          canvas.Pen.Color := clred;
          canvas.Pen.Width := 3;
         // Canvas.Polygon(aPoint); // point C
          Canvas.Polygon([point(0, 0), point(50, 50),   point(50, 0), point(0, 50)]);

          TransParentColor := clWhite;
          TransParent := true;
     end;
     PaintBox1.Canvas.Draw(0, 0, Bitmap);

end;

procedure TTeethClass_fr1.AdvGlowButton1Click(Sender: TObject);
begin
     displayTeeth(pnlChoiceTeeth, varPortion, 2);
     varPortion := MakePortion(pnlChoiceTeeth);

end;

procedure TTeethClass_fr1.AdvGlowButton2Click(Sender: TObject);
begin
     displayTeeth(pnlChoiceTeeth, varPortion, 3);
     varPortion := MakePortion(pnlChoiceTeeth);

end;

procedure TTeethClass_fr1.AdvGlowButton3Click(Sender: TObject);
begin
     displayTeeth(pnlChoiceTeeth, varPortion, 4);
     varPortion := MakePortion(pnlChoiceTeeth);

end;

procedure TTeethClass_fr1.CheckBox1Click(Sender: TObject);
var
     Path: string;
     FormInit: TInifile;
begin
          Path := getConfigdir + 'db.ini';
          FormInit := TIniFile.Create(Path);

          if CheckBox1.Checked = true then
               FormInit.WriteString('기타정보', 'selectTeethClear', 'N')
          else
               FormInit.WriteString('기타정보', 'selectTeethClear', 'Y');

          FormInit.Free;



end;



procedure TTeethClass_fr1.AdvGlowButton6Click(Sender: TObject);
begin
     displayTeeth(pnlChoiceTeeth, varPortion, 5);
     varPortion := MakePortion(pnlChoiceTeeth);

end;

end.

VarImage.Canvas.Font.Name := 'Tahoma';
VarImage.Canvas.Font.Size := 8;
VarImage.Canvas.Font.Color := clred;
VarImage.Canvas.TextOut(0, -1, SS.sP1);
VarImage.Canvas.TextOut(51, -1, SS.sP2);

VarImage.Canvas.Font.Color := clBlue;
VarImage.Canvas.TextOut(0, 11, SS.sP4);
VarImage.Canvas.TextOut(51, 11, SS.sP3);

VarImage.Canvas.Pen.Color := clBlue;

VarImage.Canvas.MoveTo(0, 11);
VarImage.Canvas.LineTo(100, 11);
VarImage.Canvas.MoveTo(49, -1);
VarImage.Canvas.LineTo(49, 25);
VarImage.Picture.SavetoFile(extractFilePath(paramStr(0)) +
     'temp\teethtemp\' + sName + '.bmp');
VarImage.picture := nil;

