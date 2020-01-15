unit addUseWord;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls;

type
     TaddUseWord_f = class(TForm)
          Label1: TLabel;
          memUseWord: TMemo;
          btnOk: TButton;
          btnCancel: TButton;
          btnAdd: TButton;
          procedure FormShow(Sender: TObject);
          procedure btnOkClick(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure btnAddClick(Sender: TObject);
     private
    { Private declarations }
     public
          varKind: integer;
    { Public declarations }
     end;

var
     addUseWord_f: TaddUseWord_f;

implementation

uses uDM, saveChamgo;

{$R *.dfm}

procedure TaddUseWord_f.FormShow(Sender: TObject);
begin
     caption := '상용구 추가';
     memUseWord.text := '';
     memUseWord.SetFocus;
     btnadd.Enabled := false;
end;

procedure TaddUseWord_f.btnOkClick(Sender: TObject);
var
     varMaxCode: integer;
begin

     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select max(Code) as maxCode from ma_UseWord');
          Sql.Add('Where sect= :sect');
          ParamByName('sect').Asinteger := varKind;
          Open;
          varMaxCode := FieldByName('maxCode').AsInteger + 1;

          Close;
          Sql.Clear;
          Sql.Add('Insert into ma_UseWord');
          Sql.Add('(sect,Code,word) values');
          Sql.Add('(:sect,:Code,:word)');
          ParamByName('sect').Asinteger := varKind;
          ParamByName('code').Asinteger := varMaxCode;
          ParamByName('Word').AsString := memUseWord.text;
          ExecSql;
     end;

     if Assigned(saveChamgo_f) then
     saveChamgo_f.loadUseWord;
     close;

//     btnOk.Enabled := false;
//     btnAdd.Enabled := True;
end;

procedure TaddUseWord_f.btnCancelClick(Sender: TObject);
begin
     if Assigned(saveChamgo_f) then
     saveChamgo_f.loadUseWord;
     close;
end;

procedure TaddUseWord_f.btnAddClick(Sender: TObject);
begin
     memUseWord.Text := '';
     memUseWord.setfocus;
     btnAdd.Enabled := true;
     btnOk.Enabled := true;
end;

end.

