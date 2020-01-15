unit sayu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tsayu_f = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    strMessage: TEdit;
    Label7: TLabel;
    strLevel: TEdit;
    Label8: TLabel;
    strSafeInfo: TEdit;
    Label9: TLabel;
    strPreReasonCd: TEdit;
    Label10: TLabel;
    strPreReason: TEdit;
    Label11: TLabel;
    strDpPrscMake: TEdit;
    Label12: TLabel;
    strDpPrscYYMMDD: TEdit;
    Label13: TLabel;
    strDpPrscHMMSS: TEdit;
    Label14: TLabel;
    strDpPrscAdminCode: TEdit;
    Label15: TLabel;
    strDpPrscAdminName: TEdit;
    Label16: TLabel;
    strDpPrscTel: TEdit;
    Label17: TLabel;
    strDpPrscFax: TEdit;
    Label18: TLabel;
    strDpPrscName: TEdit;
    Label19: TLabel;
    strDpPrscLic: TEdit;
    Label20: TLabel;
    strDpMakeYYMMDD: TEdit;
    Label21: TLabel;
    strDpMakeHMMSS: TEdit;
    Label22: TLabel;
    strDpMakeAdminCode: TEdit;
    Label23: TLabel;
    strDpMakeAdminName: TEdit;
    Label24: TLabel;
    TextBox7: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    strGubun: TEdit;
    strMediA: TEdit;
    strMediB: TEdit;
    strReasonCd: TComboBox;
    strReason: TEdit;
    BtnInReason: TButton;
    BntExit: TButton;
    strDpPrscGrantNo: TEdit;
    strDpMakeName: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    strDpMakeLic: TEdit;
    Label27: TLabel;
    strDpMdsCd: TEdit;
    Label28: TLabel;
    strDpMdsName: TEdit;
    Label29: TLabel;
    strDpCmptCd: TEdit;
    Label30: TLabel;
    strDpCmptName: TEdit;
    Label31: TLabel;
    strDp1Time: TEdit;
    Label32: TLabel;
    strDp1Day: TEdit;
    Label33: TLabel;
    strDpTotDay: TEdit;
    Label34: TLabel;
    procedure BntExitClick(Sender: TObject);
    procedure BtnInReasonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bOk : Boolean;
    nCheckType : integer;
  end;

var
  sayu_f: Tsayu_f;

implementation

{$R *.dfm}

procedure Tsayu_f.BntExitClick(Sender: TObject);
begin
  bOk := false;
  close;
end;

procedure Tsayu_f.BtnInReasonClick(Sender: TObject);
begin
	If strReasonCd.Text = 'Text입력' Then
		If strReason.Text = '' Then
    begin
			ShowMessage('Text입력 사유코드에는 반드시 사유를 입력해야 합니다.');
			Exit;
    end
		Else
			strReasonCd.Text := '';

  bOk := true;
  close;
end;

procedure Tsayu_f.FormCreate(Sender: TObject);
begin
        If nCheckType <> 0 Then
        begin
            strReasonCd.Enabled := False;
            strReason.Enabled := False;
            BtnInReason.Enabled := False;
        End;

end;

end.
