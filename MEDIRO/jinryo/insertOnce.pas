unit insertOnce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  ComCtrls,  Grids,
  AdvObj, BaseGrid, AdvGrid, Spin, ExtCtrls, StdCtrls, AdvUtil;

type
  TinsertOnce_F = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    RealGrid1: TAdvStringGrid;
    realgrid2: TAdvStringGrid;
    realgrid3: TAdvStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxSpinEdit1: TSpinEdit;
    RxSpinEdit2: TSpinEdit;
    RxSpinEdit3: TSpinEdit;
    realgrid4: TAdvStringGrid;
    realgrid5: TAdvStringGrid;
    procedure spSkinButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure insertsuga(sCode: string);
    procedure RealGrid2DblClick(Sender: TObject);
    procedure spSkinButton1Click(Sender: TObject);
    procedure spSkinButton3Click(Sender: TObject);
    procedure SeekItem(AGrid: TAdvStringGrid; Keyword: string; Flag: string);
    procedure InsertDrug(sCode, nIlsu, nQty, nIltu: string);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure realgrid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure RealGrid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure realgrid3DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure realgrid4DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure realgrid5DblClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  insertOnce_F: TinsertOnce_F;

implementation

uses uConfig, uDM, uJinryoCalc, Jinryo, uMain;

{$R *.dfm}

procedure TinsertOnce_F.spSkinButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TinsertOnce_F.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TinsertOnce_F.insertsuga(sCode: string);
var nDanga: Integer;
begin
  with dm_f.SqlTemp do
  begin

     if (jinryo_f.dMain.Date > StrToDate('2009-12-31')) and (sCode = 'ZN061001') then
                  sCode := 'N0061001';
              if (jinryo_f.dMain.Date > StrToDate('2009-12-31')) and (sCode = 'ZN051016') then
                  sCode := 'N0051016';
              if (jinryo_f.dMain.Date > StrToDate('2009-12-31')) and (sCode = 'ZN051017') then
                  sCode := 'N0051017';
              if (jinryo_f.dMain.Date > StrToDate('2009-12-31')) and (sCode = 'ZN051018') then
                  sCode := 'N0051018';
              if (jinryo_f.dMain.Date > StrToDate('2009-12-31')) and (sCode = 'ZN051019') then
                  sCode := 'N0051019';
              if (jinryo_f.dMain.Date > StrToDate('2009-12-31')) and (sCode = 'ZN051020') then
                  sCode := 'N0051020';



    Close;
    Sql.Clear;
    Sql.Add('select * from suga where su_key=:su_key');
    ParamByName('su_key').AsString := sCode;
    Open;
    First;
    if not isEmpty then
    begin
      jinryo_f.grdJx2.AddRow;

      if ((jinryo_f.cbJong.itemindex >= 0)
             and (jinryo_f.cbJong.itemindex <= 2)) then
      begin
        nDanga := FieldByName('bo_dan').AsInteger;
      end
      else if (jinryo_f.cbJong.itemindex = 6) then
      begin
        nDanga := FieldByName('ja_dan').AsInteger;
      end
      else
      begin
        nDanga := FieldByName('il_dan').AsInteger;
      end;



      if (FieldByName('Su_gu1').AsString = '1') then
      begin
        jinryo_f.grdJx2.Cells[0, jinryo_f.grdJx2.RowCount - 1] := '재료';
      end
      else if (FieldByName('Su_gu1').AsString = '2') then
      begin
        jinryo_f.grdJx2.Cells[0, jinryo_f.grdJx2.RowCount - 1] := '행위';
      end
      else if ((FieldByName('Su_gu1').AsString = '3') or (FieldByName('Su_gu1').AsString = '4')) then
      begin
        jinryo_f.grdJx2.Cells[0, jinryo_f.grdJx2.RowCount - 1] := '비급';
      end;


      jinryo_f.grdJx2.Cells[1, jinryo_f.grdJx2.RowCount - 1] := FieldByName('Su_kor_name').AsString;

      if ((FieldByName('su_gu3').AsString = '09') or (FieldByName('su_gu3').AsString = '10') or
        (FieldByName('su_gu3').AsString = '11') or (FieldByName('su_gu3').AsString = '12'))
        then
      begin
        if FieldByName('su_sobulru').AsString = '9' then
          jinryo_f.grdJx2.Cells[0, jinryo_f.grdJx2.RowCount - 1] := '99';

        jinryo_f.grdJx2.Cells[2, jinryo_f.grdJx2.RowCount - 1] := FloatToStr(RxSpinEdit1.Value);
                              //수량
        jinryo_f.grdJx2.Cells[3, jinryo_f.grdJx2.RowCount - 1] := FloatToStr(RxSpinEdit3.Value);
      end
      else
      begin
        // 병원인증
        //if  FieldByName('wetak_yul').AsInteger > 1 then
        //    jinryo_f.grdJx2.Cells[2, jinryo_f.grdJx2.RowCount - 1].AsInteger := FieldByName('wetak_yul').AsInteger //수량
        //else
        jinryo_f.grdJx2.ints[2, jinryo_f.grdJx2.RowCount - 1] := 1; //수량
        jinryo_f.grdJx2.Cells[3, jinryo_f.grdJx2.RowCount - 1] := '1'; //일수
      end;


      jinryo_f.grdJx2.ints[5, jinryo_f.grdJx2.RowCount - 1] := nDanga;
      if ((jinryo_f.dMain.Date < StrToDate('2004-05-01')) and (FieldByName('su_key').AsString = 'L7201006')) then
        jinryo_f.grdJx2.Ints[6, jinryo_f.grdJx2.RowCount - 1] := 50
      else
        jinryo_f.grdJx2.Ints[6, jinryo_f.grdJx2.RowCount - 1] := FieldByName('dan_qty').AsInteger;



      jinryo_f.grdJx2.Cells[7, jinryo_f.grdJx2.RowCount - 1] := FieldByName('su_key').AsString;
      jinryo_f.grdJx2.Cells[8, jinryo_f.grdJx2.RowCount - 1] := FieldByName('Su_gu1').AsString;
      jinryo_f.grdJx2.Cells[9, jinryo_f.grdJx2.RowCount - 1] := FieldByName('Su_gu3').AsString;
      jinryo_f.grdJx2.Cells[10, jinryo_f.grdJx2.RowCount - 1] := FieldByName('su_soa').AsString;

      if jinryo_f.chbYagan.Checked then //야간 체크 되어 있으면
      begin
        jinryo_f.grdJx2.Cells[11, jinryo_f.grdJx2.RowCount - 1] := FieldByName('Su_yagan').AsString;
      end
      else //체크 안되어 있으면
      begin
        if FieldByName('Su_yagan').AsString = '1' then //야간 가산 되는 것은
          jinryo_f.grdJx2.Cells[11, jinryo_f.grdJx2.RowCount - 1] := '0' //0으로 하고
        else jinryo_f.grdJx2.Cells[11, jinryo_f.grdJx2.RowCount - 1] := ''; // 아닌 것은 ''로 둔다
      end;




      jinryo_f.grdJx2.ints[12, jinryo_f.grdJx2.RowCount - 1] := 1;  //        := OrderGroup.Items.Count;


      if FieldByName('Su_gu3').AsString = '09' then
        jinryo_f.grdJx2.Cells[14, jinryo_f.grdJx2.RowCount - 1] := FloatToStr(RxSpinEdit2.Value);

//(AGrid: TRealGrid; jinDay : string; ARow: Integer; boolGasan:  Boolean; age:string='20' ): Integer;
          
      jinryo_f.grdJx2.Ints[4, jinryo_f.grdJx2.RowCount - 1] :=
//          Calckumak(jinryo_f.grdJx2,
//         FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
//         jinryo_f.grdJx2.Rowcount - 1, True,
//         jinryo_f.lblAge.caption);


          CalcKumak(jinryo_f.grdJx2.cells[7, jinryo_f.grdJx2.RowCount - 1],//suKey:string;
                  jinryo_f.grdJx2.Ints[5, jinryo_f.grdJx2.RowCount - 1],//nDanga:integer ;
                  jinryo_f.grdJx2.Ints[2, jinryo_f.grdJx2.RowCount - 1], //nQty:integer ;
                  jinryo_f.grdJx2.Ints[3, jinryo_f.grdJx2.RowCount - 1],//nilsu:integer ;
                  jinryo_f.grdJx2.Ints[6, jinryo_f.grdJx2.RowCount - 1],//nDanQty:integer ;
                  FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
                  jinryo_f.grdJx2.cells[10, jinryo_f.grdJx2.RowCount - 1],//soaGasan : string;
                  jinryo_f.grdJx2.cells[11, jinryo_f.grdJx2.RowCount - 1],//simGasan : string;
                  true,
                  jinryo_f.grdJx2.cells[25, jinryo_f.grdJx2.RowCount - 1], //예외코드
                  jinryo_f.lblAge.caption ) ;



      CalcSum(jinryo_f.grdJx2, jinryo_f.grdCost, main_f.edtchart.text,
         configValue.varGubun,
      FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
      jinryo_f.cbJong.itemIndex,
      jinryo_f.lblAge.caption,
      inttostr(jinryo_f.cbIO.ItemIndex),
      jinryo_f.chbYagan.checked,
      jinryo_f.edit3.text );
//(AGrid: TRealGrid; CostGrid :TRealGrid; JGrid:TRealGrid; aChart: string; hospGubun:string;
//         jinday: string; jongbyul:integer; age: string; isYagan:boolean=false; bunupYewe:string = '');

//      jinryo_f.CalcBonin(is_Wonwe);



     //  CalcBonin(is_Wonwe);

     // jinryo_f.OrderGroupClick(Self);
    end;
  end;
end;

procedure TinsertOnce_F.PageControl1Change(Sender: TObject);
var
    nRecordCount  , i: integer;
begin

  RealGrid1.RemoveRows(1, RealGrid1.RowCount - 1);
  RealGrid2.RemoveRows(1, RealGrid2.RowCount - 1);
  RealGrid3.RemoveRows(1, RealGrid3.RowCount - 1);
  RealGrid4.RemoveRows(1, RealGrid4.RowCount - 1);
  RealGrid5.RemoveRows(1, RealGrid5.RowCount - 1);





  with dm_f.sqlWork do
  begin
    case PageControl1.ActivePageIndex of
      0:   // 행위
        begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga ');
          Sql.Add('where su_gu1 in (''2'',''4'') ');
          Sql.Add('order by su_kor_name');
          Open;
     //     First;

          RealGrid1.RowCount := recordCount+ 1;
          i:= 1;
          while not eof do
          begin

            RealGrid1.Cells[1, i] := FieldByName('su_key').AsString;
            RealGrid1.Cells[2, i] := FieldByName('su_kor_name').AsString;

            i:= i + 1;
            Next;
          end;
        end;
      1:  //재료
        begin
          Close;
          Sql.Clear;
          //Sql.Add('select * from suga where su_gu1 in (''1'',''3'') and su_gu3<>''09'' order by su_kor_name');
          //son 2007.7.20
          Sql.Add('select * from suga where su_gu1 in (''1'') ');
          Sql.Add(' and su_gu3 in (''23'',''25'', ''28'') ');
          Sql.Add(' and su_key not in ');
          Sql.Add('(''L7101001'',''L7102001'',''L7201001'',''L7201002'',''L7201003'',''L7201004'',');
          Sql.Add('''L7201005'',''L7201006'',''L7201007'',''L7201008'',''L7201009'',''L7201010'',');
          Sql.Add('''L7201011'',''L7201012'',''L7201013'',''L7201014'',''L7201111'',''L7221001'',');
          Sql.Add('''L7221002'',''L7221003'',''L7221004'',''L7221005'',''L7221006'',''L7221007'',');
          Sql.Add('''L7221008'',''L7221009'',''L7241001'',''L7241002'',''L7241003'',''L7241004'',');
          Sql.Add('''L7241005'',''L7241006'',''L7241007'',''L7241008'',''L7241009'',''L7261001'',');
          Sql.Add('''L7261002'',''L7281001'',''L7281002'',''L7281003'',''L7281004'',''L7281005'',''L7281006'',');
          Sql.Add('''L7002001'',''L7002002'',''L7003001'',''L7003002'',''L7003003'',''L7003004'',');
          Sql.Add('''L7003005'',''L7004001'',''L7004002'',''L7004003'',''L7005001'',');
          Sql.Add('''L7301003'',''L7301999'',''L7030180'',''L7031180'')');
          Sql.Add(' order by su_key');
          Open;

          RealGrid2.RowCount := recordCount+ 1;
          i:= 1;


          while not eof do
          begin

            RealGrid2.Cells[1, i] := FieldByName('su_key').AsString;
            RealGrid2.Cells[2, i] := FieldByName('su_kor_name').AsString;
            RealGrid2.Cells[3, i] := FieldByName('su_gu3').AsString;
            RealGrid2.Cells[4, i] := FieldByName('jejosa').AsString; //제조사
            RealGrid2.Cells[5, i] := FieldByName('jejil').AsString; //재질
            RealGrid2.Cells[6, i] := FieldByName('suibsa').AsString; //수입사
            RealGrid2.Cells[7, i] := FieldByName('jungbun').AsString; //중분류

            i:= i+1;
            Next;
          end;
        end;
      2:  //약재
        begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga ');
          Sql.Add('where ');
          Sql.Add('su_gu1 =''1'' and su_gu3=''09'' ');
          Sql.Add('order by su_kor_name');
          Open;
          RealGrid3.RowCount := recordCount+ 1;
          i:= 1;

          while not eof do
          begin

            RealGrid3.Cells[4, i] := FieldByName('su_key').AsString;
            RealGrid3.Cells[1, i] := FieldByName('su_kor_name').AsString;
            RealGrid3.Cells[2, i] := '';
            RealGrid3.Cells[3, i] := '급여';
            RealGrid3.Cells[5, i] := FieldByName('su_apply').AsString;
            RealGrid3.Cells[7, i] := FieldByName('wo_dan').AsString;
            if RealGrid3.Cells[7, i] <> '' then
              RealGrid3.Cells[5, i] := '저가장려';


            i:= i+1;
            Next;
          end;
        end;

      3: //마취, film
        begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga ');
          Sql.Add('where ');
          Sql.Add('su_gu1 =''1'' and (su_gu3=''19'' or su_gu3=''31'') ');
          Sql.Add('order by su_key');

          RealGrid4.RowCount := recordCount+ 1;
          i:= 1;
          while not eof do
          begin

            RealGrid4.Cells[1, RealGrid4.RowCount - 1] := FieldByName('su_key').AsString;
            RealGrid4.Cells[2, RealGrid4.RowCount - 1] := FieldByName('su_kor_name').AsString;
            RealGrid4.Cells[3, RealGrid4.RowCount - 1] := FieldByName('su_gu3').AsString;

            i:= i+1;
            Next;
          end;
        end;

      4: // 100/100
        begin
          Close;
          Sql.Clear;
          Sql.Add('select * from suga');
           Sql.Add(' where ');
            Sql.Add('su_gu1 =''3'' and (su_gu3=''23'' or su_gu3=''25'') order by su_key');
          Open;

          RealGrid5.RowCount := recordCount+ 1;
          i:= 1;
          while not eof do
          begin

            RealGrid5.Cells[1, i] := FieldByName('su_key').AsString;
            RealGrid5.Cells[2, i] := FieldByName('su_kor_name').AsString;
            RealGrid5.Cells[3, i] := FieldByName('su_gu3').AsString;
            i:= i+1;
            Next;
          end;
        end;


    end;

  end;


end;

procedure TinsertOnce_F.RealGrid1DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
 if ARow >= 1 then
  begin
    insertsuga(RealGrid1.Cells[1, aRow]);
  end;

end;

procedure TinsertOnce_F.RealGrid2DblClick(Sender: TObject);
var sAlMan: string;
begin
 
end;

procedure TinsertOnce_F.realgrid2DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
  var
     sALMan : string;
begin
 if configValue.vargubun = '병원' then
    sALMan := 'AL300'
  else
    sALMan := 'AL400';
  if   (ARow >= 1) then
  begin
    insertsuga(RealGrid2.Cells[1, ARow]);
  end;

end;

procedure TinsertOnce_F.spSkinButton1Click(Sender: TObject);
begin
  case  PageControl1.ActivePageIndex of
    0: RealGrid1DblClickCell( RealGrid1,  RealGrid1.Col, RealGrid1.Row );
    1: RealGrid2DblClickCell( RealGrid2,  RealGrid2.Col, RealGrid2.Row );
    2:
      begin

        insertDrug(RealGrid3.Cells[4, RealGrid3.Row],
              IntToStr(Round(rxSpinEdit3.Value)),
              IntToStr(Round(rxSpinEdit1.Value)),
              IntToStr(Round(rxSpinEdit2.Value)));
      end;
     3: RealGrid4DblClickCell(RealGrid4,  RealGrid4.Col, RealGrid4.Row );
  end;
end;

procedure TinsertOnce_F.InsertDrug(sCode, nIlsu, nQty, nIltu: string);
begin
  with dm_f.SqlWork do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select * from suga where su_key=:su_key');
    ParamByName('su_key').AsString := sCode;
    Open;
    First;
    if not isEmpty then
    begin
      jinryo_f.grdJx2.AddRow;
      jinryo_f.grdJx2.Cells[0, jinryo_f.grdJx2.RowCount - 1] := '재료';
      jinryo_f.grdJx2.Cells[1, jinryo_f.grdJx2.RowCount - 1] := FieldByName('su_kor_name').AsString;
      jinryo_f.grdJx2.Cells[2, jinryo_f.grdJx2.RowCount - 1] := nQty;
      jinryo_f.grdJx2.Cells[3, jinryo_f.grdJx2.RowCount - 1] := nIlsu;
      if FieldByName('su_sobulru').AsString = '9' then //퇴장방지의약품(장려금10%)
      begin
        jinryo_f.grdJx2.Cells[4, jinryo_f.grdJx2.RowCount - 1] := IntToStr(Round(FieldByName('bo_dan').AsInteger * StrToInt(nQty) * StrToInt(nIlsu)));
        jinryo_f.grdJx2.Cells[5, jinryo_f.grdJx2.RowCount - 1] := IntToStr(Round(FieldByName('wo_dan').AsInteger));
      end
      else
      begin
        jinryo_f.grdJx2.Cells[4, jinryo_f.grdJx2.RowCount - 1] := IntToStr(FieldByName('bo_dan').AsInteger * StrToInt(nQty) * StrToInt(nIlsu));
        jinryo_f.grdJx2.Cells[5, jinryo_f.grdJx2.RowCount - 1] := FieldByName('bo_dan').AsString;
      end;
      jinryo_f.grdJx2.Cells[7, jinryo_f.grdJx2.RowCount - 1] := FieldByName('su_junsan').AsString;
      jinryo_f.grdJx2.Cells[8, jinryo_f.grdJx2.RowCount - 1] := '1';
      jinryo_f.grdJx2.Cells[9, jinryo_f.grdJx2.RowCount - 1] := '09';
      jinryo_f.grdJx2.Cells[12, jinryo_f.grdJx2.RowCount - 1] := '1' ;//orderGroupCount

      jinryo_f.grdJx2.Cells[13, jinryo_f.grdJx2.RowCount - 1] :=  '1';  // IntToStr(Jinryo_f.RealGrid1.RowCount - 1);

      jinryo_f.grdJx2.Cells[14, jinryo_f.grdJx2.RowCount - 1] := nIltu;

    end;
  end;
end;

procedure TinsertOnce_F.realgrid3DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if ARow >= 0 then
  begin
    insertsuga(RealGrid3.Cells[4, ARow]);
  end;

end;

procedure TinsertOnce_F.spSkinButton3Click(Sender: TObject);
begin
  if RadioButton1.Checked then
  begin
    if PageControl1.ActivePageIndex = 0 then
    begin
      SeekItem(RealGrid1, Edit1.Text, 'C');
    end
    else if PageControl1.ActivePageIndex = 1 then
    begin
      SeekItem(RealGrid2, Edit1.Text, 'C');
    end
    else
    begin
      SeekItem(RealGrid3, Edit1.Text, 'C');
    end;
  end
  else
  begin
    if PageControl1.ActivePageIndex = 0 then
    begin
      SeekItem(RealGrid1, Edit1.Text, 'N');
    end
    else if PageControl1.ActivePageIndex = 1 then
    begin
      SeekItem(RealGrid2, Edit1.Text, 'N');
    end
    else
    begin
      SeekItem(RealGrid3, Edit1.Text, 'N');
    end;
  end;
end;

procedure Tinsertonce_f.SeekItem(AGrid: TAdvStringGrid; Keyword: string; Flag: string);
begin
//  if Flag = 'C' then
//    Agrid.Row := Agrid.Find(0, Keyword, [wfoPartialKey, wfoCaseInsensitive])
//  else
//    Agrid.Row := Agrid.Find(1, Keyword, [wfoPartialKey, wfoCaseInsensitive]);
//  Agrid.SetFocus;
end;

procedure TinsertOnce_F.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SelectNext(sender as TWinControl, True, True);
end;

procedure TinsertOnce_F.realgrid4DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if ARow >= 0  then
  begin
    insertsuga(RealGrid4.Cells[1, ARow]);
  end;

end;

procedure TinsertOnce_F.realgrid5DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if ARow >= 1  then
  begin
    insertsuga(RealGrid5.Cells[1, ARow]);
  end;

end;

procedure TinsertOnce_F.FormCreate(Sender: TObject);
begin
     realgrid1.Align :=  alClient;
     realgrid2.Align :=  alClient;
     realgrid3.Align :=  alClient;
     realgrid4.Align :=  alClient;
     realgrid5.Align :=  alClient;
end;

end.

