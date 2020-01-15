object orderInfo_f: TorderInfo_f
  Left = 0
  Top = 0
  Caption = 'orderInfo_f'
  ClientHeight = 795
  ClientWidth = 1444
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1444
    Height = 73
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    DesignSize = (
      1444
      73)
    FullHeight = 200
    object lblVersion: TLabel
      Left = 16
      Top = 3
      Width = 26
      Height = 20
      Caption = 'Ver.'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 29
      Width = 127
      Height = 21
      Date = 43512.000000000000000000
      Time = 0.661251921286748300
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 149
      Top = 29
      Width = 125
      Height = 21
      Date = 43512.000000000000000000
      Time = 0.661251921286748300
      TabOrder = 1
    end
    object btnRefresh: TButton
      Left = 416
      Top = 16
      Width = 105
      Height = 42
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = btnRefreshClick
    end
    object cbNotTaken: TCheckBox
      Left = 288
      Top = 32
      Width = 122
      Height = 17
      Caption = #48120#52524#50689#47564' '#48372#44592
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object cbAutoRefresh: TCheckBox
      Left = 1400
      Top = 28
      Width = 113
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Auto Refresh'
      TabOrder = 4
      OnClick = cbAutoRefreshClick
    end
    object edtInterval: TAdvEdit
      Left = 1519
      Top = 23
      Width = 50
      Height = 28
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etNumeric
      EmptyText = '0'
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Persistence.Enable = True
      Persistence.Key = '.\db.ini'
      Persistence.Section = 'BitToMediroInterval'
      Anchors = [akTop, akRight]
      Color = clWindow
      TabOrder = 5
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object Button1: TButton
      Left = 640
      Top = 8
      Width = 75
      Height = 50
      Caption = 'Button1'
      TabOrder = 6
      Visible = False
      OnClick = Button1Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 770
    Width = 1444
    Height = 25
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object pnlPT: TAdvPanel
    Left = 8
    Top = 241
    Width = 598
    Height = 210
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'CD'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Ellipsis = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'pt'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdPT: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 598
      Height = 174
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'PT'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitLeft = 16
      ExplicitTop = 24
      ExplicitWidth = 345
      ExplicitHeight = 105
      ColWidths = (
        32
        45
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlMri: TAdvPanel
    Left = 644
    Top = 293
    Width = 598
    Height = 468
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'MRI'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'mri'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdMri: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 598
      Height = 432
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'Mri'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        32
        44
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlCT: TAdvPanel
    Left = 8
    Top = 79
    Width = 602
    Height = 161
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'CT'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'ct'
    Position.Location = clInifile
    ShowMoveCursor = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    OnCaptionDBlClick = pnlCTCaptionDBlClick
    FullHeight = 161
    object grdCt: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 602
      Height = 125
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'Ct'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitLeft = 16
      ExplicitTop = 24
      ExplicitWidth = 345
      ExplicitHeight = 105
      ColWidths = (
        32
        46
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlBt: TAdvPanel
    Left = 634
    Top = 185
    Width = 566
    Height = 107
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'BT'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'bt'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 100
    object grdBt: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 566
      Height = 71
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'Sono'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitTop = 26
      ExplicitWidth = 702
      ExplicitHeight = 306
      ColWidths = (
        32
        46
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlSono: TAdvPanel
    Left = 8
    Top = 336
    Width = 630
    Height = 347
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'SONO'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'sono'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdSono: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 630
      Height = 311
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'Sono'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        32
        45
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlXray: TAdvPanel
    Left = 709
    Top = 267
    Width = 630
    Height = 110
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'XRAY'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'xray'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdXray: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 630
      Height = 74
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'xRay'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitTop = 25
      ExplicitHeight = 135
      ColWidths = (
        32
        46
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlSc: TAdvPanel
    Left = 634
    Top = 79
    Width = 632
    Height = 100
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'EKG'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'sc'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 100
    object grdSc: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 632
      Height = 64
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnClickCell = grdCtClickCell
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'Sono'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitTop = 26
      ExplicitWidth = 702
      ExplicitHeight = 306
      ColWidths = (
        32
        46
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlMss: TAdvPanel
    Left = 8
    Top = 512
    Width = 630
    Height = 227
    BevelOuter = bvNone
    DockSite = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    UseDockManager = True
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clTeal
    Caption.ColorTo = clTeal
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -15
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 9
    Caption.Text = 'MSS'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    Hover = True
    Padding.Top = 5
    Padding.Bottom = 5
    Position.Save = True
    Position.Key = '.\posInfo\posinfo.ini'
    Position.Section = 'mss'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdMss: TAdvStringGrid
      Left = 0
      Top = 31
      Width = 630
      Height = 191
      Cursor = crDefault
      Align = alClient
      ColCount = 19
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdCtGetCellColor
      OnGridHint = grdCtGridHint
      OnRightClickCell = grdCtRightClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #52524#50689
        #52264#53944#48264#54840
        #54872#51088#47749'('#54620#44544')'
        #54872#51088#47749'('#50689#47928')'
        #49457#48324'/'#45208#51060
        #52376#48169#47749#52845'('#50689#47928')'
        #45812#45817#51032
        #51032#47280#49884#44036
        #51068#51088
        #52376#48169#53076#46300
        #52376#48169#47749#52845'('#54620#44544')'
        #53804#50668#47049
        #50696#50557#49884#44036
        #51217#49688#44396#48516
        'Modality'
        'OrderID'
        'Remark'
        #44592#52488#44160#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'Sono'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 32
      FixedRowHeight = 29
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -15
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
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
      ScrollProportional = True
      ScrollSynch = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitHeight = 311
      ColWidths = (
        32
        45
        110
        91
        115
        58
        242
        76
        57
        66
        85
        147
        46
        64
        61
        64
        64
        64
        64)
      RowHeights = (
        29
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
  object pnlVitalinfo: TAdvPanel
    Left = 410
    Top = 293
    Width = 218
    Height = 190
    BevelOuter = bvNone
    Color = 16645114
    Constraints.MinHeight = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    BackgroundPosition = bpCenter
    BorderColor = 15780519
    BorderWidth = 2
    CanMove = True
    CanSize = True
    Caption.Color = 10987348
    Caption.ColorTo = clWhite
    Caption.CloseColor = clLime
    Caption.CloseButton = True
    Caption.CloseButtonColor = clBlue
    Caption.CloseButtonHoverColor = clRed
    Caption.Flat = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Height = 29
    Caption.Indent = 5
    Caption.ShadeGrain = 0
    Caption.ShadeType = stBitmap
    Caption.Text = #44592#52488#44160#49324#54637#47785
    Caption.TopIndent = 10
    Caption.Visible = True
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
    Position.Location = clInifile
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 13542013
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16575452
    StatusBar.ColorTo = 16571329
    StatusBar.GradientDirection = gdVertical
    Text = ''
    DesignSize = (
      218
      190)
    FullHeight = 85
    object btnExamInput: TButton
      Left = 156
      Top = 3
      Width = 42
      Height = 20
      Anchors = [akTop, akRight]
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Visible = False
      WordWrap = True
    end
    object edtChkList: TRichEdit
      AlignWithMargins = True
      Left = 7
      Top = 34
      Width = 204
      Height = 149
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Lines.Strings = (
        'edtChkList')
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Zoom = 100
      OnClick = edtChkListClick
      OnContextPopup = edtChkListContextPopup
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'orderInfo_f'
    Version = '1.4.1.4'
    Left = 192
    Top = 90
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 768
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 560
    Top = 19
    object N1: TMenuItem
      Caption = #52524#50689#50756#47308
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #52524#50689#50756#47308' '#52712#49548
      OnClick = N3Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Caption = #44160#49324#49325#51228
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #52376#48169#45236#50669
    end
    object N5: TMenuItem
      Caption = #44592#52488#44160#49324
    end
    object N6: TMenuItem
      Caption = #44160#49324#47700#47784
    end
  end
end
