unit uAccVarible;

interface
uses

     sysutils ;

type
     TDayOfWeek =
          (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday);


procedure LoadConstValue;

var

     varSqlTextCount : string;
     varSqlText_where_Local:string;
     varSqlText_where_Term1:string;
     varSqlText_where_Term:string;
     varSqlText_where_Term3:string;
     varSqlText_where_bohum :string;
     varSqlText_where_bibo :string;
     varSqlText_orderBy:string;
     varSqlText_where_team : string;
     varSqlText_where_Kind :string;
     varSqlText_hangmok : string;
     varSqlText_hangmok5 : string;
     varSqlText_hangmok_kind : string;
     varSqlText0: string;
     varSqlText_all: string;
     varSqlText_distinct: string;
     varSqlText_except_Ortho1 : string;
     varSqlText_except_Ortho2 : string;
     varSqlText_except_Ortho3 : string;
     varSqlText_except_Ortho_term : string;

     varSqlText_hangmok_kind_sunapBibo : string;

     varSqlText2: string;
     varSqlText3: string;

     varSqlText_where_ilban : string;


implementation
//uses  system.IOUtils, dateutils;




procedure LoadConstValue;
begin


//     varSqlText_All :=
//                    '   SELECT   s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun,                                                     '   +
//                    '   s.hyunreceipt, s.tong, s.hyunreceipt_tong, s.tong2,   s.sunapEk as sGeumek  ,s.card, s.bohum , s.bonin1,  s.hyunyoungsu  ' +
//                    '   FROM ma_sunap s INNER JOIN   view_gogek i ON i.chart = s.chart                                                           ';


     varSqlText_All :=
                    '   SELECT   s.jin_Day, s.team, s.chart, i.name, i.jumin, i.k_number, s.cash,     '   +
                    '   s.hyunreceipt, s.tong, s.tongreceipt, s.tong2,   s.sunapak as sGeumek,   '   +
                    '   s.card, s.bonin , s.bonin1                                          ' +
                    '   FROM jinryo_p s INNER JOIN   view_gogek i ON i.chart = s.chart         ';


     varSqlText_distinct :=
                    '   SELECT distinct  s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun,                                            '   +
                    '   s.hyunreceipt, s.tong, s.hyunreceipt_tong, s.tong2,   s.sunapEk as sGeumek  ,s.card, s.bohum , s.bonin1,  s.hyunyoungsu  ' +
                    '   FROM ma_sunap s INNER JOIN   view_gogek i ON i.chart = s.chart                                                           ';

     varSqlText_except_Ortho1 :=          ' SELECT   s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun,    ' + #10#13 +
          ' s.hyunreceipt, s.tong, s.hyunreceipt_tong, s.tong2,   ' + #10#13 +
          '  s.sunapEk -   ' + #10#13 +
          ' ( case when  (select top 1 geumek from ma_sunap_bibo where chart=s.chart and sunapDate= s.sDay and sunapid <> '''' and  hangmok= ''교정'' ) > 0 then   ' ;

     varSqlText_except_Ortho3 :=          ' SELECT   s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun,    ' + #10#13 +
          ' s.hyunreceipt, s.tong, s.hyunreceipt_tong, s.tong2,   ' + #10#13 +
          '  s.sunapEk - etc -  ' + #10#13 +
          ' ( case when  (select top 1 geumek from ma_sunap_bibo where chart=s.chart and sunapDate= s.sDay and sunapid <> '''' and  hangmok= ''교정'' ) > 0 then   ' ;

     varSqlText_except_Ortho2 :=          '   (select top 1 geumek from ma_sunap_bibo where chart=s.chart and sunapDate= s.sDay and sunapid <> '''' and  hangmok= ''교정'' ) else  0 end)          ' + #10#13 +
          '  as Sgeumek        ' + #10#13 +
          '  ,s.card, s.bohum , s.bonin1,  s.hyunyoungsu     ' + #10#13 +
          ' FROM ma_sunap s INNER JOIN   view_gogek i ON i.chart = s.chart     ';
    varSqlText_except_Ortho_term :=          '   where  (sDay >= :sday1  and sDay <= :sDay2  )  '+   #10#13 +          '  and  ( sunapek <> 0 )  and ( s.sunapEk -                                                                ' + #10#13 +          ' ( case when  (select top 1 geumek from ma_sunap_bibo where chart=s.chart and sunapDate= s.sDay and sunapid <> '''' and  hangmok= ''교정'' ) > 0 then   ' + #10#13 +          '   (select top 1 geumek from ma_sunap_bibo where chart=s.chart and sunapDate= s.sDay and sunapid <> '''' and  hangmok= ''교정'' ) else  0 end)          ' + #10#13+          '   >0)                                                                                                                                                  ';     //===============================================================================


     varSqlText_hangmok :=
            ' select geumek, bohum, s.sunapEk,                                                           ' +
            ' s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun, s.tong2,           ' +
            ' s.hyunreceipt, s.tong, s.hyunreceipt_tong,                                      ' +
            ' s.card, s.bohum , s.bonin1,  s.hyunyoungsu,                                     ' +            //   s.sunapEk ,
            ' case when hangmok= ''일반진료'' then                                            ' +
            '      ( case  when geumek is null then  0 else geumek end) +                     ' +
            '      ( case  when bohum is null then   0 else bohum end)                        ' +
            ' else  bohum  end                                                                ' +
            ' as Sgeumek from ma_sunap s left join ma_sunap_bibo b on s.s_id  = b.sunapid     ' +
            ' join  view_gogek i ON i.chart = s.chart                                         ' ;


     varSqlText_hangmok5 :=
            ' select geumek, bohum, s.sunapEk,                                                           ' +
            ' s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun, s.tong2,           ' +
            ' s.hyunreceipt, s.tong, s.hyunreceipt_tong,                                      ' +
            ' s.card, s.bohum , s.bonin1,  s.hyunyoungsu,                                     ' +            //   s.sunapEk ,
            ' bohum                                                                           ' +
            ' as Sgeumek from ma_sunap s left join ma_sunap_bibo b on s.s_id  = b.sunapid     ' +
            ' join  view_gogek i ON i.chart = s.chart                                         ' ;




     //비보험항목이 수납되었다는 전제에서 다음 쿼리가 적용되어야 한다. 온양에서 요구한 내용이다.
     varSqlText_hangmok_kind :=
                    ' and    (                                   ' +
                    ' (  hangmok= ''일반진료''          ' +
                    ' and  hangmok <> ''리콜''          '+
                    ' and  hangmok <> ''월치료비''      '+
                    ' and  hangmok <> ''상담료''        '+
                    ' and  hangmok <> ''mf''            '+
                    ' and  hangmok <> ''발치''          '+
                    ' and  hangmok <> ''장치추가''      '+
                    ' and  hangmok <> ''구강위생용'' )  '+
                    ' or  ( s.bohum> 0 ))         '      ;
            //' and   ((  hangmok= ''일반진료''  )   or  ( sunapek > 0 and  s.bohum> 0 ))         ' ;

//     varSqlText_hangmok_kind_sunapBibo :=
//            ' select  s.bohum,   s.sunapEk,                                                                               ' +
//            ' s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun, s.tong2,                                     ' +
//            ' s.hyunreceipt, s.tong, s.hyunreceipt_tong,                                                                ' +
//            ' s.card, s.bohum , s.bonin1,  s.hyunyoungsu,                                                               ' +            //   s.sunapEk ,
//            '   (select sum(isnull(geumek,0)) from ma_sunap_bibo where sunapid = s.s_id  and   bibocheck <> ''1'' )     ' +   // + isnull(bohum,0)
//            ' as Sgeumek from ma_sunap s                                                                                ' +
//            ' join  view_gogek i ON i.chart = s.chart                                                                   ' ;

//     varSqlText_hangmok_kind_sunapBibo :=
//            ' select  s.bohum,   s.sunapEk,                                                                               ' +
//            ' s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun, s.tong2,                                     ' +
//            ' s.hyunreceipt, s.tong, s.hyunreceipt_tong,                                                                ' +
//            ' s.card, s.bohum , s.bonin1,  s.hyunyoungsu,                                                               ' +            //   s.sunapEk ,
//            '  case when  (select sum(geumek) from ma_sunap_bibo where sunapid = s.s_id  and  bibocheck <> ''1'' ) > 0 then    ' +
//            '     (select sum(geumek) from ma_sunap_bibo where sunapid = s.s_id  and  bibocheck <> ''1'' ) else bohum  end        ' +
//            ' as Sgeumek from ma_sunap s                                                                                ' +
//            ' join  view_gogek i ON i.chart = s.chart                                                                   ' ;


     varSqlText_hangmok_kind_sunapBibo :=
            ' select  s.bohum,   s.sunapEk,                                                                               ' +
            ' s.sDay, s.team, s.chart, i.name,i.jumin, i.k_number, s.hyun, s.tong2,                                     ' +
            ' s.hyunreceipt, s.tong, s.hyunreceipt_tong,                                                                ' +
            ' s.card, s.bohum , s.bonin1,  s.hyunyoungsu,                                                               ' +            //   s.sunapEk ,
            ' ( case when  usebohum=''1'' and (select sum(geumek) from ma_sunap_bibo where (chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' ) > 0 then  ' +
            '   (select sum(geumek) from ma_sunap_bibo where (chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' )                              ' +
            '  when  usebohum <> ''1'' and (select sum(geumek) from ma_sunap_bibo where (chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' ) > 0 then     ' +
            '   (select sum(geumek) from ma_sunap_bibo where (chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' ) + bohum                                       ' +
            '  when  (bohum = 0) and (bonin1 = 0)  and (sunapek > 0)  then (sunapek -etc)                                                                                             ' +
            '  when   (bohum > 0) and    (sunapek > 0) then                                                                                                 ' +
            '   bohum else                                                                                                                 ' +
            '  0 end)                                                                                                                     ' +
            ' as Sgeumek from ma_sunap s                                                                                              ' +
            ' join  view_gogek i ON i.chart = s.chart                                                                                 ' ;




     varSqlText_where_term3 :=
                    '   where (sDay >= :sDay1' +
                    '   and sDay <= :sDay2  ' +
                    '   )                                                                          ' +
                    ' and ( case when  usebohum=''1'' and (select sum(geumek) from ma_sunap_bibo where (chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' ) > 0 then   ' +
                    '   (select sum(geumek) from ma_sunap_bibo where(chart=s.chart and team=s.team and sunapdate=s.sDay) and  bibocheck <> ''1'' )                                ' +
                    ' when  usebohum <> ''1'' and (select sum(geumek) from ma_sunap_bibo where(chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' ) > 0 then       ' +
                    '   (select sum(geumek) from ma_sunap_bibo where (chart=s.chart and team=s.team and sunapdate=s.sDay)  and  bibocheck <> ''1'' ) + bohum                                        ' +
                    '  when  bohum =0 and bonin1=0 and sunapek > 0  then (sunapek -etc)                                                               ' +
                    '  when     (bohum > 0) and    (sunapek > 0) then                                                                                                 ' +
                    '   bohum else                                                                                                                   ' +
                    '  0 end) >0                                                                                                                        ' ;



                 //   ' and    (                                   ' +
                 //   ' (  bibocheck <> ''1'' )  '+
                 //   ' or  ( s.bohum> 0 ))         '      ;

     varSqlText_where_term :=
                    '   where (jin_day >= :sDay1' +
                    '   and jin_day <= :sDay2'  +
                    '   )                                                                          ' ;

     varSqlText_where_term1 :=
                    '   where  (sDay >= :sDay1 ' +
                    '   and sDay <= :sDay2 ' +
                    '   )                                                                             ' +
              '  and  case when  (select sum(geumek) from ma_sunap_bibo where sunapid = s.s_id  and  hangmok= ''일반진료'' ) > 0 then    ' +
              '    (select sum(geumek) from ma_sunap_bibo where sunapid = s.s_id  and  hangmok= ''일반진료'') else bohum                ' +
              '    end  > 0                                                                                                             ' ;


     varSqlText_where_bohum :=  '   and ((i.jongbeul=''1'') and  ( bohum > 0 ))  ';
   //  varSqlText_where_bibo :=  '   and (( sunapek > 0 ) or ( bohum > 0 ) or ( bonin1 > 0 ))  ';



       varSqlText_where_bibo :=  '   and  ( sunapak <> 0 )    ';
                  //  '   and  (sunapek > 0 and ( (bohum > 0) or (bonin1 > 0)) )';

     varSqlText_where_Local :=            //(len(i.k_number)=11)  and
                       '   and ( (substring( i.k_number,1,1) <> ''1'')    ' +#10#13+      //1,2,3,4를 2로
                       '   and   (substring( i.k_number,1,1) <> ''2'')    ' +#10#13+
                       '   and   (substring( i.k_number,1,1) <> ''3'')    ' +#10#13+
                       '   and   (substring( i.k_number,1,1) <> ''4'') )  ';

     varSqlText_where_team :=  '   and (s.team=:team)  ';


     varSqlText_where_ilban :=  '   and (i.jongbeul  <> ''4'' or i.jongbeul is not null )  ';

     varSqlText_where_Kind :=  '   and ( skind=:skind)  ';


     varSqlText_orderBy := 'order by jin_Day';




end;
end.
