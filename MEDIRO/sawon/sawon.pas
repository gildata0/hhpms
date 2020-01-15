unit sawon;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, EllipsLabel,
     AdvGlowButton, Grids, BaseGrid, AdvGrid, AdvSplitter, AdvPanel,
     AdvEdit,  AdvObj, AdvCombo,
     ColCombo, AdvUtil;

type
     Tsawon_f = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    grdSawon: TAdvStringGrid;
    Panel3: TPanel;
    btnNew: TButton;
    btnSave: TButton;
    btnDel: TButton;
    btnClose: TButton;
    Panel1: TPanel;
    edtname: TAdvEdit;
    edtsabun: TAdvEdit;
    edtid: TAdvEdit;
    edtpass: TAdvEdit;
    edtlicen: TAdvEdit;
    edtJumin1: TAdvEdit;
    edtJumin2: TAdvEdit;
    cbNouse: TCheckBox;
    edtJubsuNo: TAdvEdit;
    CheckBox1: TCheckBox;
    cbDoc: TColumnComboBox;
    SaPowerEdit: TComboBox;
    SaTeamEdit: TComboBox;
    SAJIKGUBEdit: TComboBox;
    wLabel30: TLabel;
    wLabel1: TLabel;
    wLabel2: TLabel;
    wLabel3: TLabel;
    wLabel4: TLabel;
    wLabel6: TLabel;
    wLabel7: TLabel;
    wLabel5: TLabel;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
          procedure btnCloseClick(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure FieldClear;
          procedure TeamLoad;
          procedure selectdata;
          procedure btnNewClick(Sender: TObject);
          procedure btnDelClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure edtnameKeyPress(Sender: TObject; var Key: Char);
          procedure edtsabunExit(Sender: TObject);
          procedure GrdSawonMouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure fieldset;
          procedure grdSawonRowChanging(Sender: TObject; OldRow, NewRow:
               Integer;
               var Allow: Boolean);
     private
          { Private declarations }
     public
          inputMode: boolean; //로그인시에 등록하는 모듈인경우 false
          { Public declarations }
     end;

var
     sawon_f: Tsawon_f;

implementation
uses uDm, uMain;
{$R *.dfm}

procedure Tsawon_f.fieldset;
begin
     if dm_f.Sqlwork.RecordCount > 0 then
     begin
          with dm_f.SqlWork do
          begin
               edtsabun.Text := FieldByName('SABUN').AsString;
               edtid.Text := FieldByName('SAID').AsString;
               edtpass.Text := FieldByName('SAPASS').AsString;
               edtname.Text := FieldByName('SANAME').AsString;
               if FieldByName('SAPOWER').AsString <> '' then
                    SaPowerEdit.itemindex :=
                         StrToInt(FieldByName('SAPOWER').AsString) - 1
               else
                    SaPowerEdit.itemindex := -1;
               if FieldByName('SAJIKGUB').AsString <> '' then
                    SaJikGubEdit.itemindex :=
                         StrToInt(FieldByName('SAJIKGUB').AsString) - 1
               else
                    SAJIKGubEdit.itemindex := -1;
               edtlicen.Text := fieldbyname('SaMyunHu').AsString;
               edtjumin1.Text := copy(fieldbyname('sajumin').AsString, 1, 6);
               edtjumin2.Text := copy(fieldbyname('sajumin').AsString, 7, 7);
               edtjubsuNo.Text := fieldbyname('jubsu_order').AsString ;
               if FieldByName('sateam').AsString <> '' then
                   // sateamEdit.itemindex :=
                    cbdoc.ItemIndex :=  cbDoc.ComboItems.IndexOf(FieldByName('sateam').AsString ).y
                     //    StrToInt(FieldByName('sateam').AsString) - 1
               else
                    cbdoc.ItemIndex := -1;//
                 //   sateamEdit.itemindex := -1; //팀
               if FieldByName('nouse').AsString = '1' then
                    cbNouse.checked := true
               else
                    cbNouse.Checked := false;

               if FieldByName('jubsu_use').AsString = '1' then
                    checkbox1.checked := true
               else
                     checkbox1.Checked := false;
          end;
     end;
end;

procedure Tsawon_f.selectdata;
var

     RecCount, i: integer;
begin

     with DM_f.SqlWork do
     begin
          close;
          sql.clear;
          Sql.Add('select * from  ma_sawon_basic');
          sql.add('order by sabun');
          Open;
          if not IsEmpty then
          begin
               recCount := recordCount;
               application.ProcessMessages;
               grdSawon.RowCount := recCount + 1;
               grdSawon.FixedRows := 1;

               while not DM_f.SqlWork.EOF do
               begin

                    with grdsawon do
                    begin

                         for i := FixedRows to RowCount - 1 do

                         begin

                              Cells[1, i] := FieldByName('SaBun').AsString;
                              //챠트
                              Cells[2, i] := FieldByName('SaName').AsString;
                              //성명
                              dm_f.SqlWork.next;
                         end;
                         // autosizecolumns(false, 10);
                         autonumbercol(0);

                    end;

               end;
          end;
     end
end;

procedure TSawon_f.TeamLoad;
begin
     //팀 콤보박스에 아이템 불러오기
     sateamEdit.Items.clear;
     cbDoc.items.clear;
     with Dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_team');
          Sql.Add('order by team_Key');
          Open;
          while not eof do
          begin
                sateamEdit.items.add(FieldByName('team_Doctor1').AsString);



                with cbDoc do
                begin
                         with Columns.Add do    //팀명  team_name
                         begin
                              Width := 0;
                              Font.Style := [fsBold];
                         end;
                         with Columns.Add do  //team_doctor1
                         begin
                              Width := 100;
                         end;
                         with ComboItems.Add do
                         begin
                            Strings.Add(FieldByName('team_name').AsString);
                            Strings.Add(FieldByName('team_doctor1').AsString);

                         end;

                end;
               next;
          end;
     end;

end;

procedure Tsawon_f.FieldClear;
begin
     edtname.Text := '';
     edtsabun.Text := '';
     edtid.Text := '';
     edtpass.Text := '';
     edtlicen.Text := '';

end;

procedure Tsawon_f.btnCloseClick(Sender: TObject);
begin
//     close;
end;

procedure Tsawon_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure Tsawon_f.FormDestroy(Sender: TObject);
begin
     sawon_f := nil;
end;

procedure Tsawon_f.FormShow(Sender: TObject);
begin

     caption := '사원등록';
     FieldClear;
     TeamLoad;
     SelectData;
end;

procedure Tsawon_f.btnNewClick(Sender: TObject);
begin
     FieldClear;
     edtname.SetFocus;
end;

procedure Tsawon_f.btnDelClick(Sender: TObject);
begin
     if MessageDlg('선택하신 자료를 삭제합니까?', MtConfirmation, [mbYes,
          mbNo], 0) = mrYes then
     begin

          with dm_f.sqlwork do
          begin
               close;
               SQL.Clear;
               SQL.ADD('Delete From  ma_sawon_basic');
               Sql.Add('Where Sabun = :Code ');
               ParamByName('Code').AsString := edtsabun.Text;
               ExecSQL;
          end;
     end;
     SelectData;
     FieldClear;
end;

procedure Tsawon_f.btnSaveClick(Sender: TObject);
begin

     if edtname.text = '' then
     begin
          showmessage('성명을 입력하세요.');
          edtname.setfocus;
          exit;
     end;
     if edtid.text = '' then
     begin
          showmessage('ID를 입력하세요.');
          edtid.setfocus;
          exit;
     end;
     if edtpass.text = '' then
     begin
          showmessage('Password를 입력하세요.');
          edtpass.setfocus;
          exit;
     end;
     if edtsabun.text = '' then
     begin
          showmessage('사번을 입력하세요.');
          edtsabun.setfocus;
          exit;
     end;

     with dm_f.sqlTemp do
     begin
          close;
          SQL.Clear;
          SQL.Add('Select * from  ma_sawon_basic');
          Sql.Add('Where Sabun=:Sabun');
          ParambyName('Sabun').AsString := edtsabun.Text;
          Open;
          if IsEmpty then
          begin

               //여기서 부터 다시 작업

               with dm_f.sqlwork do
               begin
                    close;
                    SQL.Clear;
                    SQL.Add('Insert into ma_sawon_basic');
                    Sql.Add('(SABUN, SAID, SAPASS,SAPOWER,SANAME,');
                    Sql.Add('SAJIKGUB,sateam,SaMyunHu, sajumin, nouse, jubsu_order, jubsu_use) values');
                    Sql.Add('(:SABUN, :SAID, :SAPASS, :SAPOWER, :SANAME, ');
                    Sql.Add(':SAJIKGUB,:sateam,:SaMyunHu, :sajumin, :nouse, :jubsu_order, :jubsu_use)');

                    ParamByName('SABUN').AsString := edtsabun.Text;
                    ParamByName('SAID').AsString := edtid.Text;
                    ParamByName('SAPASS').AsString := edtpass.Text;
                    ParamByName('SAPOWER').AsString :=
                         IntToStr((SaPowerEdit.itemindex) + 1);
                    ParamByName('SANAME').AsString := edtname.Text;
                    ParamByName('SAJIKGUB').AsString :=
                         IntToStr((SaJikGubEdit.itemindex) + 1);
                    ParamByName('sateam').AsString :=     cbDoc.ColumnItems[cbDoc.itemindex, 0];


                     //    IntToStr((sateamEdit.itemindex) + 1);
                    parambyname('SaMyunHu').AsString := edtlicen.Text;
                    parambyname('Sajumin').AsString := edtjumin1.Text + edtJumin2.text;
                    parambyname('jubsu_order').AsString := edtJubsuNo.text;
                    if checkBox1.checked then
                       parambyname('jubsu_use').AsString := '1'
                    else
                       parambyname('jubsu_use').AsString := '' ;//

                    if cbNoUse.checked then
                         parambyname('noUse').AsString := '1'
                    else
                         parambyname('noUse').AsString := '0';

                    ExecSQL;
               end;
               Showmessage('등록완료');
          end
          else
          begin
               with dm_f.sqlwork do
               begin
                    close;
                    SQL.Clear;
                    SQL.Add('Update ma_sawon_basic Set');
                    Sql.Add('SAID=:SAID, SAPASS=:SAPASS, SAPOWER=:SAPOWER, SANAME=:SANAME, noUse=:noUse,');
                    Sql.Add('SAJIKGUB=:SAJIKGUB,sateam=:sateam,SaMyunHu=:SaMyunHu, sajumin=:sajumin');
                    Sql.Add(', jubsu_order =:jubsu_order, jubsu_use =  :jubsu_use ');
                    SQL.Add('Where Sabun = :sabun');
                    parambyname('sabun').AsString := edtsabun.Text;
                    ParamByName('SAID').AsString := edtid.Text;
                    ParamByName('SAPASS').AsString := edtpass.Text;
                    ParamByName('SAPOWER').AsString :=
                         IntToStr((SaPowerEdit.itemindex) + 1);
                    ParamByName('SANAME').AsString := edtname.Text;
                    ParamByName('SAJIKGUB').AsString :=
                         IntToStr((SaJikGubEdit.itemindex) + 1);
                    ParamByName('sateam').AsString :=     cbDoc.ColumnItems[cbDoc.itemindex, 0];
                      //   IntToStr((sateamEdit.itemindex) + 1);
                    parambyname('SaMyunHu').AsString := edtlicen.Text;
                    parambyname('Sajumin').AsString := edtjumin1.Text + edtJumin2.text;
                    if cbNoUse.checked then
                         parambyname('noUse').AsString := '1'
                    else
                         parambyname('noUse').AsString := '0';

                    parambyname('jubsu_order').AsString := edtJubsuNo.text;
                    if checkBox1.checked then
                       parambyname('jubsu_use').AsString := '1'
                    else
                       parambyname('jubsu_use').AsString := '' ;//


                    ExecSQL;
               end;
               Showmessage('수정완료');

          end;
     end;
     SelectData;
end;

procedure Tsawon_f.edtnameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end;
end;

procedure Tsawon_f.edtsabunExit(Sender: TObject);
begin
     //이미 등록된 사번인지체크
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From  ma_sawon_basic');
          Sql.Add('Where SaBun = :SaBun');
          ParamByName('SaBun').AsString := edtsabun.Text;
          Open;
     end;
     if DM_f.SqlWork.RecordCount > 0 then
     begin
          ShowMessage('[' + edtsabun.Text + ']' +
               '이미 사용중인 사번입니다.');
          edtsabun.Text := '';
          edtsabun.Setfocus;
          Exit;
     end;
end;

procedure Tsawon_f.GrdSawonMouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Integer);
var
     arow: integer;
begin
     aRow := GrdSawon.Row;
     if GrdSawon.rowcount > 1 then
     begin
          with DM_f.SqlWork do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Select * From  ma_sawon_basic');
               Sql.Add('Where SaBun = :SaBun');
               ParamByName('SaBun').AsString := GrdSawon.Cells[1, Arow];
               Open;
          end;
          Fieldset;
     end;
end;

procedure Tsawon_f.grdSawonRowChanging(Sender: TObject; OldRow,
     NewRow: Integer; var Allow: Boolean);
var
     arow: integer;
begin
     aRow := GrdSawon.Row;
     with DM_f.SqlWork do
     begin
          Close;
          SQL.Clear;
          SQL.Add('Select * From  ma_sawon_basic');
          Sql.Add('Where SaBun = :SaBun');
          ParamByName('SaBun').AsString := GrdSawon.Cells[1, Arow];
          Open;
     end;
     Fieldset;
end;

end.

