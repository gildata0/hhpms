unit SangSeek;
interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,   ExtCtrls, inifiles,

  uni, db,

  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ComCtrls, AdvSplitter, FormSize,
  AdvUtil;
type

     PMyRec = ^TMyRec;
     TMyRec = record
          Title: string;
          Path: string;

     end;

     PMyRec2 = ^TMyRec2;
     TMyRec2 = record
          FName: string;

     end;



     PMyRec3 = ^TMyRec3; // MMS전송용 이미지 폴더
     TMyRec3 = record
          FDirName: string;

     end;


type
  TSangSeek_f = class(TForm)
    pltop: TPanel;
    edtSearch: TEdit;
    rbCode: TRadioButton;
    rbKorean: TRadioButton;
    btnSearch: TButton;
    BitBtn2: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    rbEng: TRadioButton;
    Panel2: TPanel;
    grdmain: TAdvStringGrid;
    tvDiseaseCode: TTreeView;
    AdvSplitter1: TAdvSplitter;
    FormSize1: TFormSize;
    procedure BitBtn2Click(Sender: TObject);
    procedure rbKoreanClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure grdmainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure tvDiseaseCodeClick(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure grdmainGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
  private
    procedure MakeTreeView;
    procedure searchDiseaseCode(treePath:string);
          { Private declarations }
  public
          { Public declarations }
    gsGubn: string; // 1: PWonwe, 2:JinryobiOpt , 3:Main
  end;

var
  SangSeek_f: TSangSeek_f;

implementation

uses uDM, uFunctions, uFormInit;//,  wonwe ;

{$R *.dfm}



procedure TSangSeek_f.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TSangSeek_f.rbKoreanClick(Sender: TObject);
begin
//  grdmain.RemoveRows(1,grdmain.rowcount-1);
//  edtSearch.Text := '';


  if rbKorean.Checked = True then
  begin
    edtSearch.ImeMode := imSHanguel;
  end
  else
  begin
    edtSearch.ImeMode := imSAlpha;
  end;

  edtSearch.SetFocus;
end;

procedure TSangSeek_f.tvDiseaseCodeClick(Sender: TObject);
begin
     if tvDiseaseCode.Selected.HasChildren = False then
     begin
           searchDiseaseCode(PMyRec(tvDiseaseCode.Selected.Data)^.Path);
     end;

end;



procedure TSangSeek_f.searchDiseaseCode(treePath:string);
var
     tempQuery : TuniQuery ;
     i : integer;
     paramA, paramB : string;
begin
     try
        i:= 0;

        paramA := substr( treePath, 1, '-');
        paramB := substr( treePath, 2, '-');

        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

        grdmain.BeginUpdate;
        grdmain.removeRows(1, grdMain.rowcount -1);

         with tempQuery do
             begin
             try
              Close;
              SQL.Clear;


                //select * from sangbyung
                //where substring(s_key,1,3)  between  'C00' and  'D48'
                //order by s_key

              SQL.Add('select * from sangbyung                                     ');
              SQL.Add(' where  substring(s_key,1,3)  between  :paramA and  :paramB  and fullCode <> ''N''');
              ParamByName('paramA').AsString := ParamA;
              ParamByName('paramB').AsString := ParamB;
              SQL.Add('order by s_kor_name');


              Open;
              if not isEmpty then
              begin

                label2.caption:= inttoStr( recordcount);
                grdmain.RowCount :=    recordcount + 1;
                while not eof do
                begin


                  i:= i+1;
                  grdmain.Cells[1, i] := FieldByName('s_key').AsString;
                  grdmain.Cells[2, i] := FieldByName('s_kor_name').AsString;
                  grdmain.Cells[3, i] := FieldByName('s_eng_name').AsString;
                  Next;

                end;

              end ;


            except

            end;
         end;
  finally
     grdmain.AutoNumberCol(0);
     grdmain.EndUpdate;
     tempQuery.Free;
  end;


end;



procedure TSangSeek_f.btnSearchClick(Sender: TObject);
var
     tempQuery : TuniQuery ;
     i , j: integer;
     scanCount: integer;
     szArrString: TArrString;
     findWord : string;
     sqlSelText : string;

begin
     try
        i:= 0;

        tempQuery := TuniQuery.create(self);
        tempQuery.Connection:= dm_f.UniConnection1 ;

        grdmain.BeginUpdate;
        grdmain.removeRows(1, grdMain.rowcount -1);


        SetLength(szArrString,  1);
        ScanCount := ScanString(pChar(edtSearch.text),  szArrString, ' ',  ' ');

         with tempQuery do
             begin
             try
              Close;
              SQL.Clear;


              if rbKorean.Checked = True then
              begin
                //띄어쓰기로 검색어 두개 이상 만들기


                     sqlSelText:= 'select * from sangbyung  where fullCode <> ''N'' ';



                for j := 1 to ScanCount do
                begin
                      findWord := substr(edtSearch.text, j, ' ');

                      if trim(findWord) <> ''  then
                      begin

                        if j = 1 then
                        begin
                        if ScanCount > 1 then

                          sqlSelText :=  sqlSelText +' and '+ ' ( s_kor_name  like '+''''+ '%'+ trim(findWord) + '%' +''''// :s_kor_name ' ;
                        else
                          sqlSelText :=  sqlSelText +' and '+ '  s_kor_name  like ' +''''+ '%'+ trim(findWord) + '%' +'''';
                       //   ParamByName('s_kor_name').AsString := '%'+ edtSearch.text + '%';
                       //   ParamByName('s_kor_name').AsString := '%'+ trim(findWord) + '%';
                        end;


                        if j > 1 then
                        begin
                          //   SQL.Add(' and s_kor_name  like :s_kor_name');
                            sqlSelText :=  sqlSelText  +  ' and s_kor_name  like '+ ''''+ '%'+ trim(findWord) + '%' +'''';

                           //  ParamByName('s_kor_name').AsString := '%'+ trim(findWord) + '%';

                        end;

                      end;


                end;
                        if ScanCount > 1 then
                            sqlSelText :=  sqlSelText  + ' ) ';

                        SQL.Text := sqlSelText;
                        SQL.Add('order by s_kor_name');
              end
              else
              if rbEng.Checked = True then
              begin
                SQL.Add('select * from sangbyung  where s_eng_name  like :s_eng_name and fullCode <> ''N''');
                ParamByName('s_eng_name').AsString := '%'+ edtSearch.text + '%';
                SQL.Add('order by s_eng_name');
              end
              else
              begin
                SQL.Add('select * from sangbyung where s_key like :s_key and  fullCode <> ''N''');//and use1=''1''  and bul <> ''N''');
                ParamByName('s_key').AsString := edtSearch.text + '%';
                SQL.Add('order by s_key');
               end;


              Open;
              if not isEmpty then
              begin

                label2.caption:= inttoStr( recordcount);
                grdmain.RowCount :=    recordcount + 1;
                while not eof do
                begin


                  i:= i+1;
                  grdmain.Cells[1, i] := FieldByName('s_key').AsString;
                  grdmain.Cells[2, i] := FieldByName('s_kor_name').AsString;
                  grdmain.Cells[3, i] := FieldByName('s_eng_name').AsString;
                  Next;

                end;

              end ;


            except

            end;
         end;
  finally
     grdmain.AutoNumberCol(0);
     grdmain.EndUpdate;
     tempQuery.Free;
  end;


end;

procedure TSangSeek_f.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
       if key=#13  then
       begin
            key:=#0;
            btnSearchClick(self);
       end;
end;

procedure TSangSeek_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:= caFree;
end;

procedure TSangSeek_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
    path     : string;
    FormInit : TIniFile;
begin
      Path := GetConfigDir + 'db.ini';

     FormInit := TIniFile.Create(Path);
     FormInit.WriteInteger('splitInfo', 'DiseaseCodeWidth',tvDiseaseCode.Width);

     FormInit.Free;


end;

procedure TSangSeek_f.FormCreate(Sender: TObject);
begin
     initAdvGrid(grdMain);

end;

procedure TSangSeek_f.FormDestroy(Sender: TObject);
begin
       SangSeek_f := nil;
end;

procedure TSangSeek_f.FormShow(Sender: TObject);
var
    path     : string;
    FormInit : TIniFile;
begin
      Path := GetConfigDir + 'db.ini';

     FormInit := TIniFile.Create(Path);
     tvDiseaseCode.Width := FormInit.ReadInteger('splitInfo', 'DiseaseCodeWidth', 250);

     FormInit.Free;

     MakeTreeView;
end;

procedure TSangSeek_f.MakeTreeView;

var
     TreeTemp1: TTreeNode;
     MyRecPtr: PMyRec;
     I: Integer;
begin
     TreeTemp1 := nil;
     for I := tvDiseaseCode.Items.Count - 1 downto 0 do
     begin
          Dispose(tvDiseaseCode.Items.Item[I].Data);
          tvDiseaseCode.Items.Item[I].Destroy;
     end;
     with dm_f.sqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_basic          ');
          Sql.Add(' where Substring(code,1,3)=:Kind');
          Sql.Add(' order by val                   ');
          ParamByName('kind').AsString := '120';
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    New(MyRecPtr);
                    MyRecPtr^.Title :=   FieldByName('Disp').AsString;
                    MyRecPtr^.Path  :=   FieldByName('remark').AsString;
                    if Copy(FieldByName('code').AsString, 1, 4) =   '1200' then
                    begin
                         TreeTemp1 := tvDiseaseCode.Items.AddChildObject(nil,
                              trim(FieldByName('Disp').AsString)
                                  +'('+ trim(FieldByName('val').AsString) +')' ,
                              MyRecPtr);
                         TreeTemp1.ImageIndex := 0;
                         TreeTemp1.SelectedIndex := 1;

                    end
                    else
                        // if copy(FieldByName('val').AsString,1,1) = MyRecPtr^.Path then
                       if   Copy(FieldByName('code').AsString, 1, 4) <> '1200' then
                         begin
                              tvDiseaseCode.Items.AddChildObject(TreeTemp1,
                                   trim(FieldByName('Disp').AsString)
                                       +'('+ trim(FieldByName('val').AsString) +')' ,
                                   MyRecPtr);
                              TreeTemp1.ImageIndex := 2;
                              TreeTemp1.SelectedIndex := 3;

                         end;
                    Next;
               end;
          end;
     end;

end;

procedure TSangSeek_f.grdmainDblClickCell(Sender: TObject; ARow, ACol: Integer);
var
    yRow: Integer;
    sCode, sname: string;
begin

//상병추가
{  if gsGubn = '3' then
  begin
    if Edit2.Text <> '' then
      YRow := StrToInt(Edit2.text)
    else
      YRow := -1;

    sCode := Trim(grdmain.Cells[0, grdmain.Row] );
    sName := Trim(grdmain.Cells[1, grdmain.Row] );

    Jinryo_f.ComboBox1.Clear;
    Jinryo_f.ListBoxSang.Clear;
    Jinryo_f.ComboBox1.Items.Add(sName + '(' + sCode + ')');
    Jinryo_f.ListBoxSang.Items.Add(sCode);

    Jinryo_f.RealGrid2.Cells[5, Jinryo_f.OrderGroup.ItemIndex].AsString := sCode;
    Jinryo_f.RealGrid2.Cells[9, Jinryo_f.OrderGroup.ItemIndex].AsString := sName + '(' + sCode + ')';
    Close;

  end
  else if gsGubn = '5' then
  begin
    if Edit2.Text <> '' then
      YRow := StrToInt(Edit2.text)
    else
      YRow := 0;
    Wonwe_f.RealGrid3.Cells[0, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row] ), 1, 1);
    Wonwe_f.RealGrid3.Cells[1, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row] ), 2, 1);
    Wonwe_f.RealGrid3.Cells[2, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row] ), 3, 1);
    Wonwe_f.RealGrid3.Cells[3, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row] ), 4, 1);
    Wonwe_f.RealGrid3.Cells[4, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row] ), 5, 1);
    Wonwe_f.RealGrid3.Cells[5, yRow].AsString := grdmain.Cells[1, grdmain.Row] ;
    if YRow = 0 then
    begin
      Wonwe_f.Edit3.Text := grdmain.Cells[0, grdmain.Row].AsString;
    end
    else
    begin
      Wonwe_f.Edit4.Text := grdmain.Cells[0, grdmain.Row].AsString;
    end;
    Close;
  end
  else
  begin
    ModalResult := mrOk;
  end;
}


{  if gsGubn = '3' then
  begin
    if Edit2.Text <> '' then
      YRow := StrToInt(Edit2.text)
    else
      YRow := -1;
    if Jinryo_f.SangChk(grdmain.Cells[0, grdmain.Row].AsString) = 0 then
    begin
      if Jinryo_f.ComboBox1.Items.IndexOf(grdmain.Cells[1, grdmain.Row].AsString) = -1 then
      begin
        if YRow >= 0 then
        begin
          Jinryo_f.ComboBox1.Items.Add(grdmain.Cells[1, grdmain.Row].AsString + '(' + Trim(grdmain.Cells[0, grdmain.Row].AsString) + ')');
          Jinryo_f.ListBoxSang.Items.Add(grdmain.Cells[0, grdmain.Row].AsString);
          if Jinryo_f.ComboBox1.Items.Count > 0 then
            Jinryo_f.ComboBox1.ItemIndex := 0;
        end
        else
        begin
          Jinryo_f.ComboBox1.Items.Add(grdmain.Cells[1, grdmain.Row].AsString + '(' + Trim(grdmain.Cells[0, grdmain.Row].AsString) + ')');
          Jinryo_f.ListBoxSang.Items.Add(grdmain.Cells[0, grdmain.Row].AsString);
        end;

        if Jinryo_f.RealGrid2.Cells[5, Jinryo_f.OrderGroup.ItemIndex].AsString = ''
          then
        begin
          Jinryo_f.RealGrid2.Cells[5, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[0, grdmain.Row].AsString;
          Jinryo_f.RealGrid2.Cells[9, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[1, grdmain.Row].AsString;
        end
        else
        begin
          if Jinryo_f.RealGrid2.Cells[6, Jinryo_f.OrderGroup.ItemIndex].AsString = '' then
          begin
            Jinryo_f.RealGrid2.Cells[6, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[0, grdmain.Row].AsString;
            Jinryo_f.RealGrid2.Cells[10, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[1, grdmain.Row].AsString;
          end
          else
          begin
            if Jinryo_f.RealGrid2.Cells[7, Jinryo_f.OrderGroup.ItemIndex].AsString =
              '' then
            begin
              Jinryo_f.RealGrid2.Cells[7, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[0, grdmain.Row].AsString;
              Jinryo_f.RealGrid2.Cells[11, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[1, grdmain.Row].AsString;
            end
            else
            begin
              if
                Application.MessageBox('더이상 상병을 추가할 수 없습니다. 이 상병으로 변경할까요?', '확인', MB_YESNO) = 7 then
                Exit;
              Jinryo_f.RealGrid2.Cells[7, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[0, grdmain.Row].AsString;
              Jinryo_f.RealGrid2.Cells[11, Jinryo_f.OrderGroup.ItemIndex].AsString := grdmain.Cells[1, grdmain.Row].AsString;
            end;
          end;
        end;
      end;
    end;  //여기까지 상병중복 방지
    Close;
  end

  else if gsGubn = '5' then
  begin
    if Edit2.Text <> '' then
      YRow := StrToInt(Edit2.text)
    else
      YRow := 0;
    Wonwe_f.RealGrid3.Cells[0, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row].AsString), 1, 1);
    Wonwe_f.RealGrid3.Cells[1, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row].AsString), 2, 1);
    Wonwe_f.RealGrid3.Cells[2, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row].AsString), 3, 1);
    Wonwe_f.RealGrid3.Cells[3, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row].AsString), 4, 1);
    Wonwe_f.RealGrid3.Cells[4, yRow].AsString := Copy(Trim(grdmain.Cells[0, grdmain.Row].AsString), 5, 1);
    Wonwe_f.RealGrid3.Cells[5, yRow].AsString := grdmain.Cells[1, grdmain.Row].AsString;
    if YRow = 0 then
    begin
      Wonwe_f.Edit3.Text := grdmain.Cells[0, grdmain.Row].AsString;
    end
    else
    begin
      Wonwe_f.Edit4.Text := grdmain.Cells[0, grdmain.Row].AsString;
    end;
    Close;
  end
  else
  begin
    ModalResult := mrOk;
  end;  }
//  insertSangByung(sCode, sName, '','0','0','','');

//        if gsGubn = '3' then //Jinryo_f
//        begin
//               Jinryo_f.grdSangByung.AddRow;
//
//               Jinryo_f.grdSangByung.Cells[6, Jinryo_f.grdSangByung.RowCount-1 ]
//                        := grdmain.Cells[1, grdmain.Row] ;     //Code
//
//               Jinryo_f.grdSangByung.Cells[10, Jinryo_f.grdSangByung.RowCount-1 ]
//                        := grdmain.Cells[2, grdmain.Row] ;     //Kor_Name
//
////               Jinryo_f.grdSangByung.Cells[3, Jinryo_f.grdSangByung.RowCount-1 ]
////                        := grdmain.Cells[3, grdmain.Row] ;     //Kor_Name
//
//        end
//            else
//            if gsGubn = '5' then //Wonwe_f
//            begin
//
//            end;
    ModalResult := mrOk;
end;
procedure TSangSeek_f.grdmainGetCellBorder(Sender: TObject; ARow, ACol: Integer;
  APen: TPen; var Borders: TCellBorders);
begin
   if (aCol > 0) and (aRow > 0) then
          begin

               Borders := [cbTop];

               APen.Width := 2;
               APen.Color := $00f2e6e2;//clSilver; //clGray;

           end;
end;

end.

select top 100 s_key1, sang1, count(sang1) as nCount from jinryo_o
where sang1 <> '' and s_key1 not like 'ch%'
group by  s_key1, sang1
order by  count(sang1)  desc





