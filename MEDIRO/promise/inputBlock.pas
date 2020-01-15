unit inputBlock;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, EllipsLabel, AdvPanel, ExtCtrls, jpeg, AdvEdit,
     ComCtrls, AdvOfficeButtons, AdvGroupBox, AdvPageControl, Grids,
     BaseGrid, AdvGrid, AdvGlowButton,  inifiles,
     AdvCombo,  Mask;

type
     TinputBlock_f = class(TForm)
          btnSave: TAdvGlowButton;
          btnCancel: TAdvGlowButton;
          ColorDialog1: TColorDialog;
          edtpass: TAdvEdit;
          cbEdit: TAdvOfficeCheckBox;
          edtLock: TEdit;
          pnlColor: TPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
    Button1: TButton;
    FontSize: TComboBox;
    Label5: TLabel;
    cbBold: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    lblAppointNo: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel1: TLabel;
    EllipsLabel3: TLabel;
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btnCancelClick(Sender: TObject);
          procedure btnSaveClick(Sender: TObject);
          procedure edtpassChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
          fromtime, totime: string;
          procedure FieldSet;
     end;

var
     inputBlock_f: TinputBlock_f;

implementation
uses uConfig, uDM, uPromiseData, uGogekData, uMain,  uFunctions;
{$R *.dfm}

procedure TinputBlock_f.FormClose(Sender: TObject;
     var Action: TCloseAction);
begin
     action := caFree;
end;

procedure TinputBlock_f.FormDestroy(Sender: TObject);
begin
     inputBlock_f := nil;
end;

procedure TinputBlock_f.FormShow(Sender: TObject);
var
     FormInit: Tinifile;
     varBlockFontSize:integer;
     varBlockColor, varBlockFontSTYLE:string;
     path:string;
begin
     caption := '블럭지정-내용을 입력하세요.';

     lblAppointNo.Caption := '';
     edtLock.text:='';

     Path := ExtractFilePath(ParamStr(0)) + 'DB.ini';
     FormInit := TIniFile.Create(Path);
      FontSize.ItemIndex := FontSize.Items.IndexOf( FormInit.ReadString('BLOCK', 'FONTSIZE','13'));
     varBlockColor := FormInit.ReadString('BLOCK', 'COLOR', '$00FF80FF');
      pnlColor.Color:= stringtocolor(varBlockColor);

     varBlockFontSTYLE := FormInit.ReadString('BLOCK', 'FONTSTYLE', '');
     if    varBlockFontSTYLE ='BOLD' then
       cbBold.Checked:=true
     else
       cbBold.Checked:=false;
     FormInit.Free;
end;

procedure TinputBlock_f.FieldSet;
begin
     edtpass.text := '';

end;

procedure TinputBlock_f.btnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TinputBlock_f.btnSaveClick(Sender: TObject);
var
     varidn: integer;
     varDate, vartime, varGugan, varRemark, varMemo,
          varTeam, varDoc, varChart, varName, vartel,
          varInterval,
          varf_color, varf_size,
          varColor, varJundam, vardam, varJundam2, varNoSMS: string;
     varAlret, varLock: string;
     varIns, varf_bold: boolean;
     varTong, varGuk, varBun, varSDate, varSendTime, varContent, varPos: string;

     varAfterSendDate: integer;
 

     FormInit: Tinifile;
     varBlockFontSize:integer;
     varBlockColor, varBlockFontSTYLE:string;
      path:string;
      nIDn : integer;
begin

     varDate := formatDateTime('YYYY-MM-DD', promiseFrame_fr.dpsdate.Date); //약속일자

     if trim(lblAppointno.Caption) <> '' then
          varidn := strtoint(lblAppointno.Caption)
     else
          varidn := 0;

     varTime := label1.caption; // cbsTime.Text;
     varGugan := label3.caption; // cbGugan.text;
     varRemark :=edtLock.text;
     varmemo :='';
     varTeam :='0';//  promiseFrame_fr.cbDamteam.text;
     varDoc := '';// cbDoc.ColumnItems[cbDoc.itemindex, 2];

     varJundam := ''; //cbJunDam.text;
     vardam := formatDateTime('YYYY-MM-DD', promiseFrame_fr.dpsdate.Date);
     varColor := colortostring(pnlColor.Color);
     varChart := ''; // edtChart.text;
     varname := ''; // edtname.text;
     varTel := ''; // edtTel.text;

     varTong := ''; // substr(edtTel.text, 1, '-');
     varGuk := ''; // substr(edtTel.text, 2, '-');
     varBun := ''; //substr(edtTel.text, 3, '-');
     varJundam2 := '';
     varNoSMS := '';

{   Font.Color := clBlue;
    Font.Size := 15;
    Font.Style := [fsBold];
    }
     varf_color:='clBlue';
     if fontSize.text  <> '' then
       varf_size := fontSize.text 
       else
       varf_size := '15';

     varf_bold:= cbBold.checked;
     varinterval := label4.caption; // inttostr(timetoMin(cbSoyo.text));

     if cbEdit.checked = true then
     begin
          if varname = '' then
          begin
               varname := '[B]';//edtLock.text;
               varPos := '8' //구간 잠금용  (점심 등)
          end;
          varLock := '1'
     end
     else
     begin
          varLock := '0';
     end;

     if lblAppointNo.Caption <> '' then
          varIns := false
     else
          varins := true;

     if promise_saveData(varIns,
           varDate,
           varGugan,
           vartime,
           varRemark,
           varMemo,
          varteam,
          varDoc,
          varChart,
          varname,
          varTel,
          varinterval,
          varAlret,
          varLock,
          varJundam,
          vardam,
         varrHospDocName,// '',
         varrHospCode,// '',
          varColor, varJundam2,varNoSMS,
          varf_color,  varf_size,  varf_bold,
          nIDn,
          '',
          varIdn, varPos) = true then
     begin
          DbdataToPlan(promiseFrame_fr.planner1,
               promiseFrame_fr.popupmenu1,
               promiseFrame_fr.popupmenu3,
               varDate,
               varTeam,
               timeinterval,
               starttime);
     end;


     Path := ExtractFilePath(ParamStr(0)) + 'DB.ini';
     FormInit := TIniFile.Create(Path);
     if fontsize.text <> '' then
         FormInit.WriteInteger('BLOCK', 'FONTSIZE', strtoint(fontsize.text) )
     else
        FormInit.WriteInteger('BLOCK', 'FONTSIZE', 15 ) ;

     FormInit.WriteString('BLOCK', 'COLOR', colortostring(pnlColor.color));
     if cbBold.Checked then
          varBlockFontSTYLE := FormInit.ReadString('BLOCK', 'FONTSTYLE', 'BOLD')
     else
          varBlockFontSTYLE := FormInit.ReadString('BLOCK', 'FONTSTYLE', '');

     FormInit.Free;


     close;
end;

procedure TinputBlock_f.edtpassChange(Sender: TObject);
begin
     if edtpass.text = '11' + formatdatetime('dd', now) then
          cbEdit.Enabled := true;
end;

procedure TinputBlock_f.Button1Click(Sender: TObject);
begin
     if ColorDialog1.Execute then
     begin
          pnlColor.Color := ColorDialog1.Color;
     end;

end;

end.

