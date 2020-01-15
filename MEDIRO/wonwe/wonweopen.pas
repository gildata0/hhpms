unit wonweopen;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons,   ExtCtrls,
     Grids, AdvObj, BaseGrid, AdvGrid, AdvUtil;

type
     Twonweopen_f = class(TForm)
          BitBtn1: TBitBtn;
          BitBtn2: TBitBtn;
          BitBtn3: TBitBtn;
          Panel2: TPanel;
          grdMain: TAdvStringGrid;
          procedure FormShow(Sender: TObject);
          procedure BitBtn1Click(Sender: TObject);
          procedure BitBtn3Click(Sender: TObject);
          procedure Panel2Click(Sender: TObject);
          procedure BitBtn2Click(Sender: TObject);
          procedure grdMainDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
     private
          { Private declarations }
     public
          { Public declarations }
          txtSql: string;
     end;

var
     wonweopen_f: Twonweopen_f;

implementation

uses wonwe, uDM;

{$R *.dfm}

procedure Twonweopen_f.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 // if  Assigned(wonwe_f) then
 //   wonwe_f.free;
    BitBtn1Click(self);

end;

procedure Twonweopen_f.FormShow(Sender: TObject);
var
   i , recCount:integer;
begin
     Panel2.Visible := False;

     with dm_f.sqlTemp  do
     begin
          Open;
          First;
          if not isEmpty then
          begin
               First;
               recCount:=recordCount;
               grdMain.rowcount:=recCount+1;
               for i:=1 to recCount do
               begin
                    grdMain.Cells[1, i]:= FieldByName('jin_day').AsString;
                    grdMain.Cells[2, i]:= FieldByName('seqno').AsString;
                    grdMain.Cells[3, i]:= FieldByName('name').AsString;
                    grdMain.Cells[4, i]:= FieldByName('chart').AsString;
                    grdMain.Cells[5, i]:= FieldByName('doc_name').AsString;
                    Next;
               end;
          end
          else
          begin
               grdMain.Visible := False;
               Panel2.Visible := True;
               Panel2.Align := alClient;
               Panel2.Caption := '만족하는 자료가 없습니다.';
               BitBtn1.Enabled := False;

          end;
     end;
end;

procedure Twonweopen_f.BitBtn1Click(Sender: TObject);
begin
     if ((grdMain.RowCount > 0) and (grdMain.Row >= 0)) then
     begin
          Wonwe_f.cbNeworder.Checked := False;
          Wonwe_f.wDateEdit1.Date := strToDateTime(grdMain.Cells[1, grdMain.Row] );
          Wonwe_F.SpinEdit1.Value := grdMain.ints[2, grdMain.Row] ;
          Wonwe_f.Edit5.Text := grdMain.Cells[3, grdMain.Row];
          Wonwe_f.FieldSet(strToDateTime(grdMain.Cells[1, grdMain.Row]),
               grdMain.ints[2, grdMain.Row]);
     end;
     Close;
end;

procedure Twonweopen_f.BitBtn3Click(Sender: TObject);
begin
     Wonwe_f.cbNeworder.Checked := True;
     Close;
end;

procedure Twonweopen_f.Panel2Click(Sender: TObject);
begin
     Close;
end;

procedure Twonweopen_f.BitBtn2Click(Sender: TObject);
begin

     Close;

end;

procedure Twonweopen_f.grdMainDblClick(Sender: TObject);
begin
     BitBtn1Click(Self);

end;

end.

