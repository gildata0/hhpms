object sunap_f: Tsunap_f
  Left = 151
  Top = 82
  ActiveControl = btnSaveNprint
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'sunap_f'
  ClientHeight = 871
  ClientWidth = 1294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSunapInfo: TPanel
    Left = 625
    Top = 1015
    Width = 841
    Height = 694
    Caption = 'pnlSunapInfo'
    TabOrder = 4
    object AdvSplitter1: TAdvSplitter
      Left = 1
      Top = 166
      Width = 839
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      OnDblClick = AdvSplitter1DblClick
    end
    object AdvSplitter2: TAdvSplitter
      Left = 1
      Top = 289
      Width = 839
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      OnDblClick = AdvSplitter2DblClick
    end
    object pnlSunapChamgo: TAdvPanel
      Left = 1
      Top = 169
      Width = 839
      Height = 120
      Align = alTop
      BevelOuter = bvNone
      Color = 16645114
      Constraints.MinHeight = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Height = 25
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #9632' '#52280#44256#49324#54637
      Caption.TopIndent = 5
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
      Position.Save = True
      Position.Key = '.\db.ini'
      Position.Section = 'sunappanel2'
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
      FullHeight = 120
      object Label7: TLabel
        Left = 261
        Top = 6
        Width = 100
        Height = 13
        AutoSize = False
        Caption = #9632' '#49688#45225#50756#47308' '#50696#51221#51068
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object grdSunapChamgo: TAdvStringGrid
        Left = 0
        Top = 23
        Width = 839
        Height = 97
        Cursor = crDefault
        Align = alClient
        ColCount = 4
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grdSunapChamgoGetAlignment
        OnResize = grdSunapChamgoResize
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 10344697
        ActiveCellColorTo = 6210033
        ColumnHeaders.Strings = (
          ''
          #51068#51088
          #52280#44256#49324#54637)
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'sunapChamgo'
        ColumnSize.Location = clIniFile
        ControlLook.FixedGradientFrom = 16115674
        ControlLook.FixedGradientTo = 16115674
        ControlLook.FixedGradientMirrorFrom = 16115674
        ControlLook.FixedGradientMirrorTo = 16115674
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
        ControlLook.FixedGradientDownBorder = 14991773
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
        FixedColWidth = 22
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
        Look = glCustom
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
        SearchFooter.Color = 16115674
        SearchFooter.ColorTo = 16115674
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
        SelectionColor = 16767927
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          22
          63
          665
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
      object Button5: TButton
        Left = 67
        Top = 4
        Width = 61
        Height = 17
        Caption = #46321#47197
        TabOrder = 1
        Visible = False
        OnClick = Button5Click
      end
      object edtSunapEndDay: TAdvEdit
        Left = 370
        Top = 2
        Width = 74
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ImeName = 'Microsoft Office IME 2007'
        ReadOnly = True
        TabOrder = 2
        Text = 'edtSunapEndDay'
        Visible = False
        Version = '3.4.9.0'
      end
    end
    object pnlSunapList: TAdvPanel
      Left = 21
      Top = 473
      Width = 811
      Height = 131
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Height = 25
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #9632' '#49688#45225' '#54633#44228
      Caption.TopIndent = 5
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      FullHeight = 200
      object lblSum: TLabel
        Left = 85
        Top = 4
        Width = 107
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lblSum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object lblJan: TLabel
        Left = 279
        Top = 4
        Width = 107
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lblJan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object lblGam: TLabel
        Left = 439
        Top = 5
        Width = 32
        Height = 13
        Hint = #44048#47732#44552#50529
        Alignment = taRightJustify
        Caption = 'lblGam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object spSkinStdLabel4: TLabel
        Left = 737
        Top = 26
        Width = 22
        Height = 13
        Caption = #44620#51648
        Visible = False
      end
      object spSkinStdLabel2: TLabel
        Left = 479
        Top = 4
        Width = 47
        Height = 16
        AutoSize = False
        Caption = #9632' '#54016
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object spSkinStdLabel6: TLabel
        Left = 210
        Top = 5
        Width = 47
        Height = 16
        AutoSize = False
        Caption = #9632' '#51092#44552' '#54633#44228
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object spSkinStdLabel1: TLabel
        Left = 467
        Top = 24
        Width = 47
        Height = 16
        AutoSize = False
        Caption = #9632' '#44592#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object spSkinStdLabel3: TLabel
        Left = 607
        Top = 24
        Width = 22
        Height = 13
        Caption = #48512#53552
        Visible = False
      end
      object spSkinButton5: TButton
        Left = 791
        Top = -1
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        TabOrder = 0
        Visible = False
        OnClick = btnHwanbulClick
      end
      object CheckBox1: TCheckBox
        Left = 578
        Top = 2
        Width = 109
        Height = 16
        Caption = #49688#45225#44552#50529' 0 '#51228#50808
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object cbTeam2: TComboBox
        Left = 508
        Top = 1
        Width = 61
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'cbTeam2'
        OnChange = cbTeam2Change
      end
      object DateTimePicker1: TDateTimePicker
        Left = 519
        Top = 21
        Width = 87
        Height = 20
        Date = 38657.000000000000000000
        Time = 0.552258391202485600
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object DateTimePicker2: TDateTimePicker
        Left = 643
        Top = 21
        Width = 87
        Height = 20
        Date = 38657.000000000000000000
        Time = 0.552351516198541500
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
      object grdmain: TAdvStringGrid
        Left = 8
        Top = 32
        Width = 741
        Height = 87
        Cursor = crDefault
        ColCount = 30
        DrawingStyle = gdsClassic
        FixedRows = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goColMoving, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 5
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdmainGetCellColor
        OnGetAlignment = grdmainGetAlignment
        OnGetFormat = grdmainGetFormat
        OnClickSort = grdmainClickSort
        OnClickCell = grdmainClickCell
        OnButtonClick = grdmainButtonClick
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 10344697
        ActiveCellColorTo = 6210033
        ColumnHeaders.Strings = (
          ''
          #51652#47308#51068#51088
          #49457#47749
          #52264#53944#48264#54840
          #54016
          #49688#45225#50529
          #48372#54744#52509
          #48376#51064#48512#45812
          #44277#45800#52397#44396
          #48708#48372#54744
          #44592#53440#50857#54408
          #54788#44552
          #54788#44552#50689#49688#51613
          #52852#46300
          #53685#51109
          #53685#51109'('#54788#50689')'
          #44592#53440
          #44048#47732
          #45817#51068#48120#49688
          #54872#48520
          #52852#46300#51333#47448
          #49888#44396
          'Kind'
          #49688#45225#52280#44256#49324#54637
          'IM'
          'S_id'
          #45812#45817#51032
          #50689#49688#51613#48156#54665
          #48512#44032#49464)
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'sunapList'
        ColumnSize.Location = clIniFile
        ControlLook.FixedGradientFrom = 16115674
        ControlLook.FixedGradientTo = 16115674
        ControlLook.FixedGradientMirrorFrom = 16115674
        ControlLook.FixedGradientMirrorTo = 16115674
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
        ControlLook.FixedGradientDownBorder = 14991773
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
        FixedColWidth = 22
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedColAlways = True
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
        Look = glCustom
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
        ScrollProportional = True
        ScrollSynch = True
        SearchFooter.Color = 16115674
        SearchFooter.ColorTo = 16115674
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        SelectionColor = 16767927
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Column = 20
        SortSettings.Show = True
        SortSettings.IndexShow = True
        SortSettings.IgnoreBlanks = True
        SortSettings.IgnoreCase = True
        Version = '8.4.4.1'
        ColWidths = (
          22
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
          64
          64
          64
          64
          65
          64
          64
          61
          64
          50
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
      object Button12: TButton
        Left = 0
        Top = 3
        Width = 16
        Height = 21
        Caption = 'E'
        TabOrder = 6
        Visible = False
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 20
        Top = 5
        Width = 16
        Height = 21
        Caption = 'S'
        TabOrder = 7
        Visible = False
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 45
        Top = 5
        Width = 21
        Height = 21
        Caption = 'L'
        TabOrder = 8
        Visible = False
        OnClick = Button14Click
      end
      object cbChoice: TCheckBox
        Left = 688
        Top = 2
        Width = 48
        Height = 16
        Caption = #49440#53469
        TabOrder = 9
        OnClick = cbChoiceClick
      end
      object btnDeleteChecked: TButton
        Left = 740
        Top = 0
        Width = 51
        Height = 21
        Caption = #49325#51228
        TabOrder = 10
        Visible = False
        OnClick = btnDeleteCheckedClick
      end
    end
    object pnlSunapPlan: TAdvPanel
      Left = 1
      Top = 1
      Width = 839
      Height = 165
      Align = alTop
      BevelOuter = bvNone
      Color = 16645114
      Constraints.MinHeight = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Visible = False
      OnResize = FormResize
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Height = 25
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #9632' '#52824#47308#44228#54925' '#52280#44256#49324#54637
      Caption.TopIndent = 5
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
      Position.Save = True
      Position.Key = '.\db.ini'
      Position.Section = 'sunappanel1'
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
      FullHeight = 52
      object lblPlan: TLabel
        Left = 209
        Top = -2
        Width = 107
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'lblPlan'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object Label1: TLabel
        Left = 461
        Top = 6
        Width = 65
        Height = 13
        AutoSize = False
        Caption = #9632' '#48516#45225#48708#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 322
        Top = 5
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #9632' '#48516#45225#44060#50900
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 649
        Top = 5
        Width = 63
        Height = 13
        AutoSize = False
        Caption = #9632' '#44368#51221#50900#48708
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 136
        Top = 6
        Width = 65
        Height = 13
        AutoSize = False
        Caption = #9632' '#44228#54925#44552#50529
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 410
        Top = 5
        Width = 5
        Height = 13
        Caption = '/'
        Transparent = True
      end
      object lblBunnap: TLabel
        Left = 390
        Top = 5
        Width = 16
        Height = 13
        Caption = '00'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPlanKind: TLabel
        Left = 798
        Top = 3
        Width = 52
        Height = 13
        AutoSize = False
        Caption = 'lblPlanKind'
        Visible = False
      end
      object memPlanMemo: TMemo
        Left = 0
        Top = 23
        Width = 839
        Height = 51
        Align = alTop
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memPlanMemo')
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object edtMonthGeumek: TAdvEdit
        Left = 528
        Top = 2
        Width = 104
        Height = 19
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyText = '0'
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        Ctl3D = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtMonthly: TAdvEdit
        Left = 417
        Top = 2
        Width = 34
        Height = 19
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
        EmptyText = '0'
        EmptyTextStyle = []
        FocusColor = clBtnFace
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        Ctl3D = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtOrthoMonth: TAdvEdit
        Left = 714
        Top = 2
        Width = 79
        Height = 19
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyText = '0'
        EmptyTextStyle = []
        FocusColor = clBtnFace
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        Ctl3D = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object grdplan: TAdvStringGrid
        Left = 0
        Top = 74
        Width = 839
        Height = 91
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 4
        OnDblClick = grdplanDblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdplanGetCellColor
        OnGetAlignment = grdplanGetAlignment
        OnGetFormat = grdplanGetFormat
        OnGetFloatFormat = grdplanGetFloatFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 10344697
        ActiveCellColorTo = 6210033
        ColumnHeaders.Strings = (
          ''
          #52824#49885
          #52824#47308
          #51068#51088
          #52824#47308#44228#54925
          #45800#44032
          #49688#47049
          #44552#50529
          'D/C'
          #49688#45225#44552#50529
          #45224#51008#44552#50529
          #50756#47308#50668#48512
          'path'
          'ID')
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'grdPlanInSunap'
        ColumnSize.Location = clIniFile
        ControlLook.FixedGradientFrom = 16115674
        ControlLook.FixedGradientTo = 16115674
        ControlLook.FixedGradientMirrorFrom = 16115674
        ControlLook.FixedGradientMirrorTo = 16115674
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
        ControlLook.FixedGradientDownBorder = 14991773
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
        FixedColWidth = 22
        FixedRowHeight = 26
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
        Look = glCustom
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
        SearchFooter.Color = 16115674
        SearchFooter.ColorTo = 16115674
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
        SelectionColor = 16767927
        ShowSelection = False
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          22
          119
          35
          81
          245
          64
          32
          75
          48
          75
          76
          3
          3
          3)
        RowHeights = (
          26
          26
          26
          26
          26
          26
          26
          26
          26
          26)
      end
    end
  end
  object pnlTong: TAdvPanel
    Left = 1426
    Top = 504
    Width = 286
    Height = 243
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Text = #9632' '#53685#51109#51077#44552
    Caption.Visible = True
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    FullHeight = 126
    object AdvPanel1: TAdvPanel
      Left = 0
      Top = 218
      Width = 286
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      FullHeight = 0
      object spSkinButton10: TButton
        Left = 24
        Top = 0
        Width = 67
        Height = 22
        Caption = #54869#51064
        TabOrder = 0
        OnClick = spSkinButton10Click
      end
      object spSkinButton11: TButton
        Left = 119
        Top = 0
        Width = 67
        Height = 22
        Caption = #45803#44592
        TabOrder = 1
        OnClick = spSkinButton11Click
      end
    end
    object grdtong: TAdvStringGrid
      Left = 15
      Top = 100
      Width = 246
      Height = 96
      Cursor = crDefault
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51008#54665#47749
        #51077#44552#51008#54665
        #51077#44552#51088)
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
      ColWidths = (
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
  object PnlSunapDtx: TAdvPanel
    Left = 8
    Top = 1005
    Width = 472
    Height = 188
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    BorderColor = 16765615
    CanMove = True
    CanSize = True
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Height = 25
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Text = #9632' '#52824#47308#44228#54925#48324' '#49688#45225#44552#50529' '#46321#47197
    Caption.TopIndent = 7
    Caption.Visible = True
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    FullHeight = 126
    object AdvPanel4: TAdvPanel
      Left = 0
      Top = 138
      Width = 472
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      FullHeight = 0
      object Button6: TButton
        Tag = 4
        Left = 227
        Top = 15
        Width = 50
        Height = 22
        Caption = #54788#44552
        TabOrder = 0
        OnClick = Button8Click
      end
      object Button7: TButton
        Left = 399
        Top = 15
        Width = 67
        Height = 22
        Caption = #45803#44592
        TabOrder = 1
        OnClick = Button7Click
      end
      object Button8: TButton
        Tag = 3
        Left = 172
        Top = 15
        Width = 50
        Height = 22
        Caption = #54788#50689
        TabOrder = 2
        OnClick = Button8Click
      end
      object Button9: TButton
        Tag = 2
        Left = 117
        Top = 15
        Width = 50
        Height = 22
        Caption = #52852#46300
        TabOrder = 3
        OnClick = Button8Click
      end
      object Button10: TButton
        Left = 4
        Top = 15
        Width = 50
        Height = 22
        Caption = #53685#51109
        TabOrder = 4
        OnClick = Button8Click
      end
      object Button11: TButton
        Tag = 1
        Left = 59
        Top = 15
        Width = 50
        Height = 22
        Caption = #53685#54788
        TabOrder = 5
        OnClick = Button8Click
      end
      object Button17: TButton
        Left = 305
        Top = 15
        Width = 86
        Height = 22
        Caption = #51068#51088#48324' '#48372#44592
        TabOrder = 6
        OnClick = Button17Click
      end
    end
    object grdSunapDtx: TAdvStringGrid
      Left = 0
      Top = 23
      Width = 472
      Height = 115
      Cursor = crDefault
      Align = alClient
      ColCount = 6
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdSunapDtxGetAlignment
      OnGetFormat = grdSunapDtxGetFormat
      OnGetEditorType = grdSunapDtxGetEditorType
      OnGetFloatFormat = grdSunapDtxGetFloatFormat
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 10344697
      ActiveCellColorTo = 6210033
      ColumnHeaders.Strings = (
        ''
        #52824#47308#44228#54925
        #44228#54925#44552#50529
        #45224#51008#44552#50529
        #45817#51068' '#49688#45225#44552#50529
        'ID')
      ControlLook.FixedGradientFrom = 16115674
      ControlLook.FixedGradientTo = 16115674
      ControlLook.FixedGradientMirrorFrom = 16115674
      ControlLook.FixedGradientMirrorTo = 16115674
      ControlLook.FixedGradientHoverFrom = 15000287
      ControlLook.FixedGradientHoverTo = 14406605
      ControlLook.FixedGradientHoverMirrorFrom = 14406605
      ControlLook.FixedGradientHoverMirrorTo = 13813180
      ControlLook.FixedGradientHoverBorder = 12033927
      ControlLook.FixedGradientDownFrom = 14991773
      ControlLook.FixedGradientDownTo = 14991773
      ControlLook.FixedGradientDownMirrorFrom = 14991773
      ControlLook.FixedGradientDownMirrorTo = 14991773
      ControlLook.FixedGradientDownBorder = 14991773
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
      FixedColWidth = 22
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
      Look = glCustom
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
      SearchFooter.Color = 16115674
      SearchFooter.ColorTo = 16115674
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
      SelectionColor = 16767927
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        22
        118
        107
        107
        92
        4)
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
  object pnlSunapDtx_day: TAdvPanel
    Left = 8
    Top = 1199
    Width = 472
    Height = 188
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    BorderColor = 16765615
    CanMove = True
    CanSize = True
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Height = 25
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Text = #9632' '#52824#47308#44228#54925#48324' '#49688#45225#46321#47197' '#51068#51088#48324' '#45236#50669
    Caption.TopIndent = 7
    Caption.Visible = True
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    FullHeight = 126
    object AdvPanel5: TAdvPanel
      Left = 0
      Top = 138
      Width = 472
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      FullHeight = 0
      object Button18: TButton
        Left = 399
        Top = 15
        Width = 67
        Height = 22
        Caption = #45803#44592
        TabOrder = 0
        OnClick = Button18Click
      end
    end
    object grdSunapDtx_day: TAdvStringGrid
      Left = 0
      Top = 23
      Width = 472
      Height = 115
      Cursor = crDefault
      Align = alClient
      ColCount = 4
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdSunapDtxGetAlignment
      OnGetFormat = grdSunapDtxGetFormat
      OnGetEditorType = grdSunapDtxGetEditorType
      OnGetFloatFormat = grdSunapDtxGetFloatFormat
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 10344697
      ActiveCellColorTo = 6210033
      ColumnHeaders.Strings = (
        ''
        #51068#51088
        #52824#47308#44228#54925
        #49688#45225#44552#50529)
      ControlLook.FixedGradientFrom = 16115674
      ControlLook.FixedGradientTo = 16115674
      ControlLook.FixedGradientMirrorFrom = 16115674
      ControlLook.FixedGradientMirrorTo = 16115674
      ControlLook.FixedGradientHoverFrom = 15000287
      ControlLook.FixedGradientHoverTo = 14406605
      ControlLook.FixedGradientHoverMirrorFrom = 14406605
      ControlLook.FixedGradientHoverMirrorTo = 13813180
      ControlLook.FixedGradientHoverBorder = 12033927
      ControlLook.FixedGradientDownFrom = 14991773
      ControlLook.FixedGradientDownTo = 14991773
      ControlLook.FixedGradientDownMirrorFrom = 14991773
      ControlLook.FixedGradientDownMirrorTo = 14991773
      ControlLook.FixedGradientDownBorder = 14991773
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
      FixedColWidth = 22
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
      Look = glCustom
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
      SearchFooter.Color = 16115674
      SearchFooter.ColorTo = 16115674
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
      SelectionColor = 16767927
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        22
        118
        203
        107)
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
  object AdvPanel3: TAdvPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 871
    Align = alLeft
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UseDockManager = True
    Version = '2.5.7.9'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Visible = True
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 200
    object Label24: TLabel
      Left = 11
      Top = 681
      Width = 80
      Height = 13
      Caption = #44553#50668' '#48376#51064#48512#45812#50529
    end
    object Label25: TLabel
      Left = 11
      Top = 643
      Width = 80
      Height = 13
      Caption = #44553#50668' '#44277#45800#48512#45812#50529
    end
    object Label26: TLabel
      Left = 213
      Top = 644
      Width = 80
      Height = 13
      Caption = #44553#50668' '#51204#50529#48512#45812#50529
    end
    object Label27: TLabel
      Left = 213
      Top = 681
      Width = 80
      Height = 13
      Caption = #48708#44553#50668' '#48376#51064#48512#45812
    end
    object grdSunap: TAdvStringGrid
      AlignWithMargins = True
      Left = 5
      Top = 24
      Width = 588
      Height = 610
      Cursor = crDefault
      ColCount = 7
      DefaultRowHeight = 20
      DrawingStyle = gdsClassic
      FixedCols = 3
      RowCount = 30
      FixedRows = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdSunapGetAlignment
      OnGetFormat = grdSunapGetFormat
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\sunapTot.ini'
      ColumnSize.Section = 'sunapTot'
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
      FixedColWidth = 35
      FixedRowHeight = 20
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
      Look = glListView
      MouseActions.SizeFixedCol = True
      MouseActions.SizeFixedRow = True
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
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      WordWrap = False
      ColWidths = (
        35
        35
        35
        90
        90
        90
        90)
      RowHeights = (
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20
        20)
    end
    object edtSumBonin: TAdvEdit
      Left = 97
      Top = 681
      Width = 100
      Height = 29
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtSumGongdan: TAdvEdit
      Left = 97
      Top = 646
      Width = 100
      Height = 29
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtSumJunek: TAdvEdit
      Left = 299
      Top = 644
      Width = 100
      Height = 29
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtSumBigub: TAdvEdit
      Left = 299
      Top = 679
      Width = 100
      Height = 29
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtHyunReceipt: TAdvEdit
      Tag = 2
      Left = 97
      Top = 758
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '0'
      Visible = False
      OnChange = edtHyunReceiptChange
      OnClick = edtHyunClick
      OnExit = edtCardExit
      OnKeyPress = edtHyunReceiptKeyPress
      Version = '3.4.9.0'
    end
    object lblHyunYoung: TButton
      Left = 16
      Top = 761
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #54788#44552#50689#49688#51613
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = lblHyunYoungClick
    end
    object lblTonHyunYpung: TButton
      Left = 16
      Top = 820
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #53685#51109' '#54788#50689
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = lblTonHyunYpungClick
    end
    object edtTongReceipt: TAdvEdit
      Tag = 5
      Left = 97
      Top = 818
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = '0'
      Visible = False
      OnChange = edtHyunReceiptChange
      OnClick = edtHyunClick
      OnExit = edtCardExit
      OnKeyPress = edtHyunReceiptKeyPress
      Version = '3.4.9.0'
    end
    object Button4: TButton
      Left = 16
      Top = 791
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #44592'      '#53440
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnClick = lblTongClick
    end
    object edtTong2: TAdvEdit
      Tag = 4
      Left = 97
      Top = 788
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Text = '0'
      Visible = False
      OnChange = edtTongChange
      OnClick = edtHyunClick
      OnExit = edtCardExit
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
  end
  object PlannerCalendar1: TPlannerCalendar
    Left = 671
    Top = 735
    Width = 221
    Height = 232
    EventDayColor = clBlack
    EventFont.Charset = DEFAULT_CHARSET
    EventFont.Color = clWindowText
    EventFont.Height = -11
    EventFont.Name = 'MS Sans Serif'
    EventFont.Style = [fsBold]
    EventMarkerColor = clYellow
    EventMarkerShape = evsCircle
    BackgroundPosition = bpTiled
    BorderWidth = 1
    CaptionColor = clNone
    CaptionTextColor = clBlack
    DateDownColor = clNone
    DateHoverColor = clNone
    DayFont.Charset = DEFAULT_CHARSET
    DayFont.Color = clWindowText
    DayFont.Height = -11
    DayFont.Name = 'MS Sans Serif'
    DayFont.Style = []
    FocusColor = clHighlight
    HeaderColor = clNone
    InActiveColor = clGray
    InversColor = clTeal
    LineColor = clGray
    Line3D = True
    Look = lookFlat
    NameOfDays.Monday = #50900
    NameOfDays.Tuesday = #54868
    NameOfDays.Wednesday = #49688
    NameOfDays.Thursday = #47785
    NameOfDays.Friday = #44552
    NameOfDays.Saturday = #53664
    NameOfDays.Sunday = #51068
    NameOfMonths.January = '1'
    NameOfMonths.February = '2'
    NameOfMonths.March = '3'
    NameOfMonths.April = '4'
    NameOfMonths.May = '5'
    NameOfMonths.June = '6'
    NameOfMonths.July = '7'
    NameOfMonths.August = '8'
    NameOfMonths.September = '9'
    NameOfMonths.October = '10'
    NameOfMonths.November = '11'
    NameOfMonths.December = '12'
    NameOfMonths.UseIntlNames = True
    WeekFont.Charset = DEFAULT_CHARSET
    WeekFont.Color = clWindowText
    WeekFont.Height = -11
    WeekFont.Name = 'MS Sans Serif'
    WeekFont.Style = []
    WeekName = 'Wk'
    SelectColor = clTeal
    SelectFontColor = clWhite
    ShowGotoToday = True
    ShowToday = True
    StartDay = 7
    TextColor = clBlack
    TodayFormat = '"Today" DDD/mm, YYYY'
    WeekendColor = clRed
    Day = 22
    Month = 4
    Year = 2012
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnDaySelect = PlannerCalendar1DaySelect
    GradientStartColor = clWhite
    GradientEndColor = clBtnFace
    GradientDirection = gdVertical
    MonthGradientStartColor = clNone
    MonthGradientEndColor = clNone
    MonthGradientDirection = gdHorizontal
    HintPrevYear = 'Previous Year'
    HintPrevMonth = 'Previous Month'
    HintNextMonth = 'Next Month'
    HintNextYear = 'Next Year'
    Version = '2.3.2.0'
    TMSStyle = 0
  end
  object pnlLeft: TAdvPanel
    Left = 615
    Top = -1
    Width = 770
    Height = 1001
    BevelOuter = bvNone
    Color = 16645114
    TabOrder = 8
    UseDockManager = True
    OnDblClick = pnlLeftDblClick
    Version = '2.5.7.9'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Text = #9632' '#49688#45225#46321#47197
    Caption.Visible = True
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    Styler = AdvPanelStyler1
    Text = ''
    DesignSize = (
      770
      1001)
    FullHeight = 200
    object Shape1: TShape
      Left = 8
      Top = 24
      Width = 215
      Height = 1
      Brush.Color = clSilver
      Pen.Color = clGray
    end
    object lblSunapDay: TLabel
      Left = 120
      Top = 29
      Width = 99
      Height = 16
      Caption = 'lblSunapDay'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape10: TShape
      Left = 8
      Top = 52
      Width = 215
      Height = 1
      Brush.Color = clSilver
      Pen.Color = clGray
    end
    object lblSunap: TLabel
      Left = 0
      Top = 31
      Width = 52
      Height = 12
      Caption = #49688#45225#51068#51088
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      OnClick = lblSunapClick
    end
    object wLabel21: TLabel
      Left = 516
      Top = 164
      Width = 24
      Height = 12
      Caption = #49828#53597
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wLabel22: TLabel
      Left = 11
      Top = 570
      Width = 48
      Height = 12
      Caption = #49688#45225#44396#48516
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object lblChart: TLabel
      Left = 72
      Top = 3
      Width = 35
      Height = 13
      Caption = 'lblChart'
    end
    object lblDOc: TLabel
      Left = 464
      Top = 202
      Width = 26
      Height = 17
      Alignment = taRightJustify
      Caption = #50896#51109
      Color = 16770805
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object Label23: TLabel
      Left = 469
      Top = 101
      Width = 11
      Height = 17
      Alignment = taRightJustify
      Caption = '%'
      Color = 16770805
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel11: TLabel
      Left = 205
      Top = 149
      Width = 62
      Height = 17
      Alignment = taCenter
      Caption = #49688#45225'  '#44552#50529
      Color = 16770805
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object EllipsLabel2: TLabel
      Left = 438
      Top = 171
      Width = 52
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #51652' '#47308' '#49892
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblJubsuID: TLabel
      Left = 326
      Top = 21
      Width = 49
      Height = 13
      Caption = 'lblJubsuID'
    end
    object lblJinDay1: TLabel
      Left = 253
      Top = 21
      Width = 48
      Height = 13
      Caption = 'lblJinDay1'
    end
    object lblJinDay2: TLabel
      Left = 253
      Top = 40
      Width = 48
      Height = 13
      Caption = 'lblJinDay2'
    end
    object lblJongbeul: TLabel
      Left = 322
      Top = 40
      Width = 53
      Height = 13
      Caption = 'lblJongbeul'
    end
    object lblKind: TLabel
      Left = 216
      Top = 21
      Width = 31
      Height = 13
      Caption = 'lblKind'
    end
    object lblTjung: TLabel
      Left = 416
      Top = 24
      Width = 37
      Height = 13
      Caption = 'lblTjung'
    end
    object lblTjungCode: TLabel
      Left = 416
      Top = 40
      Width = 62
      Height = 13
      Caption = 'lblTjungCode'
    end
    object btnSave: TButton
      Left = 5
      Top = 249
      Width = 102
      Height = 25
      Cancel = True
      Caption = #51200#51109
      TabOrder = 5
      OnClick = btnSaveClick
    end
    object gbSunapchamgo: TGroupBox
      Left = 567
      Top = 487
      Width = 260
      Height = 164
      Caption = #49688#45225#52280#44256#49324#54637
      Color = clWhite
      ParentColor = False
      TabOrder = 7
      Visible = False
    end
    object btnHwanbul: TButton
      Left = 178
      Top = 298
      Width = 52
      Height = 25
      Caption = #54872#48520
      TabOrder = 8
      Visible = False
      OnClick = btnHwanbulClick
    end
    object btnReceipt: TButton
      Left = 113
      Top = 249
      Width = 55
      Height = 25
      Caption = #51064#49604
      TabOrder = 9
      OnClick = btnReceiptClick
    end
    object btnClose: TButton
      Left = 174
      Top = 249
      Width = 55
      Height = 25
      Caption = #45803#44592
      TabOrder = 10
      OnClick = btnCloseClick
    end
    object cbdangmisu: TCheckBox
      Left = 461
      Top = 164
      Width = 13
      Height = 17
      Hint = #48120#49688' '#49688#45225#51068' '#44221#50864' '#52404#53356#54633#45768#45796'.'
      Caption = 'cbdangmisu'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Visible = False
      OnClick = cbdangmisuClick
    end
    object cbSkind: TAdvComboBox
      Left = 280
      Top = 455
      Width = 59
      Height = 21
      Color = clWindow
      Version = '1.9.2.1'
      Visible = False
      ButtonWidth = 17
      EmptyTextStyle = []
      DropWidth = 0
      Enabled = True
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = -1
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      TabOrder = 12
    end
    object edtChong1: TAdvEdit
      Left = 385
      Top = 453
      Width = 101
      Height = 33
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = 16777160
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
      Text = '0.00'
      Visible = False
      OnClick = edtCardClick
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object cbSunapGubunHangMok: TComboBox
      Left = 65
      Top = 570
      Width = 145
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 18
      Text = 'cbSunapGubunHangMok'
      Visible = False
    end
    object pnlCard: TAdvPanel
      Left = 512
      Top = 179
      Width = 219
      Height = 160
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.CloseButton = True
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #9632' '#52852#46300#44552#50529#46321#47197
      Caption.TopIndent = 3
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      FullHeight = 0
      object AdvPanel2: TAdvPanel
        Left = 0
        Top = 135
        Width = 219
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        Color = 16645114
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
        Version = '2.5.7.9'
        BorderColor = 16765615
        Caption.Color = 16575452
        Caption.ColorTo = 16571329
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 16643051
        DoubleBuffered = True
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
        FullHeight = 0
        object btnCardConfirm: TButton
          Left = -1
          Top = 0
          Width = 52
          Height = 22
          Caption = #54869#51064
          TabOrder = 0
          OnClick = btnCardConfirmClick
        end
        object btnCardCancel: TButton
          Left = 140
          Top = 0
          Width = 46
          Height = 22
          Caption = #45803#44592
          TabOrder = 1
          OnClick = btnCardCancelClick
        end
        object Button16: TButton
          Left = 59
          Top = 0
          Width = 52
          Height = 22
          Caption = #52628#44032
          TabOrder = 2
          OnClick = Button16Click
        end
      end
      object grdCard: TAdvStringGrid
        Left = 192
        Top = 51
        Width = 201
        Height = 106
        Cursor = crDefault
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grdCardGetAlignment
        OnGetFormat = grdCardGetFormat
        OnRowChanging = grdCardRowChanging
        OnClickCell = grdCardClickCell
        OnGetEditorType = grdCardGetEditorType
        OnComboCloseUp = grdCardComboCloseUp
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #52852#46300#51333#47448
          #44552#50529
          #54624#48512#44060#50900
          #49688#49688#47308)
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
        FixedColWidth = 22
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
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          22
          64
          90
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
    object Panel5: TPanel
      Left = 265
      Top = 625
      Width = 234
      Height = 57
      TabOrder = 20
      Visible = False
      object wLabel23: TLabel
        Left = 7
        Top = 15
        Width = 96
        Height = 12
        Alignment = taRightJustify
        Caption = #51060#48120#45225#48512#54620' '#44552#50529
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object spSkinCheckRadioBox2: TRadioButton
        Left = 10
        Top = 33
        Width = 93
        Height = 18
        Caption = #50689#49688#51613' '#48156#54665
        TabOrder = 0
        Visible = False
      end
      object spSkinCheckRadioBox3: TRadioButton
        Left = 115
        Top = 23
        Width = 117
        Height = 18
        Caption = #50689#49688#51613' '#48120#47532' '#48372#44592
        TabOrder = 1
        Visible = False
      end
      object edtPrevSunap: TAdvEdit
        Left = 109
        Top = 6
        Width = 122
        Height = 33
        Cursor = crIBeam
        DefaultHandling = True
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = 16777160
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = 'edtPrevSunap'
        Visible = True
        Version = '3.4.9.0'
      end
    end
    object pnlHwanbul: TAdvPanel
      Left = 265
      Top = 492
      Width = 216
      Height = 146
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      BorderColor = 16765615
      CanMove = True
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #54872#48520
      Caption.TopIndent = 3
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      FullHeight = 200
      object spSkinPanel4: TPanel
        Left = 0
        Top = 18
        Width = 216
        Height = 79
        Align = alTop
        Caption = 'pnlHyunCert'
        TabOrder = 0
        object wLabel18: TLabel
          Left = 5
          Top = 31
          Width = 24
          Height = 12
          Alignment = taRightJustify
          Caption = #49324#50976
          Color = 16770805
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel19: TLabel
          Left = 5
          Top = 53
          Width = 24
          Height = 12
          Alignment = taRightJustify
          Caption = #44552#50529
          Color = 16770805
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel20: TLabel
          Left = 5
          Top = 5
          Width = 24
          Height = 12
          Alignment = taRightJustify
          Caption = #51333#47448
          Color = 16770805
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object edtsayu: TAdvEdit
          Left = 46
          Top = 27
          Width = 164
          Height = 21
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ImeMode = imSHanguel
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 1
          Text = ''
          Visible = True
          OnChange = edtsayuChange
          Version = '3.4.9.0'
        end
        object edthwanbul: TAdvEdit
          Left = 46
          Top = 50
          Width = 164
          Height = 33
          Cursor = crIBeam
          Hint = #54788#44552#49688#45225#49884' '#54788#44552#50689#49688#51613#51012' '#48156#54665#54620#44221#50864' '#54644#45817#44552#50529#51012' '#44592#51077#54620#45796'.'
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -21
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = ''
          Visible = True
          Version = '3.4.9.0'
        end
        object cbHwanbulKind: TComboBox
          Left = 46
          Top = 4
          Width = 166
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
          Text = #54788#44552
          Items.Strings = (
            #54788#44552
            #52852#46300#52712#49548
            #54788#44552#50689#49688#51613
            #53685#51109
            #53685#51109#54788#44552#50689#49688#51613
            #44592#53440)
        end
      end
      object btnHwanBulSave: TButton
        Left = 29
        Top = 105
        Width = 67
        Height = 22
        Caption = #54869#51064
        TabOrder = 1
        OnClick = btnHwanBulSaveClick
      end
      object btnCancelhwanBul: TButton
        Left = 124
        Top = 105
        Width = 67
        Height = 22
        Caption = #52712#49548
        TabOrder = 2
        OnClick = btnCancelhwanBulClick
      end
    end
    object btnEndAccount: TButton
      Left = 694
      Top = 0
      Width = 75
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #50756#45225' '#52376#47532
      TabOrder = 21
      Visible = False
    end
    object btnEndAccountCancel: TButton
      Left = 620
      Top = 0
      Width = 75
      Height = 21
      Anchors = [akTop, akRight]
      Caption = #50756#45225' '#52712#49548
      TabOrder = 22
      Visible = False
    end
    object cbHygine: TComboBox
      Left = 547
      Top = 163
      Width = 74
      Height = 21
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      Text = 'cbHygine'
      Visible = False
    end
    object sbGroup: TGroupBox
      Left = 13
      Top = 873
      Width = 212
      Height = 67
      Caption = #51652#47308#54637#47785
      TabOrder = 14
      Visible = False
      object scGroup: TScrollBox
        Left = 2
        Top = 15
        Width = 208
        Height = 50
        HorzScrollBar.Visible = False
        Align = alClient
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object btnCalendar: TAdvGlowButton
      Left = 85
      Top = 29
      Width = 27
      Height = 22
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DD60500000000000036000000280000001400000018000000010018000000
        0000A005000000000000000000000000000000000000F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F00000000000000000000000000000000000000000000000
        00000000000000F0F0F0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A000
        0000000000000000000000000000000000000000000000000000000000000000
        000000F0F0F0000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000F0
        F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000FF
        0000FF0000FF0000FFFFFFFFFFFFFF0000FFFFFFFF000000000000F0F0F0FFFF
        FFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000FFFFFF0000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF000000000000F0F0F0FFFFFFFFFFFF
        F0F0F0FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFF0000FFFFFFFF000000000000F0F0F0FFFFFFFFFFFFF0F0F0FF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF
        FFFFFF0000FFFFFFFF000000000000F0F0F0FFFFFFFFFFFFA0A0A0A0A0A0A0A0
        A0A0A0A0A0A0A0000000FFFFFF0000FFFFFFFFFFFFFF0000FFFFFFFF0000FF00
        00FFFFFFFF000000000000F0F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFF
        FF000000000000F0F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000F0F0F0FFFFFFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000
        00000000000000000000000000000000000000000000000000000000000000F0
        F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000F0F0F0FFFF
        FFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00000000FFFF00FF
        FF00FFFF00FFFF00FFFF00000000FFFF00000000000000F0F0F0FFFFFFFFFFFF
        A0A0A0A0A0A0A0A0A0A0A0A0A0A0A00000000000000000000000000000000000
        00000000000000000000000000000000F0F0F0F0F0F0FFFFFFFFFFFFF0F0F0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0F0F0F0000000FFFFFFFFFFFF
        000000000000A0A0A0000000F0F0F0F0F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000F0F0F0F0F0F0F0F0F0FFFFFFFFFFFFA0A0A0A0A0A0A0A0A0A0A0A0
        A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0
        A0F0F0F0F0F0F0F0F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A0A0A0F0F0F0
        F0F0F0F0F0F0FFFFFFFFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A0A0A0F0F0F0F0F0F0F0
        F0F0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
        A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0F0F0F0F0F0F0F0F0F0A0A0
        A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
        A0A0A0A0A0A0A0A0A0A0A0000000A0A0A0F0F0F0F0F0F0F0F0F0A0A0A0A0A0A0
        A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
        A0A0A0A0A0A0A0000000A0A0A0F0F0F0F0F0F0F0F0F0}
      TabOrder = 23
      OnClick = btnCalendarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnSaveNprint: TButton
      Left = 5
      Top = 298
      Width = 163
      Height = 25
      Caption = #51200#51109' '#54980' '#51064#49604
      TabOrder = 6
      OnClick = btnSaveNprintClick
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 568
      Top = 171
      Width = 337
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = False
      BevelInner = bvNone
      BevelOuter = bvNone
      Columns = <
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
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
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
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
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end>
      ComboItems = <>
      EditColumn = -1
      EditHeight = 19
      EmptyText = #51652#47308#49892
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = True
      ButtonWidth = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      GridLines = False
      ItemIndex = -1
      LookupColumn = 0
      LabelCaption = ''
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      SortColumn = 0
      TabOrder = 24
      OnSelect = cbTreatRoomSelect
    end
    object cbDoc: TColumnComboBox
      Left = 607
      Top = 202
      Width = 337
      Height = 21
      Color = clWindow
      Version = '1.6.0.0'
      Visible = False
      Columns = <>
      ComboItems = <>
      EditColumn = -1
      EditHeight = 15
      EmptyText = ''
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = True
      ButtonWidth = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      GridLines = False
      ItemIndex = -1
      LookupColumn = 0
      LabelCaption = ''
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ParentFont = False
      SortColumn = 0
      TabOrder = 13
      OnChange = cbDocChange
      OnCloseUp = cbDocCloseUp
    end
    object Panel9: TPanel
      Left = 766
      Top = 427
      Width = 257
      Height = 297
      Caption = 'Panel9'
      TabOrder = 26
      Visible = False
      object Label5: TLabel
        Left = 21
        Top = 132
        Width = 55
        Height = 13
        Caption = #48512#44032#49464#54252#54632
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object lblBohum: TLabel
        Left = 21
        Top = 86
        Width = 78
        Height = 17
        Hint = #48372#54744#44552#50529#51012' '#44032#51256#50741#45768#45796'.'
        Alignment = taRightJustify
        Caption = #48372#54744#48376#51064#48512#45812
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        Layout = tlCenter
        OnClick = lblBohumClick
      end
      object wLabel8: TLabel
        Left = 21
        Top = 23
        Width = 65
        Height = 17
        Alignment = taRightJustify
        Caption = #48372#54744#51652#47308#48708
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object wLabel9: TLabel
        Left = 21
        Top = 55
        Width = 65
        Height = 17
        Alignment = taRightJustify
        Caption = #44277#45800#48512#45812#44552
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object wLabel7: TLabel
        Left = 21
        Top = 155
        Width = 52
        Height = 17
        Alignment = taRightJustify
        Caption = #44592#53440#48708#50857
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object wLabel10: TLabel
        Left = 21
        Top = 219
        Width = 99
        Height = 17
        Alignment = taRightJustify
        Caption = #54633#44228'('#48512#44032#49464#54252#54632')'
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object lblsunsu: TLabel
        Left = 21
        Top = 259
        Width = 52
        Height = 17
        Alignment = taRightJustify
        Caption = #48120#49688#44552#50529
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object wLabel5: TLabel
        Left = 21
        Top = 117
        Width = 70
        Height = 17
        Alignment = taRightJustify
        Caption = #48708#48372#54744' '#54633#44228
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object wLabel16: TLabel
        Left = 21
        Top = 190
        Width = 70
        Height = 17
        Alignment = taRightJustify
        Caption = #48512#44032#49464' '#54633#44228
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object cbbohum: TCheckBox
        Left = 98
        Top = 54
        Width = 15
        Height = 17
        Hint = #45817#51068' '#48120#49688#44032' '#48372#54744#44552#50529#51068#44221#50864' '#52404#53356#54633#45768#45796'.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Visible = False
      end
      object edtEtc: TAdvEdit
        Left = 119
        Top = 149
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0'
        Visible = True
        OnChange = edtbonin1Change
        OnExit = edtbonin1Exit
        OnKeyPress = edtBochulKeyPress
        Version = '3.4.9.0'
      end
      object edtbonin1: TAdvEdit
        Left = 119
        Top = 117
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '0'
        Visible = True
        OnChange = edtbonin1Change
        OnExit = edtbonin1Exit
        OnKeyPress = edtBochulKeyPress
        Version = '3.4.9.0'
      end
      object edtBugaSe: TAdvEdit
        Left = 119
        Top = 182
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Flat = True
        FocusColor = 16645114
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '0'
        Visible = True
        OnChange = edtbonin1Change
        OnExit = edtbonin1Exit
        OnKeyPress = edtBochulKeyPress
        Version = '3.4.9.0'
      end
      object edtChong2: TAdvEdit
        Left = 119
        Top = 19
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        FlatLineColor = clBlue
        FocusColor = 16645114
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtChung: TAdvEdit
        Left = 119
        Top = 51
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        FlatLineColor = clBlue
        FocusColor = 16645114
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtBohum: TAdvEdit
        Left = 119
        Top = 84
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        FlatLineColor = clBlue
        FocusColor = 16645114
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = '0'
        Visible = True
        OnChange = edtCardChange
        OnClick = btnCardClick
        OnExit = edtCardExit
        OnKeyPress = edtCardKeyPress
        Version = '3.4.9.0'
      end
      object edtSunapChongEk: TAdvEdit
        Left = 119
        Top = 215
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyText = '0'
        EmptyTextStyle = []
        FocusColor = 16645114
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtilbanChongMisu: TAdvEdit
        Left = 119
        Top = 248
        Width = 123
        Height = 29
        Cursor = crIBeam
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etMoney
        EmptyTextStyle = []
        Flat = True
        FocusColor = 16645114
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '0'
        Visible = True
        OnChange = edtCardChange
        OnClick = btnCardClick
        OnExit = edtCardExit
        OnKeyPress = edtCardKeyPress
        Version = '3.4.9.0'
      end
    end
    object edtYul: TAdvEdit
      Left = 381
      Top = 97
      Width = 82
      Height = 27
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 5
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = '0.00000'
      Visible = True
      OnKeyPress = edtYulKeyPress
      Version = '3.4.9.0'
    end
    object edtiCard: TAdvEdit
      Left = 86
      Top = 59
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Visible = True
      OnChange = edtiCardChange
      OnKeyPress = edtiCardKeyPress
      Version = '3.4.9.0'
    end
    object edtiHyun: TAdvEdit
      Tag = 1
      Left = 86
      Top = 94
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '0'
      Visible = True
      OnChange = edtiHyunChange
      OnKeyPress = edtiCardKeyPress
      Version = '3.4.9.0'
    end
    object Button21: TButton
      Left = 5
      Top = 99
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #54788'      '#44552
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      TabStop = False
    end
    object Button22: TButton
      Left = 5
      Top = 67
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #52852'      '#46300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 28
      TabStop = False
    end
    object Button24: TButton
      Left = 194
      Top = 100
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #54624#51064' '#44552#50529
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      TabStop = False
    end
    object edtiDc: TAdvEdit
      Left = 275
      Top = 97
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '0'
      Visible = True
      OnKeyPress = edtiCardKeyPress
      Version = '3.4.9.0'
    end
    object Button23: TButton
      Left = 194
      Top = 65
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #53685'      '#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 30
    end
    object edtiTong: TAdvEdit
      Tag = 3
      Left = 275
      Top = 59
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Visible = True
      OnKeyPress = edtiCardKeyPress
      Version = '3.4.9.0'
    end
    object edtCard: TAdvEdit
      Left = 86
      Top = 148
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
      Text = '0'
      Visible = True
      OnChange = edtCardChange
      OnExit = edtCardExit
      OnKeyPress = edtCardKeyPress
      Version = '3.4.9.0'
    end
    object edtHyun: TAdvEdit
      Tag = 1
      Left = 86
      Top = 178
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 32
      Text = '0'
      Visible = True
      OnChange = edtHyunChange
      OnClick = edtHyunClick
      OnExit = edtCardExit
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object edtTong: TAdvEdit
      Tag = 3
      Left = 86
      Top = 213
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 33
      Text = '0'
      Visible = True
      OnChange = edtTongChange
      OnClick = edtHyunClick
      OnExit = edtCardExit
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object lblHyunGeum: TButton
      Left = 5
      Top = 183
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #54788'      '#44552
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      OnClick = lblHyunGeumClick
    end
    object btnCard: TButton
      Left = 5
      Top = 153
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #52852'      '#46300
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 35
      OnClick = btnCardClick
    end
    object lblTong: TButton
      Left = 5
      Top = 216
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #53685'      '#51109
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 36
      OnClick = lblTongClick
    end
    object edtSunap: TAdvEdit
      Left = 278
      Top = 147
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextFocused = True
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      FocusColor = 16645114
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      ReadOnly = True
      TabOrder = 37
      Text = '0'
      Visible = True
      OnChange = edtSunapChange
      OnExit = edtbonin1Exit
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object edtDangMisu: TAdvEdit
      Left = 278
      Top = 178
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 38
      Text = '0'
      Visible = True
      OnClick = edtCardClick
      OnKeyPress = edtDangMisuKeyPress
      Version = '3.4.9.0'
    end
    object btnTodaymisu: TButton
      Left = 197
      Top = 180
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #45817#51068' '#48120#49688
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 39
      OnClick = btnTodaymisuClick
    end
    object btnGammyun: TButton
      Left = 197
      Top = 216
      Width = 75
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #54624#51064' '#44552#50529
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      OnClick = btnGammyunClick
    end
    object edtGammyun: TAdvEdit
      Left = 278
      Top = 213
      Width = 100
      Height = 29
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
      EmptyText = '0'
      EmptyTextStyle = [fsBold]
      FlatLineColor = clGreen
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 41
      Text = '0'
      Visible = True
      OnClick = edtCardClick
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object CheckBox2: TCheckBox
      Left = 132
      Top = 281
      Width = 97
      Height = 17
      Caption = #50689#49688#51613#48120#47532#48372#44592
      TabOrder = 42
    end
    object AdvPanel6: TAdvPanel
      Left = 505
      Top = 875
      Width = 513
      Height = 234
      TabOrder = 43
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      CanMove = True
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object AdvStringGrid1: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 511
        Height = 214
        Cursor = crDefault
        Align = alClient
        ColCount = 9
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          'su_key'
          'su_kor_name'
          'Kumak'
          'su_gu1'
          'su_gu3'
          'bigub'
          'bon'
          'chung')
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
        ExplicitLeft = 16
        ExplicitTop = -165
        ExplicitWidth = 497
        ExplicitHeight = 225
        ColWidths = (
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
    object pnlDr: TAdvPanel
      Tag = 3
      Left = 9
      Top = 329
      Width = 218
      Height = 119
      BevelOuter = bvNone
      Constraints.MinHeight = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 44
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = 10987348
      Caption.ColorTo = clWhite
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -13
      Caption.Font.Name = #47569#51008' '#44256#46357
      Caption.Font.Style = []
      Caption.Height = 25
      Caption.Indent = 0
      Caption.Text = #49688#45225#47700#47784
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      DesignSize = (
        218
        119)
      FullHeight = 30
      object edtDr: TRichEdit
        Left = 12
        Top = 27
        Width = 146
        Height = 43
        Color = 15924724
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'edtDr')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        Zoom = 100
      end
      object Button25: TButton
        Left = -169
        Top = 1
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
        TabOrder = 1
        TabStop = False
        Visible = False
        WordWrap = True
      end
    end
    object pnlBoho: TAdvPanel
      Left = 504
      Top = 21
      Width = 237
      Height = 451
      Color = clWhite
      TabOrder = 25
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      CanMove = True
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.CloseButton = True
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Visible = True
      DoubleBuffered = False
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 422
      object Label8: TLabel
        Left = 7
        Top = 22
        Width = 109
        Height = 12
        Alignment = taCenter
        Caption = #48372#54840#51652#47308' '#49849#51064#52376#47532
        Color = 15589338
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object lblWonweilsu: TLabel
        Left = 202
        Top = 20
        Width = 4
        Height = 14
        Color = clGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Panel7: TPanel
        Left = -3
        Top = 40
        Width = 209
        Height = 202
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 0
        object Label11: TLabel
          Left = 5
          Top = 77
          Width = 96
          Height = 12
          Caption = #49373#54876#50976#51648#48708#52397#44396#50529
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Shape8: TShape
          Left = 107
          Top = 72
          Width = 93
          Height = 22
          Pen.Color = clBtnShadow
        end
        object Shape9: TShape
          Left = 107
          Top = 49
          Width = 93
          Height = 22
          Pen.Color = clBtnShadow
        end
        object Label13: TLabel
          Left = 6
          Top = 100
          Width = 96
          Height = 12
          Caption = #48376#51064#48512#45812#50668#48512#53076#46300
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clPurple
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 11
          Top = 55
          Width = 91
          Height = 12
          Caption = #48376#51064#51068#48512#48512#45812#44552
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 10
          Top = 9
          Width = 91
          Height = 12
          Caption = #49373#54876#50976#51648#48708#51092#50529
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clYellow
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblJanaek: TLabel
          Left = 109
          Top = 5
          Width = 90
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Shape11: TShape
          Left = 0
          Top = 47
          Width = 209
          Height = 1
          Pen.Color = clGray
        end
        object Shape12: TShape
          Left = 0
          Top = 159
          Width = 209
          Height = 1
          Pen.Color = clGray
        end
        object Label19: TLabel
          Left = 11
          Top = 29
          Width = 44
          Height = 12
          Caption = #51452#49345#48337':'
          Color = 16384
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lblsKey: TLabel
          Left = 58
          Top = 27
          Width = 4
          Height = 14
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label21: TLabel
          Left = 110
          Top = 29
          Width = 57
          Height = 12
          Caption = #52376#48169#51068#47144':'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object lblWonweNo: TLabel
          Left = 173
          Top = 27
          Width = 4
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object Label10: TLabel
          Left = 6
          Top = 120
          Width = 96
          Height = 12
          Caption = #51652#47308#51032#47280#44592#44288#44592#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object edtSunkiho: TEdit
          Left = 106
          Top = 117
          Width = 93
          Height = 18
          BevelInner = bvLowered
          BorderStyle = bsNone
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 5
        end
        object edtSukum: TAdvEdit
          Left = 107
          Top = 73
          Width = 93
          Height = 20
          DefaultHandling = True
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          BorderStyle = bsNone
          Color = 16768477
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = True
          OnClick = edtCardClick
          OnKeyPress = edtBochulKeyPress
          Version = '3.4.9.0'
        end
        object wNumEdit13: TAdvEdit
          Left = 107
          Top = 50
          Width = 93
          Height = 20
          DefaultHandling = True
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          BorderStyle = bsNone
          Color = 16768477
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '0'
          Visible = True
          OnClick = edtCardClick
          OnKeyPress = edtBochulKeyPress
          Version = '3.4.9.0'
        end
        object JBonComboEdit: TComboBox
          Left = 107
          Top = 96
          Width = 93
          Height = 20
          Color = 16382455
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544')'
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = 'JBonComboEdit'
          Items.Strings = (
            'M001  '#49440#53469#51032#47308#44592#44288' '#51201#50857#51088'('#51312#44148#48512#50672#51109#49849#51064#51088')1'#51333' ['#54644#45817#48337#50896#50640' '#51652#47308#49884#47564' '#47732#51228']'
            'M002  '#49440#53469#51032#47308#44592#44288' '#51088#48156#49437' '#52280#50668#51088' 1'#51333' ['#54644#45817#48337#50896#50640' '#51652#47308#49884#47564' '#47732#51228']'
            'M003  18'#49464#48120#47564#51064#51088' 1'#51333' ['#47732#51228']'
            'M004  '#51076#49328#48512' 1'#51333' ['#47732#51228']'
            'M005  '#55148#44480#45212#52824#49457#51656#54872#51088' 1'#51333' ['#47732#51228']'
            'M006  <'#49325#51228'>'
            'M007  20'#49464' '#51060#54616#51064' '#51088#47196' '#51473','#44256#46321#54617#44368' '#51116#54617' '#51473#51064' '#51088'  1'#51333' ['#47732#51228']'
            'M008  '#44032#51221#44036#54840#45824#49345#51088' 1'#51333' ['#47732#51228']'
            'M009  '#51025#44553#54872#51088#51064' '#49440#53469#51032#47308#44553#50668#44592#44288' '#51060#50857#51088' 1'#51333' ['#47732#51228']'
            'M010  '#51109#50528#51064#48372#51109#44396' '#51648#44553#48155#51008' '#49440#53469#51032#47308#44553#50668#44592#44288' '#51060#50857#51088' 1'#51333' ['#47732#51228']'
            'M011  '#54665#47140#54872#51088' 1'#51333' ['#47732#51228']'
            'M012  '#45432#49689#51064#51652#47308#49884#49444#51012' '#51060#50857#54616#45716' '#45432#49689#51064' 1'#51333' ['#47732#51228']'
            'M013  '#51025#44553'.'#48516#47564#51004#47196' '#45432#49689#51064#51652#47308#49884#49444' '#51060#50808#51032' '#51032#47308#44553#50668#44592#44288#51012' '#51060#50857#54616#45716' '#45432#49689#51064' 1'#51333' ['#47732#51228']'
            'M014  '#45432#49689#51064#51652#47308#49884#49444#50640#49436' '#51032#47280#46104#50612' '#51228'3'#52264#51032#47308#44553#50668#44592#44288#51012' '#51060#50857#54616#45716' '#45432#49689#51064' 1'#51333' ['#47732#51228']'
            'M015  '#46321#47197' '#55148#44480#45212#52824#49457#51656#54872#51088' 1'#51333' ['#47732#51228']'
            'M016  '#46321#47197' '#51473#51613#51656#54872#51088' 1'#51333' ['#47732#51228']'
            'B001 '#49440#53469#51032#47308#44553#50668#44592#44288' '#51201#50857#51088'('#51312#44148#48512#50672#51109#49849#51064#51088') 2'#51333#9
            'B002 '#49440#53469#51032#47308#44553#50668#44592#44288' '#51088#48156#51201' '#52280#50668#51088' 2'#51333#9
            'B003 '#51025#44553#54872#51088#51064' '#49440#53469#51032#47308#44553#50668#44592#44288' '#51060#50857#51088' 2'#51333#9
            'B004 '#51109#50528#51064' '#48372#51109#44396' '#51648#44553#48155#45716' '#49440#53469#51032#47308#44553#50668#44592#44288#51060#50857#51088' 2'#51333#9
            'B005 '#49440#53469#51032#47308#44553#50668#44592#44288#50640#49436' '#51032#47308#46108#51088'(1, 2'#51333')'#9
            'B006 '#49440#53469#51032#47308#44553#50668#44592#44288#50640#49436' '#51032#47280#46104#50612' '#51116#51032#47280#46108#51088'(1, 2'#51109')'#9
            
              'B007 '#49440#53469#51032#47308#44553#50668#44592#44288' '#51201#50857#45824#49345#51060#47732#49436' '#49324#54924#48373#51648#49884#49444#50640#49436' '#49440#53469#51032#47308#44553#50668#44592#44288#51060' '#50500#45772' '#44592#44288#51032' '#52489#53441#51032#50640#44172' '#51652#47308' '#48155#51008' '#51088' '#51473' ' +
              #50896#50808#52376#48169#51204#51012' '#48156#54665' '#48155#51008' '#51088' '#46608#45716' '#50896#45236' '#51649#51217' '#51312#51228#12685#53804#50557' '#48155#51008' '#51088'(1, 2'#51333')'#9
            'B008 '#51228'3'#49440#53469#51032#47308#44553#50668#44592#44288'('#54620#51032#50896') '#46608#45716' '#51228'4'#49440#53469#51032#47308#44553#50668#44592#44288'('#52824#44284#51032#50896')'#50640#49436' '#51652#47308' '#48155#51008' '#51088'(1, 2'#51333')'#9
            
              'B009 '#49440#53469#51032#47308#44553#50668#44592#44288' '#51201#50857#51088#47196#49436' '#12300#49440#53469#51032#47308#44553#50668#44592#44288' '#51201#50857' '#45824#49345#51088' '#48143' '#51060#50857#51208#52264' '#46321#50640' '#44288#54620' '#44508#51221#12301#50640' '#46384#47480' '#44221#44284#44508#51221' '#51201 +
              #50857#51088' '#46321' '#51032#47308#44553#50668#51032#47280#49436#47484' '#51228#52636#54620' '#44163#51004#47196' '#44040#51020#54616#45716' '#51088'(1, 2'#51333')'#9)
        end
        object btnReqCert: TButton
          Left = 14
          Top = 165
          Width = 97
          Height = 23
          Hint = #51032#47308#48372#54840#54872#51088#51064#44221#50864#50640#47564' '#54644#45817#46121#45768#45796'.'
          Caption = #49849#51064#51032#47280
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnReqCertClick
        end
        object Btn_3: TButton
          Left = 118
          Top = 165
          Width = 80
          Height = 23
          Hint = #51032#47308#48372#54840#54872#51088#51064#44221#50864#50640#47564' '#54644#45817#46121#45768#45796'.'
          Caption = #49849#51064#52712#49548
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
      end
      object Panel8: TPanel
        Left = 8
        Top = 238
        Width = 209
        Height = 201
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 1
        object Label12: TLabel
          Left = 10
          Top = 45
          Width = 64
          Height = 12
          Caption = #44208#44284#47700#49464#51648':'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label16: TLabel
          Left = 10
          Top = 28
          Width = 48
          Height = 12
          Caption = #49849#51064#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Shape13: TShape
          Left = 106
          Top = 140
          Width = 84
          Height = 18
          Pen.Color = clBtnShadow
        end
        object Label17: TLabel
          Left = 10
          Top = 10
          Width = 57
          Height = 12
          Caption = #49849#51064#50668#48512':'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 7
          Top = 144
          Width = 96
          Height = 12
          Caption = #52264#44048#54980#50976#51648#48708#51092#50529
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clPurple
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Shape15: TShape
          Left = -4
          Top = 166
          Width = 209
          Height = 1
          Pen.Color = clGray
        end
        object memResult: TMemo
          Left = 12
          Top = 60
          Width = 190
          Height = 76
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 10678988
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOrder = 0
        end
        object edtHwakinNo: TEdit
          Left = 60
          Top = 24
          Width = 143
          Height = 19
          Ctl3D = False
          ImeName = 'Microsoft IME 2003'
          ParentCtl3D = False
          TabOrder = 1
        end
        object edtJan: TAdvEdit
          Left = 107
          Top = 141
          Width = 81
          Height = 20
          DefaultHandling = True
          EditAlign = eaRight
          EditType = etMoney
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          BorderStyle = bsNone
          Color = 16768477
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '0'
          Visible = True
          Version = '3.4.9.0'
        end
        object btn_5: TButton
          Left = 28
          Top = 172
          Width = 145
          Height = 23
          Caption = #49849#51064#51088#47308#51200#51109' /'#49688#45225
          TabOrder = 3
          Visible = False
        end
      end
      object JBonJunEdit: TEdit
        Left = 9
        Top = 178
        Width = 98
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 2
      end
      object JBonTypeEdit: TEdit
        Left = 113
        Top = 177
        Width = 94
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 3
      end
    end
    object pnlPrintMemo: TAdvPanel
      Tag = 3
      Left = 10
      Top = 454
      Width = 218
      Height = 119
      BevelOuter = bvNone
      Constraints.MinHeight = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = 10987348
      Caption.ColorTo = clWhite
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -13
      Caption.Font.Name = #47569#51008' '#44256#46357
      Caption.Font.Style = []
      Caption.Height = 25
      Caption.Indent = 0
      Caption.Text = '['#51064#49604']'#50836#50577#44592#44288#51076#51032#54876#50857#44277#44036
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      DesignSize = (
        218
        119)
      FullHeight = 30
      object edtMemoEtc: TRichEdit
        Left = 36
        Top = 27
        Width = 146
        Height = 43
        Color = 15924724
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'edtMemoEtc')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        Zoom = 100
      end
      object Button19: TButton
        Left = -169
        Top = 1
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
        TabOrder = 1
        TabStop = False
        Visible = False
        WordWrap = True
      end
      object memChamgo: TMemo
        Left = 0
        Top = 23
        Width = 218
        Height = 96
        Align = alClient
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memChamgo')
        MaxLength = 200
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 2
        OnChange = memChamgoChange
        OnKeyDown = memChamgoKeyDown
      end
    end
    object cbAutoHyunreceipt: TCheckBox
      Left = 8
      Top = 280
      Width = 118
      Height = 17
      Caption = #54788#44552#50689#49688#51613#51088#51652#48156#44553
      Checked = True
      State = cbChecked
      TabOrder = 47
      OnClick = cbAutoHyunreceiptClick
    end
    object pnlHyunYoung: TAdvPanel
      Left = 235
      Top = 248
      Width = 259
      Height = 199
      TabOrder = 46
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      CanMove = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #54788#44552#50689#49688#51613
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 140
      object Panel4: TPanel
        Left = 1
        Top = 63
        Width = 257
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Color = 8421631
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object rbGongje: TRadioButton
          Left = 19
          Top = 6
          Width = 74
          Height = 17
          Caption = #49548#46301#44277#51228
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = rbGongjeClick
        end
        object rbJichul: TRadioButton
          Left = 91
          Top = 5
          Width = 74
          Height = 17
          Caption = #51648#52636#51613#48729
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbGongjeClick
        end
        object rbJajin: TRadioButton
          Left = 163
          Top = 5
          Width = 113
          Height = 17
          Caption = #51088#51652#48156#44553
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TabStop = True
          OnClick = rbJajinClick
        end
      end
      object pnlHyunCert: TPanel
        Left = 225
        Top = 69
        Width = 257
        Height = 60
        Caption = 'pnlHyunCert'
        TabOrder = 1
        Visible = False
        object lblNum: TLabel
          Left = 5
          Top = 11
          Width = 72
          Height = 12
          Alignment = taRightJustify
          Caption = #49888#48516#54869#51064#48264#54840
          Color = 16770805
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object lblCertNo: TLabel
          Left = 5
          Top = 37
          Width = 48
          Height = 12
          Alignment = taRightJustify
          Caption = #49849#51064#48264#54840
          Color = 16770805
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object edtcertNo: TAdvEdit
          Left = 94
          Top = 7
          Width = 120
          Height = 21
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
          Text = 'edtcertNo'
          Visible = True
          OnChange = edtcertNoChange
          Version = '3.4.9.0'
        end
        object edtAdmitNo: TAdvEdit
          Left = 94
          Top = 34
          Width = 120
          Height = 21
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 1
          Text = 'edtAdmitNo'
          Visible = True
          Version = '3.4.9.0'
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 19
        Width = 257
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        Color = 49087
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object rbBalgeup: TRadioButton
          Left = 20
          Top = 13
          Width = 50
          Height = 17
          Caption = #48156#44553
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbBalgeupClick
        end
        object rbMibalgeup: TRadioButton
          Left = 75
          Top = 13
          Width = 64
          Height = 17
          Caption = #48120#48156#44553
          TabOrder = 1
          OnClick = rbMibalgeupClick
        end
      end
      object cbCertKind: TComboBox
        Left = 16
        Top = 111
        Width = 225
        Height = 21
        TabOrder = 3
        Text = '11'#54788#44552#50689#49688#51613#51088#51652#48156#44553' '#49849#51064
        Visible = False
        OnChange = cbCertKindChange
        Items.Strings = (
          '0'#44144#47000#47484' '#49440#53469#54616#49464#50836'.'
          '1MSR'#49888#50857#49849#51064
          '2MSR'#49888#50857#52712#49548
          '3'#54788#44552#50689#49688#51613#49849#51064
          '4'#54788#44552#50689#49688#51613#52712#49548
          '5'#44032#50689#49688#51613
          '6IC/MSR'#49888#50857#49849#51064
          '7IC/MSR'#49888#50857#52712#49548
          '8'#54788#44552'IC '#49849#51064
          '9'#54788#44552'IC '#52712#49548
          '10'#49688#54364#51312#54924
          '11'#54788#44552#50689#49688#51613#51088#51652#48156#44553' '#49849#51064
          '12'#54788#44552#50689#49688#51613#51088#51652#48156#44553' '#52712#49548
          '15'#54644#50808#51008#47144#52852#46300' MSR '#49849#51064
          '16'#54644#50808#51008#47144#52852#46300' MSR '#52712#49548
          '17'#54644#50808#51008#47144#52852#46300' IC '#49849#51064
          '18'#54644#50808#51008#47144#52852#46300' IC '#52712#49548
          '19'#53685#54633#54252#51064#53944' '#51201#47549' '#49849#51064
          '20'#53685#54633#54252#51064#53944' '#51201#47549' '#52712#49548
          '21'#53685#54633#54252#51064#53944' '#49324#50857' '#49849#51064
          '22'#53685#54633#54252#51064#53944' '#49324#50857' '#52712#49548)
      end
      object Button26: TButton
        Left = 16
        Top = 157
        Width = 225
        Height = 33
        Caption = #54788#44552' '#50689#49688#51613' '#48156#44553
        TabOrder = 4
        OnClick = Button26Click
      end
    end
    object btnCardCert: TButton
      Left = 524
      Top = 481
      Width = 37
      Height = 25
      Caption = #49849#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 48
      Visible = False
      OnClick = btnCardCertClick
    end
    object Button2: TButton
      Tag = 5
      Left = 526
      Top = 512
      Width = 37
      Height = 25
      Hint = #49444#51221' - '#44592#48376#51221#48372#49444#51221' - '#13#10#49688#45225#49444#51221' - '#48516#45225#51077#47141#49884' '#13#10#51077#47141#52285' '#49324#50857#54616#49884#47732#13#10#44552#50529#51012' '#51076#51032#47196' '#13#10#46321#47197#54624' '#49688' '#51080#49845#45768#45796'.'
      Caption = #48516#45225
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 49
      Visible = False
      OnClick = Button2Click
    end
    object btnHyunCert: TButton
      Left = 526
      Top = 538
      Width = 37
      Height = 25
      Caption = #49849#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 50
      Visible = False
      OnClick = btnHyunCertClick
    end
    object lblTong2: TButton
      Left = 526
      Top = 568
      Width = 38
      Height = 21
      Cursor = crHandPoint
      Cancel = True
      Caption = #53685#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 51
      Visible = False
      OnClick = lblTong2Click
    end
    object btnMf: TButton
      Left = 525
      Top = 595
      Width = 36
      Height = 25
      Caption = #50900#48708
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 52
      Visible = False
    end
    object Memo1: TMemo
      Left = 10
      Top = 597
      Width = 183
      Height = 221
      ImeName = 'Microsoft IME 2003'
      Lines.Strings = (
        '')
      TabOrder = 53
      Visible = False
    end
  end
  object pnlCost: TAdvPanel
    Left = 1391
    Top = 4
    Width = 615
    Height = 386
    TabOrder = 6
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object Splitter1: TSplitter
      Left = 1
      Top = 193
      Width = 613
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 113
      ExplicitWidth = 135
    end
    object grdcost2: TAdvStringGrid
      Left = 1
      Top = 19
      Width = 613
      Height = 174
      Cursor = crDefault
      Align = alTop
      DrawingStyle = gdsClassic
      RowCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
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
      ColumnHeaders.Strings = (
        #54637#47785
        #44553#50668#54665#50948#47308
        #44553#50668#51116#47308#45824
        #48708#44553#50668#54665#50948#47308
        #48708#44553#50668#51116#47308#45824
        #44228)
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
      ScrollProportional = True
      ScrollSynch = True
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
        96
        107
        109
        117)
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
        22
        22
        22)
    end
    object grdJx2: TAdvStringGrid
      Left = 1
      Top = 196
      Width = 613
      Height = 189
      Cursor = crDefault
      Align = alClient
      ColCount = 23
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      HoverRowCells = [hcNormal, hcSelected]
      OnClickCell = grdJx2ClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        #44396#48516
        #47749#52845
        #45800#44032
        #49688#47049
        #51068#49688
        #44552#50529
        #49324#50857#45800#50948
        #44553#50668
        'Modality'
        'user_key'
        'su_gu1'
        'su_gu3'
        'su_soa'
        'su_yagan'
        'iOrder'
        'line'
        #53804#50557#51068#49688
        #54869#51064#53076#46300
        'jin_key'
        'su_key'
        'su_Kor_Name'
        '1/2'
        'Jin_day')
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\gridset_jx_sunap.ini'
      ColumnSize.Section = 'grdJx2'
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
      FixedRowHeight = 22
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -13
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
      VAlignment = vtaCenter
      Version = '8.4.4.1'
      ExplicitTop = 197
      ColWidths = (
        32
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
        64
        64
        64
        89
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
      object clbJinryoHx: TCheckListBox
        Left = 32
        Top = 37
        Width = 165
        Height = 100
        ItemHeight = 17
        Items.Strings = (
          '')
        TabOrder = 4
        Visible = False
      end
    end
    object Button20: TButton
      Left = 10
      Top = -4
      Width = 62
      Height = 25
      Caption = 'recalc'
      TabOrder = 2
      OnClick = Button20Click
    end
  end
  object spSkinPanel1: TPanel
    Left = 1738
    Top = 426
    Width = 602
    Height = 911
    TabOrder = 0
    Visible = False
    object Shape14: TShape
      Left = 24
      Top = 51
      Width = 215
      Height = 1
      Brush.Color = clSilver
      Pen.Color = clGray
    end
    object Shape61: TShape
      Left = 63
      Top = 365
      Width = 215
      Height = 1
      Brush.Color = clSilver
      Pen.Color = clGray
    end
    object Image2: TImage
      Left = 94
      Top = 103
      Width = 101
      Height = 24
      Visible = False
    end
    object Label3: TLabel
      Left = 25
      Top = 124
      Width = 41
      Height = 13
      Caption = 'grdcost2'
    end
    object lblMisuGeum: TLabel
      Left = 93
      Top = 364
      Width = 48
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48372#54744#48120#49688
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object wLabel6: TLabel
      Left = 36
      Top = 61
      Width = 52
      Height = 12
      Caption = #52509' '#48120#49688#50529
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wLabel15: TLabel
      Left = 251
      Top = 381
      Width = 64
      Height = 12
      Hint = #51652#47308#49892#50640#49436' '#48708#48372#54744#53076#46300#47196' '#51077#47141#54620' '#48708#48372#54744#44552#50529#51032' '#54633#51077#45768#45796'.'
      Caption = #51652#47308' '#48708#48372#54744
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wNumLabel1: TLabel
      Left = 102
      Top = 255
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'wNumLabel1'
      Color = 14868956
      ParentColor = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wNumys: TLabel
      Left = 78
      Top = 156
      Width = 91
      Height = 24
      Alignment = taRightJustify
      Caption = 'wNumys'
      Color = 16117483
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wNumChong: TLabel
      Left = 108
      Top = 392
      Width = 136
      Height = 24
      Alignment = taRightJustify
      Caption = 'wNumChong'
      Color = 16117483
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object edtBohumChongMisu: TLabel
      Left = 14
      Top = 362
      Width = 190
      Height = 25
      Alignment = taRightJustify
      Caption = 'edtBohumChongMisu'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object EllipsLabel1: TLabel
      Left = 73
      Top = 201
      Width = 85
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48376#51064#48512#45812#44552#51008
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object edtSunapDay: TMaskEdit
      Left = 56
      Top = 399
      Width = 110
      Height = 19
      BevelInner = bvNone
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '!9999/99/00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '    -  -  '
      Visible = False
      OnKeyPress = edtSunapDayKeyPress
    end
    object edtMisu: TAdvEdit
      Left = 115
      Top = 61
      Width = 124
      Height = 19
      Cursor = crIBeam
      TabStop = False
      DefaultHandling = True
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = 12245231
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = ''
      Visible = False
      Version = '3.4.9.0'
    end
    object cbAuto: TCheckBox
      Left = 33
      Top = 259
      Width = 15
      Height = 17
      TabOrder = 4
      Visible = False
    end
    object cmbCard: TComboBox
      Left = 192
      Top = 286
      Width = 74
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Color = 16772846
      Ctl3D = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Visible = False
      Items.Strings = (
        #48708#50472
        #44397#48124
        #49888#54620
        #54788#45824
        #50808#54872
        #49340#49457
        #50648#51648
        #47215#45936
        #50472#54000
        #51109#51008
        #45796#51060#45320#49828
        #50500#47701#49828
        'JCB')
    end
    object edtMonth: TEdit
      Left = 235
      Top = 426
      Width = 76
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
      Text = 'edtMonth'
      Visible = False
    end
    object wNumEdit7: TAdvEdit
      Left = 107
      Top = 27
      Width = 124
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = 10354687
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -20
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = ''
      Visible = False
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object edtboninJIn: TAdvEdit
      Left = 142
      Top = 319
      Width = 105
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = 10354687
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 8
      Text = ''
      Visible = False
      OnKeyPress = edtBochulKeyPress
      Version = '3.4.9.0'
    end
    object Panel1: TPanel
      Left = 321
      Top = 20
      Width = 241
      Height = 426
      Caption = 'Panel1'
      TabOrder = 9
      Visible = False
      object Shape47: TShape
        Left = 8
        Top = 11
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
      end
      object Shape18: TShape
        Left = 8
        Top = 37
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
      end
      object Shape19: TShape
        Left = 8
        Top = 62
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
      end
      object wLabel81: TLabel
        Left = 9
        Top = 16
        Width = 52
        Height = 12
        Caption = #52824#47308#44228#54925
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object wLabel2: TLabel
        Left = 9
        Top = 40
        Width = 72
        Height = 12
        Caption = #52509#44228#54925#52824#47308#48708
        Color = 16770805
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtChong: TAdvEdit
        Left = 89
        Top = 40
        Width = 133
        Height = 19
        Cursor = crIBeam
        DefaultHandling = True
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BorderStyle = bsNone
        Color = 10678988
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = ''
        Visible = True
        Version = '3.4.9.0'
      end
      object lblTx: TButton
        Left = 7
        Top = 266
        Width = 109
        Height = 19
        Hint = #51652#47308#45236#50669#51012' '#48372#50668#51469#45768#45796'.'
        Caption = #50724#45720#52320#54021#45236#50669
        TabOrder = 1
        OnClick = lblTxClick
      end
      object Button3: TButton
        Left = 148
        Top = 14
        Width = 73
        Height = 21
        Cursor = crHandPoint
        Caption = #51088#49464#55176
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 70
        Width = 219
        Height = 97
        Caption = 'Tx '#52280#44256#49324#54637
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        object memChamgo2: TMemo
          Left = 14
          Top = 21
          Width = 200
          Height = 68
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          Lines.Strings = (
            'memChamgo2')
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 168
        Width = 219
        Height = 93
        Caption = #47532#53084#46321#47197
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        object SpeedButton1: TSpeedButton
          Left = 90
          Top = 20
          Width = 20
          Height = 20
          Hint = '(1'#44060#50900')30'#51068' '#54980
          Caption = '1M'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 113
          Top = 20
          Width = 20
          Height = 20
          Hint = '(3'#44060#50900')90'#51068' '#54980
          Caption = '3M'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 137
          Top = 20
          Width = 20
          Height = 20
          Hint = '6'#44060#50900'(180'#51068' '#54980')'
          Caption = '6M'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object cbRecall: TMemo
          Left = 8
          Top = 48
          Width = 201
          Height = 32
          Hint = #47532#53084' '#45236#50857' '#51077#47141
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          Lines.Strings = (
            'cbRecall')
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object Button1: TButton
          Left = 159
          Top = 20
          Width = 55
          Height = 21
          Cursor = crHandPoint
          Hint = #47532#53084#45236#50669#51200#51109
          Caption = #47532#53084#51200#51109
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Button1Click
        end
        object dtRecall: TDateTimePicker
          Left = 9
          Top = 22
          Width = 79
          Height = 21
          Hint = #47532#53084' '#51068#51088' '#49440#53469
          Date = 43297.000000000000000000
          Time = 0.417478634270082700
          ImeName = 'Microsoft IME 2003'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
      object PageControl1: TPageControl
        Left = 8
        Top = 288
        Width = 217
        Height = 105
        ActivePage = TabSheet1
        TabOrder = 5
        object TabSheet1: TTabSheet
          Caption = #50696#50557#45236#50669
          object wLabel12: TLabel
            Left = 1
            Top = 2
            Width = 52
            Height = 12
            Caption = #50696#50557#51068#51088
            Color = 16770805
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object wLabel13: TLabel
            Left = 1
            Top = 26
            Width = 52
            Height = 12
            Caption = #50696#50557#49884#44036
            Color = 16770805
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object wLabel14: TLabel
            Left = 1
            Top = 50
            Width = 52
            Height = 12
            Caption = #50696#50557#45236#50669
            Color = 16770805
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object edtRecallDay: TMaskEdit
            Left = 84
            Top = 2
            Width = 110
            Height = 19
            BevelInner = bvNone
            BorderStyle = bsNone
            Ctl3D = False
            EditMask = '!9999/99/00;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = #46027#50880#52404
            Font.Style = [fsBold]
            ImeName = 'Microsoft IME 2003'
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '    -  -  '
            OnKeyPress = edtSunapDayKeyPress
          end
          object edtRecallTime: TEdit
            Left = 84
            Top = 26
            Width = 111
            Height = 19
            Ctl3D = False
            ImeName = 'Microsoft IME 2003'
            ParentCtl3D = False
            TabOrder = 1
          end
          object edtRecall: TMemo
            Left = 84
            Top = 48
            Width = 113
            Height = 24
            ImeName = 'Microsoft IME 2003'
            Lines.Strings = (
              '')
            TabOrder = 2
          end
        end
        object TabSheet2: TTabSheet
          Caption = #49688#45225#44228#54925#47700#47784
          ImageIndex = 1
          object memJin: TMemo
            Left = 0
            Top = 0
            Width = 209
            Height = 77
            Align = alClient
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 10678988
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ImeName = 'Microsoft IME 2003'
            Lines.Strings = (
              'memJin'
              '1'
              '2'
              '3'
              '4'
              '5')
            ParentCtl3D = False
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object edtTeam: TEdit
        Left = 192
        Top = 264
        Width = 33
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 6
        Visible = False
      end
    end
    object edtTongDay: TMaskEdit
      Left = 175
      Top = 255
      Width = 90
      Height = 24
      Ctl3D = True
      EditMask = '!9999/99/00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      Text = '    -  -  '
      Visible = False
      OnClick = edtTongDayClick
      OnKeyPress = edtSunapDayKeyPress
    end
    object Panel2: TPanel
      Left = 4
      Top = 467
      Width = 251
      Height = 141
      Caption = 'Panel2'
      TabOrder = 12
      Visible = False
      object lblin: TLabel
        Left = 55
        Top = 61
        Width = 168
        Height = 12
        Caption = #44228#54925' '#48708#50857#50640' '#48372#54744#51652#47308#48708#50857' '#54252#54632
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object lblHyunreceipt: TButton
        Left = 22
        Top = 94
        Width = 72
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = #54788#44552#50689#49688#51613
        TabOrder = 0
        Visible = False
      end
      object cbReceipt: TRadioButton
        Left = 18
        Top = 37
        Width = 93
        Height = 18
        Caption = #50689#49688#51613' '#48156#54665
        TabOrder = 1
        Visible = False
      end
      object cbPreview: TRadioButton
        Left = 115
        Top = 37
        Width = 117
        Height = 18
        Caption = #50689#49688#51613' '#48120#47532' '#48372#44592
        TabOrder = 2
        Visible = False
      end
      object spSkinCheckRadioBox1: TRadioButton
        Left = 18
        Top = 17
        Width = 113
        Height = 18
        Caption = #54788#44552#50689#49688#51613' '#48156#54665
        TabOrder = 3
        Visible = False
      end
    end
    object cbkind: TAdvComboBox
      Left = 178
      Top = 194
      Width = 126
      Height = 21
      Color = clWindow
      Version = '1.9.2.1'
      Visible = False
      ButtonWidth = 17
      EmptyTextStyle = []
      DropWidth = 0
      Enabled = True
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      Items.Strings = (
        #47588#52824#47308#49884#47560#45796' '#49688#45225
        #50557#51221#51652#47308#48708#50640' '#54252#54632)
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      TabOrder = 10
      Text = #47588#52824#47308#49884#47560#45796' '#49688#45225
      OnChange = cbkindChange
    end
    object cbHyungeum: TRadioButton
      Left = 18
      Top = 225
      Width = 90
      Height = 18
      Caption = #54788#44552#50689#49688#51613
      TabOrder = 2
    end
    object cbMisuSunap: TRadioButton
      Left = 26
      Top = 289
      Width = 76
      Height = 18
      Caption = #48120#49688#49688#45225
      TabOrder = 3
      Visible = False
    end
    object Panel6: TPanel
      Left = 4
      Top = 614
      Width = 231
      Height = 226
      Caption = 'Panel6'
      TabOrder = 13
      Visible = False
      object Shape2: TShape
        Left = 3
        Top = 2
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
        Visible = False
      end
      object Shape3: TShape
        Left = 3
        Top = 27
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
        Visible = False
      end
      object Shape4: TShape
        Left = 3
        Top = 104
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
        Visible = False
      end
      object Shape6: TShape
        Left = 3
        Top = 129
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
        Visible = False
      end
      object Shape7: TShape
        Left = 3
        Top = 205
        Width = 215
        Height = 1
        Brush.Color = clSilver
        Pen.Color = clGray
        Visible = False
      end
      object lblYungsu: TLabel
        Left = 5
        Top = 6
        Width = 36
        Height = 13
        Cursor = crHandPoint
        AutoSize = False
        Caption = #50689#49688#51064
        Visible = False
        OnDblClick = lblYungsuDblClick
      end
      object lblSujin: TLabel
        Left = 5
        Top = 108
        Width = 36
        Height = 13
        Cursor = crHandPoint
        AutoSize = False
        Caption = #49688#51652#51088
        Visible = False
        OnClick = lblYungsuDblClick
      end
      object edtName: TEdit
        Left = 85
        Top = 108
        Width = 133
        Height = 19
        BevelInner = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'edtName'
        Visible = False
      end
      object spSkinPanel2: TPanel
        Left = 5
        Top = 31
        Width = 213
        Height = 69
        TabOrder = 1
        Visible = False
        object pic1: TImage
          Left = 1
          Top = 1
          Width = 211
          Height = 67
          Align = alClient
          Center = True
          Stretch = True
        end
      end
      object spSkinPanel3: TPanel
        Left = 4
        Top = 133
        Width = 213
        Height = 69
        TabOrder = 2
        Visible = False
        object pic2: TImage
          Left = 1
          Top = 1
          Width = 211
          Height = 67
          Align = alClient
          Center = True
          Stretch = True
        end
      end
    end
  end
  object AdvPanel8: TAdvPanel
    Left = 81
    Top = 40
    Width = 318
    Height = 323
    TabOrder = 10
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object wLabel4: TLabel
      Left = 98
      Top = 246
      Width = 60
      Height = 12
      Alignment = taRightJustify
      Caption = #51652#47308#48708#52509#50529
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wLabel1: TLabel
      Left = 108
      Top = 208
      Width = 12
      Height = 12
      Caption = #54016
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object btnModMagam: TButton
      Left = 194
      Top = 72
      Width = 75
      Height = 25
      Caption = #47560#44048#49688#51221
      TabOrder = 0
      Visible = False
      OnClick = btnModMagamClick
    end
    object edtBunnap: TAdvSpinEdit
      Left = 228
      Top = 122
      Width = 36
      Height = 21
      Hint = '*'#48516#45225#48169#48277#13#10#48516#45225#51012'  '#52404#53356#54616#44256' '#13#10#48516#45225' '#54943#49688#47484' '#49440#53469#54616#49888#54980' '#13#10#49688#45225#51012' '#51200#51109#54616#47732','#13#10#48516#45225' '#54943#49688#44032' '#54633#49328#46104#50612' '#51200#51109#46121#45768#45796'.'
      Value = 1
      FloatValue = 1.000000000000000000
      TimeValue = 0.041666666666666660
      HexDigits = 0
      HexValue = 0
      IncrementFloat = 0.100000000000000000
      IncrementFloatPage = 1.000000000000000000
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      Version = '1.8.4.0'
    end
    object cbBunNap: TCheckBox
      Left = 176
      Top = 122
      Width = 56
      Height = 17
      Hint = '*'#48516#45225#48169#48277#13#10#48516#45225#51012'  '#52404#53356#54616#44256' '#13#10#48516#45225' '#54943#49688#47484' '#49440#53469#54616#49888#54980' '#13#10#49688#45225#51012' '#51200#51109#54616#47732','#13#10#48516#45225' '#54943#49688#44032' '#54633#49328#46104#50612' '#51200#51109#46121#45768#45796'.'
      Caption = #48516#45225
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
    end
    object Button15: TButton
      Left = 172
      Top = 286
      Width = 75
      Height = 25
      Caption = 'Button15'
      TabOrder = 3
      Visible = False
      OnClick = Button15Click
    end
    object cbNoSunapDaegi: TCheckBox
      Left = 43
      Top = 122
      Width = 131
      Height = 17
      Caption = #49688#45225#49884' '#45824#44592#48320#46041#50630#51020
      TabOrder = 4
      Visible = False
      OnClick = cbDuplaicateClick
    end
    object cbMod: TCheckBox
      Left = 176
      Top = 99
      Width = 93
      Height = 17
      Caption = #49688#45225#45236#50857#49688#51221
      TabOrder = 5
      Visible = False
    end
    object cbSunapOnly: TCheckBox
      Left = 44
      Top = 77
      Width = 142
      Height = 17
      Caption = #51652#47308#50630#51060' '#49688#45225#47564#52376#47532
      TabOrder = 6
      Visible = False
    end
    object cbDuplaicate: TCheckBox
      Left = 43
      Top = 98
      Width = 126
      Height = 17
      Caption = #45817#51068'2'#54924' '#51060#49345' '#49688#45225
      TabOrder = 7
      Visible = False
      OnClick = cbDuplaicateClick
    end
    object cbTeam: TComboBox
      Left = 68
      Top = 167
      Width = 79
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
      Text = 'cbTeam'
      Visible = False
      OnChange = cbTeamChange
      OnCloseUp = cbTeamCloseUp
    end
    object btnSignList: TButton
      Left = 214
      Top = 46
      Width = 55
      Height = 25
      Caption = #49436#47749#45236#50669
      TabOrder = 9
      Visible = False
      OnClick = btnSignListClick
    end
    object btnSign: TButton
      Left = 157
      Top = 46
      Width = 55
      Height = 25
      Caption = #51204#51088#49436#47749
      PopupMenu = PopupMenu1
      TabOrder = 10
      Visible = False
      OnClick = btnSignClick
    end
    object cbin: TCheckBox
      Left = 19
      Top = 66
      Width = 203
      Height = 17
      Caption = #48376#51064#48512#45812#44552#51060' '#44228#54925#44552#50529#50640' '#54252#54632#46120
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = False
    end
    object memChamgoH1: TMemo
      Left = 173
      Top = 197
      Width = 197
      Height = 48
      BevelInner = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'memChamgo')
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 12
      Visible = False
      OnChange = memChamgoChange
    end
    object btnDel: TButton
      Left = 100
      Top = 46
      Width = 55
      Height = 25
      Caption = #49325#51228
      TabOrder = 13
      Visible = False
      OnClick = btnDelClick
    end
    object edtJinryoPid: TEdit
      Left = 164
      Top = 164
      Width = 90
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 14
      Visible = False
    end
    object btnSunapNeyuk: TButton
      Left = 173
      Top = 251
      Width = 55
      Height = 25
      Cursor = crHandPoint
      Caption = #49688#45225' '#45236#50669
      TabOrder = 15
      Visible = False
      OnClick = btnSunapNeyukClick
    end
    object Panel10: TPanel
      Left = 275
      Top = 38
      Width = 273
      Height = 397
      Caption = 'Panel10'
      TabOrder = 16
      Visible = False
      object edtChong12: TLabel
        Left = 29
        Top = 97
        Width = 108
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtChong12'
        Color = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtChong21: TLabel
        Left = 29
        Top = 120
        Width = 108
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtChong21'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtChung1: TLabel
        Left = 29
        Top = 163
        Width = 97
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtChung1'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtSunapChongEk1: TLabel
        Left = 27
        Top = 268
        Width = 178
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtSunapChongEk1'
        Color = 10485760
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtilbanChongMisu1: TLabel
        Left = 29
        Top = 53
        Width = 180
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtilbanChongMisu1'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtBohum1: TLabel
        Left = 29
        Top = 187
        Width = 100
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtBohum1'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object edtSunap1: TLabel
        Left = 29
        Top = 22
        Width = 96
        Height = 25
        Alignment = taRightJustify
        Caption = 'edtSunap1'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object bocheulkyo: TAdvEdit
        Left = 29
        Top = 218
        Width = 124
        Height = 19
        Cursor = crIBeam
        DefaultHandling = True
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BorderStyle = bsNone
        Color = 10354687
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -20
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 0
        Text = ''
        Transparent = True
        Visible = True
        OnKeyPress = edtBochulKeyPress
        Version = '3.4.9.0'
      end
      object kitakyo: TAdvEdit
        Left = 29
        Top = 243
        Width = 124
        Height = 19
        Cursor = crIBeam
        DefaultHandling = True
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BorderStyle = bsNone
        Color = 10354687
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -20
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 1
        Text = ''
        Transparent = True
        Visible = True
        OnKeyPress = edtBochulKeyPress
        Version = '3.4.9.0'
      end
    end
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 294
    Top = 169
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'sunaponly_f'
    Version = '1.4.1.4'
    Left = 495
    Top = 261
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 16765615
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 16575452
    Settings.Caption.ColorTo = 16571329
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clBlack
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 16645114
    Settings.ColorTo = 16643051
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = 7485192
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderColor = 13542013
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = 7485192
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 16575452
    Settings.StatusBar.ColorTo = 16571329
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psWindows7
    Left = 502
    Top = 105
  end
  object PopupMenu1: TPopupMenu
    Left = 498
    Top = 60
    object N1: TMenuItem
      Caption = #51221#47532
      OnClick = N1Click
    end
  end
  object frxReport: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #44592#48376#44050
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38862.577281898200000000
    ReportOptions.LastChange = 43718.457382557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 357
    Top = 160
    Datasets = <>
    Variables = <
      item
        Name = ' '#54637#47785
        Value = Null
      end
      item
        Name = 'ChartNo'
        Value = Null
      end
      item
        Name = 'PtName'
        Value = Null
      end
      item
        Name = 'JinDay'
        Value = Null
      end
      item
        Name = 'YaganGongHyu'
        Value = Null
      end
      item
        Name = 'DRGNo'
        Value = Null
      end
      item
        Name = 'ByungSil'
        Value = Null
      end
      item
        Name = 'Gubun'
        Value = Null
      end
      item
        Name = 'YoungsuNo'
        Value = Null
      end
      item
        Name = 'GJinchal'
        Value = Null
      end
      item
        Name = 'GIBwon'
        Value = Null
      end
      item
        Name = 'GSiksa'
        Value = Null
      end
      item
        Name = 'GJojae'
        Value = Null
      end
      item
        Name = 'GJusa'
        Value = Null
      end
      item
        Name = 'GMarche'
        Value = Null
      end
      item
        Name = 'GSusul'
        Value = Null
      end
      item
        Name = 'GGumsa'
        Value = Null
      end
      item
        Name = 'GXRay'
        Value = Null
      end
      item
        Name = 'GChiryoJaeryo'
        Value = Null
      end
      item
        Name = 'GTotBonin'
        Value = Null
      end
      item
        Name = 'GEtc'
        Value = Null
      end
      item
        Name = 'GMulri'
        Value = Null
      end
      item
        Name = 'GCT'
        Value = Null
      end
      item
        Name = 'GMRI'
        Value = Null
      end
      item
        Name = 'GChoum'
        Value = Null
      end
      item
        Name = 'GBoOrtho'
        Value = Null
      end
      item
        Name = 'GSuhyul'
        Value = Null
      end
      item
        Name = 'GSelectJinryo'
        Value = Null
      end
      item
        Name = 'GSum'
        Value = Null
      end
      item
        Name = 'GBonin'
        Value = Null
      end
      item
        Name = 'GBohum'
        Value = Null
      end
      item
        Name = 'GUserDef2'
        Value = Null
      end
      item
        Name = 'GUserDef3'
        Value = Null
      end
      item
        Name = 'GUserDef4'
        Value = Null
      end
      item
        Name = 'JJinchal'
        Value = Null
      end
      item
        Name = 'JIBwon'
        Value = Null
      end
      item
        Name = 'JSiksa'
        Value = Null
      end
      item
        Name = 'JJojae'
        Value = Null
      end
      item
        Name = 'JJusa'
        Value = Null
      end
      item
        Name = 'JMarche'
        Value = Null
      end
      item
        Name = 'JSusul'
        Value = Null
      end
      item
        Name = 'JGumsa'
        Value = Null
      end
      item
        Name = 'JXRay'
        Value = Null
      end
      item
        Name = 'JChiryoJaeryo'
        Value = Null
      end
      item
        Name = 'JTotBonin'
        Value = Null
      end
      item
        Name = 'JEtc'
        Value = Null
      end
      item
        Name = 'JMulri'
        Value = Null
      end
      item
        Name = 'JCT'
        Value = Null
      end
      item
        Name = 'JMRI'
        Value = Null
      end
      item
        Name = 'JChoum'
        Value = Null
      end
      item
        Name = 'JBoOrtho'
        Value = Null
      end
      item
        Name = 'JSuhyul'
        Value = Null
      end
      item
        Name = 'JSelectJinryo'
        Value = Null
      end
      item
        Name = 'JSum'
        Value = Null
      end
      item
        Name = 'JBonin'
        Value = Null
      end
      item
        Name = 'JBohum'
        Value = Null
      end
      item
        Name = 'JUserDef2'
        Value = Null
      end
      item
        Name = 'JUserDef3'
        Value = Null
      end
      item
        Name = 'JUserDef4'
        Value = Null
      end
      item
        Name = 'YJinchal'
        Value = Null
      end
      item
        Name = 'YIBwon'
        Value = Null
      end
      item
        Name = 'YSiksa'
        Value = Null
      end
      item
        Name = 'YJojae'
        Value = Null
      end
      item
        Name = 'YJusa'
        Value = Null
      end
      item
        Name = 'YMarche'
        Value = Null
      end
      item
        Name = 'YSusul'
        Value = Null
      end
      item
        Name = 'YGumsa'
        Value = Null
      end
      item
        Name = 'YXRay'
        Value = Null
      end
      item
        Name = 'YChiryoJaeryo'
        Value = Null
      end
      item
        Name = 'YTotBonin'
        Value = Null
      end
      item
        Name = 'YEtc'
        Value = Null
      end
      item
        Name = 'YMulri'
        Value = Null
      end
      item
        Name = 'YCT'
        Value = Null
      end
      item
        Name = 'YMRI'
        Value = Null
      end
      item
        Name = 'YChoum'
        Value = Null
      end
      item
        Name = 'YBoOrtho'
        Value = Null
      end
      item
        Name = 'YSuhyul'
        Value = Null
      end
      item
        Name = 'YSelectJinryo'
        Value = Null
      end
      item
        Name = 'YSum'
        Value = Null
      end
      item
        Name = 'YBonin'
        Value = Null
      end
      item
        Name = 'YBohum'
        Value = Null
      end
      item
        Name = 'BJinchal'
        Value = Null
      end
      item
        Name = 'BIBwon'
        Value = Null
      end
      item
        Name = 'BSiksa'
        Value = Null
      end
      item
        Name = 'BJojae'
        Value = Null
      end
      item
        Name = 'BJusa'
        Value = Null
      end
      item
        Name = 'BMarche'
        Value = Null
      end
      item
        Name = 'BSusul'
        Value = Null
      end
      item
        Name = 'BGumsa'
        Value = Null
      end
      item
        Name = 'BXRay'
        Value = Null
      end
      item
        Name = 'BChiryoJaeryo'
        Value = Null
      end
      item
        Name = 'BTotBonin'
        Value = Null
      end
      item
        Name = 'BEtc'
        Value = Null
      end
      item
        Name = 'BMulri'
        Value = Null
      end
      item
        Name = 'BCT'
        Value = Null
      end
      item
        Name = 'BMRI'
        Value = Null
      end
      item
        Name = 'BChoum'
        Value = Null
      end
      item
        Name = 'BBoOrtho'
        Value = Null
      end
      item
        Name = 'BSuhyul'
        Value = Null
      end
      item
        Name = 'BSelectJinryo'
        Value = Null
      end
      item
        Name = 'BSum'
        Value = Null
      end
      item
        Name = 'TotJinryo'
        Value = Null
      end
      item
        Name = 'TotBonin'
        Value = Null
      end
      item
        Name = 'PrevSunab'
        Value = Null
      end
      item
        Name = 'SunabCard'
        Value = Null
      end
      item
        Name = 'SunabCashYoungsu'
        Value = Null
      end
      item
        Name = 'SunabCash'
        Value = Null
      end
      item
        Name = 'SunabSum'
        Value = Null
      end
      item
        Name = 'CashYoungSu'
        Value = Null
      end
      item
        Name = 'RegNo'
        Value = Null
      end
      item
        Name = 'SungInNo'
        Value = Null
      end
      item
        Name = 'YoIm'
        Value = Null
      end
      item
        Name = 'BussNo'
        Value = Null
      end
      item
        Name = 'HospitalName'
        Value = Null
      end
      item
        Name = 'Sojae'
        Value = Null
      end
      item
        Name = 'Doctor'
        Value = Null
      end
      item
        Name = 'OutDate'
        Value = Null
      end
      item
        Name = 'UserDefName1'
        Value = Null
      end
      item
        Name = 'UserDefName2'
        Value = Null
      end
      item
        Name = 'UserDefName3'
        Value = Null
      end
      item
        Name = 'UserDefName4'
        Value = Null
      end
      item
        Name = 'YUserDef2'
        Value = Null
      end
      item
        Name = 'YUserDef3'
        Value = Null
      end
      item
        Name = 'YUserDef4'
        Value = Null
      end
      item
        Name = 'BUserDef2'
        Value = Null
      end
      item
        Name = 'BUserDef3'
        Value = Null
      end
      item
        Name = 'BUserDef4'
        Value = Null
      end
      item
        Name = 'were'
        Value = Null
      end
      item
        Name = 'ibwonjung'
        Value = Null
      end
      item
        Name = 'ibwontwe'
        Value = Null
      end
      item
        Name = 'ibwon'
        Value = Null
      end
      item
        Name = 'YJusaJae'
        Value = Null
      end
      item
        Name = 'GJusaJae'
        Value = Null
      end
      item
        Name = 'JJusaJae'
        Value = Null
      end
      item
        Name = 'BJusaJae'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #48148#53461
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Shape1: TfrxShapeView
        AllowVectorExport = True
        Top = 90.708720000000000000
        Width = 718.110236220000000000
        Height = 944.882500000000000000
        Frame.Typ = []
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 80.488250000000000000
        Top = 59.590600000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[were]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 156.078850000000000000
        Top = 59.590600000000000000
        Width = 71.811070000000000000
        Height = 16.897650000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwon]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 61.590600000000000000
        Top = 59.590600000000000000
        Width = 11.338590000000000000
        Height = 18.897650000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '(')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 235.448980000000000000
        Top = 59.590600000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwontwe]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 314.819110000000000000
        Top = 59.590600000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwonjung]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 401.748300000000000000
        Top = 59.590600000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          ') '#51652#47308#48708' '#44228#49328#49436', '#50689#49688#51613)
        ParentFont = False
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Top = 110.504020000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = 116.724490000000000000
        Top = 90.708695590000000000
        Height = 642.078818270000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 4.220470000000000000
        Top = 96.275636930000000000
        Width = 107.811070000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#46321#47197#48264#54840)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 122.960730000000000000
        Top = 96.275636930000000000
        Width = 215.637910000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#49457#47749)
        ParentFont = False
      end
      object Line4: TfrxLineView
        AllowVectorExport = True
        Left = 212.551330000000000000
        Top = 203.338616850000000000
        Height = 515.464542520000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line5: TfrxLineView
        AllowVectorExport = True
        Left = 344.614410000000000000
        Top = 90.708695590000000000
        Height = 71.433070870000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = 348.409710000000000000
        Top = 93.496106930000000000
        Width = 189.385900000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#44592#44036)
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 546.724800000000000000
        Top = 93.496106930000000000
        Width = 167.385900000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50556#44036'('#44277#55092#51068') '#51652#47308)
        ParentFont = False
      end
      object Line6: TfrxLineView
        AllowVectorExport = True
        Top = 127.622140000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line7: TfrxLineView
        AllowVectorExport = True
        Top = 143.496109370000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo12: TfrxMemoView
        AllowVectorExport = True
        Left = 4.220470000000000000
        Top = 129.401670000000000000
        Width = 107.811070000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#44284#47785)
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 120.504020000000000000
        Top = 129.401670000000000000
        Width = 219.212740000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51656#48337#44400'(DRG)'#48264#54840)
        ParentFont = False
      end
      object Line8: TfrxLineView
        AllowVectorExport = True
        Top = 162.519719210000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line9: TfrxLineView
        AllowVectorExport = True
        Left = 443.323130000000000000
        Top = 127.622093620000000000
        Height = 34.779530000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 347.953000000000000000
        Top = 129.401670000000000000
        Width = 92.472480000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48337#49892)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 446.661720000000000000
        Top = 129.401670000000000000
        Width = 93.149660000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#44396#48516)
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        AllowVectorExport = True
        Left = 548.047620000000000000
        Top = 129.401670000000000000
        Width = 166.740260000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50689#49688#51613' '#48264#54840'('#45380#50900'-'#51068#47144#48264#54840')')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        AllowVectorExport = True
        Left = 4.220470000000000000
        Top = 145.763825910000000000
        Width = 108.015770000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#45800#48169#49324#49440#44284)
        ParentFont = False
      end
      object Line10: TfrxLineView
        AllowVectorExport = True
        Top = 227.669450000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo18: TfrxMemoView
        AllowVectorExport = True
        Left = 8.000000000000000000
        Top = 187.984300790000000000
        Width = 104.236240000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54637'    '#47785)
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        AllowVectorExport = True
        Left = 214.771800000000000000
        Top = 165.307120790000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50836#50577#44553#50668'('#9312'+'#9313')')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        AllowVectorExport = True
        Left = 413.764070000000000000
        Top = 187.984300790000000000
        Width = 74.692950000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48708#44553#50668' '#9314)
        ParentFont = False
      end
      object Line11: TfrxLineView
        AllowVectorExport = True
        Left = 502.693260000000000000
        Top = 162.519719210000000000
        Height = 538.582691810000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo21: TfrxMemoView
        AllowVectorExport = True
        Left = 510.724800000000000000
        Top = 187.984300790000000000
        Width = 203.370130000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44552#50529' '#49328#51221' '#45236#50669)
        ParentFont = False
      end
      object Line12: TfrxLineView
        AllowVectorExport = True
        Left = 26.015770000000000000
        Top = 227.779605670000000000
        Height = 397.968501500000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo22: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 248.567100000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #54596)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 297.700990000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #49688)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 346.834880000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #54637)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 395.968770000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #47785)
        ParentFont = False
      end
      object Line13: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 244.677245910000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo26: TfrxMemoView
        AllowVectorExport = True
        Left = 30.692950000000000000
        Top = 229.448980000000000000
        Width = 81.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#52272#47308)
        ParentFont = False
      end
      object Line14: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 261.685220000000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo27: TfrxMemoView
        AllowVectorExport = True
        Left = 30.692950000000000000
        Top = 246.456773460000000000
        Width = 81.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51077#50896#47308)
        ParentFont = False
      end
      object Line15: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 278.692991500000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo28: TfrxMemoView
        AllowVectorExport = True
        Left = 30.692950000000000000
        Top = 265.464750000000000000
        Width = 81.795300000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49885'   '#45824)
        ParentFont = False
      end
      object Line16: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 295.590629290000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo29: TfrxMemoView
        AllowVectorExport = True
        Left = 29.795300000000000000
        Top = 280.472519060000000000
        Width = 81.590600000000000000
        Height = 12.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #53804#50557' '#48143' '#51312#51116#47308)
        ParentFont = False
      end
      object Line17: TfrxLineView
        AllowVectorExport = True
        Left = 71.433100160000000000
        Top = 313.700787401575000000
        Width = 430.866112440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo30: TfrxMemoView
        AllowVectorExport = True
        Left = 31.133890000000000000
        Top = 308.708746850000000000
        Width = 37.338590000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51452#49324#47308)
        ParentFont = False
      end
      object Line18: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 348.393940000000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo31: TfrxMemoView
        AllowVectorExport = True
        Left = 31.133890000000000000
        Top = 335.165444650000000000
        Width = 78.913420000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #47560'  '#52712'  '#47308)
        ParentFont = False
      end
      object Line19: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 367.291590000000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo32: TfrxMemoView
        AllowVectorExport = True
        Left = 29.795300000000000000
        Top = 352.173470000000000000
        Width = 81.590600000000000000
        Height = 12.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52376#52824' '#48143' '#49688#49696#47308)
        ParentFont = False
      end
      object Line20: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 384.409710000000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo33: TfrxMemoView
        AllowVectorExport = True
        Left = 32.133890000000000000
        Top = 370.181195120000000000
        Width = 78.803149610000000000
        Height = 12.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44160'  '#49324'  '#47308)
        ParentFont = False
      end
      object Line21: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 412.645950000000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo34: TfrxMemoView
        AllowVectorExport = True
        Left = 29.574830000000000000
        Top = 386.078832910000000000
        Width = 83.590600000000000000
        Height = 24.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50689#49345' '#51652#45800' '#48143
          #48169#49324#49440' '#52824#47308#47308)
        ParentFont = False
      end
      object Line22: TfrxLineView
        AllowVectorExport = True
        Top = 431.543600000000000000
        Width = 502.677182440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo35: TfrxMemoView
        AllowVectorExport = True
        Left = 29.574830000000000000
        Top = 416.425480000000000000
        Width = 84.252010000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52824#47308' '#51116#47308#45824)
        ParentFont = False
      end
      object Line23: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 450.441250000000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo36: TfrxMemoView
        AllowVectorExport = True
        Left = 29.795300000000000000
        Top = 454.220780000000000000
        Width = 82.031540000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51204#50529#48376#51064#48512#45812)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 472.897960000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #49440)
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 510.693260000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #53469)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 556.047620000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #54637)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        AllowVectorExport = True
        Left = 7.118120000000000000
        Top = 597.622450000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #47785)
        ParentFont = False
      end
      object Line24: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 467.448906770000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo41: TfrxMemoView
        AllowVectorExport = True
        Left = 32.472480000000000000
        Top = 560.047620000000000000
        Width = 78.456710000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44592#53440)
        ParentFont = False
      end
      object Line25: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 486.346544570000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo42: TfrxMemoView
        AllowVectorExport = True
        Left = 26.015770000000000000
        Top = 433.433134330000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51116#54876#48143#47932#47532#52824#47308#47308)
        ParentFont = False
      end
      object Line26: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 505.244182360000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo43: TfrxMemoView
        AllowVectorExport = True
        Left = 31.133890000000000000
        Top = 471.228422130000000000
        Width = 80.692950000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'CT '#51652#45800#47308)
        ParentFont = False
      end
      object Line27: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 522.252320000000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo44: TfrxMemoView
        AllowVectorExport = True
        Left = 31.354360000000000000
        Top = 488.126059920000000000
        Width = 80.472480000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'MRI '#51652#45800#47308)
        ParentFont = False
      end
      object Line28: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 539.259927950000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo45: TfrxMemoView
        AllowVectorExport = True
        Left = 32.913420000000000000
        Top = 524.141817720000000000
        Width = 76.913420000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48372#52384#44368#51221#47308)
        ParentFont = False
      end
      object Line29: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 556.157565750000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo46: TfrxMemoView
        AllowVectorExport = True
        Left = 32.913420000000000000
        Top = 507.023685510000000000
        Width = 76.913420000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52488#51020#54028#51652#45800#47308)
        ParentFont = False
      end
      object Line30: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 575.055203540000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line31: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 593.952841340000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo48: TfrxMemoView
        AllowVectorExport = True
        Left = 31.133890000000000000
        Top = 541.039431100000000000
        Width = 80.472480000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49440#53469#51652#47308#47308)
        ParentFont = False
      end
      object Line32: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 610.850479130000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line33: TfrxLineView
        AllowVectorExport = True
        Left = 26.078740160000000000
        Top = 627.748116930000000000
        Width = 476.220472440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line34: TfrxLineView
        AllowVectorExport = True
        Top = 644.645754720000000000
        Width = 502.677165350000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line35: TfrxLineView
        AllowVectorExport = True
        Top = 663.763862520000000000
        Width = 502.677165350000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line36: TfrxLineView
        AllowVectorExport = True
        Top = 682.661500310000000000
        Width = 502.677165350000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line37: TfrxLineView
        AllowVectorExport = True
        Top = 701.559138110000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line38: TfrxLineView
        AllowVectorExport = True
        Top = 718.677245910000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo49: TfrxMemoView
        AllowVectorExport = True
        Left = 10.913420000000000000
        Top = 648.535870000000000000
        Width = 99.118120000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 667.433520000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48376#51064#48512#45812#44552#9312)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 686.551640000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48372#54744#51088#48512#45812#44552#9313)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 704.125984250000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#50629#51088#46321#47197#48264#54840)
        ParentFont = False
      end
      object Line39: TfrxLineView
        AllowVectorExport = True
        Top = 735.685530000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo53: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 720.456780790000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#50629#51109' '#49548#51116#51648)
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        AllowVectorExport = True
        Left = 214.787570000000000000
        Top = 704.125984251969000000
        Width = 85.133890000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49345'   '#54840)
        ParentFont = False
      end
      object Line40: TfrxLineView
        AllowVectorExport = True
        Left = 546.929500000000000000
        Top = 699.779605670000000000
        Height = 17.007864250000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line41: TfrxLineView
        AllowVectorExport = True
        Left = 603.622450000000000000
        Top = 699.779605670000000000
        Height = 17.007864250000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo55: TfrxMemoView
        AllowVectorExport = True
        Left = 550.488560000000000000
        Top = 704.125984251969000000
        Width = 49.574830000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49457'   '#47749)
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        AllowVectorExport = True
        Left = 678.551640000000000000
        Top = 701.559130790000000000
        Width = 22.456710000000000000
        Height = 13.338590000000000000
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '('#51064')')
        ParentFont = False
      end
      object Line42: TfrxLineView
        AllowVectorExport = True
        Top = 754.583180000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo57: TfrxMemoView
        AllowVectorExport = True
        Left = 417.086890000000000000
        Top = 784.819420000000000000
        Width = 286.157700000000000000
        Height = 201.771800000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '1. '#51060' '#44228#49328#49436' '#50689#49688#51613#50640' '#45824#54620' '#49464#48512#45236#50857#51008' '#50836#50577#44592#44288#50640' '#50836#44396#54616#50668' '#51228#44277#48155#51012' '#49688' '#51080#49845#45768#45796'.'
          
            '2.<'#44397#48124#44148#44053#48372#54744#48277'> '#51228'43'#51312#51032'2 '#46608#45716' <'#51032#47308#44553#50668#48277'> '#51228'11'#51312#51032'3'#50640' '#46384#46972' '#54872#51088#44032' '#51204#50529' '#48512#45812#54620' '#48708#50857#44284' '#48708#44553#50668#47196' '#48512#45812#54620 +
            ' '#48708#50857#51032' '#53440#45817#49457' '#50668#48512#47484' '#44148#44053#48372#54744#49900#49324#54217#44032#50896'('#9743'1644-2000, '#54856#54168#51060#51648': www.hira.or.kr)'#50640' '#54869#51064' '#50836#52397#54616 +
            #49892' '#49688' '#51080#49845#45768#45796'.'
          
            '3. '#44228#49328#49436'*'#50689#49688#51613#51008' <'#49548#46301#49464#48277'>'#50640' '#46384#47480' '#51032#47308#48708' '#44277#51228#49888#52397' '#46608#45716' <'#51312#49464#53945#47168#51228#54620#48277'>'#50640' '#46384#47480' '#54788#44552#50689#49688#51613' '#44277#51228#49888#52397'('#54788#44552#50689#49688 +
            #51613' '#49849#51064#48264#54840#44032' '#51201#55180' '#44221#50864#47564' '#54644#45817#54633#45768#45796')'#50640' '#49324#50857#54624' '#49688' '#51080#49845#45768#45796'. '#45796#47564', '#51648#52636#51613#48729#50857#51004#47196' '#48156#44553#46108' "'#54788#44552#50689#49688#51613'('#51648#52636#51613#48729')"' +
            #51008' '#44277#51228#49888#52397#50640' '#49324#50857#54624' '#49688' '#50630#49845#45768#45796'. ('#54788#44552#50689#49688#51613' '#47928#51032' 126 '#51064#53552#45367' '#54856#54168#51060#51648' : http://'#54788#44552#50689#49688#51613'.kr)')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
      object Memo58: TfrxMemoView
        AllowVectorExport = True
        Left = 8.000000000000000000
        Top = 999.700990000000000000
        Width = 480.960730000000000000
        Height = 15.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #51452'('#35455'):'#51652#47308#54637#47785' '#51473' '#49440#53469#54637#47785#51008' '#50836#50577#44592#44288#51032' '#53945#49457#50640' '#46384#46972' '#52628#44032' '#46608#45716' '#49373#47029#54624' '#49688' '#51080#49845#45768#45796'.')
        ParentFont = False
      end
      object Line44: TfrxLineView
        AllowVectorExport = True
        Left = 502.874150000000000000
        Top = 421.606370000000000000
        Width = 215.433070870000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line45: TfrxLineView
        AllowVectorExport = True
        Left = 579.653680000000000000
        Top = 227.606370000000000000
        Height = 194.362204720000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo59: TfrxMemoView
        AllowVectorExport = True
        Left = 507.653680000000000000
        Top = 231.606370000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#48708#52509#50529
          #9315'('#9312'+'#9313'+'#9314')')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        AllowVectorExport = True
        Left = 507.653680000000000000
        Top = 267.606370000000000000
        Width = 71.795300000000000000
        Height = 25.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#48512#45812' '#52509#50529
          #9316'('#9312'+'#9314')')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        AllowVectorExport = True
        Left = 507.653680000000000000
        Top = 299.606370000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51060#48120' '
          #45225#48512#54620#44552#50529#9317)
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        AllowVectorExport = True
        Left = 505.653680000000000000
        Top = 359.606370000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49688#45225#44552#50529
          #9318'('#9316'-'#9317')')
        ParentFont = False
      end
      object Line46: TfrxLineView
        AllowVectorExport = True
        Left = 579.653680000000000000
        Top = 351.606370000000000000
        Width = 137.952755910000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line47: TfrxLineView
        AllowVectorExport = True
        Left = 579.653680000000000000
        Top = 375.606370000000000000
        Width = 137.952755910000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line48: TfrxLineView
        AllowVectorExport = True
        Left = 579.653680000000000000
        Top = 397.606370000000000000
        Width = 137.952755910000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line49: TfrxLineView
        AllowVectorExport = True
        Left = 641.653680000000000000
        Top = 333.385900000000000000
        Height = 88.346454250000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo63: TfrxMemoView
        AllowVectorExport = True
        Left = 585.653680000000000000
        Top = 333.606370000000000000
        Width = 53.795300000000000000
        Height = 17.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52852#46300)
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        AllowVectorExport = True
        Left = 581.653680000000000000
        Top = 359.606370000000000000
        Width = 59.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54788#44552#50689#49688#51613)
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        AllowVectorExport = True
        Left = 581.653680000000000000
        Top = 379.606370000000000000
        Width = 57.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54788#44552)
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        AllowVectorExport = True
        Left = 581.653680000000000000
        Top = 403.606370000000000000
        Width = 59.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54633#44228)
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        AllowVectorExport = True
        Left = 511.653680000000000000
        Top = 429.606370000000000000
        Width = 82.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #54788#44552#50689#49688#51613'(')
        ParentFont = False
      end
      object Line50: TfrxLineView
        AllowVectorExport = True
        Left = 591.653680000000000000
        Top = 450.519685040000000000
        Height = 34.420470000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo68: TfrxMemoView
        AllowVectorExport = True
        Left = 513.653680000000000000
        Top = 451.606370000000000000
        Width = 71.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49888#48516#54869#51064#48264#54840)
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        AllowVectorExport = True
        Left = 511.653680000000000000
        Top = 471.606370000000000000
        Width = 71.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54788#44552#49849#51064#48264#54840)
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        AllowVectorExport = True
        Left = 511.653680000000000000
        Top = 489.606370000000000000
        Width = 135.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '* '#50836#50577#44592#44288' '#51076#51032' '#54876#50857' '#44277#44036)
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        AllowVectorExport = True
        Left = 4.220470000000000000
        Top = 114.692950000000000000
        Width = 107.811070000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ChartNo]')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 114.692950000000000000
        Width = 220.315090000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[PtName]')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        AllowVectorExport = True
        Left = 348.283550000000000000
        Top = 114.692950000000000000
        Width = 190.283550000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[JinDay]')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        AllowVectorExport = True
        Left = 546.535560000000000000
        Top = 112.692950000000000000
        Width = 167.149660000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YaganGongHyu]')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 146.692950000000000000
        Width = 218.535560000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DRGNo]')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        AllowVectorExport = True
        Left = 348.283550000000000000
        Top = 146.692950000000000000
        Width = 92.267780000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ByungSil]')
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        AllowVectorExport = True
        Left = 446.519790000000000000
        Top = 148.472480000000000000
        Width = 92.047310000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Gubun]')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        AllowVectorExport = True
        Left = 548.315090000000000000
        Top = 148.472480000000000000
        Width = 165.370130000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YoungsuNo]')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 229.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJinchal]')
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 246.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YIBwon]')
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 263.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSiksa]')
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 280.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJojae]')
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 297.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJusa]')
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 333.504020000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMarche]')
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 352.504020000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSusul]')
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 370.291430120000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YGumsa]')
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 388.504020000000000000
        Width = 90.031540000000000000
        Height = 21.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YXRay]')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 416.504020000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YChiryoJaeryo]')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 454.401670000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YTotBonin]')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 558.330860000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YEtc]')
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 433.708720000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMulri]')
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 471.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YCT]')
        ParentFont = False
      end
      object Memo94: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 488.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMRI]')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 505.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YChoum]')
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 522.606370000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBoOrtho]')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 579.401670000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSuhyul]')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 540.708720000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSelectJinryo]')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 229.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJinchal]')
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 246.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BIBwon]')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 263.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSiksa]')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 280.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJojae]')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 297.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJusa]')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 333.504020000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMarche]')
        ParentFont = False
      end
      object Memo105: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 352.504020000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSusul]')
        ParentFont = False
      end
      object Memo106: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 370.291430120000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BGumsa]')
        ParentFont = False
      end
      object Memo107: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 388.504020000000000000
        Width = 76.031540000000000000
        Height = 21.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BXRay]')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 416.504020000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BChiryoJaeryo]')
        ParentFont = False
      end
      object Memo109: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 454.401670000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BTotBonin]')
        ParentFont = False
      end
      object Memo110: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 558.330860000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BEtc]')
        ParentFont = False
      end
      object Memo111: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 433.708720000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMulri]')
        ParentFont = False
      end
      object Memo112: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 471.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BCT]')
        ParentFont = False
      end
      object Memo113: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 488.606370000000000000
        Width = 72.252010000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMRI]')
        ParentFont = False
      end
      object Memo114: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 505.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BChoum]')
        ParentFont = False
      end
      object Memo115: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 522.606370000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BBoOrtho]')
        ParentFont = False
      end
      object Memo116: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 579.401670000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSuhyul]')
        ParentFont = False
      end
      object Memo117: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 540.708720000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSelectJinryo]')
        ParentFont = False
      end
      object Memo118: TfrxMemoView
        AllowVectorExport = True
        Left = 585.653680000000000000
        Top = 237.606370000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[TotJinryo]')
        ParentFont = False
      end
      object Memo119: TfrxMemoView
        AllowVectorExport = True
        Left = 585.653680000000000000
        Top = 271.606370000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[TotBonin]')
        ParentFont = False
      end
      object Memo120: TfrxMemoView
        AllowVectorExport = True
        Left = 585.653680000000000000
        Top = 305.606370000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[PrevSunab]')
        ParentFont = False
      end
      object Memo121: TfrxMemoView
        AllowVectorExport = True
        Left = 644.653680000000000000
        Top = 333.606370000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCard]')
        ParentFont = False
      end
      object Memo122: TfrxMemoView
        AllowVectorExport = True
        Left = 645.653680000000000000
        Top = 357.606370000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCashYoungsu]')
        ParentFont = False
      end
      object Memo123: TfrxMemoView
        AllowVectorExport = True
        Left = 645.653680000000000000
        Top = 379.606370000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCash]')
        ParentFont = False
      end
      object Memo124: TfrxMemoView
        AllowVectorExport = True
        Left = 645.653680000000000000
        Top = 403.606370000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabSum]')
        ParentFont = False
      end
      object Memo125: TfrxMemoView
        AllowVectorExport = True
        Left = 595.653680000000000000
        Top = 451.606370000000000000
        Width = 116.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[RegNo]')
        ParentFont = False
      end
      object Memo126: TfrxMemoView
        AllowVectorExport = True
        Left = 595.653680000000000000
        Top = 471.606370000000000000
        Width = 116.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[SungInNo]')
        ParentFont = False
      end
      object Memo127: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 648.504020000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSum]')
        ParentFont = False
      end
      object Memo128: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 666.504020000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBonin]')
        ParentFont = False
      end
      object Memo129: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 686.504020000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBohum]')
        ParentFont = False
      end
      object Memo130: TfrxMemoView
        AllowVectorExport = True
        Left = 423.874150000000000000
        Top = 648.504020000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSum]')
        ParentFont = False
      end
      object Memo133: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 704.125984251969000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BussNo]')
        ParentFont = False
      end
      object Memo134: TfrxMemoView
        AllowVectorExport = True
        Left = 309.338590000000000000
        Top = 704.125984250000000000
        Width = 232.267780000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[HospitalName]')
        ParentFont = False
      end
      object Memo135: TfrxMemoView
        AllowVectorExport = True
        Left = 120.000000000000000000
        Top = 720.504020000000000000
        Width = 418.567100000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Sojae]')
        ParentFont = False
      end
      object Memo137: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 738.504020000000000000
        Width = 490.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = 'yyyy. mm. dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[OutDate]')
        ParentFont = False
      end
      object Memo131: TfrxMemoView
        AllowVectorExport = True
        Left = 683.653680000000000000
        Top = 429.606370000000000000
        Width = 27.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          ')')
        ParentFont = False
      end
      object Memo132: TfrxMemoView
        AllowVectorExport = True
        Left = 597.653680000000000000
        Top = 429.606370000000000000
        Width = 82.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[CashYoungSu]')
        ParentFont = False
      end
      object Memo275: TfrxMemoView
        AllowVectorExport = True
        Left = 511.653680000000000000
        Top = 508.606370000000000000
        Width = 197.795300000000000000
        Height = 165.559060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[YoIm]')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 578.268090000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName1]')
        ParentFont = False
      end
      object Memo279: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 593.386210000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName2]')
        ParentFont = False
      end
      object Memo280: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 612.283860000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName3]')
        ParentFont = False
      end
      object Memo281: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 631.181510000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName4]')
        ParentFont = False
      end
      object Memo285: TfrxMemoView
        AllowVectorExport = True
        Left = 120.188976380000000000
        Top = 597.165740000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef2]')
        ParentFont = False
      end
      object Memo286: TfrxMemoView
        AllowVectorExport = True
        Left = 120.188976380000000000
        Top = 616.063390000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef3]')
        ParentFont = False
      end
      object Memo287: TfrxMemoView
        AllowVectorExport = True
        Left = 120.188976380000000000
        Top = 631.181510000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef4]')
        ParentFont = False
      end
      object Memo291: TfrxMemoView
        AllowVectorExport = True
        Left = 424.063126380000000000
        Top = 597.165740000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef2]')
        ParentFont = False
      end
      object Memo292: TfrxMemoView
        AllowVectorExport = True
        Left = 424.063126380000000000
        Top = 616.063390000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef3]')
        ParentFont = False
      end
      object Memo293: TfrxMemoView
        AllowVectorExport = True
        Left = 424.063126380000000000
        Top = 631.181510000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef4]')
        ParentFont = False
      end
      object Picture2: TfrxPictureView
        AllowVectorExport = True
        Left = 650.079160000000000000
        Top = 672.756340000000000000
        Width = 68.031540000000000000
        Height = 64.252010000000000000
        Frame.Typ = []
        Picture.Data = {
          07544269746D6170DA030000424DDA030000000000003E000000280000004E00
          00004D00000001000100000000009C0300000000000000000000020000000000
          000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC
          0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFC000007FFFFFFC0000FFFF
          FE0000000FFFFFFC0000FFFFF800000003FFFFFC0000FFFFE003FFF800FFFFFC
          0000FFFFC01FFFFF007FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFC07FFFFFFFC07FFFC0000FFF01FFFFFFFFF01FFFC0000FFE0
          3FFFFFFFFF80FFFC0000FFE07FFFFFFFFFC0FFFC0000FFC1FF0000007FF07FFC
          0000FF83FE0000007FF83FFC0000FF03FE0000003FF81FFC0000FF07FE000000
          3FFC1FFC0000FE0FFE1FFFFE7FFE0FFC0000FC1FFE1FFFFFFFFF07FC0000FC1F
          FE1FFFFFFFFF07FC0000F83FFE1FFFFFFFFF83FC0000F87FFE1FFFFFFFFFC3FC
          0000F07FFE1FFFFFFFFFC1FC0000F0FFFE1FFFFFFFFFE1FC0000F0FFFE1FFFFF
          FFFFE1FC0000E0FFFE1FFFFFFFFFE0FC0000E1FFFE1FFFFFFFFFF0FC0000E1FF
          FE1FFFF9FFFFF0FC0000C1FFFE1FFFF0FFFFF07C0000C3FFFF3FFFF0FFFFF87C
          0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0
          FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFF07FF0FFFFF87C0000C3FF
          FFC03FF0FFFFF87C0000C3FFFF800FF0FFFFF87C0000C3FFFF0007F0FFFFF87C
          0000C3FFFE0003F0FFFFF87C0000C3FFFC0E01F0FFFFF87C0000C3FFF81FC0F0
          FFFFF87C0000C3FFF83FE0F0FFFFF87C0000C3FFF07FF0F0FFFFF87C0000C3FF
          F07FF0F0FFFFF87C0000C1FFF0FFF0F0FFFFF07C0000E1FFF0FFF0F0FFFFF0FC
          0000E1FFF0FFF0F0FFFFF0FC0000E0FFF0FFE0F0FFFFE0FC0000F0FFF0FFE0F0
          FFFFE1FC0000F0FFF07FC1F0FFFFE1FC0000F07FF01F81F0FFFFC1FC0000F87F
          F80003F0FFFFC3FC0000F83FFC0007F0FFFF83FC0000FC1FFF000FF0FFFF07FC
          0000FC1FFF803FF0FFFF07FC0000FE0FFFF0FFF0FFFE0FFC0000FF07FFFFFFF0
          FFFC1FFC0000FF03FFFFFFF0FFF81FFC0000FF81FFFFFFF0FFF03FFC0000FFC0
          FFFFFFF0FFE07FFC0000FFE07FFFFFF0FFC0FFFC0000FFF03FFFFFF9FF81FFFC
          0000FFF81FFFFFFFFF03FFFC0000FFFC07FFFFFFFC07FFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFFC01FFFFF007FFFFC0000FFFF
          E003FFF800FFFFFC0000FFFFF800000003FFFFFC0000FFFFFE0000000FFFFFFC
          0000FFFFFFC000007FFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000}
        HightQuality = False
        Transparent = True
        TransparentColor = clWhite
      end
      object Memo136: TfrxMemoView
        AllowVectorExport = True
        Left = 606.315090000000000000
        Top = 704.125984251969000000
        Width = 68.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Doctor]')
        ParentFont = False
      end
      object Line51: TfrxLineView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 181.417440000000000000
        Height = 537.826783860000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line52: TfrxLineView
        AllowVectorExport = True
        Left = 396.850650000000000000
        Top = 162.519790000000000000
        Height = 538.582691810000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line53: TfrxLineView
        AllowVectorExport = True
        Left = 117.165430000000000000
        Top = 181.417440000000000000
        Width = 279.685039370000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line54: TfrxLineView
        AllowVectorExport = True
        Left = 117.165430000000000000
        Top = 204.094620000000000000
        Width = 188.976319370000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 170.078850000000000000
        Top = 188.976500000000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51068#48512#48376#51064#48512#45812)
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        AllowVectorExport = True
        Left = 128.504020000000000000
        Top = 211.653680000000000000
        Width = 68.031540000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48376#51064#48512#45812#44552)
        ParentFont = False
      end
      object Memo138: TfrxMemoView
        AllowVectorExport = True
        Left = 230.551330000000000000
        Top = 211.653680000000000000
        Width = 64.252010000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44277#45800#48512#45812#44552)
        ParentFont = False
      end
      object Memo139: TfrxMemoView
        AllowVectorExport = True
        Left = 313.700990000000000000
        Top = 200.315090000000000000
        Width = 75.590600000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51204#50529#48376#51064#48512#45812)
        ParentFont = False
      end
      object Line55: TfrxLineView
        AllowVectorExport = True
        Left = 544.252320000000000000
        Top = 90.708695590000000000
        Height = 71.433070870000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo140: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 786.142240000000000000
        Width = 404.409710000000000000
        Height = 200.315090000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            '1. '#51068#48512' '#48376#51064#48512#45812': '#51068#48152#51201#51004#47196' '#45796#51020#44284' '#44057#51060' '#48376#51064#48512#45812#47456#51012' '#51201#50857#54616#45208', '#50836#50577#44592#44288' '#51648#50669', '#50836#50577#44592#44288#51032' '#51333#48324', '#54872#51088' '#51088#44201' '#46321 +
            #50640' '#46384#46972' '#45804#46972#51656' '#49688' '#51080#49845#45768#45796'.'
          
            '-'#50808#47000' '#48376#51064#48512#45812#47456': '#50836#50577#44592#44288' '#51333#48324#50640' '#46384#46972' 30%~60%('#51032#47308#44553#50668#45716' '#49688#44553#44428#51088' '#51333#48324' '#48143' '#51032#47308#44553#50668#44592#44288' '#50976#54805' '#46321#50640' '#46384#46972' 0' +
            #50896'~2500'#50896' 0%~15%) '#46321
          '-'#51077#50896' '#48376#51064#48512#45812#47456':20%('#51032#47308#44553#50668#45716' '#49688#44553#44428#51088' '#51333#48324' '#48143' '#51032#47308#44553#50668#44592#44288' '#50976#54805' '#46321#50640' '#46384#46972' 0%~10%)'#46321
          #8251#49885#45824': 50%('#51032#47308#44553#50668#45716' 20%)'
          'CT*MRI*PET:'#50808#47000' '#48376#51064#48512#45812#47456'('#51032#47308#44553#50668#45716' '#51077#50896' '#48376#51064#48512#45812#47456#44284' '#46041#51068')'
          
            '2. '#51204#50529' '#48376#51064#48512#45812': <'#44397#48124#44148#44053#48372#54744#48277' '#49884#54665#44508#52825'> '#48324#54364' 5 '#46608#45716' <'#51032#47308#44553#50668#48277' '#49884#54665#44508#52825'> '#48324#54364' 1'#51032'2'#50640' '#46384#46972' '#51201#50857#46104#45716' ' +
            #54637#47785#51004#47196' '#44148#44053#48372#54744'('#51032#47308#44553#50668')'#50640#49436' '#44552#50529#51012' '#51221#54616#44256' '#51080#51004#45208' '#51652#47308#48708' '#51204#50529#51012' '#54872#51088' '#48376#51064#51060' '#48512#45812#54633#45768#45796'.'
          
            '3. '#49345#54620#50529' '#52488#44284#44552': '#48376#51064#48512#45812#50529' '#49345#54620#51228#50640' '#46384#46972' '#44057#51008' '#51032#47308#44592#44288#50640#49436' '#50672#44036' 523'#47564#50896'('#54872#51088' '#51088#44201' '#46321#50640' '#46384#46972' '#45796#47484' '#49688' '#51080#51020 +
            ') '#51060#49345' '#48376#51064#48512#45812#44552#51060' '#48156#49373#54620' '#44221#50864' '#44277#45800#51060' '#48512#45812#54616#45716' '#52488#44284#48376' '#51473' '#49324#51204' '#51221#49328#54616#45716' '#44552#50529#51012' '#47568#54633#45768#45796'.')
        ParagraphGap = 5.000000000000000000
        ParentFont = False
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = -7.559060000000000000
        Top = 1351.748920000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line43: TfrxLineView
        AllowVectorExport = True
        Left = 411.968770000000000000
        Top = 755.906000000000000000
        Height = 236.220291810000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line56: TfrxLineView
        AllowVectorExport = True
        Top = 774.803650000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line57: TfrxLineView
        AllowVectorExport = True
        Top = 994.016390000000000000
        Width = 718.110236220000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo141: TfrxMemoView
        AllowVectorExport = True
        Left = 139.842610000000000000
        Top = 759.685530000000000000
        Width = 159.181200000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54637#47785#48324' '#49444#47749)
        ParentFont = False
      end
      object Memo142: TfrxMemoView
        AllowVectorExport = True
        Left = 521.575140000000000000
        Top = 740.787880000000000000
        Width = 98.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51068#48152#49324#54637' '#49444#47749)
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 438.425480000000000000
        Top = 702.992580000000000000
        Width = 86.929141180000000000
        Height = 83.149611180000000000
        Frame.Typ = []
        Picture.Data = {
          07544269746D6170DA030000424DDA030000000000003E000000280000004E00
          00004D00000001000100000000009C0300000000000000000000020000000000
          000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC
          0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFC000007FFFFFFC0000FFFF
          FE0000000FFFFFFC0000FFFFF800000003FFFFFC0000FFFFE003FFF800FFFFFC
          0000FFFFC01FFFFF007FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFC07FFFFFFFC07FFFC0000FFF01FFFFFFFFF01FFFC0000FFE0
          3FFFFFFFFF80FFFC0000FFE07FFFFFFFFFC0FFFC0000FFC1FF0000007FF07FFC
          0000FF83FE0000007FF83FFC0000FF03FE0000003FF81FFC0000FF07FE000000
          3FFC1FFC0000FE0FFE1FFFFE7FFE0FFC0000FC1FFE1FFFFFFFFF07FC0000FC1F
          FE1FFFFFFFFF07FC0000F83FFE1FFFFFFFFF83FC0000F87FFE1FFFFFFFFFC3FC
          0000F07FFE1FFFFFFFFFC1FC0000F0FFFE1FFFFFFFFFE1FC0000F0FFFE1FFFFF
          FFFFE1FC0000E0FFFE1FFFFFFFFFE0FC0000E1FFFE1FFFFFFFFFF0FC0000E1FF
          FE1FFFF9FFFFF0FC0000C1FFFE1FFFF0FFFFF07C0000C3FFFF3FFFF0FFFFF87C
          0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0
          FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFF07FF0FFFFF87C0000C3FF
          FFC03FF0FFFFF87C0000C3FFFF800FF0FFFFF87C0000C3FFFF0007F0FFFFF87C
          0000C3FFFE0003F0FFFFF87C0000C3FFFC0E01F0FFFFF87C0000C3FFF81FC0F0
          FFFFF87C0000C3FFF83FE0F0FFFFF87C0000C3FFF07FF0F0FFFFF87C0000C3FF
          F07FF0F0FFFFF87C0000C1FFF0FFF0F0FFFFF07C0000E1FFF0FFF0F0FFFFF0FC
          0000E1FFF0FFF0F0FFFFF0FC0000E0FFF0FFE0F0FFFFE0FC0000F0FFF0FFE0F0
          FFFFE1FC0000F0FFF07FC1F0FFFFE1FC0000F07FF01F81F0FFFFC1FC0000F87F
          F80003F0FFFFC3FC0000F83FFC0007F0FFFF83FC0000FC1FFF000FF0FFFF07FC
          0000FC1FFF803FF0FFFF07FC0000FE0FFFF0FFF0FFFE0FFC0000FF07FFFFFFF0
          FFFC1FFC0000FF03FFFFFFF0FFF81FFC0000FF81FFFFFFF0FFF03FFC0000FFC0
          FFFFFFF0FFE07FFC0000FFE07FFFFFF0FFC0FFFC0000FFF03FFFFFF9FF81FFFC
          0000FFF81FFFFFFFFF03FFFC0000FFFC07FFFFFFFC07FFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFFC01FFFFF007FFFFC0000FFFF
          E003FFF800FFFFFC0000FFFFF800000003FFFFFC0000FFFFFE0000000FFFFFFC
          0000FFFFFFC000007FFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000}
        HightQuality = False
        Transparent = True
        TransparentColor = clWhite
      end
      object Memo143: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 230.551330000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GJinchal]')
        ParentFont = False
      end
      object Memo144: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 245.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GIBwon]')
        ParentFont = False
      end
      object Memo145: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 262.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GSiksa]')
        ParentFont = False
      end
      object Memo146: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 279.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GJojae]')
        ParentFont = False
      end
      object Memo147: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 296.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GJusa]')
        ParentFont = False
      end
      object Memo148: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 332.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GMarche]')
        ParentFont = False
      end
      object Memo149: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 351.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GSusul]')
        ParentFont = False
      end
      object Memo150: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 369.354510120000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GGumsa]')
        ParentFont = False
      end
      object Memo151: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 387.567100000000000000
        Width = 90.031540000000000000
        Height = 21.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GXRay]')
        ParentFont = False
      end
      object Memo152: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 415.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GChiryoJaeryo]')
        ParentFont = False
      end
      object Memo153: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 453.464750000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GTotBonin]')
        ParentFont = False
      end
      object Memo154: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 557.393940000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GEtc]')
        ParentFont = False
      end
      object Memo155: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 432.771800000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GMulri]')
        ParentFont = False
      end
      object Memo156: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 470.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GCT]')
        ParentFont = False
      end
      object Memo157: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 487.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GMRI]')
        ParentFont = False
      end
      object Memo158: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 504.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GChoum]')
        ParentFont = False
      end
      object Memo159: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 521.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GBoOrtho]')
        ParentFont = False
      end
      object Memo160: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 578.464750000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GSuhyul]')
        ParentFont = False
      end
      object Memo161: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 539.771800000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GSelectJinryo]')
        ParentFont = False
      end
      object Memo162: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 647.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GSum]')
        ParentFont = False
      end
      object Memo163: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 665.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GBonin]')
        ParentFont = False
      end
      object Memo164: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 685.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GBohum]')
        ParentFont = False
      end
      object Memo165: TfrxMemoView
        AllowVectorExport = True
        Left = 215.622186380000000000
        Top = 596.228820000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GUserDef2]')
        ParentFont = False
      end
      object Memo166: TfrxMemoView
        AllowVectorExport = True
        Left = 215.622186380000000000
        Top = 615.126470000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GUserDef3]')
        ParentFont = False
      end
      object Memo167: TfrxMemoView
        AllowVectorExport = True
        Left = 215.622186380000000000
        Top = 630.244590000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GUserDef4]')
        ParentFont = False
      end
      object Memo168: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 230.551330000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JJinchal]')
        ParentFont = False
      end
      object Memo169: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 245.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JIBwon]')
        ParentFont = False
      end
      object Memo170: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 262.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JSiksa]')
        ParentFont = False
      end
      object Memo171: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 279.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JJojae]')
        ParentFont = False
      end
      object Memo172: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 296.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JJusa]')
        ParentFont = False
      end
      object Memo173: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 332.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JMarche]')
        ParentFont = False
      end
      object Memo174: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 351.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JSusul]')
        ParentFont = False
      end
      object Memo175: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 369.354510120000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JGumsa]')
        ParentFont = False
      end
      object Memo176: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 387.567100000000000000
        Width = 90.031540000000000000
        Height = 21.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JXRay]')
        ParentFont = False
      end
      object Memo177: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 415.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JChiryoJaeryo]')
        ParentFont = False
      end
      object Memo178: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 453.464750000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JTotBonin]')
        ParentFont = False
      end
      object Memo179: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 557.393940000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JEtc]')
        ParentFont = False
      end
      object Memo180: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 432.771800000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JMulri]')
        ParentFont = False
      end
      object Memo181: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 470.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JCT]')
        ParentFont = False
      end
      object Memo182: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 487.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JMRI]')
        ParentFont = False
      end
      object Memo183: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 504.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JChoum]')
        ParentFont = False
      end
      object Memo184: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 521.669450000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JBoOrtho]')
        ParentFont = False
      end
      object Memo185: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 578.464750000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JSuhyul]')
        ParentFont = False
      end
      object Memo186: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 539.771800000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JSelectJinryo]')
        ParentFont = False
      end
      object Memo187: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 647.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JSum]')
        ParentFont = False
      end
      object Memo188: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 665.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JBonin]')
        ParentFont = False
      end
      object Memo189: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 685.567100000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JBohum]')
        ParentFont = False
      end
      object Memo190: TfrxMemoView
        AllowVectorExport = True
        Left = 306.330906380000000000
        Top = 596.228820000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JUserDef2]')
        ParentFont = False
      end
      object Memo191: TfrxMemoView
        AllowVectorExport = True
        Left = 306.330906380000000000
        Top = 615.126470000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JUserDef3]')
        ParentFont = False
      end
      object Memo192: TfrxMemoView
        AllowVectorExport = True
        Left = 306.330906380000000000
        Top = 630.244590000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JUserDef4]')
        ParentFont = False
      end
      object Line58: TfrxLineView
        AllowVectorExport = True
        Left = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 691.653682440000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo193: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 298.582870000000000000
        Width = 37.338590000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54665#50948)
        ParentFont = False
      end
      object Memo194: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 317.480520000000000000
        Width = 37.338590000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51116#47308)
        ParentFont = False
      end
      object Line59: TfrxLineView
        AllowVectorExport = True
        Left = 71.433068430000000000
        Top = 295.559055120000000000
        Height = 34.420470000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo195: TfrxMemoView
        AllowVectorExport = True
        Left = 117.165430000000000000
        Top = 317.480520000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJusaJae]')
        ParentFont = False
      end
      object Memo196: TfrxMemoView
        AllowVectorExport = True
        Left = 215.433210000000000000
        Top = 317.480520000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[GJusaJae]')
        ParentFont = False
      end
      object Memo197: TfrxMemoView
        AllowVectorExport = True
        Left = 306.141930000000000000
        Top = 317.480520000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[JJusaJae]')
        ParentFont = False
      end
      object Memo198: TfrxMemoView
        AllowVectorExport = True
        Left = 423.307360000000000000
        Top = 317.480520000000000000
        Width = 74.913420000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJusaJae]')
        ParentFont = False
      end
    end
  end
end
