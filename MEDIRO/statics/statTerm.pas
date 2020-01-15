unit statTerm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask,  AdvGlowButton,
  Grids, AdvObj, BaseGrid, AdvGrid, ExtCtrls, AdvPanel, AdvPageControl, tmsAdvGridExcel,
  AdvUtil, VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart,
  UWebGMapsCommon, UWebGMapsGeocoding, UWebGMaps, UWebGMapsMarkers, UWebGMapsClusters,
  AdvSplitter;

type
     TStatAnal = packed record
          hwanCnt: array[0..2] of integer; //0:��ü 1: ��ȯ 2: ��ȯ

          dateCnt: array[0..6] of integer;   //0:��, 1:��...6:��
          genderCnt:array[0..2] of integer;  //0:����, 1: ���� 2:�˼�����

          ageCnt   : array of integer;  //0: 10�� ~ 9: 100��
          ageName  : array of String;   //0: 10�� ~ 9: 100��

          GubunName: array of String;   //���������׸�
          GubunCnt: array of integer;   //�������� ī��Ʈ


          DocName:array of String;      //�ǻ��
          DocCnt:array of Integer;      //�ǻ� ī��Ʈ

          DocName2:array of String;      //�ǻ��
          DocCnt2:array of Integer;      //�ǻ� ī��Ʈ
          DocChojinCnt :array of Integer;   //�ǻ��ȯ
          DocJejinCnt :array of Integer;   //�ǻ籸ȯ
          DocEtcCnt :array of Integer;   //�ǻ籸ȯ

          KwamokName : array of String; //�����
          KwamokCnt : array of Integer; //����ī��Ʈ
     end;
type
  TstatTerm_f = class(TForm)
    Memo1: TMemo;
    grdMain: TAdvStringGrid;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvTabSheet3: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    AdvTabSheet5: TAdvTabSheet;
    Chart1: TChart;
    Series1: TPieSeries;
    Chart2: TChart;
    PieSeries1: TPieSeries;
    Chart3: TChart;
    PieSeries2: TBarSeries;
    Chart4: TChart;
    PieSeries3: TPieSeries;
    Chart5: TChart;
    BarSeries1: TBarSeries;
    SaveDialog1: TSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    spSkinPanel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnSch: TAdvGlowButton;
    btnXls: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    dt1: TDateTimePicker;
    dt2: TDateTimePicker;
    edtYY: TEdit;
    edtMM: TEdit;
    cbTeamName: TComboBox;
    cbYear: TComboBox;
    cbMonth: TComboBox;
    cbHyg: TComboBox;
    cbNew: TCheckBox;
    AdvTabSheet6: TAdvTabSheet;
    AdvTabSheet7: TAdvTabSheet;
    Chart6: TChart;
    PieSeries4: TPieSeries;
    AdvStringGrid1: TAdvStringGrid;
    WebGMaps1: TWebGMaps;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    AdvSplitter1: TAdvSplitter;
    Panel1: TPanel;
    Label9: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Label11: TLabel;
    procedure btnSchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMonthChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvPageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
      intGubun, intDoc, intKwamok, intAge, intDoc2 : integer;
    procedure comboset;
    function CntStat: TStatAnal;
    procedure insertTempDb(docname:string; docCount, cho, je:integer);
    procedure loadPatWithAddress;
    function AddMarker(Address: string; Hint : string; Cluster: TMapCluster): TMarker;
    procedure InitClusters;
    function loadFromZipcode(areacode : string): string;
    function ConnectPostMDB: boolean;
    procedure loadPatWithAddressWithPOI;
    function AddMarker2(Latitude  : double;
          Longitude : double;
          Address: string;
          Hint : string;
          Cluster: TMapCluster): TMarker;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  statTerm_f: TstatTerm_f;

implementation

uses uDM, uFunctions, uConfig, ugogekData;

{$R *.dfm}

procedure TstatTerm_f.comboset;
const
     SQL_SELECT_DATA = 'select * from ma_basic     ' + #13#10 +
          'where  (code like  ''081%'') and (code <> ''08100'')     ' + #13#10
          +
          'and inuse <>''0''     ' + #13#10 +
          'order by sortorder    ';
var
     i, j, inow: integer;
     ii: string;
     sijakday, endday: string;
     sijakYY, endYY, jj: integer;
begin

      i := strtoint(formatdatetime('dd', now));
     dt1.date := now;
     dt1.date := dt1.date - i + 1; //formatdatetime('yyyy-mm', now) + '-01';
     dt2.date := now;


     cbYear.items.Clear;

     sijakday := '2000-01-01' ;
     endday := '2030-01-01'   ;

     sijakYY := strtoint(copy(sijakday, 1, 4));
     endYY := strtoint(copy(endday, 1, 4));

     inow := endyy - sijakYY;
     edtYY.Text := inttostr(endYY);

     jj := endYY;
     j := inow + 1;

     for i := 0 to j do
     begin
          cbYear.items.Add(inttostr(jj));
          jj := jj - 1;
     end;
     cbYear.Itemindex :=  cbyear.Items.IndexOf(formatdatetime('YYYY', now));

     edtMM.Text := formatdatetime('MM', now);

     cbMonth.items.Clear;
     inow := strtoint(formatdatetime('MM', now));

     for i := 1 to 12 do
     begin
          cbMonth.items.Add(inttostr(i));
     end;

     cbMonth.Itemindex := inow - 1;

     cbTeamName.items.Clear;
     cbTeamName.items.Add('��ü');
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_team');
          Sql.Add('order by team_name');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeamName.items.Add(FieldByName('team_doctor1').AsString);
                    next;
               end;
          end
          else
          begin

          end;

     end;
     cbTeamName.Itemindex := 0;

     cbHyg.items.Clear;
     cbHyg.items.Add('��ü');
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('Where sajikgub <> ''1'' '); //2011.8
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbHyg.items.add(FieldByName('saname').AsString);
                    next;
               end;
               cbHyg.ItemIndex := 0;
          end
          else
          begin
          end;
     end;
 
end;


function TstatTerm_f.CntStat  :TStatAnal;
const
//   SQL_SELECT_sinwan =
//          'SELECT  chart, first_day ,name ,doc, jumin, fam_id, refer_name,    '#10#13 +
//          'h_zip, h_juso, refer_chart                                         '#10#13 +
//          'FROM    view_gogek                                                   '#10#13 +
//          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2           ';

   SQL_SELECT_DateWeek_new =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2           '#10#13 +
          '  group by datepart(dw, jin_day)                                 ';


   SQL_SELECT_DateWeek_shin =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and first_day = jin_day        '#10#13 +
          '  group by datepart(dw, jin_day)                                 ';

   SQL_SELECT_DateWeek_all =
          'SELECT  datepart(dw, jin_day) as DayWeek ,  count(jin_day) as Hwan                             '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2           ';


          //Distinct �ϸ� �ߺ� ������ ���� �پ ���ڰ� �ȸ¾�,,,,�Ф�
   SQL_SELECT_sinhwan =
       //   'SELECT  count(distinct chart) as hwan                                                                    '#10#13 +
          'SELECT  count(*) as hwan                                                                    '#10#13 +
          'FROM    ma_jubsu                                                                            '#10#13 +
          'WHERE   first_day >= :jin_day1 and  first_day <= :jin_day2   and first_day = jin_day        ';

   SQL_SELECT_GuHwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and jin_day <> first_day         ';

   SQL_SELECT_AllHwan =
          'SELECT  count(*) as hwan                              '#10#13 +
          'FROM    ma_jubsu                                                  '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2        ';


   SQL_SELECT_Gender =
      'select  COUNT(                                                          '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1) in (''1'',''3'',''5'',''7'') )            '+#10#13 +
      '     THEN ''����'' ELSE NULL END) AS ''����'' ,                         '+#10#13 +
      'COUNT(                                                                  '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1)  in (''2'',''4'',''6'',''8'' ) )         '+#10#13 +
      '     THEN ''����'' ELSE NULL END) AS ''����'' ,                         '+#10#13 +
      'COUNT(                                                                  '+#10#13 +
      'CASE WHEN   ( SUBSTRING( jumin, 7, 1)  not in (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'') )   '+#10#13 +
      '     THEN ''�˼�����'' ELSE NULL END) AS ''�˼�����''                   '+#10#13 +
      '   from ma_jubsu                                                        '+#10#13 +
      ' WHERE   jin_day >= :jin_day1  and  jin_day <= :jin_day2                ';




    SQL_SELECT_Age =
      'select  (left(year(getdate()),4) - convert(int,((convert(varchar,case substring(jumin,1,1) when ''0'' then ''20''    '+#10#13 +
      'else ''19'' end))) +  convert(varchar,substring(jumin,1,2)))) / 10  as JinNai                                         '+#10#13 +
      ', count(*)  as OldMan                                                                                                 '+#10#13 +
      'from ma_jubsu                                                                                                          '+#10#13 +
      'WHERE   (jin_day >=:jin_day1 ) AND (jin_day <= :jin_day2 )  and ((jin_day <> first_day) or (first_day is null)) '+#10#13 +
      'group by   (left(year(getdate()),4) - convert(int,((convert(varchar,case substring(jumin,1,1) when ''0'' then ''20''    '+#10#13 +
      'else ''19'' end))) +  convert(varchar,substring(jumin,1,2)))) / 10                                                      '+#10#13 +
      'order by   (left(year(getdate()),4) - convert(int,((convert(varchar,case substring(jumin,1,1) when ''0'' then ''20''   '+#10#13 +
      'else ''19'' end))) +  convert(varchar,substring(jumin,1,2)))) / 10                                                    ';


    SQL_SELECT_Area =
          'select  (select  top 1 dong+'' ''+Ri +'' ''+ bunji from post where substring(area,1,3)                       '+#10#13 +
          '  +''-''+substring(area,4,3) =zipcode) as dongname , area,                                                   '+#10#13 +
          ' count(*) as oldMan                                                                                          '+#10#13 +
          'from  ma_jubsu                                                                                               '+#10#13 +
          'WHERE   (jin_day >= :Jin_day1) AND (jin_day <= :Jin_Day2)                                                    '+#10#13 +
          'group by  area                                                                                               '+#10#13 +
          'order by dongname                                                                                            ';



   SQL_SELECT_DongGi =
           ' select  val, count(val) as countDong                                                                                  ' + #10#13+
           ' from ma_gogek_munjin m join ma_gogek_basic b on m.chart=b.chart    ' + #10#13+
           ' where  kind = ''dong''  and   ( (m.regday  = b.first_day) and      '#10#13 +
           ' ( b.first_day <= :jin_day2  and  b.first_day >= :jin_day1))        ';



   SQL_SELECT_Doc =
          'SELECT  doc, count(doc) as DocCnt                               '#10#13 +
          'FROM    ma_jubsu                                                '#10#13 +
          'WHERE   jin_day >= :jin_day1 and  jin_day <= :jin_day2  and choje <> ''9''  ';






   SQL_SELECT_Where_team = ' and doc=:doc      ';
   SQL_SELECT_orderby = 'order by first_day, name          ';



   // �ӽ����̺� Drop
   dropTempTable =
    'IF OBJECT_ID(''tempdb..#DocTabletemp'') IS NOT NULL    '+#10+  // �ӽ����̺��� ���� ���
    '   DROP TABLE #DocTabletemp                               ';  // �ӽ����̺� ����

   //����/ �������� ����
   selChojeDoctoTemp =
      'select * into #DocTabletemp                                                                  '+#10+
      ' from (                                                                                      '+#10+
      '                                                                                             '+#10+
      'SELECT  (SELECT  TOP (1) SaName                                                              '+#10+
      '        FROM     ma_sawon_basic                                                              '+#10+
      '        WHERE  (SaID = jinryo_p.doc_code) AND (sateam = jinryo_p.team)) AS docName,          '+#10+
      '              count(doc_code) as docCount,                                                   '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '                = jin_day then  count(jin_Day) else 0 end) as cho,                           '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '               <> jin_day  then  count(jin_day) else 0 end) as je                            '+#10+
      '                                                                                             '+#10+
      'FROM     jinryo_p                                                                            '+#10+
      'WHERE  (jin_day >= :jin_Day1) AND (jin_day <= :jin_day2)                                     '+#10+
      'group by  team, doc_code ,jin_day, chart                                                     '+#10+
      ') as aaa                                                                                     ';




   selChojeDoc  =
      'select docName, sum(docCount) as tot, sum(cho) as chojin , sum(je) as jejin ,  '+#10+
      '           sum(docCount-cho-je) as etc  from   DocTabletemp                    '+#10+
      'group by docName                                                               ';

   selChojeDocFromMSSQL =
      '                                                                                             '+#10+
      'SELECT  (SELECT  TOP (1) SaName                                                              '+#10+
      '        FROM     ma_sawon_basic                                                              '+#10+
      '        WHERE  (SaID = jinryo_p.doc_code) AND (sateam = jinryo_p.team)) AS docName,          '+#10+
      '              count(doc_code) as docCount,                                                   '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '                = jin_day then  count(jin_Day) else 0 end) as cho,                           '+#10+
      '         (case when (select first_day from ma_gogek_basic where chart=jinryo_p.chart)        '+#10+
      '               <> jin_day  then  count(jin_day) else 0 end) as je                            '+#10+
      '                                                                                             '+#10+
      'FROM     jinryo_p                                                                            '+#10+
      'WHERE  (jin_day >= :jin_Day1) AND (jin_day <= :jin_day2) and chojae<>''9''      '+#10+
      'group by  team, doc_code ,jin_day, chart                                                     ';
   selChojeDocFromMsAccess  =
      'select docName, sum(docCount) as tot, sum(cho) as chojin , sum(je) as jejin ,  '+#10+
      '           sum(docCount-cho-je) as etc  from   DocTabletemp                   '+#10+
      'group by docName                                                               ';
//  selChojeDocFromMSSQL
//  selChojeDocFromMsAccess
var
   WeekCase, i : integer;
        varQuery: string;

begin


   //       shinhwan: integer;
   //       guhwan: integer;
   //       dateCnt: array[0..6] of integer;   //0:��, 1:��...6:��
   //       genderCnt:array[0..1] of integer;  //0:����, 1: ����   2:�˼�����


   //       GubunName: array of String;   //���������׸�
   //       GubunCnt: array of integer;   //�������� ī��Ʈ
   //       DocName:array of String;      //�ǻ��
   //       DocCnt:array of Integer;      //�ǻ� ī��Ʈ
   //       KwamokName : array of String; //�����
   //       KwamokCnt : array of Integer; //����ī��Ʈ

     varQuery := LoadGroupDataQuery;


      //������ �ʱ�ȭ�ؾ���....
     SetLength( result.GubunName, 100);
     SetLength( result.DocName, 100);
     SetLength( result.KwamokName, 100);
     SetLength( result.AgeName, 100);

     SetLength( result.GubunCnt, 100);
     SetLength( result.DocCnt, 100);

     SetLength( result.DocName2, 100);
     SetLength( result.DocCnt2, 100);
     SetLength( result.DocChojinCnt, 100);
     SetLength( result.DocJejinCnt, 100);
     SetLength( result.DocEtcCnt, 100);




     SetLength( result.KwamokCnt, 100);
     SetLength( result.AgeCnt, 100);


     for i:= 0 to 99 do
     begin
       result.GubunName[i] :='';
       result.DocName[i] :='';
       result.KwaMokName[i] :='';
       result.AgeName[i] :='';

       result.GubunCnt[i] :=0;
       result.DocCnt[i] :=0;

       result.DocName2[i] :='';
       result.DocCnt2[i] :=0;
       result.DocChojinCnt[i] :=0;
       result.DocJejinCnt[i] :=0;
       result.DocEtcCnt[i] :=0;



       result.KwaMokCnt[i] :=0;
       result.AgeCnt[i] :=0;

     end;


     for i:= 0 to 6 do
     begin
       result.dateCnt[i] :=0;
     end;


     result.genderCnt[0] :=0;//����
     result.genderCnt[1] :=0; //����
     result.genderCnt[2] :=0; //�˼�����

     result.HwanCnt[0] :=0;   //������ ��üȯ��
     result.HwanCnt[1] :=0;   //��ȯ
     result.HwanCnt[2] :=0;   //��ȯ

     intGubun  := 0;
     intDoc    := 0;
     intDoc2   := 0;
     intKwamok := 0;
     intAge    := 0;


       with DM_f.SqlTemp do
       begin
              //��ü���� ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_AllHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;


             if  varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;

              result.HwanCnt[0] := fieldByName('hwan').asInteger;

              //��ȯ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_sinHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;

             if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;




              open;

              result.HwanCnt[1] := fieldByName('hwan').asInteger;


              //��ȯ��
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_GuHwan;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;

              if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;
              open;

              result.HwanCnt[2] := fieldByName('hwan').asInteger;


              //���Ϻ� ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_DateWeek_all;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;

               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


               Sql.text :=  Sql.text +          '  group by datepart(dw, jin_day)                                 ';



              open;
              if not isEmpty then
              begin

                   while not eof do
                   begin
                       WeekCase:=  strcase( fieldByname('DayWeek').asString,['1','2','3','4','5','6','7']);

                      case   WeekCase of
                         0..6:  result.dateCnt[WeekCase] := fieldByName('hwan').asInteger;
                      end;
                      next;
                   end;

              end;

             //���� ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_Gender;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;
              if not isEmpty then
              begin
                     result.genderCnt[0]:= fieldByname('����').asinteger;
                     result.genderCnt[1]:= fieldByname('����').asinteger;
                     result.genderCnt[2]:= fieldByname('�˼�����').asinteger;

              end;

             //Age �� ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_Age;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;


               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;


              open;
              if not isEmpty then
              begin

                  while not eof do
                   begin
                       result.ageName[intAge]  :=  fieldByName('jinNai').asString+'0 ��';
                       result.AgeCnt[intAge]   :=  fieldByName('oldMan').asInteger;
                       next;
                       intAge := intAge + 1;
                   end;


              end;



              //�������� ��  ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_DongGi;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;

               if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (m.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;



              sql.Text:=sql.Text +   ' group by val ';

              open;
              if not isEmpty then
              begin
                   while not eof do
                   begin
                       result.GubunName[intGubun]  :=  fieldByName('val').asString;
                       result.GubunCnt[intGubun]  :=  fieldByName('CountDong').asInteger;
                       next;
                       intGubun := intGubun + 1;
                   end;
              end;

              //�ǻ纰 ȯ�ڼ�
              close;
              sql.clear;
              SQL.Text := SQL_SELECT_Doc;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);

              if cbTeamName.itemindex > 0 then
              begin
                 Sql.text :=  Sql.text + SQL_SELECT_Where_team ;
                 ParamByName('doc').AsString := cbTeamName.text;     //�����
              end;


              if varviewAll <> true then
               begin
                    if varQuery <> '' then

                         sql.Add('and (chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');

               end;

              sql.Text:=sql.Text +   ' group by doc ';

              open;
              if not isEmpty then
              begin
                   while not eof do
                   begin
                       result.DocName[intDoc]  :=  fieldByName('Doc').asString;
                       result.DocCnt[intDoc]  :=  fieldByName('DocCnt').asInteger;
                       next;
                       intDoc := intDoc + 1;
                   end;
              end;




      end;




       with DM_f.SqlTemp do
       begin
              //------------------------------------------------------------------------------
//    selChojeDocFromMSSQL
//  selChojeDocFromMsAccess

              //�ǻ纰 ȯ�ڼ�, ��ȯ��, ��ȯ��

              close;
              sql.clear;
                  //����/ �������� ���� �� tempTable�� insert
              SQL.Text := selChojeDocFromMSSQL;
              ParamByName('jin_day1').AsString := FormatDateTime('YYYY-MM-DD', dt1.Date);
              ParamByName('jin_day2').AsString := FormatDateTime('YYYY-MM-DD', dt2.Date);
              open;
                 if not isEmpty then
                begin
                   while not eof do
                   begin

                     insertTempDb( fieldByName('docName').AsString,
                          fieldByName('docCount').AsInteger,
                          fieldByName('cho').AsInteger,
                          fieldByName('je').AsInteger);

                     next;
                   end;
                end;



             //-------------------------------------------------------------------
     end;

     with dm_f.ADOQuery1 do
     begin
              SQL.Text := selChojeDoc ;
              open;

              if not isEmpty then
              begin
                   while not eof do
                   begin


                       result.DocName2[intDoc2]       :=  fieldByName('Docname').asString;
                       result.DocCnt2[intDoc2]        :=  fieldByName('tot').asInteger;
                       result.DocChojinCnt[intDoc2]   :=  fieldByName('Chojin').asInteger;
                       result.DocJejinCnt[intDoc2]    :=  fieldByName('Jejin').asInteger;
                       result.DocEtcCnt[intDoc2]      :=  fieldByName('Etc').asInteger;

                       next;
                       intDoc2 := intDoc2 + 1;
                   end;
              end;
     end;

end;

procedure TstatTerm_f.insertTempDb(docname:string; docCount, cho, je:integer);
begin


     with dm_f.ADOQuery1  do
     begin

          close;
          sql.Clear;
          sql.Text := 'insert into DocTabletemp      ' +#10+
                '(docname, docCount, cho, je) values ' +#10+
                '(:docname, :docCount, :cho, :je)    ' ;
            parameters.ParamByName('docname').Value  :=   docname;
            parameters.ParamByName('docCount').Value :=   docCount;
            parameters.ParamByName('cho').Value      :=   cho;
            parameters.ParamByName('je').Value       :=   je;
            execSql;
     end;

end;


procedure TstatTerm_f.AdvPageControl1Change(Sender: TObject);
begin
     case AdvPageControl1.ActivePageIndex of
         6:
         begin

           if connectPostMDB = true then
             loadPatWithAddress
             else
             begin
               showmessage('Db Ȯ��');
             end;

         end;
     end;
end;


procedure TstatTerm_f.InitClusters;
var
  c: TMapCluster;
begin
  WebGMaps1.Clusters.Clear;
  WebGMaps1.DeleteAllMapCluster;
    c := WebGMaps1.Clusters.Add().Cluster;
    c.Title := 'korea';

 end;


function TstatTerm_f.AddMarker(Address: string; Hint : string; Cluster: TMapCluster): TMarker;
var
  m: TMarker;
begin
//  address := '';
//  InputQuery('Lookup address','Address',address);
//  if address <> '' then
//  begin
//    WebGMapsGeocoding1.Address := address;
//
//    if WebGMapsGeocoding1.LaunchGeocoding = erOk then
//    begin
//      WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
//                            WebGMapsGeocoding1.ResultLongitude,
//                            address,'',false,true,false,false,true,0);
//      WebGMaps1.MapPanTo(WebGMapsGeocoding1.ResultLatitude,WebGMapsGeocoding1.ResultLongitude);
//    end
//    else
//    begin
//      Showmessage('Problem with the geocoding of the address !!!');
//    end;
//  end;

     try
      WebGMapsGeocoding1.Address := Address;
      if WebGMapsGeocoding1.LaunchGeocoding = erOk then
      begin
        m := WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
                            WebGMapsGeocoding1.ResultLongitude, Address);
                 m.Title :=hint;
        m.Cluster := Cluster;
        Result := m;

      end
      else
        Result := nil;
     except

     end;

//     try
//      WebGMapsGeocoding1.Address := Address;
//      if WebGMapsGeocoding1.LaunchGeocoding = erOk then
//      begin
//        m := WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
//                            WebGMapsGeocoding1.ResultLongitude, Address);
//                 m.Title :=hint;
//        m.Cluster := Cluster;
//        Result := m;
//
//      end
//      else
//        Result := nil;
//     except
//
//     end;


end;


function TstatTerm_f.AddMarker2(
    Latitude  : double;
    Longitude : double;
    Address: string;
    Hint : string;
    Cluster: TMapCluster): TMarker;
var
  m: TMarker;
begin

     try
   //   WebGMapsGeocoding1.Address := Address;
   //   if WebGMapsGeocoding1.LaunchGeocoding = erOk then
   //   begin
        m := WebGMaps1.Markers.Add( Latitude,
                                    Longitude,
                                    Address);
        m.Title   :=hint;
        m.Cluster := Cluster;
        Result    := m;

   //   end
   //   else
   //     Result := nil;
     except
          Result := nil;
     end;



end;



function TstatTerm_f.ConnectPostMDB:boolean;
var
   adoConn : string;

begin
  result:=true;
      //MsAccess ���� Post���� �����ȣ�� �ּ� ��������.
     adoConn :=   'Provider=Microsoft.Jet.OLEDB.4.0;'
                    + 'Jet OLEDB:Database Password=dlrjtdldkaghekgkgkgk;'
                    + 'Data Source=' + extractfilepath(paramstr(0))+'postDB\newpost.mdb'
                    + ';Mode=ReadWrite;'
                    + 'Persist Security Info=False';

      try
           Dm_f.AdoConnection1.Connected := false;
           if Dm_f.AdoConnection1.Connected = false then
           begin
                Dm_f.AdoConnection1.ConnectionString := adoConn;
                Dm_f.AdoConnection1.Connected := true;
           end;


      except
           on E: Exception do
           begin
                result:= false;
                application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('�˸�'));
//                Exit;
           end;
      end;


end;
function TstatTerm_f.loadFromZipcode(areacode : string):string;
  var
   adoConn : string;

begin
     result := '';
     if length(areacode) <=0 then
      exit;


             try
                 with dm_f.ADOQuery1  do
                 begin
                      close;
                      sql.Clear;
                      if length(areacode) = 5 then

                          sql.Text := 'select top 1 * from PostCode where ������ȣ=:areacode '
                      else
                        if length(areacode) = 6 then
                           sql.Text := 'select top 1 * from PostCode where �����ȣ=:areacode ';
                      parameters.paramByname('areacode').Value  := areacode;
                      open;
                      result:= fieldByName('�õ�').AsString +' '+
                          fieldByName('�ñ���').AsString +' '+
                          fieldByName('����').AsString +' '+
                          fieldByName('���θ�').AsString;
                  end;

             except

             end;

end;

procedure TstatTerm_f.loadPatWithAddress;
var
   i, j : integer;
   h_juso : string;
   chart  : string;

   aLatitude  : string;
   aLongitude : string;
   fLatitude  : double;
   fLongitude : double;

begin
      //
    InitClusters;

      i:= 0;
      j:= 0;
   //   advstringGrid1.RemoveRows(1,advstringGrid1.RowCount-1);

    Screen.Cursor := crHourGlass;
    WebGMaps1.Markers.Clear;
    WebGMaps1.MapPanTo(WebGMaps1.MapOptions.DefaultLatitude,
              WebGMaps1.MapOptions.DefaultLongitude);

    WebGMaps1.MapOptions.ZoomMap := 10;
      with dm_f.sqlTemp do
      begin
           close;
           sql.Clear;
//           sql.Text := 'select h_juso from view_gogek where h_juso <> '''' '+#10+
//                 ' and (first_day >= :first_day1 and  first_day <= :first_day2) '+#10+
//                 ' and  h_juso not like ''%(%'' ';


           sql.Text :=
//                 'select (select top 1 zipcode from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as area2,  '+#10+
//                 ' chart, (select top 1 name from ma_gogek_basic where chart=ma_jubsu.chart) as pName from ma_jubsu where  '+#10+
//                 '  (jin_day >= :first_day1 and  jin_day <= :first_day2)                                                   ';

              'select (select top 1 zipcode from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as area2,  '+#10+
              '  (select top 1 Latitude from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as Latitude,  '+#10+
              '  (select top 1 Longitude from ma_gogek_address where chart=ma_jubsu.chart and kind=''1'') as Longitude,  '+#10+
                 ' chart, (select top 1 name from ma_gogek_basic where chart=ma_jubsu.chart) as pName from ma_jubsu where  '+#10+
                 '  (jin_day >= :first_day1 and  jin_day <= :first_day2)                                                   ';


                 paramByname('first_day1').AsString:= formatDatetime('YYYY-MM-DD',dt1.Date);
                 paramByname('first_day2').AsString:= formatDatetime('YYYY-MM-DD',dt2.Date);
           open;
           if not isEmpty then
           begin
              //  advstringGrid1.RowCount := recordCount + 1;
               progressbar1.Position := 0;
               progressbar1.Min := 0;
               progressbar1.Max:=   recordCount;
                while not eof do
                begin

                    //  advstringGrid1.Cells[0, i] := fieldByname('h_juso').Text;
                    //  h_juso := fieldByname('h_juso').asString;
                  //    h_juso := loadFromZipcode( fieldByname('area2').asString);
                      h_juso :=  fieldByname('area2').asString;
                      chart  := fieldByname('pname').asString +'('+ fieldByname('chart').asString+')' ;


                      aLatitude  :=  fieldByname('Latitude').asString;
                      aLongitude :=  fieldByname('Longitude').asString;

                  if trim(aLatitude)  <> '' then
                  begin
                      fLatitude  :=  strtoFloat(aLatitude);
                      fLongitude :=  strtoFloat(aLongitude);

                     if AddMarker2(fLatitude, fLongitude, h_juso,
                          chart,  WebGMaps1.Clusters[0].Cluster) = nil then
                     begin
                          j:= j+1;
                          label6.Caption := inttostr(j);
                     end
                     else
                     begin
                           i:= i+1;
                          label5.Caption := inttostr(i);
                     end;
                  end
                  else
                  begin
                          j:= j+1;
                          label6.Caption := inttostr(j);
                  end;

                      progressbar1.Position := i+j;
                      application.ProcessMessages;
                      next;
                end;
           end;
      end;
      {1: World
5: Landmass/continent
10: City
15: Streets
20: Buildings}
         WebGMaps1.MapOptions.ZoomMap := 10;
          WebGMaps1.CreateMapCluster(WebGMaps1.Clusters[0].Cluster);

          Screen.Cursor := crDefault;

end;

procedure TstatTerm_f.btnSchClick(Sender: TObject);
var
   varStatAnal: TStatAnal;
   i:integer;
var
   adoConn : string;
begin
     //MsAccess ����   TempDB ���庰 ȯ�ڼ� ��ȯ��ȯ ���п�
     adoConn := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
               extractfilepath(paramstr(0))+'temp\tempdb\temp.mdb'+';Persist Security Info=False';

      try
           Dm_f.AdoConnection1.Connected := false;
           if Dm_f.AdoConnection1.Connected = false then
           begin
                Dm_f.AdoConnection1.ConnectionString := adoConn;
                Dm_f.AdoConnection1.Connected := true;
               // result := true;

           end
           else
           begin
              //  result := true;
           end;

                 with dm_f.ADOQuery1  do
                 begin
                      close;
                      sql.Clear;
                      sql.Text := 'delete from DocTabletemp      ';
                         execSql;
                  end;



      except
           on E: Exception do
           begin
                application.MessageBox(pChar('Failed DbConnect: ' + E.Message), pChar('�˸�'));


                Exit;
           end;
      end;



     //1.�迭�� ��񿡼� �ҷ��� ������ �־�ΰ�,
     varStatAnal:= CntStat;

     //2. �׸��忡 �Ѹ���.
     with   grdmain  do
     begin
         rowcount:=1;

         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********��ȯ/��ȯ**********' ;

         addrow;
         cells[0, rowcount - 1] := '��ü����';
         cells[1, rowcount - 1] := '��ȯ' ;
         cells[2, rowcount - 1] := '��ȯ' ;





         addrow;
         cells[0, rowcount - 1] :=  formatFloat('#,0',varStatAnal.hwanCnt[0]) + '��' ;
         cells[1, rowcount - 1] :=  formatFloat('#,0',varStatAnal.hwanCnt[1]) + '��' ;
         cells[2, rowcount - 1] :=  formatFloat('#,0',varStatAnal.hwanCnt[2]) + '��' ;


         with chart1.Series[0] do
         begin
              Clear;
              Add(varStatAnal.hwanCnt[1], '��ȯ');//,  clGreen);    //��ȯ
              Add(varStatAnal.hwanCnt[2], '��ȯ');//,  clYellow);   //��ȯ

         end;



         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********����**********' ;
         addrow;
         cells[0, rowcount - 1] := '����'  ;
         cells[1, rowcount - 1] := '����'  ;
         cells[2, rowcount - 1] := '�� �� ����'  ;
         addrow;
         cells[0, rowcount - 1] := formatfloat('#,0', varStatAnal.genderCnt[0] )+ '��' ;
         cells[1, rowcount - 1] := formatfloat('#,0', varStatAnal.genderCnt[1] )+ '��' ;
         cells[2, rowcount - 1] := formatfloat('#,0', varStatAnal.genderCnt[2] )+ '��' ;


         with chart2.Series[0] do
         begin
              Clear;
              Add(varStatAnal.genderCnt[0], '����');//,  clBlue);
              Add(varStatAnal.genderCnt[1], '����');//,  clPurple);
              Add(varStatAnal.genderCnt[2], '�˼�����');//,  clGray);

         end;




         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********���Ϻ�**********'  ;
         addrow;
         cells[0, rowcount - 1] := '��' ;
         cells[1, rowcount - 1] := '��'  ;
         cells[2, rowcount - 1] := 'ȭ' ;
         cells[3, rowcount - 1] := '��'  ;
         cells[4, rowcount - 1] := '��'  ;
         cells[5, rowcount - 1] := '��' ;
         cells[6, rowcount - 1] := '��' ;

         addrow;
         cells[0, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[0] )+ '��' ;
         cells[1, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[1] )+'��' ;
         cells[2, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[2] )+'��' ;
         cells[3, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[3] )+'��' ;
         cells[4, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[4] )+'��' ;
         cells[5, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[5] )+'��' ;
         cells[6, rowcount - 1] := formatfloat('#,0', varStatAnal.dateCnt[6] )+'��' ;

         with chart5.Series[0] do
         begin
              Clear;
              Add(varStatAnal.dateCnt[0], '��');
              Add(varStatAnal.DateCnt[1], '��');
              Add(varStatAnal.DateCnt[2], 'ȭ');
              Add(varStatAnal.DateCnt[3], '��');
              Add(varStatAnal.DateCnt[4], '��');
              Add(varStatAnal.DateCnt[5], '��');
              Add(varStatAnal.DateCnt[6], '��');

         end;




         addrow;
         MergeRowCells(rowcount - 1 , true);
         cells[0, rowcount - 1] := '**********������κ�**********';



         addrow;
         cells[0, rowcount - 1] := '��� ' ;
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         MergeCells (0, rowcount-1, 3,1);

         chart3.Series[0].Clear;
         for i:= 0 to intGubun-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;
            cells[0, rowcount - 1 ] :=   varStatAnal.gubunName[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.gubunCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

            with chart3.Series[0] do
            begin

              Add(varStatAnal.gubunCnt[i], varStatAnal.gubunName[i]);


            end;



         end;



         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********�ǻ纰**********';

         addrow;
         cells[0, rowcount - 1] := '�ǻ�';
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         MergeCells (0, rowcount-1, 3,1);
         chart4.Series[0].Clear;

         for i:= 0 to intDoc-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;
            cells[0, rowcount - 1 ] :=   varStatAnal.DocName[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

            with chart4.Series[0] do
            begin

              Add( varStatAnal.DocCnt[i], varStatAnal.DocName[i]);


            end;


         end;





         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********���̴뺰**********';

         addrow;
         cells[0, rowcount - 1] := '���̴�';
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         MergeCells (0, rowcount-1, 3,1);
         chart6.Series[0].Clear;

         for i:= 0 to intAge-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;
            cells[0, rowcount - 1 ] :=   varStatAnal.ageName[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.ageCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

            with chart6.Series[0] do
            begin

              Add( varStatAnal.ageCnt[i], varStatAnal.ageName[i]);


            end;


         end;




    {     addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********�������**********';
         addrow;
         cells[0, rowcount - 1] := '����1' ;
         cells[1, rowcount - 1] := '����2' ;

         addrow;
         cells[0, rowcount - 1]   := '~��' ;
         cells[1, rowcount - 1]   := '~��' ;
     }

         addrow;
         MergeRowCells(rowcount - 1, true);
         cells[0, rowcount - 1] := '**********�ǻ纰   ��ȯ / ��ȯ**********';

         addrow;
         cells[0, rowcount - 1] := '�ǻ�';
         cells[3, rowcount - 1] := 'ȯ�� ��' ;
         cells[4, rowcount - 1] := '��ȯ' ;
         cells[5, rowcount - 1] := '��ȯ' ;
         cells[6, rowcount - 1] := '��Ÿ' ;
       //  MergeCells (0, rowcount-1, 3,1);
        // chart4.Series[0].Clear;

         for i:= 0 to intDoc2-1 do
         begin
            addrow;
            //showmessage(varStatAnal.gubunName[i]) ;


            cells[0, rowcount - 1 ] :=   varStatAnal.DocName2[i];
            cells[3, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocCnt2[i]);
            cells[4, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocChojinCnt[i]);
            cells[5, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocJejinCnt[i]);
            cells[6, rowcount - 1 ] :=  formatfloat('#,0', varStatAnal.DocEtcCnt[i]);
            MergeCells (0, rowcount-1, 3,1);

//            with chart4.Series[0] do
//            begin
//
//              Add( varStatAnal.DocCnt[i], varStatAnal.DocName[i]);
//
//
//            end;


         end;




     end;


end;

procedure TstatTerm_f.Button1Click(Sender: TObject);
begin
loadPatWithAddressWithPOI;
end;

procedure TstatTerm_f.Button2Click(Sender: TObject);
begin
   try
       Button2.Enabled := false;
       if connectPostMDB = true then
             loadPatWithAddress
             else
             begin
               showmessage('Db Ȯ��');
             end;
   finally
       Button2.Enabled := true;
   end;
end;

procedure TstatTerm_f.Button3Click(Sender: TObject);

var
  m: TMarker;
  address : string;
  id, Latitude, Longitude : string;
begin
  address := '';
  if address <> '' then
  begin
    WebGMapsGeocoding1.Address := address;

    if WebGMapsGeocoding1.LaunchGeocoding = erOk then
    begin
      WebGMaps1.Markers.Add(WebGMapsGeocoding1.ResultLatitude,
                            WebGMapsGeocoding1.ResultLongitude,
                            address,'',false,true,false,false,true,0);
      WebGMaps1.MapPanTo(WebGMapsGeocoding1.ResultLatitude,WebGMapsGeocoding1.ResultLongitude);
    end
    else
    begin
      Showmessage('Problem with the geocoding of the address !!!');
    end;
  end;

      with dm_f.sqlTemp do
      begin
           close;
           sql.Clear;
           sql.Text :=
                 ' select * from ma_gogek_address where  kind=''1''  '  +#10+
                 ' and latitude is null and reg_day >''2019-03-04''  ';
           open;
           if not isEmpty then
           begin
               i:=0;
               while not eof do
               begin
                 address  := fieldByName('juso').AsString;
                 id      := fieldByName('id').AsString;

                  if address <> '' then
                  begin
                    WebGMapsGeocoding1.Address := address;

                    if WebGMapsGeocoding1.LaunchGeocoding = erOk then
                    begin

                        Latitude  :=floatToStr( WebGMapsGeocoding1.ResultLatitude);
                        Longitude := floatToStr( WebGMapsGeocoding1.ResultLongitude);
                        updateGogekAddress(id, Latitude, Longitude );

                    end;
                  end;
                 inc(i);
                 application.ProcessMessages;
                 label11.Caption := inttostr(i);
                 next;
               end;
           end;
      end;

end;


procedure TstatTerm_f.FormShow(Sender: TObject);
begin
    caption:='�Ⱓ�� ȯ�� ���� ����';
    comboset;
end;

procedure TstatTerm_f.cbMonthChange(Sender: TObject);
begin
          dt1.date :=  dateBeginOfMonth( strtodate(cbyear.Text + '-' + cbMonth.Text + '-01') );
          dt2.date :=  dateEndOfMonth( strtodate(cbyear.Text + '-' + cbMonth.Text + '-01') );

end;


procedure TstatTerm_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      acTion := CaFree;
end;

procedure TstatTerm_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
      Dm_f.AdoConnection1.Connected := false;
end;

procedure TstatTerm_f.FormCreate(Sender: TObject);
begin


     WebGMaps1.APIKey          :=  configValue.varGoogleMapApiKey ;
     WebGMapsGeocoding1.APIKey :=  configValue.varGoogleMapApiKey ;

     //AIzaSyAW509glli1hVJdSfFvOfVBpAdgrq78j9Y


     //���� Seoul, South Korea
     WebGMaps1.MapOptions.DefaultLatitude  :=      37.5326  ;
     WebGMaps1.MapOptions.DefaultLongitude :=      127.024612;


end;

procedure TstatTerm_f.FormDestroy(Sender: TObject);
begin
       statTerm_f := nil;
end;

procedure TstatTerm_f.AdvGlowButton1Click(Sender: TObject);
begin


 //   savedialog1.fileName:= '�Ⱓ��������' + '_' +formatdatetime('YYYYMM',datetimepicker1.date) +'��' +'.xls';
{     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;
 }
end;



procedure TstatTerm_f.loadPatWithAddressWithPOI;
var
   h_juso : string;
   chart  : string;
begin


    InitClusters;


    Screen.Cursor := crHourGlass;
    WebGMaps1.Markers.Clear;
    WebGMaps1.MapPanTo(WebGMaps1.MapOptions.DefaultLatitude,
              WebGMaps1.MapOptions.DefaultLongitude);

    WebGMaps1.MapOptions.ZoomMap := 10;
     WebGMaps1.Markers.LoadFromPOI('E:\_Projects\MEDIRO\Win32\Release\poi\0701.csv');
   //    if AddMarker(h_juso,  chart,  WebGMaps1.Clusters[0].Cluster) = nil then
         {1: World
          5: Landmass/continent
          10: City
          15: Streets
          20: Buildings}
    WebGMaps1.MapOptions.ZoomMap := 10;
    WebGMaps1.CreateMapCluster(WebGMaps1.Clusters[0].Cluster);

    Screen.Cursor := crDefault;

end;


end.
