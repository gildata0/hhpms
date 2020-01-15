unit sebusunap;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls,   inifiles,
     ComCtrls, StdCtrls,  
     Grids, BaseGrid, AdvGrid, AdvObj, tmsAdvGridExcel, FormSize, AdvProgr,
  AdvProgressBar, AdvPanel, AdvUtil, frxClass, frxBarcode, AdvCombo, ColCombo,
  Vcl.Menus;

type
       TGridFindText = record
              varCol: integer;
              varRow: integer;
       end;
type
     Tsebusunap_f = class(TForm)
          pnlmain: TPanel;
          pnlTop: TPanel;
          lblSum: TLabel;
          grdmain: TAdvStringGrid;
          AdvGridExcelIO1: TAdvGridExcelIO;
          SaveDialog1: TSaveDialog;
    FormSize1: TFormSize;
    CheckBox1: TCheckBox;
    ProgressBar: TAdvProgressBar;
    pnldetail: TPanel;
    cbBohum: TComboBox;
    cbJohap: TComboBox;
    Button1: TButton;
    cbZeroExcept: TCheckBox;
    pnlTerm: TAdvPanel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    CbMonthJungsan: TCheckBox;
    AdvProgressBar1: TAdvProgressBar;
    cbNew: TCheckBox;
    lblHwanbul: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    AdvPanel1: TAdvPanel;
    AdvStringGrid1: TAdvStringGrid;
    AdvStringGrid2: TAdvStringGrid;
    Splitter1: TSplitter;
    cbTeam: TComboBox;
    spSkinStdLabel2: TLabel;
    spSkinStdLabel5: TLabel;
    spSkinStdLabel4: TLabel;
    spSkinStdLabel3: TLabel;
    spSkinStdLabel1: TLabel;
    spSkinStdLabel6: TLabel;
    spSkinStdLabel7: TLabel;
    btnSearch: TButton;
    btnPrt: TButton;
    btnExcelSave: TButton;
    btnToday: TButton;
    lblSum2: TLabel;
    Label1: TLabel;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    cbPreview: TCheckBox;
    Label2: TLabel;
    cbTreatRoom: TColumnComboBox;
    EllipsLabel1: TLabel;
    cbDoc: TColumnComboBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure btnSearchClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure btnExcelSaveClick(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
               var HAlign: TAlignment; var VAlign: TVAlignment);
          procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
               var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure grdmainGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grdmainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure Button1Click(Sender: TObject);
    procedure btnTodayClick(Sender: TObject);
    procedure grdmainClickSort(Sender: TObject; ACol: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbZeroExceptClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure grdmainGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure grdmainColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure N1Click(Sender: TObject);
     private
          { Private declarations }

          formLoading : boolean;
          varCheck: boolean;
          rowStart : integer;
          noSunapCnt : integer;

     //그리드 헤더 컬럼 변경시...컬럼 인덱스 유지
     colArr2 : array of integer;
     colArr : array of integer;


          procedure UpdateSums;
    function FindDocName(varGrid: TadvStringGrid;  varDoc: string): TGridfindtext;
    procedure DataToPrintForm(varDate, sYoungNo: string);
    function loadMisuSunapDate(jinryopid: string): string;
     public
          { Public declarations }
          procedure sebusunapCalc(startDay, finalday: string; SearchKind : integer = 0);
     end;

var
     sebusunap_f: Tsebusunap_f;
     varGubunArray: array[0..9] of string =
         ('상담', '검사', '진단',  '초진본딩', 'D/B', '치료', '임플란트', '치아성형','Screw','본딩취소');
     varCardGubunArray: array[0..9] of string =
         ('비씨','국민','외환','삼성','신한','현대','롯데','농협','하나','취소');



implementation

uses uConfig, umain, udm, uFunctions,uGogekData, ugogekData_find,
     sebusunapprt, passInput, sebusunapprt_opt1,  uFormInit,  uFontInfoSave;// sunapsebulist,

{$R *.dfm}

function tsebusunap_f.loadMisuSunapDate(jinryopid:string): string;

const
    selectMisuSunapDate
           //   = 'select sunapDay FROM ma_misusunap  where misu_pid=:jinryo_pid ';
      =' SELECT *, (select jin_day from jinryo_p where jinryo_pid=[ma_misusunap].jinryo_pid) as sunapDay '+#10+
       '   FROM [mediro].[dbo].[ma_misusunap]  where misu_pid=:jinryo_pid ';
begin
      result :='';
                               {SELECT *, (select jin_day from jinryo_p where jinryo_pid=[ma_misusunap].jinryo_pid) as sunapDay
                                FROM [mediro].[dbo].[ma_misusunap]
                                where chart='7001385'}
       with DM_f.SqlTemp14 do
       begin

            close;
            sql.Text:=selectMisuSunapDate;
            paramByName('jinryo_pid').AsString :=   jinryopid;
            open;
            if not isEmpty then

            result:=  formatdatetime('YYYY-MM-DD', FieldByName('sunapDay').AsDateTime);

       end;

           //  misuSunapDate :=  loadMisuSunapDate( Cells[32, i])


 end;

procedure Tsebusunap_f.N1Click(Sender: TObject);
var
   compoName : string;
begin

     if not assigned(fontInfoSave_f) then
     begin
          fontInfoSave_f := TfontInfoSave_f.Create(nil);
     end;

     loadGridFontInf;

     fontInfoSave_f.FontName.ItemIndex := fontInfoSave_f.fontname.Items.IndexOf(aGridFontName);
     fontInfoSave_f.FontSize.ItemIndex := fontInfoSave_f.fontSize.Items.IndexOf( inttostr(aGridFontSize));
     fontInfoSave_f.edtRowHeight.Value := aGridRowHeight;

     fontInfoSave_f.FixedFontName.ItemIndex := fontInfoSave_f.Fixedfontname.Items.IndexOf(aGridFixedFontName);
     fontInfoSave_f.FixedFontSize.ItemIndex := fontInfoSave_f.FixedfontSize.Items.IndexOf( inttostr(aGridFixedFontSize));
     fontInfoSave_f.edtFixedRowHeight.Value := aGridFixedRowHeight;

     gridColSet(0, grdMain, fontInfoSave_f.clbColumnCheck);

     if  fontInfoSave_f.ShowModal = mrOK then
     begin


         initAdvGrid(grdMain);

         gridColSet(1, grdMain, fontInfoSave_f.clbColumnCheck);

     end;

end;


procedure tsebusunap_f.sebusunapCalc(startDay, finalday: string; SearchKind : integer = 0);
const
   SQL_SELECT_sinhwan =
          'SELECT  doc, count(doc) as Shinhwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and jin_day = first_day         ';

   SQL_SELECT_GuHwan =
          'SELECT  doc, count(doc) as Guhwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and jin_day <> first_day         ';

    SQL_SELECT_groupBy  = '  group by doc           ';

   SQL_SELECT_Where_team = ' and team = :team      ';//' and doc = :doc      ';
   SQL_SELECT_orderby = ' order by first_day, name          ';


var


     varSunapID : string;

     i, j: integer;


     varGubun:string;
     varGubunInt:integer;

     rCount: integer; //fixed Footer Count를 세자
     cCount: integer;
     cRCount:integer; //카드카운트 시작

     varDocName :string;
     varDocCnt : integer;
     varDocRow:integer;

     varHwanName,  varShinGu :string;
     varHwanRow:integer;

     varNewpat, varOldPat:integer;


     varQuery:string;
     varQuery2:string;

     varSunapGubunHangMok : array of string;
     varSunapGubunLength : integer;
     l, k : integer;

     cKind1:string;
     jongBeul : string;
     misuSunapDate : string;

     ii: integer;



begin


         //Check SunapList
         noSunapCnt := countSunapdaegi(startDay, finalDay);

         if  noSunapCnt  > 0 then
         begin
//              showmessage('수납대기에 '+ inttostr(noSunapCnt) +'건이 있습니다.'+#10+
//                         '수납대기는 파란색으로 표시됩니다.');

         end;


          varQuery := LoadGroupDataQuery;
          varQuery2 := LoadSunapDataQuery;


       //카드금액을 비보험과 보험으로 나누기....
           {
      select s.sday as 수납일자 , s.Chart as 차트번호 ,   i.name as 성명  , s.sunapek as 수납금액 ,s.bohum as 보험본인부담액,s.Chong as 보험총금액,
         s.Chung as 공단청구금액 ,s.bonin1 as 비보험,s.etc as 기타 ,
      s.hyun as 현금, s.HyunReceipt as 현금영수증, s.card as 카드 ,
      (case when ( s.card - s.bohum > 0  )    then (s.card - s.bohum)
            when s.card - s.bohum < 0 then 0
            when s.card > 0 and s.bohum=0 then s.card
      else 0 end) as 비보험카드,         fau
      (case when (s.card - s.bohum >= 0  ) then s.bohum
          when (s.card - s.bohum < 0  ) then s.card
           else 0 end) as 보험카드,
      s.tong as 통장,s.GammyunEk as 감면금액,
        s.misuek as 미수금액,
       s.chamgo as 참고사항, s.hwanbulek as 환불액, s.hyunreceipt_tong as 통장현금영수증, s.skind, s.useBohum
       from ma_sunap s join view_gogek i on s.chart=i.chart
        where s.sday between  '2012-01-01' and  '2012-12-31'
       order by s.sday desc, stime asc

       }

     advStringGrid1.RemoveRows(1, advStringGrid1.RowCount-1);
     advStringGrid2.RemoveRows(1, advStringGrid2.RowCount-1);

     if grdmain.RowCount > 2 then
           grdmain.RemoveRows(2, grdmain.RowCount-1);

     rowStart:=1;

     if configvalue.varSunapUseGubun ='1' then //환자 구분 보기
     begin
          grdmain.ColCount := 42;
          cCount:=  42;

      //    grdmain.Cells[26, 0]:=  '내원동기';

          for j:= 0 to 9 do
          begin
             grdmain.Cells[ 30 +j , 0]:=  varGubunArray[j];
          end;
     end
     else
     begin
          grdmain.ColCount:=34;
     end;


        setlength( colArr, grdmain.ColCount);
        setlength( colArr2, grdmain.ColCount);

        for ii := 0 to grdmain.ColCount -1 do
        begin
        // colArr[ii] := grdmain.DisplColIndex(ii);


          colArr2[ii] := grdmain.ColumnAtPosition(ii);

          colArr[colArr2[ii]] := ii;
        //  colArr[ii] := ii;

        end;








     advProgressbar1.Min:= 0;

     try
          screen.Cursor := crHourGlass;
          if searchKind=0 then
          begin
               with DM_f.SqlTemp, grdmain do
               begin
                    beginupdate;
                    close;
                    sql.Clear;
//                    sql.add('select  s.isSunapOnly, s.Doc, s.sday,s.s_id,s.team, i.c_Phone, i.h_phone,        ');
//                    sql.add('s.sunapek,s.bohum,s.Chong, s.bugase, s.Chung,s.bonin1,s.etc,                       ');
//                    sql.add('s.iilbanek,s.hyun,s.card,s.tong,s.tong2,s.GammyunEk, s.Chart, s.skind, s.useBohum, ');
//                    sql.add('i.name,i.first_day, i.k_number, i.jongbeul, s.misuek,s.HyunReceipt,                ');
//                    sql.add('s.chamgo, s.hwanbulek, s.hyunreceipt_tong                                          ');
//                    sql.add('from ma_sunap s join view_gogek i on s.chart=i.chart                               ');



                    sql.add('select i.name,i.first_day, i.k_number,  i.c_Phone, i.h_phone,                  ');
                    sql.add(' s.doc_code, s.jin_day ,s.jinryo_pid ,s.team, s.Jin_gu,                        ');
                    sql.add('s.sunapak ,  s.bonin ,s.Chong, s.Chung,s.bonin1, s.Sunap,                      ');
                    sql.add('s.Cash ,s.card, s.tong, s.tong2,s.kamak, s.Chart,                              ');
                    sql.add(' s.misugeum ,s.HyunReceipt,                                                    ');
                    sql.add('s.remark , s.whanbulak,  s.jongBeul                                            ');
                    sql.add('from jinryo_p s join view_gogek i on s.chart=i.chart                           ');

//                    if checkbox1.checked=true then
//                        sql.add('where s.sday between :J1 and :J2   and  youngsuja  <> ''9'' ')
//                    else
//                        sql.add('where s.sday between :J1 and :J2')   ;
//
//                    if cbTeam.itemIndex > 0 then
//                    begin
//                         sql.add('and s.team = :team    ');
//                         parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//                    end;
//
//                    if cbZeroExcept.Checked= true then
//                         sql.add('and ( s.sunapek >0 or s.sunapek < 0)   ');
//                                      //( sunapek >0 or sunapek < 0)


                 //   if checkbox1.checked=true then
                 //       sql.add('where s.jin_day between :J1 and :J2   and  youngsuja  <> ''9'' ')
                 //   else
//                        sql.add('where s.jin_day between :J1 and :J2 and  s.sunap = ''1'' '   ;
                        sql.add('where s.jin_day between :J1 and :J2 and ( s.sunap = ''1'' or  s.sunap = ''0'') ')   ;

                    if cbTeam.itemIndex > 0 then
                    begin
                         sql.add('and s.team = :team    ');
                         parambyname('team').AsString := inttostr(cbTeam.itemIndex);
                    end;

//                    if cbZeroExcept.Checked= true then
//                         sql.add('and ( s.sunapek >0 or s.sunapek < 0)   ');
//                    if cbZeroExcept.Checked= true then
           //              sql.add('and ( s.sunapak >0 or s.sunapak < 0)   ');
                                      //( sunapek >0 or sunapek < 0)


                    if cbJohap.itemindex > 0 then
                    begin
                           case cbBohum.itemindex of
                         1:   //지역
                         begin
                            sql.add(' and   ( (substring( i.k_number,1,1) <> ''1'')       '+#10#13+
                                 '   or   (substring( i.k_number,1,1) <> ''2'')   '+#10#13+
                                 '   or   (substring( i.k_number,1,1) <> ''3'')   '+#10#13+
                                 '   or   (substring( i.k_number,1,1) <> ''4''))   ' ) ;

                         end;
                         2: //직장
                         begin
                             sql.add(' and   ( (substring( i.k_number,1,1) = ''1'')       '+#10#13+
                                 '   or   (substring( i.k_number,1,1) = ''2'')   '+#10#13+
                                 '   or   (substring( i.k_number,1,1)  = ''3'')   '+#10#13+
                                 '   or   (substring( i.k_number,1,1)  = ''4''))   ')  ;
                         end;
                         3:  //일반
                         begin
                             sql.add(' and i.k_number ='''' ');
                         end;
                        end;
                    end;

                    if cbBohum.itemindex > 0 then
                    begin
                         case cbBohum.itemindex of
                         1: //비보험 = 일반
                         begin
                            sql.add('and ( i.jongbeul = ''4'')  ');
                        end;
                         2: //보험  =  not 일반
                         begin
                             sql.add('and (i.jongbeul <> ''4''  and  i.jongbeul <> '''') ');
                        end;
                         3:
                         begin

                         end;
                         end;
                    end;



                    //  if VarCheck = true then
                    //       SQL.Add('and (i.fil <> ''1'' or i.fil is null) ');

//
//                         if varviewAll <> true then
//                         begin
//                               if varQuery <> '' then
//                                   sql.Add('and (s.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
//
//
//                              if varQuery2 <> '' then
//                                   sql.Add('and  (' + varQuery2 + ' or skind is null )' );
//                         end;

                     if cbNew.Checked then
                     begin
                          sql.Add('  and  i.first_day   between :J1 and :J2 ');

                     end;

//                     if cbNew.Checked then
//                     begin
//                          sql.Add('order by s.Chart, i.first_day , s.sday asc, stime asc ');
//                     end
//                     else
//                     begin
//                          sql.Add('order by  s.sday desc,  stime desc ');
//                     end;

                     if cbNew.Checked then
                     begin
                          sql.Add('order by s.Chart, i.first_day , s.jin_day asc, jin_time asc ');
                     end
                     else
                     begin
                          sql.Add('order by  s.jin_day desc,  jin_time desc ');
                     end;

                    parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
                    parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
                    open;
                    first;
                    if not DM_f.SqlTemp.isEmpty then
                    begin


                         advProgressbar1.Max:=  recordcount ;

                         rowcount := recordcount + 2;
                         while not eof do
                         begin
                              for i := 2 to rowcount - 1 do
                              begin

                                   varSunapId:=  FieldByname('jinryo_Pid').asString;

                                   ints[ colArr[0] , i] := rowStart;


                                   Cells[colArr[1], i] := FieldByname('jin_day').asString;

                                   if cbNew.Checked then
                                   begin
                                         Cells[colArr[2], i] := FieldByname('name').asString;

                                        if  trim(FieldByname('c_phone').asString)  <> '' then
                                            Cells[colArr[2], i] :=  Cells[colArr[2], i] +'('
                                                + FieldByname('c_phone').asString  ;

                                        if  trim(FieldByname('h_phone').asString)  <> '' then
                                            Cells[colArr[2], i] :=  Cells[colArr[2], i]
                                                + ', ' + FieldByname('h_phone').asString + ')'
                                            else
                                            if trim( FieldByname('c_phone').asString)  <> '' then
                                             Cells[colArr[2], i] :=  Cells[colArr[2], i] +')';
                                         Cells[colArr[2], i] :=   Cells[colArr[2], i]     +'(' +  FieldByname('first_day').asString +')';

                                         Cells[colArr[3], i] := FieldByname('chart').asString

                                   end
                                   else
                                   begin
                                         Cells[colArr[2], i] := FieldByname('name').asString;
                                         Cells[colArr[3], i] := FieldByname('chart').asString;

                                   end;


                                   Cells[colArr[4], i] :=loadJinjryosil(FieldByname('team').asString);

                                   jongBeul:= inttostr(strtoIntDef( FieldByname('jongBeul').asString, 4));//default 일반
                                   Cells[colArr[5], i] :=loadJongByulName( jongBeul);




                                   if fieldbyname('jin_day').AsString = fieldbyname('first_day').AsString then
                                        Cells[colArr[6], i] := '신환'
                                   else
                                        Cells[colArr[6], i] := '구환';



                                          with dm_f.sqltemp2 do
                                          begin
                                                close;
                                                sql.clear;
                                                sql.text:= 'select * from ma_gogek_munjin '
                                                       + ' where chart=:chart and kind = ''dong'' and regday=:regday ';
                                                paramByName('chart').asString:= Cells[colArr[3], i];
                                                paramByName('regday').asString:= Cells[colArr[1], i];
                                                open;

                                                if not isEmpty then
                                                begin
                                                    while not eof do
                                                    begin

                                                        if Cells[colArr[7], i] = '' then
                                                             Cells[colArr[7], i] := dm_f.sqltemp2.fieldByName('val').asString
                                                        else
                                                             Cells[colArr[7], i] := Cells[colArr[7], i] +', ' + dm_f.sqltemp2.fieldByName('val').asString ;


                                                        dm_f.sqltemp2.next;
                                                    end;
                                                end
                                                else
                                                begin
                                                    Cells[colArr[8], i] := '' ;
                                                end;
                                          end;





                                   Floats[colArr[8], i] := FieldByname('sunapak').asfloat;
                                   Floats[colArr[9], i] := FieldByname('bonin').asfloat;
                                   Floats[colArr[10], i] := FieldByname('chung').asfloat;
                                   Floats[colArr[11], i] := FieldByname('chong').asfloat;
                                   Floats[colArr[12], i] := FieldByname('bonin1').asfloat;
                                   Floats[colArr[13], i] := 0;// FieldByname('etc').asfloat;

                                   Floats[colArr[14], i] := FieldByname('bonin1').asfloat
                                                   + FieldByname('chong').asfloat
                                                   + 0;//FieldByname('etc').asfloat;

                                   Floats[colArr[15], i] := FieldByname('cash').asfloat;
                                   Floats[colArr[16], i] := FieldByname('HyunReceipt').asfloat;
                                   Floats[colArr[17], i] := FieldByname('card').asfloat;
                                   Floats[colArr[18], i] := FieldByname('tong').asfloat ;
                                   Floats[colArr[19], i] := 0;// FieldByname('HyunReceipt_tong').asfloat;
                                   Floats[colArr[20], i] := 0;//FieldByname('tong2').asfloat ;
                                   Floats[colArr[21], i] := FieldByname('kamak').asfloat;
                                   ints[colArr[22], i] := FieldByname('misugeum').AsInteger;
                                   ints[colArr[23], i] := FieldByname('whanbulak').AsInteger;


//                                   if (FieldByname('useBohum').asString = '1' ) //or (fieldByName('usebohum').AsString = '')
//                                           then
//                                        addCheckBox(26, i, true, true)
//                                   else
//                                        addCheckBox(26, i, false, true);
//

                                 Floats[colArr[27], i] := 0;//FieldByname('bugase').asfloat;


                                   cKind1:='';
                                   with dm_f.SqlWork, grdmain do
                                   begin
                                        Close;
                                        Sql.Clear;
                                        Sql.Add('select cardkind, sunapid, cardEk from sunapcard where chart=:chart and cardDate=:cardDate');
                                        parambyname('chart').AsString := Cells[colArr[3], i];
                                        parambyname('cardDate').AsString := Cells[colArr[1], i];
                                        Open;
                                        if dm_f.SqlWork.fieldbyname('sunapId').asString <> '' then
                                        begin
                                               Close;
                                               Sql.Clear;
                                               Sql.Add('select cardkind, cardEk from sunapcard where sunapid=:sunapid');
                                               parambyname('sunapid').AsString :=varSunapID;


                                        end
                                        else
                                        begin

                                               Close;
                                               Sql.Clear;
                                               Sql.Add('select cardkind, cardEk from sunapcard where chart=:chart and cardDate=:cardDate');
                                               parambyname('chart').AsString := Cells[colArr[3], i];
                                               parambyname('cardDate').AsString := Cells[colArr[1], i];
                                        end;
                                        Open;

                                          if  configvalue.varSunapRemarkCardView  ='1' then
                                         begin

                                                  if not dm_f.SqlWork.isEmpty then
                                                  begin
                                                          while not dm_f.SqlWork.eof do
                                                          begin

                                                                   if trim(cKind1) <> '' then
                                                                        cKind1 := cKind1 + ', ' + dm_f.SqlWork.FieldByname('cardkind').asstring
                                                                            + '('+formatfloat('#,0', dm_f.SqlWork.FieldByname('cardEk').asInteger)+')'
                                                                   else
                                                                        cKind1 := dm_f.SqlWork.FieldByname('cardkind').asString
                                                                               + '('+formatfloat('#,0', dm_f.SqlWork.FieldByname('cardEk').asInteger)+')';


                                                                   Cells[colArr[24], i] := cKind1 ;
                                                                   dm_f.SqlWork.next;
                                                          end;
                                                   end
                                                   else
                                                        Cells[colArr[24], i] := '';


                                         end;

                                   end;





                                 Cells[colArr[25], i] := FieldByname('jin_gu').asstring;
                                 Cells[colArr[26], i] := FieldByname('remark').asstring;


                                 if  FieldByname('jin_gu').asstring ='3' then //미수수납
                                 begin
                                   //   Cells[29, i] := '미수수납';

                                      Floats[colArr[29], i] := FieldByname('sunapak').asfloat;
                                 end
                                 else
                                 begin
                                      Floats[colArr[29], i] := 0;
                                 end;
                                Cells[colArr[32], i] :=  FieldByname('jinryo_pid').asString ;

                                Cells[colArr[33], i] :=  FieldByname('sunap').asString ;

                                  //미수수납 데이트 가져오기
                                  {SELECT *, (select jin_day from jinryo_p where jinryo_pid=[ma_misusunap].jinryo_pid) as sunapDay
                                FROM [mediro].[dbo].[ma_misusunap]
                                where chart='7001385'}

                                  misuSunapDate :=  loadMisuSunapDate( Cells[colArr[32], i])  ;



                                  Cells[colArr[30], i] := misuSunapDate;


                                  ma_referHospName:='';
                                  ma_referHospCode:='';
                                 loadReferHospInfo(Cells[colArr[3], i], Cells[colArr[1], i]);

                                 if ma_referHospCode <> '' then

                                     Cells[colArr[31], i] := ma_referHospName //+'('+ma_referHospCode+')'
                                 else
                                     Cells[colArr[31], i] := '';


                                varDocName:= FieldByname('doc_code').asString;
                              //환자를 advStringGrid2에 Unique하게 써보자.

                                varHwanName := FieldByname('chart').asString;

                                varHwanRow :=  FindDocName(advstringGrid2, varHwanName).varRow  ;


//                                if  (varHwanRow < 0 ) and (FieldByname('isSunapOnly').asString <> '1')  then
//                                 begin
//
//                                      advstringGrid2.addrow;
//                                      advstringGrid2.Cells[1, advstringGrid2.rowcount-1 ]:=  varHwanName;
//                                      advstringGrid2.Cells[2, advstringGrid2.rowcount-1 ]:=  varDocName;
//
//                                      advstringGrid2.Cells[3, advstringGrid2.rowcount-1 ]:=   Cells[5, i];
//
//
//
//
//                                            //===========================================================================================
//                                            //신구환수를 채운다.
//
//
//                                               varDocRow:=    FindDocName(advstringGrid1, varDocname).varRow  ;
//                                               if  varDocRow > 0 then
//                                               begin
//                                                   advstringGrid1.Cells[1, varDocRow]:=  varDocName;
//
//                                                   if   Cells[5, i] ='신환' then
//                                                      advstringGrid1.ints[2, varDocRow]:= advstringGrid1.ints[2, varDocRow] + 1  ; //신환
//                                                   if   Cells[5, i] ='구환' then
//                                                      advstringGrid1.ints[3, varDocRow]:= advstringGrid1.ints[3, varDocRow] + 1  ; //구환
//
//                                               end
//                                               else
//                                               begin
//                                                    advstringGrid1.addrow;
//                                                    advstringGrid1.Cells[1, advstringGrid1.rowcount-1 ]:=  varDocName;
//                                                     advstringGrid1.ints[2, advstringGrid1.rowcount-1]:= 0 ;
//                                                     advstringGrid1.ints[3, advstringGrid1.rowcount-1]:= 0 ;
//
//                                                   if   Cells[5, i] ='신환' then
//                                                      advstringGrid1.ints[2, advstringGrid1.rowcount-1]:= 1  ; //신환
//                                                   if   Cells[5, i] ='구환' then
//                                                      advstringGrid1.ints[3, advstringGrid1.rowcount-1]:= 1  ; //구환
//
//                                               end;
//
//                                    end;
//

                                  if configvalue.varSunapUseGubun ='1' then //환자 구분 보기
                                  begin





                                          //수납 간편진료입력 구분 보기
                                          //일단 초기화
                                              for j:= 0 to cCount do
                                              begin
                                                         Cells[colArr[29] + j, i] :=  '';
                                             end;

                                             with dm_f.sqltemp2 do
                                             begin
                                                   close;
                                                   sql.clear;
                                                   sql.text:= 'select * from ma_chart_hangmok_data' + ' where chart=:chart  and regday=:regDay';

                                                   if cbTeam.itemIndex > 0 then
                                                   begin
                                                         sql.add('and team = :team    ');
                                                         parambyname('team').AsString := inttostr(cbTeam.itemIndex);
                                                   end;

                                                   paramByName('chart').asString:= Cells[colArr[3], i];
                                                   paramByName('regday').asString:= Cells[colArr[1], i];
                                                   open;
                                                   if not isEmpty then
                                                   begin
                                                       while not eof do
                                                       begin
                                                           varGubun:= dm_f.sqltemp2.fieldByName('gubun').asString ;



                                                             //   strCase(varGubun, ['상담', '검사', '초진본딩', 'D/B', '치료', '임플란트', '치아성형', ]);
                                                           varGubunInt:=   strCase(varGubun,   varGubunArray );

                                                              if varGubunInt >= 0 then
                                                                Cells[colArr[29] + varGubunint, i] :=  varGubun ;


                                                           dm_f.sqltemp2.next;
                                                       end;

                                                     end;
                                             end;
                                       //   end;






                                  end;

                                  rowStart := rowStart + 1;

                               //   application.ProcessMessages;  없어도 게이지가 올라간다...

                                  advProgressbar1.Position:=  advProgressbar1.Position +1;


                                  next;


                              end;
                         end;





                    end
                    else
                    begin
                         rowcount := 2;
                    end;

                    UpdateSums;







                    if grdmain.RowCount > 0 then
                    begin
                         lblSum.Caption := formatFloat('#,0', GrdMain.floats[colArr[8], 1])  ;
                         lblSum2.Caption := formatFloat('#,0', GrdMain.floats[colArr[14], 1])  ;
                         if  GrdMain.floats[colArr[23], 1] > 0 then
                         begin
                             lblHwanBul.Visible:= true;
                             lblHwanbul.Caption :='(환불액:'+ formatFloat('#,0', GrdMain.floats[colArr[23], 1])+')';
                         end;
                    end
                    else
                    begin
                         lblSum.Caption := '0';
                         lblHwanBul.Visible:= false;

                    end;

                   // grdmain.AutoNumberDirection :=  sdAscending;//  sdDescending; //
                   // autonumbercol(0);


                   // grdmain.AutoSizeCol(0);

                    endUpdate;

               end;
          end; //searchKind=0 인 경우만 실행하자...





          //수납에서 원장사용이 설정된경우만  원장별 금액이 나오도록 하자.
          if configvalue.varUseDocSunap      <>    '1' then
          exit;



              {
              with DM_f.SqlTemp do
              begin
                    //신환수
                   SQL.Text := SQL_SELECT_sinHwan   ;
                   ParamByName('jin_day1').AsString := startDay;
                   ParamByName('jin_day2').AsString := finalDay;

                   if cbTeam.itemIndex > 0 then
                   begin
                      Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                      ParamByName('team').AsString :=   inttostr(cbTeam.itemIndex);//cbTeam.text;     //원장명
                   end;
                        SQL.Text :=   SQL.Text    + SQL_SELECT_GroupBy ;

                   open;
                   if not isEmpty then
                   begin
                         while not eof do
                         begin

                              varDocName:= FieldByname('doc').asString;
                              varDocCnt:=  FieldByname('Shinhwan').asInteger;

                               varDocRow:=    FindDocName(advstringGrid1, varDocname).varRow  ;
                               if  varDocRow > 0 then
                               begin
                                   advstringGrid1.Cells[1, varDocRow]:=  varDocName;
                                   advstringGrid1.ints[2, varDocRow]:= advstringGrid1.ints[2, varDocRow] + varDocCnt  ; //신환

                               end
                               else
                               begin
                                    advstringGrid1.addrow;
                                    advstringGrid1.Cells[1, advstringGrid1.rowcount-1 ]:=  varDocName;
                                    advstringGrid1.ints[2, advstringGrid1.rowcount-1]:= varDocCnt  ;  //신환수
                                    advstringGrid1.ints[3, advstringGrid1.rowcount-1]:= 0 ;

                               end;
                               next;
                          end;
                    end;




                   //구환수
                   SQL.Text := SQL_SELECT_GuHwan ;
                   ParamByName('jin_day1').AsString := startDay;
                   ParamByName('jin_day2').AsString := finalDay;

                   if cbTeam.itemIndex > 0 then
                   begin
                      Sql.text :=  Sql.text + SQL_SELECT_Where_team  ;
                      ParamByName('team').AsString := inttostr(cbTeam.itemIndex);//text;     //원장명
                   end;
                   SQL.Text :=   SQL.Text    + SQL_SELECT_GroupBy ;
                   open;
                   if not isEmpty then
                   begin
                         while not eof do
                         begin
                             varDocName:= FieldByname('doc').asString;
                              varDocCnt:=  FieldByname('Guhwan').asInteger;
                              varDocRow:=    FindDocName(advstringGrid1, varDocname).varRow  ;
                              if  varDocRow > 0 then
                              begin
                                  advstringGrid1.Cells[1, varDocRow]:=  varDocName;
                                  advstringGrid1.ints[3, varDocRow]:= advstringGrid1.ints[3, varDocRow] + varDocCnt  ; //구환

                              end
                              else
                              begin
                                   advstringGrid1.addrow;
                                   advstringGrid1.Cells[1, advstringGrid1.rowcount-1 ]:=  varDocName;
                               //    advstringGrid1.ints[2, advstringGrid1.rowcount-1]:= 0 ;
                                   advstringGrid1.ints[3, advstringGrid1.rowcount-1]:= varDocCnt ;

                              end;
                              next;
                          end;
                    end;


               end;

               }




//          with  DM_f.SqlTemp, grdmain do
//          begin
//               beginupdate;
//               close;
//               sql.Clear;
//               sql.Text:= ' select doc, sum(sunapek) as 수납금액, '+#10#13+
//                          ' sum( (case when sunapek > 0 then bohum  else 0 end)) as 보험 , '+#10#13+
//                          '  (case when sum(sunapek) > 0 then sum( sunapek - (case when sunapek > 0 then bohum  else 0 end))  else 0 end) as 비보험   from ma_sunap' + #10#13+
//                          'where sday <= :j2  and   sday > = :j1 '  ;
//
//               parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//               parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
//
//
//
//               if cbTeam.itemIndex > 0 then
//               begin
//                   sql.Text:=sql.Text + ' and team = :team    ';
//                    parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//               end;
//
//
//
//
////                         if varviewAll <> true then
////                         begin
////                               if varQuery <> '' then
////                                   sql.Add('and (ma_sunap.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
////
////
////
////
////                              if varQuery2 <> '' then
////                                   sql.Add('and  (' + varQuery2 + ' or skind is null )' );
////                         end;
//
//
//
//
//
//
//
//              sql.Text:=sql.Text +   ' group by doc ';
//              open;
//              if not DM_f.SqlTemp.isEmpty then
//              begin
//
//                    rCount := rCount+1;
//                    addrow;
//                    rCount := rCount+1;
//                    addrow;
//                    mergecells(4,rowcount-1, 3 , 1);//c,r,x,y
//
//                    cells[1, rowcount-1] := '원장명';
//                    cells[2, rowcount-1] := '수납금액';
//                    cells[3, rowcount-1] := '보험';
//                    cells[4, rowcount-1] := '비보험';
//                    cells[7, rowcount-1] := '신환';
//                    cells[8, rowcount-1] := '구환';
//
//                 while not eof do
//                 begin
//                    rCount := rCount+1;
//                    addrow;
//
//                    mergecells(4,rowcount-1, 3 , 1);//c,r,x,y
//
//                    cells[1, rowcount-1] := fieldByName('doc').asString;
//                    cells[2, rowcount-1] := displaywon(fieldByName('수납금액').asString);
//                    cells[3, rowcount-1] := displaywon( fieldByName('보험').asString);
//                    cells[4, rowcount-1] := displaywon( fieldByName('비보험').asString);
//
//
//                   //여기서  cells[1, rowcount-1]의 신환수와 구환수를 세어온다.
//                   varDocname:=  cells[1, rowcount-1];
//                   varDocRow:= findDocName(  advstringGrid1,  varDocname ).varRow;
//
//
//                   if     (varDocRow > 0)  and  (varDocname <> '') then
//                   begin
//                      varNewpat:=    advstringGrid1.ints[2, varDocRow] ;
//                      varOldpat:=    advstringGrid1.ints[3, varDocRow] ;
//
//                      cells[7, rowcount-1] :=  displaywon(inttostr(varNewpat));
//                      cells[8, rowcount-1] :=  displaywon(inttostr(varOldpat));// '구환';
//
//
//                   end;
//
//                    next;
//                 end;
//              end;
//              endupdate;
//          end;






         //수납구분항목별 리스트 보험현금, 비보험현금, 보험카드, 비보험카드 등

//          with  DM_f.SqlTemp do
//          begin
//               close;
//               sql.Clear;
//               sql.Text:=   'select * from ma_basic     ' + #13#10 +
//                            'where  (code like  ''1050%'') and (code <> ''105000'')     ' + #13#10 +
//                            'order by code    ';
//               open;
//               if not isEmpty then
//               begin
//               l:=0;
//               varSunapGubunLength := recordCount;
//
//               setLength( varSunapGubunHangMok, varSunapGubunLength);
//
//                     while not eof do
//                     begin
//
//                            varSunapGubunHangMok[l] := FieldByName('disp').AsString;
//                            l := l + 1;
//                            next;
//                     end;
//               end;
//          end;


//          with  DM_f.SqlTemp, grdmain do
//          begin
//               beginupdate;
//               close;
//               sql.Clear;
//               sql.Text:= ' select sGubun as 수납구분 , sum(sunapek) as 수납금액 from ma_sunap' + #10#13+
//                          'where sday <= :j2  and   sday > = :j1 '  ;
//
//               parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//               parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
//
//
//
//               if cbTeam.itemIndex > 0 then
//               begin
//                   sql.Text:=sql.Text + ' and team = :team    ';
//                    parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//               end;
//
////                         if varviewAll <> true then
////                         begin
////                               if varQuery <> '' then
////                                   sql.Add('and (ma_sunap.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
////
////                              if varQuery2 <> '' then
////                                   sql.Add('and  (' + varQuery2 + ' or skind is null )' );
////                         end;
//
//              sql.Text:=sql.Text +   ' group by  sGubun ';
//
//
//              open;
//              if not DM_f.SqlTemp.isEmpty then
//              begin
//
//                    rCount := rCount+1;
//                    addrow;
//                    rCount := rCount+1;
//                    addrow;
//                //    mergecells(4,rowcount-1, 3 , 1);//c,r,x,y
//
//                    cells[1, rowcount-1] := '수납구분';
//                    cells[2, rowcount-1] := '수납금액';
//
//               //     for l:= 0 to varSunapGubunLength - 1 do
//               //     begin
//               //          cells[l + 5 , rowcount-1] := varSunapGubunHangMok[l];
//               //     end;
//
//                 while not eof do
//                 begin
//                    rCount := rCount+1;
//                    addrow;
//
//                //    mergecells(4,rowcount-1, 3 , 1);//c,r,x,y
//
//                    cells[1, rowcount-1] := fieldByName('수납구분').asString;
//                    cells[2, rowcount-1] := displaywon(fieldByName('수납금액').asString);
//                   // cells[3, rowcount-1] := displaywon( fieldByName('보험').asString);
//                   // cells[4, rowcount-1] := displaywon( fieldByName('비보험').asString);
//
//
//                   //여기서  cells[1, rowcount-1]의 신환수와 구환수를 세어온다.
//                 {  varDocname:=  cells[1, rowcount-1];
//                   varDocRow:= findDocName(  advstringGrid1,  varDocname ).varRow;
//                   if     (varDocRow > 0)  and  (varDocname <> '') then
//                   begin
//                      varNewpat:=    advstringGrid1.ints[2, varDocRow] ;
//                      varOldpat:=    advstringGrid1.ints[3, varDocRow] ;
//
//                    cells[7, rowcount-1] :=  displaywon(inttostr(varNewpat));
//                    cells[8, rowcount-1] :=  displaywon(inttostr(varOldpat));// '구환';
//
//
//                   end;
//                  }
//                    next;
//                 end;
//              end;
//              endupdate;
//          end;
//
//
//
//
//

          //카드 종류와 수량


//          with  DM_f.SqlTemp, grdmain do
//          begin
//               beginupdate;
//               close;
//               sql.Clear;
//               sql.Text:= '       select cardKind, count(cardKind) as cardCount ,  sum(convert(int,cardEk,121)) as cardSum from  sunapcard  ' + #10#13+
//                    ' where cardek <> '''' and (cardDate <= :j2  and   cardDate > = :j1)      ';
//
//
//               parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//               parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
//
//
//
//               if cbTeam.itemIndex > 0 then
//               begin
//                   sql.Text:=sql.Text + ' and team = :team    ';
//                    parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//               end;
//
//
//
//
//
//
//                         if varviewAll <> true then
//                         begin
//                               if varQuery <> '' then
//                                   sql.Add('and (sunapcard.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
//
//
//                         end;
//
//
//
//
//              sql.Text:=sql.Text +   ' group by cardKind ';
//              open;
//              if not DM_f.SqlTemp.isEmpty then
//              begin
//
//                    rCount := rCount+1;
//                    addrow;
//
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '카드명';
//                    cells[2, rowcount-1] := '카드금액';
//                    cells[3, rowcount-1] := '수량';
//                 {
//                 1.비씨
//                 2.국민
//                 3.외환
//                 4.삼성
//                 5.신한
//                 6.현대
//                 7.롯데
//                 8.농협
//                 9.하나
//                 10.취소
//                 }
//                    cRCount :=  rowcount;
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '1.비씨';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '2.국민';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '3.외환';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '4.삼성';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '5.신한';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '6.현대';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '7.롯데';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '8.농협';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := '9.하나';
//                    cells[2, rowcount-1] := '0';
//                    cells[3, rowcount-1] := '0';
//
//                    rCount := rCount+1;
//                  //  addrow;
//                  //  cells[1, rowcount-1] := '10.취소';
//                  //  cells[2, rowcount-1] := '0';
//                  //  cells[3, rowcount-1] := '0';
//
//
//
//                    while not eof do
//                    begin
//                    {  rCount := rCount+1;
//                       addrow;
//                       cells[1, rowcount-1] := fieldByName('cardkind').asString;
//                       cells[2, rowcount-1] := fieldByName('cardsum').asString;
//                       cells[3, rowcount-1] := fieldByName('cardCount').asString;
//                    }
//                       for i:= 0 to 9 do
//                       begin
//                          if  fieldByName('cardkind').asString =   varCardGubunArray[i] then
//                          begin
//
//                                //  cells[1, CrCount + i] := fieldByName('cardkind').asString;
//                                  cells[2,  CrCount + i] :=  displaywon(fieldByName('cardsum').asString);
//                                  cells[3,  CrCount + i] :=  displaywon(fieldByName('cardCount').asString);
//
//                          end;
//                       end;
//                       next;
//                    end;
//
//
//              end;
//             endupdate;
//          end;

          //카드 취소건수

//          with  DM_f.SqlTemp, grdmain do
//          begin
//               beginupdate;
//               close;
//               sql.Clear;
//               sql.Text:= '   select count(*) as CancelCnt, sum(sunapek) as CancelSum from ma_sunap    ' + #10#13+
//                    ' where hwanbulek > 0 and card <0  and (sDay <= :j2  and   sDay > = :j1)      ';
//
//               parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//               parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
//
//
//               if cbTeam.itemIndex > 0 then
//               begin
//                   sql.Text:=sql.Text + ' and team = :team    ';
//                    parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//               end;
//
//
//
//
//                         if varviewAll <> true then
//                         begin
//                               if varQuery <> '' then
//                                   sql.Add('and (ma_sunap.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
//
//
//
//
//                              if varQuery2 <> '' then
//                                   sql.Add('and  (' + varQuery2 + ' or skind is null )' );
//                         end;
//
//
//
//
//
//
//
//               open;
//               if fieldByName('CancelCnt').AsInteger > 0 then
//               begin
//
//
//                    rCount := rCount+1;
//                    addrow;
//
//
//                    rCount := rCount+1;
//
//                    cells[1, rowcount-1] := '10.취소';
//                    cells[2, rowcount-1] :=  displaywon(fieldByName('CancelSum').asString);     //금액
//                    cells[3, rowcount-1] :=  displaywon(fieldByName('CancelCnt').asString);     //건수
//
//                end;
//
//
//               endUpdate;
//          end;
//
//



          //간편 진료 등록 항목 카운트
//          with  DM_f.SqlTemp, grdmain do
//          begin
//               beginupdate;
//               close;
//               sql.Clear;
//              sql.Text:= '   select  gubun, count(gubun) as countGubun,                                                              ' + #10#13+
//                         '  ( select convert(int, hangmokcode, 121) from ma_chart_hangmok  where hangmokname=b.gubun) as HangCode    ' + #10#13+
//                         '   from ma_chart_hangmok_data b                                                                            ' + #10#13+
//                          'where (regday <= :j2  and   regday >= :j1)  and chart <> ''''                                              ';
//
//              // sql.Text:= '  select  gubun, count(gubun) as countGubun from ma_chart_hangmok_data  ' + #10#13+
//
//               parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//               parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
//
//
//
//               if cbTeam.itemIndex > 0 then
//               begin
//                   sql.Text:=sql.Text + ' and team = :team    ';
//                    parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//               end;
//
//
//
//
//
//              sql.Text:=sql.Text +   ' group by gubun ';
//              sql.Text:=sql.Text +   ' order by hangCode ';
//              open;
//              if not DM_f.SqlTemp.isEmpty then
//              begin
//
//                    rCount := rCount+1;
//                    addrow;
//                    rCount := rCount+1;
//                    addrow;
//
//                    cells[1, rowcount-1] := '진료 항목';
//                    cells[2, rowcount-1] := '진료 횟수';
//
//                 while not eof do
//                 begin
//                    rCount := rCount+1;
//                    addrow;
//                    cells[1, rowcount-1] := fieldByName('gubun').asString;
//                    cells[2, rowcount-1] :=  displaywon(fieldByName('countGubun').asString);
//                     next;
//                 end;
//              end;
//             endupdate;
//          end;

          //내원동기항목(ma_gogek_munjin kind='dong'  카운트
//          with  DM_f.SqlTemp, grdmain do
//          begin
//               beginupdate;
//               close;
//               sql.Clear;
//               sql.Text:=// ' select  val, (select top 1 convert(int, val, 121) from ma_basic     ' + #10#13+
//                           ' select  val, (select top 1   val  from ma_basic     ' + #10#13+
//                          ' where disp = m.val) as vall,  count(val) as countDong               ' + #10#13+
//                          ' from ma_gogek_munjin m join ma_gogek_basic b on m.chart=b.chart     ' + #10#13+
//                          ' where  kind = ''dong''  and   ( (m.regday  = b.first_day) and       ' + #10#13+
//                          '  ( b.first_day <= :j2  and    b.first_day >= :j1))      ';
//
//                       //   ' where  kind = ''dong''  and    (m.regday <= :j2  and   m.regday >= :j1)      ';
//
//
//               parambyname('j1').AsString := startDay; //formatdatetime('YYYY-MM-DD', datetimepicker1.date);
//               parambyname('j2').AsString := finalDay; //formatdatetime('YYYY-MM-DD', datetimepicker2.date);
//
//
//
//               if cbTeam.itemIndex > 0 then
//               begin
//                   sql.Text := sql.Text + ' and team = :team    ';
//                   parambyname('team').AsString := inttostr(cbTeam.itemIndex);
//               end;
//
//              sql.Text:=sql.Text +   ' group by val ';
//              sql.Text:=sql.Text +   ' order by  vall  ';
//
//              open;
//              if not DM_f.SqlTemp.isEmpty then
//              begin
//
//                    rCount := rCount+1;
//                    addrow;
//
//                    rCount := rCount+1;
//                    addrow;
//
//
//                    mergecells(1,rowcount-1, 3,1);//c,r,x,y
//                    mergecells(4,rowcount-1, 2,1);//c,r,x,y
//
//                    cells[1, rowcount-1] := '<p align="center"><font color="clred"><b>내원동기 항목</b></font> </p>';
//                    cells[4, rowcount-1] := '<p align="center"><font color="clred"><b>횟수</b></font> </p>';
//
//                 while not eof do
//                 begin
//                    rCount := rCount+1;
//                    addrow;
//                    mergecells(1,rowcount-1, 3,1);//c,r,x,y
//                    mergecells(4,rowcount-1, 2,1);//c,r,x,y
//                    cells[1, rowcount-1] := fieldByName('val').asString;
//                    cells[4, rowcount-1] :=  displaywon(fieldByName('countDong').asString);
//                     next;
//                 end;
//              end;
//
//          end;

         // grdmain.AutoNumberDirection :=  sdAscending;//  sdDescending; //
         // grdmain.autonumbercol(0);


          grdmain.AutoSizeCol(0);

          grdmain.fixedFooters := rCount;


          if  configvalue.varSunapSumView  <> '1' then  //수납합계보기가 1이 아니면(바른이가 아니면...)
          grdMain.RemoveRows(1,1);

     finally
         grdmain.endupdate;
          btnSearch.enabled:=true;
           screen.Cursor := crDefault;
     end;
end;

procedure Tsebusunap_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := cafree;
end;

procedure Tsebusunap_f.btnSearchClick(Sender: TObject);
begin

       if checkBox3.Checked then
       begin
            sebusunapCalc(formatdatetime('YYYY-MM-DD', datetimepicker1.date),
                 formatdatetime('YYYY-MM-DD', datetimepicker2.date), 1);
       end
       else
       begin

           if cbMonthJungsan.Checked then
                sebusunapCalc(formatdatetime('YYYY-MM-DD', dateBeginOfMonth(datetimePicker1.date) ),
                     formatdatetime('YYYY-MM-DD',dateEndOfMonth(datetimePicker1.date)), 1 )
           else
                sebusunapCalc(formatdatetime('YYYY-MM-DD', datetimepicker1.date),
                     formatdatetime('YYYY-MM-DD', datetimepicker2.date), 0);
       end;
     varCheck := true;
end;

procedure Tsebusunap_f.FormDestroy(Sender: TObject);
begin
     sebusunap_f := nil;
end;

procedure Tsebusunap_f.btnExcelSaveClick(Sender: TObject);
begin
    savedialog1.fileName:= '기간수납내역'+formatdatetime('YYYYMMDD', datetimepicker1.date)  +'_'
                    + formatdatetime('YYYYMMDD', datetimepicker2.date) +'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

     { Title.Text := '수진자별 세부 수납내역'
          + '('
          + formatdatetime('YYYY-MM-DD', datetimepicker1.date)
          + ' ~ '
          + formatdatetime('YYYY-MM-DD', datetimepicker2.date)
          + ')';
      }
end;

procedure Tsebusunap_f.btnPrtClick(Sender: TObject);
var
    WPath   : string;
    bReturn : boolean;
begin

     WPath := ExtractFilePath(Application.ExeName) + 'print\';

     with frxReport1 do
     begin

           LoadFromFile(WPath + 'rptSunapList.fr3') ;



           frxUserDataSet1.RangeEnd      := reCount;
           frxUserDataSet1.RangeEndCount := grdmain.RowCount-1;


           DataToPrintForm('', '');

           if cbPreview.Checked then
               ShowReport()
           else
           begin
               PrepareReport();
               bReturn := Print();
           end;
     end;

end;


procedure Tsebusunap_f.DataToPrintForm(varDate, sYoungNo: string);
var
     imsiryo, i: integer;
     aTerm : string;
begin

    aTerm := formatDatetime('YYYY.MM.DD',datetimePicker1.DateTime )  +' ~ '  +
     formatDatetime('YYYY.MM.DD',datetimePicker2.DateTime );

     with frxReport1 do
     begin


          Variables['title']       := QuotedStr('기간별수납세부내역'  ); //
          Variables['aTerm']       := QuotedStr( aTerm); //
          Variables['noSunap']       := QuotedStr('수납대기'+ inttostr(noSunapCnt)+'건'); //
          Variables['병원명']       := QuotedStr('의료기관 : '    + configvalue.varsaupname); //
          Variables['병원주소']     := QuotedStr('주소 : '        + configvalue.varAdd1 + ' ' + configvalue.varAdd2); //
          Variables['병원전화']     := QuotedStr('전화 : '        + configvalue.varTel1 ); //
          Variables['병원팩스']     := QuotedStr('팩스 : '        + configvalue.varFax1 ); //
          Variables['대표원장']     := QuotedStr('대표원장 : '    + configvalue.varDaepyo +'  [인]'); //
      end;
end;

procedure Tsebusunap_f.DateTimePicker1KeyDown(Sender: TObject;
     var Key: Word; Shift: TShiftState);
begin
     case Key of
     VK_F12 :
     begin

          PassInput_f := TPassInput_f.Create(application);
          if PassInput_f.Showmodal = mrOK then
          begin
               //          if PassInput_f.edtpass.text = v_UserPass then
               if PassInput_f.edtpass.text = '+' then
               begin
                    varCheck := false;
               end;
          end;

     end;

     end;

end;

procedure Tsebusunap_f.UpdateSums;
var
     i: Integer;
begin
     for i := 1 to grdMain.colcount - 1 do
          grdMain.cells[i, 1] := '';

//     for i :=  colArr[7] to  colArr[23] do
//          grdMain.Floats[i, 1] :=   grdMain.ColumnSum(i, 2, grdMain.RowCount-1);



     grdMain.Floats[colArr[8], 1] :=   grdMain.ColumnSum(colArr[8], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[9], 1] :=   grdMain.ColumnSum(colArr[9], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[10], 1] :=   grdMain.ColumnSum(colArr[10], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[11], 1] :=   grdMain.ColumnSum(colArr[11], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[12], 1] :=   grdMain.ColumnSum(colArr[12], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[13], 1] :=   grdMain.ColumnSum(colArr[13], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[14], 1] :=   grdMain.ColumnSum(colArr[14], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[15], 1] :=   grdMain.ColumnSum(colArr[15], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[16], 1] :=   grdMain.ColumnSum(colArr[16], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[17], 1] :=   grdMain.ColumnSum(colArr[17], 2, grdMain.RowCount-1);

     grdMain.Floats[colArr[18], 1] :=   grdMain.ColumnSum(colArr[18], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[19], 1] :=   grdMain.ColumnSum(colArr[19], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[20], 1] :=   grdMain.ColumnSum(colArr[20], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[21], 1] :=   grdMain.ColumnSum(colArr[21], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[22], 1] :=   grdMain.ColumnSum(colArr[22], 2, grdMain.RowCount-1);
     grdMain.Floats[colArr[23], 1] :=   grdMain.ColumnSum(colArr[23], 2, grdMain.RowCount-1);



          //부가세
      grdMain.Floats[ colArr[28], 1] :=      grdMain.ColumnSum( colArr[28], 2, grdMain.RowCount-1);
          //미수수납
      grdMain.Floats[ colArr[29], 1] :=      grdMain.ColumnSum( colArr[29], 2, grdMain.RowCount-1);
end;

procedure Tsebusunap_f.grdmainGetAlignment(Sender: TObject; ARow,
     ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
    if aRow = 0 then
    begin
        hAlign := taCenter;
    end;

     case aCol of
             0:    hAlign := taCenter;

          7..23,  28, 29: //28:부가세 29: 미수수납
               begin
                if aRow > 0 then
                    hAlign := taRightJustify;
               end;
     end;

//      if aCol in [colArr[8]]then
//      begin
//          hAlign := taRightJustify;
//      end;

end;

procedure Tsebusunap_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
     var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
           7..23,  28, 29: //28:부가세 29: 미수수납
//            colArr[28], colArr[29]: //28:부가세 29: 미수수납
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;
end;

procedure Tsebusunap_f.grdmainGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
          if  (ARow > 1 ) and  (ARow mod 2 = 0) then
          begin
             if aCol > 0 then
                 ABrush.color := $00EFEFEF;
          end;

          if   grdmain.IsNode(arow) then
          begin
           abrush.color:=clYellow;
           afont.color:=clBlue;
          end;

     if  grdmain.Cells[24, aRow] ='3' then  // 미수수납  수납구분 0:진료수납 1: 토탈차지 2: 증명료 3: 미수수납
     begin
              aBrush.Color := $00EAFFEA;
              aFont.Color  := clBlack;
     end;

     if  grdmain.Cells[33, aRow] ='0' then  //수납대기
     begin
              aBrush.Color := clBlue;
              aFont.Color  := clWhite;
     end;


end;

procedure Tsebusunap_f.grdmainClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     try
     screen.cursor := crHourGlass;
     if arow > 0 then
     begin

          case ACol of
          3:
          begin

               grdMain.Enabled := false;
               if grdMain.Cells[3, arow] <> '' then
               begin
                    if LoadGogekData_chart(grdMain.Cells[3, arow], progressbar, varviewAll) =
                         true then
                    begin
                         main_f.fieldSet;
                    end;

               end;
               grdMain.Enabled := true;
          end;
          7:
          begin
//               if grdMain.Cells[0, arow] = '' then
//               exit;
//               if not assigned(sunapsebulist_f) then
//               begin
//                    sunapsebulist_f := Tsunapsebulist_f.Create(application);
//                    sunapsebulist_f.sebusunapCalc(grdMain.Cells[3, arow]);
//                    sunapsebulist_f.caption := grdMain.Cells[2, arow] + '(' +
//                        grdMain.Cells[3, arow] + ')' + '님의 수납내역';
//                    sunapsebulist_f.Show;
//               end
//               else
//               begin
//                    sunapsebulist_f.sebusunapCalc(main_f.edtchart.text);
//                    sunapsebulist_f.Show;
//               end;

          end;
          end;
    end;
    finally
       grdMain.Enabled := true;
       screen.cursor := crDefault;
    end;
end;

procedure Tsebusunap_f.Button1Click(Sender: TObject);
begin
  pnldetail.visible:= not pnldetail.visible ;

  if    pnldetail.visible = false   then
  begin
       cbBohum.itemindex:=0;
       cbJohap.itemindex:=0;
  end;

end;

procedure Tsebusunap_f.btnTodayClick(Sender: TObject);
begin
      datetimepicker1.date:=now;
      datetimepicker2.date:=now;

      sebusunapCalc(formatdatetime('YYYY-MM-DD', datetimepicker1.date),
      formatdatetime('YYYY-MM-DD', datetimepicker2.date), 0);

      varCheck := true;

end;

procedure Tsebusunap_f.grdmainClickSort(Sender: TObject; ACol: Integer);
var
    i: integer;
begin
      for i:= 2 to  rowStart  do
      begin
          grdMain.Ints[0, i] := i - 1;
      end;
end;

procedure Tsebusunap_f.grdmainColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
   //  grdmain.SetColumnOrder;
   if formLoading = false then
        saveGridColumnOrder( grdMain, 'sunapDaily');

end;

procedure Tsebusunap_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
     i: word;
     varTemp: string; //sawon and regipower 의 query  value
begin

     case key of
          VK_RIGHT:  //Y

            //   if (ssShift in shift) and (key = vk_F3) then
                 if (ssShift in shift) then
               begin
                    datetimepicker1.enabled := not  datetimepicker1.enabled ;
                    datetimepicker2.enabled := not  datetimepicker2.enabled ;
               end;
          VK_F3:

            //   if (ssShift in shift) and (key = vk_F3) then
                 if (ssShift in shift) then
               begin
                    datetimepicker1.enabled := not  datetimepicker1.enabled ;
                    datetimepicker2.enabled := not  datetimepicker2.enabled ;
               end;
          VK_F7:
               begin
                  if (ssShift in shift) then
                     advpanel1.visible:= not advpanel1.visible;
               end;
          VK_F4:

            //   if (ssShift in shift) and (key = vk_F3) then
                 if (ssShift in shift) then
               begin
                   checkBox3.checked:= not  checkBox3.checked;
                   checkBox3.visible:= not  checkBox3.visible;
                   btnSearch.visible:= not  btnSearch.visible;
                   btnPrt.visible:= not  btnPrt.visible;
                   btnExcelSave.visible:= not  btnExcelSave.visible;
               end;



          VK_F5:
               begin
                    if pnlTerm.Visible = true then
                    begin
                         pnlTerm.Visible := false;
                         exit;
                    end;
                    // 사원 아이디의 권한을 가지고 regipower 참고해서 열기
                    with dm_f.sqlWork do
                    begin
                         close;
                         sql.Clear;
                         sql.Add('select distinct s.said,r.pgset from ma_sawon_basic s join ma_pgpower r on s.sapower = r.powerid');
                         sql.Add('where s.said =:id and r.pgid=:pgid and r.pgset = ''1''                ');
                         parambyname('id').AsString :=
                              main_f.V_UserId;
                         parambyname('pgid').AsString := 'mnumagamday';
                         //일일점검
                         open;
                         if not isEmpty then
                              varTemp := '1';
                    end;

                    if varTemp = '1' then
                    begin
                         PassInput_f := TPassInput_f.Create(application);
                         if PassInput_f.Showmodal = mrOK then
                         begin
                              if PassInput_f.edtpass.text = main_f.v_UserPass + formatdatetime('dd', now) then
                              begin

                                   pnlTerm.Visible := not pnlTerm.Visible;

                              end
                              else
                              begin
                                //   showmessage('패스워드가 일치하지 않습니다.');
                                   showmessage('요청하신 작업이 완료되었습니다.');
                              end;
                         end;
                    end
                    else
                    begin
                       //  showmessage('제한된 권한입니다.');
                        showmessage('요청하신 작업이 완료되었습니다.');

                    end;
               end;
          end;
end;

procedure Tsebusunap_f.FormShow(Sender: TObject);
begin

        initAdvGrid(grdMain);
        LoadGridColumnOrder(grdMain, 'sunapdaily');

        formLoading := false;
end;

procedure Tsebusunap_f.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
var
    i: integer;
begin

    i:= strCase( VarName,[
            '',                          //0
            'jinday',//'진료일자',       //1
            'pname',//'성명',            //2
            'chart',//'차트번호',
            'team',//'팀',
            'bohumkind',//'보험종류',
            'newold',//'신구',
            'newondonggi',//'내원동기',
            'sunapak',//'수납액',
            'boninsum',//'본인부담',
            'chung',//'공단청구',
            'bonin',//'보험',
            'bonin1',//'비보험',
            'etcs',//'기타용품',
            'chong',//'총진료비',
            'hyun',//'현금',
            'hyunreceipt',//'현금영수증',
            'card',//'카드',
            'tong',//'통장',
            'tongreceipt',//'통장(현영)',
            'etc2',//'기타',
            'discount',//'감면',
            'misu',//'미수납',
            'refund',//'환불',
            'cardkind',//'카드종류',
            'sunapkind',//'수납구분',
            'sunapremark',//'수납참고사항',
            'im',//'IM',
            'bugase',//'부가세',
            'ismisu',//'미수수납금액']);
            'coHosp'//의뢰병원
            ]);

          case i of
             0..30:   Value := grdMain.cells[ i, frxUserDataSet1.RecNo+1];
          end;

//         if VarName = '진료일자' then
//            Value := grdMain.cells[ 1, frxUserDataSet1.RecNo+1]
//          else if VarName = '성명' then
//            Value := grdMain.cells[ 2, frxUserDataSet1.RecNo+1]
//          else if VarName = '차트번호' then
//            Value := grdMain.cells[ 3, frxUserDataSet1.RecNo+1];
end;

procedure Tsebusunap_f.FormCreate(Sender: TObject);
begin
     formLoading := true;

     //수납에서 원장사용이 설정된경우만   버튼이 보임.
     if configvalue.varUseDocSunap     =   '1' then
         cbMonthJungsan.visible := true;

  //   width := 1024;

     pnlTop.align := alTop;
     pnlMain.align := alClient;
     grdmain.align := alclient;
     dateTimePicker1.Date := now;
     dateTimePicker2.Date := now;
     varCheck := true;
     caption := '기간별 수납내역';

   // if configvalue.varNewonCountView <> '1' then
   //    pnlTerm.Visible:= false ;

    advStringGrid1.align := alclient;
    advPanel1.visible := false;

     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select Team_doctor1 from ma_team');
          Sql.Add(' order by team_key');
          Open;
          First;
          cbTeam.items.Clear;
          cbTeam.items.Add('전체');

          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeam.items.Add(FieldByName('Team_doctor1').AsString);
                    next;
               end;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].Values.add(dm_f.Chief);
          end;

     end;
     cbTeam.itemIndex := 0;

     lblSum.Caption := '0'  ;
     lblSum2.Caption := '0'  ;

  //   grdmain.Visible:=true;
     lblHwanBul.Visible:= false;




end;



function Tsebusunap_f.FindDocName(varGrid: TadvStringGrid; varDoc: string): TGridfindtext;
var
       res: TPoint;
       findparams: TFindparams;

begin
       //fixedCol에 있는 내용 또는 col이 0? 아무튼 여기꺼는 못찾음.


       {
       Where:
       In entire grid
       In current column   [fnFindInCurrentCol]
       In current row   [fnFindInCurrentRow]
       Direction:  [fnDirectionLeftRight]
       Top - down
       Left - right

       Case sensitive   [fnMatchCase]

       Whole words only   [fnMatchFull]

       Regular expressions [fnMatchRegular]
       }
       findparams := [];
       findparams := findparams +  [fnMatchFull];
       res := varGrid.findfirst(varDoc, findparams);
       if res.y >= 0 then
       begin
              result.varCol := res.x;
              result.varRow := res.y;
              //varGrid.Col := res.x;
        // varGrid.row := res.y;
       end
       else
       begin
              result.varCol := -1;
              result.varRow := -1;
       end;
       //findNext
       {  res := AdvStringGrid1.findnext;
       if (res.x >= 0) and (res.y >= 0) then
       begin
        AdvStringGrid1.Col := res.x;
        AdvStringGrid1.row := res.y;
       end
       else
        MessageDlg('Text not found', mtinformation, [mbOK], 0);
       }
end;


procedure Tsebusunap_f.cbZeroExceptClick(Sender: TObject);
var
     FormInit: Tinifile;
     varZeroShow:string;
begin
     FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');

      if cbZeroExcept.Checked then
      FormInit.WriteString('기타정보', 'SUNAPZeroView', '1')
      else
      FormInit.WriteString('기타정보', 'SUNAPZeroView', '0');

     FormInit.Free;


       if cbMonthJungsan.Checked then
            sebusunapCalc(formatdatetime('YYYY-MM-DD', dateBeginOfMonth(datetimePicker1.date) ),
                 formatdatetime('YYYY-MM-DD',dateEndOfMonth(datetimePicker1.date)), 1 )
       else
            sebusunapCalc(formatdatetime('YYYY-MM-DD', datetimepicker1.date),
                 formatdatetime('YYYY-MM-DD', datetimepicker2.date), 0);

end;

procedure Tsebusunap_f.CheckBox2Click(Sender: TObject);
var
  i, j: integer;
begin
  if CheckBox2.Checked = true then
  begin
 //Node를 만들자......
   i := 1;
   j := 1;
    while (i < grdMain.rowcount - 1) do
    begin
   //   if grdMain.cells[1, j] = 'BMW' then bmwnode := j;

      while (grdMain.cells[3, j] = grdMain.cells[3, j + 1]) and (j < grdMain.rowcount - 1)
         do inc(j);

      if (i <> j) then
          grdMain.AddNode(i, j - i + 1);

      i := j + 1;
      j := i;
    end;
    grdMain.contractall;
    grdMain.Refresh;
 //Node end.
 end
 else
 begin
      //Node를 어떻게 해제하나....
    grdMain.ExpandAll ;
    grdMain.Refresh;
 end;

end;

procedure Tsebusunap_f.grdmainGetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
      if not grdMain.isNode(arow) and (arow>0) then borders:=[cbLeft];
       apen.color:=clSilver;
end;

end.


'jinday',
'pname',
'chart',
'team',
'bohumkind',
'newold',
'newondonggi',
'sunapak',
'boninsum',
'chung',
'bonin',
'bonin1',
'etcs',
'chong',
'hyun',
'hyunreceipt',
'card',
'tong',
'tongreceipt',
'etc2',
'discount',
'misu',
'refund',
'cardkind',
'sunapkind',
'sunapremark',
'im',
'bugase',
'ismisu'



진료일자
성명
차트번호
팀
보험종류
신구
내원동기
수납액
본인부담
공단청구
보험
비보험
기타용품
총진료비
현금
현금영수증
카드
통장
통장(현영)
기타
감면
미수납
환불
카드종류
수납구분
수납참고사항
IM
부가세
미수수납



jinday
pname
chart
team
bohumkind
newold
newondonggi
sunapak
boninsum
chung
bonin
bonin1
etcs
chong
hyun
hyunreceipt
card
tong
tongreceipt
etc2
discount
misu
refund
cardkind
sunapkind
sunapremark
im
bugase
ismisu
