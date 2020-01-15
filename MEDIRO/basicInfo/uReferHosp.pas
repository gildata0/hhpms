unit uReferHosp;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, AdvGlowButton, StdCtrls, EllipsLabel, AdvEdit ,
     ExtCtrls , DB, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid;

type
     TreferHosp_f = class(TForm)
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    Panel2: TPanel;
    edtSogeja: TAdvEdit;
    edtHomePhone: TAdvEdit;
    memSogeContent: TMemo;
    edtCharacteristic: TAdvEdit;
    cmbSogePath: TComboBox;
    edtSogeSite: TAdvEdit;
    edtCellPhone: TAdvEdit;
    Panel3: TPanel;
    edtHospname: TAdvEdit;
    edtReferCode: TAdvEdit;
    lblID: TLabel;
    edtCphone: TAdvEdit;
    grdReferDoc: TAdvStringGrid;
    edtCphone2: TAdvEdit;
    edtRHospID: TEdit;
    edtRHosp: TEdit;
    Button1: TButton;
    Button2: TButton;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    EllipsLabel5: TLabel;
    lblSogePaht: TLabel;
    EllipsLabel6: TLabel;
    EllipsLabel7: TLabel;
    EllipsLabel8: TLabel;
    EllipsLabel9: TLabel;
    EllipsLabel4: TLabel;
    EllipsLabel10: TLabel;
    EllipsLabel11: TLabel;
    btnDelete: TAdvGlowButton;
          procedure FormCreate(Sender: TObject);
          procedure btnOkClick(Sender: TObject);
          procedure edtCellPhoneExit(Sender: TObject);
          procedure edtSogejaKeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure grdReferDocEditCellDone(Sender: TObject; ACol, ARow: Integer);
    procedure edtCphoneChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

     private
          varSogeGroup: array of string;
          x, y, i: Integer;
          procedure FieldClear;
          procedure LoadscSogeContent;

          procedure SetCharacteristic(barCode: string);
    procedure LoadReferHosp_Doc2(HospCode: string);

          { Private declarations }
     public
          varMode:integer;
          procedure FieldSetting(isEmpty:boolean);
          function GetSogeContent: string;
          function GetSogeja: string;
          { Public declarations }
     end;

var
     referHosp_f: TreferHosp_f;

implementation

uses uDM, uFunctions, uGogekData, uMain;

{$R *.dfm}

procedure TreferHosp_f.FieldClear();
begin
     edtSogeja.Text := '';
     edtHomePhone.Text := '';
     edtCellPhone.Text := '';
     cmbSogePath.Text := '';
     //cmbsogePath.Items.Clear;
     edtCharacteristic.Text := '';
     edtSogeSite.Text := '';
     memSogeContent.Text := '';
     edtCPhone.text  := '';
     edtCPhone2.text  := '';

     grdReferDoc.RemoveRows(1, grdReferDoc.RowCount-1 );

end;

procedure TreferHosp_f.LoadscSogeContent();
begin

end;

procedure TreferHosp_f.SetCharacteristic(barCode: string);
var
     Count: integer;
begin
     with dm_f.SqlWork do
     begin
          Close;
          Sql.Clear;
          Sql.Add('select * from ma_basic');
          Sql.Add(' where Code like :Code and Code<> :code2');
          ParamByName('Code').AsString := barCode + '%';
          ParamByName('Code2').AsString := barCode + '000';
          Open;

          if not isEmpty then
          begin
               while not Eof do
               begin
                    cmbSogePath.Items.Add(FieldByName('disp').AsString);

                    next;
               end;
          end;
     end;

end;


procedure TreferHosp_f.LoadReferHosp_Doc2(HospCode: string);
const
     SelectSogeja = 'select * from ma_referhosp_doc  where refercode = :refercode';
begin
     grdReferDoc.RemoveRows(1,  grdReferDoc.RowCount-1 );

     with dm_f.SqlWork do
     begin

          Close;
          SQL.Clear;
          sql.text := SelectSogeja;
          ParamByName('referCode').AsString := HospCode;
          SQL.Add('Order by DocCode ');
          Open;
          if not isEmpty then
          begin
               while not eof do
               begin
                   grdReferDoc.AddRow;
                   grdReferDoc.Cells[0,grdReferDoc.RowCount-1] :=  fieldByname('DocCode').asString;
                   grdReferDoc.Cells[1,grdReferDoc.RowCount-1] :=  fieldByname('DocName').asString;
                   grdReferDoc.Cells[2,grdReferDoc.RowCount-1] :=  fieldByname('DocPhone').asString;

                   next;
               end;
          end;
     end;
end;

procedure TreferHosp_f.FieldSetting(isEmpty:boolean);
const
       SelectReferer = 'select * from ma_referhosp where referCode=:referCode';
var
    maxId:integer;
    referHospCode:string;
    varSogePhone:string;
begin

    if isEmpty = true then
     begin
           maxId:=  GetReferHospID;
           referHospCode:= 'CHOSP' +  formatFloat('00000', maxId);
             if not Assigned(main_f) then
             begin
                 edtHospname.Text  := '';
             end
             else
             begin
                 edtHospname.Text  := main_f.edtreferHospName.Text;// ma_referHospName;
             end;


           edtReferCode.Text := referHospCode;
           edtRhosp.text       := '';
           edtcPhone.text      := '';
           edtcPhone2.text     := '';
           edtRHospID.text     := '';
     end
     else
     begin

          with dm_f.sqlWork do
          begin
              close;
              sql.clear;
              sql.text:=  SelectReferer;
              paramByName('referCode').asString := ma_referHospCode;
              open;
              if not isEmpty then
              begin
                   edtcPhone.text        := fieldByName('rHospPhone').asString;
                   edtcPhone2.text       := fieldByName('rHospPhone2').asString;
                   memSogeContent.text   := fieldByName('remark').asString;
                   edtRhosp.text         :=  fieldByName('rHosp').asString;
                   edtRHospID.text       :=  fieldByName('rHospID').asString;
                   edtHospname.Text      := fieldByName('HospName').asString;
                   edtReferCode.Text     := fieldByName('referCode').asString;
             end;

          end;

              if ma_referHospCode <> '' then
               LoadReferHosp_Doc2(ma_referHospCode);


     end;

//     SetCharacteristic('022');
//
//    // edtSogeja.Text :=  gogek_f.edtSoge.Text;
//     edtSogeja.Text :=  ma_refer;
//
//     with dm_f.SqlWork do
//     begin
//
//              Close;
//              SQL.Clear;
//              sql.text := SelectReferer;
//              sql.text := sql.Text + selectReferer_where1;
//              ParamByName('id').AsString  := ma_referid;
//              Open;
//              if not IsEmpty then
//              begin
//                  edtSogeja.Text :=  FieldByName('name').AsString;
//                  edtHomePhone.Text := FieldByName('hphone').AsString;
//                  edtCellPhone.Text := FieldByName('cphone').AsString;
//                  edtCharacteristic.Text := FieldByName('remark').AsString;
//                  edtSogeSite.Text := FieldByName('address').AsString;
//              end;
//
//              Close;
//              SQL.Clear;
//              sql.text := SelectRefer;
//              sql.text := sql.Text + selectRefer_where1;
//              ParamByName('id').AsString := ma_referid;
//              Open;
//              if not IsEmpty then
//              begin
//                  cmbSogePath.Text  := FieldByName('kind').AsString;
//                  memSogeContent.Text := FieldByName('remark').AsString;
//              end;
//     end;



end;

procedure TreferHosp_f.FormCreate(Sender: TObject);
begin
     FieldClear();
//     FieldSetting();
     //LoadMotiveGroup('022');
     //DisplayCheckGroup();
//     LoadscSogeContent();

end;

function TreferHosp_f.GetSogeContent(): string;
begin
     main_f.donggiMemo1.Text := memSogeContent.Text;
end;

function TreferHosp_f.GetSogeja(): string;
begin
     main_f.edtSoge2.Text := edtsogeja.Text;
end;

procedure TreferHosp_f.grdReferDocEditCellDone(Sender: TObject; ACol,
  ARow: Integer);
begin
  if aRow>0 then
  case aCol of
      2 : grdReferDoc.Cells[aCol, aRow] := call_tel_type(grdReferDoc.Cells[aCol, aRow]);
  end;
end;

procedure TreferHosp_f.btnDeleteClick(Sender: TObject);
begin
       if Application.MessageBox(PChar('의뢰병원기록을 삭제 하시겠습니까?'),  '알림',
           MB_YESNO) = IDYES then
       begin
          DeleteRefererHosp(edtReferCode.text);
          close;
       end;
end;

procedure TreferHosp_f.btnOkClick(Sender: TObject);
var
   i : integer;
begin
//     if varMode <> 1 then
//     begin

           //새로 등록된 소개자 저장
         if  SaveRefererHosp(
               edtReferCode.text,//refercode,
               edtHospname.text,//hospName,
               edtCPhone.text, // 연락처
               edtCPhone2.text, // 연락처2
               memSogeContent.Text, //remark,
               edtRHosp.text,//rHosp,    //PACS Code
               edtRHospID.text,//rhospID,  //PACS Login Code
               FormatDateTime('YYYY-MM-DD', now)) = true then  //RegDay: string);
          begin


            //ReferDoc save
            for I := 1 to grdReferDoc.rowCount-1 do
            begin
               SaveRefererHosp_Doc(  edtReferCode.text,
                          grdReferDoc.cells[1, i ] , // DocName
                          grdReferDoc.cells[2, i ] , // DocPhone,
                          grdReferDoc.cells[0, i ] , // DocCode,
                          formatdatetime('YYYY-MM-DD', now) );
            end;





           ma_ReferHospCode := edtReferCode.text;
           ma_referHospName := edtHospname.text;
           ma_RHosp         := edtRHosp.text;
           ma_RHospID       := edtRHospID.text;

           if   assigned(main_f) then
           begin

               main_f.edtreferHospName.Text := ma_referHospName;
               main_f.edtreferHospCode.Text := ma_ReferHospCode;
               main_f.edtRHosp.Text         := ma_RHosp;
               main_f.edtRHospID.Text       := ma_RHospID;


               if ma_ReferHospCode <> ''then
                   main_f.cbReferHospDoc.Items.Assign(  LoadReferHosp_Doc(ma_ReferHospCode))
               else
                   main_f.cbReferHospDoc.clear;


          end;


          end;


     close;

end;

procedure TreferHosp_f.Button1Click(Sender: TObject);
begin
     if ((trim(grdReferDoc.Cells[0, grdReferDoc.RowCount-1]) <> '')
     and (trim(grdReferDoc.Cells[1, grdReferDoc.RowCount-1]) <> '')) or
      ((trim(grdReferDoc.Cells[0, grdReferDoc.RowCount-1]) = '')
     and (trim(grdReferDoc.Cells[1, grdReferDoc.RowCount-1]) <> ''))
      then
     begin
         grdReferDoc.AddRow;
         grdReferDoc.AutoNumberCol(0);
     end;

end;

procedure TreferHosp_f.Button2Click(Sender: TObject);
begin

       if Application.MessageBox(PChar('원장기록을 삭제 하시겠습니까?'),  '알림', MB_YESNO) = IDYES then
       begin
        try
            with dm_f.SqlWork do
            begin
                 Close;
                 SQL.Clear;



                 sql.add('  delete from  ma_referhosp_Doc ');
                 sql.add('  where refercode=:refercode and DocCode=:DocCode ');


                 ParamByName('refercode').AsString  := edtrefercode.text;
                 ParamByName('DocCode').AsString    := grdReferDoc.Cells[0,grdReferDoc.Row];

                 ExecSQL;

                 grdReferDoc.RemoveRows(grdReferDoc.Row, 1);

            end;
        except

        end;
       end
       else
       begin

       end;

end;

procedure TreferHosp_f.edtCellPhoneExit(Sender: TObject);
begin
     edtCellPhone.Text := call_tel_type(edtCellPhone.Text);
end;

procedure TreferHosp_f.edtCphoneChange(Sender: TObject);
begin
     (sender as tAdvEdit).Text := call_tel_type((sender as tAdvEdit).Text );
     (sender as tAdvEdit).SelStart := length((sender as tAdvEdit).Text );

end;

procedure TreferHosp_f.edtSogejaKeyPress(Sender: TObject;
     var Key: Char);
begin
     if key = #13 then
     begin
          SelectNext(Sender as TWinControl, True, True);
          Key := #0;
     end
end;

procedure TreferHosp_f.FormShow(Sender: TObject);
begin



     caption:='의뢰병원등록';
//     edthomePhone.SetFocus;




end;

procedure TreferHosp_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TreferHosp_f.FormDestroy(Sender: TObject);
begin
     referHosp_f := nil;
end;

procedure TreferHosp_f.btnCancelClick(Sender: TObject);
begin

           if   assigned(main_f) then
           begin
//
//               main_f.edtreferHospName.Text := '';
//               main_f.edtreferHospCode.Text := '';
//               main_f.edtRHosp.Text         := '';
//               main_f.edtRHospID.Text       := '';
//
               if ma_ReferHospCode <> ''then
                   main_f.cbReferHospDoc.Items.Assign( LoadReferHosp_Doc(ma_ReferHospCode))
               else
                   main_f.cbReferHospDoc.clear;
           end;

    close;
end;

end.

