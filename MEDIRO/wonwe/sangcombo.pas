unit sangcombo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons ;

type
  Tsangcombo_F = class(TForm)
    ListBox1: TListBox;
    Edit2: TEdit;
    ListBox2: TListBox;
    GroupBox1: TGroupBox;
    BitBtn1: TButton;
    BitBtn2: TButton;
    BitBtn4: TButton;
    BitBtn3: TButton;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
  private
          { Private declarations }
  public
          { Public declarations }
    targetGrid: string;
  end;

var
  sangcombo_F: Tsangcombo_F;

implementation

uses uDM, wonwe, jinryo;

{$R *.dfm}

procedure Tsangcombo_F.FormShow(Sender: TObject);
var
  rateStart: Integer;
begin
  rateStart := 0;

  with dm_f.SqlTemp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select * from sangbyung where [use]=''0'' order by rate,s_key,s_kor_name');
    open;
    First;
    ListBox2.Clear;
    ListBox1.Clear;
    if RecordCount > 0 then
    begin
      while not eof do
      begin
        if ((FieldByName('rate').AsInteger = 1) and (rateStart = 0))
          then
        begin
          ListBox2.Items.Add('============================================');
          ListBox1.Items.Add('ZZZ');
          rateStart := 1;
        end;
        ListBox2.Items.Add(FieldByName('S_kor_name').AsString + '('
          + FieldByName('S_key').AsString + ')');
        ListBox1.Items.Add(FieldByName('S_key').AsString);
        Next;
      end;
    end;
  end;
  ListBox2.itemindex := 0;

end;

procedure Tsangcombo_F.BitBtn1Click(Sender: TObject);
var
  Yrow: integer;
begin
  if Copy(ListBox2.Items.Strings[ListBox2.Itemindex], 1, 5) <> '=====' then
  begin
    if Edit2.Text <> '' then
      YRow := StrToInt(Edit2.text)
    else
      YRow := -1;

    if TargetGrid = 'Wonwe' then
    begin
      Wonwe_f.grdMain.Cells[0, yRow] :=
        Copy(Trim(ListBox1.Items.Strings[ListBox2.Itemindex]), 1, 1);
      Wonwe_f.grdMain.Cells[1, yRow] :=
        Copy(Trim(ListBox1.Items.Strings[ListBox2.Itemindex]), 2, 1);
      Wonwe_f.grdMain.Cells[2, yRow] :=
        Copy(Trim(ListBox1.Items.Strings[ListBox2.Itemindex]), 3, 1);
      Wonwe_f.grdMain.Cells[3, yRow] :=
        Copy(Trim(ListBox1.Items.Strings[ListBox2.Itemindex]), 4, 1);
      Wonwe_f.grdMain.Cells[4, yRow] :=
        Copy(Trim(ListBox1.Items.Strings[ListBox2.Itemindex]), 5, 1);
      Wonwe_f.grdMain.Cells[5, yRow] :=
        ListBox2.Items.Strings[ListBox2.Itemindex];
      if YRow = 0 then
      begin
        Wonwe_f.Edit3.Text :=
          ListBox1.Items.Strings[ListBox2.Itemindex];
      end
      else
      begin
        Wonwe_f.Edit4.Text :=
          ListBox1.Items.Strings[ListBox2.Itemindex];
      end;
    end
    else if TargetGrid = 'Main' then
    begin
//      if Jinryo_f.SangChk(ListBox1.Items.Strings[ListBox2.Itemindex]) = 0 then
//      begin
//
//        if Jinryo_f.ComboBox1.Items.IndexOf(ListBox2.Items.Strings[ListBox2.Itemindex]) = -1 then
//        begin
//          if YRow >= 0 then
//          begin
//            Jinryo_f.ComboBox1.Items.Add(ListBox2.Items.Strings[ListBox2.Itemindex] + '(' + Trim(ListBox1.Items.Strings[ListBox2.Itemindex]) + ')');
//            Jinryo_f.ListBoxSang.Items.Add(ListBox1.Items.Strings[ListBox2.Itemindex]);
//            if Jinryo_f.ComboBox1.Items.Count > 0 then
//              Jinryo_f.ComboBox1.ItemIndex := 0;
//          end
//          else
//          begin
//            Jinryo_f.ComboBox1.Items.Add(ListBox2.Items.Strings[ListBox2.Itemindex]);
//            Jinryo_f.ListBoxSang.Items.Add(ListBox1.Items.Strings[ListBox2.Itemindex]);
//          end;
//
//          if Jinryo_f.RealGrid2.Cells[5,
//            Jinryo_f.OrderGroup.ItemIndex].AsString = ''
//            then
//          begin
//            Jinryo_f.RealGrid2.Cells[5,
//              Jinryo_f.OrderGroup.ItemIndex].AsString :=
//              ListBox1.Items.Strings[ListBox2.Itemindex];
//            Jinryo_f.RealGrid2.Cells[9,
//              Jinryo_f.OrderGroup.ItemIndex].AsString :=
//              ListBox2.Items.Strings[ListBox2.Itemindex];
//          end
//          else
//          begin
//            if Jinryo_f.RealGrid2.Cells[6,
//              Jinryo_f.OrderGroup.ItemIndex].AsString =
//              '' then
//            begin
//              Jinryo_f.RealGrid2.Cells[6,
//                Jinryo_f.OrderGroup.ItemIndex].AsString :=
//                ListBox1.Items.Strings[ListBox2.Itemindex];
//              Jinryo_f.RealGrid2.Cells[10,
//                Jinryo_f.OrderGroup.ItemIndex].AsString :=
//                ListBox2.Items.Strings[ListBox2.Itemindex];
//            end
//            else
//            begin
//              if Jinryo_f.RealGrid2.Cells[7, Jinryo_f.OrderGroup.ItemIndex].AsString = '' then
//              begin
//                Jinryo_f.RealGrid2.Cells[7, Jinryo_f.OrderGroup.ItemIndex].AsString := ListBox1.Items.Strings[ListBox2.Itemindex];
//                Jinryo_f.RealGrid2.Cells[11, Jinryo_f.OrderGroup.ItemIndex].AsString := ListBox2.Items.Strings[ListBox2.Itemindex];
//              end
//              else
//              begin
//                if Application.MessageBox('더이상 상병을 추가할 수 없습니다. 이 상병으로 변경할까요?', '확인', MB_YESNO) = 7 then Exit;
//                Jinryo_f.RealGrid2.Cells[7, Jinryo_f.OrderGroup.ItemIndex].AsString := ListBox1.Items.Strings[ListBox2.Itemindex];
//                Jinryo_f.RealGrid2.Cells[11, Jinryo_f.OrderGroup.ItemIndex].AsString := ListBox2.Items.Strings[ListBox2.Itemindex];
//              end;
//            end;
//
//          end;
//        end;
//      end; //여기가지 상병중복 방지기능
    end;
    Close;
  end;
end;

procedure Tsangcombo_F.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tsangcombo_F.BitBtn3Click(Sender: TObject);
begin
  if Copy(ListBox2.Items.Strings[ListBox2.Itemindex], 1, 5) <> '=====' then
  begin
    if ListBox2.ItemIndex >= 0 then
    begin
      with dm_f.SqlWork do
      begin
        Close;
        Sql.Clear;
        Sql.Add('update sangbyung set rate=0 where s_key=:SCode');
        ParamByName('SCode').AsString :=
          ListBox1.Items.Strings[ListBox2.Itemindex];
        execSql;
        ShowMessage('자주쓰는 상병으로 등록되었습니다');
      end;
    end;
  end;
end;

procedure Tsangcombo_F.BitBtn4Click(Sender: TObject);
begin
  if Copy(ListBox2.Items.Strings[ListBox2.Itemindex], 1, 5) <> '=====' then
  begin
    if ListBox2.ItemIndex >= 0 then
    begin
      with dm_f.SqlWork do
      begin
        Close;
        Sql.Clear;
        Sql.Add('update sangbyung set rate=1 where s_key=:SCode');
        ParamByName('SCode').AsString :=
          ListBox1.Items.Strings[ListBox2.Itemindex];
        execSql;
        ShowMessage('자주쓰는 상병에서 해제되었습니다');
      end;
    end;
  end;
end;

procedure Tsangcombo_F.ListBox2DblClick(Sender: TObject);
begin
  BitBtn1Click(Self);
end;

end.

