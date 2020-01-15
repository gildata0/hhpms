unit uReferHospChoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.StdCtrls, AdvEdit, EllipsLabel, Vcl.ExtCtrls, AdvGlowButton;

type
  TReferHospChoice_f = class(TForm)
    Panel1: TPanel;
    edtHospname: TAdvEdit;
    edtReferCode: TAdvEdit;
    grdFind: TAdvStringGrid;
    memRemark: TMemo;
    Panel2: TPanel;
    lblCount: TLabel;
    lblshowtime: TLabel;
    lbltime: TLabel;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnNew: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    EllipsLabel1: TLabel;
    EllipsLabel2: TLabel;
    EllipsLabel3: TLabel;
    btnDelete: TAdvGlowButton;
    Panel3: TPanel;
    Label1: TLabel;
    procedure grdFindDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure grdFindKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure grdFindGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReferHospChoice_f: TReferHospChoice_f;

implementation

{$R *.dfm}

uses uReferHosp, uGogekData, uFormInit ;

procedure TReferHospChoice_f.btnEditClick(Sender: TObject);
begin
  if not Assigned(referHosp_f) then
  begin

    referHosp_f := TreferHosp_f.Create(application);
//    referHosp_f.varmode := 0;
    ma_referHospCode := grdFind.Cells[1, grdFind.Row];

    if ma_referHospCode <> '' then
         referHosp_f.FieldSetting(false)
    else
         referHosp_f.FieldSetting(true) ;

    referHosp_f.lblid.Caption := '';

    referHosp_f.Show;

  end;
end;

procedure TReferHospChoice_f.FormShow(Sender: TObject);
begin

       // initAdvPanel(pnlSunapDaegi, dm_f.PictureContainer1);
          initPanel(panel1 );
          initPanel(panel2 );
          initAdvGrid(grdFind);
          grdFind.ColWidths[6] := 0;

end;

procedure TReferHospChoice_f.btnDeleteClick(Sender: TObject);
begin
       if Application.MessageBox(PChar('의뢰병원기록을 삭제 하시겠습니까?'),  '알림',
           MB_YESNO) = IDYES then
       begin
         if DeleteRefererHosp( grdFind.Cells[1, grdFind.row])= true then
         begin
             grdFind.RemoveRows(grdFind.row, 1);
              grdFind.AutonumberCol(0);
         end;

       end;

end;

procedure TReferHospChoice_f.grdFindDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if aRow > 0 then
       ModalResult := mrOk;
end;

procedure TReferHospChoice_f.grdFindGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

        if (aRow > 0)
          and  (aCol >= 0)
             and ( grdFind.originalCells[grdFind.RealColIndex(6), aRow]  = '1') then
       begin  //수납완료
           aBrush.Color := $00EAFFEA;
           aFont.Color  := clBlack;
       end;

end;

procedure TReferHospChoice_f.grdFindKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
          ModalResult := mrOk

     else
          if key = #27 then
               ModalResult := mrCancel;

end;

end.
