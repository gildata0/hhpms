unit whellScrollBox;

interface

uses
  SysUtils,
  Forms,
  Classes,
  Messages,
  Controls,
  Windows;

const
  CM_IBSCLButtonDown = WM_USER + 1453;

type
  TFormBorderStyle = (bsNone, bsSingle, bsSizeable, bsDialog, bsToolWindow,
    bsSizeToolWin);
  TBorderStyle = bsNone..bsSingle;

  TScrollBox = class(TScrollingWinControl)
  private
    FWndProc: HHOOK;
    FWheelAccumulator: Integer;
      
    FBorderStyle: TBorderStyle;
    procedure SetBorderStyle(Value: TBorderStyle);
    procedure WMNCHitTest(var Message: TMessage); message WM_NCHITTEST;
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

    procedure MouseWheelHandler(var Message: TMessage); override;
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint): Boolean;
    function DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint; WheelDelta: Integer): Boolean;
    function DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint; WheelDelta: Integer): Boolean;
    procedure CMIBSCLButtonDown(var Message: TMessage); message CM_IBSCLButtonDown;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Align;
    property Anchors;
    property AutoScroll;
    property AutoSize;
    property BevelEdges;
    property BevelInner;
    property BevelOuter;
    property BevelKind;
    property BevelWidth;
    property BiDiMode;
    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsSingle;
    property Constraints;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Color nodefault;
    property Ctl3D;
    property Font;
    property ParentBiDiMode;
    property ParentBackground default False;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnCanResize;
    property OnClick;
    property OnConstrainedResize;
    property OnContextPopup;
    property OnDblClick;
    property OnDockDrop;
    property OnDockOver;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetSiteInfo;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
    property OnResize;
    property OnStartDock;
    property OnStartDrag;
    property OnUnDock;
  end;


implementation

uses
  Math,
  CommCtrl,
  FlatSB
  ;

function CallWndProc(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LResult; stdcall;
var
  aMsg: TMessage;
  aExStyle: Integer;
  aScrollBoxHandle: HWND;
  
  function IsScrollBox: Boolean;
  var
    lpChar :Array [0 .. 256] of Char;
  begin
    Result := False;
    while True do begin
      aExStyle := GetWindowLong(PMouseHookStruct(lParam)^.hwnd, GWL_EXSTYLE);
      if (aExStyle and WS_EX_CONTROLPARENT) <> 0 then begin
        GetClassName(PMouseHookStruct(lParam)^.hwnd, lpChar, 256);
        if LowerCase(StrPas(lpChar)) = 'tscrollbox' then begin
          aScrollBoxHandle := PMouseHookStruct(lParam)^.hwnd;
          Break;
        end else if GetParent(PMouseHookStruct(lParam)^.hwnd) <> 0 then
          PMouseHookStruct(lParam)^.hwnd := GetParent(PMouseHookStruct(lParam)^.hwnd)
        else Exit;
      end else Exit;
    end;
    Result := True;
  end;
begin
  try
    if nCode = HC_ACTION then begin
      with PMouseHookStruct(lParam)^ do begin
        case wParam of
          WM_LBUTTONDOWN  : begin 
            if IsScrollBox then
              PostMessage(aScrollBoxHandle, CM_IBSCLButtonDown, wParam, lParam);
          end;
        end;
      end;
    end;
  finally
    Result := CallNextHookEx(0, nCode, wParam, lParam);
  end;
end;

{ TScrollBox }

constructor TScrollBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csSetCaption, csDoubleClicks];
  FBorderStyle := bsSingle;

  FWndProc := SetWindowsHookEx(WH_MOUSE, @CallWndProc, 0, GetCurrentThreadId());  
end;

procedure TScrollBox.CreateParams(var Params: TCreateParams);
const
  BorderStyles: array[TBorderStyle] of DWORD = (0, WS_BORDER);
begin
  inherited CreateParams(Params);
 
  with Params do begin
    Style := Style or BorderStyles[FBorderStyle];
    if NewStyleControls and Ctl3D and (FBorderStyle = bsSingle) then begin
      Style := Style and not WS_BORDER;
      ExStyle := ExStyle or WS_EX_CLIENTEDGE;
    end;
  end;
end;

procedure TScrollBox.SetBorderStyle(Value: TBorderStyle);
begin
  if Value <> FBorderStyle then
  begin
    FBorderStyle := Value;
    RecreateWnd;
  end;
end;

procedure TScrollBox.WMNCHitTest(var Message: TMessage);
begin
  DefaultHandler(Message);
end;

procedure TScrollBox.CMCtl3DChanged(var Message: TMessage);
begin
  if NewStyleControls and (FBorderStyle = bsSingle) then RecreateWnd;
  inherited;
end;

procedure TScrollBox.CMIBSCLButtonDown(var Message: TMessage);
begin
  SetFocus;
end;

function TScrollBox.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
  MousePos: TPoint): Boolean;
var
  IsNeg: Boolean;
begin
  Inc(FWheelAccumulator, WheelDelta);
  while Abs(FWheelAccumulator) >= WHEEL_DELTA do begin
    IsNeg := FWheelAccumulator < 0;
    FWheelAccumulator := Abs(FWheelAccumulator) - WHEEL_DELTA;
    if IsNeg then begin
      if FWheelAccumulator <> 0 then FWheelAccumulator := -FWheelAccumulator;
      Result := DoMouseWheelDown(Shift, MousePos, WheelDelta);
    end else Result := DoMouseWheelUp(Shift, MousePos, WheelDelta);
  end;
end;

function TScrollBox.DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint;
  WheelDelta: Integer): Boolean;
begin
  Self.VertScrollBar.Position := Self.VertScrollBar.Position - WheelDelta;
end;

function TScrollBox.DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint;
  WheelDelta: Integer): Boolean;
begin
  Self.VertScrollBar.Position := Self.VertScrollBar.Position - WheelDelta;
end;

procedure TScrollBox.MouseWheelHandler(var Message: TMessage);
begin
  with TCMMouseWheel(Message) do begin
    Result := 0;
    if DoMouseWheel(ShiftState, WheelDelta, SmallPointToPoint(Pos)) then
      Message.Result := 1
    else inherited;
  end;
end;

destructor TScrollBox.Destroy;
begin
  UnhookWindowsHookEx(FWndProc);
  inherited;
end;

end.


