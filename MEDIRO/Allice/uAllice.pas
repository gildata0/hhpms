unit uAllice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvUtil, Vcl.CheckLst,
   math,
   uni,
     IdHTTP, IdURI,
     IdFTP, IdFTPList, IdFTPCommon,   IdGlobal,
     iniFiles,
//  bsHL7Object, ZPI_Z01MsgUnit, bsUtils,
 // BSHL7251, BSHL7Grp251, BSHL7DT251,

  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ComCtrls, Vcl.ExtCtrls, AdvPanel,
  EllipsLabel, AdvCombo, ColCombo, AdvProgressBar;
type

     TRisResult = record
          aResult : boolean;
          aMsgIn : string;

     end;


type
  Tallice_f = class(TForm)
    grdJx2: TAdvStringGrid;
    clbJinryoHx: TCheckListBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    edtChart: TEdit;
    edtJubsuID: TEdit;
    edtTeam: TEdit;
    edtGubun: TEdit;
    Button2: TButton;
    dMain: TDateTimePicker;
    lblAge: TLabel;
    lstGroupTemp: TListBox;
    wLabel38: TLabel;
    cbJong: TComboBox;
    Button3: TButton;
    pnlRIS: TAdvPanel;
    memRis: TMemo;
    chkAsXML: TCheckBox;
    cbDoc: TColumnComboBox;
    cbTreatRoom: TColumnComboBox;
    Label5: TLabel;
    EllipsLabel1: TEllipsLabel;
    Button4: TButton;
    edtname: TEdit;
    edtJumin: TEdit;
    memChart: TMemo;
    Timer1: TTimer;
    Label6: TLabel;
    Label7: TLabel;
    Button5: TButton;
    progressbar: TAdvProgressBar;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure   insertRP_requestUseJinsKey(rpPk: Integer; jins_Key:string);

    procedure insertsugaOnce(aGrid: TAdvstringGrid; sCode: string; jinDay: string; jongbyul:
          integer; age: string; isYagan: boolean; ARow, AOrder: Integer; aQty: Integer = 0;
           aKind : integer = 0; exceptCode : string ='' );
    procedure InsertSugaCode(AGroupName, AGroupCode: string;
          nAdd: Integer; aQty:integer;  aSutak: string = '1');

    function  LoadGroupName(groupCode: string): string;
    function  makeSutakSanCode(sugakey, gasankind, sutakupche,
          sutakgrade: string): string;

    procedure  insertjin_s(jubsu_id:string;ADate: TDateTime; AChart: string; aTeam: string;
           aDoc: string; aGrid: TAdvStringGrid; saveKind:integer = 1);// grdJx2   saveKind 0: save 1: ����


//Referalcode Jinryo Save
function  saveReferalPad_Jinryo(
          jins_key          :string;
          requestPK        :integer) : boolean;

//Bit Orderinfo ��Ƽ��
function saveOrderInfo(
          ikind            :integer;
          orderID          :string;
          accessionID      :string;
          jin_sid          :string;
          chart            :string;
          hname            :string;
          ename            :string;
          birth            :string;
          gender           :string;
          age              :string;
          su_kor_name      :string;
          su_eng_name      :string;
          doctor           :string;
          sector           :string;
          order_day        :string;
          order_time       :string;
          su_key           :string;
          jin_ilsu         :string;
          reserve_time     :string;
          emergency        :string;
          sect             :string;
          modality         :string;
          studyID          :string;
          treatroom        :string;
          docname          :string;
          referHospCode    :string) : boolean;


function  saveOrderInfo_updateEngName(     //Worklist ȯ������ ����
           orderDay         :string;
           chart            :string;
           hname            :string;
           ename            :string;
           birth            :string;
           gender           :string;
           age              :string): boolean;


//RIS
function  RisSave( risKind : integer ;AMemo: TMemo;
       aCheckbox: TcheckBox;  nowTime:TdateTime;
       aOrderNO  : string='';
       groupCode : string='';
       groupName : string='';
       seqNo : string='';
       isCancel : boolean= false) : TRisResult;
    function LoadChartNo(aName, aJumin: string):boolean;
    function LoadJubsuID(aChart, aJinDay: string): boolean;
    function AlliceJubsuSave : integer;

  public
    { Public declarations }




    function AlliceJubsuUpdate(
     varChart,
     varTeam,
     vargubun,
     varday: string
     ): boolean;
  end;

var
  allice_f: Tallice_f;
      aSugu1  : string;
      aSugu2  : string;
      aSugu3  : string;

implementation
uses
     uFunctions, uConfig, uDM,  uGogekData;
     //uHLClass, uTCPcs,

{$R *.dfm}

function Round2(number: currency; pt: integer): currency;
//Round2(number: single; pt: integer): Double;
begin
     if number <> 0 then
     begin
          if pt >= 0 then
          begin
               Result := TRUNC((number / power(10, pt)) + 0.5) * power(10,
                    pt);
          end
          else
          begin
               Result := TRUNC((number * power(10, -pt)) + 0.5) /
                    power(10,
                    -pt);
          end;
     end
     else
     begin
          Result := 0;
     end;
end;

function JulSa2(number: double; iDigit: Integer): double;
begin
     Result := (Floor(number) div iDigit) * iDigit;
end;



function JulSa(number: Currency; iDigit: Integer): Currency;
var
     iValue: Integer;
     iIndex: Integer;
begin
     iValue := 1;
     for iIndex := 1 to iDigit do
     begin
          iValue := iValue * 10;
     end;

     Result := Floor((number / iValue)) * iValue;
end;



function getSugaGeum(varCode:string; jinday:string; kind:integer):integer;  //grdJx2
begin
     result:=0;
     with dm_f.sqlTemp14 do
     begin
            Close;
            Sql.Clear;
            Sql.Add('getsuga :su_key,:jin_day');
            ParamByName('su_key').AsString := varCode;
            ParamByName('jin_day').AsString := jinday;
            Open;
            First;
            if not isEmpty then
            begin
                case  kind of
                  2:   Result := FieldByName('il_dan').AsInteger ;
                  0:   Result := FieldByName('bo_dan').AsInteger;
                end;
            end;
     end;
 {   with dm_f.sqlTemp14 do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from sugabasic where su_key= :su_key and su_apply =:jin_day');
          ParamByName('Su_Key').AsString := varCode;
          //su_apply�� 2013-01-01�̶� �������� ������ �ִ�.
          //������� �ظ��� 1��1�� �����ȴ�.
          //�������� ������ ���� 1��1���̴�.
          ParamByName('jin_day').AsString := FormatDateTime('YYYY-01-01',  varDate);
          Open;
          if not isEmpty then
          begin
               Result := FieldByName('bo_dan').AsInteger;
          end
          else
          begin
              Close;
               Sql.Clear;
               Sql.Add('select top 1 * from suga_history where su_key= :su_key and  su_apply<=:jin_day order by su_apply desc ');
               ParamByName('Su_Key').AsString := Code;
               ParamByName('jin_day').AsString := FormatDateTime('YYYY-01-01',  dWorkDate);
               Open;
               if not isEmpty then
               begin
                    Result := FieldByName('bo_dan').AsInteger;
               end
               else
               begin
                    Result := 0;
               end;
          end;
     end;
     }
end;


// ���������� ���  ...........................................................

function CalcPoint(su_junsan, jin_day: string; perc: Double): Integer;
begin
  with dm_f.SqlCalc do
  begin
    Close;
    Sql.Clear;
    //Sql.Add('select su_point from suga where su_key=:su_key');
    //ParamByName('su_key').AsString := su_junsan;

    Sql.Add('getsuga :su_key, :jin_day');
    ParamByName('su_key').AsString := su_junsan;
    ParamByName('jin_day').AsString := jin_day;

    Open;
    First;
    if not isEmpty then
    begin
      if jin_day >= '2019-01-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 83.4, 1)); //�ǰ�83.4  ġ���� 84.8
        //   showmessage(inttostr(result));
      end
      else
      if jin_day >= '2018-01-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 83.1, 1));
        //   showmessage(inttostr(result));
      end
      else if jin_day >= '2017-07-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 80.9, 1));
        //   showmessage(inttostr(result));
      end
      else if jin_day >= '2017-01-01' then
      begin
        Result :=
          Round(Round2(Round2(FieldByName('su_point').AsFloat
          * perc, -2) * 80.9, 1));
        //  showmessage(inttostr(result));
      end
      else
        if jin_day >= '2016-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 79.0, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2015-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 77.5, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2014-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 75.8, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2013-01-01' then
        begin
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 73.8, 1));
          //  showmessage(inttostr(result));
        end
        else if jin_day >= '2012-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 71.9, 1))
        else if jin_day >= '2011-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 70.1, 1))
        else if jin_day >= '2010-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 67.7, 1))
        else if jin_day >= '2009-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 65.8, 1))
        else if jin_day >= '2008-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 63.6, 1))
        else if jin_day >= '2007-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 62.1, 1))
        else if jin_day >= '2006-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 60.7, 1))
        else if jin_day >= '2005-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            * perc, -2) * 58.6, 1))
        else if jin_day >= '2004-01-01' then
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            *
            perc, -2) * 56.9, 1))
        else
          Result :=
            Round(Round2(Round2(FieldByName('su_point').AsFloat
            *
            perc, -2) * 55.4, 1));
    end
    else
    begin
      Result := 0;
    end;
  end;
end;

//�ܰ� * ȸ���� �ݾױ��ϱ� ....................................................

function CalcKumak(
        suKey     : string;
        nDanga    : integer ;
        nQty      : double ;
        nilsu     : integer ;
        nDanQty   : integer ;
        jinDay    : string;
        soaGasan  : string;
        simGasan  : string;
        boolGasan : Boolean;
        age       : string = '20'): Integer;
var
//  nDanga, nQty, nilsu, nDanQty : integer;

  Gasan, JongGasan: Single;
  nKumak: Single;
  nJaeryoSum: Currency;

  s2, s3, s5: integer;
begin
  // AGrid = realGrid16

                  //�� �׸� �ݾ��� ���Ѵ�.
                  // 2:  �ܰ�  nDanga
                  // 3:  ����  qty
                  // 4:  �ϼ�  ilsu
                  // 6:  ������       dan_qty


//   nDanga :=  AGrid.Ints[2, ARow];  //�ܰ�
//   nQty   :=  AGrid.Ints[3, ARow];  //����
//   nilsu  :=  AGrid.Ints[4, ARow];  //�ϼ�
//   nDanQty := AGrid.Ints[6, ARow];  //������
//   soagasan:= (AGrid.cells[12, ARow]
//   simGasan :=  AGrid.cells[13, ARow]
//   sukey  := AGrid.cells[9, ARow]

  if age = '' then
    age := '20';

  result := 0;
  if boolGasan then
  begin
    if (aSuGu1 = '2') then
    begin //su_gu1   �޿�������
      // gansan : ������(��������, �Ҿư���, �ɾ߰���)
      //  ��缱 ���Ϻ��� : 2ȸ°���� 5ȸ���� 50%, 6ȸ�̻��� 5ȸ��
      // ġ��Ȱ�ü� : ���Ϻ��� 2ȭ°���� 50%�� ����

      gasan := 1;

      // �Ҿư���, ���ΰ���  .........................................
     // if AGrid.cells[10, ARow] <> '' then
     if soaGasan <> '' then
      begin

       // if (AGrid.cells[10, ARow] = '8') then //'2017-07-01'���� 6���̸����� ����
         if soaGasan = '8' then
        begin // �Ҿư����̸�  30% (8���̸�), 10%(��缱)

          if ((StrToInt((age)) >= 0) and
            (StrToInt((age)) < 8)) then
          begin

            if (aSuGu3 = '31') then
            begin //��缱

              if (jinday < '2017-07-01') then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
              begin
                gasan := gasan + 0.15;
                  //2017-08-11 0.1 ���� 0.15�� �����ߴ�..���������� 15%������ �ߴ�.
              end;

              if StrToInt((age)) < 6 then //��缱 6���̸� 15% ����
              begin
                gasan := gasan + 0.15;
              end;

              //2017-07-01 ���ʹ� ��缱ġ���   6���̸� 15%  ���� ��������.
              //��缱 Ư������ ���ܷ�          6���̸� 20%
              //��缱ġ���                    1�� �̸� 50% 1��~6�� 30%
               // 2017-07-01���� ��缱  300 ���� �����ڵ�   ������
             //ToDo : ���⼭ �ؾ��ϴ°��� �ƴϴ�....
             // 8���̸� �Ҿ��ΰ�� ��缱 �̸� �ڵ� �ڿ� 300�� �ٿ��� �Ѵ�.????
         //AGrid.Ints[7,  ARow].AsString := AGrid.Ints[7,  ARow].AsString +'300';
         //CalcPoint�� ( �ݾ� = �׸��� ��밡ġ����  X ���س⵵ ��밡ġ ���� )�� ������ش�.
            end
            else if (aSuGu3 = '39') then
            begin //��缱 ct
              if (jinday < '2017-07-01') then //'2017-07-01' ���� �Ҿư����ڵ� 300 ��������.
                gasan := gasan + 0.15;

              //ToDo : ���⼭ �ؾ��ϴ°��� �ƴϴ�....
             // 8���̸� �Ҿ��ΰ�� ��缱 �̸� �ڵ� �ڿ� 300�� �ٿ��� �Ѵ�.
             // 2017-07-01���� ��缱  300 ���� �����ڵ�   ������
        //     AGrid.Ints[7,  ARow].AsString := AGrid.Ints[7,  ARow].AsString +'300';
            end
            else if (aSuGu3 = '19') then
            begin //����
              if StrToInt(age) < 6 then //����� 6���̸�
                gasan := gasan + 0.3;

              //ToDo : ���⼭ �ؾ��ϴ°��� �ƴϴ�....
             // 8���̸� �Ҿ��ΰ�� ��缱 �̸� �ڵ� �ڿ� 300�� �ٿ��� �Ѵ�.
             // 2017-07-01���� ��缱  300 ���� �����ڵ�   ������
        //     AGrid.Ints[7,  ARow].AsString := AGrid.Ints[7,  ARow].AsString +'300';
            end
            else
            begin
              gasan := gasan + 0.3; //������
            end;

          end;
          // ���ΰ���(su_soa=8) : ���뿡�� 30%
          if (StrToInt((age)) >= 70) then
          begin
            if aSuGu3 = '19' then //����
              gasan := gasan + 0.3;
          end;
        end;
      end;

      // �ɾ߰���(jin_simya=1) : ����(50%), ����(50%)  ...............
    //  if AGrid.cells[11, ARow] <> '' then
    if  simGasan <> '' then

      begin
       // if AGrid.cells[11, ARow] = '1' then
        if  simGasan = '1' then
        begin
          gasan := gasan + 0.5;
        end;
      end;

      // ������ ���ؼ� 10���̸����� 4��5�� ...........................
      if gasan > 1 then
      begin

        nKumak := Round2(CalcPoint( suKey,  //AGrid.cells[7, ARow], //su_jey
            jinDay,
            gasan) *
            nilsu * //AGrid.Ints[3, ARow] *
            nQty, 1);//AGrid.Ints[2,  ARow], 1);
        //   end
        //   else if   (aSuGu3
        //                            = '31') or   (aSuGu3
        //                            = '39') then

        //   begin
        //
        //              nKumak := Round2(CalcPoint(aSuKey,  FormatDateTime('YYYY-MM-DD',  dMain.date),  gasan) *
        //                         AGrid.Ints[2, ARow] * AGrid.Ints[3, ARow], 1);

      end
      else
      begin
        nKumak := Round2(nDanga * //AGrid.Ints[5, ARow] *
           nQty //AGrid.Ints[2, ARow]
          * nilsu, 1);// AGrid.Ints[3, ARow], 1);
      end;

      //     s2:=AGrid.Ints[2, ARow];
      //     s3:=AGrid.Ints[3, ARow];
      //      s5:=AGrid.Ints[5, ARow];
      //      showmessage(inttostr(S2)+':'+inttostr(S3)+':'+inttostr(S5));

           //���̸����� 4��5��
      Result := Round(nKumak);

    end
    else if ((aSuGu1 = '1') or (aSuGu1 = '3') or (aSuGu1 = '0')) then
    begin //���,���������

//      if ((AGrid.cells[6, ARow] = '1') or
//        (AGrid.cells[6, ARow] = '') or
//        (AGrid.cells[6, ARow] = '0')) then
     if (nDanQty = 1) or  (nDanQty = 0) then
      begin //��뷮=1
        Result := Round( nDanga *  //  nDanga AGrid.Ints[5, ARow]
          nqty *                   //  nqty  AGrid.Ints[2, ARow] *
          nilsu );//AGrid.Ints[3, ARow]);                //
        //  Round(�ܰ� * ���� * �ϼ�) ;
      end
      else
      begin //��뷮�� > 1  (���)
        Result := Round(Round2(nDanga * //AGrid.Ints[5, ARow] *
          Round2(((nqty * //AGrid.Ints[2, ARow] *
          nilsu ) //AGrid.Ints[3, ARow])
          / nDanQty), -2), 0)); // AGrid.Ints[6, ARow]), -2), 0));
        //  Round(�ܰ� * Round2(((���� * �ϼ�) / ������),-2)) ;
      end;
    end
    else
    begin //��޿� ������
      Result := Round(nDanga * //AGrid.Ints[5, ARow] *
        nqty * //AGrid.Ints[2, ARow] *
        nilsu );// AGrid.Ints[3, ARow]);
    end;
  end
  else
  begin
      Result := Round(nDanga * //AGrid.Ints[5, ARow] *
        nqty * //AGrid.Ints[2, ARow] *
        nilsu );// AGrid.Ints[3, ARow]);
  end;
end;

function StrCase(Selector: string; StrList: array of string): Integer;
var
     I: Integer;
begin
     Result := -1;
     for I := 0 to High(StrList) do
     begin
          if Selector = StrList[I] then
          begin
               Result := I;
               Break;
          end;
     end;
end;


function  Tallice_f.makeSutakSanCode(sugakey, gasankind, sutakupche,
  sutakgrade: string): string;
var
  san1, san2, san3: string;
  tempQuery: TuniQuery;
begin
  san1 := '0';
  san2 := '0';
  san3 := '0';
  Result := san1 + san2 + san3;


  // 1. gasanKind = lab �̸� ���ܰ˻������� sancode�� ������.

  // 2. sutakupche = 'S'  san3=
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.text :=
        'SELECT  CutCod, CutAdpDte, CutNam, CutSclGen, CutSclCar,                  '
        + #10#13 +
        ' CutSclIns, CutSclWrk, CutSclGud, CutExpDte,                    ' +
        #10#13 + ' CutUpdDtm, CutUidCod, CutAssCod, CutCls, CutHspTyp, CutGcoNum, '
        + #10#13 +
        ' CutGumCheGrade, CutHackYon,                                    ' +
        #10#13 + '  CutByungRiYon                                                 '
        + #10#13 +
        'FROM     ma_sutakupche  where  CutCod=:CutCod                   ';
      paramByName('CutCod').asString := sutakupche;
      open;
      if not isEmpty then
      begin
        if gasankind = 'LAB' then
          san3 := copy(fieldByname('CutGumCheGrade').asString, 1, 1);

        if (sutakgrade = 'H') and (fieldByname('CutHackYon').asString = 'Y')
        then
          san3 := '7';

        if (sutakgrade = 'B') and (fieldByname('CutByungRiYon').asString = 'Y')
        then
          san3 := '8';
      end;

    end;

  finally

    tempQuery.Free;
  end;

  if Length(trim(sugakey)) = 5 then
    Result := trim(sugakey) + san1 + san2 + san3;
  if (Length(trim(sugakey)) = 8) and (copy(sugakey, 8, 1) <> '7') and
    (copy(sugakey, 8, 1) <> '8') then
    Result := copy(sugakey, 1, 7) + san3
  else
    Result := sugakey;
end;

procedure  Tallice_f.insertRP_requestUseJinsKey(rpPk: Integer; jins_Key:string);
var
   ins  : boolean;
   tempQuery: TuniQuery;
begin


      try
        tempQuery := TuniQuery.Create(self);
        tempQuery.Connection := Dm_f.UniConnection1;


        with tempQuery do
        begin
              close;
              SQL.Clear;
              SQL.Add('select * from  RP_requestUseJinsKey');
              SQL.Add('Where requestpk= :requestpk and jins_Key = :jins_Key');
              paramByName('requestpk').AsInteger := rpPk;
              paramByName('jins_Key').AsString   := jins_Key;
              open;
              if not isEmpty then
                     ins := false
              else
                     ins := true;



              if ins = true then
              begin

                 SQL.Add('insert into RP_requestUseJinsKey');
                 sql.add('(jins_Key,  requestpk) values  (:jins_Key,  :requestpk) ');

                 paramByName('jins_Key').AsString   := jins_Key;
                 paramByName('requestpk').AsInteger := rpPk;
                 execsql;

              end;

//              else
//              begin
//                 SQL.Add('delete from RP_requestUseJinsKey');
//                 sql.add('where  requestpk =:requestpk        ');
//                 paramByName('requestpk').AsInteger := rpPk;
//                 execsql;
//
//                 SQL.Add('insert into RP_requestUseJinsKey');
//                 sql.add('(jins_Key,  requestpk) values  (:jins_Key,  :requestpk) ');
//
//                 paramByName('jins_Key').AsString   := jins_Key;
//                 paramByName('requestpk').AsInteger := rpPk;
//                 execsql;
//
//              end;

          end;



      finally
          tempQuery.free;
      end;

end;



function  Tallice_f.LoadGroupName(groupCode: string): string;
var
  tempQuery: TuniQuery;
begin
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from groupcode where groupcode=:GrKey ');
      paramByName('GrKey').asString := groupCode;
      open;
      Result := fieldByname('groupName').asString;
    end;

  finally
    tempQuery.Free;
  end;
end;

// óġ��ư Ǯ� grid�� �ֱ� ................................................

procedure Tallice_f.InsertSugaCode(AGroupName, AGroupCode: string;
  nAdd: Integer; aQty:integer; aSutak: string = '1');
const
  loadSugaList =
    'select *,                                                                                                                                                     '
    + #10 + '(select top 1 su_key from suga s where s.user_key= g.SugaCode  and (s.sugu1 <>''����'' or s.sugu1 is null )  order by s.su_apply desc ) as su_key,             '
    + #10 + '(select top 1 su_gu3 from suga s where s.user_key= g.SugaCode  and (s.sugu1 <>''����'' or s.sugu1 is null )   order by s.su_apply desc ) as su_gu3,             '
    + #10 + '(select top 1 su_gu2 from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu2,              '
    + #10 + '(select top 1 su_danwi from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_danwi,          '
    + #10 + '(select top 1 bo_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as bo_dan,              '
    + #10 + '(select top 1 ja_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as ja_dan,              '
    + #10 + '(select top 1 il_dan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as il_dan,              '
    + #10 + '(select top 1 dan_qty from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as dan_qty,            '
    + #10 + '(select top 1 su_gu1 from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_gu1,              '
    + #10 + '(select top 1 su_soa from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_soa,              '
    + #10 + '(select top 1 Su_kor_name from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_kor_name,    '
    + #10 + '(select top 1 Su_Eng_name from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as Su_eng_name,    '
    + #10 + '(select top 1 su_yagan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as su_yagan,          '
    + #10 + '(select top 1 gasankind from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as gasankind,          '
    + #10 + '(select top 1 sutakupche from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as sutakupche,          '
    + #10 + '(select top 1 sutakgrade from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as sutakgrade,          '
    + #10 + '(select top 1 gasan from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as gasan,          '
    + #10 + '(select top 1 modality from suga s where s.user_key= g.SugaCode   and (s.sugu1 <>''����'' or s.sugu1 is null ) order by s.su_apply desc ) as modality,          '
    + #10 + '   (select top 1 bo_dan from                                                                                                                                  '
    + #10 + '      (select bo_dan,su_apply from suga where user_key=g.sugacode and (sugu1 <>''����'' or sugu1 is null )                                                      '
    + #10 + '	    union all                                                                                                                                                '
    + #10 + '       select bo_dan,su_apply from suga_history where user_key=g.sugacode ) m where   :jin_day >=m.su_apply                                                     '
    + #10 + '   order by su_apply desc) as Bodan                                                                                                                           '
    + #10 + ' from groupsuga g                                                                                                                                             '
    + #10 + ' where groupcode = :Groupcode   and g.grpDgsYon = ''O''                                                                                                          '
    + #10 + ' order by GroupLine                                                                                                                                            ';

var
  sALMan: string; // �Ǿ�ǰ������
  nDanga, nIOrder, i, SF, SR, SL, HF, HR, HL: Integer;
  rAdd, nQty, nMachui: double;
  FCode, suKey, Osang, Osangname, groupkindsel: string;


  ngrdJxRow : integer;

  sealantDay: string;
  // sugu1, sugu2, sugu3: string;
  nPrice: Integer;
  sugacode, suKorName, GroupName: string;
  isBigub: Boolean; // grpInsYon�� Ȯ���Ͽ� 0: ��޿� true 2: �޿� false
  groupModality: string;

  // ��Ź����
  gubKind: Integer; // ��Ź�����ڵ� ���ؼ� �ݾ� ���Ҷ� �޿� ��޿� ���� 0: �޿� 2: ��޿�
  sutakSanCode: string; // ��Ź�����ڵ�
  gasankind: string;
  sutakupche: string;
  sutakgrade: string;

  grpInsYon: string; // 0:�޿�, 2:��޿�

  tempQuery: TuniQuery;
  j: integer;
begin
  {
    �ϴ��� ���� Ȯ���ϰ�  ������ �ֳ�����
    1. ���� ġ�� ������ ������ �˾Ƴ���.
    2. ġ�ư����� ������� ���� �����̴�    (09)
    3. ����� ġ�� ������ ���� �����Ѵ�.���� �������� ���Ѵ�.

    4. ������� ���� ����ġ�ƴ��� Ȯ���Ѵ�
    5. �Ǿ�ǰ������� ������ 1ȸ�������Ѵ�.
    6. ó������� ������� ó���ϼ��� �����Ѵ�.
    7. ���������� �������غ�(�Ǵ�c 31�Ǵ�c3 �ٰ���R ������M ġ�� T �ϴ�  Null) �����ϰ�
    --8. ���� ������ �����Ѵ�.
    --9. ������ ���� �ٸ� ����ƾ�� ������.
    10. �׸��� warn DB�� �����ؼ� ���޽����� ������.
    --11. ���� �˾Ƽ� ������ ġ�� ������ ����ϰ�, �����Ḧ �����Ѵ�.


    groupsuga���� grpInsYon�� Ȯ���Ͽ� 0: ��޿� 2: �޿��� �Է��Ѵ�. }
  try
    tempQuery := TuniQuery.Create(self);
    tempQuery.Connection := Dm_f.UniConnection1;

    with tempQuery do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from groupcode where groupcode=:GrKey  ');
      paramByName('GrKey').asString := AGroupCode;
      open;
      First;
      if isEmpty then
      begin
        Showmessage(AGroupName + ' �׷��ڵ尡 �������� �ʽ��ϴ�. Ȯ���ϼ���!!');
        exit;
      end
      else
      begin
        groupkindsel := fieldByname('groupkind1').asString;
        AGroupName := fieldByname('groupName').asString;
        groupModality := fieldByname('gr_alias').asString;
      end;
    end;


    // spSkinGroupBox3.Checked := False;

    // �Ǿ�ǰ�������ڵ� Ȯ��
    if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2011-12-31') and
      (FormatDateTime('YYYY-MM-DD', dmain.Date) < '2012-04-01') and
      (configvalue.varGubun = '����') then // ������  �湮��
      sALMan := 'AL300'
    else if (FormatDateTime('YYYY-MM-DD', dmain.Date) > '2011-12-31') and
      (FormatDateTime('YYYY-MM-DD', dmain.Date) < '2012-04-01') then
      sALMan := 'AL400' // �ǿ��� �湮��
    else if configvalue.varGubun = '����' then
      sALMan := 'AL701'
    else
      sALMan := 'AL801';

    // ���̰� ������
    if LblAge.Caption = '' then
      LblAge.Caption := '20';

    // ��Ʈ��ȣ/������ üũ
//    if ft_ChartCHK then
//      exit;

    nIOrder := 1;


    for i := 1 to grdJx2.RowCount - 1 do
    begin



      if ((grdJx2.Cells[0, i] = 'GR') and (grdJx2.Cells[1, i] = AGroupName) and
        (grdJx2.Cells[14, i] = inttostr(nIOrder + 1))) then
      begin

      end;
    end;



    for j := 1 to grdJx2.ColCount-1 do
    begin

            grdJx2.CellProperties[j, grdJx2.RowCount -  1].ReadOnly := true;
    end;
//    grdJx2.Options:=  grdJx2.Options-[goEditing];


    grdJx2.CellProperties[3, grdJx2.RowCount -  1].ReadOnly := false;
    grdJx2.CellProperties[4, grdJx2.RowCount -  1].ReadOnly := false;
    grdJx2.CellProperties[5, grdJx2.RowCount -  1].ReadOnly := false;


    grdJx2.Cells[0, grdJx2.RowCount - 1] := 'GR';
    grdJx2.Cells[1, grdJx2.RowCount - 1] := AGroupName; // ��Ī
    grdJx2.Cells[9, grdJx2.RowCount - 1] := AGroupCode; // GroupCode
    grdJx2.ints[3, grdJx2.RowCount - 1] := aQty; // ����
    grdJx2.Cells[4, grdJx2.RowCount - 1] := '1'; // �ϼ�
    grdJx2.Cells[5, grdJx2.RowCount - 1] := '1'; // Ƚ��
    grdJx2.Cells[10, grdJx2.RowCount - 1] := '9'; // su_gu1
    grdJx2.Cells[14, grdJx2.RowCount - 1] := inttostr(nIOrder + 1); // IOrder
    grdJx2.Cells[8, grdJx2.RowCount - 1] := groupModality; // Modal

    grdJx2.Cells[24, grdJx2.RowCount - 1] := AGroupName; // su_eng_Name


    with tempQuery do
    begin

      close;
      SQL.Clear;
      // Sql.Add('select G.Groupcode,s.su_gu3,s.su_gu2,s.su_danwi,s.bo_dan,                                              ');
      // Sql.Add('(select top 1 bo_dan from                                                                              ');
      // Sql.Add('(select bo_dan,su_apply from suga where su_key=g.sugacode and (s.sugu1 <>''����'' or s.sugu1 is null )  union all             ');
      // Sql.Add(' select bo_dan,su_apply from suga_history where su_key=g.sugacode ) m where  :jin_day >=m.su_apply     ');
      // Sql.Add('order by su_apply desc) as Bodan,                                                                      ');
      // Sql.Add('s.ja_dan,s.il_dan,s.dan_qty,s.su_gu1,s.su_soa,s.su_yagan,S.Su_key,S.Su_kor_name,G.ilsu,G.qty,G.iltu    ');
      // Sql.Add('from groupsuga G, suga S where G.groupcode =:Groupcode and S.Su_key=G.Sugacode  and (s.sugu1 <>''����'' or s.sugu1 is null ) ');
      // Sql.Add('order by s.su_gu3 desc,   s.su_gu1 desc                                                                ');

      SQL.text := loadSugaList;

      paramByName('jin_day').asString := FormatDateTime('YYYY-MM-DD',
        dmain.Date);
      paramByName('Groupcode').asString := AGroupCode;

      open;
      First;

      if not isEmpty then
      begin

        // ���⼭ �� �׷��� Ǯ����.
        while not eof do
        begin

          nDanga := 0; // nDanGa initial;
          sugacode := trim(fieldByname('sugacode').asString); // groupSuga

          suKey := trim(fieldByname('su_key').asString);
          suKorName := fieldByname('Su_kor_name').asString;

          // sukey := Trim(FieldByName('sugacode').AsString);

          if copy(sugacode, 1, 1) = '+' then
          begin
            // if Group then Goto insertSugaGroup


            // grdJx2.AddRow;
            // grdJx2.Cells[1, grdJx2.RowCount - 1] :=  sukey;

            //
            // �׷� �������ٰ� �־�ΰ�
            // insertsugacode �� �� �Ŀ�
            // �׷� ������ �ѹ� �� ������.
            GroupName := LoadGroupName(sugacode);
            lstGroupTemp.Items.Add(GroupName + '|' + sugacode + '|' +
              trim(fieldByname('sugacode').asString));
            next;
          end
          else
          begin

            FCode := copy(trim(suKey), 1, 4);

            aSugu1 := trim(fieldByname('su_gu1').asString);

            // if Trim(FieldByName('grpInsYon').AsString) = '0' then
            // aSugu1 := '2'
            // else  if Trim(FieldByName('grpInsYon').AsString) = '2' then
            // aSugu1 := '4'
            // else
            // Trim(FieldByName('su_gu1').AsString);

            aSugu2 := trim(fieldByname('su_gu2').asString);
            aSugu3 := trim(fieldByname('su_gu3').asString);

            grpInsYon := trim(fieldByname('grpInsYon').asString);

            if cbJong.itemindex = 3 then // ������ �Ϲ��̸� ��� ��޿�
            begin
              grpInsYon := '2';
            end;

            if grpInsYon = '2' then
              isBigub := true
            else
              isBigub := false;

            case cbJong.itemindex of
              0, 1, 2, 4, 5, 8, 9, 10:
                begin // �����Ͽ� �´� �ܰ�
                  if isBigub = true then
                    nDanga := fieldByname('il_dan').AsInteger
                  else
                    nDanga := fieldByname('Bodan').AsInteger;
                end;
              6:
                begin
                  nDanga := fieldByname('ja_dan').AsInteger;
                end;
              3, 7:
                begin
                  nDanga := fieldByname('il_dan').AsInteger;
                end;
            end;

            if nDanga = 0 then
              nDanga := fieldByname('il_dan').AsInteger;

            nQty := aQty;




            ngrdJxRow :=  grdJx2.RowCount -  1;

            grdJx2.AddRow;

            ngrdJxRow :=  grdJx2.RowCount -  1;

             grdJx2.CellProperties[1, ngrdJxRow].ReadOnly := true;
             grdJx2.CellProperties[2, ngrdJxRow].ReadOnly := true;




            grdJx2.Cells[7, ngrdJxRow] := grpInsYon;
            // Trim(FieldByName('grpInsYon').AsString);

            case strCase(aSugu1, ['0', '1', '2', '3', '4', '5']) of
              1:
                grdJx2.Cells[0, ngrdJxRow] := '���';
              2:
                grdJx2.Cells[0, ngrdJxRow] := '����';
              3 .. 4:
                grdJx2.Cells[0, ngrdJxRow] := '���';
              5:
                grdJx2.Cells[0, ngrdJxRow] := '100';
            end;

            grdJx2.Cells[19, ngrdJxRow] := suKey;
            grdJx2.Cells[20, ngrdJxRow] := suKorName;
            grdJx2.Cells[21, ngrdJxRow] := fieldByname('gasan').asString;

            grdJx2.Cells[1, ngrdJxRow] := fieldByname('sugaKorName')
              .asString; // GroupSuga - sugaKorName
            grdJx2.Cells[9, ngrdJxRow] := fieldByname('sugaCode')
              .asString; // GroupSuga - sugacode

            grdJx2.Cells[24, ngrdJxRow] := fieldByname('Su_Eng_name').asString;


            case strCase(aSugu3, ['09']) of    //��ó��
              0:
                begin
                  grdJx2.Cells[3, ngrdJxRow]  := fieldByname('qty').asString; // ����
                  grdJx2.Cells[4, ngrdJxRow]  :=  fieldByname('ilsu').asString;
                  grdJx2.Cells[14, ngrdJxRow] :=   fieldByname('iltu').asString

                end;
              else
              begin
                grdJx2.floats[3, ngrdJxRow] :=   nQty * fieldByname('qty').asfloat;

                if aSugu2 = '9' then // ��Ź�˻�
                begin
                  // Sutak_f :=  TSutak_f.Create(application);
                  // Sutak_f.Showmodal;
                  // Sutak_f.Free;
                  // Sutak_f := nil;

                  // ��Ź�˻��� ��� �����ڵ� san1, san2, san3 ����
                  // nDanga, su_key �ٽ� ����
                  // ------------------------------------------

                  gasankind := fieldByname('gasankind').asString;
                  sutakupche := fieldByname('sutakupche').asString;
                  sutakgrade := fieldByname('sutakgrade').asString;

                  if aSutak <> '2' then // ��ü�˻�� ����X
                  begin
                    sutakSanCode := makeSutakSanCode(suKey, gasanKind,
                      sutakupche, sutakgrade);
                    suKey := sutakSanCode; // copy(suKey,1,7)  + sutakSanCode;
                  end;

                  if checkInt(trim(fieldByname('grpInsYon').asString)) = true
                  then
                    gubKind := StrToInt(trim(fieldByname('grpInsYon').asString))

                  else
                    gubKind := 0;

                  nDanga := getSugaGeum(suKey, // varCode:string;
                    FormatDateTime('YYYY-MM-DD',  dmain.Date),
                    // jinday:string;
                    gubKind); // kind:string);

                  // ------------------------------------------

                  grdJx2.Cells[19, ngrdJxRow] := suKey;

                  if aSutak <> '2' then // ��ü�˻�� 1.1 X.

                    grdJx2.floats[3, ngrdJxRow] :=
                      nQty * fieldByname('qty').asfloat * 1.1;

                end;
              end;
            end;

            grdJx2.ints[2, ngrdJxRow] := nDanga;
            grdJx2.Cells[4, ngrdJxRow] := '1'; // �ϼ�
            if fieldByname('dan_qty').AsInteger > 0 then
                grdJx2.ints[5, ngrdJxRow] := fieldByname('dan_qty').AsInteger
            else
            grdJx2.ints[5, ngrdJxRow] := 1;


            grdJx2.Cells[10, ngrdJxRow] := aSugu1;
            // FieldByName('Su_gu1').AsString;
            grdJx2.Cells[11, ngrdJxRow] := aSugu3;
            grdJx2.Cells[12, ngrdJxRow] :=
              fieldByname('su_soa').asString;

            grdJx2.Cells[13, ngrdJxRow] := fieldByname('Su_yagan')
              .asString; // �߰� ���� �Ǵ� ��=1

            grdJx2.ints[14, ngrdJxRow] := nIOrder + 1;


            // nPrice:=    Calckumak(jinryo_f.grdJx2,
            // FormatDateTime('YYYY-MM-DD', jinryo_f.dMain.date),
            // jinryo_f.grdJx2.Rowcount - 1, True,
            // jinryo_f.lblAge.caption);

            nPrice := CalcKumak(
              grdJx2.Cells[19, ngrdJxRow], // suKey:string;
              nDanga, // �ܰ�nDanga:integer ;
              grdJx2.floats[3, ngrdJxRow], // ����nQty:integer ;
              grdJx2.ints[4, ngrdJxRow], // �ϼ�nilsu:integer ;
              grdJx2.ints[5, ngrdJxRow], // ������nDanQty:integer ;
              FormatDateTime('YYYY-MM-DD',  dmain.Date),
              grdJx2.Cells[12, ngrdJxRow], // soaGasan : string;
              grdJx2.Cells[13, ngrdJxRow], // simGasan : string;
              true,  LblAge.Caption);

            grdJx2.ints[6, ngrdJxRow]  := nPrice;
            grdJx2.Cells[8, ngrdJxRow] :=  fieldByname('modality').asString;

            next;

          end;

        end;


      //  JinryoBiSet;
       end
      else if groupkindsel > '7' then
      begin

    //    JinryoBiSet;


      end;

    end;

  finally
 //   varValueChanged := true;
    tempQuery.Free;
  end;
end;





//�ش������ grid�� �ֱ�  .....................................................

procedure Tallice_f.insertsugaOnce(aGrid: TAdvstringGrid; sCode: string; jinDay: string; jongbyul:
  integer; age: string; isYagan: boolean; ARow, AOrder: Integer; aQty: Integer = 0;
   aKind : integer = 0; exceptCode : string ='' );
var
  nDanga: Integer;
     nIOrder, i, SF, SR, SL, HF, HR, HL: Integer;
     rAdd, nQty, nMachui: Double;
     FCode, sukey, Osang, Osangname, groupkindsel: string;

     sealantDay : string;
//     sugu1, sugu2, sugu3: string;
     nPrice : integer;
     sugacode, suKorName, GroupName  : string;
     groupModality : string;

//     tempQuery: TUniQuery;

begin
  with dm_f.sqlTemp15 do
  begin
    Close;
    Sql.Clear;

    if (jinDay > '2009-12-31') and
      (sCode = 'ZN061001') then
      sCode := 'N0061001';
    if (jinDay > '2009-12-31') and
      (sCode = 'ZN051016') then
      sCode := 'N0051016';
    if (jinDay > '2009-12-31') and
      (sCode = 'ZN051017') then
      sCode := 'N0051017';
    if (jinDay > '2009-12-31') and
      (sCode = 'ZN051018') then
      sCode := 'N0051018';
    if (jinDay > '2009-12-31') and
      (sCode = 'ZN051019') then
      sCode := 'N0051019';
    if (jinDay > '2009-12-31') and
      (sCode = 'ZN051020') then
      sCode := 'N0051020';

    if aKind=0 then
      Sql.Add('getsuga :su_key, :jin_day')
    else
      Sql.Add('getsuga_userKey :su_key, :jin_day')  ;

    ParamByName('su_key').AsString   := sCode ;

    ParamByName('jin_day').AsString  := jinday;
    Open;
    First;
    if not isEmpty then
    begin

       aGrid.InsertRows(ARow,1);

           FCode := Copy(Trim(sCode), 1, 4);

            aSugu1:= Trim(FieldByName('su_gu1').AsString);
            aSugu2:= Trim(FieldByName('su_gu2').AsString);
            aSugu3:= Trim(FieldByName('su_gu3').AsString);

            case jongbyul of
             0,1,2,4,5,8,9,10:
               begin // �����Ͽ� �´� �ܰ�
                      nDanga := FieldByName('Bo_dan').AsInteger;
               end;
             6:
               begin
                      nDanga := FieldByName('ja_dan').AsInteger;
               end ;
             3,7:
               begin
                      nDanga := FieldByName('il_dan').AsInteger;
               end;
             end;
               if nDanga = 0 then
                  nDanga := FieldByName('il_dan').AsInteger;

            nQty := aQty;



//                          grpInsYon :=  Trim(FieldByName('grpInsYon').AsString);
//
//                          if cbJong.itemindex = 3 then   //������ �Ϲ��̸� ��� ��޿�
//                          begin
//                              grpInsYon := '2';
//                          end;




                    //      AGrid.AddRow;

                          case strCase(aSugu1, ['0', '1','2','3','4', '5' ]) of
                             1:
                                begin
                                    AGrid.Cells[0, ARow]      := '���';
                                    AGrid.Cells[7, ARow]      := '0';  //gub_gu
                                    if jongbyul=3 then
                                        AGrid.Cells[7, ARow]      := '2';
                                end;

                             2:
                                begin
                                    AGrid.Cells[0, ARow]      := '����';
                                    AGrid.Cells[7, ARow]      := '0';  //gub_gu
                                    if jongbyul=3 then
                                        AGrid.Cells[7, ARow]      := '2';
                                end;

                             3:
                                begin
                                    AGrid.Cells[0, ARow]     := '���'; // ���
                                    AGrid.Cells[7, ARow]     := '2';  //gub_gu
//
                                end;
                             4:
                                 begin
                                     AGrid.Cells[0, ARow]     := '���'; // ����
                                     AGrid.Cells[7, ARow]     := '2';  //gub_gu
                                end;
                             5:
                                begin
                                     AGrid.Cells[0, ARow]      := '100';
                                     AGrid.Cells[7, ARow]      := '3';  //gub_gu
                                end;
                          end;

                          AGrid.Cells[19, ARow] :=  sCode;
                          AGrid.Cells[20, ARow] :=  FieldByName('su_Kor_Name').AsString; //suKorName;


                          AGrid.Cells[1, ARow] := FieldByName('su_Kor_Name').AsString;   //GroupSuga - sugaKorName
                          AGrid.Cells[9, ARow] := FieldByName('su_key').AsString;      //GroupSuga - sugacode


                          case strCase(aSugu3, ['09' ]) of
                             0:
                             begin
                                AGrid.floats[3, ARow]  :=  nQty;// FieldByName('qty').AsString;  //����
                                AGrid.Cells[4, ARow]  :=  '1';// FieldByName('ilsu').AsString;
                                AGrid.Cells[14, ARow] :=  '1';// FieldByName('iltu').AsString

                             end;
                             else
                             begin
                                  AGrid.floats[3,  ARow]  := nQty;//  nQty  *  FieldByName('qty').asFloat;

                                  if aSugu2 =   '9' then //��Ź�˻�
                                  begin
                                        //  Sutak_f :=  TSutak_f.Create(application);
                                        //  Sutak_f.Showmodal;
                                        //  Sutak_f.Free;
                                        //  Sutak_f := nil;
                                       AGrid.floats[3,  ARow] :=  nQty * 1.1;
                                         // nQty * FieldByName('qty').asFloat * 1.1;
                                  end;
                             end;
                          end;

                          AGrid.ints[2, ARow]  :=  nDanga;
                          AGrid.Cells[4, ARow] := '1'; //�ϼ�
                          AGrid.ints[5, ARow]  :=  FieldByName('dan_qty').AsInteger;


                          AGrid.Cells[10, ARow] :=  aSugu1;//FieldByName('Su_gu1').AsString;
                          AGrid.Cells[11, ARow] :=  aSugu3;
                          AGrid.Cells[12,ARow] :=  FieldByName('su_soa').AsString;

                          AGrid.Cells[13, ARow] := FieldByName('Su_yagan').AsString; //�߰� ���� �Ǵ� ��=1

                          AGrid.ints[14, ARow] :=  nIOrder + 1;
                          AGrid.cells[21, ARow] :=  FieldByName('gasan').AsString; //1/2 seperate



      nPrice :=
          CalcKumak(AGrid.cells[19, ARow],//suKey:string;
                  AGrid.Ints[2, ARow],//nDanga:integer ;
                  AGrid.floats[3, ARow], //nQty:integer ;
                  AGrid.Ints[4, ARow],//nilsu:integer ;
                  AGrid.Ints[5, ARow],//nDanQty:integer ;
                  jinDay,
                  AGrid.cells[12, ARow],//soaGasan : string;
                  AGrid.cells[13, ARow],//simGasan : string;
                  true,
                  age ) ;


      AGrid.ints[6, ARow]   :=  nPrice;
      AGrid.Cells[8, ARow]  :=  FieldByName('modality').AsString;

      AGrid.Cells[24, ARow] :=  FieldByName('su_eng_name').AsString;
      AGrid.Cells[25, ARow] :=  exceptCode;

    //   AGrid.Cells[7, ARow] := FieldByName('gub_gu').AsString;


      if not ((UpperCase(Copy(sCode, 1, 3)) = 'AL7') or
        (UpperCase(sCode) = 'AL801') or
        (UpperCase(sCode) = 'AL300') or
        (UpperCase(sCode) = 'AL400') or
        (UpperCase(sCode) = 'KK090') or
        (UpperCase(sCode) = 'KK054') or
        (UpperCase(sCode) = 'KK020') or
        (UpperCase(Copy(sCode, 1, 2)) = 'J5')) then
      begin
        //   CalcSum(aGrid, CostGrid );
             //AGrid: TAdvstringGrid; CostGrid :TAdvstringGrid; JGrid:TAdvstringGrid; aChart: string; hospGubun:string;
             //         jinday: string; jongbyul:integer; age: string; isYagan:boolean=false; bunupYewe:string = '');

         //  CalcBonin(is_Wonwe);
      end;
      //   OrderGroup.ItemIndex := OrderGroup.Items.Count - 1;
      //   OrderGroupClick(Self);
    end;
  end;
end;


function Tallice_f.AlliceJubsuUpdate(
     varChart,
     varTeam,
     vargubun,
     varday: string
     ): boolean;
begin
     if varChart = '' then
     begin
          result := false;
          exit;
     end;

     try
          with DM_f.SqlWork do
          begin

                    //��� ������ �ٲ�.
                    Close;
                    Sql.Clear;
                    Sql.Add(' Update  ma_jubsu Set                                      ');
                    Sql.Add(' gubun=:gubun                                              ');
                    Sql.Add(' Where chart=:chart and jin_day=:jin_day and team=:team    ');
                    ParamByName('chart').AsString          := varChart;
                    ParamByName('team').AsString           := varTeam;
                    ParamByName('jin_Day').AsString        := varDay;
                    ParamByName('Gubun').AsString          := varGubun;

                    execSql;

                    result := true;
          end;
     except
          on E: Exception do
          begin
               result := false;
               ShowMessage(' [Allis  ��������]' + E.Message);
          end;

     end;
end;

function Tallice_f.AlliceJubsuSave : integer;
begin
  result := jubsuSave(
     edtChart.Text,
    'NHIC', // cbdamteam.text,
    '������',//�����̸�     , // cbDoc.Text,
    '', // cbHyg.Text,
    '0', // ��ⱸ��
    formatdatetime('YYYY-MM-DD', now),
    now,// nowTime,
    formatdatetime('YYYY-MM-DD', now),//varFirst,
    // edtfirst.text, //������
    edtjumin.text, // edtjumin.text,
    '', // edtZip.Text,
    edtName.text, // edtname.text,
    '', // edtcphone.text,
    '', // ���೻��
    '', // �������
    '', // ���� idn
    '', // ���� �ð�
    3, // 0,    //Jongbyul =�Ϲ�
    4, // 1, //����=�������������
    '', // '', //Sanjung
    '',// teakryeCode,
    0, // 0, //health
    '', // '', //pregnan
    '', // '', //chasangNo
    '', // '', //bonType
    '0', // '', //yujikum
    '', // '', //Kwamok
    'NHIC',
    '0', // isInPat
    '', // inPat_time
    0,//ma_rp_RequestPK, '', // artteeth1
    '0',
    '',
    0,
    'NHIC1',  //���� ID
    '', // artteeth2
    '', // implteeth1
    '', // implteeth2
    '0'); // �������� 1: �ڵ����� 0: ��������


//  begin
//
//        with dm_f.sqlWork do
//        begin
//          close;
//          SQL.Clear;
//          SQL.text := ' select max(ID) as sID from ma_jubsu ';
//          open;
//
//          result := fieldByname('sid').asInteger;
//
//        end;
//
//
//  end;
end;

procedure Tallice_f.Button1Click(Sender: TObject);
begin
 if   AlliceJubsuUpdate(
     edtChart.text,//  varChart,
     edtTeam.text,// varTeam,        // �����
     edtGubun.text,// vargubun,       //������
     formatdatetime('YYYY-MM-DD', now)// varday: string  //��������
     )= true
     then
     begin

     end;


end;

procedure Tallice_f.Button2Click(Sender: TObject);
const
    Qrytext  =
      'SELECT   PslAcpDte, PslOcmNum, PslOdrCod, PslOdrQty, PslOdrTms,                          '+#10+
      'PslOdrDay, PslSpcRem, PslChkDte, PslExmNum, PslDelFlg, PslChtNum, PslOdrSeq, PslAcpDtm   '+#10+
      'FROM PslInf  where  RTRIM( LTRIM(PslChtNum)) =:PslChtNum and  PslAcpDte=:PslAcpDte       '+#10+
      ' and psldelflg <> ''D''                                                                  '+#10+
      'ORDER BY PslOdrSeq asc                                                                   ';
var
   varChart, varDay : string;
   varDay2 : string;
   su_key : string;
   aQty , PslOdrQty: integer;
   groupName : string;
begin

     varChart:= edtChart.Text;
     varDay  := formatdatetime('YYYYMMDD', dMain.Date );
     varDay2  := formatdatetime('YYYY-MM-DD', dMain.Date );
     if varChart = '' then
     begin

          exit;
     end;

     try

         //ToDo : ���᳻��(Jinryo_s) ��������.
         //ToDo : OrderInf ��������.

          //jinryo_s, jinryo_p, jinryo_o, OrderInf�� ����
          JubsuDelete(edtJubsuID.text ,varChart, varday2, 'NHIC', 'NHIC1','0',true); //���ܰ��� ����Ǹ� ��������.




            grdJx2.RemoveRows(1, grdJx2.RowCount - 1);
            grdJx2.rowcount  :=  2;

          with DM_f.sqlBit2 do
          begin

                    Close;
                    Sql.Clear;
                    Sql.text := 'use DrBITPACK' ;
                    execsql;


                    //�Էµ� �˻������� �о����.
                    Close;
                    Sql.Clear;
                    Sql.text := Qrytext ;
                    ParamByName('PslChtNum').AsString          := varChart;
                    ParamByName('PslAcpDte').AsString          := varDay;
                    open;

                    if not isEmpty then
                    begin
                      while not eof do
                      begin
                         su_key :=  fieldByName('PslOdrCod').AsString;

                        //99�� �ƴϸ� ��� 0�� �̴�.
                         PslOdrQty := fieldByName('PslOdrQty').AsInteger;
                         if  PslOdrQty <> 99 then
                           aQty   := 0
                         else
                           aQty   :=  fieldByName('PslOdrDay').AsInteger;




                             if copy(su_key,1,1) = '+' then
                             begin
                                  //GroupCode
                                   groupName := loadGroupName(su_key) ;

                                    InsertSugaCode(
                                       groupName,  //GroupName
                                       su_key,       //GroupCode
                                        0,
                                        aQty,           //nAdd
                                        '');      //aSutak



                             end
                             else
                             begin



                                  //Suga Insert
                                   insertsugaOnce(grdjx2,
                                   su_key,// sCode: string;
                                   varDay,// jinDay: string;
                                   1,// jongbyul:  integer;
                                   '20',// age: string;
                                   false,// isYagan: boolean;
                                   grdJx2.RowCount,// ARow,
                                   1,// AOrder: Integer;
                                   aQty,//: Integer = 0;
                                   1,   // aKind : integer = 0;  0: su_key 1: user_key
                                   ''); //  exceptCode : string ='' );
                             end;

                            //   , PslOdrQty, PslOdrTms, PslOdrDay,


                        next;
                      end;
                    end;


          end;
     except
          on E: Exception do
          begin

               ShowMessage(' [Allis ���� �ҷ��������]' + E.Message);
          end;

     end;



end;

procedure Tallice_f.Button3Click(Sender: TObject);
var
    aChart,
    treatRoom,
    doc_code : string;
begin

      if grdJx2.rowcount = 1  then
          exit;

       if LoadGogekData_chart(edtChart.text, progressbar, true) = true then
      begin

            aChart     := edtChart.text;
            treatRoom  := 'NHIC';//cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
            doc_code   := 'NHIC1';//'������';// 'NHIC';//cbDoc.ColumnItems[cbDoc.itemindex, 0];
            // Jinryo_s
            insertjin_s(
              edtJubsuId.text,
              dmain.Date,
              aChart,
              treatRoom,   // cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0],
              doc_code, // cbDoc.ColumnItems[cbDoc.itemindex, 0],
              grdJx2); // 1. ���᳻�� ����   2. RIS���� 3. ��Ƽ������ BIT����   121.166.70.201,51983  sa / bit

      end;
end;

procedure Tallice_f.Button4Click(Sender: TObject);
begin
     if  LoadChartNo(edtname.Text, edtjumin.Text  ) = true then
     begin
        if LoadJubsuID(edtChart.text, formatDatetime('YYYY-MM-DD',dmain.Date))= true then
         Close;
     end;

end;

procedure Tallice_f.Button5Click(Sender: TObject);
begin
       AlliceJubsuSave;
end;

procedure Tallice_f.Button6Click(Sender: TObject);
var
   varChart, varDay : string;
   varDay2 : string;
   su_key : string;
   aQty , PslOdrQty: integer;
   groupName : string;
begin

     varChart:= edtChart.Text;
     varDay  := formatdatetime('YYYYMMDD', dMain.Date );
     varDay2  := formatdatetime('YYYY-MM-DD', dMain.Date );
     if varChart = '' then
     begin

          exit;
     end;


    //jinryo_s, jinryo_p, jinryo_o, OrderInf�� ����
//    JubsuDelete(edtJubsuID.Text, varChart, varday2, 'NHIC', 'NHIC1','0',true); //���ܰ��� ����Ǹ� ��������.


    JubsuDelete(edtJubsuID.Text, varChart, varday2, 'NHIC', 'NHIC1','0',false);
     //���ܰ��� �������� ��������.


end;

function Tallice_f.LoadChartNo(aName, aJumin : string):boolean;
var
    patChart : string;
begin
       memChart.Lines.clear;
       result:= false;
       with dm_f.sqlTemp do
       begin
         close;
         sql.Clear;
         sql.Text := ' select top 1 * from ma_gogek_basic '+ #10+
                     ' where [name]=:hname and jumin=:jumin ' ;
         paramByName('hname').AsString := aName;//edtname.Text;
         paramByName('jumin').AsString := aJumin;//edtjumin.Text;
         open;
         if not isEmpty then
         begin
              patChart:= fieldByName('Chart').AsString;
              edtChart.text:=  patChart;
              memChart.Lines.Add(patChart);
              memChart.Lines.SaveToFile('c:\TempChartNo\Chart.txt');
              result:=true;
         end
         else
         begin
             patChart:='';
             edtChart.text:='';
         end;
       end;

       //TempChartNo ������ ������ ������Ű��.
end;


function Tallice_f.LoadJubsuID(aChart, aJinDay : string):boolean;
var
    JubsuID : string;
begin
       memChart.Lines.clear;

       result:= false;
       with dm_f.sqlTemp do
       begin
         close;
         sql.Clear;

         sql.Text := '  select * from ma_jubsu        '+#10+
                    ' where chart=:chart and jin_day=:jin_day and treatRoom=''NHIC'' ';
         paramByName('chart').AsString := aChart;
         paramByName('jin_day').AsString := aJinDay;
         open;
         if not isEmpty then
         begin
              JubsuID           := fieldByName('ID').AsString;
              edtJubsuID.text   := JubsuID;
              memChart.Lines.Add(JubsuID);
              memChart.Lines.SaveToFile('c:\TempChartNo\JubsuID.txt');
              result:=true;
         end
         else
         begin
             JubsuID:='';
             edtJubsuID.text   := '';
         end;
       end;

       //TempChartNo ������ ������ ������Ű��.
end;

procedure Tallice_f.insertjin_s(jubsu_id:string;ADate: TDateTime; AChart: string; aTeam: string;
 aDoc: string; aGrid: TAdvStringGrid; saveKind:integer = 1);// grdJx2   saveKind 0: save 1: ����

var
  ARow: Integer;
  AG_Key: string;

  isNew: Boolean; // insert or update
  sId: string;

  sMemo: string;
  varCharts: string;
  varPortion: string;
  varPortion1: string;
  varPortion2: string;
  varPortion3: string;
  varPortion4: string;

  maxOrderNo: Integer;

  i: Integer;
  strOrKey: string;
  strTempKey: string;
  strDescript: string;
  FormInit: TIniFile;
  Path: string;

  CurrentFile, todayDate, varFirstD, varLastD: string;
  f: textfile;

  varP1, varP2, varP3, varP4, varSu_Key: string;
  varIorder: Integer;
  jinsKey: string;

  risResult: TRisResult;

  nowTime: TDateTime;

  // orderinfo Save
  ikind: Integer;
  orderID: string;
  accessionID: string;
  jin_sid: string;
  chart: string;
  hname: string;
  ename: string;
  birth: string;
  gender: string;
  age: string;
  su_kor_name: string;
  su_eng_name: string;
  doctor: string;
  sector: string;
  order_day: string;
  order_time: string;
  su_key: string;
  jin_ilsu: string;
  reserve_time: string;
  emergency: string;
  sect: string;
  modality: string;
  studyID: string;
  referHospCode: string;

  ms: TMemorystream;

   doc_code, treatRoom, docName : string;


   stat2: boolean;
   isWonwe : boolean;
begin

  isWonwe := false;

  doc_code    := 'NHIC1';//'������';// 'NHIC';//cbDoc.ColumnItems[cbDoc.itemindex, 0];
  treatRoom   := 'NHIC';// cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];


  // jinryo_s���� ����
  for ARow := 1 to aGrid.RowCount - 1 do
  begin // AGrid = grdJx2

    if  aGrid.Cells[11, ARow] = '09' then   //Su_GU3=09 ������
    isWonwe := true;
    //��������  �������� �ϳ��� ������ ó������ ������.

    varSu_Key := aGrid.Cells[19, ARow];

    if aGrid.Cells[10, ARow] = '9' then
    begin // su_gu1 �� group
      AG_Key := aGrid.Cells[9, ARow]; // su_key
    end;

    jinsKey := aGrid.Cells[18, ARow];

    with Dm_f.sqlJinryo do
    begin

      close;
      SQL.Clear;
      SQL.text := 'select jins_key from jinryo_s' + #10#13 +
      // 'where jins_key = '+''''+ AGrid.Ints[16, ARow]+'''' ;
        'where jins_key = :jinsKey';
      paramByName('jinsKey').asString := jinsKey;
      open;

      if isEmpty then
      begin
        isNew := true;

      end
      else
      begin
        isNew := false;

      end;


      if isNew = true then
      begin // insert
        close;
        SQL.Clear;
        SQL.Add('insert into jinryo_s (chart,jin_day,Iorder,su_gu1,su_gu3,gub_gu,jubsu_id,');
        SQL.Add('gasan, jin_soa,jin_simya,su_kor_name,su_key,jin_qty,jin_time, su_eng_Name, ');
        SQL.Add('jin_ilsu,jin_danga,dan_qty,g_check,group_key,sort_key, except_code, ');
        SQL.Add('div,Hwakin_key, modality, user_key, user_name, team, doc_code)');
        SQL.Add(' values (:chart,:jin_day,:Iorder,:su_gu1,:su_gu3,:gub_gu,:jubsu_id,');
        SQL.Add(':gasan, :jin_soa,:jin_simya,:su_kor_name,:su_key,:jin_qty,:jin_time, :su_eng_Name,');
        SQL.Add(':jin_ilsu,:jin_danga,:dan_qty,:g_check,:group_key,:sort_key, :except_code,');
        SQL.Add(':div,:Hwakin_key, :modality, :user_key, :user_name, :team, :doc_code)');
      end
      else
      begin // Update

        close;
        SQL.Clear;
        SQL.text := 'update jinryo_s  set' + #10#13 +
          'chart= :chart,jin_day= :jin_day,Iorder= :Iorder,su_gu1= :su_gu1,su_gu3= :su_gu3, gasan=:gasan, team=:team, doc_code=:doc_code, su_eng_Name=:su_eng_Name ,'
          + #10#13 +
          'jin_soa= :jin_soa,gub_gu=:gub_gu, jin_simya= :jin_simya,su_kor_name= :su_kor_name,su_key= :su_key, jin_time=:jin_time,jubsu_id=:jubsu_id,'
          + #10#13 +
          'jin_qty= :jin_qty,jin_ilsu= :jin_ilsu,jin_danga= :jin_danga,dan_qty= :dan_qty, user_key=:user_key, user_name=:user_name, except_code=:except_code, '
          + #10#13 +
          'g_check= :g_check,group_key= :group_key,sort_key= :sort_key,div= :div,Hwakin_key= :Hwakin_key , modality=:modality'
          + #10#13 + ' where jins_key=:jins_key ';

        paramByName('jins_key').asString := jinsKey; // AGrid.Cells[18,ARow];

      end;

      paramByName('chart').asString    := AChart;
      paramByName('jubsu_id').asString := jubsu_id;
      ParamByName('jin_day').AsString := FormatDateTime('YYYY-MM-DD', ADate) ;
   //   paramByName('jin_day').AsDateTime := ADate;
      paramByName('jin_time').AsDateTime := now;
      paramByName('Iorder').asString := aGrid.Cells[14, ARow];
      paramByName('su_kor_name').asString := aGrid.Cells[20, ARow];
      paramByName('su_key').asString := varSu_Key; // AGrid[7, ARow];

      paramByName('team').asString := aTeam;
      paramByName('doc_Code').asString := aDoc;
      // cbDoc.ColumnItems[cbDoc.itemindex, 0];

      paramByName('gub_gu').asString := aGrid.Cells[7, ARow];
      paramByName('gasan').asString := aGrid.Cells[21, ARow];
      paramByName('jin_danga').asString := aGrid.Cells[2, ARow];
      paramByName('jin_qty').asString := aGrid.Cells[3, ARow];

      if aGrid.Cells[11, ARow] = '09' then
      begin // su_gu3  ����
        paramByName('jin_ilsu').asString := aGrid.Cells[16, ARow];
        paramByName('div').asString      := aGrid.Cells[4, ARow];
      end
      else
      begin
        paramByName('jin_ilsu').asString := aGrid.Cells[4, ARow];
        paramByName('div').asString      := '1';
      end;

      paramByName('dan_qty').asString := aGrid.Cells[5, ARow];

      if aGrid.Cells[0, ARow] = '99' then // �������
        paramByName('su_gu1').asString := '0'
      else
        paramByName('su_gu1').asString := aGrid.Cells[10, ARow];

      paramByName('su_gu3').asString := aGrid.Cells[11, ARow];

      paramByName('jin_soa').asString := aGrid.Cells[12, ARow];
      paramByName('jin_simya').asString := aGrid.Cells[13, ARow];

      paramByName('Hwakin_key').asString := aGrid.Cells[17, ARow];

      paramByName('modality').asString := aGrid.Cells[8, ARow];

      paramByName('user_key').asString := aGrid.Cells[9, ARow];
      paramByName('user_name').asString := aGrid.Cells[1, ARow]; // ��Ī

      if aGrid.Cells[10, ARow] = '9' then // Su_Gu1
      begin
        paramByName('g_check').asString := 'G';
        paramByName('group_key').asString := AG_Key;
      end
      else
      begin
        paramByName('g_check').asString := 'S';
        paramByName('group_key').asString := AG_Key;
      end;

      paramByName('sort_key').AsInteger := ARow;
      paramByName('except_code').AsString := aGrid.Cells[25, ARow];
      paramByName('su_eng_Name').AsString := aGrid.Cells[24, ARow];

      execsql;

      if isNew = true then
      begin
        close;
        SQL.Clear;
        SQL.text := ' select @@Identity as sid';
        open;

        sId := fieldByname('sid').asString;
        aGrid.Cells[18, ARow] := sId;
      end;

    end;

    // if ( AGrid.Cells[0,ARow]= '����') and  ( AGrid.Cells[16,ARow] <>'')  then
    // begin
    // RisSave( 4,
    // main_f.memo2,
    // main_f.chkAsXML,
    // now,
    // '1',
    // varSu_Key,
    // AGrid.Cells[1,ARow],
    // '10'
    // )
    // end;
    nowTime := now;

//{$IFNDEF DEBUG}
    if (configvalue.varImageDBSaveMode = '1') then// and (saveKind=1) then // save PACS RIS
    begin

 {
PRIMOVIST
prohance

IOPA370
IOPA300}
      if (  (aGrid.Cells[0, ARow] = 'GR')  and (aGrid.Cells[8, ARow] <> '')  ) or   // is Group?
         (  ( (  (uppercase(aGrid.Cells[9, ARow]) = 'E6541')
            or  (aGrid.Cells[9, ARow] = 'zE6541')  )
             and (aGrid.Cells[8, ARow] = 'SC'  ))  //EKG
         or   (aGrid.Cells[9, ARow] ='CDCOPY')
         or   (aGrid.Cells[9, ARow] ='CDCOPY2')
         or  (aGrid.Cells[9, ARow] = 'zeecp')
         or  (aGrid.Cells[9, ARow] = 'PRIMOVIST') //MR������  Modality MRU
         or  (aGrid.Cells[9, ARow] = 'prohance')  //MR������  Modality MRU
         or  (aGrid.Cells[9, ARow] = 'IOPA370') //CT ������   Modality CTU
         or  (aGrid.Cells[9, ARow] = 'IOPA300') //CT ������   Modality CTU
         )
         then // modality
      begin


       try
        risResult := RisSave(4, memRis, chkAsXML, nowTime, // nowTime
          aGrid.Cells[18, ARow], // jins_Key
          aGrid.Cells[9, ARow], // user_key
          aGrid.Cells[1, ARow], // GroupName
          '10' // seqNo                              dm
          );

        if risResult.aResult = true then
          Showmessage(risResult.aMsgIn);

       except


       end;


        if isNew = true then
        begin // insert  ikind=0
          ikind := 0;
        end
        else
        begin // update  ikind=1
          ikind := 1;
        end;


        orderID := aGrid.Cells[18, ARow];// FormatDateTime('YMMDDHHNNSSZ', nowTime);
        accessionID := orderID;//FormatDateTime('YYMMDDHHNNSSZZ', nowTime);
        jin_sid := aGrid.Cells[18, ARow];
        chart := ma_chart;
        hname := ma_paName;
        ename := ma_PaEngName;
        birth := juminToBirth(ma_jumin);
        gender := jumintogender(ma_jumin);
        age := jumintoNai(ma_jumin);
        su_kor_name := aGrid.Cells[1, ARow];
        su_eng_name := aGrid.Cells[24, ARow];
        doctor := cbDoc.ColumnItems[cbDoc.itemindex, 0];
        sector := cbTreatRoom.ColumnItems[cbTreatRoom.itemindex, 0];
        order_day := FormatDateTime('YYYYMMDD', nowTime);
        order_time := FormatDateTime('HHNNSS', nowTime);
        su_key := aGrid.Cells[9, ARow];
        jin_ilsu := '1';
        reserve_time := '000000';
        emergency := '0';
        sect      := '1';
        docName   :=   cbDoc.ColumnItems[cbDoc.itemindex, 2]; //LoadDocNameFromTeam(doctor) ;
        modality  := aGrid.Cells[8, ARow];
        studyID   := orderID +  aGrid.Cells[18, ARow];  //FormatDateTime('YYYYMMDDHHNNSS', nowTime) +
        referHospCode := ma_referHospCode;

        saveOrderInfo(ikind, orderID, accessionID, jin_sid, chart, hname, ename,
          birth, gender, age, su_kor_name, su_eng_name, doctor, sector,
          order_day, order_time, su_key, jin_ilsu, reserve_time, emergency,
          sect, modality, studyID, treatRoom, docname, referHospCode);

      end;

    end;


    if ma_rp_RequestPK > 0 then
    begin
      // Save Referel PAD
      try


//        if saveReferalPad_Jinryo(aGrid.Cells[18, ARow], ma_rp_RequestPK) = false
//        then
//        begin
//          Showmessage('');
//        end;

          insertRP_requestUseJinsKey(ma_rp_RequestPK, aGrid.Cells[18, ARow]);



      except

        on E: Exception do
        begin
          Showmessage(E.Message + '[saveReferalPad_Jinryo fail.]');
        end;

      end;
    end;
//{$ENDIF DEBUG}

  end;

end;



procedure Tallice_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action:= caFree;
end;

procedure Tallice_f.FormCreate(Sender: TObject);
begin

   if not DirectoryExists('c:\TempChartNo') then
    ForceDirectories( 'c:\TempChartNo');


  //BSHL7Library.LoadFromFile('.\data\BSHL7251.BSL');


{$IFNDEF DEBUG}
    left:= -5;
    top:= -5;

    width:= 1;
    height:= 1;
{$ENDIF DEBUG}

    dmain.Date := now;
    edtChart.Text:='';
    edtName.Text:='';
    edtJumin.Text:='';
    edtGubun.Text:='';
    edtChart.Text:='';
    edtJubsuID.Text:='';
    edtTeam.Text:='';
    memChart.Lines.Clear;
     if loadini = true then
     begin


     //   configvalue := Tconfigvalue.Create;
        configvalue.LoadGlobalData_ini;  //ini������ ����.
    end;

     if dm_f.ConnectDatabase(configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser,
          configvalue.varDbpass,
          configvalue.varDbProtocol,
          configvalue.varDbPort) = true then
     begin
           //serverkind := 0;
           configvalue.LoadGlobalData_db;
           configvalue.LoadQueryFunc(configvalue.varDbProtocol);

       //  {$IFNDEF DEBUG}
             if dm_f.ConnectDatabase_BIT(configvalue.varImageIp,
                  'DrBITPACK',
                  'sa',
                  'bit',
                  'mssql',
                  51983) = true then
             begin

             end
             else
             begin
                    showmessage('BIT conn check.'+#10+#13+configvalue.varImageIp);
             end;
       //  {$ENDIF DEBUG}





     end;

end;




procedure Tallice_f.FormDestroy(Sender: TObject);
begin
     allice_f := nil;
end;

procedure Tallice_f.FormShow(Sender: TObject);
begin
     timer1.Enabled:= true;
end;

function   Tallice_f.RisSave( risKind : integer ;
       AMemo: TMemo;
       aCheckbox: TcheckBox;
       nowTime   : Tdatetime;
       aOrderNO  : string='';
       groupCode : string='';
       groupName : string='';
       seqNo : string='';
       isCancel : boolean= false) : TRisResult;
var
  MsgOut : AnsiString;
  MsgIn : AnsiString;

begin

//    AMemo.text := '';
//    result.aResult:= false;
//    case risKind of
//            //inPatient
//         0:     MessageCreate_ADT_A01(AMemo, aCheckbox.Checked, nowTime);
//
//            //outPatient
//         1:     MessageCreate_ADT_A02(AMemo, aCheckbox.Checked, nowTime);
//
//            //Out/Charged
//         2:     MessageCreate_ADT_A03(AMemo, aCheckbox.Checked, nowTime);
//
//            //Locate Change
//         3:     MessageCreate_ADT_A04(AMemo, aCheckbox.Checked, nowTime);
//
//            //Tx Order
//         4:   MessageCreate_OMG_019(AMemo, aCheckbox.Checked, nowTime,
//            aOrderNO,
//            groupCode,
//            groupName,
//            seqNo,
//            isCancel   );
//
//            //Cancel Visit
//         5:     MessageCreate_ADT_A11(AMemo, aCheckbox.Checked, nowTime);
//    end;
//
//   if trim(aMemo.text) <> '' then
//   begin
//       try
//
//         try
//             dmTcpCs_f :=  TdmTcpCs_f.create(nil);
//             dmTcpCs_f.IdTcpClient1.Port :=  strtoint(configValue.varImageDBPort) ;  // 18080;
//             dmTcpCs_f.IdTcpClient1.Host := configvalue.varImageDBIP;// '192.168.10.190';   // '192.168.10.183';//  '10.211.55.4';//
//             if  dmTcpCs_f.IdTcpClient1.Connected = false  then
//                 dmTcpCs_f.IdTcpClient1.Connect;
//
//             // Send Message
//             //   IdTCPClient1.IOHandler.Write(START_BLOCK + utf8string( memo1.text )+ END_BLOCK);
//             dmTcpCs_f.IdTCPClient1.IOHandler.Write(START_BLOCK +   aMemo.text + END_BLOCK, enUTF8);
//
//             // Wait ACK Message
//             MsgIn :=  dmTcpCs_f.IdTCPClient1.IOHandler.ReadLn(END_BLOCK);
//
//             Result.aMsgIn :=  MsgIn;
//        // showmessage(MsgIn);//
//         finally
//             dmTcpCs_f.free;
//         end;
//
//       except
//         result.aResult := false;
//       end;
//   end;



end;




function   Tallice_f.saveOrderInfo(
          ikind            :integer;
          orderID          :string;
          accessionID      :string;
          jin_sid          :string;
          chart            :string;
          hname            :string;
          ename            :string;
          birth            :string;
          gender           :string;
          age              :string;
          su_kor_name      :string;
          su_eng_name      :string;
          doctor           :string;
          sector           :string;
          order_day        :string;
          order_time       :string;
          su_key           :string;
          jin_ilsu         :string;
          reserve_time     :string;
          emergency        :string;
          sect             :string;
          modality         :string;
          studyID          :string;
          treatroom        :string;
          docname          :string;
          referHospCode    :string): boolean;
const
    aSqlInsert =
        '  INSERT INTO [dbo].[orderInf]           '+#10#13+
        '          (orderID                       '+#10#13+
        '          ,accessionID                   '+#10#13+
        '          ,jin_sid                       '+#10#13+
        '          ,chart                         '+#10#13+
        '          ,hname                         '+#10#13+
        '          ,ename                         '+#10#13+
        '          ,birth                         '+#10#13+
        '          ,gender                        '+#10#13+
        '          ,age                           '+#10#13+
        '          ,su_kor_name                   '+#10#13+
        '          ,su_eng_name                   '+#10#13+
        '          ,doctor                        '+#10#13+
        '          ,sector                        '+#10#13+
        '          ,order_day                     '+#10#13+
        '          ,order_time                    '+#10#13+
        '          ,su_key                        '+#10#13+
        '          ,jin_ilsu                      '+#10#13+
        '          ,reserve_time                  '+#10#13+
        '          ,emergency                     '+#10#13+
        '          ,sect                          '+#10#13+
        '          ,modality                      '+#10#13+
        '          ,studyID                       '+#10#13+
        '          ,treatroom                     '+#10#13+
        '          ,docname                       '+#10#13+
        '          ,referHospCode)                '+#10#13+
        '    VALUES                               '+#10#13+
        '          (:orderID         '+#10#13+
        '          ,:accessionID     '+#10#13+
        '          ,:jin_sid         '+#10#13+
        '          ,:chart           '+#10#13+
        '          ,:hname           '+#10#13+
        '          ,:ename           '+#10#13+
        '          ,:birth           '+#10#13+
        '          ,:gender          '+#10#13+
        '          ,:age             '+#10#13+
        '          ,:su_kor_name     '+#10#13+
        '          ,:su_eng_name     '+#10#13+
        '          ,:doctor          '+#10#13+
        '          ,:sector          '+#10#13+
        '          ,:order_day       '+#10#13+
        '          ,:order_time      '+#10#13+
        '          ,:su_key          '+#10#13+
        '          ,:jin_ilsu        '+#10#13+
        '          ,:reserve_time    '+#10#13+
        '          ,:emergency       '+#10#13+
        '          ,:sect            '+#10#13+
        '          ,:modality        '+#10#13+
        '          ,:studyID         '+#10#13+
        '          ,:treatroom       '+#10#13+
        '          ,:docname         '+#10#13+
        '          ,:referHospCode ) ';

     aSqlUpdate =
        '  update [dbo].[orderInf]    set                                 '+#10#13+
        '           hname          = :hname                       '+#10#13+
        '          ,ename          = :ename                       '+#10#13+
        '          ,birth          = :birth                       '+#10#13+
        '          ,gender         = :gender                      '+#10#13+
        '          ,age            = :age                         '+#10#13+
        '          ,su_kor_name    = :su_kor_name                 '+#10#13+
        '          ,su_eng_name    = :su_eng_name                 '+#10#13+
        '          ,doctor         = :doctor                      '+#10#13+
        '          ,sector         = :sector                      '+#10#13+
        '          ,order_time     = :order_time                  '+#10#13+
        '          ,su_key         = :su_key                      '+#10#13+
        '          ,jin_ilsu       = :jin_ilsu                    '+#10#13+
        '          ,reserve_time   = :reserve_time                '+#10#13+
        '          ,emergency      = :emergency                   '+#10#13+
        '          ,sect           = :sect                        '+#10#13+
        '          ,modality       = :modality                    '+#10#13+
        '          ,studyID        = :studyID                     '+#10#13+
        '          ,treatroom      = :treatroom                   '+#10#13+
        '          ,docname        = :docname                     '+#10#13+
        '          ,referHospCode  = :referHospCode               '+#10#13+
        '          where orderID       = :orderID                 '+#10#13+
        '           and order_day      = :order_day               '+#10#13+
        '           and accessionID    = :accessionID             '+#10#13+
        '           and jin_sid        = :jin_sid                 '+#10#13+
        '           and chart          = :chart                   ';

     aSqlDelete =
        '  delete from [dbo].[orderInf]         '+#10#13+
        '  where  orderID = :orderID   ';

     aSqlSelect =
        '  select * from [dbo].[orderInf]         '+#10#13+
        '  where  orderID = :orderID   ';



begin
       with dm_f.sqlBit3 do
       begin

              Close;
              Sql.Clear;
              Sql.text := 'use mediroPack' ;
              execsql;



             close;
             sql.Clear;
             sql.text := aSqlSelect;
             paramByName('orderID').AsString :=   orderID ;
             open;
             if not isEmpty then
             begin
               iKind :=  1;
             end
             else
             begin
                  iKind :=  0;
             end;


            close;
            sql.Clear;

            case iKind  of
               0:  sql.text :=  aSqlInsert;//insert
               1:  sql.text :=  aSqlUpdate;//Update
               2:  sql.text :=  aSqlDelete;//Delete  ������ jinryo������ �����Ѵ�.
            end;

            paramByName('orderID').AsString :=   orderID       ;

            case iKind  of
            0, 1:
                  begin
                        paramByName('accessionID').AsString   := accessionID;
                        paramByName('jin_sid').AsString       := jin_sid;
                        paramByName('chart').AsString         := chart;
                        paramByName('hname').AsString         := hname;
                        paramByName('ename').AsString         := ename;
                        paramByName('birth').AsString         := birth;
                        paramByName('gender').AsString        := gender;
                        paramByName('age').AsString           := age;
                        paramByName('su_kor_name').AsString   := su_kor_name;
                        paramByName('su_eng_name').AsString   := su_eng_name;
                        paramByName('doctor').AsString        := doctor;
                        paramByName('sector').AsString        := sector;
                        paramByName('order_day').AsString     := order_day;
                        paramByName('order_time').AsString    := order_time;
                        paramByName('su_key').AsString        := su_key;
                        paramByName('jin_ilsu').AsString      := jin_ilsu;
                        paramByName('reserve_time').AsString  := reserve_time;
                        paramByName('emergency').AsString     := emergency;
                        paramByName('sect').AsString          := sect;
                        paramByName('modality').AsString      := modality;
                        paramByName('studyID').AsString       := studyID;
                        paramByName('treatroom').AsString     := treatroom;
                        paramByName('docName').AsString       := docName;
                        paramByName('referHospCode').AsString := referHospCode;

                  end;

            end;
            execsql;

       end;

end;




function   Tallice_f.saveOrderInfo_updateEngName(
           orderDay         :string;
           chart            :string;
           hname            :string;
           ename            :string;
           birth            :string;
           gender           :string;
           age              :string): boolean;
const

     aSqlUpdate =
        '  update orderinf    set                                 '+#10#13+
        '          chart          = :chart                       '+#10#13+
        '          ,hname          = :hname                       '+#10#13+
        '          ,ename          = :ename                       '+#10#13+
        '          ,birth          = :birth                       '+#10#13+
        '          ,gender         = :gender                      '+#10#13+
        '          ,age            = :age                         '+#10#13+
        '          where    order_day = :order_day and chart = :chart            ';




begin
       with dm_f.sqlBit do
       begin

              Close;
              Sql.Clear;
              Sql.text := 'use mediroPack' ;
              execsql;



              close;
              sql.Clear;
              sql.text := aSqlUpdate;
              paramByName('order_day').AsString :=   orderDay ;
              paramByName('chart').AsString         := chart;
              paramByName('hname').AsString         := hname;
              paramByName('ename').AsString         := ename;
              paramByName('birth').AsString         := birth;
              paramByName('gender').AsString        := gender;
              paramByName('age').AsString           := age;

            execsql;

       end;

end;




function   Tallice_f.saveReferalPad_Jinryo(
          jins_key          :string;
          requestPK        :integer) : boolean;
const
    aSqlInsert =
   ' INSERT INTO  RP_requestUseJinsKey       '+#10#13+
   '                  (jins_key              '+#10#13+
   '                   ,requestPK)            '+#10#13+
   '             VALUES                       '+#10#13+
   '                   (:jins_key            '+#10#13+
   '                   ,:requestPK)           ';

     aSqlDelete =
        '  delete from RP_requestUseJinsKey                       '+#10#13+
        '          where     requestPK        = :requestPK            ';


var
  iQuery :TuniQuery;

begin


  try
     iQuery := TuniQuery.create(application);
     iQuery.connection := dm_f.UniConnection1;


       with iQuery do
       begin
            close;
            sql.Clear;

//            sql.text :=  aSqlDelete;
//            paramByName('requestPK').AsInteger :=   requestPK       ;
//            execsql;


            close;
            sql.Clear;
            sql.text :=  aSqlInsert;
            paramByName('requestPK').AsInteger :=   requestPK       ;
            paramByName('jins_key').AsString       := jins_key;
            execsql;
            result:= true;
       end;
  finally


      iQuery.Free;

  end;

end;





procedure Tallice_f.Timer1Timer(Sender: TObject);
   var
   aKind,  aName , aJumin : string;
   aChart , aJubsuID: string;
begin
   timer1.Enabled := false;


   aKind :=  paramstr(1);


   if aKind = '0' then   //��Ʈ��ȣ �Ѱ��ֱ�
   begin

    aName  := paramstr(2) ;
    aJumin := paramstr(3) ;
    edtname.Text  :=  aName;
    edtjumin.Text := aJumin;


     if  LoadChartNo(edtname.Text, edtjumin.Text  ) = true then
     begin

        AlliceJubsuSave;

        if LoadJubsuID(edtChart.text, formatDatetime('YYYY-MM-DD',dmain.Date))= true then
         Close;
     end;

     //�޵�ο� ����� ��Ʈ��ȣ�� ������ȣ�� c:\tempChart�� ���ش�.JubsuID.txt, Chartg.txt

   end;


   if aKind = '1' then  //PinInf ȯ������ �����ͼ� �޵�ο� ����ϱ�
   begin

         aChart     := paramstr(2) ;
         aJubsuID   := paramstr(3) ;

         edtChart.Text   :=  aChart;
         edtJubsuID.Text := aJubsuID;

         //PinInf ���� ���� ������ �������� �޵�ο� ���� �Ѵ�.
         close;
   end;




   if aKind = '2' then  //�˻系�� �����ϱ�
   begin

         aChart     := paramstr(2) ;
         aJubsuID   := paramstr(3) ;

         edtChart.Text   :=  aChart;
         edtJubsuID.Text := aJubsuID;

         Button2Click(self);  //�׸��忡 ���᳻�� ��������
         Button3Click(self);  //�׸��� ������ ��������.
         close;
   end;


   if aKind = '3' then  //�˻系�� �����ϱ�
   begin

         aChart     := paramstr(2) ;
         aJubsuID   := paramstr(3) ;

         edtChart.Text   :=  aChart;
         edtJubsuID.Text := aJubsuID;

         Button6Click(self);  //���᳻��, �������� ����

         close;
   end;



end;

end.
