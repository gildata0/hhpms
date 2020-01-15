unit uInPatient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, AdvPanel,
  AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ComCtrls, AdvDateTimePicker,
  EllipsLabel, AdvCombo, ColCombo;

type
  TinPatient_f = class(TForm)
    Panel1: TPanel;
    AdvPanel1: TAdvPanel;
    lblPatInfo: TLabel;
    AdvPanel2: TAdvPanel;
    Panel2: TPanel;
    Label1: TLabel;
    AdvStringGrid1: TAdvStringGrid;
    btnInpatient: TButton;
    btnClose: TButton;
    AdvDateTimePicker1: TAdvDateTimePicker;
    Label2: TLabel;
    cbTreatRoom: TColumnComboBox;
    cbDoc: TColumnComboBox;
    lblChart: TLabel;
    rgInPatKind: TRadioGroup;
    EllipsLabel1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInpatientClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cbTreatRoomSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inPatient_f: TinPatient_f;

implementation

uses uConfig,uFunctions, uDm,  uGogekData, System.DateUtils, uMain;
{$R *.dfm}


procedure TinPatient_f.btnCloseClick(Sender: TObject);
begin
      close;
end;

procedure TinPatient_f.btnInpatientClick(Sender: TObject);
var
     i: Integer;
     sPortion, sSang, sTx: string;
begin

     if ma_Jubsu_ID =''  then
      begin
        showmessage('������ �����ϼ���.');
        exit;
      end;

      //ToDo : �Կ� ���·� ����---------------------------------------------
      //ToDo : ���� ���=1 �̸� ���=0���� �����ȴ�. �Կ��� �ٽ� �ϴ°��̴�.
   case rgInPatKind.ItemIndex of
   0: //������
      ChangeStatus2(
              AdvDateTimePicker1.dateTime,// formatdatetime('YYYY-MM-DD',  AdvDateTimePicker1.date),
              ma_jubsu_id,
              lblChart.Caption,
              '6',
              cbDoc.ColumnItems[cbDoc.itemindex, 0],   //�����
              cbDoc.ColumnItems[cbDoc.itemindex, 4] );//�����Code
   1: //���ں���
      ChangeStatus2(
              AdvDateTimePicker1.dateTime,//  formatdatetime('YYYY-MM-DD',  AdvDateTimePicker1.date),
               ma_jubsu_id,
              lblChart.Caption,
              '5',
               cbDoc.ColumnItems[cbDoc.itemindex, 0] ,  //�����
               cbDoc.ColumnItems[cbDoc.itemindex, 4] );//����� Code

   end;

         // ToDo : Repair
     main_f.DaegiFrame_fr1.DaegiSelect( main_f.DaegiFrame_fr1.tsMain.TabIndex);


     showmessage('�Կ����� �Ǿ����ϴ�.');
end;

procedure TinPatient_f.cbTreatRoomSelect(Sender: TObject);
var
    team_key : string;
begin


   // showmessage('');
     team_key := cbTreatRoom.ColumnItems[cbTreatRoom.ItemIndex,0];
     LoadDoclist(cbDoc, team_key);

  //   daegiselect(tsmain.TabIndex);

end;



procedure TinPatient_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action:= caFree;
end;



procedure TinPatient_f.FormDestroy(Sender: TObject);
begin
       inPatient_f := nil;
end;

procedure TinPatient_f.FormShow(Sender: TObject);
var
    genderAge : string;
begin
         caption:='�Կ�ȯ�� ����';


      if isDate(JuminToBirthDash(ma_jumin)) = true then
      begin
             //    lblgenderAge.Font.Color := clNavy;
           genderAge := jumintogender(ma_jumin) + ' / '
                +
                inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) div 12) + 'y ' +
                inttostr(MonthsBetween(now, strtodate(JuminToBirthDash(ma_jumin))) mod 12) + 'm'; //+ jumintonai(ma_jumin);
      end
      else
      begin
          //       lblgenderAge.Font.Color := clNavy;
          genderAge := jumintogender(ma_jumin) + ' / '
                +
                'unknown';
      end;

      if trim(ma_Chart) <> '' then
     begin

     //  caption:=  '[�����] '+ ' '+ ma_Chart +'('+ ma_Paname+')' + genderAge +'';
       lblPatInfo.caption :=  ma_Chart +'('+ ma_Paname+')' + genderAge +'';
     end;

     with dm_f.SqlWork do
     begin

          with cbTreatRoom do
          begin
               Columns.Clear;
               ComboItems.Clear;
          end;

          Close;
          Sql.Clear;
          Sql.text :=
               'Select * from ma_basic                                   ' + #13#10 +
               'where  (code like  ''093%'') and (code <> ''09300'')     ' + #13#10 +
               'and inuse <>  ''0''  and (remark = ''TREAT'' or remark = ''MED'')   ' + #13#10 +
            //   'order by val,code                                        ';
               'order by disp                                       ';


          Open;
          if not isEmpty then
          begin
               while not eof do
               begin

                 with cbTreatRoom do
                    begin
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Style := [fsBold];
                               Font.Name:= '���� ���';
                               Font.Size := 12;
                         end;
                         with Columns.Add do
                         begin
                              Width := 0;
                              Font.Color := clBlue;
                              Font.Style := [fsBold];
                               Font.Name:= '���� ���';
                               Font.Size := 12;
                         end;
                         with Columns.Add do
                         begin
                              Width := 200;
                               Font.Name:= '���� ���';
                               Font.Size := 12;
                         end;

                         with ComboItems.Add do
                         begin
                            //  Strings.Add(FieldByName('team_name').AsString);
                            //  Strings.Add(FieldByName('team_color').AsString);
                            //  Strings.Add(FieldByName('team_doctor1').AsString);
                            Strings.Add(trim(FieldByName('val').AsString));     //Code
                            Strings.Add(trim(FieldByName('remark').AsString));  //code?
                            Strings.Add(trim(FieldByName('disp').AsString));

                         end;
                    end;

                  //  cbTreatRoom.items.add(FieldByName('disp').AsString);




                    next;
               end;
               cbTreatRoom.ItemIndex := 0;
          end
          else
          begin
             //  cbTreatRoom.items.add('����ũ');
             //  cbTreatRoom.ItemIndex := 0;
          end;

     end;

end;

end.
