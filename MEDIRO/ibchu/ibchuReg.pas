unit ibchuReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, ComCtrls,
  AdvProgressBar, AdvEdit, AdvGlowButton,  tmsAdvGridExcel,
  ExtCtrls, AdvPanel, EllipsLabel, AdvUtil;

type
  TibchuReg_f = class(TForm)
    grdprm: TAdvStringGrid;
    AdvPanel2: TAdvPanel;
    AdvGlowButton1: TAdvGlowButton;
    EdtSch2: TAdvEdit;
    AdvGlowButton2: TAdvGlowButton;
    SaveDialog2: TSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    AdvGlowButton3: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    lblshowtime: TEllipsLabel;
    lblCount: TEllipsLabel;
    lbltime: TEllipsLabel;
    AdvGlowButton4: TAdvGlowButton;
    cbGubun: TComboBox;

    procedure SelectData;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboLoad(varUcCode: string);
    procedure grdprmClickSort(Sender: TObject; ACol: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure grdprmDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    varbankname:  string;
    function loadUcType(uctype:integer):string;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  ibchuReg_f: TibchuReg_f;

implementation
uses uDM, ibchuRegInput;

{$R *.dfm}



procedure TibchuReg_f.SelectData;
const
       SelectGogek = 'select * from tblUpche ';
       SQL_SELECT_orderby0 = 'ORDER BY UcCode       ';


       SQL_SELECT_Where_name = 'where UcSangho like :name ';
       SQL_SELECT_orderby = 'ORDER BY UcSangho       ';

       SQL_SELECT_Where_chart = 'where UcDaepyo like :name ';
       SQL_SELECT_orderby2 = 'ORDER BY UcDaepyo ';

       SQL_SELECT_Where_tel = 'where UcDamdang like :name ';
       SQL_SELECT_orderby3 = 'ORDER BY UcDamdang ';

var
       varChart, j:string;
        RecCount, roC, i: integer;
       stime: integer;
begin

     with dm_f.SqlWork do
     begin

       case cbGubun.ItemIndex of
         0:    //모두검색
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_orderby0;
            end;

         1:   //거래처명
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_name;
              sql.text := sql.text + SQL_SELECT_orderby;
              paramByName('name').asString := '%' + edtSch2.text + '%';
            end;

         2:   //대표자명
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_chart;
              sql.text := sql.text + SQL_SELECT_orderby2;
              paramByName('name').asString := '%' + edtSch2.text + '%';
            end;

         3:  //담당자명
            begin
              Close;
              SQL.Clear;
              sql.text := SelectGogek;
              sql.text := sql.text + SQL_SELECT_Where_tel;
              sql.text := sql.text + SQL_SELECT_orderby3;
              paramByName('name').asString := '%' + edtSch2.text + '%';
            end;


            
        end;

              Open;
              grdprm.FixedRows := 1;
              grdprm.RowCount := 1;

              if not IsEmpty then
              begin
                     recCount := recordCount;
                     //application.ProcessMessages;

                     lbltime.Caption := '검색소요시간:' +
                                   inttostr(gettickCount -
                                   stime) + 'ms';
                     grdprm.RowCount := recCount + 1;

                            while not dm_f.SqlWork.Eof do
                            begin
                                   with grdprm, dm_f.SqlWork do
                                   begin

                                          for i := FixedRows to RowCount - 1 do
                                          begin

                                                 Cells[1, i] :=
                                                      loadUcType(FieldByName('UcType').AsInteger ) ;
                                                 Cells[2, i] :=
                                                        FieldByName('UcSangho').AsString;
                                                 Cells[3, i] :=
                                                        FieldByName('UcDaepyo').AsString;
                                                 Cells[4, i] :=
                                                        FieldByName('UcTel1').AsString;
                                                 Cells[5, i] :=
                                                        FieldByName('UcTel2').AsString;
                                                 Cells[6, i] :=
                                                        FieldByName('UcDamdang').AsString;
                                                 Cells[7, i] :=
                                                        FieldByName('UcHp2').AsString;

                                                 ComboLoad(FieldByName('UcBankCode').AsString);

                                                 Cells[8, i] :=
                                                        varbankname;   // 은행 명

                                                 Cells[9, i] :=
                                                        FieldByName('UcBankUser').AsString; //예금주
                                                 Cells[10, i] :=
                                                        FieldByName('UcBankSerial').AsString;  //게좌번호


                                                 Cells[11, i] :=
                                                        FieldByName('UcBankCode').AsString;   //은행코드
                                                 Cells[12, i] :=
                                                        FieldByName('UcCode').AsString;   //거래처코드

                                                 dm_f.SqlWork.next;

                                          end;

                                          autonumbercol(0);

                                   end;
                            end;

                            lblCount.Caption := inttostr(grdprm.RowCount - 1) +
                                   '업체가 검색되었습니다.';

                        //    lblshowtime.Caption := '화면표시시간:' +
                        //           inttostr(gettickCount -
                        //           stime) + 'ms';

              end;

   end;

end;


procedure TibchuReg_f.AdvGlowButton2Click(Sender: TObject);
begin
     SelectData;
end;

procedure TibchuReg_f.FormShow(Sender: TObject);
begin

     caption := '거래처검색';

     cbGubun.Itemindex := 1;
     with grdprm do
     begin
        ColWidths[11] := 0;
        ColWidths[12] := 0;
     end;

     SelectData;
end;

procedure TibchuReg_f.ComboLoad(varUcCode: string);
const

     Select_Bank = 'Select * from ma_basic_Bank' + #13#10 +
           'where BankCode=:BkCode';

begin

     with dm_f.sqlTemp do
     begin
          SQL.Text := Select_Bank;
          paramByName('BkCode').AsString := varUcCode;
          Open;

          if not IsEmpty then
             varbankname := FieldByname('BankName').AsString
          else
             varbankname := '';

     end;

end;

procedure TibchuReg_f.grdprmClickSort(Sender: TObject; ACol: Integer);
begin
    grdprm.cursor := crDefault;
end;

procedure TibchuReg_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TibchuReg_f.FormDestroy(Sender: TObject);
begin
        ibchuReg_f := nil;
end;

procedure TibchuReg_f.AdvGlowButton1Click(Sender: TObject);
begin
       savedialog2.filename := '거래처명부' +
              formatdatetime('YYYYMMDD', now);

       if savedialog2.execute then
       begin
              if fileexists(savedialog2.filename) then
                     deletefile(savedialog2.filename);
               advgridexcelio1.XLSExport(savedialog2.filename);
       end;
end;

procedure TibchuReg_f.grdprmDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

  if arow > 0 then
  begin

    if not Assigned(ibchuRegInput_f) then
          ibchuRegInput_f := TibchuRegInput_f.Create(application);
     ibchuRegInput_f.varsmode := grdprm.Cells[12, arow];
     ibchuRegInput_f.ShowModal;
    // ibchuRegInput_f.fieldset(grdprm.Cells[12, arow]);
     SelectData;
  end;

end;

procedure TibchuReg_f.AdvGlowButton3Click(Sender: TObject);
begin

   if not Assigned(ibchuRegInput_f) then
   begin
          ibchuRegInput_f := TibchuRegInput_f.Create(application);
       ibchuRegInput_f.varsmode := '';
       ibchuRegInput_f.ShowModal;



   end;


   SelectData;


end;

procedure TibchuReg_f.AdvGlowButton4Click(Sender: TObject);
begin
     if Application.MessageBox(pchar(grdprm.Cells[2, grdprm.Row]
          + '자료를 삭제 하시겠습니까?'), '확인', MB_OKCANCEL) = 1 then
     begin
         with dm_f.SqlWork do
         begin
                  Close;
                  SQL.Clear;
                  sql.text :=  'delete   from tblUpche where   UcCode = :UcCode';
                  paramByName('UcCode').AsString := grdprm.Cells[12, grdprm.row];
                  execsql;
         end;
         SelectData;
     end;
end;

function TibchuReg_f.loadUcType(uctype:integer):string;
begin
 case uctype of
     0: result:= '거래처';
     1: result:= '재료상';
     2: result:= '기공소';
     3: result:= '기타';
 end;

end;



end.

