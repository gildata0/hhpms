unit SugaRegi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,    ExtCtrls, ComCtrls,
   Grids, AdvObj, BaseGrid, AdvGrid, Buttons, AdvUtil, Vcl.CheckLst, Vcl.Mask;

type
  TSugaRegi_f = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtSearch: TEdit;
    Panel3: TPanel;
    Edit2: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    btnSearch: TBitBtn;
    spSkinButton1: TBitBtn;
    spSkinButton2: TBitBtn;
    grdList: TAdvStringGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rgSearch: TRadioGroup;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    clbColumnCheck: TCheckListBox;
    cbKind: TComboBox;
    Edit3: TMaskEdit;
    Label5: TLabel;
    edtUserKey: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Label6: TLabel;
    Panel11: TPanel;
    CheckBox2: TCheckBox;
    procedure spSkinButton1Click(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure spSkinButton2Click(Sender: TObject);
    procedure grdListClickSort(Sender: TObject; ACol: Integer);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure grdListClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure cbKindChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure grdListGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure FormCreate(Sender: TObject);
    procedure grdListDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    procedure loadData(kind: integer);
    procedure loadColHeader(kind: integer);
    procedure loadDataFromMemo(kind: integer);
          { Private declarations }
  public
          { Public declarations }
          sdFileName   : String;
  end;

var
  SugaRegi_f: TSugaRegi_f;

implementation

uses uDM, uMain, uFormInit;

{$R *.dfm}


procedure  gridColSelect(aGrid :TadvstringGrid; aRect:Trect; aCheckListBox: TCheckListBox);
var
   i : integer;
begin

  if aCheckListBox.visible = false then
          begin

             with aCheckListBox do  //ColumnCheck do//
             begin

                  Items.Clear;

                   for I := 0 to aGrid.ColumnHeaders.Count -1 do
                   begin
                         Items.Add(aGrid.ColumnHeaders[i]) ;

                        if aGrid.ColWidths[i] <> 0  then
                            Checked[i]:= true;

                   end;

                   width:= 165;

                   Left   :=   aRect.left +  aGrid.fixedColWidth;
                   top    :=   aRect.Top  +  aGrid.fixedRowHeight;   ;// +( btnRect.Bottom- btnRect.Top);
                    //  width :=  grdRect.right -  grdRect.left ;
                   height :=   aGrid.Height - 50;

                   Visible := true;

             end;
          end
          else
          begin

             with aCheckListBox do  //ColumnCheck do//
             begin
                       for I := 0 to aGrid.ColumnHeaders.Count -1 do
                       begin

                            if  Checked[i]= false then
                                  aGrid.ColWidths[i] :=  0
                              else
                              begin
                                  if  aGrid.ColWidths[i] = 0 then
                                         aGrid.ColWidths[i] :=  50;

                              end;
                       end;
                       Visible := false;
             end;

          end;

end;


procedure TSugaRegi_f.spSkinButton1Click(Sender: TObject);
begin
      Close;
end;

procedure TSugaRegi_f.btnSearchClick(Sender: TObject);
begin
         
   case cbKind.ItemIndex of
        0:   loadData(1);   //����
        1:   loadData(2);   //���
   end;


end;

procedure TSugaRegi_f.loadData(kind: integer);
var
   aRow : integer;
begin

  grdList.RemoveRows(1,grdList.RowCount -1);
  grdList.RowCount := 1;


     sdFileName := ExtractFileDir(Application.ExeName) + '\MasterData\drug.mdb';
         case rgSearch.ItemIndex of
           0..2:
               if trim(edtSearch.Text) = '' then
                begin
              //       showmessage('Input search keyword.');
                     ShowMEssage('�˻�� �Է��Ͻʽÿ�');
                     exit;
                end;

         end;



  if dm_f.uniConnection3.Connected = false then
    dm_f.uniConnection3.ConnectString :=
         'Provider Name=Access;Database=' + sdFileName ;

  case kind of

      1:
      begin
//        grdList.ColumnHeaders.Clear;
//        grdList.ColumnHeaders.Add('No.');
//        grdList.ColumnHeaders.Add('��ǰ�ڵ�');
//        grdList.ColumnHeaders.Add('����������� ');
//        grdList.ColumnHeaders.Add('�޿�����');
//        grdList.ColumnHeaders.Add('���Ѱ�');
//        grdList.ColumnHeaders.Add('�����');
//        grdList.ColumnHeaders.Add('�������');
//        grdList.ColumnHeaders.Add('ǰ��');
//        grdList.ColumnHeaders.Add('�԰�');
//        grdList.ColumnHeaders.Add('����');
//        grdList.ColumnHeaders.Add('���Ҹ�');
//        grdList.ColumnHeaders.Add('�з���ȣ');
//        grdList.ColumnHeaders.Add('�ּ����ڵ�');
//        grdList.ColumnHeaders.Add('����/�Ϲ�');
//        grdList.ColumnHeaders.Add('�������');
//        grdList.ColumnHeaders.Add('�Ǿ�ǰ���');
//        grdList.ColumnHeaders.Add('������ü���꿩��');
//        grdList.ColumnHeaders.Add('�����Ǿ�ǰ����');
//        grdList.ColumnHeaders.Add('���������Ұ��׸�');
//        grdList.ColumnHeaders.Add('�������');
//        grdList.ColumnHeaders.Add('�����ڵ�');
//        grdList.ColumnHeaders.Add('����Ǿ�ǰ����');
//        grdList.ColumnHeaders.Add('�Ǹſ�����');
//        grdList.ColumnHeaders.Add('���� �Ǿ�ǰ');
//        grdList.ColumnHeaders.Add('û���԰�');
//        grdList.ColumnHeaders.Add('���');



            with dm_f.uniQuery1 do
            begin
              Close;
              Sql.Clear;
              Sql.Add('select *  from �డ  ');     //, apply_day, tuye, coname, gub_gu,out_gubun,sangkum,law_merit

                 case rgSearch.ItemIndex of

                     0: Sql.Add('where name like :sName order by name');
                     1: Sql.Add('where code like :sName  order by code, apply_day desc');
                     2: Sql.Add('where coname like :sName  order by name, apply_day desc');
                     3: Sql.Add('order by name, apply_day desc');
                 end;
                 case rgSearch.ItemIndex of
                   0..2:
                      ParamByName('sname').Value := '%' + edtSearch.Text + '%';
                 end;
              Open;
              First;

              if not isEmpty then
              begin
                //grdList.Clear;

                aRow:= 1;
                grdList.RowCount := recordCount +1;

                while not eof do
                begin


                //  grdList.AddRow;
                      grdList.Cells[1, aRow]  := Fields[0].AsString;  //FieldByName('code').AsString;
                      grdList.Cells[2, aRow]  := Fields[1].AsString;  //FieldByName('name').AsString;
                      grdList.Cells[3, aRow]  := Fields[2].AsString;  //FieldByName('apply_day').AsString;
                      grdList.Cells[4, aRow]  := Fields[3].AsString;   //FieldByName('tuye').AsString;
                      grdList.Cells[5, aRow]  := Fields[4].AsString;   //FieldByName('coname').AsString;

        //              if FieldByName('gub_gu').AsString = '����' then
        //              begin
        //                grdList.Cells[6, aRow]  := 'N'
        //              end
        //              else if FieldByName('gub_gu').AsString = '�̻���' then
        //              begin
        //                grdList.Cells[6, aRow]  := 'X'
        //              end
        //              else
        //              begin
        //                grdList.Cells[6, aRow]  := 'O';
        //              end;

                      grdList.Cells[6, aRow]  :=  Fields[5].AsString;  //FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[7, aRow]  :=  Fields[6].AsString;  //FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[8, aRow]  :=  Fields[7].AsString;  //FieldByName('out_gubun').AsString;  //�������
                      grdList.Cells[9, aRow]  :=  Fields[8].AsString;  //FieldByName('sangkum').AsString;   //�ܰ�
                      grdList.Cells[10, aRow] :=  Fields[9].AsString;  //FieldByName('law_merit').AsString;  //�����
                      grdList.Cells[11, aRow] :=  Fields[10].AsString;
                      grdList.Cells[12, aRow] :=  Fields[11].AsString;
                      grdList.Cells[13, aRow] :=  Fields[12].AsString;
                      grdList.Cells[14, aRow] :=  Fields[13].AsString;
                      grdList.Cells[15, aRow] :=  Fields[14].AsString;
                      grdList.Cells[16, aRow] :=  Fields[15].AsString;
                      grdList.Cells[17, aRow] :=  Fields[16].AsString;
                      grdList.Cells[18, aRow] :=  Fields[17].AsString;
                      grdList.Cells[19, aRow] :=  Fields[18].AsString;
                      grdList.Cells[20, aRow] :=  Fields[19].AsString;
                      grdList.Cells[21, aRow] :=  Fields[20].AsString;
                      grdList.Cells[22, aRow] :=  Fields[21].AsString;
                      grdList.Cells[23, aRow] :=  Fields[22].AsString;
                      grdList.Cells[24, aRow] :=  Fields[23].AsString;
                      grdList.Cells[25, aRow] :=  Fields[24].AsString;
        //              grdList.Cells[26, aRow] :=  Fields[25].AsString;
        //              grdList.Cells[27, aRow] :=  Fields[26].AsString;



                  aRow:= aRow + 1;
                  Next;

                end;
              //  BlankRow(grdList, 20);
              end;
            end;

            grdList.AutoNumberCol(0);
        end;


      2:
      begin
//            grdList.ColumnHeaders.Clear;
//            grdList.ColumnHeaders.Add('No.');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('�������� ');
//            grdList.ColumnHeaders.Add('ǰ ��');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('���ѱݾ�');
//            grdList.ColumnHeaders.Add('����ȸ��');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('���Ծ���');
//            grdList.ColumnHeaders.Add('���_1 ');
//            grdList.ColumnHeaders.Add('���_2 ');



            with dm_f.uniQuery1 do
            begin
              Close;
              Sql.Clear;
              Sql.Add('select *  from ���  ');     //, apply_day, tuye, coname, gub_gu,out_gubun,sangkum,law_merit
                case rgSearch.ItemIndex of

                     0: Sql.Add('where name like :sName order by name');
                     1: Sql.Add('where code like :sName  order by code, apply_day desc');
                     2: Sql.Add('where coname like :sName  order by name, apply_day desc');
                     3: Sql.Add('order by name, apply_day desc');
                 end;
                 case rgSearch.ItemIndex of
                   0..2:
                      ParamByName('sname').Value := '%' + edtSearch.Text + '%';
                 end;

              Open;
              First;

              if not isEmpty then
              begin
                aRow:= 1;
                grdList.RowCount := recordCount +1;

                while not eof do
                begin

                 {grdList.ColumnHeaders.Add('No.');
                 grdList.ColumnHeaders.Add('�� ��');
                 grdList.ColumnHeaders.Add('�������� ');
                 grdList.ColumnHeaders.Add('');
                 grdList.ColumnHeaders.Add('���ѱݾ�');
                 grdList.ColumnHeaders.Add('');
                 grdList.ColumnHeaders.Add('�� ��');
                 grdList.ColumnHeaders.Add('ǰ ��');
                 grdList.ColumnHeaders.Add('�� ��');
                 grdList.ColumnHeaders.Add('�� ��');
                 grdList.ColumnHeaders.Add('���Ծ���');
                 grdList.ColumnHeaders.Add('����ȸ��');
                 grdList.ColumnHeaders.Add('���_1 ');
                 grdList.ColumnHeaders.Add('���_2 ');
                 }

                      grdList.Cells[1, aRow]  := trim( Fields[1].AsString);  //('�� ��');FieldByName('code').AsString;
                      grdList.Cells[2, aRow]  := trim( Fields[2].AsString);  //('�������� ');FieldByName('name').AsString;
                      grdList.Cells[3, aRow]  := trim('');  //('');FieldByName('apply_day').AsString;
                      grdList.Cells[4, aRow]  := trim( Fields[6].AsString);   //('���ѱݾ�');FieldByName('tuye').AsString;
                      grdList.Cells[5, aRow]  := trim('');   //('');FieldByName('coname').AsString;
                      grdList.Cells[6, aRow]  :=  trim( Fields[8].AsString);  //('�� ��');FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[7, aRow]  :=  trim( Fields[3].AsString);  //('ǰ ��');FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[8, aRow]  :=  trim( Fields[4].AsString);  //('�� ��');FieldByName('out_gubun').AsString;  //�������
                      grdList.Cells[9, aRow]  :=  trim( Fields[5].AsString);  //('�� ��');FieldByName('sangkum').AsString;   //�ܰ�
                      grdList.Cells[10, aRow] :=  trim( Fields[9].AsString);  //('���Ծ���');FieldByName('law_merit').AsString;  //�����
                      grdList.Cells[11, aRow] :=  trim( Fields[10].AsString);  //('���_1 ');
                      grdList.Cells[12, aRow] :=  trim( Fields[11].AsString);  //('���_2 ');

                  aRow:= aRow + 1;
                  Next;

                end;
              //  BlankRow(grdList, 20);
              end;
            end;

            grdList.AutoNumberCol(0);

      end;
  end;

end;


procedure TSugaRegi_f.loadColHeader(kind: integer);
begin
  case kind of

      0:
      begin
        grdList.ColumnHeaders.Clear;
        grdList.ColumnHeaders.Add('No.');             //  ('No.');           ('No.');
        grdList.ColumnHeaders.Add('��ǰ�ڵ�');        //  ('�� ��');         ('�� ��');
        grdList.ColumnHeaders.Add('����������� ');   //  ('�������� ');     ('�������� ');
        grdList.ColumnHeaders.Add('�޿�����');        //  ('ǰ ��');
        grdList.ColumnHeaders.Add('���Ѱ�');          //  ('�� ��');         ('���ѱݾ�');
        grdList.ColumnHeaders.Add('�����');          //  ('�� ��');
        grdList.ColumnHeaders.Add('�������');        //  ('���ѱݾ�');      ('�� ��');
        grdList.ColumnHeaders.Add('ǰ��');            //  ('����ȸ��');      ('ǰ ��');
        grdList.ColumnHeaders.Add('�԰�');            //  ('�� ��');         ('�� ��');
        grdList.ColumnHeaders.Add('����');            //  ('���Ծ���');      ('�� ��');
        grdList.ColumnHeaders.Add('���Ҹ�');          //  ('���_1 ');       ('���Ծ���');
        grdList.ColumnHeaders.Add('�з���ȣ');        //  ('���_2 ');       ('����ȸ��');
        grdList.ColumnHeaders.Add('�ּ����ڵ�');                            // ('���_1 ');
        grdList.ColumnHeaders.Add('����/�Ϲ�');                             // ('���_2 ');
        grdList.ColumnHeaders.Add('�������');
        grdList.ColumnHeaders.Add('�Ǿ�ǰ���');
        grdList.ColumnHeaders.Add('������ü���꿩��');
        grdList.ColumnHeaders.Add('�����Ǿ�ǰ����');
        grdList.ColumnHeaders.Add('���������Ұ��׸�');
        grdList.ColumnHeaders.Add('�������');
        grdList.ColumnHeaders.Add('�����ڵ�');
        grdList.ColumnHeaders.Add('����Ǿ�ǰ����');
        grdList.ColumnHeaders.Add('�Ǹſ�����');
        grdList.ColumnHeaders.Add('���� �Ǿ�ǰ');
        grdList.ColumnHeaders.Add('û���԰�');
        grdList.ColumnHeaders.Add('���');


      end;


      1:
      begin
             grdList.ColumnHeaders.Clear;
             grdList.ColumnHeaders.Add('No.');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('�������� ');
             grdList.ColumnHeaders.Add('');
             grdList.ColumnHeaders.Add('���ѱݾ�');
             grdList.ColumnHeaders.Add('');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('ǰ ��');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('���Ծ���');
             grdList.ColumnHeaders.Add('����ȸ��');
             grdList.ColumnHeaders.Add('���_1 ');
             grdList.ColumnHeaders.Add('���_2 ');

    end;
  end;

end;



procedure TSugaRegi_f.spSkinButton2Click(Sender: TObject);
var
     resp: integer;
begin
  if PageControl1.ActivePageIndex = 0 then
     grdListDblClickCell(grdList, grdList.Row,  grdList.Col )
  else
  begin

    try
      with dm_f.SqlFind do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select * from suga where su_key=:su_key');
        ParamByName('su_key').AsString := Edit2.Text;
        Open;
        first;
        if not isEmpty then
        begin
          resp := Application.MessageBox(Pchar(FieldByName('su_kor_name').AsString + '��(��) �̹������ϴ� �׸��Դϴ�.' + #10#13 + '���� �׸��� ����ðڽ��ϱ�?'), Pchar('�ߺ��� �׸��Դϴ�:' + FieldByName('su_kor_name').AsString), MB_YESNOCANCEL);
          if resp = 6 then
          begin
            dm_f.sqlTemp.Close;
            dm_f.sqlTemp.Sql.Clear;
            dm_f.sqlTemp.Sql.Add('delete from suga where su_key=:su_key');
            dm_f.sqlTemp.ParamByName('su_key').AsString := Edit2.Text;
            dm_f.sqlTemp.ExecSql;
          end
          else
          begin
            Exit;
          end;
        end;
        Close;
        Sql.Clear;
        Sql.Add('insert into suga ');
        Sql.Add(' (su_key, user_Key, su_apply,bo_day,ja_day,il_day,wo_day,su_gu1,su_gu2,su_gu3,su_sobulru,su_kor_name,su_junsan,dan_qty)');
        Sql.Add('values ');
        sql.Add(' ( :su_key,:user_Key, :su_apply,:bo_day,:bo_day,:bo_day,:bo_day,''1'',:su_gu2,:su_gu3,:su_sobulru,:su_kor_name,:su_key,''1'')');


        ParamByName('su_key').AsString   := Edit2.Text;
        ParamByName('user_Key').AsString := edtUserKey.Text;
        ParamByName('su_apply').AsString := Edit3.Text;
        ParamByName('bo_day').AsString   := FormatDateTime('yyyy-mm-dd', Now);

        { ComboBox1.Itemindex
          0����
          1�ܿ�
          2�ֻ�
          }

        case cbKind.ItemIndex of
           0: //��ǰ
           begin
              if ComboBox1.Itemindex = 0 then ParamByName('su_gu3').AsString := '09'    //����
              else if ComboBox1.Itemindex = 1 then ParamByName('su_gu3').AsString := '10' //�ܿ�
              else if ComboBox1.Itemindex = 2 then ParamByName('su_gu3').AsString := '12' //�ֻ�
              else ParamByName('su_gu3').AsString := '09';
           end;

           1: //���
           begin
              ParamByName('su_gu3').AsString := '23'
           end;
        end;

        {cbKind
         0����
         1���}
        case cbKind.ItemIndex of
           0: //��ǰ
              ParamByName('su_gu2').AsString := '3' ; //��ǰ
           1: //���
              ParamByName('su_gu2').AsString := '8' ; //���
        end;


        //��������Ǿ�ǰ
        if checkBox1.Checked then
          ParamByName('su_sobulru').AsString := '9' else ParamByName('su_sobulru').AsString := '';

        ParamByName('su_kor_name').AsString := Edit4.Text;
        ExecSql;
        showmessage('�߰��Ǿ����ϴ�');
      end;
    except
       //  ShowMEssage('�ߺ��ڵ尡 �ֽ��ϴ�.');

         on E: Exception do
          begin
             //  exceptlogging( E.Message);
               ShowMessage('��Ͽ� �����Ͽ����ϴ�.' + #13#10 +
                    E.Message);
          end;

    end;
  end;
  Close;
end;



procedure TSugaRegi_f.grdListDblClickCell(Sender: TObject; ARow, ACol: Integer);
var
    resp : integer;
begin
  if ((grdList.Row >= 1) and (grdList.RowCount > 1)) then
  begin
    with dm_f.SqlFind do
    begin
      Close;
      Sql.Clear;
      Sql.Add('select * from suga where su_key=:su_key');
      ParamByName('su_key').AsString := grdList.Cells[1, grdList.Row] ;
      Open;
      first;
      if not isEmpty then
      begin
        resp := Application.MessageBox(Pchar(FieldByName('su_kor_name').AsString + '��(��) �̹������ϴ� �׸��Դϴ�.' + #10#13 + '���� �׸��� ����ðڽ��ϱ�?'), Pchar('�ߺ��� �׸��Դϴ�:' + FieldByName('su_kor_name').AsString), MB_YESNOCANCEL);
        if resp = 6 then
        begin
          dm_f.sqlTemp.Close;
          dm_f.sqlTemp.Sql.Clear;
          dm_f.sqlTemp.Sql.Add('delete from suga where su_key=:su_key');
          dm_f.sqlTemp.ParamByName('su_key').AsString := grdList.Cells[1, grdList.Row] ;
          dm_f.sqlTemp.ExecSql;
        end
        else
        begin
          Exit;
        end;
      end;

      {Close;
      Sql.Clear;
      Sql.Add('insert into suga (su_key,su_apply,bo_day,ja_day,il_day,wo_day,su_gu1,su_gu2,su_gu3,su_sobulru,su_kor_name,su_junsan,dan_qty,bo_dan,wo_dan)');
      Sql.Add('values (:su_key,:su_apply,:bo_day,:bo_day,:bo_day,:bo_day,:su_gu1,''3'',:su_gu3,:su_sobulru,:su_kor_name,:su_key,''1'',:bo_dan,:wo_dan)');
      ParamByName('su_key').AsString := grdList.Cells[0, grdList.Row] ;
      ParamByName('su_apply').AsString := grdList.Cells[2, grdList.Row] ;
      ParamByName('bo_day').AsString := FormatDateTime('yyyy-mm-dd', Now);
      ParamByName('bo_dan').AsString := grdList.Cells[8, grdList.Row] ;
      if grdList.Cells[9, grdList.Row]  = '' then  ParamByName('wo_dan').AsString := '0'
      else
         ParamByName('wo_dan').AsString := grdList.Cells[9, grdList.Row] ;
      if grdList.Cells[3, grdList.Row]  = '����' then ParamByName('su_gu3').AsString := '09'
      else if grdList.Cells[3, grdList.Row]  = '�ܿ�' then ParamByName('su_gu3').AsString := '10'
      else if grdList.Cells[3, grdList.Row]  = '�ֻ�' then ParamByName('su_gu3').AsString := '12'
      else
        ParamByName('su_gu3').AsString := '09';

      if grdList.Cells[6, grdList.Row]  = '����(��޿���ȯ)' then ParamByName('su_gu1').AsString := '3'
      else if grdList.Cells[6, grdList.Row]  = '��޿���ȯ ��������' then ParamByName('su_gu1').AsString := '3'
      else
        ParamByName('su_gu1').AsString := '1';

      if grdList.Cells[7, grdList.Row]  <> '' then
        ParamByName('su_sobulru').AsString := '9' else ParamByName('su_sobulru').AsString := '';
      ParamByName('su_kor_name').AsString := grdList.Cells[1, grdList.Row] ;
      ExecSql;
      showmessage('�߰��Ǿ����ϴ�');   }

      Close;
      Sql.Clear;
      Sql.Add('insert into suga (su_key,su_apply,bo_day,ja_day,il_day,wo_day,');
      sql.add('su_gu1,su_gu2,su_gu3,su_sobulru,su_kor_name, ');
      sql.add('su_junsan,dan_qty,bo_dan,wo_dan,ja_dan,il_dan, jejosa)');
      Sql.Add('values (:su_key,:su_apply,:bo_day,:bo_day,:bo_day,:bo_day, ');
      sql.add(':su_gu1,:su_gu2,:su_gu3,:su_sobulru,:su_kor_name, ');
      sql.add(':su_key,''1'',:bo_dan,:wo_dan,:ja_dan,:il_dan, :jejosa)');
      ParamByName('su_key').AsString      := grdList.Cells[1, grdList.Row] ;
      ParamByName('su_kor_name').AsString := grdList.Cells[7, grdList.Row] ;
      ParamByName('su_apply').AsString    := grdList.Cells[2, grdList.Row] ;
      ParamByName('bo_day').AsString      := grdList.Cells[2, grdList.Row] ;
      ParamByName('bo_dan').AsString      := grdList.Cells[4, grdList.Row] ;
      ParamByName('ja_dan').AsString      := grdList.Cells[4, grdList.Row] ;
      ParamByName('il_dan').AsString      := grdList.Cells[4, grdList.Row] ;

//      if grdList.Cells[9, grdList.Row]  = '' then  ParamByName('wo_dan').AsString := '0'
//      else
//         ParamByName('wo_dan').AsString := grdList.Cells[10, grdList.Row] ;
      ParamByName('wo_dan').AsString := '0';

      case cbKind.ItemIndex of
         0://����
         begin
            if grdList.Cells[6, grdList.Row]  = '����' then
                 ParamByName('su_gu3').AsString := '09'
                else if grdList.Cells[6, grdList.Row]  = '�ܿ�' then
                     ParamByName('su_gu3').AsString := '10'
                    else if grdList.Cells[6, grdList.Row]  = '�ֻ�' then
                         ParamByName('su_gu3').AsString := '12'
                        else
                             ParamByName('su_gu3').AsString := '09';

               ParamByName('su_gu2').AsString := '3';  //��ǰ


                if grdList.Cells[3, grdList.Row]  = '����(��޿���ȯ)' then
                   ParamByName('su_gu1').AsString := '3'
                else if grdList.Cells[3, grdList.Row]  = '��޿���ȯ ��������' then
                   ParamByName('su_gu1').AsString := '3'
                else
                   ParamByName('su_gu1').AsString := '1';

                if grdList.Cells[14, grdList.Row]  <> '' then   //�������
                  ParamByName('su_sobulru').AsString := '9'
                else ParamByName('su_sobulru').AsString := '';

                 ParamByName('jejosa').AsString := trim(grdList.Cells[10, grdList.Row]);
         end;
         1: //���
         begin
               ParamByName('su_gu2').AsString := '8';  //ġ�����

            if grdList.Cells[11, grdList.Row] <> 'Q' then
               ParamByName('su_gu1').AsString := '1'  //�޿����
            else
               ParamByName('su_gu1').AsString := '3';  //��޿����

               ParamByName('su_gu3').AsString := '25';  //����
               ParamByName('su_sobulru').AsString := '';
               ParamByName('jejosa').AsString := trim(grdList.Cells[10, grdList.Row]);
         end;
      end;


      ExecSql;
      showmessage('�߰��Ǿ����ϴ�');


    end;
  end;

end;

procedure TSugaRegi_f.grdListGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

//  if grdList.Cells[6, Arow]  = 'X' then
//    Fcol := $005A7083
//  else if grdList.Cells[6, Arow]  = 'N' then
//    Fcol := $00A68059
//  else
//    Fcol := clBlack;

        if (grdList.cells[11, aRow] ='Q' ) and  (aCol > 0 ) then
                ABrush.Color := $00FFEEFF;



end;

procedure TSugaRegi_f.Button1Click(Sender: TObject);  //AllSave
var
   i : integer;
   sanghanga : string;
begin
      try


      progressbar1.Position := 0;
      progressbar1.Max :=   grdList.RowCount - 1;
      for I := 1 to grdList.RowCount - 1  do

      begin
          with dm_f.SqlFind do
          begin
            Close;
            Sql.Clear;
            Sql.Add('insert into suga ');
            Sql.Add(' (su_key,su_apply,bo_day,ja_day,il_day,wo_day, ');
            Sql.Add(' bo_dan, ja_dan, il_dan, wo_dan, su_gu1,su_gu2,su_gu3,');
            Sql.Add(' su_sobulru,su_kor_name,su_junsan,dan_qty, jejosa, sugu1 )');  //sugu1 �޿� ����
            Sql.Add(' values ');
            sql.Add('( :su_key,:su_apply,:bo_day,:bo_day,:bo_day,:bo_day, ');
            Sql.Add(' :bo_dan, :ja_dan, :il_dan, :wo_dan,:su_gu1,:su_gu2,:su_gu3,');
            Sql.Add(' :su_sobulru,:su_kor_name,:su_key,''1'', :jejosa, :sugu1)');  //sugu1 �޿� ����


             //  if cbMat.Checked = false then
               case cbKind.ItemIndex of
                 0: //���� �߰�
                 begin
                    ParamByName('su_key').AsString   := grdList.Cells[1, i];
                    ParamByName('su_apply').AsString := grdList.Cells[2, i];
                    ParamByName('bo_day').AsString   := grdList.Cells[2, i];

                    if trim(grdList.Cells[4, i]) <> '' then
                     sanghanga :=  grdList.Cells[4, i]
                     else
                     sanghanga :='0';

                    ParamByName('bo_dan').AsString   := sanghanga;
                    ParamByName('ja_dan').AsString   := sanghanga;
                    ParamByName('il_dan').AsString   := sanghanga;
                    ParamByName('wo_dan').AsString   := sanghanga;

                    ParamByName('sugu1').AsString := grdList.Cells[3, i];
                  {  �޿�
                      �޿�����
                      �����Ұ�
                      ����
                      ����}

                    { ComboBox1.Itemindex
                      0����
                      1�ܿ�
                      2�ֻ�
                      }

                    if      grdList.Cells[6, i] = '����'  then ParamByName('su_gu3').AsString := '09' //����
                    else if grdList.Cells[6, i] = '�ܿ�'  then ParamByName('su_gu3').AsString := '10' //�ܿ�
                    else if grdList.Cells[6, i] = '�ֻ�'  then ParamByName('su_gu3').AsString := '12' //�ֻ�
                    else ParamByName('su_gu3').AsString := '09';

                    ParamByName('su_gu1').AsString := '1';  //�޿����
                    ParamByName('su_gu2').AsString := '3';  //��ǰ


                    //��������Ǿ�ǰ
                    if trim(grdList.Cells[14, i]) <> ''  then
                      ParamByName('su_sobulru').AsString := '9'
                        else
                          ParamByName('su_sobulru').AsString := '';

                    ParamByName('su_kor_name').AsString := trim(grdList.Cells[7, i]);
                    ParamByName('jejosa').AsString := trim(grdList.Cells[10, i]);

                  end ;
               1: //����߰�

                  begin

                    ParamByName('su_key').AsString   := grdList.Cells[1, i];
                    ParamByName('su_apply').AsString := grdList.Cells[2, i];
                    ParamByName('bo_day').AsString   := grdList.Cells[2, i];

                    if trim(grdList.Cells[6, i]) <> '' then
                     sanghanga :=  grdList.Cells[6, i]
                     else
                     sanghanga :='0';

                    ParamByName('bo_dan').AsString   := sanghanga;
                    ParamByName('ja_dan').AsString   := sanghanga;
                    ParamByName('il_dan').AsString   := sanghanga;
                    ParamByName('wo_dan').AsString   := sanghanga;

                    ParamByName('sugu1').AsString  := '';
                    ParamByName('su_gu1').AsString := '1';  //�޿����
                    ParamByName('su_gu2').AsString := '8';  //ġ�����
                    ParamByName('su_gu3').AsString := '23'; //óġ

                    ParamByName('su_sobulru').AsString := '';

                    ParamByName('su_kor_name').AsString := trim(grdList.Cells[7, i]);
                    ParamByName('jejosa').AsString      := trim(grdList.Cells[10, i]);


                  end;
               end;



              ExecSql;
               //  showmessage('�߰��Ǿ����ϴ�');
              application.ProcessMessages;
              progressbar1.Position :=  progressbar1.Position +1;
          end;
      end;
    except
     // ShowMEssage('�ߺ��ڵ尡 �ֽ��ϴ�.');
    end;

end;

procedure TSugaRegi_f.Button2Click(Sender: TObject);
begin
     loadDataFromMemo(1);
end;

procedure TSugaRegi_f.cbKindChange(Sender: TObject);
begin

     loadColHeader(cbkind.ItemIndex);
     LoadGridColumnOrder(grdList, 'sugaRegform'+ inttostr(cbKind.ItemIndex));

end;

procedure TSugaRegi_f.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
      btnSearchClick(self);

end;

procedure TSugaRegi_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin


    saveGridColumnOrder(grdList, 'sugaRegform'+ inttostr(cbKind.ItemIndex) );

end;

procedure TSugaRegi_f.FormCreate(Sender: TObject);
begin
     initAdvGrid(grdList);

end;

procedure TSugaRegi_f.FormShow(Sender: TObject);
begin
      LoadGridColumnOrder(grdList, 'sugaRegform'+ inttostr(cbKind.ItemIndex));
end;

procedure TSugaRegi_f.grdListClickCell(Sender: TObject; ARow, ACol: Integer);
var
     Button: TMouseButton;

     btnRect: Trect;
     varTag : string;
     compoName : string;
     treatRoom : string;
     doc : string;

     grdRect: Trect;
     i  : integer;

begin

     grdRect := grdList.CellRect(ACol, Arow);



     if (aRow=0) and (acol=0) then
     begin
             gridColSelect(grdList, grdRect, clbColumnCheck);
     end;
end;

procedure TSugaRegi_f.grdListClickSort(Sender: TObject;
  ACol: Integer);
begin

 // grdList.Sort(AColumn.Index, True);
      grdList.autonumberCol(0);
      grdList.cursor := crDefault;
end;





procedure TSugaRegi_f.loadDataFromMemo(kind: integer);
var
   aRow, i : integer;
begin

  grdList.RemoveRows(1,grdList.RowCount -1);
  grdList.RowCount := 1;


     sdFileName := ExtractFileDir(Application.ExeName) + '\MasterData\drug.mdb';


  if dm_f.uniConnection3.Connected = false then
    dm_f.uniConnection3.ConnectString :=
         'Provider Name=Access;Database=' + sdFileName ;

  case kind of

      1:
      begin
          for i := 0 to memo1.lines.count-1 do
          begin
            with dm_f.uniQuery1 do
            begin
              Close;
              Sql.Clear;
              Sql.Add('select *  from �డ  ');     //, apply_day, tuye, coname, gub_gu,out_gubun,sangkum,law_merit

              Sql.Add('where code = :code');
              paramByName('code').AsString :=  trim(memo1.lines[i]) ;
              Open;
              First;

              if not isEmpty then
              begin


               // aRow:= 1;

                while not eof do
                begin

                    grdList.addRow;
                    aRow := grdList.RowCount - 1;

                //  grdList.AddRow;
                      grdList.Cells[1, aRow]  := Fields[0].AsString;  //FieldByName('code').AsString;
                      grdList.Cells[2, aRow]  := Fields[1].AsString;  //FieldByName('name').AsString;
                      grdList.Cells[3, aRow]  := Fields[2].AsString;  //FieldByName('apply_day').AsString;
                      grdList.Cells[4, aRow]  := Fields[3].AsString;   //FieldByName('tuye').AsString;
                      grdList.Cells[5, aRow]  := Fields[4].AsString;   //FieldByName('coname').AsString;

        //              if FieldByName('gub_gu').AsString = '����' then
        //              begin
        //                grdList.Cells[6, aRow]  := 'N'
        //              end
        //              else if FieldByName('gub_gu').AsString = '�̻���' then
        //              begin
        //                grdList.Cells[6, aRow]  := 'X'
        //              end
        //              else
        //              begin
        //                grdList.Cells[6, aRow]  := 'O';
        //              end;

                      grdList.Cells[6, aRow]  :=  Fields[5].AsString;  //FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[7, aRow]  :=  Fields[6].AsString;  //FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[8, aRow]  :=  Fields[7].AsString;  //FieldByName('out_gubun').AsString;  //�������
                      grdList.Cells[9, aRow]  :=  Fields[8].AsString;  //FieldByName('sangkum').AsString;   //�ܰ�
                      grdList.Cells[10, aRow] :=  Fields[9].AsString;  //FieldByName('law_merit').AsString;  //�����
                      grdList.Cells[11, aRow] :=  Fields[10].AsString;
                      grdList.Cells[12, aRow] :=  Fields[11].AsString;
                      grdList.Cells[13, aRow] :=  Fields[12].AsString;
                      grdList.Cells[14, aRow] :=  Fields[13].AsString;
                      grdList.Cells[15, aRow] :=  Fields[14].AsString;
                      grdList.Cells[16, aRow] :=  Fields[15].AsString;
                      grdList.Cells[17, aRow] :=  Fields[16].AsString;
                      grdList.Cells[18, aRow] :=  Fields[17].AsString;
                      grdList.Cells[19, aRow] :=  Fields[18].AsString;
                      grdList.Cells[20, aRow] :=  Fields[19].AsString;
                      grdList.Cells[21, aRow] :=  Fields[20].AsString;
                      grdList.Cells[22, aRow] :=  Fields[21].AsString;
                      grdList.Cells[23, aRow] :=  Fields[22].AsString;
                      grdList.Cells[24, aRow] :=  Fields[23].AsString;
                      grdList.Cells[25, aRow] :=  Fields[24].AsString;
        //              grdList.Cells[26, aRow] :=  Fields[25].AsString;
        //              grdList.Cells[27, aRow] :=  Fields[26].AsString;



               //   aRow:= aRow + 1;
                  Next;

                end;
              //  BlankRow(grdList, 20);
              end;
            end;

            grdList.AutoNumberCol(0);
         end;
        end;


      2:
      begin
//            grdList.ColumnHeaders.Clear;
//            grdList.ColumnHeaders.Add('No.');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('�������� ');
//            grdList.ColumnHeaders.Add('ǰ ��');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('���ѱݾ�');
//            grdList.ColumnHeaders.Add('����ȸ��');
//            grdList.ColumnHeaders.Add('�� ��');
//            grdList.ColumnHeaders.Add('���Ծ���');
//            grdList.ColumnHeaders.Add('���_1 ');
//            grdList.ColumnHeaders.Add('���_2 ');



            with dm_f.uniQuery1 do
            begin
              Close;
              Sql.Clear;
              Sql.Add('select *  from ���  ');     //, apply_day, tuye, coname, gub_gu,out_gubun,sangkum,law_merit
                case rgSearch.ItemIndex of

                     0: Sql.Add('where name like :sName order by name');
                     1: Sql.Add('where code like :sName  order by code, apply_day desc');
                     2: Sql.Add('where coname like :sName  order by name, apply_day desc');
                     3: Sql.Add('order by name, apply_day desc');
                 end;
                 case rgSearch.ItemIndex of
                   0..2:
                      ParamByName('sname').Value := '%' + edtSearch.Text + '%';
                 end;

              Open;
              First;

              if not isEmpty then
              begin
                aRow:= 1;
                grdList.RowCount := recordCount +1;

                while not eof do
                begin

{grdList.ColumnHeaders.Add('No.');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('�������� ');
             grdList.ColumnHeaders.Add('');
             grdList.ColumnHeaders.Add('���ѱݾ�');
             grdList.ColumnHeaders.Add('');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('ǰ ��');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('�� ��');
             grdList.ColumnHeaders.Add('���Ծ���');
             grdList.ColumnHeaders.Add('����ȸ��');
             grdList.ColumnHeaders.Add('���_1 ');
             grdList.ColumnHeaders.Add('���_2 ');
}

                      grdList.Cells[1, aRow]  := trim( Fields[1].AsString);  //('�� ��');FieldByName('code').AsString;
                      grdList.Cells[2, aRow]  := trim( Fields[2].AsString);  //('�������� ');FieldByName('name').AsString;
                      grdList.Cells[3, aRow]  := trim('');  //('');FieldByName('apply_day').AsString;
                      grdList.Cells[4, aRow]  := trim( Fields[6].AsString);   //('���ѱݾ�');FieldByName('tuye').AsString;
                      grdList.Cells[5, aRow]  := trim('');   //('');FieldByName('coname').AsString;
                      grdList.Cells[6, aRow]  :=  trim( Fields[8].AsString);  //('�� ��');FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[7, aRow]  :=  trim( Fields[3].AsString);  //('ǰ ��');FieldByName('gub_gu').AsString;     //�޿�����
                      grdList.Cells[8, aRow]  :=  trim( Fields[4].AsString);  //('�� ��');FieldByName('out_gubun').AsString;  //�������
                      grdList.Cells[9, aRow]  :=  trim( Fields[5].AsString);  //('�� ��');FieldByName('sangkum').AsString;   //�ܰ�
                      grdList.Cells[10, aRow] :=  trim( Fields[9].AsString);  //('���Ծ���');FieldByName('law_merit').AsString;  //�����
                      grdList.Cells[11, aRow] :=  trim( Fields[10].AsString);  //('���_1 ');
                      grdList.Cells[12, aRow] :=  trim( Fields[11].AsString);  //('���_2 ');

                  aRow:= aRow + 1;
                  Next;

                end;
              //  BlankRow(grdList, 20);
              end;
            end;

            grdList.AutoNumberCol(0);

      end;
  end;

end;


end.

