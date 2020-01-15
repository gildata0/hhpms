unit yearAcc;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ExtCtrls, AdvPanel,
      Ansistrings,
     AdvGlassButton, ComCtrls, shellapi, AdvObj, tmsAdvGridExcel, DB,
     AdvSmoothStatusIndicator,
     MemDS, DBAccess, Uni, AdvUtil, FormSize;

type
     TyearAcc_f = class(TForm)
          grdmain: TAdvStringGrid;
          AdvPanel1: TAdvPanel;
          AdvPanelStyler1: TAdvPanelStyler;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          Label8: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label11: TLabel;
          Label12: TLabel;
          Label13: TLabel;
          edtSaupNo: TEdit;
          edtSaupname: TEdit;
          edtCode: TEdit;
          edtDepyoName: TEdit;
          edtTel: TEdit;
          edtBusu: TEdit;
          edtDamName: TEdit;
          edtDamTel: TEdit;
    btnDataMake: TAdvGlassButton;
    btnSunapNeyuk: TAdvGlassButton;
          dtStart: TDateTimePicker;
          dtFinish: TDateTimePicker;
          lblHap: TLabel;
          lblGunSu: TLabel;
          AdvPanel2: TAdvPanel;
          dtmake: TDateTimePicker;
          btnSave: TAdvGlassButton;
          Label15: TLabel;
          Label16: TLabel;
          Progress1: TProgressBar;
          btnSend: TAdvGlassButton;
          Label17: TLabel;
          lblStart: TLabel;
          lblFinish: TLabel;
          lblNo1: TLabel;
          lblNo2: TLabel;
          lblNo3: TLabel;
          lblNo4: TLabel;
    Button1: TButton;
    AdvGridExcelIO1: TAdvGridExcelIO;
    cbLocalExcept: TCheckBox;
    cbBiboExcept: TCheckBox;
    cbTeam: TComboBox;
    Label14: TLabel;
    Label18: TLabel;
    edtGuBun: TEdit;
    lblBohum: TLabel;
    Label20: TLabel;
    lblBibo: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    MinewonIndicator: TAdvSmoothStatusIndicator;
    AdvSmoothStatusIndicator1: TAdvSmoothStatusIndicator;
    AdvSmoothStatusIndicator2: TAdvSmoothStatusIndicator;
    AdvPanel3: TAdvPanel;
    grdBibo: TAdvStringGrid;
    cbHangmok: TCheckBox;
    cbDistinct: TCheckBox;
    exceptIlban: TCheckBox;
    SaveDialog2: TSaveDialog;
    cbOrtho: TCheckBox;
    cbJumin: TCheckBox;
    CheckBox1: TCheckBox;
    Button3: TButton;
    CheckBox2: TCheckBox;
    FormSize1: TFormSize;
          procedure FormShow(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure btnDataMakeClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure btnSendClick(Sender: TObject);
          procedure grdmainClickSort(Sender: TObject; ACol: Integer);
          procedure grdmainCanSort(Sender: TObject; ACol: Integer;
               var DoSort: Boolean);
    procedure grdmainGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grdmainGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure Button1Click(Sender: TObject);
    procedure grdmainDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdmainClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdmainGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grdmainGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSunapNeyukClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dtStartCloseUp(Sender: TObject);
    procedure dtFinishCloseUp(Sender: TObject);
     private
    { Private declarations }
          procedure SaveData;
          procedure FieldSet;
          procedure FieldClear;
    procedure Loadteam;
    procedure loadSums;
    procedure UpdateSums;
    procedure loadBiboHangmok;
     public
    { Public declarations }
     end;

var
     yearAcc_f: TyearAcc_f;

implementation
uses udm, uFunctions, uConfig, uGogekData, sunapsebulist,   uAccVarible;
{$R *.dfm}

procedure TyearAcc_f.FormShow(Sender: TObject);
begin
     caption := '연말정산 간소화 자료 생성기';


     FieldClear;

     Loadteam;
     FieldSet;
end;


procedure TyearAcc_f.FieldClear;
begin


    { edtCode.Text := '';
     edtSaupName.Text := '';
     edtSaupNo.Text := '';

     edtTel.Text := '';
     edtDepyoName.Text := '';
     edtdAMName.Text := '';
     edtdAMTel.Text := '';
     edtBusu.Text := '';
     }
     lblgunsu.Caption := '0';
     lblHap.Caption := '0';

     lblStart.caption := '';
     lblfinish.caption := '';
     edtGuBun.text:='';


end;

procedure TyearAcc_f.FieldSet;
begin
     edtCode.Text      :=  configvalue.varYoyang;//  fieldbyName('jumpocode').AsString;
     edtSaupName.Text  :=  configvalue.varsaupname;// fieldbyName('SaupName').AsString;
     edtSaupNo.Text    :=  configvalue.varsaupNo;// fieldbyName('SaupNo').AsString;

     edtTel.Text       :=  configvalue.varTel1;//  fieldbyName('Tel').AsString;
     edtDepyoName.Text :=  configvalue.varDaepyo;// fieldbyName('DepyoName').AsString;
     edtDamName.Text   :=  configvalue.varDaepyo;// fieldbyName('DamName').AsString;
     edtDamTel.Text    :=  configvalue.varTel1;// fieldbyName('DamTel').AsString;
     edtBusu.Text      :=  configvalue.varsaupname;// fieldbyName('Busu').AsString;

     dtStart.date      := strToDate(inttostr(dateYear(now) )+'-01-01');// 올해
     dtfinish.date     := strToDate(inttostr(dateYear(now) )+'-12-31');// strToDate('2013-12-31');

     dtMake.date       := now;

end;

procedure TyearAcc_f.SaveData;
begin
     if edtCode.Text = '' then
     begin
          showmessage('병원코드를 등록하세요.');
          edtCode.setFocus;
          exit;
     end;
     if edtSaupName.Text = '' then
     begin
          showmessage('병원명을 등록하세요.');
          edtSaupName.setFocus;
          exit;
     end;
     if edtSaupNo.Text = '' then
     begin
          showmessage('사업자등록번호를 등록하세요.');
          edtSaupNo.setFocus;
          exit;
     end;
     if edtTel.Text = '' then
     begin
          showmessage('전화번호를 등록하세요.');
          edtTel.setFocus;
          exit;
     end;
     if edtDepyoName.Text = '' then
     begin
          showmessage('대표자명을 등록하세요.');
          edtDepyoName.setFocus;
          exit;
     end;
    {
     with DM_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('delete from BasicInfo');
          execSql;

          Close;
          Sql.Clear;
          Sql.Add('insert into BasicInfo');
          Sql.Add('(JumpoCode, SaupName, SaupNo, Tel,   DepyoName, damName, damTel, Busu) values');
          Sql.Add('(:JumpoCode, :SaupName, :SaupNo, :Tel,   :DepyoName, :damName, :damTel, :Busu) ');
          ParamByName('JumpoCode').AsString := edtCode.text;
          ParamByName('SaupName').AsString := edtSaupname.text;
          ParamByName('SaupNo').AsString := edtSaupNo.text;
          ParamByName('Tel').AsString := edtTel.text;
          ParamByName('DepyoName').AsString := edtDepyoName.text;
          ParamByName('DamName').AsString := edtDamName.text;
          ParamByName('DamTel').AsString := edtDamTel.text;
          ParamByName('Busu').AsString := edtBusu.text;
          execSql;
     end;
     showmessage('저장되었습니다.');
     }
end;


procedure TyearAcc_f.btnSaveClick(Sender: TObject);
begin
     SaveData;
end;

procedure TyearAcc_f.btnDataMakeClick(Sender: TObject);
var
     varDir: string;
     varSaup: string;
     varChasu: string;


     varNo,
          varKiho,
          varname,
          varJumin,
          varDate,
          varEksu,
          varSpace: string;

     f: textfile;
     i, j: integer;

   state : boolean;
begin



     varsaup := edtSaupNo.text;

     j:=0;


     savedialog1.fileName:=  'G0003_' + deldash(varsaup) + edtcode.text +formatdatetime('YYYYMMDD',now)+ '.D001';
  //   vardir := // 'C:\program files\ftax\input';
     if savedialog1.Execute then
     begin

            //   if not DirectoryExists(vardir) then
            //        if not CreateDir(vardir) then
            //             raise Exception.Create(vardir);



               AssignFile(f, savedialog1.fileName);
               ReWrite(f);
               //집계표 출력
               writeln(f,
                    AnsiStrings.Format('%-10S', [deldash(edtSaupNo.text)]) +
                    AnsiStrings.Format('%-50S', [edtSaupName.text]) +
                    AnsiStrings.Format('%-8S', [edtCode.text]) +
                    AnsiStrings.Format('%-40S', [edtDePyoName.text]) +
                    AnsiStrings.Format('%-20S', [edtTel.text]) +
                    AnsiStrings.Format('%-8S', [formatDateTime('YYYYMMDD', dtmake.date)]) +
                    AnsiStrings.Format('%-50S', [edtBusu.text]) +
                    AnsiStrings.Format('%-40S', [edtDamName.text]) +
                    AnsiStrings.Format('%-20S', [edtDamTel.text]) +
                    AnsiStrings.Format('%-8S', [lblStart.caption]) +
                    AnsiStrings.Format('%-8S', [lblFinish.caption]) +
                    AnsiStrings.Format('%-8S', [formatFloat('00000000', strtofloat(delcomma(lblGunsu.caption)))]) +
                    AnsiStrings.Format('%-15S', [formatFloat('000000000000000', strtofloat(delcomma(lblHap.caption)))]) +
                    Format('%-15S', ['1'])
                    );


               with grdMain do
               begin

                    progress1.Min := 0;
                    progress1.Max := rowcount - 1;
                    progress1.step := rowcount - 1;
                    progress1.Position := 0;


                    for i := 1 to rowcount - 1 do
                    begin
                         if  GetCheckBoxState(15, i, state) = true
                            then
                         begin
                             if state = false then
                             begin

                                    j := j + 1;

                                    varNo := formatFloat('00000000',  j );  //일련번호
                                    varKiho := edtCode.text;//cells[1, i]; //요양기관기호

                                    varname := cells[2, i];  //성명
                                    varJumin := cells[3, i]; //주민번호
                                    varDate := deldash(cells[4, i]); //수납일자

                                    if Floats[5, i] > 0 then         //정산금액
                                         varEksu := formatFloat('000000000000000', Floats[5, i])
                                    else
                                         varEksu := '-' + formatFloat('00000000000000', Floats[5, i] * (-1));
                                    varSpace := '        ';


                                    //명세서 출력

                                    writeln(f,
                                         AnsiStrings.Format('%-8S', [varNo]) +
                                         AnsiStrings.Format('%-8S', [varKiho]) +
                                         AnsiStrings.Format('%-40S', [varName]) +
                                         AnsiStrings.Format('%-13S', [varJumin]) +
                                         AnsiStrings.Format('%-8S', [varDate]) +
                                         AnsiStrings.Format('%-15S', [varEksu]) +
                                         AnsiStrings.Format('%-8S', [varSpace]));


                               end;
                          end;
                          Progress1.Position := Progress1.Position + 1;
                          application.ProcessMessages;


                    end;


               end;

               closefile(f);
               showmessage(savedialog1.fileName + #10#13 + '에 자료생성이 완료되었습니다.'  + #10#13 +
                 '홈택스(https://www.hometax.go.kr)에 로그인하여 생성된 파일 업로드 후 오류 검증후 '  + #10#13 +
                 '오류검증이 끝난 정상파일을 전송하십시오. ');
               end;

end;

procedure TyearAcc_f.FormCreate(Sender: TObject);
begin
     with grdmain do
     begin
          align:=alclient;

          options := options + [goRowselect];
          rowCount := 1;
          colCount := 16;
          Fixedrows := 1;
          FixedCols := 1;
          colwidths[5]:=70;//정산금액
          colwidths[6]:=80;//실수납금액
          colwidths[7]:=70;//보험
          colwidths[8]:=70;//비보험
          colwidths[9]:=70;//현금
          colwidths[10]:=70; //현영
          colwidths[11]:=70; //카드
          colwidths[12]:=70; //통장
          colwidths[13]:=70; //통장현영

          colwidths[14]:=70; //카드

          colwidths[15]:=30; //체크


     end;
     grdBibo.align:=alclient;


     loadBiboHangmok;
end;

procedure TyearAcc_f.btnSendClick(Sender: TObject);
begin
  //   if fileExists('C:\program files\ftax\ftax.exe') then
  //   ShellExecute(GetDeskTopWindow, 'open', Pchar('C:\program files\ftax\ftax.exe'), '', nil, SW_SHOWNORMAL)
  //   else
  //   ShellExecute(GetDeskTopWindow, 'open', Pchar('http://www.yesone.go.kr/home/raeew002.jsp?p_page_no=2&p_mode=view&p_dat_no=20131122109149&p_search_term=&p_attach_file_tp=00&p_search_value='), '', nil, SW_SHOWNORMAL);
   ShellExecute(GetDeskTopWindow, 'open', Pchar('https://www.hometax.go.kr'), '', nil, SW_SHOWNORMAL);
 // http://hmslab2.cafe24.com/xe/index.php?mid=board_jjuG37&document_srl=202
end;

procedure TyearAcc_f.grdmainClickSort(Sender: TObject; ACol: Integer);
begin
     grdmain.AutoNumberDirection   := sdAscending;//,sdDescending

     grdMain.AutoNumberCol(0);
     grdmain.cursor := crDefault;

end;

procedure TyearAcc_f.grdmainCanSort(Sender: TObject; ACol: Integer;
     var DoSort: Boolean);
begin
     grdMain.cursor := crHourGlass;
end;

procedure TyearAcc_f.Loadteam;
begin
     with dm_f.SqlWork do
     begin
          cbTeam.items.Clear;
          cbTeam.items.Add('전체');
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_team');
          Sql.Add('where teamkind  <> ''1''  or teamkind is null ');
          Sql.Add('order by team_name');
          Open;
          First;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbTeam.items.Add(FieldByName('team_doctor1').AsString);

                    next;
               end;
               cbteam.ItemIndex := 0;
          end;
     end;
end;
procedure TyearAcc_f.grdmainGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
     if aRow=0 then
      HAlign:=  taCenter ;
     case aCol of
     0:
     begin
                HAlign:=  taRightJustify;
                VAlign:=  vtaCenter;
     end;
     1,2,3,4,15:
         begin
               HAlign:=  taCenter;// taLeftJustify;
               VAlign:=  vtaCenter;
         end;
     5..14:
         begin
                HAlign:=  taRightJustify;
                VAlign:=  vtaCenter;

         end;
     end;
end;

procedure TyearAcc_f.grdmainGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
     case aCol of
          5..14:
               begin
                    aStyle := ssFinancial;
                    //  aPrefix:='\';
               end;
          15:
          begin

              aStyle :=  ssCheckBox   ;

          end;
     end;

end;

procedure TyearAcc_f.Button1Click(Sender: TObject);
begin
    savedialog1.fileName:= '연말정산간소화자료 수납내역'+formatdatetime('YYYYMMDD', dtstart.date)  +'_'
                    + formatdatetime('YYYYMMDD', dtFinish.date) +'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

procedure TyearAcc_f.grdmainDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
     if (aCol= 1) and (arow > 0) then
     begin

       if not assigned(sunapsebulist_f) then
        begin
           sunapsebulist_f := Tsunapsebulist_f.Create(application);
           sunapsebulist_f.sebusunapCalc(grdmain.cells[1, grdmain.row]);
           sunapsebulist_f.caption := grdmain.cells[2, grdmain.row] + '(' +
               grdmain.cells[1, grdmain.row] + ')' + '님의 수납내역';
           sunapsebulist_f.Show;
        end
        else
        begin
           sunapsebulist_f.sebusunapCalc(grdmain.cells[1, grdmain.row]);
           sunapsebulist_f.Show;
        end;
     end;
end;

procedure TyearAcc_f.grdmainClickCell(Sender: TObject; ARow,  ACol: Integer);
var
   state : boolean;
   i:integer;
begin
     if (acol = 15)  and (aRow = 0)   then
     begin
            for i:= 1 to   grdmain.rowcount-1 do
            begin

                  if grdmain.GetCheckBoxState(acol, 1, state)  = true then
                   begin
                        if state then

                               grdmain.Cells[aCol, i] :=  grdmain.CheckFalse
                        else
                               grdmain.Cells[aCol, i] :=  grdmain.CheckTrue;
                   end;


            end;

     end;


     if (acol = 15)  and (aRow > 0)   then
     begin
            if grdmain.GetCheckBoxState(acol, aRow, state)     = true then
            begin
                   if state then

                          grdmain.Cells[aCol, aRow] :=  grdmain.CheckFalse
                   else
                          grdmain.Cells[aCol, aRow] :=   grdmain.CheckTrue;
            end;

            loadSums;
            UpdateSums;
      end;
end;


procedure TyearAcc_f.loadSums;
var
   state : boolean;
    sumGeumek, sumCount:double;
    i :integer;
begin
     sumCount:=0;
     for i:= 1 to grdmain.rowcount -1 do
     begin
            if grdmain.GetCheckBoxState(15, i, state)     = true then
            begin
                if state = false then
                begin

                     sumGeumek:=   sumGeumek + grdmain.floats[5, i];
                     sumCount:= sumCount + 1;
                end;
            end
            else
            begin
                 if grdmain.cells[15,i]= 'Y' then
                 begin
                     grdmain.AddCheckBox(15, i, true, true) ;
                   end
                 else
                 begin
                     grdmain.AddCheckBox(15, i, false, true);
                     sumGeumek:=   sumGeumek + grdmain.floats[5, i];
                     sumCount:= sumCount + 1;
               end;

            end;
     end;

     grdmain.FloatFormat := '%.0n';
     lblgunsu.caption:= formatFloat('#,0',  sumCount);
     lblHap.caption:=   formatFloat('#,0', sumGeumek);


end;
procedure  TyearAcc_f.UpdateSums;
var
    state : boolean;
    sumGeumek5,
    sumGeumek6,
    sumGeumek7,
    sumGeumek8,
    sumGeumek9,
    sumGeumek10,
    sumGeumek11,
    sumGeumek12,
    sumGeumek13,
    sumGeumek14,
    sumCount:double;
    i :integer;
begin
   //  for i := 1 to grdMain.colcount - 1 do
   //  begin
   //       grdMain.cells[i, 0] := '';
   //  end;
     for i:= 1 to grdmain.rowcount -1 do
     begin
            if grdmain.GetCheckBoxState(15, i, state)     = true then
            begin
                if state = false then
                begin

                     sumGeumek5:=   sumGeumek5 + grdmain.floats[5, i];
                     sumGeumek14:=   sumGeumek14 + grdmain.floats[6, i];  //실수납금액
                     sumGeumek6:=   sumGeumek6 + grdmain.floats[7, i];
                     sumGeumek7:=   sumGeumek7 + grdmain.floats[8, i];
                     sumGeumek8:=   sumGeumek8 + grdmain.floats[9, i];
                     sumGeumek9:=   sumGeumek9 + grdmain.floats[10, i];
                     sumGeumek10:=   sumGeumek10 + grdmain.floats[11, i];
                     sumGeumek11:=   sumGeumek11 + grdmain.floats[12, i];
                     sumGeumek12:=   sumGeumek12 + grdmain.floats[13, i];
                     sumGeumek13:=   sumGeumek13 + grdmain.floats[14, i];

                end;
            end
            else
            begin
                 if grdmain.cells[15,i]= 'Y' then
                 begin
                     grdmain.AddCheckBox(15, i, true, true) ;
                   end
                 else
                 begin
                     grdmain.AddCheckBox(15, i, false, true);



                     sumGeumek5:=   sumGeumek5 + grdmain.floats[5, i];
                     sumGeumek14:=   sumGeumek14 + grdmain.floats[6, i];
                     sumGeumek6:=   sumGeumek6 + grdmain.floats[7, i];
                     sumGeumek7:=   sumGeumek7 + grdmain.floats[8, i];
                     sumGeumek8:=   sumGeumek8 + grdmain.floats[9, i];
                     sumGeumek9:=   sumGeumek9 + grdmain.floats[10, i];
                     sumGeumek10:=   sumGeumek10 + grdmain.floats[11, i];
                     sumGeumek11:=   sumGeumek11 + grdmain.floats[12, i];
                     sumGeumek12:=   sumGeumek12 + grdmain.floats[13, i];
                     sumGeumek13:=   sumGeumek13 + grdmain.floats[14, i];
              end;

            end;
     end;


      grdMain.cells[5, 0] := '정산금액' +#10#13 + formatFloat('#,0',sumgeumek5);  //       grdMain.ColumnSum(5, 1, grdMain.RowCount-1));
      grdMain.cells[6, 0] := '실수납금액'  +#10#13 + formatFloat('#,0',sumgeumek14);  //           grdMain.ColumnSum(6, 1, grdMain.RowCount-1));
      grdMain.cells[7, 0] := '보험'  +#10#13 + formatFloat('#,0',sumgeumek6);  //           grdMain.ColumnSum(6, 1, grdMain.RowCount-1));
      grdMain.cells[8, 0] := '비보험' +#10#13 + formatFloat('#,0',sumgeumek7);  //           grdMain.ColumnSum(7, 1, grdMain.RowCount-1));
      grdMain.cells[9, 0] := '현금'  +#10#13 + formatFloat('#,0',sumgeumek8);  //            grdMain.ColumnSum(8, 1, grdMain.RowCount-1));
      grdMain.cells[10, 0] := '현영' +#10#13 + formatFloat('#,0', sumgeumek9);  //             grdMain.ColumnSum(9, 1, grdMain.RowCount-1));
      grdMain.cells[11, 0]:= '카드'  +#10#13 + formatFloat('#,0',sumgeumek10);  //           grdMain.ColumnSum(10, 1, grdMain.RowCount-1));
      grdMain.cells[12, 0]:= '통장'  +#10#13 + formatFloat('#,0',sumgeumek11);  //            grdMain.ColumnSum(11, 1, grdMain.RowCount-1));
      grdMain.cells[13, 0]:= '통장현영'  +#10#13 + formatFloat('#,0',sumgeumek12);  //        grdMain.ColumnSum(12, 1, grdMain.RowCount-1));
      grdMain.cells[14, 0]:= '기타'  +#10#13 + formatFloat('#,0',sumgeumek13);  //        grdMain.ColumnSum(12, 1, grdMain.RowCount-1));



 //    for i := 5 to 12 do
//          grdMain.Floats[i, 0] := grdMain.ColumnSum(i, 2, grdMain.RowCount-1);
end;


procedure TyearAcc_f.grdmainGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
   state : boolean;
begin

     if grdmain.GetCheckBoxState(14, aRow, state)     = true then
     begin
      if state then
         aBrush.Color:=clyellow
      else
         aBrush.Color:=grdmain.Brush.Color;

      end;
end;

procedure TyearAcc_f.Button2Click(Sender: TObject);
begin
      if openDialog1.Execute then
      grdmain.LoadFromXLS(openDialog1.FileName);
      loadSums;

end;

procedure TyearAcc_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       action:=cafree;
end;

procedure TyearAcc_f.FormDestroy(Sender: TObject);
begin
       yearAcc_f:=nil;
end;

procedure TyearAcc_f.grdmainGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
        if aCol=14 then
          aEditor:=edCheckBox ;
          //fhgfgfgfkjgkfg
end;


procedure TyearAcc_f.loadBiboHangmok;
begin
 with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          grdBibo.RowCount := 1;

          Sql.Add('select * from ma_sunap_hangmok');
          Sql.Add(' order by HangMokCode');
          Open;
          first;
          while not eof do
          begin

                     grdBibo.addrow;
                     grdBibo.Cells[1,   grdBibo.rowcount - 1] :=    FieldByName('HangMokName').AsString;
                     grdBibo.AddCheckBox(2,  grdBibo.rowcount-1, false, false)  ;
             //  if  FieldByName('isBugase').AsString = '1' then
             //    grdBibo.Cells[5, grdbibo.rowcount - 1].asString :=  'V';

               next;
          end;



     end;

end;

procedure TyearAcc_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_f6 then

      begin

        // AdvPanel3.Visible :=not AdvPanel3.Visible;
         cbHangmok.Visible := not  cbHangmok.Visible;
         checkBox1.Visible := not  checkBox1.Visible;
         checkBox2.Visible := not  checkBox2.Visible;

      end;
      if key= vk_f5 then
      begin
        // AdvPanel3.Visible :=not AdvPanel3.Visible;
         cbOrtho.Visible := not  cbOrtho.Visible;
      end;
end;




procedure TyearAcc_f.btnSunapNeyukClick(Sender: TObject);
var
     varGroup, varNum, varRecordCount: integer;

     CountNum: integer;
     varTot: single;
     varSum: single;
     varSum1: single;
     varSum2: single;
     varSum3: single;
     varSum4: single;
     j:integer;

     varQuery:string;
     varQuery2:string;
     sqlQuery : TUniQuery;
begin
     try

         screen.Cursor := crHourGlass;
           sqlQuery := TuniQuery.Create(nil);
           sqlQuery.Connection := dm_f.UniConnection1;

         LoadConstValue;  //쿼리용 변수를  가져온다.

         varQuery := LoadGroupDataQuery;
         varQuery2 := LoadSunapDataQuery;

         grdmain.removeRows(1, grdmain.rowcount-1);

         lblgunsu.Caption := '0';
         lblHap.Caption := '0';

         lblStart.caption := '';
         lblfinish.caption := '';

     

         grdmain.enabled := false;
         btnSunapneyuk.Enabled := false;
         screen.cursor := crHourGlass;
         countNum := 0;
         varSum := 0;
         varSum1 := 0;
         varSum2 := 0;
         varSum3 := 0;
         varSum4 := 0;


        try

         with   grdmain do
         begin

              //수납 uniList Load
              sqlQuery.close;
              sqlQuery.sql.clear;

              if cbHangmok.checked then
              begin

                   if checkBox1.checked then
                   begin

                        sqlQuery.Sql.Text :=
                             varSqlText_hangmok_kind_sunapBibo
                           + varSqlText_where_Term3  ;

                   end
                   else
                   begin

                        sqlQuery.Sql.Text :=
                             varSqlText_hangmok
                           + varSqlText_where_Term
                           + varSqlText_hangmok_kind;

                   end;

                   if checkBox2.checked then
                   begin

                        sqlQuery.Sql.Text :=
                             varSqlText_hangmok5
                           + varSqlText_where_Term
                           + varSqlText_hangmok_kind;

                   end;



              end
              else
              begin

                    if cbDistinct.checked then
                    begin
                          sqlQuery.Sql.Text := varSqlText_distinct + varSqlText_where_Term;
                    end
                    else
                    begin
                          sqlQuery.Sql.Text :=  varSqlText_all + varSqlText_where_Term;
                    end;

                    if cbOrtho.checked then
                    begin
                        //  sqlQuery.Sql.Text :=  varSqlText_except_Ortho ;// + varSqlText_where_Term ;
                        //  sqlQuery.Sql.Text :=    sqlQuery.Sql.Text +     varSqlText_except_Ortho_term;


                       if checkbox2.checked = true then
                          sqlQuery.Sql.Text :=
                             varSqlText_except_Ortho3 +
                             varSqlText_except_Ortho2 +
                             varSqlText_except_Ortho_term

                        else

                          sqlQuery.Sql.Text :=
                             varSqlText_except_Ortho1 +
                             varSqlText_except_Ortho2 +
                             varSqlText_except_Ortho_term;



                      //    sqlQuery.paramByName('sDay1').asString:=  formatDatetime('YYYY-MM-DD', dtStart.date);
                      //    sqlQuery.paramByName('sDay2').asString:=  formatDatetime('YYYY-MM-DD', dtFinish.date);

                    end;

                    if exceptIlban.Checked then
                    begin
                          sqlQuery.Sql.Text := sqlQuery.Sql.Text  + varSqlText_where_ilban;
                    end;

                    if cbBiboExcept.checked = true then    //보험만
                    begin
                           sqlQuery.Sql.Text :=  sqlQuery.Sql.Text  + varSqlText_where_bohum
                    end
                    else   //비보험까지
                    begin
                           sqlQuery.Sql.Text :=  sqlQuery.Sql.Text  + varSqlText_where_bibo;
                    end;

                    if cbLocalExcept.checked = true then    //지역환자 제외
                    begin
                           sqlQuery.Sql.Text :=  sqlQuery.sql.Text  + varSqlText_where_Local;
                    end
              end;



              if cbteam.itemindex > 0 then
              begin
                   sqlQuery.Sql.Text :=  sqlQuery.sql.Text  + varSqlText_where_team;
                   sqlQuery.paramByName('team').asString:= inttostr(cbteam.itemindex);
              end;

//              if trim(edtGubun.text) <> '' then
//              begin
//                   sqlQuery.Sql.Text :=  sqlQuery.sql.Text  + varSqlText_where_kind;
//                   sqlQuery.paramByName('sKind').asString:=  trim(edtGubun.text) ;
//              end;


//               if varviewAll <> true then
//               begin
//                     if varQuery <> '' then
//                          sqlQuery.sql.Add('and (s.chart not in (SELECT DISTINCT chart FROM ma_gogek_group where' + varQuery + ' ) ) ');
//
//
//
//
//                    if varQuery2 <> '' then
//                          sqlQuery.sql.Add('and  (' + varQuery2 + ' or skind is null )' );
//               end;





                if cbOrtho.checked = false then  //교정제외는 order by 따로
                    sqlQuery.Sql.Text :=  sqlQuery.Sql.Text + varSqlText_orderBy
                else
                begin
                     sqlQuery.Sql.Text :=  sqlQuery.Sql.Text + varSqlText_orderBy;
                end;

                          sqlQuery.paramByName('sDay1').asString:=  formatDatetime('YYYY-MM-DD', dtStart.date);
                          sqlQuery.paramByName('sDay2').asString:=  formatDatetime('YYYY-MM-DD', dtFinish.date);


               sqlQuery.open;
               sqlQuery.first;


                  if not  sqlQuery.isEmpty then
                  begin
                       application.ProcessMessages;


                       progress1.Min := 0;
                       progress1.Max :=  sqlQuery.RecordCount;
                       progress1.Position := 0;

                       rowCount :=  sqlQuery.RecordCount  + 1;

                       while not  sqlQuery.eof do
                       begin
                             for j:= 1 to   sqlQuery.RecordCount do
                             begin
                                 // addRow;


                                  if  j = 1 then
                                     lblStart.caption := deldash( sqlQuery.fieldByname('jin_day').asString);


                                  cells[1, j] :=  sqlQuery.fieldByname('chart').asString;//edtCode.text; //요양기관기호
                                  cells[2, j] :=  sqlQuery.fieldByname('name').asString; //이름
                                  cells[3, j] :=  deldash(sqlQuery.fieldByname('jumin').asString); //주민번호
                                  cells[4, j] :=  sqlQuery.fieldByname('jin_Day').asString; //일자



                                  if checkBox1.checked = true then
                                  begin
                                      //Cells[5, j] := formatFloat('#,0', fieldByname('sunapek').asFloat);
                                     //  floats[5, j] :=   sqlQuery.fieldByname('bohum').asFloat + sqlQuery.fieldByname('sGeumek').asFloat;  //금액
                                       floats[5, j] :=    sqlQuery.fieldByname('sGeumek').asFloat;  //금액
                                  end
                                      else
                                      if cbBiboexcept.checked = true then
                                      begin
                                           //  Cells[5, j] := formatFloat('#,0', fieldByname('bohum').asFloat)  //금액
                                           floats[5, j] :=   sqlQuery.fieldByname('bohum').asFloat   //금액
                                      end
                                          else
                                          begin
                                               //   floats[5, j] :=           sqlQuery.fieldByname('sunapek').asFloat;
                                               floats[5, j] :=    sqlQuery.fieldByname('sGeumek').asFloat;
                                          end;

                                  if checkBox1.checked = true then
                                      floats[6, j] := sqlQuery.fieldByname('sunapak').asinteger  //실수납금액
                                  else
                                      floats[6, j] := sqlQuery.fieldByname('sGeumek').asinteger;

                                  floats[7, j] :=  sqlQuery.fieldByname('bonin').asinteger;
                                         {보험
                                          비보험
                                          현금
                                          현금영수증
                                          카드
                                          통장
                                          통장현금영수증
                                          }

                                  floats[8, j] :=  sqlQuery.fieldByname('bonin1').asinteger;
                                  floats[9, j] :=  sqlQuery.fieldByname('cash').asinteger ;
                                  floats[10, j] :=  sqlQuery.fieldByname('hyunreceipt').asinteger ;
                                  floats[11, j] :=  sqlQuery.fieldByname('card').asinteger  ;
                                  floats[12, j] :=  sqlQuery.fieldByname('tong').asinteger  ;
                                  floats[13, j] :=  sqlQuery.fieldByname('tongreceipt').asinteger  ;
                                  floats[14, j] :=  sqlQuery.fieldByname('tong2').asinteger  ;


                                  AddCheckBox(15, j, false, true);

                                  varSum := varSum +  sqlQuery.fieldByname('bonin').asinteger;
                                  varSum2 := varSum2 +    sqlQuery.fieldByname('bonin1').asinteger ;
                                  varSum3 := varSum3 +(  sqlQuery.fieldByname('bonin').asinteger
                                                      +  sqlQuery.fieldByname('bonin1').asinteger);



                                  Progress1.Position := Progress1.Position + 1;
                                  application.ProcessMessages;




                                   sqlQuery.next;


                             end;
                       end;
                       lblFinish.caption := deldash( sqlQuery.fieldByname('jin_day').asString);


                       lblGunSu.caption := formatFloat('#,0', grdMain.rowcount- 1);

                       lblHap.Caption := formatFloat('#,0', grdMain.ColumnSum(5, 1, grdMain.RowCount - 1)); // formatFloat('#,0', varSum); //formatFloat('#,0', varTot);
                       lblBohum.Caption := formatFloat('#,0', varSum);
                       lblBibo.Caption := formatFloat('#,0',varSum2);

                       AutoNumberDirection   := sdAscending;//,sdDescending
                       autonumbercol(0);

                       grdmain.enabled := True;
                       screen.cursor := crDefault;
                       btnSunapneyuk.Enabled := true;

                  end;

                 // showmessage();
             end;


        finally

            btnSunapneyuk.Enabled := true;
            screen.cursor := crDefault;
        end;


        UpdateSums;
     finally
          sqlQuery.free;
          screen.Cursor := crDefault;
     end;

end;

procedure TyearAcc_f.Button3Click(Sender: TObject);
var
    i , aCol: integer;
   state : boolean;
begin
    //   grdMain.sel
    aCol:=15;
 for i := 0 to grdMain.RowCount - 1 do
  begin
    if  grdMain.RowSelect[i] = true then
    begin
                 if grdmain.GetCheckBoxState(acol, i, state)  = true then
                   begin
                        if state then

                               grdmain.Cells[aCol, i] :=  grdmain.CheckFalse
                        else
                               grdmain.Cells[aCol, i] :=  grdmain.CheckTrue;
                   end;


    end;
  end;

end;

procedure TyearAcc_f.dtStartCloseUp(Sender: TObject);
begin
      lblStart.caption:=  formatdatetime('YYYYMMDD', dtStart.Date);
end;

procedure TyearAcc_f.dtFinishCloseUp(Sender: TObject);
begin
      lblFinish.caption:=  formatdatetime('YYYYMMDD', dtFinish.Date);

end;

end.


