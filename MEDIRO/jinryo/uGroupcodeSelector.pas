unit uGroupcodeSelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  Vcl.ExtCtrls, AdvPanel, AdvUtil;

type
  TgroupCodeSelector_f = class(TForm)
    grdGroupCode: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure grdGroupCodeDblClickCell(Sender: TObject; ARow, ACol: Integer);


  protected
      procedure WMActivate(var Msg: TWMActivate); message WM_ACTIVATE;
  private
    { Private declarations }

    FNotificationParentWnd: HWND;
    class
    var
      FDroppedDown: Boolean;
      procedure LoadGroupCode;
  public
    { Public declarations }
    procedure Show(Owner: TForm; NotificationParentWindow: HWND;
      PopupPosition: TPoint);
    procedure CreateParams(var Params: TCreateParams);
  end;
var
  groupCodeSelector_f: TgroupCodeSelector_f;

implementation
uses
 uConfig, uDM,  uFormInit, uFunctions, usysInfo , jinryo;

{$R *.dfm}


procedure TgroupCodeSelector_f.CreateParams(var Params: TCreateParams);
const
    CS_DROPSHADOW = $00020000;
begin
    inherited CreateParams({var}Params);

    Params.WindowClass.Style := Params.WindowClass.Style or CS_DROPSHADOW;
end;
procedure TgroupCodeSelector_f.LoadGroupCode;
var
    rCount , i: integer;
begin
     grdGroupCode.RemoveRows(1,grdGroupCode.RowCount -1);

     with dm_f.sqlTemp do
     begin
         close;
         sql.Clear;
         sql.Add('select * from  groupCode    ');

         open;
         if not isEmpty then
         begin
             rCount := recordCount;
             grdGroupCode.RowCount := rCount + 1;
             i:= 1;
            while not eof  do
            begin
            // for I := 1 to rCount do
            // begin
                  grdGroupCode.Cells[1, i] := fieldByName('groupCode').AsString;
                  grdGroupCode.Cells[2, i] := fieldByName('groupName').AsString;
                  i:= i+1;
                  next;
            // end;
            end;
           grdGroupCode.AutoNumberCol(0);
         end;
     end;

end;



procedure TgroupCodeSelector_f.grdGroupCodeDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  i : integer;
  aGroupName, aGroupCode : string;
begin
    if ARow <= 0 then
      exit;

//
//     InsertSugaCode( grdGroupCode.Cells[2, ARow]  , grdGroupCode.Cells[1, ARow] , 0);
//
//     inputShortCut := false  ;
//
//     if  lstGrouptemp.Items.Count > 0  then
//     begin
//          for I := 0 to lstGrouptemp.Items.Count - 1 do
//          begin
//
//           aGroupName := substr(lstGrouptemp.Items[i], 1, '|');
//           aGroupCode := substr(lstGrouptemp.Items[i], 2, '|');
//
//           InsertSugaCode( aGroupName, aGroupCode  , 0) ;
//
//          end;
//     end;
//
////  nSumTotal : integer;  //ÁøÂû·á »« ÃÑ±Ý¾×
////  nSumBigub : integer;
////  nSumBohumChong, nSumBohumBonin, nSumBonin , nSumChung , nSumChong: integer;
//
//     numchong.Text  := formatFloat('#,#' ,nSumTotal);
//     numBonin1.Text := formatFloat('#,#' ,nSumBonin);
//     numBonin.Text  := formatFloat('#,#' ,nSumBohumBonin);
//
//     pnlGroupCode.Visible := false;
//     lstGrouptemp.Items.Clear;



end;

procedure TgroupCodeSelector_f.FormCreate(Sender: TObject);
begin


         LoadGroupCode;


end;

procedure TgroupCodeSelector_f.WMActivate(var Msg: TWMActivate);
begin
    //if we are being activated, then give pretend activation state back to our owner
//    if (Msg.Active <> WA_INACTIVE) then
//        SendMessage(Self.PopupParent.Handle, WM_NCACTIVATE, WPARAM(True), -1);
//
//    inherited;

  //if we are being activated, then give pretend activation state back to our owner
    if (Msg.Active <> WA_INACTIVE) then
        SendMessage(Self.PopupParent.Handle, WM_NCACTIVATE, WPARAM(True), -1);

    inherited;

    //If we're being deactivated, then we need to rollup
    if Msg.Active = WA_INACTIVE then
    begin
        //TODO: Tell our owner that we've rolled up

        //Note: The parent should not be using rollup as the time to read the state of all controls in the popup.
        //      Every time something in the popup changes, the drop-down should give that inforamtion to the owner
        Self.Release; //use Release to let WMActivate complete
    end;

end;
procedure TgroupCodeSelector_f.Show(Owner: TForm; NotificationParentWindow: HWND;
      PopupPosition: TPoint);
var
    pt: TPoint;
    comboBoxAnimation: BOOL;
begin
    FNotificationParentWnd := NotificationParentWindow;

    //We want the dropdown form "owned" by (i.e. not "parented" to) the OwnerWindow
    Self.Parent := nil; //the default anyway; but just to reinforce the idea
    Self.PopupParent := Owner; //Owner means the Win32 concept of owner (i.e. always on top of, cf Parent, which means clipped child of)
    Self.PopupMode := pmExplicit; //explicitely owned by the owner

    //Show the form just under, and right aligned, to this button
    Self.BorderStyle := bsNone;
    Self.Position := poDesigned;
    Self.Left := PopupPosition.X;
    Self.Top := PopupPosition.Y;

    if not Winapi.Windows.SystemParametersInfo(SPI_GETCOMBOBOXANIMATION, 0, @comboBoxAnimation, 0) then
        comboBoxAnimation := False;

    if comboBoxAnimation then
    begin
        //200ms is the shell animation duration
        AnimateWindow(Self.Handle, 200, AW_VER_POSITIVE or AW_SLIDE or AW_ACTIVATE);
    end
    else
        inherited Show;
end;

end.
