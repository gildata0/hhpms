object jungsanDay_f: TjungsanDay_f
  Left = -152
  Top = 81
  Caption = 'JungsanDay_f'
  ClientHeight = 881
  ClientWidth = 1360
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Image1: TImage
    Left = 555
    Top = 30
    Width = 126
    Height = 226
    Visible = False
  end
  object scrMain: TScrollBox
    Left = 0
    Top = 0
    Width = 1089
    Height = 873
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    BevelInner = bvNone
    BevelOuter = bvRaised
    BorderStyle = bsNone
    DoubleBuffered = True
    Color = clBtnFace
    ParentBackground = True
    ParentColor = False
    ParentDoubleBuffered = False
    TabOrder = 0
    object AdvSplitter1: TAdvSplitter
      Left = 0
      Top = 0
      Width = 1072
      Height = 0
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitTop = 281
      ExplicitWidth = 664
    end
    object AdvSplitter7: TAdvSplitter
      Left = 0
      Top = 0
      Width = 1072
      Height = 0
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitLeft = 109
      ExplicitTop = 1323
      ExplicitWidth = 664
    end
    object pnlChong: TAdvPanel
      Left = 0
      Top = 320
      Width = 1072
      Height = 155
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #52509#44228
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 30
      object grdChong: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 135
        Cursor = crDefault
        Align = alClient
        ColCount = 12
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdChongGetAlignment
        OnGetFormat = grdChongGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #45236#50669
          #52509#51652#47308#48708
          #49688#45225#44552#50529
          #48372#54744
          #48708#48372#54744
          #54788#44552
          #52852#46300
          #44228#51340
          #54872#48520
          #48120#49688
          #54624#51064)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.Color = clBtnFace
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
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
        Version = '8.4.4.1'
        ColWidths = (
          32
          124
          89
          83
          76
          96
          159
          76
          76
          64
          64
          90)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlWonjang: TAdvPanel
      Left = -3
      Top = 480
      Width = 1072
      Height = 249
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #50896#51109#48324' '#49688#45225#45236#50669
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 30
      object grdDoc: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 229
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdDocGetAlignment
        OnGetFormat = grdDocGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #50896#51109
          #52509#51652#47308#48708
          #49688#45225#50529
          #48372#54744
          #48708#48372#54744
          #49888#54872
          #44396#54872
          #54788#44552
          #52852#46300
          #44228#51340
          #54872#48520
          #48120#49688
          #54624#51064)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.Color = clBtnFace
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
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
        Version = '8.4.4.1'
        ColWidths = (
          32
          126
          85
          85
          77
          96
          38
          34
          85
          78
          79
          62
          66
          85)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlJichul: TAdvPanel
      Left = 0
      Top = 3396
      Width = 1072
      Height = 70
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #51648#52636#45236#50669
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 70
      object grdjichul: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 50
        Cursor = crDefault
        Align = alClient
        ColCount = 8
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdjichulGetAlignment
        OnGetFormat = grdjichulGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #45236#50669
          #54788#44552
          #54788#50689
          #52852#46300
          #44228#51340#51060#52404
          #54633#44228
          #48708#44256)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        ShowSelection = False
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          32
          132
          126
          98
          71
          91
          87
          64)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object AdvPanel9: TAdvPanel
      Left = 0
      Top = 3676
      Width = 1072
      Height = 50
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #44592#53440' '#49688#51077#45236#50669
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 50
      object grdSuip: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 30
        Cursor = crDefault
        Align = alClient
        ColCount = 6
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdSuipGetAlignment
        OnGetFormat = grdSuipGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #45236#50669
          #54788#44552
          #52852#46300
          #44228#51340#51060#52404
          #48708#44256)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.Color = clBtnFace
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
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
        Version = '8.4.4.1'
        ColWidths = (
          32
          130
          129
          126
          102
          170)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlSum: TAdvPanel
      Left = 0
      Top = 69
      Width = 1072
      Height = 251
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = 'Summary'
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 30
      object grdSum: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 231
        Cursor = crDefault
        Align = alClient
        ColCount = 2
        DrawingStyle = gdsClassic
        FixedCols = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grdSumGetAlignment
        OnGetFormat = grdSumGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          '')
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 252
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clBlue
        FixedFont.Height = -16
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.Color = clBtnFace
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
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
        Version = '8.4.4.1'
        ColWidths = (
          252
          247)
        RowHeights = (
          22
          22
          22
          22
          22
          22
          22
          22
          22
          22)
      end
    end
    object pnlSunapNeyuk: TAdvPanel
      Left = 0
      Top = 3726
      Width = 1072
      Height = 50
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = 
        #44060#51064#48324' '#49688#45225#45236#50669' <FONT bgcolor="#FFFF00">'#47560#44048#46120'</FONT> <FONT bgcolor="#FF00' +
        '00">'#47560#44048#49688#51221#51473'</FONT>'
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 50
      object grdmain: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 30
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdmainGetAlignment
        OnGetFormat = grdmainGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #49457#47749
          #52264#53944
          #50896#51109
          #54788#44552
          #54788#44552#50689#49688#51613
          #52852#46300
          #53685#51109
          #53685#51109#54788#44552#50689#49688#51613
          #44592#53440
          #54872#48520
          #47560#44048
          #48120#49688
          #54624#51064)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        ShowSelection = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ExplicitWidth = 1286
        ExplicitHeight = 280
        ColWidths = (
          32
          131
          127
          128
          101
          125
          80
          83
          80
          64
          64
          64
          64
          64)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlCardCancel: TAdvPanel
      Left = 0
      Top = 3606
      Width = 1072
      Height = 70
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #52852#46300#52712#49548
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 70
      object grdCardCancel: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 50
        Cursor = crDefault
        Align = alClient
        ColCount = 4
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdmainGetAlignment
        OnGetFormat = grdmainGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #49457#47749
          #52264#53944
          #52852#46300#52712#49548)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        ShowSelection = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          32
          131
          128
          125)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlTong: TAdvPanel
      Left = 0
      Top = 3536
      Width = 1072
      Height = 70
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #44228#51340' '#51077#44552#45236#50669
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      Indent = 3
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 70
      object grdTong: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 50
        Cursor = crDefault
        Align = alClient
        ColCount = 6
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdCardGetAlignment
        OnGetFormat = grdCardGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #49457#47749
          #52264#53944
          #53685#51109#54788#50689
          #53685#51109
          #44592#53440)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        ShowSelection = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          32
          132
          128
          123
          107
          83)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlCard: TAdvPanel
      Left = 0
      Top = 3466
      Width = 1072
      Height = 70
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #52852#46300#49324#48324' '#49688#45225#45236#50669
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      Indent = 3
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 70
      object grdCard: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 50
        Cursor = crDefault
        Align = alClient
        ColCount = 4
        DrawingStyle = gdsClassic
        RowCount = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdCardGetAlignment
        OnGetFormat = grdCardGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #52852#46300#49324
          #49688#45225#50529
          #44148#49688)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        ShowSelection = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          32
          134
          125
          75)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
    end
    object pnlHead: TPanel
      Left = 0
      Top = 0
      Width = 1072
      Height = 69
      Caption = 'pnlHead'
      Color = clWhite
      TabOrder = 9
      object lblSubject: TLabel
        Left = 213
        Top = 16
        Width = 251
        Height = 34
        Alignment = taCenter
        AutoSize = False
        Caption = #51068#51068' '#48372#44256#49436
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object lblDay2: TLabel
        Left = 42
        Top = 22
        Width = 158
        Height = 25
        Caption = '2000-08-09('#44552')'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object pnlSign: TPanel
        Left = 580
        Top = 0
        Width = 291
        Height = 66
        Color = clWhite
        TabOrder = 1
        Visible = False
        object Shape1: TShape
          Left = 10
          Top = 2
          Width = 90
          Height = 61
        end
        object Shape2: TShape
          Left = 10
          Top = 20
          Width = 90
          Height = 1
        end
        object Shape3: TShape
          Left = 99
          Top = 2
          Width = 90
          Height = 61
        end
        object Shape4: TShape
          Left = 99
          Top = 20
          Width = 90
          Height = 1
        end
        object Shape5: TShape
          Left = 188
          Top = 2
          Width = 90
          Height = 61
        end
        object Shape6: TShape
          Left = 188
          Top = 20
          Width = 90
          Height = 1
        end
        object Label11: TLabel
          Left = 35
          Top = 5
          Width = 36
          Height = 12
          Caption = #44592#50504#51088
        end
        object Label14: TLabel
          Left = 130
          Top = 5
          Width = 24
          Height = 12
          Caption = #44284#51109
        end
        object Label15: TLabel
          Left = 215
          Top = 5
          Width = 24
          Height = 12
          Caption = #50896#51109
        end
      end
      object pnlButtons: TPanel
        Left = 670
        Top = -3
        Width = 616
        Height = 66
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object progressbar: TAdvProgressBar
          Left = 463
          Top = 15
          Width = 201
          Height = 14
          BorderColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Level0Color = clWhite
          Level0ColorTo = 14811105
          Level1ColorTo = 13303807
          Level2Color = 5483007
          Level2ColorTo = 11064319
          Level3ColorTo = 13290239
          Level1Perc = 70
          Level2Perc = 90
          Position = 50
          ShowBorder = True
          Steps = 20
          Version = '1.3.1.0'
        end
        object Label1: TLabel
          Left = 6
          Top = 15
          Width = 72
          Height = 12
          Caption = #51312#54924#51068#51088#49440#53469
        end
        object btnSch: TButton
          Left = 8
          Top = 38
          Width = 75
          Height = 25
          Caption = #51312#54924
          TabOrder = 0
          OnClick = btnSchClick
        end
        object btnPrt: TButton
          Left = 89
          Top = 38
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 1
          OnClick = btnPrtClick
        end
        object btnCls: TButton
          Left = 170
          Top = 38
          Width = 75
          Height = 25
          Caption = #45803#44592
          TabOrder = 2
          Visible = False
          OnClick = btnClsClick
        end
        object btnDaymagam: TButton
          Left = 420
          Top = 35
          Width = 75
          Height = 25
          Hint = 'shift-F4'#47484' '#45572#47476#47732' '#13#10#51204#52404' '#49688#45225#44592#47197#51032' '#13#10#51068#44292#47560#44048' '#48260#53948#51060#13#10' '#54876#49457#54868' '#46121#45768#45796'.'
          Caption = #45817#51068#47560#44048
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnClick = btnDaymagamClick
        end
        object btnAllMagam: TButton
          Left = 500
          Top = 35
          Width = 106
          Height = 25
          Caption = #51204#52404#51068#44292#47560#44048
          TabOrder = 4
          Visible = False
          OnClick = btnAllMagamClick
        end
        object ComboBox1: TComboBox
          Left = 179
          Top = 10
          Width = 145
          Height = 20
          TabOrder = 5
          Text = 'ComboBox1'
          Visible = False
        end
        object Button1: TButton
          Left = 336
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 6
          Visible = False
          OnClick = Button1Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 84
          Top = 12
          Width = 83
          Height = 20
          Date = 38897.000000000000000000
          Time = 0.872209201399527900
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          TabOrder = 7
          OnChange = DateTimePicker1Change
        end
        object cbDoc2: TColumnComboBox
          Left = 194
          Top = 30
          Width = 132
          Height = 20
          Color = clWindow
          Version = '1.6.0.0'
          Visible = False
          Columns = <
            item
              Color = clWindow
              ColumnType = ctText
              Width = 20
              Alignment = taLeftJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
            end
            item
              Color = clWindow
              ColumnType = ctText
              Width = 100
              Alignment = taLeftJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
            end
            item
              Color = clWindow
              ColumnType = ctText
              Width = 100
              Alignment = taLeftJustify
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              ParentFont = False
            end>
          ComboItems = <>
          EditColumn = -1
          EditHeight = 14
          EmptyText = ''
          EmptyTextStyle = []
          DropWidth = 0
          DropHeight = 200
          Enabled = True
          ButtonWidth = 17
          GridLines = False
          ItemIndex = -1
          LookupColumn = 0
          LabelCaption = ''
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          SortColumn = 0
          TabOrder = 8
        end
      end
    end
    object grdSummary: TAdvStringGrid
      Left = 0
      Top = 907
      Width = 1072
      Height = 770
      Cursor = crDefault
      ColCount = 7
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 10
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
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
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
        'Clear')
      FixedRowHeight = 22
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
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
    end
    object AdvPageControl1: TAdvPageControl
      Left = 0
      Top = 1677
      Width = 1072
      Height = 708
      ActivePage = AdvTabSheet7
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      DoubleBuffered = True
      TabBackGroundColor = clBtnFace
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '2.0.1.7'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 11
      object AdvTabSheet7: TAdvTabSheet
        Caption = #51648#50669' '#48324
        Color = clBtnFace
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        object AdvStringGrid3: TAdvStringGrid
          Left = 192
          Top = 48
          Width = 138
          Height = 250
          Cursor = crDefault
          ColCount = 1
          DrawingStyle = gdsClassic
          FixedCols = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          Visible = False
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            #51452#49548)
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
          FixedColWidth = 215
          FixedRowHeight = 22
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
            215)
        end
        object WebGMaps1: TWebGMaps
          Left = 0
          Top = 0
          Width = 1064
          Height = 680
          Align = alClient
          APIVersion = '3.34'
          Clusters = <>
          Markers = <>
          Polylines = <>
          Polygons = <>
          Directions = <>
          MapOptions.DefaultLatitude = 48.859040000000000000
          MapOptions.DefaultLongitude = 2.294297000000000000
          Routing.PolylineOptions.Icons = <>
          StreetViewOptions.DefaultLatitude = 48.859040000000000000
          StreetViewOptions.DefaultLongitude = 2.294297000000000000
          MapPersist.Location = mplInifile
          MapPersist.Key = 'WebGMaps'
          MapPersist.Section = 'MapBounds'
          PolygonLabel.Font.Charset = DEFAULT_CHARSET
          PolygonLabel.Font.Color = clBlack
          PolygonLabel.Font.Height = -16
          PolygonLabel.Font.Name = 'Arial'
          PolygonLabel.Font.Style = []
          TabOrder = 1
          Version = '3.1.1.0'
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1280
          Height = 42
          Caption = 'Panel1'
          ShowCaption = False
          TabOrder = 2
          object Label17: TLabel
            Left = 2
            Top = 9
            Width = 60
            Height = 12
            Caption = #48120#54869#51064#51452#49548
          end
          object lblAddUnKnownCount: TLabel
            Left = 63
            Top = 9
            Width = 6
            Height = 12
            Caption = '0'
          end
          object Label19: TLabel
            Left = 108
            Top = 9
            Width = 48
            Height = 12
            Caption = #54869#51064#51452#49548
          end
          object lblAddKnownCount: TLabel
            Left = 158
            Top = 9
            Width = 6
            Height = 12
            Caption = '0'
          end
          object ProgressBar1: TProgressBar
            Left = 1
            Top = 31
            Width = 1278
            Height = 10
            Align = alBottom
            TabOrder = 0
          end
          object Button4: TButton
            Left = 225
            Top = 5
            Width = 128
            Height = 25
            Caption = #51648#50669#48324#44160#49353' '#49884#51089
            TabOrder = 1
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 373
            Top = 0
            Width = 75
            Height = 25
            Caption = 'Button1'
            TabOrder = 2
            Visible = False
            OnClick = Button1Click
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 2014
      Width = 1072
      Height = 337
      Caption = 'Panel2'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 12
      object Chart1: TChart
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 501
        Height = 329
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #49888#54872'/'#44396#54872)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
      object Chart2: TChart
        AlignWithMargins = True
        Left = 511
        Top = 4
        Width = 557
        Height = 329
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #49457#48324' '#54872#51088#48708#50984)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries1: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 1677
      Width = 1072
      Height = 337
      Caption = 'Panel2'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 13
      object Chart3: TChart
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 501
        Height = 329
        Title.Text.Strings = (
          #45236#50896#44221#47196#48324' '#54872#51088' '#49688)
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alLeft
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries2: TBarSeries
          ColorEachPoint = True
          Marks.Callout.Length = 8
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart4: TChart
        AlignWithMargins = True
        Left = 511
        Top = 4
        Width = 557
        Height = 329
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #51032#49324#48324' '#54872#51088#49688)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries3: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 2351
      Width = 1072
      Height = 337
      Caption = 'Panel2'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 14
      object Chart5: TChart
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 501
        Height = 329
        Title.Text.Strings = (
          #50836#51068#48324' '#54872#51088' '#49688)
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alLeft
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object BarSeries1: TBarSeries
          ColorEachPoint = True
          Marks.Callout.Length = 8
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart6: TChart
        AlignWithMargins = True
        Left = 511
        Top = 4
        Width = 557
        Height = 329
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #45208#51060#45824' '#48324' '#54872#51088#49688)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries4: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object AdvPanel1: TAdvPanel
      Left = 0
      Top = 724
      Width = 1072
      Height = 183
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      UseDockManager = True
      Version = '2.5.7.9'
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = #44404#47548#52404
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #49884#49696#48324' '#51665#44228
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 30
      object grdTreat: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 1070
        Height = 163
        Cursor = crDefault
        Align = alClient
        ColCount = 8
        DrawingStyle = gdsClassic
        RowCount = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grdTreatGetAlignment
        OnGetFormat = grdTreatGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #49884#49696#47749
          '2019-09'#50900
          '2019-10'#50900
          '2019-11'#50900
          '2019-12'#50900
          '2020-01'#50900
          #50724#45720)
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
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
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
          'Clear')
        FixedColWidth = 32
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.Color = clBtnFace
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
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
        Version = '8.4.4.1'
        ColWidths = (
          32
          208
          82
          78
          76
          77
          79
          76)
        RowHeights = (
          22
          22
          22
          22
          22
          22
          22)
      end
    end
  end
  object pnlExcel: TAdvPanel
    Left = 1503
    Top = 183
    Width = 778
    Height = 410
    TabOrder = 1
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -12
    Caption.Font.Name = #44404#47548#52404
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #50641#49472#51200#51109
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdExcel: TAdvStringGrid
      Left = 1
      Top = 19
      Width = 776
      Height = 390
      Cursor = crDefault
      Align = alClient
      ColCount = 15
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
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
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
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
        'Clear')
      FixedRowHeight = 22
      FixedRowAlways = True
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
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
      RowHeights = (
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22)
    end
  end
  object WebGMapsGeocoding1: TWebGMapsGeocoding
    Version = '1.0.5.0'
    Left = 565
    Top = 161
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'jungsanDay_f'
    Version = '1.4.1.4'
    Left = 209
    Top = 152
  end
end
