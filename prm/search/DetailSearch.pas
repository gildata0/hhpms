unit DetailSearch;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, AdvOfficeButtons, StdCtrls, EllipsLabel, AdvGroupBox, ExtCtrls,
     AdvPanel, ComCtrls, AdvGlassButton;

type
     TdetailSearch_f = class(TForm)
          cbname: TAdvOfficeCheckBox;
          cbchartno: TAdvOfficeCheckBox;
          cbtel: TAdvOfficeCheckBox;
          cbbirth: TAdvOfficeCheckBox;
          cbnai: TAdvOfficeCheckBox;
          cbjob: TAdvOfficeCheckBox;
          cbjuso: TAdvOfficeCheckBox;
          cbchamgo: TAdvOfficeCheckBox;
          cbcc: TAdvOfficeCheckBox;
          cbmed: TAdvOfficeCheckBox;
          cbdoctor: TAdvOfficeCheckBox;
          cbpatient: TAdvOfficeCheckBox;
          cbgender: TAdvOfficeCheckBox;
          cbteam1: TAdvOfficeCheckBox;
          cbhp: TAdvOfficeCheckBox;
          cbsoge: TAdvOfficeCheckBox;
          cbyeyak: TAdvOfficeCheckBox;
          cbjinryoneyuk: TAdvOfficeCheckBox;
          cbchart: TAdvOfficeCheckBox;
          cbsunapday: TAdvOfficeCheckBox;
          cbsunapek: TAdvOfficeCheckBox;
          cbsunapbigo: TAdvOfficeCheckBox;
          cbteam3: TAdvOfficeCheckBox;
          cbtelyn: TAdvOfficeCheckBox;
          cbhpyn: TAdvOfficeCheckBox;
          cbjusoyn: TAdvOfficeCheckBox;
          cbemailyn: TAdvOfficeCheckBox;
          cbteam2: TAdvOfficeCheckBox;
          cbjinryo: TAdvOfficeCheckBox;
          edtChart1: TEdit;
          edtTel: TEdit;
          edtNai1: TEdit;
          edtJob1: TEdit;
          edtJuso1: TEdit;
          edtChamgo: TEdit;
          edtCC: TEdit;
          edtMed: TEdit;
          edtDoctor: TEdit;
          edtPatient: TEdit;
          edtBirth1: TEdit;
          edtBirth2: TEdit;
          edtnai2: TEdit;
          edtTeam: TEdit;
          edtSoge: TEdit;
          edthp: TEdit;
          edtJob2: TEdit;
          edtJob3: TEdit;
          edtJob4: TEdit;
          edtjuso2: TEdit;
          edtJuso3: TEdit;
          edtJuso4: TEdit;
          edtChart2: TEdit;
          edtname: TEdit;
          edtc1: TEdit;
          edtJinryo1: TEdit;
          edtc2: TEdit;
          edtc3: TEdit;
          edtc4: TEdit;
          edtJinryo2: TEdit;
          edtJinryo3: TEdit;
          edtJinryo4: TEdit;
          edtsunapbigo: TEdit;
          edtTeam2: TEdit;
          edtsunap1: TEdit;
          edtsunap2: TEdit;
          edtteam3: TEdit;
          dtjS: TDateTimePicker;
          dtjf: TDateTimePicker;
          dtj3: TDateTimePicker;
          dtf4: TDateTimePicker;
          dts5: TDateTimePicker;
          dtf6: TDateTimePicker;
          rbtely: TAdvOfficeRadioButton;
          rbteln: TAdvOfficeRadioButton;
          rbhpy: TAdvOfficeRadioButton;
          rbhpn: TAdvOfficeRadioButton;
          rbjusoy: TAdvOfficeRadioButton;
          rbjuson: TAdvOfficeRadioButton;
          rbemaily: TAdvOfficeRadioButton;
          rbemailn: TAdvOfficeRadioButton;

          gbGender: TAdvGroupBox;
          gbTel: TAdvGroupBox;
          gbHp: TAdvGroupBox;
          gbEmail: TAdvGroupBox;
          gbJuso: TAdvGroupBox;

          EllipsLabel19: TEllipsLabel;
          EllipsLabel20: TEllipsLabel;
          EllipsLabel21: TEllipsLabel;
          EllipsLabel22: TEllipsLabel;
          EllipsLabel17: TEllipsLabel;
          EllipsLabel15: TEllipsLabel;
          EllipsLabel13: TEllipsLabel;
          EllipsLabel24: TEllipsLabel;
          EllipsLabel25: TEllipsLabel;
          EllipsLabel26: TEllipsLabel;
          EllipsLabel23: TEllipsLabel;
          EllipsLabel27: TEllipsLabel;
          EllipsLabel28: TEllipsLabel;
          EllipsLabel29: TEllipsLabel;
          EllipsLabel30: TEllipsLabel;
          EllipsLabel31: TEllipsLabel;
          EllipsLabel32: TEllipsLabel;
          EllipsLabel33: TEllipsLabel;
          EllipsLabel34: TEllipsLabel;
          lblgender: TEllipsLabel;
          EllipsLabel16: TEllipsLabel;
          EllipsLabel18: TEllipsLabel;
          EllipsLabel38: TEllipsLabel;
          EllipsLabel35: TEllipsLabel;
          EllipsLabel36: TEllipsLabel;
          EllipsLabel37: TEllipsLabel;
          EllipsLabel39: TEllipsLabel;
          btnSearch: TAdvGlassButton;
          AdvGlassButton2: TAdvGlassButton;
          AdvPanelStyler1: TAdvPanelStyler;
          AdvPanel1: TAdvPanel;
          AdvGroupBox1: TAdvGroupBox;
          AdvGroupBox2: TAdvGroupBox;
          AdvGroupBox3: TAdvGroupBox;
          AdvGroupBox4: TAdvGroupBox;
          EllipsLabel1: TEllipsLabel;
          EllipsLabel2: TEllipsLabel;
          EllipsLabel3: TEllipsLabel;
          EllipsLabel4: TEllipsLabel;
          EllipsLabel5: TEllipsLabel;
          EllipsLabel6: TEllipsLabel;
          EllipsLabel7: TEllipsLabel;
          EllipsLabel8: TEllipsLabel;
          EllipsLabel9: TEllipsLabel;
          EllipsLabel10: TEllipsLabel;
          EllipsLabel11: TEllipsLabel;
          EllipsLabel12: TEllipsLabel;
          rbman: TAdvOfficeRadioButton;
          rbwoman: TAdvOfficeRadioButton;
          procedure btnSearchClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure cbgenderClick(Sender: TObject);
          procedure cbtelynClick(Sender: TObject);
          procedure cbjusoynClick(Sender: TObject);
          procedure cbemailynClick(Sender: TObject);
          procedure cbhpynClick(Sender: TObject);
          procedure AdvGlassButton2Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
     private
    { Private declarations }
          procedure fieldclear;
     public
    { Public declarations }
     end;

var
     detailSearch_f: TdetailSearch_f;

implementation
uses dm, main, uFunctions;
{$R *.dfm}

procedure TdetailSearch_f.btnSearchClick(Sender: TObject);
var
     varSqlText: string;
begin
     if cbChamgo.Checked = true then
     begin
          varSqlText := varSqlText + ' join hxsremark on view_gogek.chart = hxsremark.srchart '
     end;

     if cbCC.Checked = true then
     begin
          varSqlText := varSqlText + ' join hxcc on view_gogek.chart = hxcc.ccchart           '
     end;

     if cbMed.Checked = true then
     begin
          varSqlText := varSqlText + ' join hxmed on view_gogek.chart = hxmed.medchart        '
     end;

     if cbPatient.Checked = true then
     begin
          varSqlText := varSqlText + ' join hxdesire on view_gogek.chart = hxdesire.dschart   '
     end;

     if cbDoctor.Checked = true then
     begin
          varSqlText := varSqlText + ' join hxdent on view_gogek.chart = hxdent.dchart        '
     end;

     if cbYeyak.Checked = true then
     begin
          varSqlText := varSqlText + ' join yeyak on view_gogek.chart = yeyak.ychartno        '
     end;

     if cbName.checked = true then
     begin
          if varSqlText = '' then
               varSqltext := 'where ' + ' name = ' +''''+ edtName.text+''''
          else
               varSqltext := 'and name = ' + ''''+edtName.text+'''';
     end;

     varSqltext := 'select * from view_gogek ' + varSqltext;
     with dm_f.sqlWork, main_f.grdmain do
     begin
          close;
          sql.Text := varSqltext;
          showmessage(sql.text);
          open;
          if not dm_f.sqlWork.isEmpty then
          begin
               application.ProcessMessages;


             //  main_f.progress1.Min := 0;
            //   main_f.progress1.Max := varRecordCount;
             //  main_f.progress1.step := varRecordCount;
            //   main_f.progress1.Position := 0;

             //  varNum := varRecordCount;
               while not eof do
               begin
                    addRow;
                    AddCheckBox(1, Rowcount - 1, true, true);
                   // cells[0, Rowcount - 1] := inttostr(varnum);
                   // cells[1, Rowcount - 1] := '';
                    cells[2, Rowcount - 1] := fieldByname('team').asString;
                    cells[3, Rowcount - 1] := fieldByname('chart').asString;
                    cells[4, Rowcount - 1] := fieldByname('name').asString;
                    cells[5, Rowcount - 1] := GenderDisp(fieldByname('jumin').asString); //성별
                    cells[6, Rowcount - 1] := naiCalc(fieldByname('jumin').asString); //나이
                    cells[7, Rowcount - 1] := JuminToBirth(fieldByname('jumin').asString); //생일
                    cells[8, Rowcount - 1] := fieldByname('h_zip').asString;
                    cells[9, Rowcount - 1] := fieldByname('h_juso').asString;
                    cells[10, Rowcount - 1] := fieldByname('c_phone').asString;
                    cells[11, Rowcount - 1] := fieldByname('h_phone').asString;
                    cells[12, Rowcount - 1] := fieldByname('refername').asString;
                    cells[13, Rowcount - 1] := fieldByname('mail').asString;
                    cells[14, Rowcount - 1] := fieldByname('first_day').asString;
                    cells[15, Rowcount - 1] := fieldByname('last_day').asString;
                 //   if cb14.Checked = true then
                 //        cells[16, Rowcount - 1] := fieldByname('SRMEMO').asString;


                    // varNum := varNum + 1;
                 //   varNum := varNum - 1;
                    main_f.Progress1.Position := main_f.Progress1.Position + 1;
                    application.ProcessMessages;
                   // main_f.lblNum.Caption := inttostr(varNum);
                    next;
               end;
              // autosizecolumns(false, 10);
               autonumbercol(0);

          end;
     end;


{     with dm_f.sqlWork do
     begin
          sql.Add('select ');
          sql.Add('chart, name, h_juso, h_zip, c_phone, dmemo, dsmemo, srmemo, medmemo, ccmemo, yday, yremark ');
          sql.Add('from view_gogek ');
          if cbChamgo.Checked = true then
          begin
               sql.Add('   join hxsremark on view_gogek.chart = hxsremark.srchart ');
          end;


          if cbCC.Checked = true then
          begin
               sql.Add('   join hxcc on view_gogek.chart = hxcc.ccchart           ');
          end;


          if cbMed.Checked = true then
          begin
               sql.Add('   join hxmed on view_gogek.chart = hxmed.medchart        ');
          end;

          if cbPatient.Checked = true then
          begin
               sql.Add('   join hxdesire on view_gogek.chart = hxdesire.dschart   ');
          end;
          if cbDoctor.Checked = true then
          begin
               sql.Add('   join hxdent on view_gogek.chart = hxdent.dchart        ');
          end;
          if cbYeyak.Checked = true then
          begin
               sql.Add('   join yeyak on view_gogek.chart = yeyak.ychartno        ');
          end;
          sql.Add('where                                                ');
          sql.Add('   chart between :chart1 and :chart2                 ');
          sql.Add('   and substring(jumin, 1, 7) = :jumin               ');
          sql.Add('   and office like  :office                          ');
          sql.Add('   and h_juso like :h_juso                           ');
          sql.Add('   and h_phone like :h_phone                         ');
          sql.Add('   and c_phone like :c_phone                         ');
          sql.Add('   and birth = :birth                                ');
          sql.Add('   and team = :team                                  ');
          sql.Add('   and dmemo like :dmemo                             ');
          sql.Add('   and dsmemo like :dsmemo                           ');
          sql.Add('   and ccmemo like :ccmemo                           ');
          sql.Add('   and medmemo like :medmemo                         ');
          sql.Add('   and srmemo like :srmemo                           ');
          sql.Add('   group by                                          ');
          sql.Add('   chart, name, dmemo, dsmemo, srmemo, medmemo, ccmemo, h_juso, h_zip, c_phone, yday, yremark ');
          parambyname('chart1').AsString := '';
          parambyname('chart2').AsString := '';
          parambyname('jumin').AsString := '';
          parambyname('office').AsString := '';
          parambyname('h_juso').AsString := '';
          parambyname('h_phone').AsString := '';
          parambyname('c_phone').AsString := '';
          parambyname('birth').AsString := '';
          parambyname('team').AsString := '';
          parambyname('dmemo').AsString := '';
          parambyname('dsmemo').AsString := '';
          parambyname('ccmemo').AsString := '';
          parambyname('medmemo').AsString := '';
          parambyname('srmemo').AsString := '';
          open;
     end;
}
end;



procedure TdetailSearch_f.fieldclear;
begin

     cbname.checked := false;
     cbchartno.checked := false;
     cbtel.checked := false;
     cbbirth.checked := false;
     cbnai.checked := false;
     cbjob.checked := false;
     cbjuso.checked := false;
     cbchamgo.checked := false;
     cbcc.checked := false;
     cbmed.checked := false;
     cbdoctor.checked := false;
     cbpatient.checked := false;
     cbgender.checked := false;
     cbteam1.checked := false;
     cbhp.checked := false;
     cbsoge.checked := false;
     cbyeyak.checked := false;
     cbjinryoneyuk.checked := false;
     cbchart.checked := false;
     cbsunapday.checked := false;
     cbsunapek.checked := false;
     cbsunapbigo.checked := false;
     cbteam3.checked := false;
     cbtelyn.checked := false;
     cbhpyn.checked := false;
     cbjusoyn.checked := false;
     cbemailyn.checked := false;
     cbteam2.checked := false;
     cbjinryo.checked := false;
     edtChart1.text := '';
     edtTel.text := '';
     edtNai1.text := '';
     edtJob1.text := '';
     edtJuso1.text := '';
     edtChamgo.text := '';
     edtCC.text := '';
     edtMed.text := '';
     edtDoctor.text := '';
     edtPatient.text := '';
     edtBirth1.text := '';
     edtBirth2.text := '';
     edtnai2.text := '';
     edtTeam.text := '';
     edtSoge.text := '';
     edthp.text := '';
     edtJob2.text := '';
     edtJob3.text := '';
     edtJob4.text := '';
     edtjuso2.text := '';
     edtJuso3.text := '';
     edtJuso4.text := '';
     edtChart2.text := '';
     edtname.text := '';
     edtc1.text := '';
     edtJinryo1.text := '';
     edtc2.text := '';
     edtc3.text := '';
     edtc4.text := '';
     edtJinryo2.text := '';
     edtJinryo3.text := '';
     edtJinryo4.text := '';
     edtsunapbigo.text := '';
     edtTeam2.text := '';
     edtsunap1.text := '';
     edtsunap2.text := '';
     edtteam3.text := '';
     dtjS.date := now;
     dtjf.date := now;
     dtj3.date := now;
     dtf4.date := now;
     dts5.date := now;
     dtf6.date := now;
     rbtely.Checked := false;
     rbteln.checked := false;
     rbhpy.checked := false;
     rbhpn.checked := false;
     rbjusoy.checked := false;
     rbjuson.checked := false;
     rbemaily.checked := false;
     rbemailn.checked := false;
     rbman.checked := false;
     rbwoman.checked := false;

     gbGender.enabled := false;
     gbTel.enabled := false;
     gbHp.enabled := false;
     gbEmail.enabled := false;
     gbJuso.enabled := false;

end;

procedure TdetailSearch_f.FormShow(Sender: TObject);
begin
     caption := '상세검색';
     fieldclear;

end;

procedure TdetailSearch_f.cbgenderClick(Sender: TObject);
begin
     gbgender.Enabled := cbGender.Checked;
     if cbGender.Checked = false then
     begin
          rbman.Checked := false;
          rbwoman.Checked := false;

     end;
end;

procedure TdetailSearch_f.cbtelynClick(Sender: TObject);
begin
     gbtel.Enabled := cbtelyn.Checked;
     if cbtelyn.Checked = false then
     begin
          rbtely.Checked := false;
          rbteln.Checked := false;

     end;

end;

procedure TdetailSearch_f.cbjusoynClick(Sender: TObject);
begin
     gbjuso.Enabled := cbjusoyn.Checked;
     if cbjusoyn.Checked = false then
     begin
          rbjusoy.Checked := false;
          rbjuson.Checked := false;

     end;

end;

procedure TdetailSearch_f.cbemailynClick(Sender: TObject);
begin
     gbemail.Enabled := cbemailyn.Checked;
     if cbemailyn.Checked = false then
     begin
          rbemaily.Checked := false;
          rbemailn.Checked := false;

     end;

end;

procedure TdetailSearch_f.cbhpynClick(Sender: TObject);
begin
     gbhp.Enabled := cbhpyn.Checked;
     if cbhpyn.Checked = false then
     begin
          rbhpy.Checked := false;
          rbhpn.Checked := false;

     end;

end;

procedure TdetailSearch_f.AdvGlassButton2Click(Sender: TObject);
begin
     close;
end;

procedure TdetailSearch_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TdetailSearch_f.FormDestroy(Sender: TObject);
begin
     detailSearch_f := nil;
end;

end.

