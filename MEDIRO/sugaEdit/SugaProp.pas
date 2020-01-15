unit SugaProp;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls,
    Buttons, Grids, AdvObj, BaseGrid, AdvGrid, AdvEdit, AdvUtil, Vcl.Mask,
  AdvCombo, ColCombo, Vcl.ComCtrls, Vcl.ExtCtrls;

type
    TSugaProp_f = class(TForm)
        Label1: TLabel;
        Label2: TLabel;
        Label3: TLabel;
        GroupBox1: TGroupBox;
        Label5: TLabel;
        Label7: TLabel;
        GroupBox2: TGroupBox;
        Label8: TLabel;
        Label9: TLabel;
        Label10: TLabel;
    cbSuGu1: TComboBox;
    cbSuGu2: TComboBox;
    cbSuGu3: TComboBox;
    cbSoBulru: TComboBox;
        Label11: TLabel;
        edtName: TEdit;
        edtboDay: TEdit;
        edtJaday: TEdit;
        edtIlday: TEdit;
        edtWoday: TEdit;
    edtSuKey: TEdit;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    cbSanjungBase: TComboBox;
    Edit3: TEdit;
    orgDay: TEdit;
    Edit7: TEdit;
    btnClose: TBitBtn;
    btnSave: TBitBtn;
    btnDelete: TBitBtn;
    btnFind: TBitBtn;
    wLabel5: TLabel;
    wLabel6: TLabel;
    wLabel3: TLabel;
    wLabel1: TLabel;
    wLabel2: TLabel;
    wLabel4: TLabel;
    wLabel7: TLabel;
    edtBohumDanga: TAdvEdit;
    wNumEdit2: TAdvEdit;
    edtilbanDanga: TAdvEdit;
    wNumEdit4: TAdvEdit;
    wNumEdit6: TAdvEdit;
    grdApplyDay: TAdvStringGrid;
    Label4: TLabel;
    edtUserKey: TEdit;
    edtAppDay: TMaskEdit;
    Label6: TLabel;
    CheckBox5: TCheckBox;
    Label16: TLabel;
    Edit6: TEdit;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Memo2: TMemo;
    cbExtra: TComboBox;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    cbSutakUpche: TComboBox;
    Label13: TLabel;
    edtGasanKind: TEdit;
    edtSutakGrade: TEdit;
    Label14: TLabel;
    Label17: TLabel;
    edit5: TAdvEdit;
    Label18: TLabel;
    Label21: TLabel;
    Memo4: TMemo;
    Memo3: TMemo;
    ColumnComboBox1: TColumnComboBox;
    GroupBox5: TGroupBox;
    Label19: TLabel;
    ComboBox1: TComboBox;
    cbTjungNeyuk: TColumnComboBox;
    Button1: TButton;
    Button2: TButton;
    edtYul: TAdvEdit;
    Label20: TLabel;
    Label22: TLabel;
    edtEngName: TEdit;
    Label23: TLabel;
    pnlChangeSuGu: TPanel;
    Button3: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
        procedure FormShow(Sender: TObject);
        procedure btnCloseClick(Sender: TObject);
        procedure btnSaveClick(Sender: TObject);
        procedure showwarn(sNam: string);
        procedure Tab2Enter(Sender: TObject; var Key: Char);
        procedure edtSuKeyKeyPress(Sender: TObject; var Key: Char);
        procedure btnDeleteClick(Sender: TObject);
        procedure grdApplyDayDblClick(Sender: TObject);
        procedure CheckBox3Click(Sender: TObject);
        procedure CheckBox5Click(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure edtUserKeyKeyPress(Sender: TObject; var Key: Char);
    procedure cbSuGu3Change(Sender: TObject);
    procedure cbSoBulruChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtYulKeyPress(Sender: TObject; var Key: Char);
    procedure cbSuGu2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    private
    procedure setSugu3;
    procedure loadSu_key(findKind:integer; su_key: string);
    procedure LoadTJungCode;
          { Private declarations }
    public
          { Public declarations }
           sdFileName   : String;
    end;

var
    SugaProp_f: TSugaProp_f;

implementation

uses uFunctions, uDM;

{$R *.dfm}


procedure TSugaProp_f.setSugu3;
var
   suGu3 : string;
begin

    with cbSoBulru do
    begin
        items.Clear;
        items.AddObject('약품분류선택', TObject(0)) ;
        items.AddObject('PCA(향정)', TObject(1)) ;
        items.AddObject('PCA(마약)', TObject(2)) ;
        items.AddObject('퇴장방지', TObject(8)) ;
        items.AddObject('가루약', TObject('A')) ;      //65
        items.AddObject('과립', TObject('B')) ;        //66
        items.AddObject('당뇨', TObject('C')) ;        //67
        items.AddObject('로숀', TObject('D')) ;        //68
        items.AddObject('백신', TObject('E')) ;        //69
        items.AddObject('분말', TObject('F')) ;        // 70
        items.AddObject('분무제', TObject('G')) ;      // 71
        items.AddObject('수액', TObject('H')) ;         //72
        items.AddObject('시럽', TObject('I')) ;         //73
        items.AddObject('안약', TObject('J')) ;         //74
        items.AddObject('알약', TObject('K')) ;          //75
        items.AddObject('연고', TObject('L')) ;         // 76
        items.AddObject('마약', TObject('M')) ;          //77  <===
        items.AddObject('좌약', TObject('N')) ;         // 78
        items.AddObject('주사액', TObject('O')) ;        //79
        items.AddObject('질내삽입장치', TObject('P')) ; // 80
        items.AddObject('파스', TObject('Q')) ;         // 81
        items.AddObject('현탁액', TObject('R')) ;       // 82
        items.AddObject('향정신의약품', TObject('S')) ;  //83  <===
        items.AddObject('흡입액', TObject('T')) ;        //84
        items.AddObject('기타', TObject('U')) ;         // 85
        items.AddObject('캅셀', TObject('V')) ;         // 86
        items.AddObject('PCA', TObject('W')) ;          // 87
        items.AddObject('난임', TObject('X')) ;          //88
        items.AddObject('소득공제제외', TObject('Z')) ;  //90
    end;



    with cbSanjungBase do
    begin
        items.Clear;
        items.AddObject('치아당', TObject('T')) ;
        items.AddObject('1회만산정', TObject('1')) ;
        items.AddObject('악당', TObject('C')) ;
        items.AddObject('1/3악당', TObject('D')) ;
        items.AddObject('구강당', TObject('M')) ;
        items.AddObject('근당', TObject('R')) ;
        items.AddObject('방문당', TObject('V')) ;
    end;
    cbSanjungBase.itemindex:= 7;//


//            0: ParamByName('su_gu2').AsString := '1';  //행위료
//            1: ParamByName('su_gu2').AsString := '9';  //수탁검사
//            2: ParamByName('su_gu2').AsString := '8';  //치료재료
//            3: ParamByName('su_gu2').AsString := '3';  //약품
//            4: ParamByName('su_gu2').AsString := 'A';  //100/50
//            5: ParamByName('su_gu2').AsString := 'B';  //100/80
//            6: ParamByName('su_gu2').AsString := 'D';  //100/30
//            7: ParamByName('su_gu2').AsString := 'E';  //100/90
//            8: ParamByName('su_gu2').AsString := 'U';  //100/100
//            9: ParamByName('su_gu2').AsString := 'V';  //보훈100/100

    cbsuGu2.Items.Clear;
    with cbsuGu2 do
    begin
        items.Clear;
        items.AddObject('행위료', TObject(1)) ;
        items.AddObject('수탁검사', TObject(9)) ;
        items.AddObject('치료재료', TObject(8)) ;
        items.AddObject('약품', TObject(3)) ;
        items.AddObject('100/50', TObject('A')) ;
        items.AddObject('100/80', TObject('B')) ;
        items.AddObject('100/30', TObject('D')) ;
        items.AddObject('100/90', TObject('E')) ;
        items.AddObject('100/100', TObject('U')) ;
        items.AddObject('보훈100/100', TObject('V')) ;
    end;

    with cbsuGu3 do
    begin
        items.Clear;
        items.AddObject('투약(내복약)', TObject(9)) ;
        items.AddObject('투약(외용약)', TObject(10)) ;
        items.AddObject('피하근육내주사', TObject(12)) ;
        items.AddObject('정맥내주사', TObject(13)) ;
        items.AddObject('수액제내주사', TObject(14)) ;
        items.AddObject('향정앤마약', TObject(16)) ;
        items.AddObject('척수강내주사', TObject(17)) ;
        items.AddObject('관절강내주사', TObject(18)) ;

        items.AddObject('마취', TObject(19)) ;
        items.AddObject('처치', TObject(23)) ;
        items.AddObject('수술', TObject(25)) ;
        items.AddObject('수탁검사', TObject(26)) ;
        items.AddObject('임플란트(급여)', TObject(28)) ;
        items.AddObject('자체검사', TObject(29)) ;
        items.AddObject('자체검사', TObject(30)) ;
        items.AddObject('방사선', TObject(31)) ;
        items.AddObject('치료재료', TObject(32)) ;
        items.AddObject('CT촬영', TObject(39)) ;
        items.AddObject('MRI', TObject(40)) ;
        items.AddObject('응급 및 회송', TObject(41)) ;
        items.AddObject('초음파', TObject(42)) ;
        items.AddObject('초음파유도', TObject(43)) ;
        items.AddObject('기타', TObject(50)) ;
        items.AddObject('보철', TObject(47)) ;
        items.AddObject('교정', TObject(48)) ;
        items.AddObject('임플란트(비급여)', TObject(49)) ;
    end;

//    cbSugu3.Items.IndexOfObject()
{09|투약(내복약)
10|투약(외용약)
12|피하근육내주사
13|정맥내주사
14|수액제내주사
16|향정앤마약
19|마취
23|처치
25|수술
26|수탁검사
28|임플란트
29|자체검사
30|자체검사
31|방사선
39|CT촬영
40|MRI
41|응급 및 회송
42|초음파
50|기타
47|보철
48|교정
49|임플란트         }




    with cbSutakUpche do
    begin

    {

SELECT  CutCod, CutAdpDte, CutNam, CutSclGen, CutSclCar,
 CutSclIns, CutSclWrk, CutSclGud, CutExpDte,
 CutUpdDtm, CutUidCod, CutAssCod, CutCls, CutHspTyp, CutGcoNum,
 CutGumCheGrade, CutHackYon,
 CutByungRiYon
FROM     ma_sutakupche  where  CutCod=:CutCod
}
        items.Clear;
        items.Add('');
        items.Add('S');
        items.Add('S1');
    end;
end;

procedure TSugaProp_f.FormShow(Sender: TObject);
var
   i : integer;
begin

    setSugu3;


  for i:= 0   to memo3.lines.Count -1 do
  begin
        with ColumnComboBox1.ComboItems.Add do
        begin
          Strings.Add(memo3.lines[i]);
          Strings.Add(memo4.lines[i]);

        end;
  end;

   // LoadTJungCode;


    loadSu_key(1, trim(edtSuKey.Text));


end;
procedure TSugaProp_f.loadSu_key(findKind:integer; su_key:string);
var
   suGu3       : integer;
   suGu2       : integer;
   SuSobulRu   : integer;
   aModality   : string;
   nModalIndex : integer;
begin
    if su_key <> '' then
    begin
        //grdApplyDay.Clear;
        grdApplyDay.removeRows(1, grdApplyDay.RowCount-1);

        with dm_f.Sqltemp do
        begin
            Close;
            Sql.Clear;
            if findKind=1 then
            begin
                Sql.Add('select * from suga where su_key=:sCode');
            end
            else
            begin
                Sql.Add('select * from suga where user_key=:sCode');

            end;

            ParamByName('sCode').AsString :=  su_key ;

            Open;
            First;
            if not isEmpty then
            begin


                edtName.Text := FieldByName('su_kor_name').AsString;
                edtEngName.Text := FieldByName('su_eng_name').AsString;
                edtUserKey.Text := FieldByName('user_key').AsString;
                edtAppDay.Text := FieldByName('su_apply').AsString;
                edtBohumDanga.floatValue := FieldByName('bo_dan').AsFloat;
                wNumEdit2.floatValue := FieldByName('ja_dan').AsFloat;
                edtilbanDanga.floatValue := FieldByName('il_dan').AsFloat;

                edtYul.FloatValue :=  100 / ( edtBohumDanga.FloatValue/edtilbanDanga.FloatValue);

                wNumEdit4.floatValue := FieldByName('wo_dan').AsFloat;
                edtBoDay.Text := FieldByName('bo_day').AsString;
                edtJaDay.Text := FieldByName('ja_day').AsString;
                edtIlDay.Text := FieldByName('il_day').AsString;
                edtWoDay.Text := FieldByName('wo_day').AsString;
                    // cbSuGu1.ItemIndex:=StrToInt(FieldByName('su_gu1').AsString);



                if FieldByName('su_sobulru').AsString = '9' then
                begin
                    //checkBox5.Checked := True;
                    //dm_f.SqlOption.close;
                    //dm_f.SqlOption.Sql.clear;
                    //dm_f.SqlOption.Sql.Add('select law_merit,apply_day from sugadrug where su_key=:su_key  order by apply_day desc');
                    //dm_f.SqlOption.ParamByName('su_key').AsString := edtSuKey.Text;

                    //dm_f.SqlOption.Open;
                    //dm_f.SqlOption.First;
                    //if not dm_f.SqlOption.isempty then
                    //begin
                        //Edit5.Text := dm_f.SqlOption.FieldByName('law_merit').AsString;
                        //edit6.Text := dm_f.SqlOption.FieldByName('apply_day').AsString;
                        Edit5.intValue := FieldByName('wo_dan').AsInteger;
                        edit6.Text := FieldByName('wo_day').AsString;
                    //end
                    //else
                    //begin
                    //    Edit5.Text := '';
                    //    Edit6.Text := '';
                    //end;
                end
                else
                begin
                    CheckBox5.Checked := False;
                    Edit5.intValue := 0;
                    Edit6.Text := '';
                end;


                { 0 급여재료
                  1 급여행위
                  2 비급여재료
                  3 비급여행위
                  4 100/100
                  5 비급여보훈재료
                  6 비급여보훈행위
                  }

                if ((FieldByName('su_gu1').isNull) or
                    (FieldByName('su_gu1').AsString = '')) then
                begin
                    cbSuGu1.ItemIndex := -1;
                    cbSuGu1.Text := 'Not Defined';
                end
                else
                begin
                    if FieldByName('su_gu1').AsString = '1' then
                        cbSuGu1.Itemindex := 0
                    else if FieldByName('su_gu1').AsString = '2' then
                        cbSuGu1.Itemindex := 1
                    else if FieldByName('su_gu1').AsString = '3' then
                        cbSuGu1.Itemindex := 2
                    else if FieldByName('su_gu1').AsString = '4' then
                        cbSuGu1.Itemindex := 3
                    else if FieldByName('su_gu1').AsString = '5' then
                        cbSuGu1.Itemindex := 4
                    else if FieldByName('su_gu1').AsString = '6' then
                        cbSuGu1.Itemindex := 5
                    else if FieldByName('su_gu1').AsString = '7' then
                        cbSuGu1.Itemindex := 6
                    else
                    begin
                        cbSuGu1.ItemIndex := -1;
                        cbSuGu1.Text := 'Invalid Data';
                    end;
                end;
                    //
                if ((FieldByName('su_gu2').isNull) or
                    (FieldByName('su_gu2').AsString = '')) then
                begin
                    cbSuGu2.ItemIndex := 0;
                    // cbSuGu2.Text := 'Not Defined';
                end
                else
                begin
                          label23.Caption := FieldByName('su_gu2').AsString;


                    if FieldByName('su_gu2').AsString = '1' then
                        cbSuGu2.Itemindex := 0  //일반(행위료)
                    else if FieldByName('su_gu2').AsString = '9' then
                        cbSuGu2.Itemindex := 1   //수탁검사
                    else if FieldByName('su_gu2').AsString = '3' then
                        cbSuGu2.Itemindex := 3   // 약품
                    else if FieldByName('su_gu2').AsString = '8' then
                        cbSuGu2.Itemindex := 2   //치료재료
                    else if FieldByName('su_gu2').AsString = 'A' then    //100/50
                        cbSuGu2.Itemindex := 4   //100/50
                    else if FieldByName('su_gu2').AsString = 'B' then   //100/80
                        cbSuGu2.Itemindex := 5   //100/80
                    else if FieldByName('su_gu2').AsString = 'D' then   //100/30
                        cbSuGu2.Itemindex := 6   //100/30
                    else if FieldByName('su_gu2').AsString = 'E' then   //100/90
                        cbSuGu2.Itemindex := 7   //100/90
                    else if FieldByName('su_gu2').AsString = 'U' then  //100/100
                        cbSuGu2.Itemindex := 8   //100/100
                    else if FieldByName('su_gu2').AsString = 'V' then   //보훈100/100
                        cbSuGu2.Itemindex := 9   //보훈100/100
                    else
                    begin
                        cbSuGu2.ItemIndex := 0;
           // cbSuGu2.Text := 'Invalid Data';
                    end;


//                      cbSuGu2.Itemindex := cbSuGu2.Items.IndexOfObject(Tobject(suGu2)) ;


                end;
                    //
                if ((FieldByName('su_gu3').isNull) or
                    (FieldByName('su_gu3').AsString = '')) then
                begin
                    cbSuGu3.ItemIndex := -1;
                    cbSuGu3.Text := 'Not Defined';
                end
                else
                begin
                  label6.Caption := FieldByName('su_gu3').AsString;

                  //('09' ,'10' ,'12' ,'19' ,'23' ,'25' ,'28' ,'29' ,'30' ,'31' ,'41' ,'39' ,'50' ,'47' ,'48' ,'49' )

                  {09|투약(내복약)
                  10|투약(외용약)
                  12|피하근육내주사
                  13|정맥내주사
                  19|마취
                  23|처치
                  25|수술
                  26|수탁검사
                  28|임플란트(보험)
                  29|자체검사
                  30|자체검사
                  31|방사선
                  39|CT촬영
                  40|MRI
                  41|응급 및 회송
                  42|초음파
                  50|기타
                  47|보철
                  48|교정
                  49|임플란트(비보험) }

                 if checkInt(FieldByName('su_gu3').AsString) = true then
                     sugu3:= FieldByName('su_gu3').AsInteger
                 else
                     sugu3:= 23;

                 cbSuGu3.Itemindex := cbSuGu3.Items.IndexOfObject(Tobject(suGu3)) ;

                end;
                    //


//                if ((FieldByName('su_sobulru').isNull) or
//                  (FieldByName('su_sobulru').AsString = '')) then
//                begin
//                  cbSoBulRu.ItemIndex := 0;
//                  cbSoBulRu.Text := 'Not Defined';
//                end
//                else
//                begin
//                  if FieldByName('su_sobulru').AsString = '8' then
//                    cbSoBulRu.Itemindex := 0
//                  else
//                  begin
//                    cbSoBulRu.ItemIndex := -1;
//                    cbSoBulRu.Text := 'Invalid Data';
//                  end;
//                end;
                    //
              if checkInt( FieldByName('su_sobulRu').asString) = true then
                 cbSoBulRu.ItemIndex :=  cbSoBulRu.Items.IndexOfObject(Tobject(FieldByName('su_sobulRu').asInteger))
              else
                 cbSoBulRu.ItemIndex :=  0;

              label17.Caption := FieldByName('su_sobulRu').AsString;


                if ((FieldByName('su_danwi').isNull) or
                    (FieldByName('su_danwi').AsString = '')) then
                begin
                    cbSanjungBase.ItemIndex := 0;
                end
                else
                begin


                    cbSanjungBase.Itemindex :=
                       cbSanjungBase.Items.IndexOfObject(Tobject(UpperCase(FieldByName('su_danwi').AsString)))

//                    if UpperCase(FieldByName('su_danwi').AsString) = 'T'
//                        then
//                        cbSanjungBase.Itemindex := 0
//                    else if UpperCase(FieldByName('su_danwi').AsString) =
//                        '1' then
//                        cbSanjungBase.Itemindex := 1
//                    else if UpperCase(FieldByName('su_danwi').AsString) =
//                        'C' then
//                        cbSanjungBase.Itemindex := 2
//                    else if UpperCase(FieldByName('su_danwi').AsString) =
//                        'C3' then
//                        cbSanjungBase.Itemindex := 3
//                    else if UpperCase(FieldByName('su_danwi').AsString) =
//                        'M' then
//                        cbSanjungBase.Itemindex := 4
//                    else if UpperCase(FieldByName('su_danwi').AsString) =
//                        'R' then
//                        cbSanjungBase.Itemindex := 5
//                    else if UpperCase(FieldByName('su_danwi').AsString) =
//                        'V' then
//                        cbSanjungBase.Itemindex := 6
                    //else
                    //begin
                    //    cbSanjungBase.ItemIndex := 0;
                    //end;
                end;

                if ((FieldByName('su_soa').IsNull = False) and
                    (FieldByName('su_soa').AsString <> '')) then
                    checkBox1.Checked := True
                else
                    checkBox1.Checked := False;
                if ((FieldByName('su_yagan').IsNull = False) and
                    (FieldByName('su_yagan').AsString <> '')) then
                    checkBox2.Checked := True
                else
                    checkBox2.Checked := False;
                if ((FieldByName('su_extra').IsNull = False) and
                    (FieldByName('su_extra').AsString <> '')) then
                begin
                    checkBox3.Checked := True;
                    cbExtra.Text :=   FieldByName('su_extra').AsString + ':';
                end
                else
                begin
                    checkBox3.Checked := False;
                    cbExtra.Enabled := False;
                end;

                aModality :=  trim(FieldByName('modality').AsString);

                nModalIndex := ColumnComboBox1.ComboItems.IndexInColumnOf(0, aModality );

                ColumnComboBox1.ItemIndex := nModalIndex  ;


                if ((FieldByName('Need_chart_memo').IsNull = False) and
                    (FieldByName('need_chart_memo').AsString <> '')) then
                    checkBox4.Checked := True
                else
                    checkBox4.Checked := False;


                cbTJungNeyuk.ItemIndex :=
                  cbTJungNeyuk.ComboItems.IndexInColumnOf(0, FieldByName('teakryecode').AsString )  ;

                Edit2.Text := FieldByName('dan_qty').AsString;
                Edit3.Text := FieldByName('su_junsan').AsString;
                Edit7.Text := FieldByName('su_newcode').AsString;
                wNumEdit6.FloatValue := FieldByName('su_point').AsFloat;


                cbSutakUpche.itemIndex:= cbSutakUpche.Items.IndexOf( FieldByName('SutakUpche').AsString);
                edtSutakGrade.text    := FieldByName('SutakGrade').AsString  ;
                edtGasanKind.text     := FieldByName('GasanKind').AsString ;

                grdApplyDay.Addrow;
                grdApplyDay.Cells[1, 1]  := FieldByName('su_apply').AsString;
                grdApplyDay.Cells[2, 1]  := FieldByName('su_point').AsString;
                grdApplyDay.Cells[3, 1]  := FieldByName('bo_dan').AsString;
                grdApplyDay.Cells[4, 1]  := FieldByName('dan_Qty').AsString;
                grdApplyDay.Cells[5, 1]  := '';



            end;


            //ToDo: 왜 suga_history에서 불러와야 하는가???
            Close;
            Sql.Clear;
            Sql.Add('select * from suga_history where su_key=:su_key order by su_key, su_apply desc');
            ParamByName('su_key').AsString := edtSuKey.Text;
            Open;
            First;
            if not isempty then
            begin
                while not eof do
                begin
                    grdApplyDay.Addrow;
                    grdApplyDay.Cells[1, grdApplyDay.RowCount - 1]  := FieldByName('su_apply').AsString;
                    grdApplyDay.Cells[2, grdApplyDay.RowCount - 1]  := FieldByName('su_point').AsString;
                    grdApplyDay.Cells[3, grdApplyDay.RowCount - 1]  := FieldByName('bo_dan').AsString;
                    grdApplyDay.Cells[4, grdApplyDay.RowCount - 1]  := FieldByName('dan_Qty').AsString;
                    grdApplyDay.Cells[5, grdApplyDay.RowCount - 1]  := FieldByName('su_id').AsString;
                    Next;
                end;
            end;
        end;
    end;
end;

procedure TSugaProp_f.edtYulKeyPress(Sender: TObject; var Key: Char);
var
     a, b : double;
begin

    if key=#13  then
    begin
      a:=  edtBohumDanga.FloatValue;// .IntValue;
      b:=  edtBohumDanga.FloatValue * ( edtYul.FloatValue / 100);//; 1.2;
      edtilbanDanga.FloatValue := round(b);// round(edtBohumDanga.IntValue * 1.2);


    end;
end;

procedure TSugaProp_f.btnCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TsugaProp_f.showwarn(sNam: string);
begin
    ShowMessage(sNam + '이(가) 입력되지 않았습니다.');
end;

procedure TSugaProp_f.btnSaveClick(Sender: TObject);
var
   nSuSobulru : integer;
begin
    if edtSuKey.Text = '' then
    begin
        showwarn('코드');
        Exit;
    end;


    if edtUserKey.Text = '' then
    begin
        showwarn('사용자코드');
        edtUserKey.Text := edtSuKey.Text;
        Exit;
    end;



    if EdtName.Text = '' then
    begin
        showwarn('명칭');
        exit;
    end;
    if cbSuGu1.Itemindex = -1 then
    begin
        showwarn('행위/재료(I/II) 구분');
        exit;
    end;
    if cbSuGu2.Itemindex = -1 then
    begin
        showwarn('소분류');
        exit;
    end;
    if cbSuGu3.Itemindex = -1 then
    begin
        showwarn('항목구분');
        exit;
    end;
    if cbSoBulRu.Itemindex = -1 then
    begin
        showwarn('약품분류');
        exit;
    end;


//     if cbSanjungBase.Itemindex = -1 then
//    begin
//        showwarn('산정기준');
//        exit;
//    end;
    if edtAppday.Text = '' then
        edtAppDay.Text := FormatDateTime('yyyy-mm-dd', Now);
    if edtBoday.Text = '' then
        edtBoDay.Text := FormatDateTime('yyyy-mm-dd', Now);
    if edtJaday.Text = '' then
        edtJaDay.Text := FormatDateTime('yyyy-mm-dd', Now);
    if edtIlday.Text = '' then
        edtIlDay.Text := FormatDateTime('yyyy-mm-dd', Now);
    if edtWoday.Text = '' then
        edtWoDay.Text := FormatDateTime('yyyy-mm-dd', Now);
    if Edit2.Text = '' then
        Edit2.Text := '1';
    if Edit3.Text = '' then
        Edit3.Text := edtSuKey.Text;



// gasankind
// sutakupche
// sutakgrade


    with dm_f.SqlTemp do
    begin
        Close;
        Sql.Clear;
        if SugaProp_f.Caption = '새 수가등록' then
        begin


            Sql.Add('insert into suga (su_kor_name,su_eng_name, su_junsan,su_apply,bo_Dan,ja_dan,il_dan,wo_dan,bo_day,ja_day,il_day,wo_day,su_gu1,su_gu2,su_gu3,su_sobulru,');
            Sql.Add('su_soa,su_yagan,su_extra,need_chart_memo,su_danwi,dan_qty,su_point,su_key, su_newcode, user_key, sutakupche, gasankind, sutakgrade, modality, teakryecode) values (');
            Sql.Add(':su_kor_name,:su_eng_name,:su_junsan,:appday,:bo_Dan,:ja_dan,:il_dan,:wo_dan,:bo_day,:ja_day,:il_day,:wo_day,:su_gu1,:su_gu2,:su_gu3,:su_sobulru,');
            Sql.Add(':su_soa,:su_yagan,:su_extra,:need_chart_memo,:su_danwi,:dan_qty,:su_point,:su_key,:su_newcode, :user_key,:sutakupche, :gasankind, :sutakgrade,:modality,:teakryecode)');



        end
        else
        begin

            close;
            sql.Clear;
            //su_key는 한날짜에 하나만 넣는다.
            Sql.Add('delete from suga_history ');
            Sql.Add(' where su_key=:su_key and  su_apply =:su_apply');
            ParamByName('su_key').AsString  := edtSuKey.Text;
            ParamByName('su_apply').AsString  := EdtAppday.Text;
            ExecSql;


            close;
            sql.Clear;
            Sql.Add('insert into suga_history ');
            Sql.Add('(su_key,su_kor_name, bo_dan,su_apply,su_point,dan_qty, user_key )  ');
            Sql.Add('select su_key,su_kor_name , bo_dan,su_apply,su_point,dan_qty, user_key ') ;
            sql.Add(' from suga where su_key=:su_key ');
            ParamByName('su_key').AsString  := edtSuKey.Text;
            ExecSql;


            Close;
            Sql.Clear;
            Sql.Add('Update suga set su_kor_name=:Su_Kor_name,su_junsan=:su_junsan,su_apply=:appDay,');
            Sql.Add('   bo_Dan=:Bo_Dan,ja_dan=:Ja_dan,il_dan=:Il_dan,wo_dan=:Wo_dan, user_key=:user_key, ');
            Sql.Add('   bo_day=:Bo_day,ja_day=:Ja_day,il_day=:il_day,wo_day=:wo_day,su_gu1=:su_gu1,');
            Sql.Add('   su_gu2=:su_gu2,su_gu3=:su_gu3,su_sobulru=:su_sobulru , teakryecode=:teakryecode,');
            Sql.Add('   su_soa=:su_soa,su_yagan=:su_yagan,su_extra=:su_extra,');
            Sql.Add('   need_chart_memo=:need_chart_memo,su_danwi=:su_danwi,dan_qty=:dan_qty,');
            Sql.Add('   su_point=:su_point, su_newcode=:su_newcode, sutakupche=:sutakupche,  modality=:modality,    ');
            Sql.Add('   gasankind=:gasankind, sutakgrade=:sutakgrade  , su_eng_name=:su_eng_name ');
            Sql.Add('   where su_key=:Su_key');
        end;

        ParamByName('su_key').AsString      := edtSuKey.Text;
        ParamByName('user_key').AsString      := edtUserKey.Text;
        ParamByName('su_junsan').AsString   := Edit3.Text;
        ParamByName('su_newcode').AsString  := Edit7.Text;
        ParamByName('su_kor_name').AsString := EdtName.Text;
        ParamByName('su_eng_name').AsString := EdtEngName.Text;
        ParamByName('appday').AsString  := EdtAppday.Text;
        ParamByName('bo_dan').AsInteger := Round(edtBohumDanga.floatvalue);
        ParamByName('ja_dan').AsInteger := Round(wNumEdit2.floatvalue);
        ParamByName('il_dan').AsInteger := Round(edtilbanDanga.floatvalue);
        ParamByName('wo_dan').AsInteger := Round(wNumEdit4.intValue);
        ParamByName('bo_day').AsString  := EdtAppday.Text; //EdtboDay.Text;
        ParamByName('ja_day').AsString  := EdtAppday.Text; //EdtjaDay.Text;
        ParamByName('il_day').AsString  := EdtAppday.Text;  //EdtilDay.Text;
        ParamByName('wo_day').AsString  := EdtAppday.Text; //EdtwoDay.Text;
        ParamByName('dan_qty').AsString := Edit2.Text;
        ParamByName('su_point').AsFloat := wNumEdit6.FloatValue;


        if cbSuGu1.Itemindex >= 0 then
            ParamByName('su_gu1').AsInteger := cbSuGu1.ItemIndex + 1
        else
            ParamByName('su_gu1').AsString := '';


{
0 행위료
1 수탁검사
2 치료재료
3 약품
4 100/50
5 100/80
6 100/30
7 100/90
8 100/100
9 보훈100/100}
        case cbSuGu2.ItemIndex of
            0: ParamByName('su_gu2').AsString := '1';  //행위료
            1: ParamByName('su_gu2').AsString := '9';  //수탁검사
            2: ParamByName('su_gu2').AsString := '8';  //치료재료
            3: ParamByName('su_gu2').AsString := '3';  //약품
            4: ParamByName('su_gu2').AsString := 'A';  //100/50
            5: ParamByName('su_gu2').AsString := 'B';  //100/80
            6: ParamByName('su_gu2').AsString := 'D';  //100/30
            7: ParamByName('su_gu2').AsString := 'E';  //100/90
            8: ParamByName('su_gu2').AsString := 'U';  //100/100
            9: ParamByName('su_gu2').AsString := 'V';  //보훈100/100

        else
            begin
                ParamByName('su_gu2').AsString := '';
            end;
        end;

            ParamByName('su_gu3').AsString :=
                 formatFloat('00', longInt(cbSuGu3.Items.Objects[cbSuGu3.ItemIndex]));
            //Combobox1.Items.Objects[Combobox1.ItemIndex]
//        case cbSuGu3.ItemIndex of
//            0: ParamByName('su_gu3').AsString := '09';
//            1: ParamByName('su_gu3').AsString := '10';
//            2: ParamByName('su_gu3').AsString := '12';
//            3: ParamByName('su_gu3').AsString := '19';
//            4: ParamByName('su_gu3').AsString := '23';
//            5: ParamByName('su_gu3').AsString := '25';
//            6: ParamByName('su_gu3').AsString := '30';
//            7: ParamByName('su_gu3').AsString := '31';
//            8: ParamByName('su_gu3').AsString := '41';
//            9: ParamByName('su_gu3').AsString := '39';
//            11: ParamByName('su_gu3').AsString := '47';
//            12: ParamByName('su_gu3').AsString := '48';
//         //   13: ParamByName('su_gu3').AsString := '49';  //일반임플
//             13: ParamByName('su_gu3').AsString := '28';   //보험임플
//
//        else
//            begin
//                ParamByName('su_gu3').AsString := '';
//            end;
//        end;



     //   formatFloat('00', );

//        if cbSoBulRu.Itemindex >= 0 then
//          ParamByName('su_sobulru').AsString := '8'
//        else
//          ParamByName('su_sobulru').AsString := '';

        nSuSobulru := longInt(cbSoBulRu.Items.Objects[cbSoBulRu.ItemIndex]);
        if cbSoBulRu.Itemindex >= 0 then
          ParamByName('su_sobulru').AsString :=   inttostr(nSuSobulru)
        else
          ParamByName('su_sobulru').AsString := '0';


        if nSuSobulru = 9 then
        begin
            ParamByName('wo_dan').AsInteger :=  edit5.IntValue;
        end;

//        if CheckBox5.Checked then begin
//           ParamByName('su_sobulru').AsString := '9'
//        end
//        else begin
//           ParamByName('su_sobulru').AsString := '0';
//           ParamByName('wo_dan').AsInteger := Round(0);
//        end;



//치아당
//1회만산정
//악당
//1/3악당
//구강당
//근당
//방문당



        case cbSanjungBase.ItemIndex of
            0: ParamByName('su_danwi').AsString := 'T';
            1: ParamByName('su_danwi').AsString := '1';
            2: ParamByName('su_danwi').AsString := 'C';
            3: ParamByName('su_danwi').AsString := 'C3';
            4: ParamByName('su_danwi').AsString := 'M';
            5: ParamByName('su_danwi').AsString := 'R';
            6: ParamByName('su_danwi').AsString := 'V';
        else
            begin
                ParamByName('su_danwi').AsString := 'T';
            end;
        end;
        if CheckBox1.Checked then
            ParamByName('su_soa').AsString := '8'
        else
            ParamByName('su_soa').AsString := '';
        if CheckBox2.Checked then
            ParamByName('su_yagan').AsString := '1'
        else
            ParamByName('su_yagan').AsString := '';

        if CheckBox3.Checked then
            ParamByName('su_extra').AsString := trim(substr(cbExtra.text,1,':'))
        else
            ParamByName('su_extra').AsString := '';

        if CheckBox4.Checked then
            ParamByName('need_chart_memo').AsString := '1'
        else
            ParamByName('need_chart_memo').AsString := '';

         ParamByName('sutakupche').AsString := cbSutakUpche.Text;
         ParamByName('gasankind').AsString  := edtGasanKind.Text;
         ParamByName('sutakgrade').AsString := edtSutakGrade.Text;
         ParamByName('modality').AsString :=
              trim( columnComboBox1.ColumnItems[columnComboBox1.itemindex, 0]);

        ParamByName('teakryecode').AsString :=
                  cbTJungNeyuk.ColumnItems[cbTJungNeyuk.itemindex, 0];


        ExecSql;
        Showmessage('저장되었습니다');


        FormShow(Self);
    end;
end;

procedure TSugaProp_f.Button1Click(Sender: TObject);
begin
      LoadTJungCode;
      cbTjungNeyuk.Visible:= true;
end;

procedure TSugaProp_f.Button2Click(Sender: TObject);
var
     a, b : double;
begin
      a:= edtBohumDanga.FloatValue;// .IntValue;
      b:=  edtBohumDanga.FloatValue * 1.2;
      edtilbanDanga.FloatValue := round(b);// round(edtBohumDanga.IntValue * 1.2);
end;

procedure TSugaProp_f.Button3Click(Sender: TObject);
var
   nSuSobulru : integer;

begin
  try
    with dm_f.SqlTemp do
    begin
        Close;
        Sql.Clear;


        Sql.Add('update jinryo_s set');
        Sql.Add('su_gu1=:su_gu1, su_gu2=:su_gu2, su_gu3=:su_gu3, su_sobulru=:su_sobulru');
        Sql.Add('where su_key=:su_key and (jin_day >= :jin_day1 and jin_day<=:jin_day2) ');
        paramByName('jin_day1').AsString := formatDatetime('YYYY-MM-DD', datetimepicker1.Date);
        paramByName('jin_day2').AsString := formatDatetime('YYYY-MM-DD', datetimepicker2.Date);
        paramByName('su_key').AsString   :=  edtSukey.Text;


        if cbSuGu1.Itemindex >= 0 then
            ParamByName('su_gu1').AsInteger := cbSuGu1.ItemIndex + 1
        else
            ParamByName('su_gu1').AsString := '';


{
0 행위료
1 수탁검사
2 치료재료
3 약품
4 100/50
5 100/80
6 100/30
7 100/90
8 100/100
9 보훈100/100}
        case cbSuGu2.ItemIndex of
            0: ParamByName('su_gu2').AsString := '1';  //행위료
            1: ParamByName('su_gu2').AsString := '9';  //수탁검사
            2: ParamByName('su_gu2').AsString := '8';  //치료재료
            3: ParamByName('su_gu2').AsString := '3';  //약품
            4: ParamByName('su_gu2').AsString := 'A';  //100/50
            5: ParamByName('su_gu2').AsString := 'B';  //100/80
            6: ParamByName('su_gu2').AsString := 'D';  //100/30
            7: ParamByName('su_gu2').AsString := 'E';  //100/90
            8: ParamByName('su_gu2').AsString := 'U';  //100/100
            9: ParamByName('su_gu2').AsString := 'V';  //보훈100/100

        else
            begin
                ParamByName('su_gu2').AsString := '';
            end;
        end;

            ParamByName('su_gu3').AsString :=
                 formatFloat('00', longInt(cbSuGu3.Items.Objects[cbSuGu3.ItemIndex]));

        nSuSobulru := longInt(cbSoBulRu.Items.Objects[cbSoBulRu.ItemIndex]);
        if cbSoBulRu.Itemindex >= 0 then
          ParamByName('su_sobulru').AsString :=   inttostr(nSuSobulru)
        else
          ParamByName('su_sobulru').AsString := '0';






        execsql;
        showmessage('변환 완료.');
    end;
  except

  end;
end;

procedure TSugaProp_f.cbSoBulruChange(Sender: TObject);
begin

      label17.Caption :=
          inttostr( longInt(cbSoBulru.Items.Objects[cbSoBulru.ItemIndex]));

end;

procedure TSugaProp_f.cbSuGu2Change(Sender: TObject);
begin
      label23.Caption :=formatFloat('00', longInt( cbSuGu2.Items.Objects[cbSuGu2.ItemIndex]));

end;

procedure TSugaProp_f.cbSuGu3Change(Sender: TObject);
begin
      label6.Caption :=  formatFloat('00', longInt(cbSuGu3.Items.Objects[cbSuGu3.ItemIndex]));
end;

procedure TSugaProp_f.LoadTJungCode ;
begin

  try
      screen.Cursor := crHourGlass;


      with Dm_f.sqlTemp do
      begin

        with  cbTjungNeyuk do
        begin
          Columns.Clear;
          ComboItems.Clear;
        end;

        close;
        SQL.Clear;
        SQL.text :=
                   'Select * from ma_basic                                   ' +
          #13#10 + 'where  (code like  ''130%'') and (code <> ''13000'')     ' +
          #13#10 + 'and inuse <>  ''0''                                      '
          + #13#10 +
        // 'order by val,code                                        ';
          'order by val                                    ';

       open;
        if not isEmpty then
        begin

          with cbTjungNeyuk do
          begin
            with Columns.Add do
            begin
              width := 70;
            //  Font.Style := [fsBold];
              Font.Name := '맑은 고딕';
              Font.Size := 11;
            end;
            with Columns.Add do
            begin
              width := 500;
             // Font.Color := ClBlue;
            //  Font.Style := [fsBold];
              Font.Name := '맑은 고딕';
              Font.Size := 11;
            end;
            with Columns.Add do
            begin
              width := 0;
             // Font.Color := ClBlue;
            //  Font.Style := [fsBold];
              Font.Name := '맑은 고딕';
              Font.Size := 11;
            end;
            end;

          end;


          //공백 추가....
            with cbTjungNeyuk.ComboItems.Add do
            begin
              Strings.Add(''); //
              Strings.Add('');
              Strings.Add(''); //

            end;


          while not eof do
          begin

            with cbTjungNeyuk.ComboItems.Add do
            begin
              Strings.Add(trim(fieldByname('val').asString)); //
              Strings.Add(trim(fieldByname('disp').asString));
              Strings.Add(trim(fieldByname('remark').asString)); //

            end;


            next;
          end;

        end;
   finally
   screen.Cursor := crDefault;
  end;
end;

procedure TSugaProp_f.Tab2Enter(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        SelectNext(Sender as TWinControl, True, True);
    end;
end;

procedure TSugaProp_f.edtSuKeyKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin


          loadSu_key(1, edtSuKey.Text);
//        if edtSuKey.Text <> '' then
//        begin
//            with dm_f.sqltemp do
//            begin
//                Close;
//                Sql.Clear;
//                Sql.Add('select * from suga where su_key=:sCode');
//                ParamByName('sCode').AsString := edtSuKey.Text;
//                Open;
//                First;
//                if not isEmpty then
//                begin
//                    ShowMessage('이미 존재하는 코드입니다. 다른 코드를 입력해 주십시오');
//                    edtSuKey.Text := '';
//                    edtSuKey.SetFocus;
//                    Exit;
//                end;
//                //Close;
//                //Sql.Clear;
//                //Sql.Add('insert into suga (su_key,su_gu1,su_gu3,su_kor_name) values (:sCode,'''','''','''')');
//                //ParamByName('sCode').AsString := edtSuKey.Text;
//                //ExecSql;
//                SelectNext(Sender as TWinControl, True, True);
//            end;
//        end
//        else
//        begin
//            ShowMessage('코드를 입력해 주십시오');
//            edtSuKey.SetFocus;
//        end;
    end;

end;

procedure TSugaProp_f.edtUserKeyKeyPress(Sender: TObject; var Key: Char);
begin
     loadSu_key(2, edtUserKey.Text); //사용자키검색
end;

procedure TSugaProp_f.btnDeleteClick(Sender: TObject);
begin
     //삭제
    with dm_f.SqlTemp do
    begin
        Close;
        Sql.Clear;
        Sql.Add('delete from suga where su_key=:sCode');
        ParamByName('sCode').AsString := edtSuKey.Text;
        ExecSql;
    end;
    ShowMEssage('삭제되었습니다');

    Close;
end;

procedure TSugaProp_f.grdApplyDayDblClick(Sender: TObject);
begin

  if Application.MessageBox('선택한 항목을 삭제 하시겠습니까?', '확인', MB_OKCANCEL) = 1 then
  begin

    if ((grdApplyDay.RowCount > 1) and (grdApplyDay.Row >= 1)) then
    begin
        if grdApplyDay.Cells[5, grdApplyDay.Row]  <> '' then
        begin
            with dm_f.SqlTemp do
            begin
                Close;
                Sql.Clear;
                Sql.Add('delete from suga_history where su_id=:su_id');
                ParamByName('su_id').AsString := grdApplyDay.Cells[5, grdApplyDay.Row] ;
                ExecSql;
            end;
            grdApplyDay.RemoveRows(grdApplyDay.Row, 1);
        end
        else
        begin
            ShowMessage('항목을 삭제할 수 없습니다');
        end;
    end;

  end;
end;

procedure TSugaProp_f.CheckBox3Click(Sender: TObject);
begin
    cbExtra.Enabled := CheckBox3.Checked;
end;

procedure TSugaProp_f.CheckBox5Click(Sender: TObject);
begin

    Edit5.Visible := CheckBox5.Checked;
    Edit6.Visible := CheckBox5.Checked;

end;

procedure TSugaProp_f.btnFindClick(Sender: TObject);
begin
       loadSu_key(1, edtSukey.Text);
//    sdFileName := ExtractFileDir(Application.ExeName) + '\수가파일.mdb';
//
//  if edtSuKey.Text <> '' then
//  begin
//
//     if dm_f.ADOConnection1.Connected = false then
//           dm_f.adoConnection1.ConnectionString :=
//           'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sdFileName + ';Mode=ReadWrite;Persist Security Info=False';
//
//     with dm_f.sqlMDB do
//     begin
//
//            Close;
//            Sql.Clear;
//            SQL.Add('select 코드, 한글명칭, 적용단가, 상대가치점수, 분류번호, 적용일자 from 수가 where 코드 =:Code');
//            Parameters.ParamByName('Code').Value := edtSuKey.Text;
//
//            Open;
//            First;
//            if not isEmpty then
//            begin
//
//                edtName.Text := FieldByName('한글명칭').AsString;
//                edtAppDay.Text := FieldByName('적용일자').AsString;
//                edtBohumDanga.intValue := FieldByName('적용단가').AsInteger;
//                wNumEdit2.intValue := FieldByName('적용단가').AsInteger;
//                edtilbanDanga.intValue := FieldByName('적용단가').AsInteger;
//                wNumEdit4.intValue := 0;
//                edtBoDay.Text := FieldByName('적용일자').AsString;
//                edtJaDay.Text := FieldByName('적용일자').AsString;
//                edtIlDay.Text := FieldByName('적용일자').AsString;
//                edtWoDay.Text := FieldByName('적용일자').AsString;
//
//                CheckBox5.Checked := False;
//                Edit5.Text := '';
//                Edit6.Text := '';
//                cbSuGu1.Itemindex := 1;
//                cbSuGu2.Itemindex := 0;
//
//                if (Copy(FieldByName('코드').AsString, 1, 1) = 'B') or (Copy(FieldByName('코드').AsString, 1, 1) = 'C')  or (Copy(FieldByName('코드').AsString, 1, 1) = 'E')
//                   then  //검사
//                        cbSuGu3.Itemindex := 6
//                    else if (Copy(FieldByName('코드').AsString, 1, 1) = 'G') or (Copy(FieldByName('코드').AsString, 1, 1) = 'H') then  //촬영
//                        cbSuGu3.Itemindex := 7
//                    else if (Copy(FieldByName('코드').AsString, 1, 1) = 'Q') or (Copy(FieldByName('코드').AsString, 1, 1) = 'S') then  //수술
//                        cbSuGu3.Itemindex := 5
//                    else if (Copy(FieldByName('코드').AsString, 1, 1) = 'U') then  //처치
//                        cbSuGu3.Itemindex := 4
//                    else
//                    begin
//                        cbSuGu3.ItemIndex := -1;
//                        cbSuGu3.Text := 'Invalid Data';
//                end;
//                cbSanjungBase.Itemindex := 4;  //   su_danwi = 'M'
//                checkBox2.Checked := False;
//                checkBox3.Checked := False;
//                cbExtra.Enabled := False;
//
//                checkBox4.Checked := False;
//                Edit2.Text := '1';
//                Edit3.Text := FieldByName('코드').AsString;
//                edtSuKey.Text := FieldByName('코드').AsString;
//                Edit7.Text := '';
//                wNumEdit6.FloatValue := FieldByName('상대가치점수').AsFloat;
//
//                grdApplyDay.Addrow;
//                grdApplyDay.Cells[1, 1]  := FieldByName('적용일자').AsString;
//                grdApplyDay.Cells[2, 1]  := FieldByName('상대가치점수').AsString;
//                grdApplyDay.Cells[3, 1]  := FieldByName('적용단가').AsString;
//                grdApplyDay.Cells[4, 1]  := '1';
//                grdApplyDay.Cells[5, 1]  := '';
//
//            end
//            else
//            begin
//                ShowMessage('수가마스타에 해당코드가 없습니다');
//            end;
//
//
//
//     end;
//
//
//  end;

end;

end.



09  투약(내복약)
10  투약(외용약)
12  주사
19  마취
23  처치
25  수술

28  검사 , 임플란트
29  방사선
30  응급 및 회송
31  CT촬영
41  기타
39  보철
50
47  임플란트
48
49

                begin
                    if FieldByName('su_gu3').AsString      = '09' then
                        cbSuGu3.Itemindex := 0
                    else if FieldByName('su_gu3').AsString = '10' then
                        cbSuGu3.Itemindex := 1
                    else if FieldByName('su_gu3').AsString = '12' then
                        cbSuGu3.Itemindex := 2
                    else if FieldByName('su_gu3').AsString = '19' then
                        cbSuGu3.Itemindex := 3
                    else if FieldByName('su_gu3').AsString = '23' then
                        cbSuGu3.Itemindex := 4
                    else if FieldByName('su_gu3').AsString = '25' then
                        cbSuGu3.Itemindex := 5
                    else if FieldByName('su_gu3').AsString = '28' then
                        cbSuGu3.Itemindex := 13
                    else if FieldByName('su_gu3').AsString = '29' then
                        cbSuGu3.Itemindex := 6
                    else if FieldByName('su_gu3').AsString = '30' then
                        cbSuGu3.Itemindex := 6
                    else if FieldByName('su_gu3').AsString = '31' then
                        cbSuGu3.Itemindex := 7
                    else if FieldByName('su_gu3').AsString = '41' then
                        cbSuGu3.Itemindex := 8
                    else if FieldByName('su_gu3').AsString = '39' then
                        cbSuGu3.Itemindex := 9
                    else if FieldByName('su_gu3').AsString = '50' then
                        cbSuGu3.Itemindex := 10
                    else if FieldByName('su_gu3').AsString = '47' then
                        cbSuGu3.Itemindex := 11
                    else if FieldByName('su_gu3').AsString = '48' then
                        cbSuGu3.Itemindex := 12
                    else if FieldByName('su_gu3').AsString = '49' then
                        cbSuGu3.Itemindex := 13


