object jumgumResult_f: TjumgumResult_f
  Left = 49
  Top = 155
  Caption = 'jumgumResult_f'
  ClientHeight = 223
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 2
    Width = 767
    Height = 191
    Caption = #47196#44536'/'#44208#44284
    TabOrder = 0
    object pgLog: TPageControl
      Left = 2
      Top = 15
      Width = 763
      Height = 174
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object stgLog: TStringGrid
          Left = 0
          Top = 0
          Width = 755
          Height = 148
          Align = alClient
          ColCount = 4
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 30
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          TabOrder = 0
          ColWidths = (
            105
            151
            423
            216)
          RowHeights = (
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15)
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object stgResultList: TStringGrid
          Left = 0
          Top = 0
          Width = 755
          Height = 148
          Align = alClient
          ColCount = 12
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 30
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          TabOrder = 0
          OnDblClick = stgResultListDblClick
          ColWidths = (
            31
            76
            84
            132
            83
            95
            64
            64
            64
            64
            64
            64)
          RowHeights = (
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15
            15)
        end
      end
    end
  end
  object Button1: TButton
    Left = 640
    Top = 195
    Width = 75
    Height = 25
    Caption = #45803#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 535
    Top = 195
    Width = 75
    Height = 25
    Caption = #49324#50976#51204#49569
    TabOrder = 2
    OnClick = Button2Click
  end
end
