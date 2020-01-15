unit uTeeth;

interface
uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms,
     Dialogs, ShellAPI,
     ComCtrls,
     StdCtrls,
     Math,
     mmSystem, ExtCtrls, Registry,
     Maskutils, strutils, Mask, ShlObj, ActiveX, ShFolder,
     IdComponent, IdTCPConnection, IdTCPClient, IdBaseComponent,
     inifiles, db,
     AdvProgressBar, AdvPanel;

type
     TElasticPoint = ^TElasticRec;
     TElasticRec = array[0..1000] of record
          elasticPoint : TPoint;

      end;

type
     TIconImage = class(TImage)
          constructor Create(AOwner: TComponent); override;
          procedure SettMouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure SettMouseMove(Sender: TObject; Shift: TShiftState; X,
               Y: Integer);
          procedure SettMouseUp(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
     private
          Moving: Boolean;
          Resizing: Boolean;
          MvX, MvY: integer;
     public
          OrigLeft: integer;
          OrigTop: integer;
          isView: boolean;
     end;

type
     TDragCon = record
          Draged: Boolean;
          StartP: Integer;
          EndP: Integer;
          DRect: TRect;

     end;

type
     PMyRec = ^TMyRec;
     TMyRec = record
          FName: string;
          LName: string;
          FPrice: string;
          FrecallTerm: string;
          FdispColor: string;
          Ficon: string;
          Fgubun: string;
          Fposition: string;
          Fdepth: string;

          Fnotice: string;
          Fwarn: string;
          FGroupCode: string;
          FGroupName: string;

          Faddvalue: string;
          Fnumber: string;
     end;

type
     TsP = packed record
          sP1: string;
          sP2: string;
          sP3: string;
          sP4: string;
     end;
type
     TteethPosition = packed record
          atop: integer;
          aleft: integer;
          aheight: integer;
          awidth: integer;
          aangle: integer;
          atag: integer;
     end;
type
     TTeeth = packed record
          Cnt: Integer;
          nSangF: Integer;
          nSangR: Integer;
          nSangL: Integer;
          nHaF: Integer;
          nHaR: Integer;
          nHaL: Integer;
          nCSangF: Integer;
          nCSangR: Integer;
          nCSangL: Integer;
          nCHaF: Integer;
          nCHaR: Integer;
          nCHaL: Integer;
          nRoot: Integer;
          nXu: integer;
          nXd: integer;
          Ts: Integer; //34,35   44,45
          sP1: string;
          sP2: string;
          sP3: string;
          sP4: string;
          n1012: Integer;
          n103: Integer;
          n1047: Integer;
          n2012: Integer;
          n203: Integer;
          n2047: Integer;
          n3012: Integer;
          n303: Integer;
          n3047: Integer;
          n4012: Integer;
          n403: Integer;
          n4047: Integer;
          n5012: Integer;
          n503: Integer;
          n5045: Integer;
          n6012: Integer;
          n603: Integer;
          n6045: Integer;
          n7012: Integer;
          n703: Integer;
          n7045: Integer;
          n8012: Integer;
          n803: Integer;
          n8045: Integer;
          n6661: Integer; //2009.12.1
          n6662: Integer; //2009.12.1
          n6663: Integer; //2009.12.1
          n6664: Integer; //2009.12.1
          n6665: Integer; //2009.12.1
          n6666: Integer; //2009.12.1
          n6667: Integer; //2009.12.1
          n6668: Integer; //2009.12.1

     end;
     //function teethCNT(sP: TsP): integer;

function calcTeethCnt(varTeeth, varDanwi: string): Double;
function teethCNT(sP: TsP): TTeeth;
procedure FreeTreeItem(aTree: TTreeView);
procedure makenode(Flag: Integer; fTree: TTreeView; fTName: string; fId: string;
     tblname: string; councilcode: string = '');
function FindPosition(varForm: Tform; teethno: string): TTeethposition;
function makeSP(flag: string): TsP;
procedure displayTeeth(varImage: Tadvpanel; flag: string; varKind: integer = 0);
procedure MakePlanImage(Flag: string; sName: string; ModTeethShape1, ModTeethShape2, ModTeethShape3, ModTeethShape4: string);

procedure MakeImage(Flag: string; sName: string; upperColor:Tcolor = clRed; lowerColor:Tcolor= clBlue);

procedure MakeImage_elastic(PointCnt:integer; flag:string;  vPoint : TelasticPoint; sName: string; upperColor:Tcolor = clRed; lowerColor:Tcolor= clBlue);

procedure MakeNumberImage(sName: string);
function ChrToNum(f1: string): string;
function NumToChr(f1: string): string;
function chrToInt(f1: string): Integer;
function CntX(flag: string; UorD: string): Integer;
procedure ChkTImage(Sender: TImage; Flag: Boolean);
procedure SetTImage(varImage: TadvPanel; tnt: string);
procedure SetTeeth(varImage: Tadvpanel; sP1, sP2, sP3, sP4: string);
procedure ChgImg(OrigImg: TImage);
procedure LoadPanorama(varForm: TForm; varImage: TImage; varFileName:
     string; varLocX: integer = 0; varLocY: integer = 0);
procedure LoadTeethSet(varForm: TForm; varChart: string);
procedure TeethVisible(sender: Tobject; varVisible: boolean);
procedure initpano;
function LoadIniFromDB(varChart: string; varPanoName: string = ''): boolean;
procedure LoadTeethList;
procedure DrawRectangleinArea(varImage: TImage; pt: TPoint);
procedure moveimage(varImage: TImage; X, Y: Integer);
function ConvertTeeth(s1, s2, s3, s4: string): string;
function ConvertTeeth2(s1, s2, s3, s4: string): string;
function PortionWrite(flag: string):string;
function calcTeethUpper(varTeeth1, varteeth2, varteeth3, varteeth4:string): integer;
function calcTeethLower(varTeeth1, varteeth2, varteeth3, varteeth4:string): integer;
function makesP_jinryo(flag1,flag2,flag3,flag4: string): TsP;
function  convertTeethNoToOrder(varTeethNo:string):integer;   //Elastic

var
     aBitmap: TBitmap;
     NowPt: TPoint;

     AMCon: TDragCon;
     isClear: Boolean; //치아선택을 지울까말까...처치입력후엔 지운다

     TeethList: TstringList;
     varPortion: widestring;
     varTempImgDir: string;
     LayerCount: integer;
     ContinueToothChoice: boolean;
     //치아를 선택한 후 술식을 클릭하면 false가되고  치아를 클릭하면 true상태 유지
//false:다른 치아를 클릭하면 기존 선택된 치아가 크리어되고 다시 선택한것만선택됨
//true : 계속 선택됨

implementation
//uses Dm, uFunctions;
uses uConfig, uDm, uFunctions;

constructor TIconImage.Create(AOwner: TComponent);
begin
     inherited;
     OnMouseDown := SettMouseDown;
     OnMouseMove := SettMouseMove;
     OnMouseUp := SettMouseUp;
end;

procedure TIconImage.SettMouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     if Button = mbLeft then
          Moving := true
     else
          Resizing := true;
     MvX := X;
     MvY := Y;
     Self.BringToFront;
end;

procedure TIconImage.SettMouseMove(Sender: TObject; Shift: TShiftState;
     X, Y: Integer);
begin
     if Moving then
     begin
          Left := Left + (X - MvX);
          Top := Top + (Y - MvY);
     end;

     if Resizing then
     begin
          Width := Width + (X - MvX);
          Height := Height + (Y - MvY);
          MvX := X;
          MvY := Y;
     end;
end;

procedure TIconImage.SettMouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
begin
     Moving := false;
     Resizing := false;
     (Sender as TImage).SendToBack;
end;

procedure FreeTreeItem(aTree: TTreeView);
var
     I: Integer;
begin
     for I := aTree.Items.Count - 1 downto 0 do
     begin
          Dispose(aTree.Items.Item[I].Data);
          aTree.Items.Item[I].Destroy;
     end;
end;

procedure LoadTeethList;
begin

     TeethList := Tstringlist.Create;
     Teethlist.Add('#11');
     Teethlist.Add('#12');
     Teethlist.Add('#13');
     Teethlist.Add('#14');
     Teethlist.Add('#15');
     Teethlist.Add('#16');
     Teethlist.Add('#17');
     Teethlist.Add('#18');
     Teethlist.Add('#21');
     Teethlist.Add('#22');
     Teethlist.Add('#23');
     Teethlist.Add('#24');
     Teethlist.Add('#25');
     Teethlist.Add('#26');
     Teethlist.Add('#27');
     Teethlist.Add('#28');
     Teethlist.Add('#31');
     Teethlist.Add('#32');
     Teethlist.Add('#33');
     Teethlist.Add('#34');
     Teethlist.Add('#35');
     Teethlist.Add('#36');
     Teethlist.Add('#37');
     Teethlist.Add('#38');
     Teethlist.Add('#41');
     Teethlist.Add('#42');
     Teethlist.Add('#43');
     Teethlist.Add('#44');
     Teethlist.Add('#45');
     Teethlist.Add('#46');
     Teethlist.Add('#47');
     Teethlist.Add('#48');
     Teethlist.Add('#51');
     Teethlist.Add('#52');
     Teethlist.Add('#53');
     Teethlist.Add('#54');
     Teethlist.Add('#55');
     Teethlist.Add('#61');
     Teethlist.Add('#62');
     Teethlist.Add('#63');
     Teethlist.Add('#64');
     Teethlist.Add('#65');
     Teethlist.Add('#71');
     Teethlist.Add('#72');
     Teethlist.Add('#73');
     Teethlist.Add('#74');
     Teethlist.Add('#75');
     Teethlist.Add('#81');
     Teethlist.Add('#82');
     Teethlist.Add('#83');
     Teethlist.Add('#84');
     Teethlist.Add('#85');

end;

function FindPosition(varForm: Tform; teethno: string): TTeethposition;
begin

{
     try
          if trim(teethno) <> '' then
          begin
               if strtoint(teethno) < 51 then
               begin
                    result.atop := (varForm.FindComponent('Ti' + teethno)
                         as TImage).top;
                    result.aleft := (varForm.FindComponent('Ti' +
                         teethno) as TImage).left;
                    result.aheight := (varForm.FindComponent('Ti' +
                         teethno) as TImage).height;
                    result.awidth := (varForm.FindComponent('Ti' +
                         teethno) as TImage).width;
                    result.atag := (varForm.FindComponent('Ti' + teethno)
                         as TImage).tag;
                    result.aangle := round((varForm.FindComponent('Ti' +
                         teethno) as TImage) .angle);
               end
               else
               begin
                    teethNo := inttostr(strtoint(teethno) - 40);
                    result.atop := (varForm.FindComponent('Tc' + teethno)
                         as TImage).top;
                    result.aleft := (varForm.FindComponent('Tc' +
                         teethno) as TImage).left;
                    result.aheight := (varForm.FindComponent('Tc' +
                         teethno) as TImage).height;
                    result.awidth := (varForm.FindComponent('Tc' +
                         teethno) as TImage).width;
                    result.atag := (varForm.FindComponent('Tc' + teethno)
                         as TImage).tag;
                    result.aangle := round((varForm.FindComponent('Tc' +
                         teethno) as TImage).angle);

               end;
          end
          else
          begin
               result.atop := 0;
               result.aleft := 0;
               result.aheight := 0;
               result.awidth := 0;
               result.atag := 0;
               result.aangle := 0;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('[FindPosition Fail]' + Teethno);
               exit;
          end;
     end;
     }
end;

{procedure makenode(Flag: Integer; fTree: TTreeView; fTName: string; fId: string;
     tblname: string; councilcode: string = '');
const
     selectqry =
          //  '    select  a.councilcode,b.txcode,  a.chartcode,   b.txCap as  txname,  a.councilcode as txcode,   a.sortorder as sortorder , b.treepath as treepath ' + #10#13 +
     '    select * ' + #10#13 +
          'from ma_treatitem_councillist as a,        ma_chartitem as b                                                                                           ' + #10#13
          +
          'where a.chartcode=b.txcode and ( a.councilcode=:councilcode or a.councilcode=''-1'')   and b.id =:id and treepath   like  :treepath and treepath <>  :treepath2 and txkind=:kind' + #10#13
          +
          'order by treepath';
     selectqry2 =
          ' select  *                                              ' + #10#13
          +
          ' from ma_chartitem                                 ' + #10#13 +
          ' where id =:id and treepath   like :treepath    and txkind=:kind and  treepath  <> :treepath2 ' + #10#13
          +
          ' order by treepath                               ';

     {  selectqry3 =
            '    select * ' + #10#13 +
            'from  ma_treatitem_chartlist_group as a,   ma_chartitem as b                                                                                           ' + #10#13 +
            'where a.chartcode=b.txcode  ' + #10#13 +
            'and a.Userid=b.id ' + #10#13 +
            'and treepath <>  :treepath2' + #10#13 +
            'and a.groupcode=:groupcode ' + #10#13 +
            'and a.userid=:id' + #10#13 +
       //     'order by treepath';
             'order by sortorder';
        //  treepath   like :treepath
        }
{     selectqry3 =
          '    select * ' + #10#13 +
          'from  ma_treatitem_chartlist_group as a,  groupsuga as b                                                                                           ' + #10#13
          +
          'where a.chartcode=b.groupcode  ' + #10#13 +
          //   'and a.Userid=b.id ' + #10#13 +
//   'and treepath <>  :treepath2' + #10#13 +
     'and a.groupcode=:groupcode ' + #10#13 +
          'and a.userid=:id' + #10#13 +
          'order by sortorder';

var
     MyRecPtr: PMyRec;
     TreeTemp1, TreeTemp2, TreeTemp3, TreeTemp4, TreeTemp5, TreeTemp6:
     TTreeNode;
begin
     TreeTemp1 := nil;
     TreeTemp2 := nil;
     TreeTemp3 := nil;
     TreeTemp4 := nil;
     TreeTemp5 := nil;
     TreeTemp6 := nil;
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          case flag of
               0:
                    begin
                         if tblName <> '' then
                         begin
                              Sql.Add('select * from ');
                              Sql.Add(tblName +
                                   ' where txkind=:kind');
                              Sql.Add('  and id=:id ');

                              Sql.Add('  and treepath like :treepath ');
                              Sql.Add('order by treepath');
                              ParamByName('Kind').AsString :=
                                   IntToStr(Flag);
                              ParamByName('id').AsString := fId;
                              ParamByName('treepath').AsString :=
                                   fTname + '%';
                         end
                         else
                         begin
                              if councilCode <> '' then
                              begin
                                   sql.text := selectqry;
                                   ParamByName('Kind').AsString :=
                                        IntToStr(Flag);
                                   ParamByName('id').AsString :=
                                        fId;
                                   ParamByName('treepath').AsString
                                        := fTname + '%';
                                   ParamByName('treepath2').AsString := fTname + '000000000000000000';
                                   parambyname('councilcode').asString := councilCode;
                              end
                              else
                              begin
                                   sql.text := selectqry2;
                                   ParamByName('Kind').AsString :=
                                        IntToStr(Flag);
                                   ParamByName('id').AsString :=
                                        fId;
                                   ParamByName('treepath').AsString
                                        := fTname + '%';
                                   ParamByName('treepath2').AsString := fTname + '000000000000000000';
                              end;
                         end;
                    end;
               99: //그룹코드로 불러오기
                    begin
                         sql.text := selectqry3;

                         ParamByName('id').AsString := fId;
                         //     ParamByName('treepath').AsString := fTname + '%';
                     //    ParamByName('treepath2').AsString := fTname + '000000000000000000';

                         ParamByName('groupcode').AsString :=
                              councilcode;

                    end;
          end;

          Open;
          First;
          if not isEmpty then
          begin
               ftree.Enabled := true;
               while not eof do
               begin
                    New(MyRecPtr);

                    MyRecPtr^.FName := FieldByName('txname').AsString;
                    MyRecPtr^.LName := FieldByName('txcode').AsString;
                    MyRecPtr^.FPrice := FieldByName('Price').AsString;
                    MyRecPtr^.FGroupCode :=
                         FieldByName('GroupCode').AsString;
                    MyRecPtr^.FGroupName :=
                         FieldByName('GroupName').AsString;
                    MyRecPtr^.Fdispcolor :=
                         FieldByName('dispcolor').AsString;
                    MyRecPtr^.Frecallterm :=
                         FieldByName('recallterm').AsString;
                    MyRecPtr^.Fnotice := FieldByName('notice').AsString;
                    MyRecPtr^.Fwarn := FieldByName('warn').AsString;
                    MyRecPtr^.Faddvalue :=
                         FieldByName('addvalue').AsString;

                    case flag of
                         0:
                              begin

                                   if
                                        Copy(FieldByName('treepath').AsString, 4, 18) =
                                        '000000000000000000' then
                                   begin
                                        TreeTemp1 :=
                                             fTree.Items.AddChildObject(nil,
                                             FieldByName('txcap').AsString, MyRecPtr);
                                   end
                                   else
                                        if
                                             Copy(FieldByName('treepath').AsString, 7, 15) =
                                             '000000000000000' then
                                        begin
                                             TreeTemp2 :=
                                                  fTree.Items.AddChildObject(TreeTemp1,
                                                  FieldByName('txcap').AsString, MyRecPtr);
                                        end
                                        else
                                             if
                                                  Copy(FieldByName('treepath').AsString, 10, 12) =
                                                  '000000000000' then
                                             begin
                                                  TreeTemp3 :=
                                                       fTree.Items.AddChildObject(TreeTemp2,
                                                       FieldByName('txcap').AsString, MyRecPtr);
                                             end
                                             else
                                                  if
                                                       Copy(FieldByName('treepath').AsString, 13, 9) =
                                                       '000000000' then
                                                  begin
                                                       TreeTemp4 :=
                                                            fTree.Items.AddChildObject(TreeTemp3,
                                                            FieldByName('txcap').AsString,
                                                            MyRecPtr);
                                                  end
                                                  else
                                                       if
                                                            Copy(FieldByName('treepath').AsString, 16,
                                                            6) = '000000' then
                                                       begin
                                                            TreeTemp5 :=
                                                                 fTree.Items.AddChildObject(TreeTemp4,
                                                                 FieldByName('txcap').AsString,
                                                                 MyRecPtr);
                                                       end
                                                       else
                                                            if
                                                                 Copy(FieldByName('treepath').AsString,
                                                                 19, 3) = '000' then
                                                            begin
                                                                 TreeTemp6 :=
                                                                      fTree.Items.AddChildObject(TreeTemp5, FieldByName('txcap').AsString, MyRecPtr);
                                                            end
                                                            else //아이템
                                                            begin
                                                                 fTree.Items.AddChildObject(TreeTemp6, FieldByName('txcap').AsString, MyRecPtr);
                                                            end;
                                   Next;
                              end;

                         99:
                              begin
                                   TreeTemp1 :=
                                        fTree.Items.AddChildObject(nil,
                                        FieldByName('txcap').AsString, MyRecPtr);
                                   Next;
                              end;
                    end;
               end;
          end
          else
          begin
               ftree.Enabled := false;
          end;
     end;
end;
}

procedure makenode(Flag: Integer; fTree: TTreeView; fTName: string; fId: string;
     tblname: string; councilcode: string = '');
begin
end;
//function teethCNT(sP: TsP): integer;

function teethCNT(sP: TsP): TTeeth;
var
     i: Integer;
     tmp2: string;
     Portion1: array[1..8] of string;
     Portion2: array[1..8] of string;
     Portion3: array[1..8] of string;
     Portion4: array[1..8] of string;

     //    nSangF, nSangR, nSangL, nHaF, nHaR, nHaL, nCSangF, nCSangR, nCSangL,
     //         nCHaF, nCHaR, nCHaL, nRoot, nXu, nXd: Integer;
     //    sP1, sP2, sP3, sP4,
     sHospGrade: string;
begin

     for i := 1 to 8 do
     begin
          Portion1[i] := '_';
          Portion2[i] := '_';
          Portion3[i] := '_';
          Portion4[i] := '_';
     end;

     result.nSangF := 0;
     result.nSangR := 0;
     result.nSangL := 0;
     result.nHaF := 0;
     result.nHaR := 0;
     result.nHaL := 0;
     result.nCSangF := 0;
     result.nCSangR := 0;
     result.nCSangL := 0;
     result.nCHaF := 0;
     result.nCHaR := 0;
     result.nCHaL := 0;
     result.nRoot := 0;
     result.sP1 := '';
     result.sP2 := '';
     result.sP3 := '';
     result.sP4 := '';
     result.nXu := 0;
     result.nXd := 0;

     Result.n1012 := 0;
     Result.n103 := 0;
     Result.n1047 := 0;
     Result.n2012 := 0;
     Result.n203 := 0;
     Result.n2047 := 0;
     Result.n3012 := 0;
     Result.n303 := 0;
     Result.n3047 := 0;
     Result.n4012 := 0;
     Result.n403 := 0;
     Result.n4047 := 0;
     Result.n5012 := 0;
     Result.n503 := 0;
     Result.n5045 := 0;
     Result.n6012 := 0;
     Result.n603 := 0;
     Result.n6045 := 0;
     Result.n7012 := 0;
     Result.n703 := 0;
     Result.n7045 := 0;
     Result.n8012 := 0;
     Result.n803 := 0;
     Result.n8045 := 0;
     Result.n6666 := 0; //2009.12.1
     Result.n6661 := 0; //2009.12.1
     Result.n6662 := 0; //2009.12.1
     Result.n6663 := 0; //2009.12.1
     Result.n6664 := 0; //2009.12.1
     Result.n6665 := 0; //2009.12.1
     Result.n6667 := 0; //2009.12.1
     Result.n6668 := 0; //2009.12.1

     //

     //sp1
     for i := 1 to 8 do
     begin

          tmp2 := Copy(sP.sP1, i, 1);
          if (tmp2 <> '_')
               and (tmp2 <> 'X') then
          begin
               if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
               begin
                    tmp2 := ChrToNum(tmp2);
                    //유치
                    case StrToInt(tmp2) of

                         1..2:
                              begin
                                   Result.nCSangF := Result.nCSangF + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n5012 := Result.n5012 +
                                        1;
                                   Result.n6661 := Result.n6661 + 1;
                              end;
                         3:
                              begin
                                   Result.nCSangF := Result.nCSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n503 := Result.n503 + 1;
                                   Result.n6663 := Result.n6663 + 1;
                              end;
                         4..5:
                              begin
                                   Result.nCSangR := Result.nCSangR
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n5045 := Result.n5045 +
                                        1;
                                   Result.n6664 := Result.n6664 + 1;
                              end;
                    end;
               end
               else
               begin
                    //영구치
                    case StrToInt(tmp2) of
                         1..2:
                              begin
                                   Result.nSangF := Result.nSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n1012 := Result.n1012 +
                                        1;
                                   Result.n6661 := Result.n6661 + 1; //2009.12.1
                              end;
                         3:
                              begin
                                   Result.nSangF := Result.nSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n103 := Result.n103 + 1;
                                   Result.n6663 := Result.n6663 +
                                        1; //2009.12.1
                              end;
                         4:
                              begin
                                   Result.nSangR := Result.nSangR
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        2;
                                   Result.n1047 := Result.n1047 +
                                        1;
                                   Result.n6664 := Result.n6664 +
                                        1; //2009.12.1
                              end;
                         5:
                              begin
                                   Result.nSangR := Result.nSangR
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n1047 := Result.n1047 +
                                        1;
                                   Result.n6665 := Result.n6665 +
                                        1; //2009.12.1
                              end;
                         6:
                              begin
                                   Result.nSangR := Result.nSangR
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n1047 := Result.n1047 +
                                        1;
                                   Result.n6666 := Result.n6666 +
                                        1; //2009.12.1
                              end;
                         7:
                              begin
                                   Result.nSangR := Result.nSangR
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n1047 := Result.n1047 +
                                        1;
                                   Result.n6667 := Result.n6667 +
                                        1; //2009.12.1
                              end;
                         8:
                              begin
                                   Result.nSangR := Result.nSangR
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n1047 := Result.n1047 +
                                        1;
                                   Result.n6668 := Result.n6668 +
                                        1; //2009.12.1
                              end;
                    end;

               end;
          end;
     end;
     //sp2
     for i := 1 to 8 do
     begin
          tmp2 := Copy(sP.sP2, i, 1);
          if (tmp2 <> '_')
               and (tmp2 <> 'X') then
          begin
               if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
               begin
                    tmp2 := ChrToNum(tmp2);
                    //유치
                    case StrToInt(tmp2) of
                         1..2:
                              begin
                                   Result.nCSangF := Result.nCSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n6012 := Result.n6012 +
                                        1;
                                   Result.n6661 := Result.n6661 + 1;
                              end;
                         3:
                              begin
                                   Result.nCSangF := Result.nCSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n603 := Result.n603 + 1;
                                   Result.n6663 := Result.n6663 + 1;
                              end;
                         4..5:
                              begin
                                   Result.nCSangL := Result.nCSangL
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n6045 := Result.n6045 +
                                        1;
                                   Result.n6664 := Result.n6664 + 1;
                              end;
                    end;
               end
               else
               begin
                    //영구치
                    case StrToInt(tmp2) of
                         1..2:
                              begin
                                   Result.nSangF := Result.nSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n2012 := Result.n2012 +
                                        1;
                                   Result.n6661 := Result.n6661 +
                                        1; //2009.12.1
                              end;
                         3:
                              begin
                                   Result.nSangF := Result.nSangF
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n203 := Result.n203 + 1;
                                   Result.n6663 := Result.n6663 +
                                        1; //2009.12.1
                              end;
                         4:
                              begin
                                   Result.nSangL := Result.nSangL
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        2;
                                   Result.n2047 := Result.n2047 +
                                        1;
                                   Result.n6664 := Result.n6664 +
                                        1; //2009.12.1
                              end;
                         5:
                              begin
                                   Result.nSangL := Result.nSangL
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n2047 := Result.n2047 +
                                        1;
                                   Result.n6665 := Result.n6665 +
                                        1; //2009.12.1
                              end;
                         6:
                              begin
                                   Result.nSangL := Result.nSangL
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n2047 := Result.n2047 +
                                        1;
                                   Result.n6666 := Result.n6666 +
                                        1; //2009.12.1
                              end;
                         7:
                              begin
                                   Result.nSangL := Result.nSangL
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n2047 := Result.n2047 +
                                        1;
                                   Result.n6667 := Result.n6667 +
                                        1; //2009.12.1
                              end;
                         8:
                              begin
                                   Result.nSangL := Result.nSangL
                                        + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n2047 := Result.n2047 +
                                        1;
                                   Result.n6668 := Result.n6668 +
                                        1; //2009.12.1
                              end;
                    end;
               end;
          end;
     end;
     //sp3
     for i := 1 to 8 do
     begin
          tmp2 := Copy(sP.sP3, i, 1);
          if (tmp2 <> '_')
               and (tmp2 <> 'X') then
          begin
               if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
               begin
                    tmp2 := ChrToNum(tmp2);
                    //유치
                    case StrToInt(tmp2) of

                         1..2:
                              begin
                                   Result.nCHaF := Result.nCHaF +
                                        1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n7012 := Result.n7012 +
                                        1;
                                   Result.n6661 := Result.n6661 + 1;
                              end;
                         3:
                              begin
                                   Result.nCHaF := Result.nCHaF +
                                        1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n703 := Result.n703 + 1;
                                   Result.n6663 := Result.n6663 + 1;
                              end;
                         4..5:
                              begin
                                   Result.nCHaL := Result.nCHaL +
                                        1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n7045 := Result.n7045 +
                                        1;
                                   Result.n6664 := Result.n6664 + 1;
                              end;
                    end;
               end
               else
               begin
                    //영구치

                    case StrToInt(tmp2) of
                         1..2:
                              begin
                                   Result.nHaF := Result.nHaF + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n3012 := Result.n3012 +
                                        1;
                                   Result.n6661 := Result.n6661 +
                                        1; //2009.12.1
                              end;
                         3:
                              begin
                                   Result.nHaF := Result.nHaF + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n303 := Result.n303 + 1;
                                   Result.n6663 := Result.n6663 +
                                        1; //2009.12.1
                              end;
                         4:
                              begin
                                   Result.nHaL := Result.nHaL + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.Ts := Result.Ts + 1;
                                   Result.n3047 := Result.n3047 +
                                        1;
                                   Result.n6664 := Result.n6664 +
                                        1; //2009.12.1
                              end;
                         5:
                              begin
                                   Result.nHaL := Result.nHaL + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.Ts := Result.Ts + 1;
                                   Result.n3047 := Result.n3047 +
                                        1;
                                   Result.n6665 := Result.n6665 +
                                        1; //2009.12.1
                              end;
                         6:
                              begin
                                   Result.nHaL := Result.nHaL + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n3047 := Result.n3047 +
                                        1;
                                   Result.n6666 := Result.n6666 +
                                        1; //2009.12.1
                              end;
                         7:
                              begin
                                   Result.nHaL := Result.nHaL + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n3047 := Result.n3047 +
                                        1;
                                   Result.n6667 := Result.n6667 +
                                        1; //2009.12.1
                              end;
                         8:
                              begin
                                   Result.nHaL := Result.nHaL + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n3047 := Result.n3047 +
                                        1;
                                   Result.n6668 := Result.n6668 +
                                        1; //2009.12.1
                              end;
                    end;
               end;
          end;
     end;
     //sp4
     for i := 1 to 8 do
     begin
          tmp2 := Copy(sP.sP4, i, 1);
          if (tmp2 <> '_')
               and (tmp2 <> 'X') then
          begin
               if ((tmp2 >= 'A') and (tmp2 <= 'E')) then
               begin
                    tmp2 := ChrToNum(tmp2);
                    //유치
                    case StrToInt(tmp2) of

                         1..2:
                              begin
                                   Result.nCHaF := Result.nCHaF +
                                        1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n8012 := Result.n8012 +
                                        1;
                                   Result.n6661 := Result.n6661 + 1;
                              end;
                         3:
                              begin
                                   Result.nCHaF := Result.nCHaF +
                                        1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n803 := Result.n803 + 1;
                                   Result.n6663 := Result.n6663 + 1;
                              end;
                         4..5:
                              begin
                                   Result.nCHaR := Result.nCHaR +
                                        1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n8045 := Result.n8045 +
                                        1;
                                   Result.n6664 := Result.n6664 + 1;
                              end;
                    end;
               end
               else
               begin
                    //영구치

                    case StrToInt(tmp2) of
                         1..2:
                              begin
                                   Result.nHaF := Result.nHaF + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n4012 := Result.n4012 +
                                        1;
                                   Result.n6661 := Result.n6661 +
                                        1; //2009.12.1
                              end;
                         3:
                              begin
                                   Result.nHaF := Result.nHaF + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n403 := Result.n403 + 1;
                                   Result.n6663 := Result.n6663 +
                                        1; //2009.12.1
                              end;
                         4:
                              begin
                                   Result.nHaR := Result.nHaR + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.n4047 := Result.n4047 +
                                        1;
                                   Result.Ts := Result.Ts + 1;
                                   Result.n6664 := Result.n6664 +
                                        1; //2009.12.1
                              end;
                         5:
                              begin
                                   Result.nHaR := Result.nHaR + 1;
                                   Result.nRoot := Result.nRoot +
                                        1;
                                   Result.Ts := Result.Ts + 1;
                                   Result.n4047 := Result.n4047 +
                                        1;
                                   Result.n6665 := Result.n6665 +
                                        1; //2009.12.1
                              end;
                         6:
                              begin
                                   Result.nHaR := Result.nHaR + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n4047 := Result.n4047 +
                                        1;
                                   Result.n6666 := Result.n6666 +
                                        1; //2009.12.1
                              end;
                         7:
                              begin
                                   Result.nHaR := Result.nHaR + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n4047 := Result.n4047 +
                                        1;
                                   Result.n6667 := Result.n6667 +
                                        1; //2009.12.1
                              end;
                         8:
                              begin
                                   Result.nHaR := Result.nHaR + 1;
                                   Result.nRoot := Result.nRoot +
                                        3;
                                   Result.n4047 := Result.n4047 +
                                        1;
                                   Result.n6668 := Result.n6668 +
                                        1; //2009.12.1
                              end;
                    end;
               end;
          end;
     end;

     //X-ray

     result.nXu := CntX(sp.sP1 + sp.sP2, 'U');
     result.nXd := CntX(sp.sP4 + sp.sp3, 'D');
     result.Cnt := result.nSangF + result.nSangR + result.nSangL + result.nHaF
          + result.nHaR
          +
          result.nHaL + result.nCSangF + result.nCSangR + result.nCSangL +
          result.nCHaF +
          result.nCHaR
          + result.nCHaL;
end;

function makesP(flag: string): TsP;
var
     p: string;
     i, m: Integer;
     varTooth, varportion2: string;

     szArrString: TArrString;
begin
     SetLength(szArrString, 1);

     m := ScanString(PChar(flag), szArrString, ',', ',');

     Result.sp1 := '________';//SbcStrToMbcStr('________');
     Result.sp2 := '________';//SbcStrToMbcStr('________');
     Result.sp3 := '________';//SbcStrToMbcStr('________');
     Result.sp4 := '________';//SbcStrToMbcStr('________');
     p := '';

     case strCase(flag, ['All Teeth',
          'U/L',
               '상/하악',
               'All Milk Teeth',
               '11-17,21-27',
               'U',
               '상악',
               'UA',
               'LA',
               'UL',
               'UR',
               'LR',
               'LL',
               '31-37,41-47',
               'L',
               '51-55,61-65',
               '71-75,81-85',
               '']) of
          0, 1, 2:
               begin
                    Result.sp1 := '_7654321';
                    Result.sp2 := '1234567_';
                    Result.sp3 := '1234567_';
                    Result.sp4 := '_7654321';
               end;
          3:
               begin
                    Result.sp1 := '___EDCBA';
                    Result.sp2 := 'ABCDE___';
                    Result.sp3 := 'ABCDE___';
                    Result.sp4 := '___EDCBA';
               end;
          4, 5, 6:
               begin
                    Result.sp1 := '_7654321';
                    Result.sp2 := '1234567_';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end;

          7:
               begin
                    Result.sp1 := '_____321';
                    Result.sp2 := '123_____';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end;
          8:

               begin
                    Result.sp4 := '_____321';
                    Result.sp3 := '123_____';
                    Result.sp1 := '________';
                    Result.sp2 := '________';
               end;
          9:

               begin
                    Result.sp1 := '________';
                    Result.sp2 := '1234567_';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end;
          10:

               begin
                    Result.sp1 := '1234567_';
                    Result.sp2 := '________';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end;
          11:

               begin
                    Result.sp4 := '1234567_';
                    Result.sp2 := '________';
                    Result.sp3 := '________';
                    Result.sp1 := '________';
               end;
          12:

               begin
                    Result.sp3 := '1234567_';
                    Result.sp2 := '________';
                    Result.sp1 := '________';
                    Result.sp4 := '________';
               end;
          13, 14:

               begin
                    Result.sp1 := '________';
                    Result.sp2 := '________';
                    Result.sp3 := '1234567_';
                    Result.sp4 := '_7654321';
               end;
          15:
               begin
                    Result.sp1 := '___EDCBA';
                    Result.sp2 := 'ABCDE___';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end;

          16:
               begin
                    Result.sp1 := '________';
                    Result.sp2 := '________';
                    Result.sp3 := 'ABCDE___';
                    Result.sp4 := '___EDCBA';
               end;
          17:

               begin
                    Result.sp1 := '________';
                    Result.sp2 := '________';
                    Result.sp3 := '________';
                    Result.sp4 := '________';
               end;
     else
          begin
               for i := 0 to m - 1 do
               begin

                    p := substr(stringreplace(flag, '#', '', [rfReplaceAll]), i + 1, ',');
                    if length(p) <> 5 then
                         p := p + '000';

                    case StrToIntDef(copy(p, 3, 3), 0) of
                         0: varTooth := copy(p, 2, 1);//SbcStrToMbcStr( copy(p, 2, 1) );   //전각문자로 변환
                         1: varTooth := 'X';//SbcStrToMbcStr( 'X'); //대문자로 넣어야 줄맞춤.
                         2: varTooth := 'P';// 'ⓟ'; //대문자로 넣어야 줄맞춤.
                         3: varTooth := 'H';// 'ⓗ'; //대문자로 넣어야 줄맞춤.
                         4: varTooth := '+';// 'ⓧ'; //대문자로 넣어야 줄맞춤.
                         5: varTooth := 'S';// 'ⓢ'; //대문자로 넣어야 줄맞춤.
                    end;

                    case StrToIntDef(copy(p, 1, 1), 0) of
                         1:
                              Result.sP1 :=
                                   Trim(
                                   Copy(Result.sP1, 1, 8 - StrToIntDef( copy(p, 2, 1) , 0))
                                    + varTooth + Copy(Result.sP1, 10 - StrToIntDef(copy(p, 2, 1),0), 8)

                                    );
                         2:
                              Result.sP2 :=
                                   Trim(Copy(Result.sP2, 1, StrToIntDef(copy(p, 2, 1) , 0) - 1)
                                    + varTooth + Copy(Result.sP2, StrToIntDef(copy(p, 2, 1),0) + 1, 8));
                         3:
                              Result.sP3 :=
                                   Trim(Copy(Result.sP3, 1, StrToIntDef(copy(p, 2, 1) , 0) - 1)
                                    + varTooth + Copy(Result.sP3, StrToIntDef(copy(p, 2, 1),0) + 1, 8));
                         4:
                              Result.sP4 :=
                                   Trim(Copy(Result.sP4, 1, 8 - StrToIntDef(copy(p, 2, 1) , 0))
                                    + varTooth + Copy(Result.sP4, 10 - StrToIntDef(copy(p, 2, 1),0), 8));
                         5:
                              Result.sP1 :=
                                   Trim(Copy(Result.sP1, 1, 8 - StrToIntDef(copy(p, 2, 1) , 0))
                                    + numToChr(varTooth) + Copy(Result.sP1, 10 - StrToIntDef(copy(p, 2, 1),0), 8));
                         6:
                              Result.sP2 :=
                                   Trim(Copy(Result.sP2, 1, StrToIntDef(copy(p, 2, 1) , 0) - 1)
                                   + numToChr(varTooth) + Copy(Result.sP2, StrToIntDef(copy(p, 2, 1),0) + 1, 8));
                         7:
                              Result.sP3 :=
                                   Trim(Copy(Result.sP3, 1, StrToIntDef(copy(p, 2, 1) , 0) - 1)
                                    + numToChr(varTooth) + Copy(Result.sP3, StrToIntDef(copy(p, 2, 1), 0) + 1, 8));
                         8:

                              Result.sP4 :=
                                   Trim(Copy(Result.sP4, 1, 8 - StrToIntDef(copy(p, 2, 1),0)) + numToChr(varTooth)
                                    + Copy(Result.sP4, 10 - StrToIntDef(copy(p, 2, 1),0), 8));
                    end;

               end;

          end;
     end;

                //    Result.sp1 :=SbcStrToMbcStr(Result.sp1);// '_7654321';
                //    Result.sp2 :=SbcStrToMbcStr(Result.sp2);// '1234567_';
                //    Result.sp3 :=SbcStrToMbcStr(Result.sp3);// '1234567_';
                //    Result.sp4 :=SbcStrToMbcStr(Result.sp4);// '_7654321';

end;

procedure displayTeeth(varImage: Tadvpanel; flag: string; varKind: integer = 0);
var
     p: string;
     i, j, m: Integer;
     varTooth, varportion2: string;

     szArrString: TArrString;

     runDir: string;
begin
     RunDir := ExtractFileDir(application.exename) + '/image/';
     SetLength(szArrString, 1);

     m := ScanString(PChar(flag), szArrString, ',', ',');

     p := '';
     for i := 0 to m - 1 do
     begin

          p := substr(stringreplace(flag, '#', '', [rfReplaceAll]), i + 1, ',');

          if length(p) <> 5 then
               p := p + '000';

          if varkind = 0 then
               varkind := StrToInt(copy(p, 3, 3));
          for j := 0 to varImage.ControlCount - 1 do
          begin
               if (varImage.Controls[j] is Timage) then
               begin

                    if (varImage.Controls[j].Name = 'Ti' + copy(p, 1, 2))
                         and (strtoint(copy(p, 1, 1)) < 5)
                         and ((varImage.Controls[j] as Timage).Hint = 'O') then //성인치아
                    begin
                         case varKind of
                              0:
                                   begin
                                        varTooth := SbcStrToMbcStr(copy(p, 1, 2));
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'tb' + varTooth + '.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'O';

                                   end;
                              1:
                                   begin
                                        varTooth := SbcStrToMbcStr('X'); //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'A.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'AA';

                                   end;
                              2:
                                   begin
                                        varTooth := 'P';// 'ⓟ'; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'P.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'PP';

                                   end;
                              3:
                                   begin
                                        varTooth :='H';// 'ⓗ'; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'H.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'HH';
                                   end;

                              4:
                                   begin
                                        varTooth := '+';// 'ⓧ; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'X.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'XX';

                                   end;
                              5:
                                   begin
                                        varTooth := 'S';// 'ⓢ'; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'S.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'SS';

                                   end;
                         end;

                    end;
                    if (varImage.Controls[j].Name = 'Tc' + copy(p, 1, 2))
                         and (strtoint(copy(p, 1, 1)) > 4)
                         and ((varImage.Controls[j] as Timage).Hint = 'O') then //유치
                    begin
                         case varKind of
                              0:
                                   begin
                                        varTooth :=SbcStrToMbcStr( copy(p, 1, 2));
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'tb' + varTooth + '.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'O';

                                   end;
                              1:
                                   begin
                                        varTooth := SbcStrToMbcStr('X'); //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'A.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'AA';

                                   end;

                              2:
                                   begin
                                        varTooth := 'P';// 'ⓟ'; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'P.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'PP';

                                   end;
                              3:
                                   begin
                                        varTooth := 'H';// 'ⓗ'; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'H.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'HH';
                                   end;

                              4:
                                   begin
                                        varTooth := '+';// 'ⓧ; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'X.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'XX';

                                   end;
                              5:
                                   begin
                                        varTooth := 'S';// 'ⓢ'; //대문자로 넣어야 줄맞춤.
                                        (varImage.Controls[j] as Timage).Picture.LoadFromFile(RunDir + 'S.bmp');
                                        (varImage.Controls[j] as Timage).Hint := 'SS';

                                   end;
                         end;

                    end;

               end;
          end;

     end;

end;

procedure MakeImage(Flag: string; sName: string; upperColor:Tcolor = clRed; lowerColor:Tcolor= clBlue);
var
     varImage: TImage;
     SS: TSp;
begin
     varImage := Timage.Create(application);
     varImage.Width := 100;
     varImage.Height := 22;
     if (Flag <> '') and (sName <> '') then
     begin

          SS := makesP(Flag);
          // VarImage.Picture.LoadFromFile;
          // VarImage.Picture.Bitmap.LoadFromFile('D:\_Projects\Dentro\bin\temp\teethtemp\00128910.bmp');

          if configvalue.varTeethView = '1' then
          begin
               if ((SS.sP1 = '_7654321')
                    or (SS.sP1 = '87654321'))
                    and
                    ((SS.sP2 = '1234567_')
                    or (SS.sP2 = '12345678'))
                    and
                    ((SS.sP4 = '_7654321')
                    or (SS.sP4 = '87654321'))
                    and
                    ((SS.sP3 = '1234567_')
                    or (SS.sP3 = '12345678')) then //전체면
               begin

                    VarImage.Canvas.Font.Name := 'Tahoma';
                    VarImage.Canvas.Font.Size := 20;
                    VarImage.Canvas.Font.Color := upperColor;
                    VarImage.Canvas.TextOut(40, -5, '+');
               end
               else

                    if ((SS.sP1 = '_7654321')
                         or (SS.sP1 = '87654321'))
                         and
                         ((SS.sP2 = '1234567_')
                         or (SS.sP2 = '12345678'))
                          and
                          ((SS.sP3 = '________')
                              and (SS.sP4 = '________'))  then   //상악 전체이면서  하악에 아무것도 선택 안되어있으면.
                    begin

                         VarImage.Canvas.Font.Name := 'Tahoma';
                         VarImage.Canvas.Font.Size := 20;
                         VarImage.Canvas.Font.Color := upperColor;
                         VarImage.Canvas.TextOut(40, -1, '↑');
                    end
                    else
                         if ((SS.sP4 = '_7654321')
                              or (SS.sP4 = '87654321'))
                              and
                              ((SS.sP3 = '1234567_')
                              or (SS.sP3 = '12345678'))
                               and
                          ((SS.sP1 = '________')
                              and (SS.sP2 = '________')) then //하악 전체이면서  상악에 아무것도 선택 안되어있으면.
                         begin

                              VarImage.Canvas.Font.Name := 'Tahoma';
                              VarImage.Canvas.Font.Size := 20;
                              VarImage.Canvas.Font.Color := LowerColor;
                              VarImage.Canvas.TextOut(40, -10, '↓'); //1.

                         end
                         else

                         begin
                              VarImage.Canvas.Font.Name := 'Tahoma';
                              VarImage.Canvas.Font.Size := 8;
                              VarImage.Canvas.Font.Color := upperColor;
                              VarImage.Canvas.TextOut(0, -1, SS.sP1);
                              VarImage.Canvas.TextOut(51, -1, SS.sP2);


                              VarImage.Canvas.Font.Color := LowerColor;
                              VarImage.Canvas.TextOut(0, 11, SS.sP4);
                              VarImage.Canvas.TextOut(51, 11, SS.sP3);


                              //라인색을 하악색으로 하자...
                              VarImage.Canvas.Pen.Color := LowerColor; //clBlue;

                              VarImage.Canvas.MoveTo(0, 11);
                              VarImage.Canvas.LineTo(100, 11);
                              VarImage.Canvas.MoveTo(49, -1);
                              VarImage.Canvas.LineTo(49, 25);
                         end;

          end
          else
          begin

               VarImage.Canvas.Font.Name := 'Tahoma';
               VarImage.Canvas.Font.Size := 8;
               VarImage.Canvas.Font.Color := upperColor;//clred;
               VarImage.Canvas.TextOut(0, -1, SS.sP1);
               VarImage.Canvas.TextOut(51, -1, SS.sP2);

               VarImage.Canvas.Font.Color := lowerColor; //clBlue;
               VarImage.Canvas.TextOut(0, 11, SS.sP4);
               VarImage.Canvas.TextOut(51, 11, SS.sP3);


                //라인색을 하악색으로 하자...
               VarImage.Canvas.Pen.Color := lowerColor;//clBlue;

               VarImage.Canvas.MoveTo(0, 11);
               VarImage.Canvas.LineTo(100, 11);
               VarImage.Canvas.MoveTo(49, -1);
               VarImage.Canvas.LineTo(49, 25);

          end;

          VarImage.Picture.SavetoFile(extractFilePath(paramStr(0)) +
               'temp\teethtemp\' + sName + '.bmp');

          VarImage.picture := nil;
          varImage.Free;

     end
     else
     begin

          VarImage.Canvas.TextOut(0, -1, '');
          VarImage.Picture.SavetoFile(extractFilePath(paramStr(0)) +
               'temp\teethtemp\' + sName + '.bmp');
          VarImage.picture := nil;
          varImage.Free;

     end;
end;





procedure MakeImage_elastic(PointCnt:integer; flag:string; vPoint : TelasticPoint; sName: string; upperColor:Tcolor = clRed; lowerColor:Tcolor= clBlue);
var
     varImage: TImage;
     SS: TSp;
     i, x, y: integer;
begin
     varImage := Timage.Create(application);
     varImage.Width := 100;
     varImage.Height := 22;
     if (Flag <> '') and (sName <> '') then
     begin
          SS := makesP(Flag);
          // VarImage.Picture.LoadFromFile;
          // VarImage.Picture.Bitmap.LoadFromFile('D:\_Projects\Dentro\bin\temp\teethtemp\00128910.bmp');





          if configvalue.varTeethView = '1' then           // 치식번호를 기호로 표시하자...
          begin
               if ((SS.sP1 = '_7654321')
                    or (SS.sP1 = '87654321'))
                    and
                    ((SS.sP2 = '1234567_')
                    or (SS.sP2 = '12345678'))
                    and
                    ((SS.sP4 = '_7654321')
                    or (SS.sP4 = '87654321'))
                    and
                    ((SS.sP3 = '1234567_')
                    or (SS.sP3 = '12345678')) then //전체면
               begin

                    VarImage.Canvas.Font.Name := 'Tahoma';
                    VarImage.Canvas.Font.Size := 20;
                    VarImage.Canvas.Font.Color := upperColor;
                    VarImage.Canvas.TextOut(40, -5, '+');
               end
               else

                    if ((SS.sP1 = '_7654321')
                         or (SS.sP1 = '87654321'))
                         and
                         ((SS.sP2 = '1234567_')
                         or (SS.sP2 = '12345678')) and
                          ((SS.sP3 = '________')
                    and (SS.sP4 = '________')) then //상악 전체이면서  하악에 아무것도 선택 안되어있으면.
                    begin

                         VarImage.Canvas.Font.Name := 'Tahoma';
                         VarImage.Canvas.Font.Size := 20;
                         VarImage.Canvas.Font.Color := upperColor;
                         VarImage.Canvas.TextOut(40, -1, '↑');
                    end
                    else
                         if ((SS.sP4 = '_7654321')
                              or (SS.sP4 = '87654321'))
                              and
                              ((SS.sP3 = '1234567_')
                              or (SS.sP3 = '12345678'))
                                and
                          ((SS.sP1 = '________')
                              and (SS.sP2 = '________')) then //하악 전체이면서  상악에 아무것도 선택 안되어있으면.
                         begin

                              VarImage.Canvas.Font.Name := 'Tahoma';
                              VarImage.Canvas.Font.Size := 20;
                              VarImage.Canvas.Font.Color := LowerColor;
                              VarImage.Canvas.TextOut(40, -10, '↓'); //2.

                         end
                         else

                         begin
                              VarImage.Canvas.Font.Name := 'Tahoma';
                              VarImage.Canvas.Font.Size := 8;
                              VarImage.Canvas.Font.Color := upperColor;
                              VarImage.Canvas.TextOut(0, -1, SS.sP1);
                              VarImage.Canvas.TextOut(51, -1, SS.sP2);


                              VarImage.Canvas.Font.Color := LowerColor;
                              VarImage.Canvas.TextOut(0, 11, SS.sP4);
                              VarImage.Canvas.TextOut(51, 11, SS.sP3);


                              //라인색을 하악색으로 하자...
                              VarImage.Canvas.Pen.Color := LowerColor; //clBlue;

                              VarImage.Canvas.MoveTo(0, 11);
                              VarImage.Canvas.LineTo(100, 11);
                              VarImage.Canvas.MoveTo(49, -1);
                              VarImage.Canvas.LineTo(49, 25);
                         end;
          end
          else
          begin

               VarImage.Canvas.Font.Name := 'Tahoma';
               VarImage.Canvas.Font.Size := 8;
               VarImage.Canvas.Font.Color := upperColor;//clred;
               VarImage.Canvas.TextOut(0, -1, SS.sP1);
               VarImage.Canvas.TextOut(51, -1, SS.sP2);

               VarImage.Canvas.Font.Color := lowerColor; //clBlue;
               VarImage.Canvas.TextOut(0, 11, SS.sP4);
               VarImage.Canvas.TextOut(51, 11, SS.sP3);


                //라인색을 하악색으로 하자...
               VarImage.Canvas.Pen.Color := lowerColor;//clBlue;

               VarImage.Canvas.MoveTo(0, 11);
               VarImage.Canvas.LineTo(100, 11);
               VarImage.Canvas.MoveTo(49, -1);
               VarImage.Canvas.LineTo(49, 25);


             
          end;


           //ToDo : 여기서 Elastic 선을 그리자.
           VarImage.Canvas.Pen.Color := clGreen;
           VarImage.Canvas.Pen.Width := 2;
            for i:= 0 to pointCnt -2 do
           begin
              x:=  vPoint[i].elasticPoint.x;
              y:=  vPoint[i].elasticPoint.Y ;

              VarImage.Canvas.MoveTo( x, y);

              x:=  vPoint[i+1].elasticPoint.x;
              y:=  vPoint[i+1].elasticPoint.Y;

              VarImage.Canvas.LineTo( X,  Y);



           end;


           //시작점과 끝점을 연결하자.
           
              x:=  vPoint[0].elasticPoint.x;
              y:=  vPoint[0].elasticPoint.Y;
              VarImage.Canvas.MoveTo( x, y);

              x:=  vPoint[pointCnt-1].elasticPoint.x;
              y:=  vPoint[pointCnt-1].elasticPoint.Y;

              VarImage.Canvas.LineTo( X,  Y);







          VarImage.Picture.SavetoFile(extractFilePath(paramStr(0)) +
               'temp\teethtemp\' + sName + '.bmp');

          VarImage.picture := nil;
          varImage.Free;

     end
     else
     begin

          VarImage.Canvas.TextOut(0, -1, '');
          VarImage.Picture.SavetoFile(extractFilePath(paramStr(0)) +
               'temp\teethtemp\' + sName + '.bmp');
          VarImage.picture := nil;
          varImage.Free;

     end;

end;

procedure MakeNumberImage(sName: string);
var
     varImage: TImage;
     varFilepath: string;
begin
     varFilepath := GetConfigDir + 'tempimage';
     varImage := Timage.Create(application);
     varImage.Width := 24;
     varImage.Height := 24;
     try
          if (sName <> '') then
          begin
               if not DirectoryExists(varFilepath) then
                    if not CreateDir(varFilepath) then
                         raise Exception.Create('Cannot create ' +
                              varFilepath);
               VarImage.Canvas.Brush.Color := clBlack;

               VarImage.Canvas.Font.Size := 9;
               //  VarImage.Canvas.Font.Style := [fsBold];

               VarImage.Canvas.Font.Color := clBlue;

               VarImage.Canvas.MoveTo(0, 0);
               VarImage.Canvas.Rectangle(0, 0, 24, 24);

               //VarImage.Canvas.Ellipse(0, 0, 24, 24);
              // VarImage.Canvas.Pie(12,12,24,24,24,24,24,24);
               VarImage.Canvas.TextOut(2, 2, sName);

               //          VarImage.Canvas.Pen.Color := clBlue;

               VarImage.Picture.SavetoFile(varFilepath + '\' + sName +
                    '.bmp');
               VarImage.picture := nil;
               //  varImage.Free;

          end
          else
          begin

               VarImage.Canvas.TextOut(0, -1, '');
               VarImage.Picture.SavetoFile(extractFilePath(paramStr(0)) +
                    'temp\teethtemp\' + sName + '.bmp');
               VarImage.picture := nil;
               // varImage.Free;

          end;

     finally

          varImage.Free;
     end;
end;

function ChrToNum(f1: string): string;
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

function numToChr(f1: string): string;
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

function chrToInt(f1: string): Integer;
begin
     Result := 0;
     if f1 = 'A' then
          Result := 1
     else
          if f1 = 'B' then
               Result := 2
          else
               if f1 = 'C' then
                    Result := 3
               else
                    if f1 = 'D' then
                         Result := 4
                    else
                         if f1 = 'E' then
                              Result := 5;

end;

function CntX(flag: string; UorD: string): Integer;
var
     XUa: array[1..8] of Integer;
     XDa: array[1..8] of Integer;
     XUc: array[1..5] of Integer;
     XDc: array[1..5] of Integer;
     gr: array[1..16] of string;
     cCode: Integer;
     i, j, grno, grsum, grchk, nXray: Integer;
     grStart: Boolean;
     gtmp, AorC: string;
begin
     XUa[1] := 14;
     XUa[2] := 14;
     XUa[3] := 14;
     XUa[4] := 14;
     XUa[5] := 14;
     XUa[6] := 14;
     XUa[7] := 14;
     XUa[8] := 14;

     XDa[1] := 14;
     XDa[2] := 14;
     XDa[3] := 14;
     XDa[4] := 14;
     XDa[5] := 14;
     XDa[6] := 14;
     XDa[7] := 14;
     XDa[8] := 14;

     XUc[1] := 14;
     XUc[2] := 14;
     XUc[3] := 14;
     XUc[4] := 14;
     XUc[5] := 14;

     XDc[1] := 14;
     XDc[2] := 14;
     XDc[3] := 14;
     XDc[4] := 14;
     XDc[5] := 14;

     //#############################################################
     grchk := 35;
     //#############################################################
     grno := 1;
     grstart := False;
     gr[grno] := '';

     for i := 1 to length(Flag) do
     begin
          if (Copy(flag, i, 1) = '_')
               or (Copy(flag, i, 1) = 'X') then
          begin
               if grstart = True then
               begin
                    grno := grno + 1;
                    gr[grno] := '';
               end;
          end
          else
          begin
               gr[grno] := gr[grno] + Copy(flag, i, 1);
               grstart := True;
          end;

     end;
     gtmp := gr[1] + gr[2] + gr[3] + gr[4] + gr[5] + gr[6] + gr[7] + gr[8] +
          gr[9] + gr[10] + gr[11] + gr[12] + gr[13] + gr[14] + gr[15] +
          gr[16];

     if ((Copy(Trim(gtmp), 1, 1) = 'A') or
          (Copy(Trim(gtmp), 1, 1) = 'B') or
          (Copy(Trim(gtmp), 1, 1) = 'C') or
          (Copy(Trim(gtmp), 1, 1) = 'D') or
          (Copy(Trim(gtmp), 1, 1) = 'E')) then
          AorC := 'C'
     else
          AorC := 'A';

     nXray := 0;
     try
     for i := 1 to 16 do
     begin
          if gr[i] <> '' then
          begin
               grsum := 0;
               for j := 1 to length(gr[i]) do
               begin
                    if AorC = 'A' then
                    begin
                         if UorD = 'U' then
                         begin
                              grsum := grsum +
                                   XuA[StrtoInt(Copy(gr[i], j,
                                   1))];
                         end
                         else
                         begin
                              grsum := grsum +
                                   XdA[StrtoInt(Copy(gr[i], j,
                                   1))];
                         end;
                    end
                    else
                    begin
                         cCode := chrToInt(Copy(gr[i], j, 1));
                         if UorD = 'U' then
                         begin
                              grsum := grsum + XuC[cCode];
                         end
                         else
                         begin
                              grsum := grsum + XdC[cCode];
                         end;
                    end;

               end;
               nXray := nXray + Ceil(grSum / grChk);
          end;
          Result := nXray;
     end;
     except

      Result := 0;
     end;
end;

procedure ChkTImage(Sender: TImage; Flag: Boolean);
var
     runDir: string;
begin
     RunDir := ExtractFileDir(application.exename) + '/image/';
     //  RunDir := ExtractFileDir(application.exename)+'/image/default/';

     if Copy((Sender as TImage).Name, 2, 1) = 'i' then
     begin
          if ((Copy((Sender as TImage).Name, 3, 1) = '1') or
               (Copy((Sender as
               TImage).Name, 3, 1) = '2')) then
          begin
               if Flag then
               begin
                    (Sender as TImage).Picture.LoadFromFile(RunDir
                         + 'tb'
                         + (Copy((Sender as TImage).Name, 3, 2)
                         +
                         '.bmp'));
                    (Sender as TImage).Hint := 'O'
               end
               else
               begin
                    (Sender as TImage).Picture.LoadFromFile(RunDir
                         + 't'
                         + (Copy((Sender as TImage).Name, 3, 2)
                         +
                         '.bmp'));
                    (Sender as TImage).Hint := 'X'
               end
          end
          else
               if ((Copy((Sender as TImage).Name, 3, 1) = '3') or
                    (Copy((Sender
                    as TImage).Name, 3, 1) = '4')) then
               begin
                    if Flag then
                    begin
                         (Sender as TImage).Picture.LoadFromFile(RunDir
                              +
                              'tb' + (Copy((Sender as TImage).Name,
                              3, 2)
                              +
                              '.bmp'));
                         (Sender as TImage).Hint := 'O'
                    end
                    else
                    begin
                         (Sender as TImage).Picture.LoadFromFile(RunDir
                              +
                              't' + (Copy((Sender as TImage).Name, 3,
                              2)
                              +
                              '.bmp'));
                         (Sender as TImage).Hint := 'X'
                    end;
               end;
     end
     else
          if Copy((Sender as TImage).Name, 2, 1) = 'c' then
          begin
               if ((Copy((Sender as TImage).Name, 3, 1) = '1') or
                    (Copy((Sender
                    as TImage).Name, 3, 1) = '2')) then
               begin
                    if Flag then
                    begin
                         (Sender as TImage).Picture.LoadFromFile(RunDir
                              +
                              'tb' + InttoStr(StrToInt(Copy((Sender as
                              TImage).Name, 3, 1)) + 4) +
                              (Copy((Sender as
                              TImage).Name, 4, 1) + '.bmp'));
                         (Sender as TImage).Hint := 'O'
                    end
                    else
                    begin
                         (Sender as TImage).Picture.LoadFromFile(RunDir
                              +
                              't' + InttoStr(StrToInt(Copy((Sender as
                              TImage).Name, 3, 1)) + 4) +
                              (Copy((Sender as
                              TImage).Name, 4, 1) + '.bmp'));
                         (Sender as TImage).Hint := 'X'
                    end
               end
               else
                    if ((Copy((Sender as TImage).Name, 3, 1) = '3') or
                         (Copy((Sender as TImage).Name, 3, 1) = '4')) then
                    begin
                         if Flag then
                         begin
                              (Sender as TImage).Picture.LoadFromFile(RunDir
                                   +
                                   'tb' + InttoStr(StrToInt(Copy((Sender
                                   as
                                   TImage).Name, 3, 1)) + 4) +
                                   (Copy((Sender as
                                   TImage).Name, 4, 1) + '.bmp'));
                              (Sender as TImage).Hint := 'O'
                         end
                         else
                         begin
                              (Sender as TImage).Picture.LoadFromFile(RunDir
                                   +
                                   't' + InttoStr(StrToInt(Copy((Sender
                                   as
                                   TImage).Name, 3, 1)) + 4) +
                                   (Copy((Sender as
                                   TImage).Name, 4, 1) + '.bmp'));
                              (Sender as TImage).Hint := 'X'
                         end;
                    end;
          end;

end;

procedure SetTImage(varImage: TadvPanel; tnt: string);
var
     rundir, tmpString: string;
     i, ftime: Integer;
begin
     ftime := gettickcount;
     //  choiceToothClear;
     RunDir := ExtractFileDir(application.exename) + '/image/';
     //  RunDir := ExtractFileDir(application.exename)+'/image/default/';
     if (UpperCase(Copy(tnt, 2, 1)) = 'A') then
     begin
          tmpString := 'Tc' + Copy(Tnt, 1, 1) + '1';
     end
     else
          if (UpperCase(Copy(tnt, 2, 1)) = 'B') then
          begin
               tmpString := 'Tc' + Copy(Tnt, 1, 1) + '2';
          end
          else
               if (UpperCase(Copy(tnt, 2, 1)) = 'C') then
               begin
                    tmpString := 'Tc' + Copy(Tnt, 1, 1) + '3';
               end
               else
                    if (UpperCase(Copy(tnt, 2, 1)) = 'D') then
                    begin
                         tmpString := 'Tc' + Copy(Tnt, 1, 1) + '4';
                    end
                    else
                         if (UpperCase(Copy(tnt, 2, 1)) = 'E') then
                         begin
                              tmpString := 'Tc' + Copy(Tnt, 1, 1) + '5';
                         end
                         else
                         begin
                              tmpString := 'Ti' + Tnt;
                         end;

     for i := 0 to varImage.ControlCount - 1 do
     begin
          if (varImage.Controls[i] is Timage) then
          begin
               if varImage.Controls[i].Name = tmpString then
               begin
                    if Copy(tmpString, 2, 1) = 'i' then //성인치아면
                    begin
                         (varImage.Controls[i] as
                              Timage).Picture.LoadFromFile(RunDir + 'tb'
                              +
                              (Copy(tmpString, 3, 2) + '.bmp'));
                         (varImage.Controls[i] as Timage).Hint
                              :=
                              'O';
                    end
                    else //유치면
                    begin
                         (varImage.Controls[i] as
                              Timage).Picture.LoadFromFile(RunDir + 'tb'
                              +
                              (IntToStr(4 + StrToint(Copy(tmpString,
                              3, 1))) +
                              Copy(tmpString, 4, 1) + '.bmp'));
                         (varImage.Controls[i] as Timage).Hint
                              :=
                              'O';
                    end;
               end;
          end;
     end;
     ExceptLogging('settimage:' + tnt + ':' + inttostr(gettickcount - ftime));
end;

procedure ChgImg(OrigImg: TImage);
var
     runDir: string;
begin
     //  if Edit7.text <> '' then
     //  begin
     RunDir := ExtractFileDir(application.exename) + '/image/';
     //  RunDir := ExtractFileDir(application.exename)+'/image/default/';

     if isClear then
     begin
          //    ChoiceToothClear;
          isClear := False;
     end;

     if Copy(OrigImg.Name, 2, 1) = 'i' then
     begin
          if ((Copy(OrigImg.Name, 3, 1) = '1') or (Copy(OrigImg.Name, 3, 1)
               =
               '2')) then
          begin
               if OrigImg.Hint = 'X' then
               begin
                    OrigImg.Picture.LoadFromFile(RunDir + 'tb' +
                         (Copy(OrigImg.Name, 3, 2) + '.bmp'));
                    OrigImg.Hint := 'O'
               end
               else
               begin
                    OrigImg.Picture.LoadFromFile(RunDir + 't' +
                         (Copy(OrigImg.Name, 3, 2) + '.bmp'));
                    OrigImg.Hint := 'X'
               end
          end
          else
               if ((Copy(OrigImg.Name, 3, 1) = '3') or (Copy(OrigImg.Name,
                    3, 1)
                    = '4')) then
               begin
                    if OrigImg.Hint = 'X' then
                    begin
                         OrigImg.Picture.LoadFromFile(RunDir + 'tb'
                              +
                              (Copy(OrigImg.Name, 3, 2) + '.bmp'));
                         OrigImg.Hint := 'O'
                    end
                    else
                    begin
                         OrigImg.Picture.LoadFromFile(RunDir + 't' +
                              (Copy(OrigImg.Name, 3, 2) + '.bmp'));
                         OrigImg.Hint := 'X'
                    end;
               end;
     end
     else
          if Copy(OrigImg.Name, 2, 1) = 'c' then
          begin
               if ((Copy(OrigImg.Name, 3, 1) = '1') or (Copy(OrigImg.Name,
                    3, 1)
                    = '2')) then
               begin
                    if OrigImg.Hint = 'X' then
                    begin
                         OrigImg.Picture.LoadFromFile(RunDir + 'tb'
                              +
                              InttoStr(StrToInt(Copy(OrigImg.Name, 3, 1)) +
                              4) +
                              (Copy(OrigImg.Name, 4, 1) + '.bmp'));
                         OrigImg.Hint := 'O'
                    end
                    else
                    begin
                         OrigImg.Picture.LoadFromFile(RunDir + 't' +
                              InttoStr(StrToInt(Copy(OrigImg.Name, 3, 1)) +
                              4) +
                              (Copy(OrigImg.Name, 4, 1) + '.bmp'));
                         OrigImg.Hint := 'X'
                    end
               end
               else
                    if ((Copy(OrigImg.Name, 3, 1) = '3') or
                         (Copy(OrigImg.Name,
                         3, 1) = '4')) then
                    begin
                         if OrigImg.Hint = 'X' then
                         begin
                              OrigImg.Picture.LoadFromFile(RunDir +
                                   'tb'
                                   + InttoStr(StrToInt(Copy(OrigImg.Name,
                                   3, 1)) + 4)
                                   + (Copy(OrigImg.Name, 4, 1) + '.bmp'));
                              OrigImg.Hint := 'O'
                         end
                         else
                         begin
                              OrigImg.Picture.LoadFromFile(RunDir +
                                   't' +
                                   InttoStr(StrToInt(Copy(OrigImg.Name, 3,
                                   1)) + 4) +
                                   (Copy(OrigImg.Name, 4, 1) + '.bmp'));
                              OrigImg.Hint := 'X'
                         end;
                    end;
          end;
end;

procedure SetTeeth(varImage: Tadvpanel; sP1, sP2, sP3, sP4: string);
var
     i: Integer;
     ftime: Integer;
begin
     ftime := gettickcount;
     //  choiceToothClear;
       //ToDo:이choiceToothClear하는 시간이 오래걸린다.
       //후에  처리해라....
     ExceptLogging('choiceToothClear' + ':' + inttostr(gettickcount - ftime));

     { if (sP1 = '_______') and
           (sP2 = '________') and
           (sP3 = '________') and
           (sP4 = '________') then
      begin //전체치아 선택시...

           for i := 1 to 8 do
           begin
                SetTImage(varImage, '1' + inttostr(i));
                SetTImage(varImage, '2' + inttostr(i));
                SetTImage(varImage, '3' + inttostr(i));
                SetTImage(varImage, '4' + inttostr(i));
           end;
           exit;
      end;
     }
     for i := 1 to 8 do
     begin
          if sP1 <> '' then
          begin
               if Copy(sP1, i, 1) <> '_' then
                    SetTImage(varImage, '1' + Copy(sP1, i, 1));
          end;
          if sP2 <> '' then
          begin
               if Copy(sP2, i, 1) <> '_' then
                    SetTImage(varImage, '2' + Copy(sP2, i, 1));
          end;
          if sP3 <> '' then
          begin
               if Copy(sP3, i, 1) <> '_' then
                    SetTImage(varImage, '3' + Copy(sP3, i, 1));
          end;
          if sP4 <> '' then
          begin
               if Copy(sP4, i, 1) <> '_' then
                    SetTImage(varImage, '4' + Copy(sP4, i, 1));
          end;
     end;
end;

procedure LoadTeethSet(varForm: Tform; varChart: string);
var
     saveini: Tinifile;
     savepath: string;
     i, j, varTop, varleft, varAngle: integer;
begin
{     savePath := extractfilepath(paramstr(0)) + 'default\' + varChart +
          '.ini';
     saveini := Tinifile.Create(savepath);

     for i := 0 to 31 do
     begin

          varTop := saveini.ReadInteger('TEETHINFO', 'TOP' + inttostr(i),
               100);
          varLeft := saveini.ReadInteger('TEETHINFO', 'LEFT' + inttostr(i),
               100);
          varAngle := saveini.ReadInteger('TEETHINFO', 'ANGLE' +
               inttostr(i), 100);
          (varForm.FindComponent('Ti' + inttostr((((i div 8) * 10) + 10) +
               ((i mod 8) + 1)))
               as
               TImage).Top := varTop;
          (varForm.findComponent('Ti' + inttostr((((i div 8) * 10) + 10) +
               ((i mod 8) + 1)))
               as
               TImage).Left := varLeft;
          (varForm.findComponent('Ti' + inttostr((((i div 8) * 10) + 10) +
               ((i mod 8) + 1)))
               as
               TImage).Angle := varAngle;

     end;

     saveini.Free;    }
end;

function PortionWrite(flag: string):string;
begin
     case strcase(Flag, ['U', 'L', 'U/L', 'UA', 'UL', 'UR', 'LL', 'LA', 'LR']) of
          0:
               begin
                 result:=
                 '#17000,#16000,#15000,#14000,#13000,#12000,#11000,'+
                 '#21000,#22000,#23000,#24000,#25000,#26000,#27000,' ;
               end;
          1:
               begin
                 result:=
                 '#47000,#46000,#45000,#44000,#43000,#42000,#41000,'+
                 '#31000,#34000,#35000,#36000,#37000,#33000,#32000';
                  {  ChkTImage(Ti31, varStat);
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
                    ChkTImage(Ti47, varStat); }
               end;
          2:
               begin
                 result:=
                 '#17000,#16000,#15000,#14000,#13000,#12000,#11000,'+
                 '#21000,#22000,#23000,#24000,#25000,#26000,#27000,'+
                 '#47000,#46000,#45000,#44000,#43000,#42000,#41000,'+
                 '#31000,#34000,#35000,#36000,#37000,#33000,#32000';
                   { ChkTImage(Ti11, varStat);
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
                    ChkTImage(Ti47, varStat);   }
               end;
          3:
               begin
                 result:='#13000,#12000,#11000,'+
                 '#21000,#22000,#23000 ';
                   { ChkTImage(Ti11, varStat);
                    ChkTImage(Ti12, varStat);
                    ChkTImage(Ti13, varStat);
                    ChkTImage(Ti21, varStat);
                    ChkTImage(Ti22, varStat);
                    ChkTImage(Ti23, varStat);  }
               end;
          4:
               begin
                 result:=
                 '#24000,#25000,#26000,#27000';
                {    ChkTImage(Ti24, varStat);
                    ChkTImage(Ti25, varStat);
                    ChkTImage(Ti26, varStat);
                    ChkTImage(Ti27, varStat);  }
               end;
          5:
               begin
                 result:=
                 '#17000,#16000,#15000,#14000';
                 {   ChkTImage(Ti14, varStat);
                    ChkTImage(Ti15, varStat);
                    ChkTImage(Ti16, varStat);
                    ChkTImage(Ti17, varStat);  }
               end;
          6:

               begin
                 result:=
                     '#34000,#35000,#36000,#37000,#33000';
                  {  ChkTImage(Ti34, varStat);
                    ChkTImage(Ti35, varStat);
                    ChkTImage(Ti36, varStat);
                    ChkTImage(Ti37, varStat);  }
               end;
          7:
               begin
                 result:= 
                      '#43000,#42000,#41000,'+
                      '#31000,#33000,#32000';
                  {  ChkTImage(Ti31, varStat);
                    ChkTImage(Ti32, varStat);
                    ChkTImage(Ti33, varStat);
                    ChkTImage(Ti41, varStat);
                    ChkTImage(Ti42, varStat);
                    ChkTImage(Ti43, varStat);  }
               end;
          8:
               begin
                 result:=
                    '#47000,#46000,#45000,#44000' ;
                 {   ChkTImage(Ti44, varStat);
                    ChkTImage(Ti45, varStat);
                    ChkTImage(Ti46, varStat);
                    ChkTImage(Ti47, varStat);  }
               end;
               else
               result:=flag;
     end;
end;


procedure moveimage(varImage: TImage; X, Y: Integer);
begin

     nowpt.X := x;
     nowpt.Y := y;
     DrawRectangleinArea(varImage, nowPt);
end;

procedure DrawRectangleinArea(varImage: TImage; pt: TPoint);
var
     nBitmap: Tbitmap;
     nRect: TRect;
begin

{     nBitmap := TBitmap.Create;
     try
          nBitmap.Width := varImage.bitmap.Width;
          nBitmap.Height := varImage.bitmap.Height;
          nRect.TopLeft := pt;
          nRect.BottomRight := Point(pt.X + varImage.bitmap.Width,
               pt.Y + varImage.bitmap.Height);
          nBitmap.Canvas.CopyRect(nBitmap.Canvas.ClipRect, aBitmap.Canvas,
               nRect);
          varImage.bitmap.Assign(nBitmap);

     finally
          nBitmap.Free;
     end;
     }
end;

{procedure LoadPanorama(varForm: TForm; varImage: TImage; varFileName:
     string; varLocX: integer = 0; varLocY: integer = 0);
var
     varFileExt: string;
     varImgFileName: string;
     varPanoName: string;
begin

     varImgFileName := varFilename;
     varFileExt := ExtractFileExt(varFilename);

     if varFileExt <> '.TIF' then
          varPanoname := copy(ExtractFileName(varFilename), 1,
               length(ExtractFileName(varFilename)) - 5) + varFileExt
     else
          varPanoname := copy(ExtractFileName(varFilename), 1,
               length(ExtractFileName(varFilename)) - 4) + '.BMP';

     if varFilename <> '' then
     begin
          try

               if FileExists(varTempImgDir + varPanoname) then
               begin
                    // LoadImage(Thumbs[ThisIndex].Hint);
                  //  LoadDLLImage(Thumbs[ThisIndex].Hint, varForm);
                  //  varImage.Bitmap.LoadFromFile(varTempImgDir + varpanoname);
                    aBitmap := TBitmap.create;
                    aBitmap.LoadFromFile(varTempImgDir + varpanoname);
                    varImage.Bitmap.assign(abitmap);
                    moveimage(varImage, varLocX, varLocY);

                    varImage.Hint := varTempImgDir + varpanoname;
                    abitmap.free;
               end
               else
               begin
                    if dm_f.ImageDownload(varFilename,
                         configvalue.varServerIp, 9887) = true then
                    begin
                         aBitmap := TBitmap.create;
                         aBitmap.LoadFromFile(varTempImgDir +
                              varpanoname);
                         varImage.Bitmap.assign(abitmap);
                         moveimage(varImage, varLocX, varLocY);
                         varImage.Hint := varTempImgDir + varpanoname;
                         abitmap.free;
                    end
                    else
                    begin
                         varImage.Scale := 1;
                         varImage.Bitmap.LoadFromFile(extractfilepath(paramstr(0)) + 'tempimage\' + 'blankpano.bmp');

                    end;
               end;

          except
               on E: Exception do
                    ShowMessage(E.Message);

          end;
     end
     else
     begin
          varImage.Scale := 1;
          varImage.Bitmap.LoadFromFile(GetConfigDir + 'tempimage\'
               +
               'blank.bmp');
          //  TeethVisible(false);
          TeethVisible(varForm, true);

     end;

end;
}

procedure LoadPanorama(varForm: TForm; varImage: TImage; varFileName:
     string; varLocX: integer = 0; varLocY: integer = 0);
begin
end;

procedure TeethVisible(sender: Tobject; varVisible: boolean);
var
     i, j: integer;
begin

     for i := 1 to 4 do
     begin
          for j := 1 to 8 do
          begin
               ((sender as Tform).findComponent('Ti' + inttostr(i) +
                    inttostr(j))
                    as
                    Timage).Visible := varVisible;
          end;

     end;
end;

procedure initpano;
var
     i, j: integer;
begin
     {   i := imgview321.Layers.Count;
        if i > 0 then
        begin
             if Layercount > 0 then
                  for i := 0 to LayerCount - 1 do
                  begin
                       BA[i].Destroy;
                  end;
        end;
      } LayerCount := 0;
end;

function LoadIniFromDB(varChart: string; varPanoName: string = ''): boolean;
begin
end;
{function LoadIniFromDB(varChart: string; varPanoName: string = ''): boolean;
var
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

     try
          with dm_f.sqlWork do
          begin
               Close;
               SQL.Clear;
               Sql.Add('select * from ma_panoset ');
               Sql.Add('where chart= :chart');

               if varPanoName <> '' then
               begin
                    Sql.Add('and panoname= :panoname');
                    ParamByName('panoname').asString := varPanoName;
               end;
               ParamByName('chart').asString := varChart;

               Open;

               if not isEmpty then
               begin
                    result := true;
                    try

                         BStream :=
                              CreateBlobStream(FieldByName('contents'),
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
                              aString.SaveToFile(extractfilepath(paramstr(0)) + 'default\' + varchart +
                                   '.ini');
                         finally
                              aString.Free;
                         end;

                    finally
                         BStream.Free;

                    end;

                    S := extractfilepath(paramstr(0)) + 'default\' +
                         varChart + '.ini';
                    nFileStream := TFileStream.Create(S, fmOpenRead);
                    BinSize := nFileStream.Size;
                    SetLength(BinData, BinSize);

                    nFileStream.Position := 0;
                    for i := 0 to BinSize - 3 do
                    begin
                         nFileStream.Read(BinData[i], 1);
                    end;
                    nFileStream.Free;

               end
               else
               begin
                    result := false;
               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('Tdm_f.LoadDBini:' + E.Message);
               result := false;
          end;
     end;
end;
}

function calcTeethCnt(varTeeth, varDanwi: string): Double;
var
     aTeeth: TTeeth;
     radd: double;
begin
     aTeeth := TeethCnt(makesp(varTeeth));

     //===================================================================
     if Trim(varDanwi) = 'C' then
     begin
          if Ateeth.nSangF + Ateeth.nSangR +
               Ateeth.nSangL + Ateeth.nCSangF +
               Ateeth.nCSangR + Ateeth.nCSangL > 0 then
               rAdd := rAdd + 1;
          if Ateeth.nHaF + Ateeth.nHaR +
               Ateeth.nHaL + Ateeth.nCHaF +
               Ateeth.nCHaR
               + Ateeth.nCHaL > 0 then
               rAdd := rAdd + 1;
          result := rAdd;
     end
     else
          if Trim(varDanwi) = 'C3' then
          begin // 1/3악당계산
               if Ateeth.nSangF + Ateeth.nCSangF > 0 then
               begin

                    if ((Ateeth.nSangR + Ateeth.nCSangR > 0) or (Ateeth.nSangL
                         + Ateeth.nCSangL > 0)) and (Ateeth.nSangF +
                         Ateeth.nCSangF
                         < 4) then
                    begin
                         rAdd := rAdd + 0.5; //2008.4.23 3-> 4
                    end
                    else
                         if (Ateeth.nSangF + Ateeth.nCSangF < 4) then
                         begin
                              rAdd := rAdd + 0.5; //2008.4.23 3-> 4
                         end
                         else
                         begin
                              rAdd := rAdd + 1;
                         end;

               end;
               if Ateeth.nSangR + Ateeth.nCSangR > 0 then
               begin
                    if Ateeth.nSangR + Ateeth.nCSangR < 3 then
                         rAdd := rAdd + 0.5
                    else
                         rAdd := rAdd + 1;
               end;
               if Ateeth.nSangL + Ateeth.nCSangL > 0 then
               begin
                    if Ateeth.nSangL + Ateeth.nCSangL < 3 then
                         rAdd := rAdd + 0.5
                    else
                         rAdd := rAdd + 1;
               end;
               if Ateeth.nHaF + Ateeth.nCHaF > 0 then
               begin
                    if ((Ateeth.nHaR + Ateeth.nCHaR > 0) or (Ateeth.nHaL +
                         Ateeth.nCHaL > 0)) and (Ateeth.nHaF + Ateeth.nCHaF <
                         4) then
                    begin
                         rAdd := rAdd + 0.5; //2008.4.23 3-> 4
                    end
                    else
                         if (Ateeth.nHaF + Ateeth.nCHaF < 4) then
                         begin
                              rAdd := rAdd + 0.5; //2008.4.23 3-> 4
                         end
                         else
                         begin
                              rAdd := rAdd + 1;
                         end;
               end;
               if Ateeth.nHaR + Ateeth.nCHaR > 0 then
               begin
                    if Ateeth.nHaR + Ateeth.nCHaR < 3 then
                         rAdd := rAdd + 0.5
                    else
                         rAdd := rAdd + 1;
               end;
               if Ateeth.nHaL + Ateeth.nCHaL > 0 then
               begin
                    if Ateeth.nHaL + Ateeth.nCHaL < 3 then
                         rAdd := rAdd + 0.5
                    else
                         rAdd := rAdd + 1;
               end;

               result := rAdd;

          end

          else
               if Trim(varDanwi) = 'T' then
               begin
                    result := ATeeth.Cnt;
                    rAdd := result;
               end
               else
                    if Trim(varDanwi) = 'M' then
                    begin
                         result := 1;
                         rAdd := 1;
                    end
                    else
                         if ((Trim(varDanwi) = '1') or (Trim(varDanwi) = 'V')) then
                         begin
                              rAdd := 1;
                              result := 1;

                         end

                         else {//su_danwi가 없는 것은 치아당, 단 투약은 말고}
                         begin
                              result := ATeeth.Cnt;
                         end;

     //===================================================================

end;

procedure MakePlanImage(Flag: string; sName: string; ModTeethShape1, ModTeethShape2, ModTeethShape3, ModTeethShape4: string);
const
     //     tH = 41;
     //     tW = 191;
     tH = 25;
     tW = 191;

var
     varImage: TImage;
     SS: TSp;
begin
     varImage := Timage.Create(application);
     varImage.Width := tW;
     varImage.Height := tH;

     if Flag <> '' then
     begin
          SS := makesP(Flag);
          varImage.Canvas.Font.Size := 3;
          varImage.Canvas.Font.Color := clBlack;
          varImage.Canvas.font.Style := [];
          varImage.Canvas.brush.Style := bsClear;

          varImage.Canvas.MoveTo(0, (th div 2) + 2);
          varImage.Canvas.LineTo(tw, (th div 2) + 2);
          varImage.Canvas.MoveTo((tw div 2) + 1, 0);
          varImage.Canvas.LineTo((tw div 2) + 1, th);

          varImage.Canvas.TextOut(-3, 0, SbcStrToMbcStr(StringReplace(SS.sP1, '_', ' ', [rfReplaceAll])));
          varImage.Canvas.TextOut(-3, (th div 2) + 1, SbcStrToMbcStr(StringReplace(SS.sP4, '_', ' ', [rfReplaceAll])));
          varImage.Canvas.TextOut((tw div 2) + 2, 0, SbcStrToMbcStr(StringReplace(SS.sP2, '_', ' ', [rfReplaceAll])));
          varImage.Canvas.TextOut((tw div 2) + 2, (th div 2) + 1, SbcStrToMbcStr(StringReplace(SS.sP3, '_', ' ', [rfReplaceAll])));

          varImage.Canvas.Font.Color := clRed;
          varImage.Canvas.font.Style := [];

          varImage.Canvas.TextOut(-3, 0, SbcStrToMbcStr(StringReplace(modTeethShape1, '_', ' ', [rfReplaceAll])));
          varImage.Canvas.TextOut((tw div 2) + 1, 0, SbcStrToMbcStr(StringReplace(modTeethShape2, '_', ' ', [rfReplaceAll])));
          varImage.Canvas.TextOut(-3, (th div 2) + 1, SbcStrToMbcStr(StringReplace(modTeethShape4, '_', ' ', [rfReplaceAll])));
          varImage.Canvas.TextOut((tw div 2) + 1, (th div 2) + 1, SbcStrToMbcStr(StringReplace(modTeethShape3, '_', ' ', [rfReplaceAll])));

          varImage.Picture.SavetoFile('c:\TeethTemp\' + sName + '.bmp');
          varImage.Picture := nil;

     end;
end;

function ConvertTeeth(s1, s2, s3, s4: string): string;
var
     i: Integer;
begin
     Result := '';
     for i := 1 to Length(s1) do
     begin
          if Copy(s1, i, 1) <> '_' then
               Result := Result + ',' + '1' + Copy(s1, i, 1);
     end;
     for i := 1 to Length(s2) do
     begin
          if Copy(s2, i, 1) <> '_' then
               Result := Result + ',' + '2' + Copy(s2, i, 1);
     end;
     for i := 1 to Length(s3) do
     begin
          if Copy(s3, i, 1) <> '_' then
               Result := Result + ',' + '3' + Copy(s3, i, 1);
     end;
     for i := 1 to Length(s4) do
     begin
          if Copy(s4, i, 1) <> '_' then
               Result := Result + ',' + '4' + Copy(s4, i, 1);
     end;
     Result := Copy(Trim(Result), 2, 200);
end;
function ConvertTeeth2(s1, s2, s3, s4: string): string;
var
     i: Integer;
begin
     Result := '';
     for i := 1 to Length(s1) do
     begin
          if Copy(s1, i, 1) <> '_' then
               Result := Result + ',' + '#1' + Copy(s1, i, 1);
     end;
     for i := 1 to Length(s2) do
     begin
          if Copy(s2, i, 1) <> '_' then
               Result := Result + ',' + '#2' + Copy(s2, i, 1);
     end;
     for i := 1 to Length(s3) do
     begin
          if Copy(s3, i, 1) <> '_' then
               Result := Result + ',' + '#3' + Copy(s3, i, 1);
     end;
     for i := 1 to Length(s4) do
     begin
          if Copy(s4, i, 1) <> '_' then
               Result := Result + ',' + '#4' + Copy(s4, i, 1);
     end;
     Result := Copy(Trim(Result), 2, 200);
end;


function calcTeethUpper(varTeeth1, varteeth2, varteeth3, varteeth4:string): integer;
var
       aTeeth: TTeeth;
       radd: double;
begin
       aTeeth := TeethCnt(makesp_Jinryo(varTeeth1, varteeth2, varteeth3, varteeth4));
       result:= Ateeth.nSangF + Ateeth.nSangR +   Ateeth.nSangL ;
end;

function calcTeethLower(varTeeth1, varteeth2, varteeth3, varteeth4:string): integer;
var
       aTeeth: TTeeth;
       radd: double;
begin
       aTeeth := TeethCnt(makesp_Jinryo(varTeeth1, varteeth2, varteeth3, varteeth4));
       result:= Ateeth.nHaF + Ateeth.nHaR +   Ateeth.nHaL ;
end;


function makesP_jinryo(flag1,flag2,flag3,flag4: string): TsP;
begin
       if trim(flag1) <> '' then
          Result.sp1 := flag1
       else
          Result.sp1 := '________';


       if trim(flag2) <> '' then
          Result.sp2 := flag2
       else
          Result.sp2 := '________';


       if trim(flag3) <> '' then
          Result.sp3 := flag3
       else
          Result.sp3 := '________';


       if trim(flag4) <> '' then
          Result.sp4 := flag4
       else
          Result.sp4 := '________';
end;



function  convertTeethNoToOrder(varTeethNo:string):integer;   //Elastic
var
      intTeethOrder : integer;
begin
    intTeethOrder := strCase(varTeethNo, [
       '18','17','16','15','14','13','12','11'
      ,'21','22','23','24','25','26','27','28'
      ,'48','47','46','45','44','43','42','41'
      ,'31','32','33','34','35','36','37','38' ]);

  case   intTeethOrder  of
      0..31 : result:= intTeethOrder ;
  end;


end;


end.

