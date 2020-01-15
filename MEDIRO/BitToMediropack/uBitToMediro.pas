unit uBitToMediro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  AdvSpin, AdvEdit, Vcl.ComCtrls,
  uni, db;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Timer1: TTimer;
    Memo2: TMemo;
    Timer2: TTimer;
    Panel1: TPanel;
    edtInterval: TAdvEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    edtPickCount: TAdvEdit;
    btnStop: TButton;
    Label3: TLabel;
    Timer3: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    aTimer : integer;
    iTopCount : string;
    procedure insert_OrderInf_temp(d1: string=''; d2 : string='');
    function ConnectBitServer : boolean;
    procedure insert_OrderInf(d1: string=''; d2 : string='');
    procedure Delete_OrderInf_temp(d1: string=''; d2 : string='');
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses uConfig, uFunctions, uDm;


{$R *.dfm}

procedure TForm1.Delete_OrderInf_temp(d1: string=''; d2 : string='');
const
    delQry = ' delete from [mediroPACK].[dbo].[orderInf_temp] where order_day >= :d1 and  order_day >= :d2';
begin
  try
   with DM_f.sqlTemp do
   begin
           close;
           sql.Clear;
           sql.text := delQry;
           paramByName('d1').AsString := d1;
           paramByName('d2').AsString := d2;

           execsql;
   end;
  except
         on E: Exception do
          begin
               memo1.Lines.Add('Delete Fail.==>'+ E.Message)

          end;

  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     aTimer := 0;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
        caption:='BitTOMediro CVIII Worklist';
end;

procedure TForm1.insert_OrderInf_temp(d1: string=''; d2 : string='');
const

  selQry_Select =
        '  select     ';

  selQry =
        ' ltrim(odrOcmNum+REPLICATE(0, 5 - LEN(OdrSeq)) + CONVERT(VARCHAR,OdrSeq)) as orderid ,                                                 '+#10+
        ' ltrim(odrOcmNum+REPLICATE(0, 5 - LEN(OdrSeq)) + CONVERT(VARCHAR,OdrSeq)) as accessionID ,                                             '+#10+
        ' ltrim(odrOcmNum+REPLICATE(0, 5 - LEN(OdrSeq)) + CONVERT(VARCHAR,OdrSeq)) as jin_sid ,                                                 '+#10+
        ' ltrim(odrChtNum) as chart,                                                                                                            '+#10+
        '   LEFT((select pbsPatNam from  PbsInf where  pbsChtNum=odrChtNum) , isnull( nullif(CHARINDEX('';'', (select pbsPatNam from  PbsInf    '+#10+
        '       where  pbsChtNum=odrChtNum) ), 0) -1, 20) ) as hname ,                                                                          '+#10+
        '   RIGHT((select pbsPatNam from  PbsInf where  pbsChtNum=odrChtNum) , isnull( len((select pbsPatNam from  PbsInf                       '+#10+
        '       where  pbsChtNum=odrChtNum) ) - nullif(CHARINDEX('';'',                                                                         '+#10+
        ' 	     (select pbsPatNam from  PbsInf where  pbsChtNum=odrChtNum)), 0), 50) ) as ename,                                               '+#10+
        '   (select PbsBirDte from PbsInf  where  pbsChtNum=odrChtNum) as birth,                                                                '+#10+
        '   (select case when PbsSexTyp is null then ''O''  else PbsSexTyp end from PbsInf  where  pbsChtNum=odrChtNum) as gender,              '+#10+
        '   DATEDIFF(mm,                                                                                                                        '+#10+
        '     (select (case when isDate(PbsBirDte) = 1 then PbsBirDte else getdate() end)  from PbsInf  where  pbsChtNum=odrChtNum)             '+#10+
        '     , getdate())  /  12 as Age,                                                                                                       '+#10+
        ' OdrCodNam as su_kor_name,                                                                                                             '+#10+
        ' OdrCodNam as su_eng_name,                                                                                                             '+#10+
        ' odrDtrCod as Doctor,                                                                                                                  '+#10+
        ' odrDepCod as sector,                                                                                                                  '+#10+
        ' substring(OdrDtm,1,8) as order_day,                                                                                                   '+#10+
        ' substring(OdrDtm,9,4) + ''00'' as order_time,                                                                                         '+#10+
        ' odrCod as su_key,                                                                                                                     '+#10+
        ' odrQty as jin_ilsu,                                                                                                                   '+#10+
        ' ''000000'' as reserve_time,                                                                                                           '+#10+
        ' ''0'' as [emergency],                                                                                                                 '+#10+
        ' ''1'' as sect,                                                                                                                        '+#10+
        '   odrTrnDep as modality ,                                                                                                             '+#10+
        '  ltrim( odrOcmNum + REPLICATE(0, 5 - LEN(OdrSeq)) + CONVERT(VARCHAR,OdrSeq) )  as studyID,                                            '+#10+
        '   isnull( ( select top 1 oicelccod from OicInf where oicelccod like ''CH%''  and OicOcmNum =  odrOcmNum) , '''') as referHospCode     '+#10+
        ' from [drBITPACK].[dbo].[odrInf]                                                                                                                    '+#10+
        ' where   OdrOspTyp <>''I''   and OdrtrnDep <>''''                                                                                      ';

    selQryWhher = '  and   (substring(OdrDtm,1,8) >= :d1  and  substring(OdrDtm,1,8) <= :d2 )  ';

    selQryOrder =  ' order by   odrdtm desc                                                                                                                ';



 insQry =    //mediroPACK.dbo.orderinf_temp
' INSERT INTO [mediroPACK].[dbo].[orderInf_temp]             '  +#10+
'            ([orderID]                         '    +#10+
'            ,[accessionID]                     '   +#10+
'            ,[jin_sid]                         '   +#10+
'            ,[chart]                           '   +#10+
'            ,[hname]                           '   +#10+
'            ,[ename]                           '   +#10+
'            ,[birth]                           '   +#10+
'            ,[gender]                          '   +#10+
'            ,[age]                             '   +#10+
'            ,[su_kor_name]                     '   +#10+
'            ,[su_eng_name]                     '   +#10+
'            ,[doctor]                          '   +#10+
'            ,[sector]                          '   +#10+
'            ,[order_day]                       '   +#10+
'            ,[order_time]                      '   +#10+
'            ,[su_key]                          '   +#10+
'            ,[jin_ilsu]                        '   +#10+
'            ,[reserve_time]                    '   +#10+
'            ,[emergency]                       '   +#10+
'            ,[sect]                            '   +#10+
'            ,[modality]                        '   +#10+
'            ,[studyID]                         '   +#10+
'            ,[ReferHospCode]                   '   +#10+
'            ,[iKind])                          '   +#10+
'      VALUES                                   '   +#10+
'            (:orderID        '   +#10+
'            ,:accessionID    '   +#10+
'            ,:jin_sid        '   +#10+
'            ,:chart          '   +#10+
'            ,:hname          '   +#10+
'            ,:ename          '   +#10+
'            ,:birth          '   +#10+
'            ,:gender         '   +#10+
'            ,:age            '   +#10+
'            ,:su_kor_name    '   +#10+
'            ,:su_eng_name    '   +#10+
'            ,:doctor         '   +#10+
'            ,:sector         '   +#10+
'            ,:order_day      '   +#10+
'            ,:order_time     '   +#10+
'            ,:su_key         '   +#10+
'            ,:jin_ilsu       '   +#10+
'            ,:reserve_time   '   +#10+
'            ,:emergency      '   +#10+
'            ,:sect           '   +#10+
'            ,:modality       '   +#10+
'            ,:studyID        '   +#10+
'            ,:ReferHospCode  '   +#10+
'            ,:iKind )        '  ;





 updQry =    //mediroPACK.dbo.orderinf_temp
' update  [mediroPACK].[dbo].[orderInf_temp]  set           '  +#10+
'            [accessionID]        = :accessionID                 '   +#10+
'            ,[jin_sid]            = :jin_sid                     '   +#10+
'            ,[chart]              = :chart                       '   +#10+
'            ,[hname]              = :hname                       '   +#10+
'            ,[ename]              = :ename                       '   +#10+
'            ,[birth]              = :birth                       '   +#10+
'            ,[gender]             = :gender                      '   +#10+
'            ,[age]                = :age                         '   +#10+
'            ,[su_kor_name]        = :su_kor_name                 '   +#10+
'            ,[su_eng_name]        = :su_eng_name                 '   +#10+
'            ,[doctor]             = :doctor                      '   +#10+
'            ,[sector]             = :sector                      '   +#10+
'            ,[order_day]          = :order_day                   '   +#10+
'            ,[order_time]         = :order_time                  '   +#10+
'            ,[su_key]             = :su_key                      '   +#10+
'            ,[jin_ilsu]           = :jin_ilsu                    '   +#10+
'            ,[reserve_time]       = :reserve_time                '   +#10+
'            ,[emergency]          = :emergency                   '   +#10+
'            ,[sect]               = :sect                        '   +#10+
'            ,[modality]           = :modality                    '   +#10+
'            ,[studyID]            = :studyID                     '   +#10+
'            ,[ReferHospCode]      = :ReferHospCode               '   +#10+
'            ,[iKind]              = :iKind                       '   +#10+
'    where [orderID]            = :orderID                        '  ;

var


      orderID
     ,accessionID
     ,jin_sid
     ,chart
     ,hname
     ,ename
     ,birth
     ,gender
     ,age
     ,su_kor_name
     ,su_eng_name
     ,doctor
     ,sector
     ,order_day
     ,order_time
     ,su_key
     ,jin_ilsu
     ,reserve_time
     ,emergency
     ,sect
     ,modality
     ,studyID
     ,ReferHospCode, iKind  : string;

      tempQuery: TuniQuery;
      tempQuery2: TuniQuery;
      selQry_Top: string;

      i: integer;
begin
   i:= 0;
   selQry_Top :=
        '   top '+  iTopCount;
   //1. 마지막 데이터를 가져온다
   //2. orderInf_temp에  orderID가 있는지 확인한다.
   //3. 없으면 orderInf_temp에 insert시킨다.




      try

         try
          tempQuery := TuniQuery.Create(self);
          tempQuery.Connection  := Dm_f.UniConnectionBIT;


          tempQuery2 := TuniQuery.Create(self);
          tempQuery2.Connection := Dm_f.UniConnectionBIT;


              with tempQuery do
               begin
                       close;
                       sql.Clear;


                       if d1 <> '' then
                       begin

                            sql.text := selQry_Select + selQry;

                            sql.text :=  sql.text + selQryWhher;
                            paramByName('d1').AsString := d1;
                            paramByName('d2').AsString := d2;

                       end
                       else
                       begin
                           sql.text :=selQry_Select + selQry_Top  + selQry;
                       end;


                       sql.text := sql.text +  selQryOrder ;

                       open;
                       first;



                       while not eof do
                       begin


                             orderID        := fieldbyname('orderID').AsString;
                             accessionID    := fieldbyname('accessionID').AsString;
                             jin_sid        := fieldbyname('jin_sid').AsString;
                             chart          := fieldbyname('chart').AsString;
                             hname          := fieldbyname('hname').AsString;
                             ename          := fieldbyname('ename').AsString;
                             birth          := fieldbyname('birth').AsString;
                             gender         := fieldbyname('gender').AsString;
                             age            := fieldbyname('age').AsString;
                             su_kor_name    := fieldbyname('su_kor_name').AsString;
                             su_eng_name    := fieldbyname('su_eng_name').AsString;
                             doctor         := fieldbyname('doctor').AsString;
                             sector         := fieldbyname('sector').AsString;
                             order_day      := fieldbyname('order_day').AsString;
                             order_time     := fieldbyname('order_time').AsString;
                             su_key         := fieldbyname('su_key').AsString;
                             jin_ilsu       := fieldbyname('jin_ilsu').AsString;
                             reserve_time   := fieldbyname('reserve_time').AsString;
                             emergency      := fieldbyname('emergency').AsString;
                             sect           := fieldbyname('sect').AsString;
                             modality       := fieldbyname('modality').AsString;
                             studyID        := fieldbyname('studyID').AsString;
                             ReferHospCode   := fieldbyname('ReferHospCode').AsString;

                             i:= i+1;

                             with tempQuery2 do
                             begin

                                //     memo1.Lines.Add(inttostr(i)+ ' '+ formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ':select OrderInf_temp: OrderID ==>' +orderID)  ;

                                     close;
                                     sql.Clear;
                                     sql.text := 'select * from mediroPACK.dbo.orderInf_temp where orderID = :orderID';
                                     paramByName('orderID').AsString := orderID;


      //                               if d1 <> '' then
      //                               begin
      //
      //                                    sql.text :=  sql.text + selQryWhher;
      //                                    paramByName('d1').AsString := d1;
      //                                    paramByName('d2').AsString := d2;
      //
      //                               end;

                                     open;

                                     if isEmpty then
                                     begin
                                           close;
                                           sql.Clear;
                                           sql.Text := insQry;
                                  //         memo1.Lines.Add(inttostr(i)+ ' '+ formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ': insert '+ orderID) ;
                                     end
                                     else
                                     begin
                                           close;
                                           sql.Clear;
                                           sql.Text :=  updQry;
                                    //        memo1.Lines.Add(inttostr(i)+ ' '+ formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ': update '+ orderID) ;
                                     end;

                                           paramByName('orderID'     ).AsString  := orderID     ;
                                           paramByName('accessionID' ).AsString  := accessionID ;
                                           paramByName('jin_sid'     ).AsString  := jin_sid     ;
                                           paramByName('chart'       ).AsString  := chart       ;
                                           paramByName('hname'       ).AsString  := hname       ;
                                           paramByName('ename'       ).AsString  := ename       ;
                                           paramByName('birth'       ).AsString  := birth       ;
                                           paramByName('gender'      ).AsString  := gender      ;
                                           paramByName('age'         ).AsString  := age         ;
                                           paramByName('su_kor_name' ).AsString  := su_kor_name ;
                                           paramByName('su_eng_name' ).AsString  := su_eng_name ;
                                           paramByName('doctor'      ).AsString  := doctor      ;
                                           paramByName('sector'      ).AsString  := sector      ;
                                           paramByName('order_day'   ).AsString  := order_day   ;
                                           paramByName('order_time'  ).AsString  := order_time  ;
                                           paramByName('su_key'      ).AsString  := su_key      ;
                                           paramByName('jin_ilsu'    ).AsString  := jin_ilsu    ;
                                           paramByName('reserve_time').AsString  := reserve_time;
                                           paramByName('emergency'   ).AsString  := emergency   ;
                                           paramByName('sect'        ).AsString  := sect        ;
                                           paramByName('modality'    ).AsString  := modality    ;
                                           paramByName('studyID'     ).AsString  := studyID     ;
                                           paramByName('ReferHospCode').AsString := ReferHospCode;
                                           paramByName('iKind'       ).AsString := 'B';
                                           execsql;



                             end;

                             next;
                       end;
               end;
         finally

            tempQuery.Free;
            tempQuery2.Free;

         end;

      except
               on E: Exception do
                begin
                     memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ' :Insert_OrderInf_temp Fail.==>'+ E.Message)

                end;


      end;
end;

procedure TForm1.insert_OrderInf(d1: string=''; d2 : string='');
const

  selQry_Select =
        '  select     ';
//  selQry_top =
//        '   top  '   +  iTopCount  ;

//  selQry =
//        '    * from [mediroPACK].[dbo].[orderInf_temp] where  isSaved=''N''   ';
  selQry =
        '    * from [mediroPACK].[dbo].[orderInf_temp] ';

  selQry_Where = ' where  (order_day >= :d1 and order_day <= :d2) ';


 insQry =    //mediroPACK.dbo.orderinf_temp
' INSERT INTO [mediroPACK].[dbo].[orderInf]             '  +#10+
'            ([orderID]                         '    +#10+
'            ,[accessionID]                     '   +#10+
'            ,[jin_sid]                         '   +#10+
'            ,[chart]                           '   +#10+
'            ,[hname]                           '   +#10+
'            ,[ename]                           '   +#10+
'            ,[birth]                           '   +#10+
'            ,[gender]                          '   +#10+
'            ,[age]                             '   +#10+
'            ,[su_kor_name]                     '   +#10+
'            ,[su_eng_name]                     '   +#10+
'            ,[doctor]                          '   +#10+
'            ,[sector]                          '   +#10+
'            ,[order_day]                       '   +#10+
'            ,[order_time]                      '   +#10+
'            ,[su_key]                          '   +#10+
'            ,[jin_ilsu]                        '   +#10+
'            ,[reserve_time]                    '   +#10+
'            ,[emergency]                       '   +#10+
'            ,[sect]                            '   +#10+
'            ,[modality]                        '   +#10+
'            ,[studyID]                         '   +#10+
'            ,[ReferHospCode]                   '   +#10+
'            ,[iKind])                          '   +#10+
'      VALUES                                   '   +#10+
'            (:orderID        '   +#10+
'            ,:accessionID    '   +#10+
'            ,:jin_sid        '   +#10+
'            ,:chart          '   +#10+
'            ,:hname          '   +#10+
'            ,:ename          '   +#10+
'            ,:birth          '   +#10+
'            ,:gender         '   +#10+
'            ,:age            '   +#10+
'            ,:su_kor_name    '   +#10+
'            ,:su_eng_name    '   +#10+
'            ,:doctor         '   +#10+
'            ,:sector         '   +#10+
'            ,:order_day      '   +#10+
'            ,:order_time     '   +#10+
'            ,:su_key         '   +#10+
'            ,:jin_ilsu       '   +#10+
'            ,:reserve_time   '   +#10+
'            ,:emergency      '   +#10+
'            ,:sect           '   +#10+
'            ,:modality       '   +#10+
'            ,:studyID        '   +#10+
'            ,:ReferHospCode  '   +#10+
'            ,:iKind )        '  ;



 updQry =    //mediroPACK.dbo.orderinf_temp
' update  [mediroPACK].[dbo].[orderInf]  set           '  +#10+
'            [accessionID]        = :accessionID                 '   +#10+
'            ,[jin_sid]            = :jin_sid                     '   +#10+
'            ,[chart]              = :chart                       '   +#10+
'            ,[hname]              = :hname                       '   +#10+
'            ,[ename]              = :ename                       '   +#10+
'            ,[birth]              = :birth                       '   +#10+
'            ,[gender]             = :gender                      '   +#10+
'            ,[age]                = :age                         '   +#10+
'            ,[su_kor_name]        = :su_kor_name                 '   +#10+
'            ,[su_eng_name]        = :su_eng_name                 '   +#10+
'            ,[doctor]             = :doctor                      '   +#10+
'            ,[sector]             = :sector                      '   +#10+
'            ,[order_day]          = :order_day                   '   +#10+
'            ,[order_time]         = :order_time                  '   +#10+
'            ,[su_key]             = :su_key                      '   +#10+
'            ,[jin_ilsu]           = :jin_ilsu                    '   +#10+
'            ,[reserve_time]       = :reserve_time                '   +#10+
'            ,[emergency]          = :emergency                   '   +#10+
'            ,[sect]               = :sect                        '   +#10+
'            ,[modality]           = :modality                    '   +#10+
'            ,[studyID]            = :studyID                     '   +#10+
'            ,[ReferHospCode]      = :ReferHospCode               '   +#10+
'            ,[iKind]              = :iKind                       '   +#10+
'    where [orderID]            = :orderID                        '  ;


var


      orderID
     ,accessionID
     ,jin_sid
     ,chart
     ,hname
     ,ename
     ,birth
     ,gender
     ,age
     ,su_kor_name
     ,su_eng_name
     ,doctor
     ,sector
     ,order_day
     ,order_time
     ,su_key
     ,jin_ilsu
     ,reserve_time
     ,emergency
     ,sect
     ,modality
     ,studyID
     ,ReferHospCode, iKind  : string;


      tempQuery: TuniQuery;
      tempQuery2: TuniQuery;




  selQry_Top: string;

  i : integer;

begin


   i:= 0;

   selQry_Top :=
        '   top '+  iTopCount;


    //1. 마지막 데이터를 가져온다
   //2. orderInf_temp에  orderID가 있는지 확인한다.
   //3. 없으면 orderInf_temp에 insert시킨다.

      try


         try
          tempQuery := TuniQuery.Create(self);
          tempQuery.Connection  := Dm_f.UniConnectionBIT;


          tempQuery2 := TuniQuery.Create(self);
          tempQuery2.Connection := Dm_f.UniConnectionBIT;


             with tempQuery do
             begin
                     close;
                     sql.Clear;


                     if d1 <> '' then
                     begin
                          sql.text := selQry_Select  + selQry + selQry_Where;

                          paramByName('d1').AsString := d1;
                          paramByName('d2').AsString := d2;

                     end
                     else
                     begin
                         sql.text :=selQry_Select  + selQry_Top + selQry;
                     end;

                     open;
                     first;

                     while not eof  do
                     begin
                             orderID        := fieldbyname('orderID').AsString;
                             accessionID    := fieldbyname('accessionID').AsString;
                             jin_sid        := fieldbyname('jin_sid').AsString;
                             chart          := fieldbyname('chart').AsString;
                             hname          := fieldbyname('hname').AsString;
                             ename          := fieldbyname('ename').AsString;
                             birth          := fieldbyname('birth').AsString;
                             gender         := fieldbyname('gender').AsString;
                             age            := fieldbyname('age').AsString;
                             su_kor_name    := fieldbyname('su_kor_name').AsString;
                             su_eng_name    := fieldbyname('su_eng_name').AsString;
                             doctor         := fieldbyname('doctor').AsString;
                             sector         := fieldbyname('sector').AsString;
                             order_day      := fieldbyname('order_day').AsString;
                             order_time     := fieldbyname('order_time').AsString;
                             su_key         := fieldbyname('su_key').AsString;
                             jin_ilsu       := fieldbyname('jin_ilsu').AsString;
                             reserve_time   := fieldbyname('reserve_time').AsString;
                             emergency      := fieldbyname('emergency').AsString;
                             sect           := fieldbyname('sect').AsString;
                             modality       := fieldbyname('modality').AsString;
                             studyID        := fieldbyname('studyID').AsString;
                             ReferHospCode   := fieldbyname('ReferHospCode').AsString;



                             i:= i+1;

                             with tempQuery2 do
                             begin

                                   //  memo1.Lines.Add(inttostr(i)+ ' '+ formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ':select OrderInf: OrderID ==>' +orderID)  ;

                                     close;
                                     sql.Clear;
                                     sql.text := 'select * from mediroPACK.dbo.orderInf where orderID = :orderID';
                                     paramByName('orderID').AsString := orderID;
                                     open;
                                     last;

                                   if isEmpty then
                                   begin
                                         close;
                                         sql.Clear;
                                         sql.Text := insQry;
                                     //     memo1.Lines.Add(inttostr(i)+ ' '+ formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ' :insert '+ orderID) ;
                                   end
                                   else
                                   begin
                                         close;
                                         sql.Clear;
                                         sql.Text :=  updQry;
                                     //     memo1.Lines.Add(inttostr(i)+ ' '+ formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ' :update '+ orderID) ;
                                   end;

                                           paramByName('orderID'     ).AsString  := orderID     ;
                                           paramByName('accessionID' ).AsString  := accessionID ;
                                           paramByName('jin_sid'     ).AsString  := jin_sid     ;
                                           paramByName('chart'       ).AsString  := chart       ;
                                           paramByName('hname'       ).AsString  := hname       ;
                                           paramByName('ename'       ).AsString  := ename       ;
                                           paramByName('birth'       ).AsString  := birth       ;
                                           paramByName('gender'      ).AsString  := gender      ;
                                           paramByName('age'         ).AsString  := age         ;
                                           paramByName('su_kor_name' ).AsString  := su_kor_name ;
                                           paramByName('su_eng_name' ).AsString  := su_eng_name ;
                                           paramByName('doctor'      ).AsString  := doctor      ;
                                           paramByName('sector'      ).AsString  := sector      ;
                                           paramByName('order_day'   ).AsString  := order_day   ;
                                           paramByName('order_time'  ).AsString  := order_time  ;
                                           paramByName('su_key'      ).AsString  := su_key      ;
                                           paramByName('jin_ilsu'    ).AsString  := jin_ilsu    ;
                                           paramByName('reserve_time').AsString  := reserve_time;
                                           paramByName('emergency'   ).AsString  := emergency   ;
                                           paramByName('sect'        ).AsString  := sect        ;
                                           paramByName('modality'    ).AsString  := modality    ;
                                           paramByName('studyID'     ).AsString  := studyID     ;
                                           paramByName('ReferHospCode').AsString := ReferHospCode;
                                           paramByName('iKind'       ).AsString := 'B';
                                           execsql;



                                           close;
                                           sql.Clear;
                                           sql.Text := 'update [mediroPACK].[dbo].[orderInf_temp]  set  isSaved=''Y''  where orderID =:orderID and  isSaved=''N'' ';
                                           paramByName('orderID'     ).AsString  := orderID     ;
                                           execsql;

                             end;

                             next;
                     end;
             end;
         finally

            tempQuery.Free;
            tempQuery2.Free;

         end;
      except
                      on E: Exception do
                      begin
                           memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss.zzz', now) + ': insert_OrderInf Fail.==>'+ E.Message)

                      end;

      end;
end;




procedure TForm1.Timer1Timer(Sender: TObject);
var
     timer2interval : integer;
begin
    memo1.Lines.clear;
    timer1.Enabled := false;
    application.ProcessMessages;

    label3.caption:= '0';


    if  edtInterval.IntValue <= 0  then
        edtInterval.IntValue := 5;

    if  edtPickCount.IntValue <= 0  then
        edtPickCount.IntValue := 200;

    timer2interval := edtInterval.IntValue * 1000 ;

    iTopCount := inttostr( edtPickCount.IntValue);


    memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+ 'Now Try Connecting Database.') ;

    if ConnectBitServer = true then
    begin
              memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Connected Database.');

              timer2.Interval :=  timer2interval;

              timer2.Enabled := true;
              memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Ready pick data.');

    end
    else
    begin
          memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Connect Database Fail.') ;
    end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin

       memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Try Pick Data for insert_OrderInf_temp.')  ;

       insert_OrderInf_temp(formatdatetime('YYYYMMDD',now) ,
                        formatdatetime('YYYYMMDD',now) );

       memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Try Pick Data for insert_OrderInf.')  ;

       insert_OrderInf(formatdatetime('YYYYMMDD',now) ,
                        formatdatetime('YYYYMMDD',now) );


       aTimer := 0;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var
    i : integer;
    j : integer;
begin
       application.ProcessMessages;
       aTimer := aTimer +1;


       j:= aTimer mod 50;

       label3.Caption :=  inttostr(j);
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin

     if btnStop.Tag = 0 then
     begin
        btnStop.Tag := 1;
        btnStop.Caption := 'Start';
        timer2.Enabled := false;
     end
     else
     begin
         btnStop.Tag := 0;
         btnStop.Caption := 'Stop';
         timer2.Enabled := true;
     end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin



       timer2.Enabled := false;

       Delete_OrderInf_temp( formatdatetime('YYYYMMDD',datetimepicker1.Date) ,
                             formatdatetime('YYYYMMDD',datetimepicker2.Date) );

       memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Try Pick Data for insert_OrderInf_temp.' + formatdatetime('YYYYMMDD',datetimepicker1.Date) +'~'+formatdatetime('YYYYMMDD',datetimepicker1.Date))  ;
       insert_OrderInf_temp( formatdatetime('YYYYMMDD',datetimepicker1.Date) ,
                             formatdatetime('YYYYMMDD',datetimepicker2.Date) );

       memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Try Pick Data for insert_OrderInf.' + formatdatetime('YYYYMMDD',datetimepicker1.Date) +'~'+formatdatetime('YYYYMMDD',datetimepicker1.Date))  ;




       insert_OrderInf( formatdatetime('YYYYMMDD',datetimepicker1.Date) ,
                        formatdatetime('YYYYMMDD',datetimepicker2.Date) );



       timer2.Enabled := true;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin


       timer2.Enabled := false;


       datetimepicker1.Date := now;
       datetimepicker2.Date := now;


       Delete_OrderInf_temp( formatdatetime('YYYYMMDD',datetimepicker1.Date) ,
                             formatdatetime('YYYYMMDD',datetimepicker2.Date) );

       memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Try Pick Data for insert_OrderInf_temp.' + formatdatetime('YYYYMMDD',datetimepicker1.Date) +'~'+formatdatetime('YYYYMMDD',datetimepicker1.Date))  ;
       insert_OrderInf_temp( formatdatetime('YYYYMMDD',datetimepicker1.Date) ,
                             formatdatetime('YYYYMMDD',datetimepicker2.Date) );

       memo1.Lines.Add(formatdatetime('yyyy/mm/dd hh:nn:ss',now)+':'+'Try Pick Data for insert_OrderInf.' + formatdatetime('YYYYMMDD',datetimepicker1.Date) +'~'+formatdatetime('YYYYMMDD',datetimepicker1.Date))  ;




       insert_OrderInf( formatdatetime('YYYYMMDD',datetimepicker1.Date) ,
                        formatdatetime('YYYYMMDD',datetimepicker2.Date) );



       timer2.Enabled := true;

end;

function TForm1.ConnectBitServer : boolean;
begin

  result:= false;
  try
     if loadini = true then
     begin
        configvalue.LoadGlobalData_ini;  //ini정보를 열자.


     if dm_f.ConnectDatabase(configvalue.varDbip,
          configvalue.varDbname,
          configvalue.varDbuser, configvalue.varDbpass,
          configvalue.varDbProtocol,
                          configvalue.varDbPort) = true then
     begin

          configvalue.LoadGlobalData_db;

       //tableUpdate;



         {$IFNDEF DEBUG}
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
         {$ENDIF DEBUG}

          result:= true;

     end
     else
     begin
         showmessage('Required environment set.');
         application.Terminate;
     end;

   end
   else
   begin
      showmessage('Required environment set.');
      application.Terminate;
   end;


  except
         on E: Exception do
          begin
               result:= false;
               showmessage(E.Message + 'Required environment set.');
          end;
  end;


end;

end.


