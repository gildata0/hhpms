unit addPhone;

interface

uses
       Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
       Forms,
       Dialogs, AdvGlowButton, StdCtrls, AdvCombo, AdvEdit, EllipsLabel,
       ImgList, Grids, BaseGrid, AdvGrid, ExtCtrls, AdvPanel,
       AdvOfficeButtons, AdvObj, AdvUtil;
type
       TGridFindText = record
              varCol: integer;
              varRow: integer;
       end;

type
       TaddPhone_f = class(TForm)
              AdvPanel7: TAdvPanel;
              grdPhone: TAdvStringGrid;
              pnltop: TAdvPanel;
              EllipsLabel25: TEllipsLabel;
              EllipsLabel12: TEllipsLabel;
              edtPhone: TAdvEdit;
              cbKind: TAdvComboBox;
              pnlBottom: TAdvPanel;
              btnCls: TAdvGlowButton;
              lblChart: TLabel;
              lblid: TLabel;
              cbSMS: TAdvOfficeCheckBox;
              btnAdd: TAdvGlowButton;
              btnDel: TAdvGlowButton;
              btnSave: TAdvGlowButton;
    lblname: TLabel;
              procedure FormClose(Sender: TObject; var Action: TCloseAction);
              procedure FormDestroy(Sender: TObject);
              procedure btnSaveClick(Sender: TObject);
              procedure FormShow(Sender: TObject);
              procedure grdPhoneRowChanging(Sender: TObject; OldRow, NewRow:
                     Integer;
                     var Allow: Boolean);
              procedure btnDelClick(Sender: TObject);
              procedure grdPhoneClick(Sender: TObject);
              procedure grdPhoneGetEditorType(Sender: TObject; ACol, ARow:
                     Integer;
                     var AEditor: TEditorType);
              procedure btnAddClick(Sender: TObject);
       private
              { Private declarations }
              ins: boolean;
              procedure fieldclear;
              procedure loadphoneData(varChart: string);
              function loadphonekind(varkind: string): string;
              function FindNumber(varGrid: TadvStringGrid;
                     varNumber: string): TGridfindtext;
       public
              { Public declarations }
       end;

var
       addPhone_f: TaddPhone_f;

implementation
uses uGogekData, umain,  udm, uFunctions;
{$R *.dfm}

procedure TaddPhone_f.fieldclear;
begin
       cbKind.ItemIndex := 0;
       edtPhone.Text := '';
       lblid.caption:='';
end;

procedure TaddPhone_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       action := cafree;
end;

procedure TaddPhone_f.FormDestroy(Sender: TObject);
begin
       addPhone_f := nil;
end;

procedure TaddPhone_f.btnSaveClick(Sender: TObject);
var
       varSms: string;
       varKind: integer;
       varResult: string;
begin

       varKind := cbkind.ItemIndex + 1;
       if cbSms.Checked = true then
       begin
              varSms := '0';

       end
       else
       begin
              varSms := '1';
       end;
       if ins = true then
       begin

              if (FindNumber(grdPhone, call_tel_type(edtphone.Text)).varRow > 0)
                     then
              begin
                     ins := false;
                     exit;
              end;
       end;

       varResult := saveGogekPhone(lblid.Caption,
              lblchart.Caption,
              call_tel_type(edtphone.Text),
              varSMS,
              inttostr(varKind),
              formatDatetime('YYYY-MM-DD', now), lblname.Caption);

       if (varResult <> '0') and
              (varResult <> '') then
       begin
              // btnSave.Enabled := false;
              ins := false;
              loadphoneData(lblchart.Caption);
       end;
end;

function TaddPhone_f.FindNumber(varGrid: TadvStringGrid; varNumber: string):
       TGridfindtext;
var
       res: TPoint;
       findparams: TFindparams;

begin

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
       findparams := findparams + [fnMatchFull];
       res := varGrid.findfirst(varNumber, findparams);
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

procedure TaddPhone_f.loadphoneData(varChart: string);

const
       SelectPhonelist = 'select * from ma_gogek_phone ' + #10#13 +
              'where chart=:chart';
var
       i, recCount: integer;
begin
       grdphone.rowcount := 1;
       with dm_f.SqlWork do
       begin

              Close;
              SQL.Clear;
              sql.text := SelectPhonelist;
              ParamByName('chart').AsString := varChart;
              Open;
              if not IsEmpty then
              begin
                     recCount := recordCount;
                     application.ProcessMessages;

                     grdphone.RowCount := recCount + 1;
                     grdphone.FixedRows := 1;
                     while not dm_f.SqlWork.Eof do
                     begin
                            with grdphone do
                            begin

                                   for i := FixedRows to RowCount - 1 do

                                   begin

                                          Cells[1, i] :=
                                                 loadphoneKind(FieldByName('kind').AsString);
                                          Cells[2, i] :=
                                                 FieldByName('phone').AsString;
                                          if fieldbyName('sms').AsString = '0'
                                                 then
                                                 //선택여부
                                                 AddCheckBox(3, i, true, false)
                                          else
                                                 AddCheckBox(3, i, false,
                                                        false);

                                          Cells[4, i] :=
                                                 FieldByName('kind').AsString;
                                          Cells[5, i] :=
                                                 FieldByName('id').AsString;
                                          dm_f.SqlWork.next;
                                   end;
                                   autonumbercol(0);

                            end;
                     end;
              end;
       end;
end;

procedure TaddPhone_f.FormShow(Sender: TObject);
begin
       with grdPhone do
       begin
              HideColumn(3);
              HideColumn(4);
              HideColumn(5);
       end;
       //btnSave.Enabled := false;
       ins := false;
       loadphoneData(lblchart.Caption);
end;

procedure TaddPhone_f.grdPhoneRowChanging(Sender: TObject; OldRow,
       NewRow: Integer; var Allow: Boolean);
begin
       if grdPhone.RowCount > 1 then
       begin
              cbKind.ItemIndex := grdphone.Ints[4, newrow] - 1;
              edtphone.Text := grdphone.Cells[2, newrow];

              btndel.Enabled := true;
       end;
end;

function TaddPhone_f.loadphonekind(varkind: string): string;
begin
       case StrCase(varkind, ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])
              of
              1: result := '집';
              2: result := '휴대폰';
              3: result := '보호자';
              4: result := '회사';
              5: result := '집2';
              6: result := '휴대폰2';
              7: result := '보호자2';
              8: result := '회사2';
              9: result := '기타';

       end;
end;

procedure TaddPhone_f.btnDelClick(Sender: TObject);
begin

       if grdphone.Cells[5, grdphone.row] <> '' then
       begin
              if DeleteGogekPhone(grdphone.Ints[5, grdphone.row]) = true then
              begin
                     btnDel.Enabled := false;
                     loadphoneData(lblchart.Caption);
                     btnDel.Enabled := true;
                     edtPhone.text:='';
              end;
       end;
end;

procedure TaddPhone_f.grdPhoneClick(Sender: TObject);
var
       stat: boolean;
begin
       if (grdPhone.RowCount > 1) and (grdPhone.Row > 0) then
       begin
              grdphone.getcheckboxstate(3, grdPhone.Row, stat);
              cbKind.ItemIndex := grdphone.Ints[4, grdPhone.Row] - 1;
              edtphone.Text := grdphone.Cells[2, grdPhone.Row];
              lblid.Caption := grdphone.Cells[5, grdPhone.Row];
              cbsms.checked := stat;
              btndel.Enabled := true;
       end;

end;

procedure TaddPhone_f.grdPhoneGetEditorType(Sender: TObject; ACol,
       ARow: Integer; var AEditor: TEditorType);
begin
       case ACol of
              3:
                     begin
                            AEditor := edCheckBox;

                     end;
       end;

end;

procedure TaddPhone_f.btnAddClick(Sender: TObject);
begin
       ins := true;
       fieldclear;
       cbSms.checked := true;
       edtphone.setfocus;

end;

end.

