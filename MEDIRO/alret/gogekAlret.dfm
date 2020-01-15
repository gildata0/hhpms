object gogekAlret_f: TgogekAlret_f
  Left = 98
  Top = 115
  Caption = 'gogekAlret_f'
  ClientHeight = 530
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline gogekalretFrame_fr1: TgogekalretFrame_fr
    Left = 0
    Top = 0
    Width = 1129
    Height = 530
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -101
    ExplicitTop = 120
    inherited pcAlret: TPageControl
      Width = 1129
      Height = 530
      inherited TabSheet1: TTabSheet
        inherited grdPromise: TAdvStringGrid
          Width = 1121
          Height = 466
        end
        inherited spSkinPanel2: TPanel
          Width = 1121
        end
      end
      inherited TabSheet2: TTabSheet
        inherited grdRecall: TAdvStringGrid
          inherited pnlMemo: TAdvPanel
            FullHeight = 200
          end
        end
      end
    end
  end
end
