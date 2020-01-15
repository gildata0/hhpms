unit regiSchedure;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls,
     Mask,  Grids,
     AdvObj, BaseGrid, AdvGrid, tmsAdvGridExcel, ComCtrls, AdvUtil;

type
     TregiSchedule_f = class(TForm)
          GrdWork2: TAdvStringGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Label4: TLabel;
    spSkinButton4: TButton;
    spSkinLabel2: TLabel;
    spSkinLabel3: TLabel;
    spSkinLabel9: TLabel;
    spSkinDateEdit3: TDateTimePicker;
    spSkinDateEdit4: TDateTimePicker;
    spSkinComboBox5: TComboBox;
    spSkinEdit1: TEdit;
    Panel2: TPanel;
    EdtId: TEdit;
    EdtName: TEdit;
    EdtCode: TEdit;
    BtnPrt2: TButton;
    BtnIns: TButton;
    BtnDel: TButton;
    btnSave: TButton;
    wLabel6: TLabel;
    wLabel1: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    spSkinButton1: TButton;
    spSkinButton2: TButton;
    spSkinButton3: TButton;
    spSkinButton5: TButton;
    wLabel9: TLabel;
    spSkinLabel1: TLabel;
    spSkinLabel4: TLabel;
    spSkinLabel5: TLabel;
    spSkinLabel6: TLabel;
    spSkinLabel7: TLabel;
    spSkinLabel8: TLabel;
    spSkinLabel10: TLabel;
    rgProcess: TRadioGroup;
    RadioGroup1: TRadioGroup;
    spSkinGroupBox1: TGroupBox;
    memResult: TMemo;
    spSkinGroupBox2: TGroupBox;
    memWork: TMemo;
    DeDate: TDateTimePicker;
    deEndday: TDateTimePicker;
    deRegDay: TDateTimePicker;
    deDispDay: TDateTimePicker;
    CmTime: TComboBox;
    CmMinute: TComboBox;
    cbSect: TComboBox;
    cbSawon: TComboBox;
    cbWorkArea: TComboBox;
    cmEndtime: TComboBox;
    cmEndMin: TComboBox;
    edtRefer: TEdit;
    Label6: TLabel;
    edtTitle: TEdit;
          procedure BtnInsClick(Sender: TObject);
          procedure BtnSaveClick(Sender: TObject);
          procedure BtnDelClick(Sender: TObject);
          procedure BtnPrt2Click(Sender: TObject);
          procedure EdtIdKeyPress(Sender: TObject; var Key: Char);
          procedure EdtNameKeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure cbSawonChange(Sender: TObject);
          procedure GrdWork2MouseDown(Sender: TObject; Button: TMouseButton;
               Shift: TShiftState; X, Y: Integer);
          procedure spSkinButton2Click(Sender: TObject);
          procedure spSkinButton3Click(Sender: TObject);
          procedure spSkinButton1Click(Sender: TObject);
    procedure GrdWork2GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure spSkinButton5Click(Sender: TObject);
     private
          procedure LoadCombo;
          { Private declarations }
     public
          { Public declarations }
          procedure SelectDataSWork;
          procedure fieldset(ARow: integer);
          function FindGridFirst(varGrid: TadvStringGrid;
               varSearch: string): boolean;
     end;

var
     regiSchedule_f: TregiSchedule_f;

implementation

uses  uDM, uFunctions, uGogekData, uMain, sawon;//, RScheDulePrt;//, workSect, workArea,

{$R *.dfm}

procedure TregiSchedule_f.BtnInsClick(Sender: TObject);
var
     MaxSwCode: string;
begin

     with Dm_f.SqlWork do
     begin
          CLOSE;
          Sql.Clear;
          Sql.Add('Select Max(SwCode) As MSwCode from ma_sawon_work');
          Open;
          MaxSwCode := FieldByName('MSWCode').AsString;

          if MaxSwCode <> '' then
               MaxSwCode :=
                    FormatFloat('000000', (StrToInt(MaxSwcode) + 1))
          else
               MaxSwCode := '000001';

     end;

     //DeDate.Date := now;
     CmTime.itemindex := 0;
     CmMinute.itemindex := 0;
     MemWork.Text := '';
     MemResult.Text := '';

     EdtCode.Text := MaxSwCode;

     // if EdtId.Text <> '' then
     //      DeDate.SetFocus
     // else
     //      EdtId.SetFocus;
      //if cbSawon.Text <> '' then
     //      DeDate.SetFocus
     // else
     //      cbSawon.SetFocus;

end;

procedure TregiSchedule_f.BtnSaveClick(Sender: TObject);
var
     MaxSwCode: string;
begin
     //     if EdtId.Text <> '' then
     //     begin
     with Dm_f.SqlWork do
     begin
          CLOSE;
          Sql.Clear;
          Sql.Add('Select Max(SwCode) As MSwCode from ma_sawon_work');
          Open;
          MaxSwCode := FieldByName('MSWCode').AsString;
     end;
     with Dm_f.SqlWork do
     begin
          CLOSE;
          Sql.Clear;
          Sql.Add('Select * from ma_sawon_work');
          Sql.Add('Where SwCode=:SwCode');
          ParamByName('SwCode').AsString := EdtCode.Text;
          Open;
     end;

     if Dm_F.SqlWork.IsEmpty then
     begin
          if MaxSwCode <> '' then
               EdtCode.Text :=
                    FormatFloat('000000', (StrToInt(MaxSwcode) + 1))
          else
               EdtCode.Text := '000001';

          SawonWorkSave(
               EdtCode.Text,
               EdtId.Text, // SwId
               cbSawon.Text, // SwName
               formatdatetime('YYYY-MM-DD',  DeDate.Date), // DeDate.Text, // SwDate
               CmTime.Text + ':' + CmMinute.Text, // SwTime
               MemWork.Text, // SwWork
               memResult.text, //SwRemark
               IntToStr(rgProcess.ItemIndex), //SwProcess
               cbSect.text, //SwSect
               edtRefer.text, //SwRefer
               now,
               now,
               cbWorkArea.text,
               DeEndday.Date, //endday
               formatdatetime('YYYY-MM-DD',  DeDispDay.date), // SwDisp
               CmendTime.Text + ':' + CmendMin.Text, // endtime
               edtTitle.text
               );
     end
     else
     begin

          SawonWorkUpdate(
               EdtCode.Text,
               EdtId.Text, // SwId
               cbSawon.Text, // SwName
              formatdatetime('YYYY-MM-DD',  DeDate.datetime), // SwDate
               CmTime.Text + ':' + CmMinute.Text, // SwTime
               MemWork.Text, // SwWork
               memResult.text, //SwRemark
               IntToStr(rgProcess.ItemIndex), //SwProcess
               cbSect.text, //SwSect
               edtRefer.text, //SwRefer
               now,
               cbWorkArea.text,
               DeEndday.Date, //endday
            formatdatetime('YYYY-MM-DD',    DeDispDay.Datetime), // SwDisp
               CmendTime.Text + ':' + CmendMin.Text,
                edtTitle.text) ;// endtime
     end;
     SelectDataSWork;

     // close;

end;

procedure TregiSchedule_f.BtnDelClick(Sender: TObject);
const
     SQL_DELETE_DATA_SWORK = 'DELETE FROM ma_sawon_work       ' + #13#10 +
          'Where SwCODE =:SwCODE             ';

var
     VarDel: string;
begin
     VarDel := Copy(Memwork.Text, 1, 6);
     if Application.MessageBox(PChar(VarDel + '...을 ' + '삭제하십니까?'),
          '삭제', MB_YESNO) = IDYES then
          with Dm_f.sqlWork do
          begin
               try
                    SQL.Text := SQL_DELETE_DATA_SWORK;
                    ParamByName('SWCODE').AsString := EDTCODE.TEXT;
                    ExecSQL;
               except
                    on E: Exception do
                    begin
                         ShowMessage(E.Message +
                              ' [업무데이터 삭제오류입니다.]');
                    end;
               end;
          end;
     SelectDataSWork;
     //  SelectDataWork;

end;

procedure TregiSchedule_f.BtnPrt2Click(Sender: TObject);
begin
  //
end;
//var
//     RScheDulePrt_f: TRScheDulePrt_f;
//begin
//     RScheDulePrt_f := TRScheDulePrt_f.CreateFrm(Application, grdWork2);
//     try
//          with RScheDulePrt_f, QuickRep1 do
//          begin
//               PreviewModal;
//               //                print;
//          end;
//     finally
//          RScheDulePrt_f.Free;
//     end;
//end;

procedure TregiSchedule_f.SelectDataSWork;
const
     SQL_SELECT_DATA_SWORK = 'SELECT * FROM ma_sawon_work       ' + #13#10 +
          'order by swdate desc             ';
     // 'Where SwId =:SwId             '

var
     proc: string;
     i, recCount: integer;
begin
     with Dm_f.sqlWork, GrdWork2 do
     begin
          rowCount := 1;
          // Clear; // RealGrid.Clear;
          SQL.Text := SQL_SELECT_DATA_SWork;
          //  ParamByName('Swid').AsString := EdtId.text;
          Open;

          if not  Dm_f.sqlWork.IsEmpty then
               while not EOF do
               begin
                    AddRow; // 그리드에 빈 로우를 추가

                    Cells[1, RowCount - 1] := FieldByName('SwDate').AsString + '/' + FieldByName('SwTime').AsString;
                    Cells[2, RowCount - 1] := FieldByName('SwName').AsString; //FieldByName('SwId').AsString;
                    Cells[3, RowCount - 1] := FieldByName('Sect').AsString; //FieldByName('SwId').AsString;
                    Cells[4, RowCount - 1] := FieldByName('SwSect').AsString;
                    Cells[5, RowCount - 1] := FieldByName('regDay').AsString;
                    Cells[6, RowCount - 1] := FieldByName('SwTitle').AsString;
                    Cells[7, RowCount - 1] := FieldByName('SwWork').AsString;
                    if checkInt(FieldByName('SwProcess').AsString) then
                    begin
                         case FieldByName('SwProcess').AsInteger of
                              0: Proc := '계획';
                              1: Proc := '진행';
                              2: Proc := '완료';
                              3: Proc := '포기';
                              4: Proc := '지연';
                         end;
                    end
                    else
                         Proc := '계획';
                    Cells[8, RowCount - 1] := Proc;
                    Cells[9, RowCount - 1] := FieldByName('SwRefer').AsString;
                    Cells[10, RowCount - 1] := FieldByName('endDay').AsString + '/' + FieldByName('endTime').AsString;
                    Cells[11, RowCount - 1] := FieldByName('SwRemark').AsString; //처리결과
                    Cells[12, RowCount - 1] := FieldByName('SwProcess').AsString;
                    Cells[13, RowCount - 1] := FieldByName('SwCode').AsString;
                    Cells[14, RowCount - 1] := FieldByName('SwID').AsString;
                    Cells[15, RowCount - 1] := FieldByName('SwDisp').AsString;

                    Next;
               end;
          autoNumberCol(0);
     end;

end;

procedure TregiSchedule_f.EdtIdKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          with Dm_f.SqlWork do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from ma_sawon_basic');
               Sql.Add('Where Said=:SaId');
               ParamByname('SaId').AsString := EdtId.text;
               Open;
               if not isEmpty then
               begin
                    cbSawon.text := FieldByname('SaName').AsString;
                    Dedate.SetFocus;
               end
               else
               begin
                    showmessage('사원아이디가 없습니다.');
                    EdtId.Clear;
                    EdtId.Setfocus;
                    exit;
               end;
          end;
     end;

end;

procedure TregiSchedule_f.EdtNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          SelectNext(sender as TWinControl, True, True);
          Key := #0;
     end;

end;

procedure TregiSchedule_f.FormShow(Sender: TObject);
begin


     caption := '업무등록';
     EdtId.Text := '';
     EdtCode.Text := '';
     cbSawon.Text := '';

     CmTime.Text := formatDateTime('HH', now);
     CmMinute.Text := '00';
     MemWork.Text := '';
     MemResult.Text := '';
     edtRefer.Text := '';
     dedate.Date := now;
     deendDay.date:=now;
//     deendDay.text:='';

     with grdWork2 do
     begin
          ColWidths[10] := 0;
          ColWidths[11] := 0;
          ColWidths[12] := 0;
          ColWidths[13] := 0;
          ColWidths[14] := 0;

     end;

     LoadCombo;
     SelectDataSWork;

end;

procedure TregiSchedule_f.FormDestroy(Sender: TObject);
begin
     regiSchedule_f := nil;
end;

procedure TregiSchedule_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TregiSchedule_f.LoadCombo;
begin
     with dm_f.SqlWork do
     begin
          cbSect.items.Clear;
          Close;
          Sql.Clear;
          Sql.text := 'Select * from ma_basic                            ' + #13#10 +
               'where  (code like  ''091%'') and (code <> ''09100'')     ' + #13#10 +
               'and inuse <>  ''0''                                      ' + #13#10 +
               'order by val,code                                        ';
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbSect.items.add(FieldByName('disp').AsString);
                    next;
               end;
               cbSect.ItemIndex := 0;
          end
          else
          begin
               cbSect.items.add('약속');
               cbSect.ItemIndex := 0;
          end;

          cbWorkArea.items.Clear;
          Close;
          Sql.Clear;
          Sql.text := 'Select * from ma_basic                            ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
               'and inuse <>  ''0'' and (remark = ''TREAT'' or remark = ''MED'')    ' + #13#10 +
               'order by val,code                                        ';
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbWorkArea.items.add(FieldByName('disp').AsString);
                    next;
               end;
               cbWorkArea.ItemIndex := 0;
          end
          else
          begin
               cbWorkArea.items.add('데스크');
               cbWorkArea.ItemIndex := 0;
          end;

     end;

     with dm_f.SqlWork do
     begin
          cbsawon.items.Clear;
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic where noUse <> ''1'' ');
          Sql.Add('order by saname ');
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                    cbSawon.items.add(FieldByName('saname').AsString);
                    next;
               end;
               cbSawon.ItemIndex := 0;
          end
          else
          begin
               //               ComboBox1.Items.Add(dm_f.Chief);
               //               grdPlan.Columns[11].Values.add(dm_f.Chief);

          end;
     end;
end;

procedure TregiSchedule_f.cbSawonChange(Sender: TObject);
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select * from ma_Sawon_basic');
          Sql.Add('where saname=:saname ');
          paramByName('saname').AsString := cbSawon.Text;
          Open;
          if not isEmpty then
          begin
               edtid.text := fieldByname('saID').asString;
          end;
     end;

end;

procedure TregiSchedule_f.GrdWork2MouseDown(Sender: TObject;
     Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

     if GrdWork2.RowCount > 0 then
     begin
          fieldset(grdWork2.Row);
     end;

end;

procedure TregiSchedule_f.fieldset(ARow: integer);
var
     varDay: string;
begin
     with grdWork2 do
     begin
          varDay := copy(Cells[1, ARow], 1, 10);

          DeRegDay.date :=strtodate(varDay);
          cbSawon.itemindex := cbSawon.Items.IndexOf(Cells[2, ARow]);
             if isDate(substr(Cells[5, ARow], 1, '/')) = true then
              DeDate.Date := strtodate( substr(Cells[5, ARow], 1, '/') )  ;


          CmTime.Text := substr((substr(Cells[5, ARow], 2, '/')), 1, ':');
          CmMinute.Text := substr((substr(Cells[5, ARow], 2, '/')), 2, ':');
          // cbSect.ItemIndex:=Cells[4, ARow];////cbSect.Items.IndexOfName(Cells[4, ARow]);

          cbSect.itemindex := cbSect.Items.IndexOf(Cells[4, ARow]);

          cbWorkArea.itemindex := cbWorkArea.Items.IndexOf(Cells[3, ARow]);

          edtTitle.Text := Cells[6, ARow];
          MemWork.Text := Cells[7, ARow];
          rgProcess.ItemIndex := ints[12, ARow];

          edtRefer.Text := Cells[9, ARow];

             if isDate(substr(Cells[10, ARow], 1, '/')) = true then
              DeEndDay.Date := strtodate( substr(Cells[10, ARow], 1, '/') )  ;

       //   DeEndDay.Text := substr(Cells[9, ARow], 1, '/');

          DeDispDay.date := strtodate(Cells[15, ARow]);

          CmEndTime.Text := substr((substr(Cells[10, ARow], 2, '/')), 1, ':');
          CmEndMin.Text := substr((substr(Cells[10, ARow], 2, '/')), 2, ':');

          memResult.Text := Cells[11, ARow];

          EdtCode.Text := Cells[13, ARow];
          EdtID.Text := Cells[14, ARow];
     end;

end;

procedure TregiSchedule_f.spSkinButton2Click(Sender: TObject);
begin
//     workSect_f := TworkSect_f.Create(application);
//     if workSect_f.ShowModal = mrOk then
//     begin
//          loadCombo;
//     end;

end;

procedure TregiSchedule_f.spSkinButton3Click(Sender: TObject);
begin
//     workArea_f := TworkArea_f.Create(application);
//     if workArea_f.ShowModal = mrOk then
//     begin
//          loadCombo;
//     end;

end;

procedure TregiSchedule_f.spSkinButton1Click(Sender: TObject);
begin
     sawon_f := Tsawon_f.Create(application);
     if sawon_f.ShowModal = mrOk then
     begin
          loadCombo;
     end;

end;

function TregiSchedule_f.FindGridFirst(varGrid: TadvStringGrid; varSearch: string):
     boolean;
var
     res: TPoint;
     findparams: TFindparams;

begin
     result := false;
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

     findparams := findparams + [fnMatchCase];
     findparams := findparams + [fnMatchFull];
     // findparams := findparams + [fnMatchRegular];
     res := varGrid.findfirst(varSearch, findparams);
     if res.y >= 0 then
     begin
          result := true;
          varGrid.Col := res.x;
          varGrid.Row := res.y;
     end
     else
     begin
          //MessageDlg('찾는 내용이 없습니다.', mtinformation, [mbOK], 0);
          result := false;
     end;
end;

procedure TregiSchedule_f.GrdWork2GetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

     with grdWork2 do
     begin

          if (aRow > 0) and (aCol > 0) then
          begin
               case ints[12, aRow] of
                    0: // '계획';
                         begin
                              aBrush.Color := clGreen;
                              aFont.Color := clWhite;
                         end;
                    1: //Proc := '진행';
                         begin
                              aBrush.Color := clYellow;
                              aFont.Color := clBlack;
                         end;

                    2: //Proc := '완료';
                         begin
                              aBrush.Color :=  clWhite;
                              aFont.Color := clGray;
                         end;
                    3: //Proc := '포기';
                         begin
                              aBrush.Color := clWhite;
                              aFont.Color := clRed;
                         end;
                    4: //Proc := '지연';
                         begin
                              aBrush.Color := clWhite;
                              aFont.Color := clBlue;
                         end;
               end;

          end;
     end;


end;

procedure TregiSchedule_f.spSkinButton5Click(Sender: TObject);
begin
    savedialog1.fileName:= '업무내역'+formatdatetime('YYYYMMDD', now)   +'.xls';
     if savedialog1.execute then
     begin
          if fileexists(savedialog1.filename) then
               deletefile(savedialog1.filename);
          advgridexcelio1.XLSExport(savedialog1.filename);
     end;

end;

end.


