unit findpost_new;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ExtCtrls, AdvPanel,
     AdvGlowButton, AdvObj, AdvUtil;

type
     Tfindpost_new_f = class(TForm)
          AdvPanel2: TAdvPanel;
          AdvPanel1: TAdvPanel;
          btnOk: TAdvGlowButton;
          btnCancel: TAdvGlowButton;
          grdPost: TAdvStringGrid;
    AdvPanel3: TAdvPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    edtDongStr: TEdit;
    Button1: TButton;
    Label4: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    edtJibun: TEdit;
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure grdPostKeyPress(Sender: TObject; var Key: Char);
    procedure grdPostDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure grdPostClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }

          varDong : string;
     end;

var
     findpost_new_f: Tfindpost_new_f;

implementation

uses uDM, uGogekData ,uGogekData_find ;

{$R *.dfm}

procedure Tfindpost_new_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := caFree;
end;

procedure Tfindpost_new_f.FormDestroy(Sender: TObject);
begin
     findpost_new_f := nil;
end;

procedure Tfindpost_new_f.FormShow(Sender: TObject);
var
     ARow: integer;
begin
     CAPTION := '우편번호 찾기';
     ARow := GrdPost.Row;

     btnOk.Enabled := true;
     DM_f.SqlTemp.Close;
     //  DM_f.SqlTemp.ParamByName('Name').AsString := Edit2.text + '%';
     DM_f.SqlTemp.Open;
     grdPost.SetFocus;

end;

procedure Tfindpost_new_f.grdPostKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
          ModalResult := mrOk

     else
          if key = #27 then
               ModalResult := mrCancel;

end;

procedure Tfindpost_new_f.grdPostDblClick(Sender: TObject);
begin
     ModalResult := mrOk ;


end;

procedure Tfindpost_new_f.FormCreate(Sender: TObject);
begin
      grdPost.Align := alClient;
      label6.Caption:= '도로명';
      label7.Caption:= '건물번호';

end;

procedure Tfindpost_new_f.ComboBox1Change(Sender: TObject);
begin
    FindZip_new_Sido('sido', edtDongStr.text,  comboBox1.text, comboBox2.text, comboBox3.text,comboBox4.text, '') ;
end;

procedure Tfindpost_new_f.ComboBox2Change(Sender: TObject);
begin

    FindZip_new_Sido('sigungu', edtDongStr.text, comboBox1.text,comboBox2.text, comboBox3.text,comboBox4.text, '') ;

end;

procedure Tfindpost_new_f.ComboBox3Change(Sender: TObject);
begin
    FindZip_new_Sido('upmyun', edtDongStr.text, comboBox1.text,comboBox2.text, comboBox3.text,comboBox4.text, '') ;

end;

procedure Tfindpost_new_f.ComboBox4Change(Sender: TObject);
begin
    FindZip_new_Sido('doro', edtDongStr.text, comboBox1.text,comboBox2.text, comboBox3.text,comboBox4.text, '') ;

end;

procedure Tfindpost_new_f.Button1Click(Sender: TObject);
begin
    case  RadioGroup1.ItemIndex of
    0:
       begin
           FindZip_new_Sido('jibun', edtDongStr.text, comboBox1.text,comboBox2.text, comboBox3.text,edtDongStr.text, edtJibun.text) ;
       end;
    1:
       begin
           FindZip_new_Sido('jibun2', edtDongStr.text, comboBox1.text,comboBox2.text, comboBox3.text,edtDongStr.text, edtJibun.text) ;
       end;
    end;

end;

procedure Tfindpost_new_f.RadioGroup1Click(Sender: TObject);
begin
    case  RadioGroup1.ItemIndex of
    0:
       begin

            label6.Caption:= '도로명';
            label7.Caption:= '건물번호';
       end;
    1:
       begin
            label6.Caption:= '동명';
            label7.Caption:= '번지';
       end;
    end;
end;

procedure Tfindpost_new_f.grdPostClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
      if arow <= 0 then
      exit;
       combobox1.ItemIndex := combobox1.Items.IndexOf( grdPost.cells[4,aRow]);
       combobox2.ItemIndex := combobox2.Items.IndexOf( grdPost.cells[5,aRow]);
       combobox3.ItemIndex := combobox3.Items.IndexOf( grdPost.cells[6,aRow]);
       combobox4.ItemIndex := combobox4.Items.IndexOf( grdPost.cells[7,aRow]);

       edtDongStr.text := grdPost.cells[7,aRow];
end;

procedure Tfindpost_new_f.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
     begin
           SelectNext(Sender as TWinControl, True, True);
            Key := #0;
     end;
end;

end.

