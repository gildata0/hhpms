unit findPt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,     ExtCtrls, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvUtil;

type
  TfindPt_f = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    grdFind: TAdvStringGrid;
    procedure spSkinButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spSkinButton3Click(Sender: TObject);
    procedure spSkinButton2Click(Sender: TObject);
    procedure grdFindDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  findPt_f: TfindPt_f;

implementation

uses doc_main, uDM, uFunctions;

{$R *.dfm}

procedure TfindPt_f.spSkinButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfindPt_f.FormShow(Sender: TObject);
begin
  if Edit1.Text <> '' then spSkinButton3Click(Self);
end;

procedure TfindPt_f.spSkinButton3Click(Sender: TObject);
begin
//  grdFind.Clear;


  grdFind.RemoveRows(1, grdFind.RowCount - 1);
//  grdFind.RowCount := 8;
  //if Length(Trim(Edit1.Text)) >= 4 then
  begin
    with dm_f.sqlfind do
    begin
      close;
      sql.Clear;
      Sql.Add('select chart,name, kiho, k_number, piboName,  jumin, ');
      Sql.Add('h_juso ');
      //sql.Add(',dbo.f_GetFullAge((case when substring(jumin,7,1) in (''3'',''4'') then ''20''+jumin else ''19''+jumin end),getdate()) as nai');
      Sql.Add('from view_gogek where ');
      if ComboBox1.Itemindex = 0 then
      begin
        //Sql.Add(' i.chart like :chart');
        //ParamByName('chart').AsString := Trim(Edit1.Text) + '%';
        Sql.Add(' chart = :chart    ');
        ParamByName('chart').AsString := Trim(Edit1.Text);
      end
      else if comboBox1.ItemIndex = 1 then
      begin
        Sql.Add(' name like :name');
        ParamByName('name').AsString := '%' + Trim(Edit1.Text) + '%';
      end;
      Open;
      First;

      if not isEmpty then
      begin
     //   grdFind.Clear;
        while not eof do
        begin
          grdFind.AddRow;
          grdFind.Cells[1, grdFind.RowCount - 1] := fieldByName('chart').AsString;
          grdFind.Cells[2, grdFind.RowCount - 1] := fieldByName('name').AsString;
          grdFind.Cells[3, grdFind.RowCount - 1] := fieldByName('jumin').AsString;

          grdFind.Cells[4, grdFind.RowCount - 1] := NaiCalc(FieldByname('jumin').Asstring, formatDateTime('yyyy-mm-dd',
                    Main_f.RelDate.Date));


          //grdFind.Cells[3, grdFind.RowCount - 1] := '';  //fieldByName('nai').AsString;
          grdFind.Cells[5, grdFind.RowCount - 1] := '';  //fieldByName('chamgo').AsString;
          grdFind.Cells[6, grdFind.RowCount - 1] := fieldByName('h_juso').AsString;
          grdFind.Cells[7, grdFind.RowCount - 1] := fieldByName('kiho').AsString;
          grdFind.Cells[8, grdFind.RowCount - 1] := '';
          grdFind.Cells[9, grdFind.RowCount - 1] := fieldByName('k_number').AsString;
          grdFind.Cells[10, grdFind.RowCount - 1] := fieldByName('PiboName').AsString;
          Next;
        end;
       // grdFind.Row := 0;

        grdFind.AutoNumberCol(0);
        spSkinButton2.Default := True;

        grdFind.SetFocus;
      end
      else
      begin
        ShowMessage('조건을 만족하는 자료가 없습니다');
        Edit1.Text := '';
        Edit1.SetFocus;
      end;
    end;
  end
  //else
  //begin
  //  ShowMessage('검색어가 너무 짧습니다. 한글2자이상 입력하세요');
  //  Edit1.SetFocus;
  //end;
end;

procedure TfindPt_f.spSkinButton2Click(Sender: TObject);
begin
  grdFindDblClick(Self);
end;

procedure TfindPt_f.grdFindDblClick(Sender: TObject);
var sSex: string;
begin
  if ((grdFind.rowcount > 1) and (grdFind.Row >= 1)) then
  begin
    Main_f.edit1.Text := grdFind.Cells[2, grdFind.Row];
    Main_f.edit2.Text := grdFind.Cells[1, grdFind.Row];
    Main_f.EdtJuminNo.Text := Copy(grdFind.Cells[3, grdFind.Row], 1, 6) + '-' + Copy(grdFind.Cells[3, grdFind.row], 7, 7);
    Main_f.EdtPadd.Text := grdFind.Cells[6, grdFind.Row];
    main_f.EdtAge.Text := grdFind.Cells[4, grdFind.Row];
    sSex := Copy(grdFind.Cells[3, grdFind.row], 7, 1);
    if ((sSex = '3') or (sSex = '4')) then
      Main_f.edtBd.Text := '20' + Copy(grdFind.Cells[3, grdFind.Row], 1, 2) + '년 '
          + Copy(grdFind.Cells[3, grdFind.Row], 3, 2) + '월 '
             + Copy(grdFind.Cells[3, grdFind.Row], 5, 2) + '일'
    else Main_f.edtBd.Text := '19' + Copy(grdFind.Cells[3, grdFind.Row], 1, 2) + '년 '
          + Copy(grdFind.Cells[3, grdFind.Row], 3, 2) + '월 '
          + Copy(grdFind.Cells[3, grdFind.Row], 5, 2) + '일';
    if ((sSex = '1') or (sSex = '3')) then
      Main_f.edtGender.itemindex := 0
    else Main_f.edtGender.itemindex := 1;
    Main_f.EdtChartNo.Text := grdFind.Cells[1, grdFind.Row];
    Main_f.EdtPName.Text := grdFind.Cells[2, grdFind.Row];
    Main_f.edtSeqNo.Text := Main_f.GetSerial(grdFind.Cells[1, grdFind.Row], Main_f.lblKind.Caption);
    Main_f.edit7.text:= grdFind.Cells[7, grdFind.Row];
    Main_f.edit8.text:='';
    Main_f.edit9.text:= grdFind.Cells[9, grdFind.Row];
    Main_f.edit10.text:= grdFind.Cells[10, grdFind.Row];

    Close;
  end;
end;

end.

