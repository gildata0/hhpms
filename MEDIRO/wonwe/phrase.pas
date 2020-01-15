unit phrase;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls,  AdvGlowButton;

type
     Tphrase_f = class(TForm)
          Panel1: TPanel;
          Panel2: TPanel;
          BitBtn1: TBitBtn;
    GradRoundBtn1: TAdvGlowButton;
          procedure FormShow(Sender: TObject);
          procedure BitBtn1Click(Sender: TObject);
          procedure MakeButtonPh2(top: Integer; left: Integer; sCode: string;
               sName: string; sCap: string);
          procedure GradRoundBtn1Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     phrase_f: Tphrase_f;

implementation

uses uDM, wonwe;

{$R *.dfm}

procedure Tphrase_f.FormShow(Sender: TObject);
var
     t, w: Integer;
begin
     GradRoundBtn1.Visible := False;
     with dm_f.SqlTemp do
     begin
          Close;
          Sql.Clear;
          if Self.Caption = '용법' then
          begin
               Sql.Add('select * from Phrase where kind=1 order by sortkey');
          end
          else
          begin
               Sql.Add('select * from Phrase where kind=2 order by sortkey');
          end;
          Open;
          Last;
          if RecordCount > 0 then
          begin
               First;
               t := 6;
               w := 8;
               while not eof do
               begin
                    MakeButtonPh2(t, w, FieldByName('PhraseCode').AsString,
                         FieldByName('PhraseName').AsString,
                         FieldByName('Capital').AsString);
                    if w < 100 then
                    begin
                         w := w + 106;
                    end
                    else
                    begin
                         t := t + 27;
                         w := 8;
                    end;

                    Next;
               end;
          end;
     end;

end;

procedure TPhrase_f.MakeButtonPh2(top: Integer; left: Integer; sCode: string;
     sName: string; sCap: string);
var
     NewButtonS: TAdvGlowButton;
begin
     //NewButton
     NewButtonS := TAdvGlowButton.Create(Phrase_f);
     NewButtonS.Parent := Panel1;
     NewButtonS.Top := top;
     NewButtonS.Left := left;

     NewbuttonS.Height := 25;
     NewButtonS.Width := 103;
    // NewButtonS.RoundDegree := 3;

     NewButtonS.ShowHint := True;
     NewButtonS.OnClick := GradRoundBtn1.OnClick;
     NewButtonS.Caption := sCap;
     NewButtonS.Name := 'Y' + sCode;
     NewButtonS.Hint := sName;

end;

procedure Tphrase_f.BitBtn1Click(Sender: TObject);
begin
     Close;
end;

procedure Tphrase_f.GradRoundBtn1Click(Sender: TObject);
begin
     if Self.Caption = '용법' then
     begin
          Wonwe_f.Memo1.text := Wonwe_f.Memo1.text + (Sender as
               TAdvGlowButton).Hint + #13#10;
     end
     else
     begin
          Wonwe_f.Memo2.text := Wonwe_f.Memo2.text + (Sender as
               TAdvGlowButton).Hint + #13#10;
     end;
end;

end.
