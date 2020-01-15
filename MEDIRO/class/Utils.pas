unit Utils;

interface
uses
  Forms,            // for TScrollingWinControl 
  Graphics,         // for TBitmap
  Controls;         // for TWinControl

type
  TCaptureArea  =
  (
    CAPTURE_AREA_CLIENT,
    CAPTURE_AREA_WINDOW,
    CAPTURE_AREA_UNKNOWN
  );






function CaptureControl( pControl : TWinControl;  enArea : TCaptureArea;  bmpOutput : Graphics.TBitmap) : Boolean;
function ScrollCapture( pControl : TScrollingWinControl; bmpOutput : Graphics.TBitmap) : Boolean;


implementation
uses
  Dialogs,  
  windows;      // for HDC





function ScrollCapture( pControl : TScrollingWinControl; bmpOutput : Graphics.TBitmap) : Boolean;
var
  hScrDC      : HDC;
  hMemDC      : HDC;
  hBit        : HBITMAP;
  hOldBitmap  : HBITMAP;
  nWidth      : Integer;
  nHeight     : Integer;
  nOldScrollPosHorizental : Integer;
  nOldScrollPosVertical   : Integer;
  // Scroll Position
  nPosHorizental  : Integer;
  nPosVertical    : Integer;
  // Bitmap Position
  nSrcPosX           : Integer;
  nSrcPosY           : Integer;
  nDestPosX           : Integer;
  nDestPosY           : Integer;
begin
  ASSERT( pControl <> nil );
  ASSERT( bmpOutput <> nil );

  if( pControl.Visible = false ) then
  begin
    Result := false;
    exit;
  end;

  if( (pControl.Width = 0) or (pControl.Height = 0 ) ) then
  begin
    // 가로나 세로가 0인 컨트롤을 캡쳐하는 상황이 정당한지 한번 생각해 보시길..
    ASSERT(FALSE);
    Result := false;
    exit;
  end;

  // Backup Old Scoll Position
  nOldScrollPosHorizental := pControl.HorzScrollBar.Position;
  nOldScrollPosVertical   := pControl.VertScrollBar.Position;

  hScrDC := GetDC( pControl.Handle );
  hMemDC := CreateCompatibleDC( hScrDC );
  hBit := CreateCompatibleBitmap( hScrDC, pControl.HorzScrollBar.Range, pControl.VertScrollBar.Range );
  hOldBitmap := SelectObject( hMemDC, hBit );

                                       
  nPosVertical := 0;
  nSrcPosY := 0;
  nDestPosY := 0;
  nHeight := pControl.ClientHeight;
  while nDestPosY < pControl.VertScrollBar.Range do
  begin
    nPosHorizental := 0;
    nSrcPosX := 0;
    nDestPosX := 0;
    nWidth := pControl.ClientWidth;
    pControl.VertScrollBar.Position := nPosVertical;

    while nDestPosX < pControl.HorzScrollBar.Range do
    begin

      pControl.HorzScrollBar.Position := nPosHorizental;
      pControl.Repaint();

      BitBlt( hMemDC, nDestPosX, nDestPosY, nWidth, nHeight, hScrDC, nSrcPosX, nSrcPosY, SRCCOPY );

      nDestPosX := nDestPosX + nWidth;
      if( pControl.HorzScrollBar.Range - nPosHorizental - pControl.ClientWidth < pControl.ClientWidth ) then
      begin
        nWidth := pControl.HorzScrollBar.Range  - nPosHorizental - pControl.ClientWidth;
        nSrcPosX := pControl.ClientWidth - nWidth;
        nPosHorizental := nPosHorizental + nWidth;
      end
      else
        nPosHorizental := nPosHorizental + pControl.ClientWidth;
   end; // end  while nDestPosX < pControl.HorzScrollBar.Range do


    nDestPosY := nDestPosY + nHeight;
    if( pControl.VertScrollBar.Range - nPosVertical - pControl.ClientHeight < pControl.ClientHeight ) then
    begin
      nHeight := pControl.VertScrollBar.Range  - nPosVertical - pControl.ClientHeight;
      nSrcPosY := pControl.ClientHeight - nHeight;
      nPosVertical := nPosVertical + nHeight;
    end
    else
      nPosVertical := nPosVertical + pControl.ClientHeight;
  end;


  bmpOutput.Handle := hbit;
  SelectObject( hMemDC, hOldBitmap );
  DeleteDC( hMemDC );
  DeleteDC( hScrDC );
  ReleaseDC( pControl.Handle, hScrDC );

  // Restore Scroll Position
  pControl.HorzScrollBar.Position := nOldScrollPosHorizental;
  pControl.VertScrollBar.Position := nOldScrollPosVertical;

  Result := true;
end;


function Capture( dc : HDC; nWidth, nHeight : Integer; bmpOutput : Graphics.TBitmap) : Boolean;
var
  hMemDC      : HDC;
  hBit        : HBITMAP;
  hOldBitmap  : HBITMAP;
begin
  ASSERT( bmpOutput <> nil );
  hMemDC := CreateCompatibleDC( dc );
  hBit := CreateCompatibleBitmap( dc, nWidth, nHeight );
  hOldBitmap := SelectObject( hMemDC, hBit );
  BitBlt( hMemDC, 0, 0, nWidth, nHeight, dc, 0, 0, SRCCOPY );
  bmpOutput.Handle := hbit;
  SelectObject( hMemDC, hOldBitmap );
  DeleteDC( hMemDC );
  Result := true;
end;




(*----------------------------------------------------------------
  Name   : CaptureControl()
  Desc   : 현재화면에서 해당 컨트롤을 캡쳐한다
  Input  : pControl       - 캡쳐할 컨트롤
           enArea         - 캡쳐영역
           bmpOutput      - 출력 비트맵
  Output : True           - Success
           False          - Fail
----------------------------------------------------------------*)
function CaptureControl( pControl : TWinControl;  enArea : TCaptureArea; bmpOutput : Graphics.TBitmap) : Boolean;
var
  hScrDC      : HDC;
begin
  ASSERT( pControl <> nil );
  ASSERT( bmpOutput <> nil );

  if( pControl.Visible = false ) then
  begin
    Result := false;
    exit;
  end;

  if( (pControl.Width = 0) or (pControl.Height = 0 ) ) then
  begin
    // 가로나 세로가 0인 컨트롤을 캡쳐하는 상황이 정당한지 한번 생각해 보시길..
    ASSERT(FALSE);
    Result := false;
    exit;
  end;


  if( enArea = CAPTURE_AREA_CLIENT ) then
    hScrDC := GetDC( pControl.Handle )
  else
    hScrDC := GetWindowDC( pControl.Handle );

  Capture( hScrDC, pControl.Width, pControl.Height, bmpOutput);

  DeleteDC( hScrDC );
  ReleaseDC( pControl.Handle, hScrDC );
  Result := true;
end;



end.
