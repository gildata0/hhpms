object main_f: Tmain_f
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'main_f'
  ClientHeight = 567
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FileListBox1: TFileListBox
    Left = 440
    Top = 40
    Width = 113
    Height = 145
    ItemHeight = 13
    TabOrder = 0
  end
  object pnlBody: TPanel
    Left = 8
    Top = 16
    Width = 713
    Height = 543
    Caption = 'pnlBody'
    TabOrder = 1
    object pnlLeft: TPanel
      Left = 1
      Top = 1
      Width = 345
      Height = 541
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlLeft'
      TabOrder = 0
      object pnlMovie: TPanel
        Left = 16
        Top = 40
        Width = 297
        Height = 281
        BevelOuter = bvNone
        Caption = 'pnlMovie'
        TabOrder = 0
        object WindowsMediaPlayer1: TWindowsMediaPlayer
          Left = 8
          Top = 16
          Width = 245
          Height = 240
          TabOrder = 0
          ControlData = {
            000300000800000000000500000000000000F03F030000000000050000000000
            0000000008000200000000000300010000000B00FFFF0300000000000B00FFFF
            08000200000000000300320000000B00000008000A000000660075006C006C00
            00000B0000000B0000000B00FFFF0B00FFFF0B00000008000200000000000800
            020000000000080002000000000008000200000000000B00000052190000CE18
            0000}
        end
      end
      object pnlMt: TPanel
        Left = 0
        Top = 416
        Width = 345
        Height = 125
        Align = alBottom
        BevelOuter = bvNone
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        object mtAdv: TMoveText
          Left = 0
          Top = 0
          Width = 345
          Height = 125
          Steps = 3500
          Speed = 10
          Color = 4535602
          Continuous = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = #46027#50880
          Font.Style = []
          Align = alClient
          Alignment = taCenter
          Items.Strings = (
            #51060#51648#52992#50612#45716' '#48337#50896#51032' '#44221#50689' '#44288#47532#51088' '#51077#45768#45796'.')
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 1077
        end
      end
      object AdvSmoothSlideShow1: TAdvSmoothSlideShow
        Left = 136
        Top = 170
        Width = 292
        Height = 228
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ShowDescription = False
        FadeAnimationFactor = 0
        PlaceHolderFill.Color = clWhite
        PlaceHolderFill.ColorMirror = clNone
        PlaceHolderFill.ColorMirrorTo = clNone
        PlaceHolderFill.GradientType = gtSolid
        PlaceHolderFill.GradientMirrorType = gtSolid
        PlaceHolderFill.BorderColor = clSilver
        PlaceHolderFill.Rounding = 0
        PlaceHolderFill.ShadowOffset = 0
        PlaceHolderFill.Glow = gmNone
        Fill.Color = clWhite
        Fill.ColorMirror = clNone
        Fill.ColorMirrorTo = clNone
        Fill.GradientType = gtSolid
        Fill.GradientMirrorType = gtSolid
        Fill.BorderColor = clSilver
        Fill.BorderWidth = 0
        Fill.Rounding = 0
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        DescriptionFill.Color = clWhite
        DescriptionFill.ColorMirror = clNone
        DescriptionFill.ColorMirrorTo = clNone
        DescriptionFill.GradientType = gtSolid
        DescriptionFill.GradientMirrorType = gtSolid
        DescriptionFill.BorderColor = clSilver
        DescriptionFill.Rounding = 0
        DescriptionFill.ShadowOffset = 0
        DescriptionFill.Glow = gmNone
        Items = <>
        Margin.Left = 1
        Margin.Top = 1
        Margin.Right = 1
        Margin.Bottom = 1
        Rotation = False
        Animation = False
        LoadEffect = False
        ThumbNailHolderMargin.Left = 0
        ThumbNailHolderMargin.Top = 0
        ThumbNailHolderMargin.Right = 0
        ThumbNailHolderMargin.Bottom = 0
        ThumbNailHolderFill.Color = 15790320
        ThumbNailHolderFill.ColorMirror = clNone
        ThumbNailHolderFill.ColorMirrorTo = clNone
        ThumbNailHolderFill.GradientType = gtSolid
        ThumbNailHolderFill.GradientMirrorType = gtSolid
        ThumbNailHolderFill.BorderColor = clSilver
        ThumbNailHolderFill.Rounding = 0
        ThumbNailHolderFill.ShadowOffset = 0
        ThumbNailHolderFill.Glow = gmGradient
        ThumbNailSelectedFill.Color = 11196927
        ThumbNailSelectedFill.ColorTo = 7257087
        ThumbNailSelectedFill.ColorMirror = 4370174
        ThumbNailSelectedFill.ColorMirrorTo = 8053246
        ThumbNailSelectedFill.GradientType = gtVertical
        ThumbNailSelectedFill.GradientMirrorType = gtVertical
        ThumbNailSelectedFill.BorderColor = 4370174
        ThumbNailSelectedFill.Rounding = 0
        ThumbNailSelectedFill.ShadowOffset = 0
        ThumbNailSelectedFill.Glow = gmNone
        Version = '1.4.3.0'
        TabOrder = 2
        Visible = False
        TMSStyle = 0
      end
    end
    object grdDaegi: TAdvStringGrid
      AlignWithMargins = True
      Left = 346
      Top = 1
      Width = 366
      Height = 541
      Cursor = crDefault
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ColCount = 1
      DefaultColWidth = 365
      DefaultRowHeight = 98
      DrawingStyle = gdsClassic
      FixedCols = 0
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -45
      Font.Name = #46027#50880
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssNone
      TabOrder = 1
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      DefaultAlignment = taCenter
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 365
      FixedRowHeight = 98
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glListView
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = clBtnFace
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = clHighlight
      SelectionTextColor = clHighlightText
      ShowSelection = False
      SortSettings.DefaultFormat = ssAutomatic
      VAlignment = vtaCenter
      Version = '8.4.4.1'
      WordWrap = False
      ColWidths = (
        365)
      RowHeights = (
        98
        98
        98
        98
        98
        98
        98
        98
        98
        98)
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer2Timer
    Left = 320
    Top = 24
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 152
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 392
    object Setting1: TMenuItem
      Caption = 'Setting'
      OnClick = Setting1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object TrayIcon1: TTrayIcon
    Hint = #52824#50557' '#45824#44592#54364
    Icon.Data = {
      00000100010024230000000000002C0A00001600000028000000240000004600
      0000010008000000000004060000000000000000000000010000000000000000
      0000FF00000000BD000084848400BD00BD00C6C6C600529CE700FF00FF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0003030F0F0F0F0F0F0F0F0000030F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000030F0F00030F0F0003030F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00030F00030F0003
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000300
      0300030F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F000000030F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F000000030F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F000000030F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0F0303030303030303030303000000030303030303030303030303030F0F
      0F0F0F0F0F0F0000000000000000000000000000000000000000000000000000
      00030F0F0F0F0F0F0F0F00080808080808080808080808080808080808080808
      0808080800030F0F0F0F0F0F0F0F000808080808080808080808080808080808
      080808080808080800030F0F0F0F0F0F0F0F0008080801010108030303030303
      03030303030303030308080800030F0F0F0F0F0F0F0F00080808010101080808
      0808080808080808080808080808080800030F0F0F0F0F0F0F0F000808080808
      080808080808080808080808080808080808080800030F0F0F0F0F0F0F0F0008
      08080101010803030303030303030303030303030308080800030F0F0F0F0F0F
      0F0F000808080101010808080808080808080808080808080808080800030F0F
      0F0F0F0F0F0F0008080808080808080808080808080808080808080808080808
      00030F0F0F0F0F0F0F0F00080808080808080300000003080808080808080808
      0808080800030F0F0F0F0F0F0F0F000808080808080001010102020008080808
      030303030808080800030F0F0F0F0F0F0F0F0008080808080001010101020202
      00080808080808080808080800030F0F0F0F0F0F0F0F00080808080301010101
      0102020202030808030303030808080800030F0F0F0F0F0F0F0F000808080800
      010101010102020202000808080808080808080800030F0F0F0F0F0F0F0F0008
      08080800010101010103030303030508030303030808080800030F0F0F0F0F0F
      0F0F000808080800010101040704080808080808080808080808080800030F0F
      0F0F0F0F0F0F0008080808030404070707040808080808080303030308080808
      00030F0F0F0F0F0F0F0F00080808080800070707070408080808080808080808
      0808080800030F0F0F0F0F0F0F0F000808080808080007070704080808080808
      080808080808080800030F0F0F0F0F0F0F0F0008080808080808030000040808
      080808080808080808080808000303030F0F0F0F000000080808080808080808
      08080808080808080808080808080808000000030F0F0F0F0000030303030303
      0303030303030303030303030303030303030303030000030F0F0F0F00000303
      030303030303030303030303030303030303030303030303030000030F0F0F0F
      000000000000000000000000000000000000000000000000000000000000000F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      0F0F0F0F0F0F0F0F0F0FFFFFFFFFF0000000FFE3FC7FF0000000FFF198FFF000
      0000FFFC93FFF0000000FFFE07FFF0000000FFFF0FFFF0000000FFFF0FFFF000
      0000FFFF0FFFF0000000F8000000F0000000F0000000F0000000F0000000F000
      0000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F000
      0000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F000
      0000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F000
      0000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F000
      0000F0000000F0000000F000000030000000C000000030000000C00000003000
      0000C000000030000000C000000070000000FFFFFFFFF0000000FFFFFFFFF000
      0000}
    PopupMenu = PopupMenu1
    Visible = True
    Left = 68
    Top = 392
  end
end
