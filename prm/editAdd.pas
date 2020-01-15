unit editAdd;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls;

type
     TeditAdd_f = class(TForm)
          Panel1: TPanel;
          Panel2: TPanel;
          Label1: TLabel;
          edtAdd1: TEdit;
          Label2: TLabel;
          edtPost1: TEdit;
          edtPost2: TEdit;
          edtAdd2: TEdit;
          Panel3: TPanel;
          Button1: TButton;
          Button2: TButton;
          lblChart: TLabel;
          Label3: TLabel;
          edtBadd1: TEdit;
          edtBadd2: TEdit;
          procedure FormShow(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure Button2Click(Sender: TObject);
     private
    { Private declarations }
     public
    { Public declarations }
     end;

var
     editAdd_f: TeditAdd_f;

implementation
uses dm,main, uFunctions;
{$R *.dfm}

procedure TeditAdd_f.FormShow(Sender: TObject);
begin
     caption := 'PRM 주소 수정';
 //    edtPost1.Text := '';
 //    edtPost2.Text := '';
 //    edtAdd1.Text := '';
 //    edtAdd2.Text := '';




end;

procedure TeditAdd_f.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TeditAdd_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TeditAdd_f.FormDestroy(Sender: TObject);
begin
     editAdd_f := nil;
end;

procedure TeditAdd_f.Button2Click(Sender: TObject);
begin
     with dm_f.sqlWork do
     begin
          close;
          sql.Clear;
          sql.Add('Update injek set');
          sql.Add('h_juso=:h_Juso, h_zip=:h_zip');
          sql.Add('where chart=:chart');
          paramByName('chart').asString := lblChart.Caption;
          paramByName('h_juso').asString := edtAdd2.text;
          paramByName('h_zip').asString := deldash(edtPost2.text);
          execSql;
     end;

     main_f.grdMain.Cells[8, main_f.grdMain.Row] := deldash(edtPost2.text);
     main_f.grdMain.Cells[9, main_f.grdMain.Row] := edtAdd2.text;
     Close;
end;

end.

