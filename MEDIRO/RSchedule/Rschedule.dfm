object RSchedule_f: TRSchedule_f
  Left = 140
  Top = 237
  Caption = #50724#45720' '#54624' '#51068'(RSchedule_f)'
  ClientHeight = 630
  ClientWidth = 1134
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter2: TAdvSplitter
    Left = 502
    Top = 0
    Height = 589
    Align = alRight
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 589
    Align = alLeft
    Color = 16119285
    TabOrder = 0
    object AdvSplitter1: TAdvSplitter
      Left = 1
      Top = 221
      Width = 469
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object AdvSplitter6: TAdvSplitter
      Left = 1
      Top = 406
      Width = 469
      Height = 7
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object pnlPromise: TAdvPanel
      Left = 1
      Top = 1
      Width = 469
      Height = 220
      Align = alTop
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #50696#50557
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        469
        220)
      FullHeight = 200
      object Label1: TLabel
        Left = 265
        Top = 4
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '~'
        Transparent = True
      end
      object yeyakindicator: TAdvSmoothStatusIndicator
        Left = 34
        Top = 1
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object AdvPanel1: TAdvPanel
        Left = 125
        Top = 40
        Width = 631
        Height = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object Label12: TLabel
          Left = 18
          Top = 15
          Width = 44
          Height = 13
          Caption = #50696#50557#45236#50669
          Visible = False
        end
      end
      object GrdYeyak: TAdvStringGrid
        Left = 20
        Top = 95
        Width = 416
        Height = 75
        Cursor = crDefault
        ColCount = 8
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = GrdYeyakGetCellColor
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #51068#51088
          #49884#44036
          #52264#53944
          #49457#47749
          #51204#54868
          #45236#50669
          #52264#53944#51200#51109)
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
        SortSettings.Show = True
        SortSettings.IndexShow = True
        Version = '8.4.4.1'
        ColWidths = (
          22
          64
          64
          64
          64
          64
          210
          3)
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
      object spSkinButton2: TButton
        Left = 435
        Top = 2
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 2
        OnClick = spSkinButton2Click
      end
      object Button2: TButton
        Left = 365
        Top = 2
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '!'
        TabOrder = 5
        OnClick = Button2Click
      end
      object spSkinButton4: TButton
        Left = 401
        Top = 2
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        TabOrder = 7
        OnClick = spSkinButton4Click
      end
      object dpYeyak1: TDateTimePicker
        Left = 176
        Top = 0
        Width = 86
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489130254631163600
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 3
      end
      object dpYeyak2: TDateTimePicker
        Left = 276
        Top = 0
        Width = 86
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489135648153023800
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 4
      end
      object wcYTeam: TComboBox
        Left = 112
        Top = 0
        Width = 61
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 6
        OnChange = wcYTeamChange
      end
    end
    object pnlRecall: TAdvPanel
      Left = 1
      Top = 419
      Width = 469
      Height = 169
      Align = alBottom
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #47532#53084
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        469
        169)
      FullHeight = 166
      object Label2: TLabel
        Left = 272
        Top = 3
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '~'
        Transparent = True
      end
      object RecallIndicator: TAdvSmoothStatusIndicator
        Left = 34
        Top = 1
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object AdvPanel3: TAdvPanel
        Left = -35
        Top = 30
        Width = 631
        Height = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object Label11: TLabel
          Left = 607
          Top = 10
          Width = 22
          Height = 13
          Caption = #47532#53084
          Visible = False
        end
      end
      object grdRecall: TAdvStringGrid
        Left = 10
        Top = 90
        Width = 696
        Height = 121
        Cursor = crDefault
        ColCount = 15
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdRecallGetCellColor
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #51068#51088
          #49884#44036
          #52264#53944
          #49457#47749
          #51204#54868
          #45236#50669
          #54869#51064
          #45812#45817
          #44396#48516
          #44396#48516)
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
        SortSettings.Show = True
        SortSettings.IndexShow = True
        Version = '8.4.4.1'
        ColWidths = (
          22
          64
          64
          64
          64
          64
          226
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
      object spSkinButton3: TButton
        Left = 435
        Top = 3
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 2
        OnClick = spSkinButton3Click
      end
      object Button1: TButton
        Left = 372
        Top = 2
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '!'
        TabOrder = 5
        OnClick = Button1Click
      end
      object spSkinButton5: TButton
        Left = 405
        Top = 3
        Width = 29
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        TabOrder = 7
        OnClick = spSkinButton5Click
      end
      object dpRecall1: TDateTimePicker
        Left = 183
        Top = -1
        Width = 86
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489139722223626500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 3
      end
      object dpRecall2: TDateTimePicker
        Left = 283
        Top = -1
        Width = 86
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489144247687363500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 4
      end
      object wcRteam: TComboBox
        Left = 119
        Top = -1
        Width = 61
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 6
        OnChange = wcRteamChange
      end
    end
    object pnlMinewon: TAdvPanel
      Left = 1
      Top = 227
      Width = 469
      Height = 179
      Align = alTop
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #50696#50557#48120#45236#50896
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        469
        179)
      FullHeight = 200
      object MinewonIndicator: TAdvSmoothStatusIndicator
        Left = 65
        Top = 0
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object spSkinStdLabel2: TLabel
        Left = 267
        Top = 3
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '~'
      end
      object grdNew: TAdvStringGrid
        Left = 18
        Top = 31
        Width = 966
        Height = 256
        Cursor = crDefault
        ColCount = 13
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        PopupMenu = PopupMenu2
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
          #50696#50557#51068#51088
          #49884#44036
          #54016
          #54872#51088#47749
          #52264#53944#48264#54840
          #51204#54868#48264#54840
          #50696#50557#45236#50669
          #51217#49688#51068#51088
          #44396#48516
          #52376#47532#47700#47784
          #45812#45817#51088
          'idn')
        ColumnSize.Save = True
        ColumnSize.Key = 'db.ini'
        ColumnSize.Section = 'promiseMinewon'
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
        MouseActions.SelectOnRightClick = True
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
        SortSettings.Show = True
        SortSettings.IndexShow = True
        Version = '8.4.4.1'
        ColWidths = (
          22
          72
          38
          28
          70
          78
          89
          181
          4
          49
          246
          46
          7)
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
      object DateTimePicker1: TDateTimePicker
        Left = 175
        Top = -2
        Width = 87
        Height = 20
        Anchors = [akTop, akRight]
        Date = 38657.000000000000000000
        Time = 0.552258391202485700
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 1
      end
      object DateTimePicker2: TDateTimePicker
        Left = 276
        Top = 0
        Width = 87
        Height = 20
        Anchors = [akTop, akRight]
        Date = 38657.000000000000000000
        Time = 0.552351516198541500
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        ParentFont = False
        TabOrder = 2
      end
      object cbTeam: TComboBox
        Left = 121
        Top = -1
        Width = 50
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ItemIndex = 0
        TabOrder = 3
        Text = #51204#52404
        Items.Strings = (
          #51204#52404
          '1'#54016
          '2'#54016
          '3'#54016
          '4'#54016
          '5'#54016
          '6'#54016
          '7'#54016
          '8'#54016)
      end
      object btnMinewonDateInit: TButton
        Left = 365
        Top = 2
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '!'
        TabOrder = 4
        OnClick = btnMinewonDateInitClick
      end
      object btnMinewon: TButton
        Left = 401
        Top = 0
        Width = 32
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        TabOrder = 5
        OnClick = btnMinewonClick
      end
      object spSkinButton16: TButton
        Left = 435
        Top = 2
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 6
        Visible = False
      end
    end
  end
  object Panel1: TPanel
    Left = 505
    Top = 0
    Width = 629
    Height = 589
    Align = alRight
    Color = 16119285
    TabOrder = 1
    object AdvSplitter3: TAdvSplitter
      Left = 1
      Top = 394
      Width = 627
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object AdvSplitter4: TAdvSplitter
      Left = 1
      Top = 474
      Width = 627
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object AdvSplitter5: TAdvSplitter
      Left = 1
      Top = 261
      Width = 627
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object pnlYeyakCall: TAdvPanel
      Left = 1
      Top = 400
      Width = 627
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #48120#47532' '#51204#54868' '#50508#47548
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        627
        74)
      FullHeight = 166
      object callIndicator: TAdvSmoothStatusIndicator
        Left = 89
        Top = 1
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object AdvPanel2: TAdvPanel
        Left = -25
        Top = 155
        Width = 1051
        Height = 50
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
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = 7485192
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
        object Label5: TLabel
          Left = 240
          Top = 14
          Width = 60
          Height = 15
          Caption = #44592#44036#44160#49353
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 402
          Top = 14
          Width = 11
          Height = 15
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 20
          Top = 14
          Width = 60
          Height = 15
          Caption = #45216#51676#44160#49353
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object progressbar: TAdvProgressBar
          Left = 22
          Top = 33
          Width = 157
          Height = 4
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
          ShowPercentage = False
          ShowPosition = False
          Steps = 20
          Version = '1.3.1.0'
          Visible = False
        end
        object btnToday: TAdvGlowButton
          Left = 185
          Top = 10
          Width = 43
          Height = 24
          AntiAlias = aaNone
          Caption = #50724#45720
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          Visible = False
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
        object btnSch: TAdvGlowButton
          Left = 520
          Top = 10
          Width = 91
          Height = 24
          AntiAlias = aaNone
          Caption = #44160#49353
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btnSchClick
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
        object btnXls: TAdvGlowButton
          Left = 780
          Top = 10
          Width = 71
          Height = 24
          AntiAlias = aaNone
          Caption = 'Excel'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          Visible = False
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
        object RadioGroup1: TRadioGroup
          Left = 329
          Top = -18
          Width = 552
          Height = 33
          Columns = 6
          ItemIndex = 5
          Items.Strings = (
            #51204#52404
            #50672#46973#50756#47308
            #47532#53084
            #51116#50696#50557'('#50672#46973')'
            #50672#46973#50504#46120
            #48120#52376#47532)
          TabOrder = 6
          Visible = False
          OnClick = RadioGroup1Click
        end
        object dt1: TDateTimePicker
          Left = 309
          Top = 13
          Width = 90
          Height = 22
          Time = 0.489150960645929400
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          TabOrder = 0
        end
        object dt2: TDateTimePicker
          Left = 416
          Top = 13
          Width = 90
          Height = 22
          Time = 0.489157002317369900
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          TabOrder = 1
        end
        object dt0: TDateTimePicker
          Left = 89
          Top = 13
          Width = 90
          Height = 22
          Time = 0.489162638885318300
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          TabOrder = 4
          OnChange = dt0Change
        end
      end
      object grdCall: TAdvStringGrid
        Left = 0
        Top = 20
        Width = 656
        Height = 141
        Cursor = crDefault
        ColCount = 22
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect, goThumbTracking]
        ParentFont = False
        PopupMenu = PopupMenu1
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 15387318
        ColumnHeaders.Strings = (
          ''
          #49440#53469
          #49457#47749
          #52264#53944
          #50696#50557#51068
          #50696#50557#49884#44036
          #50696#50557#45236#50857
          #51204#54868
          #54648#46300#54256
          #52376#47532#44208#44284
          'SMS'
          'TEL'
          #52572#44540#45236#50896
          #52572#44540#50696#50557
          #45796#51020#50696#50557
          #50696#50557#46321#47197#51068
          #50696#50557#52280#44256#49324#54637
          #52376#47532#51088
          #46321#47197#51088
          #54016
          #53076#46300)
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clBtnFace
        ControlLook.FixedGradientHoverFrom = 13619409
        ControlLook.FixedGradientHoverTo = 12502728
        ControlLook.FixedGradientHoverMirrorFrom = 12502728
        ControlLook.FixedGradientHoverMirrorTo = 11254975
        ControlLook.FixedGradientDownFrom = 8816520
        ControlLook.FixedGradientDownTo = 7568510
        ControlLook.FixedGradientDownMirrorFrom = 7568510
        ControlLook.FixedGradientDownMirrorTo = 6452086
        ControlLook.FixedGradientDownBorder = 14007466
        ControlLook.CheckAlwaysActive = True
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
        MouseActions.AllColumnSize = True
        MouseActions.SelectOnRightClick = True
        Navigation.AlwaysEdit = True
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
        SearchFooter.ColorTo = 15790320
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
        ShowSelection = False
        ShowDesignHelper = False
        SortSettings.AutoColumnMerge = True
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.IndexShow = True
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '8.4.4.1'
        ColWidths = (
          22
          33
          56
          43
          62
          65
          120
          87
          80
          60
          35
          27
          70
          74
          124
          72
          94
          64
          64
          44
          54
          64)
        RowHeights = (
          22
          22)
      end
      object btnPrt: TButton
        Left = 590
        Top = 0
        Width = 32
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 3
        Visible = False
      end
      object btnSms: TButton
        Left = 531
        Top = 0
        Width = 58
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'SMS '#51204#49569
        TabOrder = 2
        OnClick = btnSmsClick
      end
    end
    object pnlBirth: TAdvPanel
      Left = 1
      Top = 267
      Width = 627
      Height = 127
      Align = alTop
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #49373#51068
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        627
        127)
      FullHeight = 200
      object birthIndicator: TAdvSmoothStatusIndicator
        Left = 34
        Top = 1
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object AdvPanel4: TAdvPanel
        Left = 10
        Top = 30
        Width = 811
        Height = 36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object Label8: TLabel
          Left = 157
          Top = 12
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label10: TLabel
          Left = 291
          Top = 10
          Width = 22
          Height = 13
          Caption = #49373#51068
          Visible = False
        end
        object spSkinButton10: TButton
          Left = 259
          Top = 6
          Width = 21
          Height = 21
          Caption = '!'
          TabOrder = 2
          OnClick = Button2Click
        end
        object spSkinButton11: TButton
          Left = 402
          Top = 1
          Width = 58
          Height = 22
          Caption = #51312#54924
          TabOrder = 4
          OnClick = spSkinButton11Click
        end
        object dtDate1: TDateTimePicker
          Left = 70
          Top = 6
          Width = 86
          Height = 22
          Date = 37912.000000000000000000
          Time = 0.489168263891770000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOrder = 0
        end
        object dtdate2: TDateTimePicker
          Left = 170
          Top = 6
          Width = 86
          Height = 22
          Date = 37912.000000000000000000
          Time = 0.489174456030014000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOrder = 1
        end
        object spSkinComboBox2: TComboBox
          Left = 6
          Top = 6
          Width = 61
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnChange = wcYTeamChange
        end
      end
      object grdBirth: TAdvStringGrid
        Left = 1
        Top = 69
        Width = 729
        Height = 112
        Cursor = crDefault
        ColCount = 9
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        OnClickCell = grdBirthClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 15387318
        ColumnHeaders.Strings = (
          ''
          #49440#53469
          #49373#51068
          #52264#53944
          #49457#47749
          #51204#54868
          #45208#51060
          #49457#48324
          'noSMS')
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clBtnFace
        ControlLook.FixedGradientHoverFrom = 13619409
        ControlLook.FixedGradientHoverTo = 12502728
        ControlLook.FixedGradientHoverMirrorFrom = 12502728
        ControlLook.FixedGradientHoverMirrorTo = 11254975
        ControlLook.FixedGradientDownFrom = 8816520
        ControlLook.FixedGradientDownTo = 7568510
        ControlLook.FixedGradientDownMirrorFrom = 7568510
        ControlLook.FixedGradientDownMirrorTo = 6452086
        ControlLook.FixedGradientDownBorder = 14007466
        ControlLook.CheckAlwaysActive = True
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
        SearchFooter.ColorTo = 15790320
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
        ShowSelection = False
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.IndexShow = True
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '8.4.4.1'
        ColWidths = (
          22
          32
          84
          64
          85
          140
          46
          40
          50)
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
      object spSkinButton13: TButton
        Left = 455
        Top = 2
        Width = 64
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #54256#47564' '#49440#53469
        TabOrder = 2
        OnClick = spSkinButton15Click
      end
      object spSkinButton12: TButton
        Left = 522
        Top = 1
        Width = 66
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'SMS'#51204#49569
        TabOrder = 3
        OnClick = spSkinButton12Click
      end
      object spSkinButton7: TButton
        Left = 590
        Top = 1
        Width = 32
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 4
        Visible = False
      end
    end
    object pnlWorkList: TAdvPanel
      Left = 1
      Top = 1
      Width = 627
      Height = 260
      Align = alTop
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #50629#47924
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        627
        260)
      FullHeight = 200
      object workindicator: TAdvSmoothStatusIndicator
        Left = 34
        Top = 1
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object Label3: TLabel
        Left = 425
        Top = 5
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '~'
        Transparent = True
      end
      object AdvPanel5: TAdvPanel
        Left = 45
        Top = 30
        Width = 576
        Height = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object lblVar: TLabel
          Left = 525
          Top = 25
          Width = 26
          Height = 13
          Caption = 'lblVar'
          Visible = False
        end
        object CbDoWork: TCheckBox
          Left = 514
          Top = 7
          Width = 117
          Height = 17
          TabStop = False
          Caption = #54620' '#51068' '#44048#52628#44592
          TabOrder = 0
        end
      end
      object GrdWork2: TAdvStringGrid
        Left = 5
        Top = 135
        Width = 704
        Height = 126
        Cursor = crDefault
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 8454143
        ColCount = 14
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowMoving, goRowSelect]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = AdvPopupMenu6
        ScrollBars = ssBoth
        ShowHint = True
        TabOrder = 1
        OnDblClick = GrdWork2DblClick
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = GrdWork2GetCellColor
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 15387318
        ColumnHeaders.Strings = (
          ''
          #46321#47197#51068#49884
          #46321#47197#51088
          #50629#47924#48512#49436
          #50629#47924#48516#47448
          #50629#47924#49884#51089#51068
          #50629#47924#45236#50669
          #51652#54665#49345#53468
          #50629#47924#52280#50668#51088
          #50629#47924#51333#47308#51068
          #52376#47532#44208#44284
          'processCode'
          #50629#47924#53076#46300
          #49324#50896'ID')
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clBtnFace
        ControlLook.FixedGradientHoverFrom = 13619409
        ControlLook.FixedGradientHoverTo = 12502728
        ControlLook.FixedGradientHoverMirrorFrom = 12502728
        ControlLook.FixedGradientHoverMirrorTo = 11254975
        ControlLook.FixedGradientDownFrom = 8816520
        ControlLook.FixedGradientDownTo = 7568510
        ControlLook.FixedGradientDownMirrorFrom = 7568510
        ControlLook.FixedGradientDownMirrorTo = 6452086
        ControlLook.FixedGradientDownBorder = 14007466
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
        MouseActions.SelectOnRightClick = True
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
        SearchFooter.ColorTo = 15790320
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
        ShowSelection = False
        ShowDesignHelper = False
        SizeWhileTyping.Height = True
        SizeWithForm = True
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.IndexShow = True
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '8.4.4.1'
        WordWrap = False
        ColWidths = (
          22
          62
          56
          67
          61
          76
          134
          64
          55
          175
          64
          64
          64
          64)
        RowHeights = (
          22
          22)
      end
      object BtnReg: TButton
        Left = 556
        Top = 1
        Width = 33
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #46321#47197
        TabOrder = 2
        OnClick = BtnRegClick
      end
      object spSkinButton6: TButton
        Left = 527
        Top = 1
        Width = 29
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        TabOrder = 6
        OnClick = spSkinButton6Click
      end
      object Button3: TButton
        Left = 509
        Top = 1
        Width = 17
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'T'
        TabOrder = 7
        OnClick = Button3Click
      end
      object spSkinButton14: TButton
        Left = 590
        Top = 1
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 8
        OnClick = spSkinButton14Click
      end
      object deSch1: TDateTimePicker
        Left = 350
        Top = -1
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489181504628504600
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 3
      end
      object deSch2: TDateTimePicker
        Left = 432
        Top = -1
        Width = 76
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489189629632164700
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 4
      end
      object wcName: TComboBox
        Left = 289
        Top = -1
        Width = 61
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 5
        OnChange = wcNameChange
      end
    end
    object pnlCall: TAdvPanel
      Left = 1
      Top = 480
      Width = 627
      Height = 108
      Align = alClient
      BevelOuter = bvNone
      Color = 13627626
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = clGray
      Caption.Color = 13037543
      Caption.ColorTo = 9747893
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #51204#54868#44592#47197
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 9224369
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clNone
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 8433825
      StatusBar.ColorTo = 13886691
      StatusBar.GradientDirection = gdVertical
      Styler = AdvPanelStyler1
      Text = ''
      DesignSize = (
        627
        108)
      FullHeight = 200
      object Telindicator: TAdvSmoothStatusIndicator
        Left = 59
        Top = 1
        Width = 25
        Height = 25
        Caption = '0'
        Version = '1.0.1.0'
        Appearance.Fill.Color = clRed
        Appearance.Fill.ColorMirror = clNone
        Appearance.Fill.ColorMirrorTo = clNone
        Appearance.Fill.GradientType = gtSolid
        Appearance.Fill.GradientMirrorType = gtSolid
        Appearance.Fill.BorderColor = clGray
        Appearance.Fill.Rounding = 12
        Appearance.Fill.ShadowOffset = 0
        Appearance.Fill.Glow = gmNone
        Appearance.Font.Charset = ANSI_CHARSET
        Appearance.Font.Color = clWhite
        Appearance.Font.Height = -16
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = [fsBold]
        AutoSize = True
      end
      object Label4: TLabel
        Left = 458
        Top = 3
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '~'
        Transparent = True
      end
      object AdvPanel6: TAdvPanel
        Left = -15
        Top = 35
        Width = 631
        Height = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object Label9: TLabel
          Left = 430
          Top = 5
          Width = 44
          Height = 13
          Caption = #53685#54868#44592#47197
          Visible = False
        end
      end
      object grdTelRec: TAdvStringGrid
        Left = 5
        Top = 40
        Width = 756
        Height = 246
        Cursor = crDefault
        ColCount = 12
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
          #51068#51088
          #49457#47749
          #51204#54868#48264#54840
          #49884#44036
          #53685#54868#49884#44036
          #45236#50857
          #53076#46300
          #51473#50836#46020
          #51452#51228
          #48155#51008#49324#46988
          #45572#44396#50640#44172)
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
        SortSettings.Show = True
        SortSettings.IndexShow = True
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
      object spSkinButton1: TButton
        Left = 590
        Top = 0
        Width = 32
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #51064#49604
        TabOrder = 2
        OnClick = spSkinButton9Click
      end
      object spSkinButton8: TButton
        Left = 373
        Top = 25
        Width = 21
        Height = 21
        Caption = '!'
        TabOrder = 6
        Visible = False
        OnClick = Button2Click
      end
      object BtnTel: TButton
        Left = 555
        Top = 0
        Width = 31
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #51312#54924
        TabOrder = 7
        OnClick = BtnTelClick
      end
      object DtTelFirst: TDateTimePicker
        Left = 376
        Top = 0
        Width = 81
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489196412039746100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 4
      end
      object DtTelLast: TDateTimePicker
        Left = 467
        Top = 0
        Width = 81
        Height = 22
        Anchors = [akTop, akRight]
        Date = 37912.000000000000000000
        Time = 0.489203090277442200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        ParentFont = False
        TabOrder = 5
      end
      object spSkinComboBox1: TComboBox
        Left = 314
        Top = 0
        Width = 61
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 3
        OnChange = wcNameChange
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 589
    Width = 1134
    Height = 41
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      1134
      41)
    object BtnCls: TButton
      Left = 892
      Top = 3
      Width = 58
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 1
      OnClick = BtnClsClick
    end
    object CBView: TCheckBox
      Left = 5
      Top = 7
      Width = 266
      Height = 19
      TabStop = False
      Caption = #50724#45720#51008' '#45908' '#51060#49345' '#51060' '#52285#51012' '#50676#51648' '#50506#44592
      TabOrder = 0
      OnClick = CBViewClick
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 161
    Top = 144
    object N1: TMenuItem
      Tag = 4
      Caption = #50672#46973#50504#46120
      OnClick = N1Click
    end
    object N2: TMenuItem
      Tag = 5
      Caption = #51116#50696#50557'('#50672#46973')'
      OnClick = N1Click
    end
    object N3: TMenuItem
      Tag = 6
      Caption = 'R/C'
      OnClick = N1Click
    end
    object N4: TMenuItem
      Tag = 7
      Caption = #50672#46973#50756#47308
      OnClick = N1Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Tag = 100
      Caption = #52488#44592#54868
      OnClick = N1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 110
    Top = 25
  end
  object AdvPopupMenu6: TAdvPopupMenu
    Version = '2.6.5.13'
    Left = 207
    Top = 35
    object N75: TMenuItem
      Caption = #50629#47924#50756#47308
      OnClick = N75Click
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = clGray
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 13037543
    Settings.Caption.ColorTo = 9747893
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
    Settings.Color = 13627626
    Settings.ColorTo = 9224369
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clWindowText
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
    Settings.StatusBar.BorderColor = clNone
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clBlack
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 8433825
    Settings.StatusBar.ColorTo = 13886691
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2003Olive
    Left = 120
    Top = 145
  end
  object PopupMenu2: TPopupMenu
    Left = 470
    Top = 201
    object N5: TMenuItem
      Caption = #50696#50557#52285' '#48148#47196#44032#44592
      OnClick = N5Click
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Tag = 4
      Caption = #50672#46973#50504#46120
    end
    object MenuItem4: TMenuItem
      Tag = 5
      Caption = #51116#50696#50557
      Visible = False
    end
    object RC1: TMenuItem
      Tag = 6
      Caption = 'R/C'
    end
    object MenuItem5: TMenuItem
      Tag = 7
      Caption = #51333#44208
    end
  end
end
