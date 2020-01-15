unit sunapsebulist;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
     Forms, inifiles,
     Dialogs, ExtCtrls,
     ComCtrls, StdCtrls,  
     Grids, BaseGrid, AdvGrid, AdvObj, tmsAdvGridExcel, FormSize , AdvEdit,
  AdvUtil;

type
     Tsunapsebulist_f = class(TForm)
          pnlmain: TPanel;
          pnlTop: TPanel;
          DateTimePicker1: TDateTimePicker;
          DateTimePicker2: TDateTimePicker;
          lblSum: TLabel;
          lblJan: TLabel;
          lblPlan: TLabel;
          SaveDialog1: TSaveDialog;
          AdvGridExcelIO1: TAdvGridExcelIO;
          FormSize1: TFormSize;
          grdmain: TAdvStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    edtMonthly: TEdit;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    lblGam: TLabel;
    lblChart: TLabel;
    lblName: TLabel;
    cbTerm: TCheckBox;
    lblHwanbul: TLabel;
    pnlFinal: TPanel;
    spSkinStdLabel3: TLabel;
    spSkinStdLabel4: TLabel;
    spSkinStdLabel2: TLabel;
    spSkinStdLabel5: TLabel;
    spSkinStdLabel6: TLabel;
    spSkinStdLabel7: TLabel;
    spSkinStdLabel8: TLabel;
    spSkinStdLabel1: TLabel;
    spSkinStdLabel9: TLabel;
    spSkinStdLabel10: TLabel;
    btnCls: TButton;
    btnPrt: TButton;
    spSkinButton1: TButton;
    cbTeam: TComboBox;
    edtMonthGeumek: TAdvEdit;
    edtMonthly2: TAdvEdit;
    edtPrevSunap: TAdvEdit;
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure btnPrtClick(Sender: TObject);
          procedure grdmainGetCellColor(Sender: TObject; ARow, ACol: Integer;
               AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
          procedure spSkinButton1Click(Sender: TObject);
          procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
               var AStyle: TSortStyle; var aPrefix, aSuffix: string);
          procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
               var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnClsClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
     private
          { Private declarations }
          //function chongMisuCalc(chartNo: string): double;
          procedure UpdateSums;
     public
          { Public declarations }
          procedure sebusunapCalc(varChart: string; varDate1:string=''; varDate2:string='');
     end;

var
     sunapsebulist_f: Tsunapsebulist_f;

implementation

uses  uConfig, uMain, uDm, sunapSebulistPrt, passInput, uGogekData ;

{$R *.dfm}

procedure Tsunapsebulist_f.sebusunapCalc(varchart: string; varDate1:string=''; varDate2:string='');
var
     varSunapID:string;
     planChong: integer;
     i: integer;
     varQuery:string;
       cKind1 :String;
begin

     varQuery := LoadSunapDataQuery;

     with DM_f.SqlTemp, grdmain do
     begin
          beginUpdate;
          close;
          sql.Clear;
          sql.add('select s.sday,s.s_id,s.team,s.sunapek,s.bohum,s.Chong, s.bugase, s.team,  ');
          sql.add(' s.Chung,s.bonin1,s.etc,s.iilbanek,s.hyun,s.card,s.tong,s.tong2,s.GammyunEk, ');
          sql.add(' s.Chart, s.skind, s.useBohum, ');
          sql.add('i.name,i.first_day,s.misuek,s.HyunReceipt,  s.chamgo, s.hwanbulek, s.hyunreceipt_tong, ');
          sql.add('s.youngsu_num from ma_sunap s join view_gogek i on s.chart=i.chart        ');
          sql.add('where s.chart=:chart');
          if checkBox1.checked=true then
           sql.add(' and ( sunapek > 0 or sunapek < 0) ');

               if varviewAll <> true then
               begin
                    if varQuery <> '' then
                         sql.Add('and  (' + varQuery + ' or skind is null )' );

               end;
          if cbterm.checked=true then
          begin

               sql.add(' and  s.sday between :J1 and :J2')   ;
                    parambyname('j1').AsString :=  varDate1;
                    parambyname('j2').AsString :=  varDate2;

          end;



          if cbTeam.itemindex > 0 then
          begin
               sql.add('and s.team = :team    ');
               parambyname('team').AsString := inttostr(cbTeam.itemindex);
          end;




          sql.Add('order by s.sday desc ');

          {sql.add('select s.sday,s.team,s.sunapek,s.bohum,s.Chong, s.Chung,s.bonin1,s.iilbanek,s.hyun,s.card,s.tong,s.GammyunEk, s.Chart, ');
          sql.add('i.name,i.first_day,s.misuek,s.HyunReceipt, s.etc, s.usebohum, s.chamgo, s.hwanbulek from ma_sunap s join view_gogek i on s.chart=i.chart                     ');
          }
          parambyname('chart').AsString := varChart;
          open;
          first;
          if not DM_f.SqlTemp.isEmpty then
          begin
               rowcount := recordcount + 2;

               while not eof do
               begin
                    for i := 2 to rowcount - 1 do
                    begin
                         {    Cells[1, i] := FieldByname('sday').asString;
                             Cells[2, i] := FieldByname('name').asString;
                             Cells[3, i] := FieldByname('chart').asString;
                             Cells[4, i] := FieldByname('team').asString;
                             floats[5, i] := FieldByname('sunapek').asfloat;
                             floats[6, i] := FieldByname('chong').asfloat;
                             floats[7, i] := FieldByname('chung').asfloat;
                             floats[8, i] := FieldByname('bohum').asfloat;
                             floats[9, i] := FieldByname('bonin1').asfloat;
                             floats[10, i] := FieldByname('iilbanek').asfloat;
                             floats[11, i] := FieldByname('etc').asfloat;
                             floats[12, i] := FieldByname('hyun').asfloat;
                             floats[13, i] := FieldByname('HyunReceipt').asfloat;
                             floats[14, i] := FieldByname('card').asfloat;
                             floats[15, i] := FieldByname('tong').asfloat;
                             floats[16, i] := 0;
                             floats[17, i] := FieldByname('gammyunek').asfloat;
                             ints[18, i] := FieldByname('misuek').AsInteger;
                             Cells[19, i] := FieldByname('first_day').asstring;
                             if fieldbyname('sday').AsString = fieldbyname('first_day').AsString then
                                  Cells[20, i] := '신환'
                             else
                                  Cells[21, i] := '구환';
                             floats[22, i] := FieldByname('hwanbulek').asfloat;
                             Cells[23, i] := FieldByname('chamgo').asstring;
                             if FieldByname('useBohum').asString = '1' then
                                  addCheckBox(24, i, true, true)
                             else
                                  addCheckBox(24, i, false, true);
                             }

                         varSunapID:= FieldByname('s_id').asString;
                         Cells[1, i] := FieldByname('sday').asString;
                         Cells[2, i] := FieldByname('name').asString;
                         Cells[3, i] := FieldByname('chart').asString;
                         Cells[4, i] := loadJinjryosil( FieldByname('team').asString);
                         Floats[5, i] := FieldByname('sunapek').asfloat;
                         Floats[6, i] := FieldByname('chong').asfloat;
                         Floats[7, i] := FieldByname('bohum').asfloat;
                         Floats[8, i] := FieldByname('chung').asfloat;
                         Floats[9, i] := FieldByname('bonin1').asfloat;
                         Floats[10, i] := FieldByname('etc').asfloat;
                         Floats[11, i] := FieldByname('hyun').asfloat;
                         Floats[12, i] := FieldByname('HyunReceipt').asfloat;
                         Floats[13, i] := FieldByname('card').asfloat;
                         Floats[14, i] := FieldByname('tong').asfloat;
                         Floats[15, i] := FieldByname('HyunReceipt_tong').asfloat;
                         Floats[16, i] := FieldByname('tong2').asfloat ;
                         Floats[17, i] := FieldByname('gammyunek').asfloat;
                         ints[18, i] := FieldByname('misuek').AsInteger;
                         ints[19, i] := FieldByname('hwanbulek').AsInteger;


                           cKind1 :='';
                         with dm_f.SqlWork, grdmain do
                         begin
                              Close;
                              Sql.Clear;
                              Sql.Add('select cardkind, sunapid, cardEk from sunapcard where chart=:chart and cardDate=:cardDate');
                              parambyname('chart').AsString := Cells[3, i];
                              parambyname('cardDate').AsString := Cells[1, i];
                              Open;
                              if dm_f.SqlWork.fieldbyname('sunapId').asString <> '' then
                              begin
                                     Close;
                                     Sql.Clear;
                                     Sql.Add('select cardkind, cardEk from sunapcard where sunapid=:sunapid');
                                     parambyname('sunapid').AsString := varSunapID;


                              end
                              else
                              begin

                                     Close;
                                     Sql.Clear;
                                     Sql.Add('select cardkind, cardEk from sunapcard where chart=:chart and cardDate=:cardDate');
                                     parambyname('chart').AsString := Cells[3, i];
                                     parambyname('cardDate').AsString := Cells[1, i];
                              end;
                              Open;

                         if configvalue.varSunapRemarkCardView  ='1' then
                         begin

                              if not dm_f.SqlWork.isEmpty then
                              begin
                                      while not dm_f.SqlWork.eof do
                                      begin
                                           if dm_f.SqlWork.FieldByname('cardEk').asString <> '' then
                                           begin
                                                 if trim(cKind1) <> '' then
                                                      cKind1 := cKind1 + ', ' + dm_f.SqlWork.FieldByname('cardkind').asstring
                                                          + '('+formatfloat('#,0', strtointdef( dm_f.SqlWork.FieldByname('cardEk').asString, 0))+')'
                                                 else
                                                      cKind1 := dm_f.SqlWork.FieldByname('cardkind').asString
                                                             + '('+formatfloat('#,0', strtointdef( dm_f.SqlWork.FieldByname('cardEk').asString, 0))+')';


                                                 Cells[20, i] := cKind1 ;
                                           end;
                                                 dm_f.SqlWork.next;
                                      end;
                               end
                               else
                                    Cells[20, i] := '';
                         end;



                         end;



                         if fieldbyname('sday').AsString = fieldbyname('first_day').AsString then
                              Cells[21, i] := '신환'
                         else
                              Cells[21, i] := '구환';

                         Cells[22, i] := FieldByname('sKind').asstring;
                         Cells[23, i] := FieldByname('chamgo').asstring;

                         if (FieldByname('useBohum').asString = '1') //or  (fieldByName('usebohum').AsString = '')
                          then
                              addCheckBox(24, i, true, true)
                         else
                              addCheckBox(24, i, false, true);

                         if fieldbyname('youngsu_num').AsInteger > 0  then
                              Cells[25, i] := 'O'
                         else
                              Cells[25, i] := 'X';

                         Floats[26, i] := FieldByname('bugase').asfloat;


                         loadReferHospInfo(Cells[3, i], Cells[1, i]);


                         Cells[27, i] := ma_referHospName +'('+ma_referHospName+')';



                         next;
                    end;
               end;

          end
          else
          begin
               rowcount := 2;
          end;
          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not DM_f.SqlTemp.isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add(' * ');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart'); // and chart_id=:chart_id');
          ParamByName('chart').AsString := varChart;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not DM_f.SqlTemp.isEmpty then
          begin
                    edtMonthly.text := fieldByName('Monthly').AsString;
                    edtMonthGeumek.Value := fieldByName('MonthGeumek').AsInteger;
                    memo1.text:=   fieldByName('remark').Asstring;
          end
          else
          begin
                    edtMonthly.text := '0';
                    edtMonthGeumek.Value := 0;
                     memo1.text:= '';
          end;



          //이미 납부한 금액 불러오기


          Close;
          Sql.Clear;
          Sql.Add('Select sum(geumek) as napbuGeumEk from ma_sunap_napbu');
          Sql.Add('where chart=:chart ');

          paramByName('chart').asString := varChart;
          open;
          edtPrevSunap.Value  := FieldByName('napbuGeumEk').AsInteger;




          UpdateSums;

          if RowCount > 0 then
          begin
               lblSum.Caption := formatFloat('#,0', GrdMain.floats[5, 1]);
               lblgam.Caption :=  formatFloat('#,0', GrdMain.floats[17, 1]);

               lblJan.Caption := formatFloat('#,0', chongMisuCalc(varChart));
               lblPlan.Caption := formatFloat('#,0', planChong);

                         if  GrdMain.floats[19, 1] > 0 then   //환불합계
                         begin
                             lblHwanBul.Visible:= true;
                             lblHwanbul.Caption := formatFloat('#,0', GrdMain.floats[19, 1]);
                         end
                         else
                         begin
                             lblHwanbul.Caption := '0';
                         end;
          end
          else
          begin
               lblJan.Caption := '0';
               lblgam.Caption := '0';
               lblSum.Caption := '0';
               lblPlan.Caption := '0';
                lblHwanBul.Visible:= false;
          end;




          grdmain.AutoNumberDirection := sdDescending; //   sdAscending;//
          autonumbercol(0);
          grdmain.AutoSizeCol(0);
          endUpdate;
     end;

end;
{
function Tsunapsebulist_f.chongMisuCalc(chartNo: string): double;
var
     planChong, sunapMisuChong, SunapBohumChong,
          SunapBohumMisuChong,
          MisuChong, sunapChong, BohumChong, bibochong, etcChong: integer;
begin
     with dm_f.SqlWork do
     begin
          //비급여진료 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bonin1) as biboChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               biboChong := FieldByName('biboChong').AsInteger;
          end
          else
          begin

               biboChong := 0;
          end;

          //급여진료 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(Bohum) as bohumChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          Sql.Add(' and usebohum <> ''1'' ');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               bohumChong := FieldByName('bohumChong').AsInteger;
          end
          else
          begin
               bohumChong := 0;
          end;

          //기타 비용
          Close;
          Sql.Clear;
          Sql.Add('select SUM(etc) as etcChong from ma_sunap');
          Sql.Add(' where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               etcChong := FieldByName('etcChong').AsInteger;
          end
          else
          begin

               etcChong := 0;
          end;

          Close;
          Sql.Clear;
         // Sql.Add('select SUM(sunapek + Gammyunek - hwanbulek) as SunapChong from ma_sunap');
           Sql.Add('select SUM(sunapek + Gammyunek ) as SunapChong from ma_sunap');
          Sql.Add(' where chart=:chart');

          {if isinBohum = true then //보험금액 포함이면...
          begin
                 Sql.Add(' and sday >= :sDay');
                 ParamByName('sDay').AsString :=
                        jinryo_f.cbjindan.ColumnItems[jinryo_f.cbjindan.itemindex,
                        1];
          end;
          }
 {         ParamByName('chart').AsString := chartNo;

          Open;

          if not isEmpty then
          begin
               SunapChong := FieldByName('SunapChong').AsInteger;
          end
          else
          begin

               SunapChong := 0;

          end;

          Close;
          Sql.Clear;
          Sql.Add('select  ');
          Sql.Add('sum(subtotal) as sSubtotal');
          Sql.Add(' from ma_tpcharge');
          Sql.Add(' where chart=:chart');
          // and chart_id=:chart_id');
          ParamByName('chart').AsString := chartNo;
          //ParamByName('chart_id').AsString := varplanid;
          Open;
          if not isEmpty then
          begin
               PlanChong := FieldByName('sSubTotal').AsInteger;
          end
          else
          begin
               PlanChong := 0;
          end;

          close;
          sql.Clear;
          sql.Add('select sum(misuek) as misuek from ma_sunap');
          sql.add('where chart=:chart');
          ParamByName('chart').AsString := chartNo;
          Open;
          if not isEmpty then
          begin
               misuChong := FieldByName('misuek').AsInteger;
          end
          else
          begin
               misuChong := 0;
          end;

     end;

     result := planChong + biboChong + etcChong + bohumChong - SunapChong + misuChong;
end;
}

procedure Tsunapsebulist_f.FormShow(Sender: TObject);
begin
     // width := 1024;
     pnlTop.align := alTop;
     pnlMain.align := alClient;
     grdmain.align := alclient;
     dateTimePicker1.Date := now;
     dateTimePicker2.Date := now;
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select Team_doctor1 from ma_team');
          Sql.Add(' order by team_key');
          Open;
          First;
          cbteam.items.Clear;
          cbteam.items.Add('전체');

          if not isEmpty then
          begin
               while not eof do
               begin
                    cbteam.items.Add(FieldByName('Team_doctor1').AsString);
                    next;
               end;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].Values.add(dm_f.Chief);
          end;

     end;
     cbTeam.itemindex := 0;


       if hasSunapFinalinfo(main_f.edtchart.text) = false then
       begin
             pnlFinal.Visible := false ;
             pnlTop.Visible := true ;
             pnlFinal.Align := alClient;
             pnlFinal.Caption := '완납';
       end
       else
       begin
             pnlFinal.Visible := true ;
             pnlTop.Visible := false ;
             pnlFinal.Align := alClient;
             pnlFinal.Caption := '완납';
       end;



end;

procedure Tsunapsebulist_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := cafree;
end;

procedure Tsunapsebulist_f.FormDestroy(Sender: TObject);
begin
     sunapsebulist_f := nil;
end;

procedure Tsunapsebulist_f.btnPrtClick(Sender: TObject);
var
     sunapSebuListPrt_f: TsunapSebuListPrt_f;
begin
     sunapSebuListPrt_f := TsunapSebuListPrt_f.CreateFrm(Self, grdmain);
     try
          with sunapSebuListPrt_f, QuickRep1 do
          begin
               lblsubject.caption := '개인별수납세부내역' +
                //    '(' + main_f.edtname.text + ' ' + main_f.edtChart.text + ')';
                   '(' + lblName.caption + ' ' + lblChart.caption + ')';
               PreviewModal;
               //print;
          end;
     finally
          sunapSebuListPrt_f.Free;
     end;

end;

procedure Tsunapsebulist_f.grdmainGetCellColor(Sender: TObject; ARow,
     ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
     if ARow mod 2 = 0 then
          ABrush.color := $00EFEFEF;

end;

procedure Tsunapsebulist_f.spSkinButton1Click(Sender: TObject);
begin
     savedialog1.fileName := '개인별수납내역' + main_f.edtname.text + main_f.edtchart.text + '.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure Tsunapsebulist_f.UpdateSums;
var
     i: Integer;
begin
     for i := 1 to grdMain.colcount - 1 do
          grdMain.cells[i, 1] := '';

     for i := 5 to 19 do
          grdMain.Floats[i, 1] := grdMain.ColumnSum(i, 2, grdMain.RowCount-1);
     //  grdMain.FloatingFooter.Invalidate;
end;

procedure Tsunapsebulist_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
     var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
     case aCol of
          5..19,26:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
     end;

end;

procedure Tsunapsebulist_f.grdmainGetAlignment(Sender: TObject; ARow,
     ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     case aCol of
          5..19,26:
               begin
                    hAlign := taRightJustify;
               end;
     end;

end;

procedure Tsunapsebulist_f.CheckBox1Click(Sender: TObject);
var
     FormInit: Tinifile;
     varZeroShow:string;
begin
     FormInit := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'db.INI');

      if CheckBox1.Checked then
      FormInit.WriteString('기타정보', 'SUNAPZeroView', '1')
      else
      FormInit.WriteString('기타정보', 'SUNAPZeroView', '0');

     FormInit.Free;
     sebusunapCalc(main_f.edtchart.text);

end;

procedure Tsunapsebulist_f.btnClsClick(Sender: TObject);
begin
    if cbTerm.Checked=true then
    begin
             sebusunapCalc(main_f.edtchart.text,
              formatdatetime('YYYY-MM-DD', datetimepicker1.date),
                     formatdatetime('YYYY-MM-DD', datetimepicker2.date));
    end
    else
    begin
              sebusunapCalc(main_f.edtchart.text);
    
    
    end;
end;

procedure Tsunapsebulist_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    varpass : string;
begin

      if trim(configvalue.varPassAccountFinal) <> '' then
          varpass:=  trim(configvalue.varPassAccountFinal)
      else
          varPass:=  main_f.v_UserPass;

      case key of
            VK_F8 :
            begin
               if (ssShift in shift) and (ssCtrl in Shift) then
               begin

                    PassInput_f :=    TPassInput_f.Create(application);
                    if PassInput_f.Showmodal = mrOK then
                    begin
                       if PassInput_f.edtpass.text = varPass then
                       begin
                          pnlTop.Visible := true;
                          pnlFinal.Visible := false ;
                       end;
                    end;

               end;
            end;
       end;
end;

end.

