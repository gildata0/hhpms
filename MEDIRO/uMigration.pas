unit uMigration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBAccess, Uni, Data.DB,
  Vcl.ComCtrls, MemDS, Vcl.Samples.Gauges, Vcl.ExtCtrls;

type
  Tmigration_f = class(TForm)
    btnLoad: TButton;
    RichText1: TRichEdit;
    edtChart: TEdit;
    UniConnection1: TUniConnection;
    uniQuery1: TUniQuery;
    UniConnection2: TUniConnection;
    uniQuery2: TUniQuery;
    GroupBox1: TGroupBox;
    edtIP: TEdit;
    edtPassword: TEdit;
    edtUserName: TEdit;
    edtDbName: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtIP2: TEdit;
    edtDbName2: TEdit;
    edtUserName2: TEdit;
    edtPassword2: TEdit;
    btnMediroDBConnect: TButton;
    Gauge1: TGauge;
    edtRemain: TLabel;
    lblStat: TLabel;
    Memo1: TMemo;
    btnMemoSave: TButton;
    rgChoice: TRadioGroup;
    cbADel: TCheckBox;
    cbOdel: TCheckBox;
    cbSdel: TCheckBox;
    cbPdel: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    UniQuery3: TUniQuery;
    Button6: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Memo2: TMemo;
    Button7: TButton;
    Button9: TButton;
    Button8: TButton;
    CheckBox8: TCheckBox;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    CheckBox9: TCheckBox;
    Button13: TButton;
    Memo3: TMemo;
    Button14: TButton;
    procedure btnLoadClick(Sender: TObject);
    procedure btnMediroDBConnectClick(Sender: TObject);
    procedure btnMemoSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
   { Private declarations }
    procedure Bit_Jinryo_O;
    procedure Bit_Jinryo_P;
    procedure Bit_Jinryo_S;
    procedure Bit_Rich_sRemrk;
    procedure Bit_CC;
    procedure BitInjekMove;
    procedure BitYeyakMove;
    function saveGogekAddress(id, chart, postid, zipcode, juso, kind,
      reg_day: string): string;
    function saveGogekEmail(chart, email, reg_day: string): boolean;
    function savegogekPhone(id, chart, phone, sms, kind,
      reg_day: string): string;
    function saveGogekpibo(id, pname, k_number, jongbyul, h_zip, juso, kiho,
      phone, apply_day, reg_day: string): string;
    function saveGogekRemark(chart, remark, reg_day: string): boolean;
    procedure suga_modality_eng;
    procedure suga_EngName;
    procedure suga_ilbanEk;
    procedure suga_userKey;
    procedure suga_sutakcomp_up;
    procedure suga_gasanCodeKind_up;
    procedure suga_gasanCode_LabGrade_up;
    procedure Bit_LabInfo;

  public
    { Public declarations }
  end;

var
  migration_f: Tmigration_f;

implementation

{$R *.dfm}

uses uFunctions, uDm, uMain;


procedure Tmigration_f.btnLoadClick(Sender: TObject);
var
      varLength:integer;
      bstream: Tstream;
begin

          with UniConnection1 do
          begin
              ProviderName := 'SQL Server';


              Server   :=edtip.Text;// 'BIT_EMR';////edtip.Text;
              Database :=edtdbname.text;// 'DrBITPACK';//edtdbname.text;
              Username := edtdbname.text;//  edtUserName.text;
              Password := edtPassword.text;

              if edtUserName.text = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;




              open;
          end;



//select top 1000 *, PbsSpcCmt from PbsCmtInf
//where pbsChtNum like '%7000053%'


          with uniQuery1  do
          begin
               Close;
               Sql.Clear;
               Sql.Add('select  * from PbsCmtInf');
               Sql.Add('Where  pbsChtNum like :pbsChtNum');
               ParamByName('pbsChtNum').AsString := '%' + edtchart.text + '%' ;
               Open;
               if not isEmpty then
               begin


                    while not eof do
                    begin

                       if   FieldByName('pbsSpcCmt').AsString <>'' then
                       begin

                           BStream := CreateBlobStream(FieldByName('pbsSpcCmt'), bmRead);
                           RichText1.Lines.LoadFromStream(bStream);
                           BStream.Free;

                       end;

                      next;
                    end;
               end;

          end;


end;





procedure Tmigration_f.Bit_Jinryo_S;
var
     chartno, adoConn: string;
begin



//     with uniQuery2 do
//     begin
//          close;
//          SQL.Clear;
//          Sql.Add('Delete from jinryo_s');
//          ExecSQl;
//     end;




     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          sql.add(' select   convert(datetime,  substring(odrdtm,1,8) +  '' ''                               ');
          sql.add(' + substring(odrdtm,9,2)+ '':'' + substring(odrdtm,11,2) +  '':'' + ''00'') as jin_time, ');
          sql.add(' * from odrInf where OdrDelFlg =''N'' ');
          sql.Add('and  odrdtm  <= ''201903319999'' ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          //    Gauge1.MaxValue := imsi;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                    try
                         begin
                              with uniQuery2 do
                              begin


                                   close;
                                   SQL.Clear;
                                   SQL.Add('Insert into jinryo_s');
                                   Sql.Add(' (Chart,sort_key,su_key, user_key,');
                                   Sql.Add(' jin_qty,jin_Day,jin_ilsu,div, dan_qty,');
                                   Sql.Add(' group_key,su_kor_name, except_code, modality, chartid,');
                                   Sql.Add(' su_gu1,su_gu3,su_gu2,jin_danga,iorder,g_check, ');
                                   Sql.Add(' gub_gu, gasan, doc_code, team, jin_time, jubsu_id  ) values');
                                   sql.Add('(  :Chart,:sort_key,:su_key, :user_key,');
                                   Sql.Add(' :jin_qty,:jin_Day,:jin_ilsu,:div, :dan_qty,');
                                   Sql.Add(' :group_key, :su_kor_name, :except_code, :modality, :chartid, ');
                                   Sql.Add(' :su_gu1, :su_gu3, :su_gu2, :bo_dan, :iorder,:g_check,');
                                   Sql.Add(' :gub_gu, :gasan, :doc_code, :team, :jin_time, :jubsu_id)');
                                  // Sql.Add(' from suga where su_key=:Su_key)');

                                   chartno :=  trim(uniQuery1.fieldbyname('OdrChtNum').AsString);
                                   parambyname('chart').AsString    :=   chartno;

                                   lblStat.Caption :=   '진료정보(S)를 이동하고 있습니다  ' +   chartno;
                                   parambyname('Jin_Day').AsSTRING  :=
                                   copy( uniQuery1.fieldbyname('OdrDtm').AsSTRING, 1,8);


                                   parambyname('sort_key').AsInteger :=
                                        uniQuery1.fieldbyname('OdrSeq').AsInteger;

                                   parambyname('jubsu_id').AsString :=
                                        uniQuery1.fieldbyname('OdrOcmNum').AsString;

                                   if
                                        (copy(uniQuery1.fieldbyname('OdrOspTyp').AsString, 1, 1) <> 'I') then
                                        parambyname('g_check').AsString := 'G'
                                   else
                                        parambyname('g_check').AsString := 'S';
                                   parambyname('gub_gu').AsString :=
                                             trim(uniQuery1.fieldbyname('OdrInsYon').AsString);
                                                               //0:급여 2:비급여
                                   parambyname('su_key').AsString :=
                                             trim(uniQuery1.fieldbyname('OdrElcCod').AsString);
                                   parambyname('user_key').AsString :=
                                             trim(uniQuery1.fieldbyname('OdrCod').AsString);
                                   parambyname('chartid').AsString :=
                                             trim(uniQuery1.fieldbyname('OdrItmCod').AsString);
                                   parambyname('modality').AsString :=
                                             trim(uniQuery1.fieldbyname('OdrTrnDep').AsString);
                                   parambyname('group_key').AsString :=
                                        trim(uniQuery1.fieldbyname('OdrElcCod').AsString);

                                   parambyname('iorder').AsInteger   := uniQuery1.fieldbyname('OdrSeq').AsInteger;

                                   parambyname('su_gu1').AsString :=  '0';
                                   parambyname('su_gu3').AsString :=  '0';
                                   parambyname('su_gu2').AsString :=  '0';

                                   parambyname('bo_dan').AsString :=    formatFloat('#',     uniQuery1.fieldbyname('OdrPrc').AsFloat);
                                   parambyname('su_kor_name').AsString    :=    uniQuery1.fieldbyname('OdrCodNam').AsString;

                                   parambyname('except_code').AsString    :=   uniQuery1.fieldbyname('OdrOutCod').AsString;
                                   parambyname('gasan').AsString          :=   '';//uniQuery1.fieldbyname('OdrInsYon').AsString;
                                   parambyname('doc_code').AsString       :=   uniQuery1.fieldbyname('OdrDtrCod').AsString;
                                   parambyname('team').AsString           :=   uniQuery1.fieldbyname('OdrDepCod').AsString;
                                   parambyname('jin_time').AsDateTime
                                      :=   uniQuery1.fieldbyname('jin_time').AsDateTime;

                                   parambyname('jin_qty').AsFloat   :=
                                        uniQuery1.fieldbyname('OdrQty').AsFloat;  //OdrQty
                                   parambyname('jin_ilsu').AsInteger :=
                                        uniQuery1.fieldbyname('OdrDay').AsInteger; //OdrDay
                                   parambyname('div').AsInteger     :=         //Times
                                        uniQuery1.fieldbyname('OdrTms').AsInteger;
                                   parambyname('dan_qty').AsString :=  '1';    //재료 기준량으로 나눌때.


                                   ExecSQL;

                              end;
                              Application.ProcessMessages;
                              next;
                              Gauge1.Progress := Gauge1.Progress +
                                   1;
                              edtRemain.Caption :=
                                   IntToStr(StrToInt(edtRemain.Caption) -
                                   1);
                         end;
                    except
                         on E: Exception do
                         begin

                              Application.ProcessMessages;
                              memo1.Lines.Add(chartno + ' 진료(S)   SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress + 1;
                              edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);
                         end;
                    end;
               end;
          end;
     end;
     //  showmessage('자료변환을 완료 하였습니다');
end;


procedure Tmigration_f.Bit_Jinryo_P;
var
     imsi: integer; //챠트번호가 없을때 임시부여하기 위한 변수
     chartno, adoConn: string;
begin
//     with uniQuery2 do
//     begin
//          close;
//          SQL.Clear;
//          Sql.Add('Delete from jinryo_p');
//          ExecSQl;
//     end;

     with  uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add('Select   * from orpInf a                                      ');
        //  Sql.Add('where orpAccDte <=''20190331''  and orprcpseq=''0''  ');
           Sql.Add('where  orprcpseq in (select max(orprcpseq) from orpInf       ');
           Sql.Add('where orpOcmNum=a.orpOcmNum  and  orpAccDte >=''20000101''   ');
           Sql.Add(' and orpAccDte <=''20181231'' and Orprcpstt <>''C'')   and                         ');
           Sql.Add('orpAccDte >=''20000101''  and orpAccDte <=''20181231''       ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin
                    try
                         begin
                              with uniQuery2 do
                              begin
                                   close;
                                   SQL.Clear;
                                   SQL.Add('Insert into jinryo_p');
                                   Sql.Add('(chart,jin_day,doc_code,chojae,jongbeul,kwamok,team, jubsu_id,');
                                   Sql.Add('chong,bonin1,bonin,cmemo,sunap,makam_sabun,sunapak,chung,jin_gu, cash, card, tong, sunsucash) values');
                                   Sql.Add('(:Chart,:jin_day,:doc_code,:chojae,:jongbeul,:kwamok,:team,:jubsu_id,');
                                   Sql.Add(':chong,:bonin1,:bonin,:cmemo,:sunap,:makam_sabun,:sunapak,:chung,:jin_gu, :cash, :card, :tong, :sunsucash)');
                                   //챠트 번호
                                   chartno := trim(uniQuery1.FieldByName('OrpChtNum').AsString);

                                   ParamByName('chart').AsString := chartno;
                                   lblStat.Caption :=  '진료정보(P)를 이동하고 있습니다  ' +  chartno;


                                   //진료일자
                                   if
                                         trim(uniQuery1.fieldbyname('OrpAccDte').AsString) <> '' then
                                        parambyname('jin_day').AsString :=
                                              trim(uniQuery1.fieldbyname('OrpAccDte').AsString)
                                   else
                                        parambyname('jin_day').asstring := ''; //(now);

                                   parambyname('jin_gu').AsString    := '0';
                                   parambyname('team').AsString      :=  trim(uniQuery1.Fieldbyname('OrpDepCod').AsString);

                                   //의사코드
                                   parambyname('doc_code').AsString  := trim(uniQuery1.Fieldbyname('OrpDtrCod').AsString);



                                   //초재구분
                                   parambyname('chojae').AsString := uniQuery1.Fieldbyname('OrpInsSeq').AsString ;
                                                                          //0: 초진 1: 재진

                                   //종별구분
                                   parambyname('jongbeul').AsString := uniQuery1.Fieldbyname('OrpInsCod').AsString;
                                                                        //11: 일반 31: 보험

                                   //과목코드는 널일수 없다
                                   parambyname('kwamok').asstring := '16';
                                   //총진료비(보험)

                                   parambyname('sunap').AsString := '1'; // (0 : 수납대기 1:수납완료 2:수납대기취소 3: 수납보류 )
                                   parambyname('chong').AsString  :=  formatFloat('#', uniQuery1.fieldbyname('OrpInsAmt').AsFloat);
                                   parambyname('chung').AsString  :=  formatFloat('#', uniQuery1.fieldbyname('OrpCorAmt').AsFloat);
                                   parambyname('bonin').asstring  :=  formatFloat('#', uniQuery1.fieldbyname('OrpInsOwn').AsFloat);
                                   parambyname('bonin1').AsString :=  formatFloat('#', uniQuery1.fieldbyname('OrpNonAmt').AsFloat);

                                   //청구메모
                                   parambyname('cmemo').AsString := '';
                                   //처치 ID  (마감사용자사번을 대채 이용)나중에 수정
                                   parambyname('makam_sabun').AsString := trim(uniQuery1.Fieldbyname('OrpDtrCod').AsString);
                                   parambyname('jubsu_id').AsString := trim(uniQuery1.Fieldbyname('OrpOcmNum').AsString);

                                   parambyname('sunapak').asString := formatFloat('#', uniQuery1.fieldbyname('OrpTotOwn').AsFloat);
                                   //총액 - 수납액 = 청구액

                                   parambyname('cash').AsInteger := 0;

                                   parambyname('card').AsInteger := 0;

                                   parambyname('sunsucash').AsInteger := 0;

                                   parambyname('tong').AsInteger   := 0;
                                   ExecSQL;
                              end;
                              Application.ProcessMessages;
                              next;
                              Gauge1.Progress := Gauge1.Progress + 1;
                              edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);
                         end;
                    except
                         on E: Exception do
                         begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(chartno +  ' 진료(P)   SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                         end;
                    end;
               end;
          end;
     end;

end;



procedure Tmigration_f.Bit_Jinryo_O;
var
     imsi: integer; //챠트번호가 없을때 임시부여하기 위한 변수
     varChart, adoConn, varJinDay, varKwaMok: string;
     jubsu_id, doccode, myunhu , varOrder, varkey, varSang, flag, varflag: string;
begin

//     with uniQuery2 do
//     begin
//          close;
//          SQL.Clear;
//          Sql.Add('Delete from jinryo_o');
//          ExecSQl;
//     end;


     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add(' select   * ,                                                         ');
          Sql.Add(' (select  top 1 license from LicenseInf                             ');
          Sql.Add('  where LicenseInf.OcmNum= OicInf.OicOcmNum) as license from OicInf ');
          Sql.Add('   where oicDgnDte <=''201903319999''                               ');
          Sql.Add(' order by OicDgnDte, OicChtNum, oicSeq                              ');
//          Sql.Add('  join LicenseInf on OicInf.OicOcmNum = LicenseInf.OcmNum           ');
//          Sql.Add('  where Gubun =''J''                                                ');    // and Chtnum like '%7086233%'
          Open;
          first;


            // select *  from OicInf  join LicenseInf on OicInf.OicOcmNum = LicenseInf.OcmNum
            //where   OicChtNum like '%7000194%'

            //select  *  from LicenseInf a join OrcInf b on a.OcmNum =b.OrcOcmNum
            //where Gubun ='b' --and Chtnum like '%7086233%'

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin
                    try
                         begin

                              varChart :=  trim(  uniQuery1.FieldByName('OicChtNum').AsString);

                             jubsu_id :=   trim(  uniQuery1.FieldByName('OicOcmNum').AsString);
                              varJinDay :=
                                        copy(trim(uniQuery1.FieldByName('oicDgnDte').AsString), 1, 4) + '-' +
                                        copy(trim(uniQuery1.FieldByName('oicDgnDte').AsString), 5, 2) + '-' +
                                        copy(trim(uniQuery1.FieldByName('oicDgnDte').AsString), 7, 2) ;


                              varKwaMok := '16';


                              varOrder :='1';
                              varkey  :=  trim(uniQuery1.fieldbyname('OicElcCod').asstring);
                              varSang :=  trim(uniQuery1.fieldbyname('OicIcdNam').asstring);
                              varFlag :='';

                              flag :='';

                              doccode:=  ''; //trim(uniQuery1.fieldbyname('OrcUidCod').asstring);
                              myunhu :=   trim(uniQuery1.fieldbyname('license').asstring);

                              with uniQuery2 do
                              begin
                                   close;
                                   SQL.Clear;
                                   SQL.Text :=
                                        'INSERT INTO  jinryo_o (  ' + #13#10
                                        +
                                        '             chart  ,jubsu_id    ' + #13#10
                                        +
                                        '             ,jin_day   ' + #13#10
                                        +
                                        '             ,jin_order      ' + #13#10
                                        +
                                        '             ,p1  ' + #13#10
                                        +
                                        '             ,P2  ' + #13#10
                                        +
                                        '             ,p3   ' + #13#10
                                        +
                                        '             ,p4      ' + #13#10
                                        +
                                        '             ,s_key1    ' + #13#10
                                        +
                                        '             ,kwamok, sang1, doc_Code, myunhu    ' + #13#10
                                        +
                                        '  )  VALUES  (     ' + #13#10
                                        +
                                        '              ' +
                                        QuotedStr(varChart) + #13#10 +
                                        '             ,' +
                                        QuotedStr(jubsu_id) + #13#10 +
                                        '             ,' +
                                        QuotedStr(varJinDay) + #13#10 +
                                        '             ,' +
                                        QuotedStr(varOrder) +  #13#10 +
                                        '             ,' +
                                        QuotedStr('') + #13#10 +
                                        '             ,' +
                                        QuotedStr('') + #13#10 +
                                        '             ,' +
                                        QuotedStr('') + #13#10   +
                                        '             ,' +
                                        QuotedStr('') + #13#10  +
                                        '             ,' +
                                        QuotedStr(varKey) +  #13#10 +
                                        '             ,' +
                                        QuotedStr(varKwaMok) +  #13#10 +
                                        '             ,' +
                                        QuotedStr(varSang) +  #13#10 +
                                        '             ,' +
                                        QuotedStr(doccode) +  #13#10 +
                                        '             ,' +
                                        QuotedStr(myunhu) +  #13#10 +
                                        '             )';


                                   ExecSQL;
                              end;
                              Application.ProcessMessages;
                              next;
                              Gauge1.Progress := Gauge1.Progress +
                                   1;
                              edtRemain.Caption :=
                                   IntToStr(StrToInt(edtRemain.Caption) -
                                   1);
                         end;
                    except
                         on E: Exception do
                         begin
                              //          ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(varChart +   ' 진료(O)   SKIP'+#10#13+ E.Message);




                              next;
                              Gauge1.Progress := Gauge1.Progress +
                                   1;
                              edtRemain.Caption :=  IntToStr(StrToInt(edtRemain.Caption) -   1);
                         end;
                    end;
               end;
          end;
     end;

end;



procedure Tmigration_f.btnMediroDBConnectClick(Sender: TObject);
begin

          with UniConnection1 do   //Bit
          begin
              ProviderName := 'SQL Server';


              Server   :=edtip.Text;// 'BIT_EMR';////edtip.Text;
              Database :=edtdbname.text;// 'DrBITPACK';//edtdbname.text;
              Username := edtUserName.text;//  edtUserName.text;
              Password := edtPassword.text;

              if edtUserName.text = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;




              open;
          end;

          with UniConnection2 do //Mediro
          begin
              ProviderName := 'SQL Server';


              Server   := edtip2.Text;// mediro
              Database := edtdbname2.text;//
              Username := edtUserName2.text;//
              Password := edtPassword2.text;

              if edtUserName2.text = '' then
              begin
                 SpecificOptions.Values['Authentication'] := 'auWindows';
                 SpecificOptions.Values['TrustServercertificate'] := 'true';
              end
              else
              begin
                 SpecificOptions.Values['Authentication'] := 'auServer';
                 SpecificOptions.Values['TrustServercertificate'] := 'false';
              end;

              open;
          end;


end;

procedure Tmigration_f.btnMemoSaveClick(Sender: TObject);
begin
       memo1.Lines.SaveToFile(formatDatetime('YYYYMMDDHHnnsszzz',now) +'.txt');
end;

procedure Tmigration_f.Button10Click(Sender: TObject);
begin
   suga_sutakcomp_up;
end;

procedure Tmigration_f.Button11Click(Sender: TObject);
begin
     suga_gasanCodeKind_up;
end;

procedure Tmigration_f.Button12Click(Sender: TObject);
begin
     suga_gasanCode_LabGrade_up;
end;

procedure Tmigration_f.Button13Click(Sender: TObject);
begin
      Bit_Jinryo_O;
end;

procedure Tmigration_f.Button14Click(Sender: TObject);
begin
     Bit_LabInfo;
end;

procedure Tmigration_f.Button1Click(Sender: TObject);
begin
   case rgChoice.ItemIndex of
        0:
             begin
                   Bit_Jinryo_o;
                   Bit_Jinryo_S;
                   Bit_Jinryo_p;
             end;
        1:
              Bit_Jinryo_o ;
        2:
              Bit_Jinryo_S;
        3:
              Bit_Jinryo_p;
   end;
end;

procedure Tmigration_f.Button2Click(Sender: TObject);
begin
       Bit_CC   ;
end;

procedure Tmigration_f.Button3Click(Sender: TObject);
begin
   Bit_Rich_sRemrk;
end;

procedure Tmigration_f.Button4Click(Sender: TObject);
begin
    BitInjekMove;
end;


procedure Tmigration_f.Button5Click(Sender: TObject);
begin
   BitYeyakMove;
end;

procedure Tmigration_f.Button6Click(Sender: TObject);
begin

       if  checkBox1.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> BitInjekMove Started.') ;
          BitInjekMove;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> BitInjekMove completed.');
       end;

       if  checkBox2.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> BitYeyakMove Started.') ;
          BitYeyakMove;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> BitYeyakMove completed.') ;

       end;
       if  checkBox3.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Rich_sRemrk Started.') ;
          Bit_Rich_sRemrk;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Rich_sRemrk completed.') ;

       end;

       if  checkBox4.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_CC Started.') ;
          Bit_CC   ;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_CC completed.') ;

       end;
       if  checkBox5.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Jinryo_o Started.')  ;
          Bit_Jinryo_o;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Jinryo_o completed.');
       end;
       if  checkBox6.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Jinryo_S Started.')  ;
          Bit_Jinryo_S;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Jinryo_S completed.') ;

       end;
       if  checkBox7.Checked then
       begin
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Jinryo_p Started.')  ;
          Bit_Jinryo_p;
          memo2.Lines.Add(formatdatetime('YYYYMMDD hh:nn:ss', now) +'==> Bit_Jinryo_p completed.') ;
       end;
end;

procedure Tmigration_f.Button7Click(Sender: TObject);
begin
     suga_modality_eng;
end;

procedure Tmigration_f.Button8Click(Sender: TObject);
begin
   suga_userKey;
end;

procedure Tmigration_f.Button9Click(Sender: TObject);
begin
     suga_ilbanek;
end;

procedure Tmigration_f.FormCreate(Sender: TObject);
begin
              edtUsername.text:='';
              edtPassword.text:='';
end;




procedure Tmigration_f.Bit_Rich_sRemrk;
var
     imsi: integer; //챠트번호가 없을때 임시부여하기 위한 변수
     chartno, adoConn: string;

     varLength:integer;
     bstream: Tstream;

     ms: TMemorystream;
begin
      with uniQuery2 do
      begin

          try
              Close;
              Sql.Clear;

              Sql.Add('delete from  hxSremark');

              execsql;

          finally
          end;
     end;
     with  uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add('Select * from PbsCmtInf');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin
                    try

                      chartno := trim(FieldByName('pbsChtNum').AsString) ;

                      if FieldByName('pbsSpcCmt').AsString <>'' then
                       begin
                           BStream := CreateBlobStream(FieldByName('pbsSpcCmt'), bmRead);
                           RichText1.Lines.LoadFromStream(bStream);
                         //  BStream.Free;
                       end;



                        with uniQuery2 do
                        begin

                            try
                                Close;
                                Sql.Clear;

                                Sql.Add('insert into hxSremark');
                                Sql.Add('(SrChart, SrDate, SrMemo, srTeam, modDay, richtext) values');
                                Sql.Add('(:SrChart, :SrDate, :SrMemo, :srTeam, :modDay,  :richtext)');


                               //    ms := TMemoryStream.Create;
                                //   RichText1.Lines.SaveToStream(ms);

                                   ParamByName('modDay').asDateTime := now;
                                   ParamByName('SrChart').AsString := chartno;
                                   ParamByName('SrDate').AsDate := now;
                                   paramByName('SrMemo').asMemo := RichText1.Text;
                                   paramByName('srTeam').asString := '';
                                   paramByName('richtext').LoadFromStream(BStream, ftBlob);
                                   execsql;

                              finally
                                  // ms.Free;
                                   BStream.Free;
                              end;
                     end;


                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(chartno +  ' Rich Memo SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;




procedure Tmigration_f.Bit_CC;
var
     imsi: integer; //챠트번호가 없을때 임시부여하기 위한 변수
     chartno, adoConn: string;

     varLength:integer;
     bstream: Tstream;

     remark : string;
     insertdate, team : string;
     ms: TMemorystream;
     doc_code,
     jubsu_id : string;
begin
//      with uniQuery2 do
//      begin
//
//          try
//              Close;
//              Sql.Clear;
//
//              Sql.Add('delete from  hxCC');
//
//              execsql;
//
//          finally
//          end;
//     end;

     with  uniQuery1 do
     begin
          close;
          SQL.Clear;


          Sql.Add('SELECT  DISTINCT emrchtnum, emrocmdte, emrdepcod , emrDtrCod, emrOcmNum, (    ');
          Sql.Add('            SELECT  ''▶''+ Emrshtval  + char(13)                             ');
          Sql.Add('            FROM    emrinf                                                    ');
          Sql.Add('            WHERE   emrchtnum    = A.emrchtnum                                ');
          Sql.Add('           and emrocmdte=a.EmrOcmDte and emrdepcod = a.emrdepcod              ');
          Sql.Add('            FOR XML PATH('''')                                                ');
          Sql.Add('            )  as remark                                                      ');
          Sql.Add('FROM    emrinf A                                                              ');

          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin
                    try
                                                                      //▶&#x0D;
                      chartno := trim(FieldByName('emrchtnum').AsString) ;
                      remark := stringReplace(FieldByName('remark').AsString, '▶&#x0D;', '' ,[rfReplaceAll] );
                      remark := stringReplace(remark, '&#x0D;', #13,[rfReplaceAll] );
                      remark := stringReplace(remark, '&gt;', '>',[rfReplaceAll] );
                      remark := stringReplace(remark, '▶', '',[rfReplaceAll] );
                      insertdate :=   copy( FieldByName('emrocmdte').AsString, 1,4) +'-'+
                                      copy( FieldByName('emrocmdte').AsString, 5,2) +'-'+
                                      copy( FieldByName('emrocmdte').AsString, 7,2) ;

                      team:=    trim(FieldByName('emrdepcod').AsString) ;

                      doc_code :=    trim(FieldByName('emrDtrCod').AsString) ;
                      jubsu_id :=    trim(FieldByName('emrOcmNum').AsString) ;



                      richtext1.Lines.Clear;
                      richtext1.Lines.Add(trim(remark));
                      ms := TMemoryStream.Create;
                      richtext1.Lines.SaveToStream(ms);

                    //  bstream := TStream.Create;
                     // richtext1.Lines.SaveToStream(bstream);

                        with uniQuery2 do
                        begin

                            try
                                Close;
                                Sql.Clear;

                                Sql.Add('insert into hxCC');
                                Sql.Add('(CCchart, CCDate, CCMemo,  modDay, richtext, CCteam, doc_code, jubsu_id) values');
                                Sql.Add('(:CCchart, :CCDate, :CCMemo,   :modDay,  :richtext, :CCteam, :doc_code, :jubsu_id)');


                               //    ms := TMemoryStream.Create;
                                //   RichText1.Lines.SaveToStream(ms);

                                   ParamByName('modDay').asString := insertdate;
                                   ParamByName('CCChart').AsString := chartno;
                                   ParamByName('doc_code').AsString := doc_code;
                                   ParamByName('jubsu_id').AsString := jubsu_id;
                                   ParamByName('CCDate').AsString := insertdate;
                                   paramByName('CCMemo').asMemo :=  remark;
                                   paramByName('CCteam').asString := team;//varPortion;
                                   paramByName('richtext').LoadFromStream(ms, ftBlob);
                                   execsql;

                              finally
                                   ms.Free;
                                  // BStream.Free;
                              end;
                     end;


                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(chartno +  ' CC SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;




procedure Tmigration_f.BitInjekMove;

var
     chartno: string;
     varOldChart: string;
     varJongbyul: string;
     varJumin: string;
     varPiboid: string;
     varcPhone: string;
     varEmail: string;
     varSMSUse: string;
     varPPhone: string;
     adoConn : string;
begin

//           if
//               Application.MessageBox(pchar('기존 환자정보가 모두 삭제됩니다..' +
//               #10#13 +
//               '그래도 진행 하시겠습니까?'),
//               '기존 환자정보 삭제 확인', MB_OKCANCEL) = 1 then
//          begin
//
//               with uniQuery2 do
//               begin
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_basic');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_pibo');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_remark');
//                    ExecSQl;
//
//                    {   close;
//                       SQL.Clear;
//                       Sql.Add('Delete from ma_gogek_refer');
//                       ExecSQl;
//
//                       close;
//                       SQL.Clear;
//                       Sql.Add('Delete from ma_gogek_referer');
//                       ExecSQl;
//                    }
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_phone');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_office');
//                    ExecSQl;
//
//                    {  close;
//                      SQL.Clear;
//                      Sql.Add('Delete from ma_gogek_munjin');
//                      ExecSQl;
//
//                      close;
//                      SQL.Clear;
//                      Sql.Add('Delete from ma_gogek_group');
//                      ExecSQl;
//                     }
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_email');
//                    ExecSQl;
//                    {
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_donggi');
//                    ExecSQl;
//                     }
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_allow');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from ma_gogek_address');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxsremark');
//                    ExecSQl;
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxcc');
//                    ExecSQl;
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxdent');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxdesire');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxMed');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxpi');
//                    ExecSQl;
//
//                    close;
//                    SQL.Clear;
//                    Sql.Add('Delete from hxKam');
//                    ExecSQl;
//
//               end;
//          end
//          else
//          begin
//               exit;
//          end;





       with uniQuery1 do
     begin
          close;
          SQL.Clear;
         // Sql.Add('Select * from PbsInf');
            Sql.Add('select * from pbsinf                                 ');
            Sql.Add('where  rtrim( ltrim(PbsChtNum)) in (''7091885'',      ');
            Sql.Add(' ''7091899'',                                         ');
            Sql.Add(' ''7091950'',                                         ');
            Sql.Add(' ''7091951'',                                         ');
            Sql.Add(' ''7091998'',                                         ');
            Sql.Add(' ''7092224'',                                         ');
            Sql.Add(' ''7092431'',                                         ');
            Sql.Add(' ''7092491'',                                         ');
            Sql.Add(' ''7092682'',                                         ');
            Sql.Add(' ''7092683'',                                         ');
            Sql.Add(' ''7092803'',                                         ');
            Sql.Add(' ''7092805'',                                         ');
            Sql.Add(' ''7092813'',                                         ');
            Sql.Add(' ''7092880'',                                         ');
            Sql.Add(' ''7092994'',                                         ');
            Sql.Add(' ''7093027'',                                         ');
            Sql.Add(' ''7093074'',                                         ');
            Sql.Add(' ''7093213'',                                         ');
            Sql.Add(' ''7093215'',                                         ');
            Sql.Add(' ''7093217'',                                         ');
            Sql.Add(' ''7093223'',                                         ');
            Sql.Add(' ''7093258'',                                         ');
            Sql.Add(' ''7093272'',                                         ');
            Sql.Add(' ''7093274'',                                         ');
            Sql.Add(' ''7093311'',                                         ');
            Sql.Add(' ''7093328'',                                         ');
            Sql.Add(' ''7093346'',                                         ');
            Sql.Add(' ''7093357'',                                         ');
            Sql.Add(' ''7093360'',                                         ');
            Sql.Add(' ''7093363'',                                         ');
            Sql.Add(' ''7093367'',                                         ');
            Sql.Add(' ''7093384'',                                         ');
            Sql.Add(' ''7093387'',                                         ');
            Sql.Add(' ''7093405'',                                         ');
            Sql.Add(' ''7093418'',                                         ');
            Sql.Add(' ''7093423'',                                         ');
            Sql.Add(' ''7093430'',                                         ');
            Sql.Add(' ''7093440'',                                         ');
            Sql.Add(' ''7093444'',                                         ');
            Sql.Add(' ''7093452'',                                         ');
            Sql.Add(' ''7093460'',                                         ');
            Sql.Add(' ''7093467'',                                         ');
            Sql.Add(' ''7093487'',                                         ');
            Sql.Add(' ''7093493'',                                         ');
            Sql.Add(' ''7093499'',                                         ');
            Sql.Add(' ''7093505'',                                         ');
            Sql.Add(' ''7093524'',                                         ');
            Sql.Add(' ''7093532'',                                         ');
            Sql.Add(' ''7093533'',                                         ');
            Sql.Add(' ''7093538'',                                         ');
            Sql.Add(' ''7093543'',                                         ');
            Sql.Add(' ''7093546'',                                         ');
            Sql.Add(' ''7093556'',                                         ');
            Sql.Add(' ''7093557'',                                         ');
            Sql.Add(' ''7093560'',                                         ');
            Sql.Add(' ''7093562'',                                         ');
            Sql.Add(' ''7093564'',                                         ');
            Sql.Add(' ''7093566'',                                         ');
            Sql.Add(' ''7093567'',                                         ');
            Sql.Add(' ''7093568'',                                         ');
            Sql.Add(' ''7093569'',                                         ');
            Sql.Add(' ''7093576'',                                         ');
            Sql.Add(' ''7093582'',                                         ');
            Sql.Add(' ''7093583'',                                         ');
            Sql.Add(' ''7093587'',                                         ');
            Sql.Add(' ''7093589'',                                         ');
            Sql.Add(' ''7093590'',                                         ');
            Sql.Add(' ''7093591'',                                         ');
            Sql.Add(' ''7093592'',                                         ');
            Sql.Add(' ''7093593'',                                         ');
            Sql.Add(' ''7093596'',                                         ');
            Sql.Add(' ''7093597'',                                         ');
            Sql.Add(' ''7093603'',                                         ');
            Sql.Add(' ''7093604'',                                         ');
            Sql.Add(' ''7093605'',                                         ');
            Sql.Add(' ''7093611'',                                         ');
            Sql.Add(' ''7093618'',                                         ');
            Sql.Add(' ''7093621'',                                         ');
            Sql.Add(' ''7093625'',                                         ');
            Sql.Add(' ''7093626'',                                         ');
            Sql.Add(' ''7093627'',                                         ');
            Sql.Add(' ''7093632'',                                         ');
            Sql.Add(' ''7093640'')                                         ');


            Open;
            first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   try
                         with uniQuery2 do
                         begin
                             chartno :=    trim(uniQuery1.FieldByName('PbsChtNum').AsString) ;

                              varJumin :=
                                   DelUnderbar(DelDash(uniQuery1.FieldByName('PbsResNum').AsString));


                                         varPiboid := '0';


                                   //ma_gogek_address 주소 저장/수정
                                   if
                                        (trim(uniQuery1.FieldByName('PbsDtlAdr').AsString) <> '')
                                        or
                                        (trim(uniQuery1.FieldByName('PbsZipCod').AsString) <> '') then
                                   begin
                                        saveGogekAddress('',
                                             chartno,
                                             '',
                                             deldash(uniQuery1.FieldByName('PbsZipCod').AsString),
                                             uniQuery1.FieldByName('PbsDtlAdr').AsString + ' '
                                             + uniQuery1.FieldByName('PbsAdrSta').AsString, '1',
                                             formatDatetime('YYYY-MM-DD', now));
                                   end;

                                   //ma_gogek_email 이메일 저장/수정
                                  varEmail:=uniQuery1.FieldByName('PbsElcMal').AsString ;

                                   if (varEmail <> '') and
                                        (copy(varEmail, 1, 1) <>
                                        '0') then
                                   begin
                                        saveGogekemail(chartno,
                                             varEmail,
                                             formatDatetime('YYYY-MM-DD', now));
                                   end;
                                   //ma_gogek_office

                                   varCphone :=
                                        trim(uniQuery1.FieldByName('PbsCelPhn').AsString);
                                   varPphone :='';
                                   varSmsUse := '1' ;


                                   //ma_gogek_phone
                                   if varCphone <> '' then
                                   begin
                                        saveGogekPhone('',
                                             chartno,
                                             varCPhone,
                                             varSmsUse,
                                             '2', //휴대폰
                                             formatDatetime('YYYY-MM-DD', now));
                                   end;
                                    //ma_gogek_phone //보호자 휴대폰
                                   if varPPhone <> '' then
                                   begin
                                        saveGogekPhone('',
                                             chartno,
                                             varPPhone,
                                             varSmsUse,
                                             '3', //보호자전화
                                             formatDatetime('YYYY-MM-DD', now));
                                   end;

                                   if
                                        uniQuery1.FieldByName('PbsPhnNum').AsString <> '' then
                                   begin
                                        saveGogekPhone('',
                                             chartno,
                                             uniQuery1.FieldByName('PbsPhnNum').AsString,
                                             varSmsUse,
                                             '1', //집전화
                                             formatDatetime('YYYY-MM-DD', now));
                                   end;

                                   {    if
                                              uniQuery1.FieldByName('Remark').AsString <> '' then
                                       begin
                                              saveGogekRemark(trim(uniQuery1.FieldByName('pnt_id').AsString),
                                                     uniQuery1.FieldByName('Remark').AsString,
                                                     copy(uniQuery1.FieldByName('LaST_Visit_Date').AsString, 1, 4) + '-' +
                                                     copy(uniQuery1.FieldByName('LaST_Visit_Date').AsString, 5, 2) + '-' +
                                                     copy(uniQuery1.FieldByName('LaST_Visit_Date').AsString, 7, 2));
                                       end;
                                    }
                                   close;
                                   SQL.Clear;
                                   SQL.Add('Insert into ma_gogek_basic ');
                                   Sql.Add('(Chart,name,nameEng, jumin, last_day, first_day, ');
                                   Sql.Add('birth, moon, personality, team, doc, hyg,');
                                   Sql.Add('  reg_day, special, pibo_id, refer_id, fam_id, kwan, chamgo) Values');
                                   Sql.Add('(:Chart, :name, :nameEng, :jumin, :last_day, :first_day,');
                                   Sql.Add(' :birth, :moon, :personality, :team, :doc, :hyg,');
                                   Sql.Add(' :reg_day,:special,:pibo_id, :refer_id, :fam_id, :kwan, :chamgo)'); //, :Gender)');
                                   lblStat.Caption :=   '환자정보를 이동하고 있습니다  ' +  chartno;


                                   ParamByName('chart').AsString   := chartno;

                                   ParamByName('name').AsString :=
                                       substr( trim(uniQuery1.FieldByName('PbsPatNam').AsString) ,1,';');

                                   ParamByName('nameEng').AsString :=
                                       substr( trim(uniQuery1.FieldByName('PbsPatNam').AsString) ,2,';');

                                   ParamByName('jumin').AsString
                                        := trim(varJumin);
                                   ParamByName('team').AsString
                                        :=  uniQuery1.FieldByName('PbsUidCod').AsString ;
                                     //   trim(PbsUidCod);
                                   ParamByName('doc').AsString
                                        :=  uniQuery1.FieldByName('PbsUidCod').AsString ;

                                   ParamByName('hyg').AsString
                                        :=
                                        trim(uniQuery1.FieldByName('PbsUidCod').AsString);  //PbsUidCod
                                   if
                                        uniQuery1.FieldByName('PbsUpdDtm').AsString <> '' then
                                        //  ParamByName('Last_day').AsDateTime :=
                                        ParamByName('Last_day').AsString :=
                                             // strtodatetime(
                                        copy(uniQuery1.FieldByName('PbsUpdDtm').AsString, 1, 4) + '-' +
                                             copy(uniQuery1.FieldByName('PbsUpdDtm').AsString, 5, 2) + '-' +
                                             copy(uniQuery1.FieldByName('PbsUpdDtm').AsString, 7, 2) //)
                                   else
                                        //  ParamByName('Last_day').AsDateTime := strtodatetime('1900-01-01');
                                        ParamByName('Last_day').AsString := ''; //strtodatetime('1900-01-01');

                                   if
                                        uniQuery1.FieldByName('PbsNewDte').AsString <> '' then
                                        //   ParamByName('first_day').AsDateTime :=
                                        ParamByName('first_day').AsString :=
                                             //      strtodatetime(
                                        copy(uniQuery1.FieldByName('PbsNewDte').AsString, 1, 4) + '-' +
                                             copy(uniQuery1.FieldByName('PbsNewDte').AsString, 5, 2) + '-' +
                                             copy(uniQuery1.FieldByName('PbsNewDte').AsString, 7, 2) //)
                                   else
                                        ParamByName('first_day').AsString := '';

                                   if
                                        trim(uniQuery1.FieldByName('PbsBirDte').AsString) <> '' then
                                        ParamByName('Birth').AsString
                                             :=
                                             copy(uniQuery1.FieldByName('PbsBirDte').AsString, 1, 4) + '-' +
                                             copy(uniQuery1.FieldByName('PbsBirDte').AsString, 5, 2) + '-' +
                                             copy(uniQuery1.FieldByName('PbsBirDte').AsString, 7, 2)
                                   else
                                        ParamByName('Birth').AsString := '';


                                   ParamByName('personality').AsString := '0';
                                   ParamByName('special').AsString
                                        := '0';
                                   ParamByName('refer_id').AsString
                                        := '0';
                                   ParamByName('fam_id').AsString
                                        := '0';
                                   ParamByName('kwan').AsString :=
                                        '0';
                                   ParamByName('reg_day').AsString
                                        :=
                                        formatDatetime('YYYY-MM-DD',
                                        now);
                                   ParamByName('pibo_id').AsString
                                        := varpiboid;


                                   ParamByName('chamgo').Asstring
                                             := uniQuery1.FieldByName('PbsRefCmt').Asstring;
                                   ExecSQL;

                              end;
                              Application.ProcessMessages;
                              next;
                              Gauge1.Progress := Gauge1.Progress +
                                   1;
                              edtRemain.caption :=
                                   IntToStr(StrToInt(edtRemain.caption) -
                                   1);

                        // end;
                       //end;

                    except
                         on E: Exception do
                         begin
                              memo1.Lines.Add('[' + chartno + ']' +
                                   E.Message);
                              Application.ProcessMessages;
                              next;
                              Gauge1.Progress := Gauge1.Progress +
                                   1;
                              edtRemain.caption :=
                                   IntToStr(StrToInt(edtRemain.caption) -
                                   1);
                         end;
                    end;
               end;

          end;
     end;
end;



procedure Tmigration_f.BitYeyakMove;

const

//     sqltext =
//          'SELECT * from promise ';

     sqltext =
          'SELECT   SUBSTRING(rsvDtm, 9, 4) AS OCMACPTIME,                                                 '+#10+
          ' SUBSTRING(rsvDtm, 1, 8)  AS OCMACPdate, * ,                                                    '+#10+
          '(Select top 1 UidNam  from UidMst where UidCod= RsvInf.RsvUidCod) as UidNam,                    '+#10+
          '(Select top 1 DepKorNam  from DepMst where DepCod= RsvInf.Rsvdepcod) as DepKorNam,              '+#10+
          '(Select top 1 PbsPatNam  from PbsInf where PbsChtNum= RsvInf.RsvChtNum) as PbsPatNam,           '+#10+
          '(Select top 1 PbsResNum  from PbsInf where PbsChtNum= RsvInf.RsvChtNum) as PbsResNum,           '+#10+
          '(Select top 1 PbsCelPhn  from PbsInf where PbsChtNum= RsvInf.RsvChtNum) as PbsCelPhn            '+#10+
          'from RsvInf                                                                                     '+#10+
      //    'WHERE     RsvSts <> ''oc''                                                                      '+#10+
          ' WHERE     RsvSts <> ''oc''  and  rsvDtm >= ''201905240000''                                     '+#10+
          '      and (Select top 1 PbsPatNam  from PbsInf where PbsChtNum= RsvInf.RsvChtNum) is not null   '+#10+
          'order by RsvDtm asc                                                                             ';
//          'WHERE       rsvDtm >= '201808030000' and RsvSts <> ''oc''                '+#10+

var
     varyDay, varyjubsuday, varyTime, varyGubun, varyHwanName,
          varyBtime, varyBDay,
          varyTel, varYremark, varyChartNo, varyDamTeam, varResult, varCancel,
          varVip, varBigo, varDoc: string;
     gi: integer;
     fontcolor, backcolor:string;
     btime, etime, itime : string;
     adoConn : string;
begin
     varybTime := '';
     gi := 0;

//ToDo: 기간 외 삭제는 관리도구에서 해라................................................


//           if Application.MessageBox(pchar('설정기간 중 기존 악속내역이 삭제됩니다..' +
//          #10#13 +
////          '그래도 진행 하시겠습니까?'),
////          '기존 약속내역 삭제 확인', MB_OKCANCEL) = 1 then
////          begin
//
//               with uniQuery2 do
//               begin
//                    close;
//                    SQL.Clear;
//                    SQL.Add('delete from ma_promise where remark  not like ''eecp%'' ');
////                    sql.Add('where pday >= :cadate1 and pday <= :caDate2');
////                    parambyname('caDate1').AsDate := main_f.dtYeyakStart.Date;
////                    parambyname('caDate2').AsDATE := main_f.dtYeyakFinish.Date;
//                    execsql;
//               end;
////          end
////          else
////          begin
////               exit;
////          end;

           with uniQuery1 do
           begin
                close;
                sql.Clear;
                sql.text:=sqltext;
                open;
                first;
                gauge1.Progress := 0;
                Gauge1.MaxValue := RecordCount;
                edtRemain.Caption := IntToStr(RecordCount);

                if RecordCount > 0 then
                begin
                     while not Eof do
                     begin
                          varCancel:='N';
                          varyDay :=
                            copy(  trim(fieldByName('OCMACPdate').asString) ,1,4) +'-'+
                            copy(  trim(fieldByName('OCMACPdate').asString) ,5,2) +'-'+
                            copy(  trim(fieldByName('OCMACPdate').asString) ,7,2);

                          varyjubsuday  := varyDay ;

                          if checkInt(trim(fieldByName('OCMACPTIME').asString)) then
                                varyTime := formatfloat('0000',strtoint(trim(fieldByName('OCMACPTIME').asString)) )
                          else
                                varyTime  := '0000';
                          varyTime      := copy(varyTime, 1, 2) + ':' + copy(varyTime, 3, 2);
                          fontColor     :='';
                          backColor     :='';
                          btime         := '30';
                          etime         := '30';
                          itime         := '30';
                          varyGubun     := '0';
                          varyHwanName  := substr( trim( fieldByName('PbsPatNam').asString) ,1,';');
                          varyTel       :=  trim(fieldByName('PbsCelPhn').asString);
                          varYremark    :=  trim( fieldByName('RsvRefCmt').asString);
                          varResult     :=  ''; //약속만 잡음
                          varyChartNo   :=  trim(fieldByName('RsvChtNum').asString);
                          varyDamTeam   :=  trim( fieldByName('RsvDepCod').asString);
                          varyBtime     :=  varyTime;
                          varyBDay      :=  varyDay;
                          varDoc        :=   trim(fieldByName('RsvDtrCod').asString);
                      //    varyTime := format('<%.4D>',[fieldByName('jintime').asString] );

                          try
                               begin
                                    with uniQuery2 do
                                    begin
                                         close;
                                         SQL.Clear;
                                         SQL.Add('Insert into ma_promise');
                                         sql.Add('(pday, jubsuday, pTime, doc, pinterval, Gubun, Name, Tel, remark, Chart, Team, Cancel, pos, pcolor, f_color) values    ');
                                         sql.Add('(:pday, :jubsuday, :pTime, :doc, :pinterval, :Gubun, :Name, :Tel, :remark, :Chart, :Team,:Cancel,:pos, :pcolor, :f_color)');
                                         parambyname('pDay').AsString      := varYDay;
                                         parambyname('JubsuDay').AsString  := varYjubsuDay;
                                         parambyname('pTime').AsString     := varYTime;
                                         parambyname('pinterval').AsString := itime;// main_f.cbinterval.text;
                                         parambyname('Gubun').AsString     := varyGubun;
                                         parambyname('Name').AsString      := varYHwanName;
                                         parambyname('Tel').AsString       := varYtel;
                                         parambyname('Remark').AsString    := varyRemark;
                                         parambyname('chart').AsString     := varYchartNo;
                                         parambyname('Team').AsString      := varYdamTeam;
                                         parambyname('Cancel').AsString    := varCancel;
                                         parambyname('pos').AsString       := varresult;
                                         parambyname('pcolor').AsString    := backcolor;
                                         parambyname('f_color').AsString   := fontcolor;
                                         parambyname('doc').AsString       := varDoc;
                                         ExecSQL;
                                    end;
                                    Application.ProcessMessages;
                                    next;
                                    Gauge1.Progress := Gauge1.Progress +  1;
                                    edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) -  1);
                               end;
                          except
                               on E: Exception do
                               begin
                                    Application.ProcessMessages;

                                    memo1.Lines.Add('[' + varYchartNo + ']'+#10#13+
                                    'varyjubsuday='  +      varyjubsuday  +#10#13+
                                    'varyTime    ='  +      varyTime      +#10#13+
                                    'varyTime    ='  +      varyTime      +#10#13+
                                    'fontColor   ='  +       fontColor    +#10#13+
                                    'backColor   ='  +       backColor    +#10#13+
                                    'btime       ='  +       btime        +#10#13+
                                    'etime       ='  +       etime        +#10#13+
                                    'itime       ='  +       itime        +#10#13+
                                    'varyGubun   ='  +       varyGubun    +#10#13+
                                    'varyHwanName='  +       varyHwanName +#10#13+
                                    'varyTel     ='  +       varyTel      +#10#13+
                                    'varYremark  ='  +       varYremark   +#10#13+
                                    'varResult   ='  +       varResult    +#10#13+
                                    'varyChartNo ='  +       varyChartNo  +#10#13+
                                    'varyDamTeam ='  +       varyDamTeam  +#10#13+
                                    'varyBtime   ='  +       varyBtime    +#10#13+
                                    'varyBDay    ='  +       varyBDay     +#10#13+
                                    '[promise]' + E.Message);






                                    next;
                                    Gauge1.Progress := Gauge1.Progress +  1;
                                    edtRemain.caption :=  IntToStr(StrToInt(edtRemain.caption) - 1);
                               end;
                          end;
                     end;
                end;
           end;

end;






function Tmigration_f.saveGogekpibo(id,
     pname: string;
     k_number: string;
     jongbyul: string;
     h_zip: string;
     juso: string;
     kiho: string;
     phone: string;
     apply_day: string;
     reg_day: string): string;
const
     dataSelect = 'select * from ma_gogek_pibo' + #10#13 +
          'where id=:id';

     dataInsert =
          'insert into ma_gogek_pibo' + #10#13 +
          '( name, k_number, jongbyul, juso, h_zip, kiho,' + #10#13 +
          ' phone, apply_day, reg_day) values' + #10#13 +
          '( :name, :k_number, :jongbyul, :juso,:h_zip, :kiho,' + #10#13 +
          '  :phone, :apply_day, :reg_day)';
     dataUpdate =
          'update ma_gogek_pibo set' + #10#13 +
          'name=:name, k_number=:k_number, jongbyul=:jongbyul, juso=:juso,h_zip=:h_zip, kiho=:kiho, ' + #10#13
          +
          'phone=:phone, apply_day=:apply_day, reg_day=:reg_day' + #10#13
          +
          'where id= :id';

     dataAllSelect =
          'select * from ma_gogek_pibo' + #10#13 +
          'where name=:name and  k_number=:k_number and  jongbyul=:jongbyul and  h_zip=:h_zip and juso=:juso and kiho=:kiho and ' + #10#13
          +
          'phone=:phone and apply_day=:apply_day and reg_day=:reg_day';

begin
     try
          if pname <> '' then
          begin
               with uniQuery3 do
               begin
                    close;
                    sql.clear;
                    sql.text := dataselect;
                    paramByname('id').asstring := id;
                    open;
                    if isEmpty then
                    begin
                         close;
                         sql.clear;
                         sql.text := dataInsert;
                    end
                    else
                    begin
                         close;
                         sql.clear;
                         sql.text := dataupdate;
                         ParamByName('id').AsString := id;
                    end;
                    ParamByName('name').AsString := pname;
                    ParamByName('k_number').AsString := k_number;
                    ParamByName('jongbyul').AsString := jongbyul;
                    ParamByName('juso').AsString := juso;
                    ParamByName('h_zip').AsString := h_zip;
                    ParamByName('kiho').AsString := kiho;
                    ParamByName('phone').AsString := phone;
                    ParamByName('apply_day').AsString := apply_day;
                    ParamByName('reg_day').AsString := reg_day;
                    execsql;

                    close;
                    sql.clear;
                    sql.text := dataAllSelect;
                    ParamByName('name').AsString := pname;
                    ParamByName('k_number').AsString := k_number;
                    ParamByName('jongbyul').AsString := jongbyul;
                    ParamByName('juso').AsString := juso;
                    ParamByName('h_zip').AsString := h_zip;
                    ParamByName('kiho').AsString := kiho;
                    ParamByName('phone').AsString := phone;
                    ParamByName('apply_day').AsString := apply_day;
                    ParamByName('reg_day').AsString := reg_day;
                    open;
                    if not isEmpty then
                    begin
                         result := fieldByName('id').AsString;
                    end
                    else
                    begin
                         result := '0';
                    end;
               end;
          end
          else
          begin
               result := '0';
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('save_gogek_pibo' + E.Message);
               result := '0';

          end;
     end;
end;

function Tmigration_f.savegogekPhone(id, chart,
     phone: string;
     sms: string;
     kind: string;
     reg_day: string): string;
const
     dataSelect = 'select * from ma_gogek_phone' + #10#13 +
          'where id=:id';
     dataAllSelect = 'select * from ma_gogek_phone' + #10#13 +
          'where chart=:chart and phone=:phone and kind=:kind and sms=:sms and reg_day=:reg_day';

     dataInsert =
          'insert into ma_gogek_phone' + #10#13 +
          '( chart, phone, kind, sms, reg_day) values' + #10#13 +
          '( :chart, :phone, :kind, :sms, :reg_day)';
     dataUpdate =
          'update ma_gogek_phone set' + #10#13 +
          'chart=:chart, phone=:phone, kind=:kind, sms=:sms, reg_day=:reg_day' + #10#13
          +
          'where id= :id';

begin
     try
          //삭제시에는 입력창을 눌러서 지워라...고 말한다.
          if phone <> '' then
          begin
               with uniQuery3 do
               begin
                    close;
                    sql.clear;
                    sql.text := dataselect;
                    paramByname('id').asstring := id;
                    open;
                    if isEmpty then
                    begin
                         close;
                         sql.clear;
                         sql.text := dataInsert;
                    end
                    else
                    begin
                         close;
                         sql.clear;
                         sql.text := dataupdate;
                         ParamByName('id').AsString := id;
                    end;
                    ParamByName('chart').AsString := chart;
                    ParamByName('phone').AsString := phone;
                    ParamByName('sms').AsString := sms;
                    ParamByName('kind').AsString := kind;
                    ParamByName('reg_day').AsString := reg_day;
                    execsql;

                    close;
                    sql.clear;
                    sql.text := dataAllSelect;
                    ParamByName('chart').AsString := chart;
                    ParamByName('phone').AsString := phone;
                    ParamByName('sms').AsString := sms;
                    ParamByName('kind').AsString := kind;
                    ParamByName('reg_day').AsString := reg_day;
                    open;
                    if not isEmpty then
                    begin
                         result := FieldByName('id').AsString;
                    end
                    else
                    begin
                         result := '0';
                    end;

               end;
          end;
     except
          on E: Exception do
          begin
               ExceptLogging('save_gogek_phone' + E.Message);
               result := '0';

          end;
     end;
end;

function Tmigration_f.saveGogekRemark(chart, remark: string;
     reg_day: string): boolean;
begin
     with uniquery3 do
     begin
          close;
          SQL.Clear;
          SQL.Add('insert into ma_gogek_remark');
          Sql.Add('(Chart, remark, kind, code, reg_day) values ');
          Sql.Add('(:Chart, :remark, :kind, :code, :reg_day)');
          ParamByName('chart').AsString := trim(chart);
          ParamByName('remark').AsString := remark;
          ParamByName('reg_day').AsString := reg_day;
          ParamByName('code').AsString := '000';
          ParamByName('kind').AsString := '10';
          execSql;
     end;
end;

function Tmigration_f.saveGogekEmail(chart,
     email: string;
     reg_day: string): boolean;
const
     dataSelect = 'select * from ma_gogek_email' + #10#13 +
          'where chart=:chart';

     dataInsert =
          'insert into ma_gogek_email' + #10#13 +
          '( chart, email, reg_day) values' + #10#13 +
          '( :chart, :email, :reg_day)';
     dataUpdate =
          'update ma_gogek_email set' + #10#13 +
          'email=:email, reg_day=:reg_day' + #10#13
          +
          'where chart= :chart';
     dataDelete =
          'delete from ma_gogek_email' + #10#13 +
          'where chart= :chart';

begin
     try

          if trim(email) <> '' then
          begin
               with uniQuery3 do
               begin
                    close;
                    sql.clear;
                    sql.text := dataselect;
                    paramByname('chart').asstring := chart;
                    open;
                    if isEmpty then
                    begin
                         close;
                         sql.clear;
                         sql.text := dataInsert;
                    end
                    else
                    begin
                         close;
                         sql.clear;
                         sql.text := dataupdate;
                    end;
                    ParamByName('chart').AsString := chart;
                    ParamByName('email').AsString := email;
                    ParamByName('reg_day').AsString := reg_day;
                    execsql;

               end;
               result := true;
          end
          else
          begin
               try
                    with uniQuery3 do
                    begin
                         close;
                         sql.clear;
                         sql.text := datadelete;
                         paramByname('chart').asstring := chart;
                         execsql;

                    end;
                    result := true;
               except
                    on E: Exception do
                    begin
                         ExceptLogging('delete_gogek_email' +
                              E.Message);
                         result := false;

                    end;
               end;

          end;
     except
          on E: Exception do
          begin
               ExceptLogging('save_gogek_email' + E.Message);
               result := false;

          end;
     end;
end;

function Tmigration_f.saveGogekAddress(id, chart,
     postid, zipcode, juso, kind: string;
     reg_day: string): string;
const
     dataSelect = 'select * from ma_gogek_address' + #10#13 +
          'where id=:id';
     dataallSelect = 'select * from ma_gogek_address' + #10#13 +
          'where chart=:chart and postid=:postid and  zipcode=:zipcode and  juso=:juso and  kind=:kind and  reg_day=:reg_day';

     dataInsert =
          'insert into ma_gogek_address' + #10#13 +
          '( chart, postid, zipcode, juso, kind, reg_day)  values' + #10#13
          +
          '(:chart, :postid, :zipcode, :juso, :kind, :reg_day)';
     dataUpdate =
          'update ma_gogek_address set' + #10#13 +
          'chart=:chart, postid=:postid, zipcode=:zipcode, juso=:juso, kind=:kind, reg_day=:reg_day' + #10#13
          +
          'where id= :id';
     dataDelete =
          'delete from ma_gogek_address' + #10#13 +
          'where id= :id';

begin
     try

          if trim(juso) <> '' then
          begin
               with uniQuery3 do
               begin
                    close;
                    sql.clear;
                    sql.text := dataselect;
                    paramByname('id').asstring := id;
                    open;
                    if isEmpty then
                    begin
                         close;
                         sql.clear;
                         sql.text := dataInsert;
                    end
                    else
                    begin
                         close;
                         sql.clear;
                         sql.text := dataupdate;
                         paramByname('id').asstring := id;
                    end;
                    ParamByName('chart').AsString := chart;
                    ParamByName('postid').AsString := postid;
                    ParamByName('zipcode').AsString := zipcode;
                    ParamByName('juso').AsString := juso;
                    ParamByName('kind').AsString := kind;
                    ParamByName('reg_day').AsString := reg_day;
                    execsql;
                    close;
                    sql.clear;
                    sql.text := dataallSelect;
                    ParamByName('chart').AsString := chart;
                    ParamByName('postid').AsString := postid;
                    ParamByName('zipcode').AsString := zipcode;
                    ParamByName('juso').AsString := juso;
                    ParamByName('kind').AsString := kind;
                    ParamByName('reg_day').AsString := reg_day;
                    open;
                    if not isEmpty then
                    begin
                         result := FieldByname('id').asstring;
                    end;
               end;

          end
          else
          begin
               try
                    with uniQuery3 do
                    begin
                         close;
                         sql.clear;
                         sql.text := datadelete;
                         paramByname('id').asstring := id;
                         execsql;

                    end;
                    result := id;
               except
                    on E: Exception do
                    begin
                         ExceptLogging('delete_gogek_address' +
                              E.Message);
                         result := '0';

                    end;
               end;

          end;
     except
          on E: Exception do
          begin
               ExceptLogging('save_gogek_address' + E.Message);
               result := '0';

          end;
     end;
end;



procedure Tmigration_f.suga_modality_eng;
var
    elcCode : string;
    TrnDep , sugaengName : string;
begin
     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add(' select SeeodrCod , SeeElcCod,  SeeTrnDep, SeeEngNam from SeeMst ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   elcCode :=  fieldByname('SeeElcCod').asString;
                   TrnDep  :=  fieldByname('SeeTrnDep').asString;
                   sugaengName  :=  fieldByname('SeeEngNam').asString;
                   try
                         with uniQuery2 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' modality =:modality   ');
                               sql.Add(' , su_Eng_Name =:su_Eng_Name   ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('su_Eng_Name').AsString    :=  sugaengName;
                               parambyname('modality').AsString    :=  TrnDep;
                               parambyname('su_key').AsString      :=  elcCode;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;



procedure Tmigration_f.suga_sutakcomp_up;
var
    elcCode : string;
     sutakcomp : string;
begin
     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add('  select seeoutlab, SeeodrCod , SeeElcCod from SeeMst');
          Sql.Add('  where seeoutlab =''s'' or seeoutlab=''s1''                     ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   elcCode :=  fieldByname('SeeElcCod').asString;
                   sutakcomp  :=  fieldByname('seeoutlab').asString;

                   try
                         with uniQuery2 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' sutakupche =:sutakupche   ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('sutakupche').AsString    :=  sutakcomp;
                               parambyname('su_key').AsString      :=  elcCode;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga sutakcomp SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;



procedure Tmigration_f.suga_gasanCodeKind_up;
var
    elcCode : string;
     seeaddcod : string;
begin

{가산코드
AG6            	소아가산(6세미만)
AGE            	소아가산(8세미만)
ANS            	마취가산(마취단수처리 및 노인,소아, 주야가산)
BLD            	수혈가산 (주사소아가산
BRD            	혈관 조영촬영 가산
BUR            	화상처치가산(주야 가산)
CAS            	케스트 가산 (소아,주야공가산)
DDD            	핵의학과 취급자특수면허 소지자 판독료
DHN            	야간,공휴 가산
DNT            	치과 처치 가산
EDO            	내시경 및 천자및생검
ETR            	응급처치 가산
HAN            	한방 시술및 처치 가산
INJ            	주사 가산 (소아가산)
L01            	약물,독물,유기용제,중금속,세균,진균,바이러스,기생충등.....
LAB            	검사 감산 (화학혈액검사 동일검체 감산)
MDC            	투약 가산 (소아가산)
NCB            	자연분만
NOR            	NORMAL
OXY            	산소재료대 단수 계산
RAD            	방사선 가산 (소아, 투시,스팟트,투시+스팟트)
SUR            	수술 가산 (주야 가산, 재수술)
TRS            	처치 가산 (주야 가산)
}
     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add('  select seeaddcod,   SeeElcCod from SeeMst');
          Sql.Add('  where seeaddcod  <> ''''                  ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   elcCode :=  fieldByname('SeeElcCod').asString;
                   seeaddcod  :=  fieldByname('seeaddcod').asString;

                   try
                         with uniQuery2 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' gasanKind =:gasanKind   ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('gasanKind').AsString    :=  seeaddcod;
                               parambyname('su_key').AsString      :=  elcCode;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga sutakcomp SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;







procedure Tmigration_f.suga_gasanCode_LabGrade_up;
var
    elcCode : string;
     seelabgrade : string;
begin

{가산코드
H : 핵 가산
B: 병리가산
}
     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add('  select seelabgrade,   SeeElcCod from SeeMst');
          Sql.Add('  where seelabgrade  <> ''''                  ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   elcCode :=  fieldByname('SeeElcCod').asString;
                   seelabgrade  :=  fieldByname('seelabgrade').asString;

                   try
                         with uniQuery2 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' sutakgrade =:sutakgrade   ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('sutakgrade').AsString    :=  seelabgrade;
                               parambyname('su_key').AsString      :=  elcCode;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga sutakcomp SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;




procedure Tmigration_f.suga_EngName;
var
    elcCode : string;
    TrnDep  : string;
begin
     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add(' select SeeodrCod , SeeElcCod,  SeeTrnDep , SeeEngNam from SeeMst ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   elcCode :=  fieldByname('SeeElcCod').asString;
                   TrnDep  :=  fieldByname('SeeEngNam').asString;
                   try
                         with uniQuery2 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' su_Eng_Name =:su_Eng_Name   ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('su_Eng_Name').AsString    :=  TrnDep;
                               parambyname('su_key').AsString      :=  elcCode;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;

procedure Tmigration_f.suga_ilbanEk;
var
    elcCode : string;
    ilbanEk  : integer;
begin
     with uniQuery2 do
     begin
          close;
          SQL.Clear;
       //   Sql.Add(' select * from FeeMst where FeeElcCod =:FeeElcCod');
       //     Sql.Add(' select * from suga');
          Sql.Add(' select sugacode from groupsuga');
          Sql.Add(' group by SugaCode ');

          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                //   elcCode :=  fieldByname('su_key').asString;
                    elcCode :=  fieldByname('sugacode').asString;
                 //  ilbanEk  :=  fieldByname('feeNonAmt').asInteger;


                   uniQuery1.Close;
                   uniQuery1.sql.Clear;
                   uniQuery1.Sql.Add(' select top 1 * from FeeMst where FeeElcCod =:FeeElcCod order by FeeAdpDte desc');
                   uniQuery1.paramByName('FeeElcCod').asString :=   elcCode;
                   uniQuery1.Open;

                //   elcCode  :=   uniQuery1.fieldByname('su_key').asString;
                   ilbanEk  :=   uniQuery1.fieldByname('feeNonAmt').asInteger;



                   try
                         with uniQuery3 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' il_dan =:il_dan   ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('il_dan').AsInteger     :=  ilbanek;
                               parambyname('su_key').AsString      :=  elcCode;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;


procedure Tmigration_f.suga_userKey;
var
    elcCode : string;
    odrCod  : string;
begin
     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          Sql.Add(' select  SeeodrCod , SeeElcCod from SeeMst ');
          sql.add(' where SeeElcCod  <> seeodrCod and SeeExpDte >=''99990000'' ');
          if checkbox8.Checked then
          begin
                sql.add(' and seeodrCod like ''c%''  and seeUidCod =''RD1'' ');

          end;

          if checkbox9.Checked then   //drug
          begin
                sql.add(' and seesotcod  =''MED'' ');

          end;


          Sql.Add(' order by SeeElcCod  desc, seeadpdte   asc ');

          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                   elcCode :=  fieldByname('SeeElcCod').asString;
                   odrCod  :=  fieldByname('seeodrCod').asString;

                   try
                         with uniQuery2 do
                         begin

                               close;
                               SQL.Clear;
                               SQL.Add('update suga set');
                               sql.Add(' user_key =:user_key  ');
                               sql.Add(' where su_key= :su_key   ');
                               parambyname('su_key').AsString      :=  elcCode;
                               parambyname('user_key').AsString    :=  odrCod;

                               execsql;

                         end;

                        Application.ProcessMessages;
                        next;
                        Gauge1.Progress   := Gauge1.Progress + 1;
                        edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);

                    except
                        on E: Exception do
                        begin
                              //ShowMessage(E.Message + 'chart' +' [환자정보 이동시 원본데이터 문제발생]');
                              Application.ProcessMessages;
                              memo1.Lines.Add(elcCode +  ' Suga SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress +  1;
                              edtRemain.Caption :=   IntToStr(StrToInt(edtRemain.Caption) - 1);
                        end;
                    end;
               end;
          end;
     end;

end;





procedure Tmigration_f.Bit_LabInfo; //ResInf
var
     chartno, adoConn: string;
begin




     with uniQuery1 do
     begin
          close;
          SQL.Clear;
          sql.add(' select * from ResInf   ');
          Open;
          first;

          Gauge1.Progress := 0;
          Gauge1.MaxValue := RecordCount;
          //    Gauge1.MaxValue := imsi;
          edtRemain.Caption := IntToStr(RecordCount);
          if RecordCount > 0 then
          begin
               while not Eof do
               begin

                    try
                         begin
                              with uniQuery2 do
                              begin

                                   close;
                                   SQL.Clear;
                                   SQL.text := 'Insert into ResInf' +#10+
                                      ' (ResOcmNum  ,ResOdrSeq ,ResSeq ,ResSubSeq ,ResRsbAcp ,ResLabCod '+#10+
                                      ',ResVolFlg ,ResRltSeq ,ResRltVal  ,ResRltCmt  ,ResRepTyp ,ResUpdDtm ,ResUpdUid  ) values '+#10+
                                      ' (:ResOcmNum  , :ResOdrSeq , :ResSeq , :ResSubSeq , :ResRsbAcp , :ResLabCod '+#10+
                                      ', :ResVolFlg , :ResRltSeq , :ResRltVal  , :ResRltCmt  , :ResRepTyp , :ResUpdDtm , :ResUpdUid )';

                                   chartno :=    trim(uniQuery1.FieldByName('ResOcmNum').AsString) ;

                                   lblStat.Caption :=   '검사정보(ResInf)를 이동하고 있습니다  ' +   chartno;
                                   parambyname('ResOcmNum').AsString  := trim( uniQuery1.fieldbyname('ResOcmNum').AsString) ;
                                   parambyname('ResOdrSeq').AsString  := trim( uniQuery1.fieldbyname('ResOdrSeq').AsString) ;
                                   parambyname('ResSeq'   ).AsString  := trim( uniQuery1.fieldbyname('ResSeq'   ).AsString) ;
                                   parambyname('ResSubSeq').AsString  := trim( uniQuery1.fieldbyname('ResSubSeq').AsString) ;
                                   parambyname('ResRsbAcp').AsString  := trim( uniQuery1.fieldbyname('ResRsbAcp').AsString) ;
                                   parambyname('ResLabCod').AsString  := trim( uniQuery1.fieldbyname('ResLabCod').AsString) ;
                                   parambyname('ResVolFlg').AsString  := trim( uniQuery1.fieldbyname('ResVolFlg').AsString) ;
                                   parambyname('ResRltSeq').AsString  := trim( uniQuery1.fieldbyname('ResRltSeq').AsString) ;
                                   parambyname('ResRltVal').AsString  := trim( uniQuery1.fieldbyname('ResRltVal').AsString) ;
                                   parambyname('ResRltCmt').AsString  := trim( uniQuery1.fieldbyname('ResRltCmt').AsString) ;
                                   parambyname('ResRepTyp').AsString  := trim( uniQuery1.fieldbyname('ResRepTyp').AsString) ;
                                   parambyname('ResUpdDtm').AsString  := trim( uniQuery1.fieldbyname('ResUpdDtm').AsString) ;
                                   parambyname('ResUpdUid').AsString  := trim( uniQuery1.fieldbyname('ResUpdUid').AsString) ;

                                   ExecSQL;

                              end;
                              Application.ProcessMessages;
                              next;
                              Gauge1.Progress := Gauge1.Progress +
                                   1;
                              edtRemain.Caption :=
                                   IntToStr(StrToInt(edtRemain.Caption) -
                                   1);
                         end;
                    except
                         on E: Exception do
                         begin

                              Application.ProcessMessages;
                              memo1.Lines.Add(chartno + ' 검사정보(ResInf)   SKIP'+#10#13+ E.Message);
                              next;
                              Gauge1.Progress := Gauge1.Progress + 1;
                              edtRemain.Caption := IntToStr(StrToInt(edtRemain.Caption) - 1);
                         end;
                    end;
               end;
          end;
     end;
     //  showmessage('자료변환을 완료 하였습니다');
end;

end.








