object jumgum_f: Tjumgum_f
  Left = 43
  Top = 194
  Caption = 'jumgum_f'
  ClientHeight = 845
  ClientWidth = 1363
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #46027#50880
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object AdvSplitter1: TAdvSplitter
    Left = 807
    Top = 0
    Width = 5
    Height = 826
    Align = alRight
    Color = 16771022
    ParentColor = False
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgNone
    Persist.Enable = True
    Persist.Key = '.\db.ini'
    Persist.Section = 'jumgumSplit2'
    ExplicitLeft = 809
  end
  object pnlJinryoInfo: TAdvPanel
    Left = 812
    Top = 0
    Width = 551
    Height = 826
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
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
    Position.Save = True
    Position.Key = '.\gridset\chunggu_position_set.ini'
    Position.Section = 'TxInfo'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object AdvSplitter3: TAdvSplitter
      Left = 80
      Top = 1
      Height = 824
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      Persist.Enable = True
      Persist.Key = '.\db.ini'
      Persist.Section = 'jumgumSplit1'
      ExplicitLeft = 1001
      ExplicitTop = 45
      ExplicitHeight = 817
    end
    object pnlErrorLog: TAdvPanel
      Left = 1
      Top = 1
      Width = 79
      Height = 824
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = 14408667
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = #47569#51008' '#44256#46357
      Caption.Font.Style = []
      Caption.Height = 28
      Caption.Indent = 0
      Caption.Text = #52397#44396' '#50724#47448' '#51216#44160' '#45824#49345
      Caption.TopIndent = 5
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object AdvSplitter5: TAdvSplitter
        Left = 1
        Top = 518
        Width = 77
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        Persist.Enable = True
        Persist.Key = '.\db.ini'
        Persist.Section = 'jumgumSplit3'
        ExplicitTop = 19
        ExplicitWidth = 79
      end
      object grdReport: TAdvStringGrid
        Left = 6
        Top = 39
        Width = 104
        Height = 410
        Cursor = crDefault
        ColCount = 13
        DefaultRowHeight = 28
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentFont = False
        PopupMenu = PopupMenu1
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnClickSort = grdReportClickSort
        OnClickCell = grdReportClickCell
        OnDblClickCell = grdReportDblClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'No.'
          #49457#47749
          #52264#53944
          #50724#47448#45236#50669
          #51652#47308#51068#51088
          #51452#48124#48264#54840
          'JubsuID'
          'RowNumber'
          'bondamCode '
          'WonWeNo '
          ' WonWeIlu '
          'bonDamEk '
          'jinryo_p_id'
          '')
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'jumgumList'
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
        FixedColWidth = 32
        FixedRowHeight = 28
        FixedRowAlways = True
        FixedFont.Charset = ANSI_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -16
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
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.IgnoreBlanks = True
        SortSettings.IgnoreCase = True
        Version = '8.4.4.1'
        ColWidths = (
          32
          64
          64
          127
          89
          64
          64
          64
          64
          64
          64
          64
          64)
      end
      object pnlPrice: TAdvPanel
        Left = 1
        Top = 523
        Width = 77
        Height = 300
        Align = alBottom
        TabOrder = 1
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = 14408667
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = []
        Caption.Indent = 0
        Caption.Text = #44552#50529
        Caption.TopIndent = 3
        Caption.Visible = True
        DoubleBuffered = True
        Position.Save = True
        Position.Key = '.\gridset\chunggu_position_set.ini'
        Position.Section = 'price'
        Position.Location = clInifile
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        TextVAlign = tvaCenter
        TopIndent = 2
        FullHeight = 300
        object grdCost: TAdvStringGrid
          Left = 1
          Top = 19
          Width = 75
          Height = 280
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          ColCount = 7
          Constraints.MinHeight = 59
          DrawingStyle = gdsClassic
          RowCount = 20
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
            #44553#50668#44228
            #48708#44553#50668#54665#50948
            #48708#44553#50668#51116#47308
            #48708#44553#50668#44228)
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
          Look = glSoft
          MouseActions.SizeFixedCol = True
          MouseActions.SizeFixedRow = True
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
          ShowDesignHelper = False
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
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
      end
    end
    object pnlDetail: TPanel
      Left = 83
      Top = 1
      Width = 467
      Height = 824
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlDetail'
      ShowCaption = False
      TabOrder = 1
      object Splitter1: TAdvSplitter
        Left = 0
        Top = 348
        Width = 467
        Height = 5
        Cursor = crVSplit
        Hint = '1'
        Align = alTop
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        Persist.Enable = True
        Persist.Key = '.\db.ini'
        Persist.Section = 'jumgumSplit4'
        ShowHint = True
        ExplicitLeft = 3
        ExplicitTop = 323
      end
      object AdvSplitter4: TAdvSplitter
        Left = 0
        Top = 269
        Width = 467
        Height = 5
        Cursor = crVSplit
        Hint = '1'
        Align = alTop
        ResizeStyle = rsNone
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        Persist.Enable = True
        Persist.Key = '.\db.ini'
        Persist.Section = 'jumgumSplit4'
        ShowHint = True
        ExplicitLeft = 16
        ExplicitTop = 268
      end
      object pnlButton: TAdvPanel
        Left = 0
        Top = 0
        Width = 467
        Height = 46
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = 14408667
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.Height = 25
        Caption.Indent = 0
        Caption.TopIndent = 5
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object lblJubsuID: TLabel
          Left = 128
          Top = 12
          Width = 74
          Height = 21
          Caption = 'lblJubsuID'
          Visible = False
        end
        object btnSave: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 0
          OnClick = btnSaveClick
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 353
        Width = 467
        Height = 471
        Align = alClient
        Caption = 'Panel4'
        ShowCaption = False
        TabOrder = 1
        object Splitter2: TAdvSplitter
          Left = 1
          Top = 192
          Width = 465
          Height = 5
          Cursor = crVSplit
          Hint = '2'
          Align = alBottom
          Appearance.BorderColor = clNone
          Appearance.BorderColorHot = clNone
          Appearance.Color = clWhite
          Appearance.ColorTo = clSilver
          Appearance.ColorHot = clWhite
          Appearance.ColorHotTo = clGray
          GripStyle = sgDots
          Persist.Enable = True
          Persist.Key = '.\db.ini'
          Persist.Section = 'jumgumSplit5'
          ShowHint = True
          ExplicitTop = 431
          ExplicitWidth = 463
        end
        object Panel5: TPanel
          Left = 1
          Top = 197
          Width = 465
          Height = 273
          Align = alBottom
          Caption = 'Panel5'
          ShowCaption = False
          TabOrder = 0
          object AdvSplitter2: TAdvSplitter
            Left = 1
            Top = 126
            Width = 463
            Height = 3
            Cursor = crVSplit
            Hint = '3'
            Align = alBottom
            Appearance.BorderColor = clNone
            Appearance.BorderColorHot = clNone
            Appearance.Color = clWhite
            Appearance.ColorTo = clSilver
            Appearance.ColorHot = clWhite
            Appearance.ColorHotTo = clGray
            GripStyle = sgDots
            ShowHint = True
            ExplicitLeft = -7
            ExplicitTop = 161
          end
          object pnlSangByung: TAdvPanel
            Left = 1
            Top = 129
            Width = 463
            Height = 143
            Align = alBottom
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UseDockManager = True
            Version = '2.5.7.9'
            Caption.Color = 14408667
            Caption.ColorTo = clNone
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clWindowText
            Caption.Font.Height = -16
            Caption.Font.Name = #47569#51008' '#44256#46357
            Caption.Font.Style = []
            Caption.Height = 28
            Caption.Indent = 0
            Caption.Text = #49345#48337
            Caption.TopIndent = 3
            Caption.Visible = True
            DoubleBuffered = True
            Position.Save = True
            Position.Key = '.\gridset\chunggu_position_set.ini'
            Position.Section = 'desies'
            Position.Location = clInifile
            StatusBar.Font.Charset = DEFAULT_CHARSET
            StatusBar.Font.Color = clWindowText
            StatusBar.Font.Height = -11
            StatusBar.Font.Name = 'Tahoma'
            StatusBar.Font.Style = []
            Text = ''
            TextVAlign = tvaCenter
            TopIndent = 2
            FullHeight = 100
            object grdSangByung: TAdvStringGrid
              Left = 1
              Top = 27
              Width = 461
              Height = 115
              Cursor = crDefault
              Align = alClient
              ColCount = 19
              DefaultRowHeight = 28
              DrawingStyle = gdsClassic
              FixedCols = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
              ParentFont = False
              PopupMenu = PopupMenu5
              ScrollBars = ssBoth
              TabOrder = 0
              OnKeyDown = grdSangByungKeyDown
              HoverRowCells = [hcNormal, hcSelected]
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ColumnHeaders.Strings = (
                #51452#49345#48337
                'Jin_Order'
                'p1    '
                'p2    '
                'p3      '
                'p4     '
                #49345#48337#53076#46300
                's_key2 '
                's_key3 '
                #44284#47785
                #49345#48337#47749' '
                'sang2   '
                'sang3  '
                #45812#45817#51032
                #47732#54728#48264#54840
                #53945#51221#44592#54840
                #49884#51089#51068
                #51333#47308#51068
                'ID')
              ColumnSize.Save = True
              ColumnSize.Key = '.\gridset\gridset__ChungGu_desease.ini'
              ColumnSize.Section = 'grdSangByung'
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
              FixedColWidth = 45
              FixedRowHeight = 28
              FixedRowAlways = True
              FixedFont.Charset = ANSI_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -16
              FixedFont.Name = #47569#51008' '#44256#46357
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HoverButtons.Position = hbLeftFromColumnLeft
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              Look = glSoft
              MouseActions.SizeFixedCol = True
              MouseActions.SizeFixedRow = True
              Navigation.AllowInsertRow = True
              Navigation.AlwaysEdit = True
              Navigation.AdvanceInsert = True
              Navigation.AppendOnArrowDown = True
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
              ShowSelection = False
              ShowModified.Enabled = True
              ShowModified.Color = 16744448
              ShowDesignHelper = False
              SortSettings.DefaultFormat = ssAutomatic
              Version = '8.4.4.1'
              ExplicitLeft = 0
              ExplicitTop = 25
              ColWidths = (
                45
                59
                26
                23
                23
                26
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
              object clbSangByung: TCheckListBox
                Left = 43
                Top = 40
                Width = 165
                Height = 100
                ItemHeight = 21
                Items.Strings = (
                  '')
                TabOrder = 4
                Visible = False
              end
            end
            object btnLoadSangByung: TButton
              Left = 48
              Top = 2
              Width = 29
              Height = 23
              Hint = 'F2'#47196' '#49345#48337#44160#49353#52285' '#46916#50864#44592
              Caption = '+'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnLoadSangByungClick
            end
          end
          object pnlTeakJung: TAdvPanel
            Left = 1
            Top = 1
            Width = 463
            Height = 125
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UseDockManager = True
            Version = '2.5.7.9'
            CanMove = True
            CanSize = True
            Caption.Color = 14408667
            Caption.ColorTo = clNone
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clWindowText
            Caption.Font.Height = -16
            Caption.Font.Name = #47569#51008' '#44256#46357
            Caption.Font.Style = []
            Caption.Height = 28
            Caption.Indent = 0
            Caption.Text = #53945#51221#45236#50669
            Caption.TopIndent = 5
            Caption.Visible = True
            DoubleBuffered = True
            Position.Save = True
            Position.Key = '.\gridset\chunggu_position_set.ini'
            Position.Section = 'neyuk'
            Position.Location = clInifile
            StatusBar.Font.Charset = DEFAULT_CHARSET
            StatusBar.Font.Color = clWindowText
            StatusBar.Font.Height = -11
            StatusBar.Font.Name = 'Tahoma'
            StatusBar.Font.Style = []
            Text = ''
            FullHeight = 200
            object Button8: TButton
              Left = 72
              Top = 0
              Width = 41
              Height = 33
              Caption = #52628#44032
              TabOrder = 0
              OnClick = Button8Click
            end
            object Button17: TButton
              Left = 119
              Top = 0
              Width = 41
              Height = 33
              Caption = #49688#51221
              TabOrder = 1
              Visible = False
            end
            object Button20: TButton
              Left = 176
              Top = -1
              Width = 75
              Height = 34
              Caption = #51200#51109
              TabOrder = 2
              Visible = False
              OnClick = Button20Click
            end
            object grdNeyuk: TAdvStringGrid
              Left = 1
              Top = 27
              Width = 461
              Height = 97
              Cursor = crDefault
              Align = alClient
              ColCount = 10
              DefaultRowHeight = 28
              DrawingStyle = gdsClassic
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = #47569#51008' '#44256#46357
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
              ParentFont = False
              PopupMenu = PopupMenu3
              ScrollBars = ssBoth
              TabOrder = 3
              HoverRowCells = [hcNormal, hcSelected]
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ColumnHeaders.Strings = (
                ''
                #48156#49373#45800#50948
                #52376#48169#53076#46300
                #51460#48264#54840
                #44396#48516#53076#46300
                #45236#50669
                #51089#49457#51068
                #49324#50857#51088'ID'
                'TJungID'
                'Jin_sKey')
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
                'Clear')
              FixedColWidth = 22
              FixedRowHeight = 28
              FixedRowAlways = True
              FixedFont.Charset = ANSI_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -16
              FixedFont.Name = #47569#51008' '#44256#46357
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HoverButtons.Position = hbLeftFromColumnLeft
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              Look = glSoft
              MouseActions.SizeFixedCol = True
              MouseActions.SizeFixedRow = True
              Navigation.AllowInsertRow = True
              Navigation.AdvanceInsert = True
              Navigation.InsertPosition = pInsertAfter
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
              ShowDesignHelper = False
              SortSettings.DefaultFormat = ssAutomatic
              Version = '8.4.4.1'
              ExplicitHeight = 248
              ColWidths = (
                22
                55
                56
                42
                64
                108
                64
                64
                64
                64)
            end
            object CheckBox3: TCheckBox
              Left = 384
              Top = 8
              Width = 97
              Height = 17
              Caption = #51088#46041#51077#47141
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
          end
        end
        object pnlTx: TAdvPanel
          Left = 1
          Top = 1
          Width = 465
          Height = 191
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UseDockManager = True
          Version = '2.5.7.9'
          Caption.Color = 14408667
          Caption.ColorTo = clNone
          Caption.Font.Charset = ANSI_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -16
          Caption.Font.Name = #47569#51008' '#44256#46357
          Caption.Font.Style = []
          Caption.Height = 28
          Caption.Indent = 0
          Caption.Text = #52376#48169
          Caption.TopIndent = 5
          Caption.Visible = True
          DoubleBuffered = True
          Position.Save = True
          Position.Key = '.\gridset\chunggu_position_set.ini'
          Position.Section = 'tx'
          Position.Location = clInifile
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          Text = ''
          TextVAlign = tvaCenter
          TopIndent = 2
          FullHeight = 200
          object wLabel38: TLabel
            Left = 205
            Top = 5
            Width = 52
            Height = 17
            Caption = #48372#54744#44396#48516
            Color = 15987441
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
          object Button25: TButton
            Left = 40
            Top = 0
            Width = 41
            Height = 25
            Caption = '+'
            TabOrder = 0
            OnClick = Button25Click
          end
          object dtDate: TDateTimePicker
            Left = 87
            Top = 0
            Width = 112
            Height = 29
            Date = 40136.000000000000000000
            Time = 0.563465520826866900
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
          end
          object cbJong: TComboBox
            Left = 263
            Top = 0
            Width = 129
            Height = 29
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            ParentFont = False
            TabOrder = 2
            TabStop = False
            Text = #44148#44053#48372#54744
            Items.Strings = (
              #44148#44053#48372#54744)
          end
          object grdJx2: TAdvStringGrid
            Left = 1
            Top = 27
            Width = 463
            Height = 163
            Cursor = crDefault
            Align = alClient
            ColCount = 33
            DefaultRowHeight = 29
            DrawingStyle = gdsClassic
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
            PopupMenu = PopupMenu4
            ScrollBars = ssBoth
            TabOrder = 3
            OnKeyDown = grdJx2KeyDown
            HoverRowCells = [hcNormal, hcSelected]
            OnGetCellColor = grdJx2GetCellColor
            OnClickCell = grdJx2ClickCell
            OnButtonClick = grdJx2ButtonClick
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              #44396#48516
              #47749#52845
              #45800#44032
              '1'#54924#53804#50668#47049
              #54943#49688
              #51068#49688
              #44552#50529
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
              'Jin_day'
              #51652#47308#49884#44036
              'su_eng_name'
              #50696#50808#53076#46300
              'DrugInfo'
              'Su_SobulRu'
              #53945#51221#45236#50669#44396#48516#53076#46300
              'Su_gu2'
              'DELETE'
              'GroupKey')
            ColumnSize.Save = True
            ColumnSize.Key = '.\gridset\gridset_jx.ini'
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
            FixedRowHeight = 29
            FixedRowAlways = True
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -16
            FixedFont.Name = #47569#51008' '#44256#46357
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glSoft
            MouseActions.DisjunctRowSelect = True
            MouseActions.EditOnDblClickOnly = True
            MouseActions.RangeSelectAndEdit = True
            MouseActions.SizeFixedCol = True
            MouseActions.SizeFixedRow = True
            Navigation.AlwaysEdit = True
            Navigation.AdvanceAutoEdit = False
            Navigation.CursorWalkAlwaysEdit = False
            Navigation.LeftRightRowSelect = False
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
            ShowFocusedSelectionColor = False
            SortSettings.DefaultFormat = ssAutomatic
            VAlignment = vtaCenter
            Version = '8.4.4.1'
            ExplicitLeft = -221
            ExplicitTop = 22
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
            object clbJinryoHx: TCheckListBox
              Left = 30
              Top = 37
              Width = 165
              Height = 100
              ItemHeight = 21
              Items.Strings = (
                '')
              TabOrder = 4
              Visible = False
            end
            object ListBox2: TListBox
              Left = 672
              Top = 32
              Width = 115
              Height = 74
              ItemHeight = 21
              TabOrder = 5
              Visible = False
            end
          end
          object Button26: TButton
            Left = 408
            Top = 0
            Width = 41
            Height = 25
            Caption = 'Sum'
            TabOrder = 4
            OnClick = Button26Click
          end
        end
      end
      object pnlSummary2: TAdvPanel
        Left = 0
        Top = 46
        Width = 467
        Height = 149
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = 14408667
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = []
        Caption.Height = 28
        Caption.Indent = 0
        Caption.Text = #52397#44396#51221#48372
        Caption.TopIndent = 5
        Caption.Visible = True
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object lblMyungSeSeoNo: TLabel
          Left = 3
          Top = 75
          Width = 96
          Height = 21
          Caption = #47749#49464#49436#48264#54840' : '
        end
        object lblName: TLabel
          Left = 3
          Top = 25
          Width = 42
          Height = 21
          Caption = #49457#47749' :'
        end
        object lblKiho: TLabel
          Left = 3
          Top = 98
          Width = 90
          Height = 21
          Caption = #49324#50629#51109#48264#54840' :'
        end
        object lblKNumber: TLabel
          Left = 3
          Top = 52
          Width = 64
          Height = 21
          Caption = #51613#48264#54840' : '
        end
        object lblSangName: TLabel
          Left = 3
          Top = 122
          Width = 80
          Height = 21
          Caption = #51452#49345#48337#47749' : '
        end
        object lblAge: TLabel
          Left = 328
          Top = 52
          Width = 48
          Height = 21
          Caption = 'lblAge'
        end
        object Label3: TLabel
          Left = 280
          Top = 52
          Width = 42
          Height = 21
          Caption = #45208#51060' :'
        end
        object lblChart: TLabel
          Left = 360
          Top = 25
          Width = 57
          Height = 21
          Caption = 'lblChart'
        end
        object Label5: TLabel
          Left = 280
          Top = 25
          Width = 74
          Height = 21
          Caption = #48337#47197#48264#54840' :'
        end
        object Label1: TLabel
          Left = 88
          Top = 3
          Width = 74
          Height = 21
          Caption = #51652#47308#51068#51088' :'
        end
        object lbljinday: TLabel
          Left = 168
          Top = 3
          Width = 61
          Height = 21
          Caption = 'lbljinday'
        end
      end
      object pnlChungMemo: TAdvPanel
        Left = 0
        Top = 274
        Width = 467
        Height = 74
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = 14408667
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = []
        Caption.Height = 28
        Caption.Indent = 0
        Caption.Text = #49900#49324#52397#44396#47700#47784
        Caption.TopIndent = 5
        Caption.Visible = True
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object memChungGuMemo: TRichEdit
          Left = 1
          Top = 27
          Width = 465
          Height = 46
          Align = alClient
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Lines.Strings = (
            'memChungGuMemo')
          ParentFont = False
          TabOrder = 0
          Zoom = 100
          OnClick = memChungGuMemoClick
          OnContextPopup = memChungGuMemoContextPopup
        end
      end
      object pnlDoctorsNote: TAdvPanel
        Left = 0
        Top = 195
        Width = 467
        Height = 74
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = 14408667
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = []
        Caption.Height = 28
        Caption.Indent = 0
        Caption.Text = 'Dr'#39's Note'
        Caption.TopIndent = 5
        Caption.Visible = True
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object lblTreatRoom: TLabel
          Left = 1
          Top = 27
          Width = 465
          Height = 21
          Align = alTop
          Caption = 'lblTreatRoom'
          Visible = False
          ExplicitWidth = 100
        end
        object lblPiDate: TLabel
          Left = 126
          Top = 4
          Width = 65
          Height = 21
          Caption = 'lblPiDate'
          Visible = False
        end
        object memDrsNote: TRichEdit
          Left = 1
          Top = 48
          Width = 465
          Height = 25
          Align = alClient
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          Zoom = 100
          OnClick = memChungGuMemoClick
          OnContextPopup = memChungGuMemoContextPopup
        end
        object edtCC: TRichEdit
          Tag = 111
          Left = 34
          Top = 39
          Width = 462
          Height = 50
          Color = clWhite
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Lines.Strings = (
            'edtCC')
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          Visible = False
          Zoom = 100
        end
      end
    end
  end
  object AdvOfficeStatusBar1: TAdvOfficeStatusBar
    Left = 0
    Top = 826
    Width = 1363
    Height = 19
    AnchorHint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'yyyy/MM/dd'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'AMPM h:mm:ss'
        Width = 80
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'yyyy/MM/dd'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'AMPM h:mm:ss'
        Width = 100
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'yyyy/MM/dd'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'AMPM h:mm:ss'
        Width = 130
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'yyyy/MM/dd'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'AMPM h:mm:ss'
        Width = 50
      end>
    ShowSplitter = True
    SimplePanel = False
    UseSystemFont = False
    Version = '1.6.3.0'
  end
  object pnlLeft1: TPanel
    Left = 0
    Top = 0
    Width = 267
    Height = 826
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 5
    object pnlHospInfo: TAdvPanel
      Left = 0
      Top = 0
      Width = 267
      Height = 71
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = 14408667
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #50836#50577#44592#44288#48143' '#52397#44396#51221#48372
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object EllipsLabel9: TLabel
        Left = 17
        Top = 29
        Width = 66
        Height = 11
        Alignment = taRightJustify
        Caption = #50836#50577#44592#44288#44592#54840
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel10: TLabel
        Left = 50
        Top = 50
        Width = 33
        Height = 11
        Alignment = taRightJustify
        Caption = #50896#51109#47749
        Transparent = True
      end
      object EllipsLabel11: TLabel
        Left = 39
        Top = 76
        Width = 44
        Height = 11
        Alignment = taRightJustify
        Caption = #51452#48124#48264#54840
        Transparent = True
      end
      object edtYoyangKiho: TEdit
        Left = 91
        Top = 25
        Width = 121
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edtYoyangKiho'
        OnExit = edtYoyangKihoExit
      end
      object edtWonjangname: TEdit
        Left = 91
        Top = 45
        Width = 121
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'edtWonjangname'
        OnExit = edtYoyangKihoExit
      end
      object edtJumin: TEdit
        Left = 91
        Top = 69
        Width = 121
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 2
        Text = 'edtJumin'
        OnExit = edtYoyangKihoExit
      end
      object pnlJuminCheck: TPanel
        Left = 225
        Top = 25
        Width = 81
        Height = 41
        BevelOuter = bvNone
        Color = 16744448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        object lblJuminCheck: TLabel
          Left = -7
          Top = 3
          Width = 79
          Height = 11
          Alignment = taCenter
          Caption = 'lblJuminCheck'
          WordWrap = True
        end
      end
    end
    object pgInfo: TPageControl
      Left = 0
      Top = 196
      Width = 267
      Height = 630
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 1
      OnChange = pgInfoChange
      object TabSheet1: TTabSheet
        Caption = #51312#54924
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 432
          Width = 253
          Height = 96
          Align = alTop
          Caption = #44060#51064#48324' '#51312#54924
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Label6: TLabel
            Left = 15
            Top = 24
            Width = 64
            Height = 16
            Caption = #52264#53944#48264#54840
          end
          object Label10: TLabel
            Left = 40
            Top = 50
            Width = 171
            Height = 36
            AutoSize = False
            Caption = #8251#52264#53944#48264#54840#44032' '#51077#47141#46104#50612#51080#51004#47732' '#13#10#52264#53944#48264#54840#51032' '#54872#51088' '#51221#48372#47564#13#10#51312#54924#46121#45768#45796'.'
            Font.Charset = ANSI_CHARSET
            Font.Color = 12615680
            Font.Height = -12
            Font.Name = #46027#50880
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object edtChart: TEdit
            Left = 85
            Top = 20
            Width = 165
            Height = 24
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            OnKeyPress = edtChartKeyPress
          end
          object CheckBox4: TCheckBox
            Left = 107
            Top = 76
            Width = 111
            Height = 17
            Caption = #51060#50612#49436' '#44160#49353
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 144
          Width = 253
          Height = 113
          Align = alTop
          Caption = #52397#44396' '#51333#47448
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object cb1: TRadioButton
            Left = 14
            Top = 20
            Width = 123
            Height = 17
            Caption = #44148#44053#48372#54744
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object cb2: TRadioButton
            Left = 14
            Top = 43
            Width = 123
            Height = 17
            Caption = #51032#47308#44553#50668
            TabOrder = 1
          end
          object cb4: TRadioButton
            Left = 14
            Top = 91
            Width = 123
            Height = 17
            Caption = #49328#51116
            TabOrder = 2
            TabStop = True
          end
          object cb3: TRadioButton
            Left = 14
            Top = 68
            Width = 123
            Height = 17
            Caption = #51088#46041#52264#48372#54744
            TabOrder = 3
            TabStop = True
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 253
          Height = 81
          Align = alTop
          Caption = #52397#44396' '#44592#44036
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object EllipsLabel1: TLabel
            Left = 87
            Top = 27
            Width = 16
            Height = 16
            Caption = #45380
            Transparent = True
          end
          object EllipsLabel2: TLabel
            Left = 159
            Top = 27
            Width = 16
            Height = 16
            Caption = #50900
            Transparent = True
          end
          object EllipsLabel3: TLabel
            Left = 144
            Top = 58
            Width = 28
            Height = 16
            Caption = #51068'~'
            Transparent = True
          end
          object EllipsLabel4: TLabel
            Left = 231
            Top = 58
            Width = 16
            Height = 16
            Caption = #51068
            Transparent = True
          end
          object cbYear: TAdvComboBox
            Left = 13
            Top = 23
            Width = 68
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
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
            TabOrder = 0
            Text = '2012'
            OnChange = cbMonthChange
          end
          object cbMonth: TAdvComboBox
            Left = 109
            Top = 23
            Width = 44
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropDownCount = 12
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = -1
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 1
            Text = '05'
            OnChange = cbMonthChange
          end
          object cbDay1: TAdvComboBox
            Left = 93
            Top = 54
            Width = 45
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropDownCount = 31
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = -1
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 2
            Text = '01'
          end
          object cbDay2: TAdvComboBox
            Left = 180
            Top = 54
            Width = 45
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropDownCount = 31
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = -1
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 3
            Text = '31'
          end
        end
        object GroupBox7: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 534
          Width = 253
          Height = 90
          Align = alTop
          Caption = #51312#54924'/'#51216#44160
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          object btnLoadJinryoData: TButton
            AlignWithMargins = True
            Left = 5
            Top = 21
            Width = 243
            Height = 64
            Align = alClient
            Caption = #51652#47308' '#51088#47308' '#51312#54924' '#48143' '#51077#47141' '#50724#47448#51216#44160
            TabOrder = 0
            WordWrap = True
            OnClick = btnLoadJinryoDataClick
          end
        end
        object GroupBox8: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 90
          Width = 253
          Height = 48
          Align = alTop
          Caption = #51652#47308' '#44396#48516
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 4
          object cbGubunOut: TRadioButton
            Left = 13
            Top = 20
            Width = 97
            Height = 17
            Caption = #50808#47000
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object cbGubunIn: TRadioButton
            Left = 125
            Top = 20
            Width = 77
            Height = 17
            Caption = #51077#50896
            TabOrder = 1
            TabStop = True
          end
        end
        object cbJinchal: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 630
          Width = 253
          Height = 17
          Align = alTop
          Caption = #51652#52272#47308' '#45347#44592
          TabOrder = 5
        end
        object GroupBox9: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 263
          Width = 253
          Height = 163
          Align = alTop
          Caption = #49900#49324' '#44396#48516
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 6
          object cbSimsaAll: TRadioButton
            Left = 14
            Top = 28
            Width = 123
            Height = 17
            Caption = #51204#52404
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object cbSimsaEnd: TRadioButton
            Left = 13
            Top = 103
            Width = 123
            Height = 17
            Caption = #49900#49324#50756#47308
            TabOrder = 1
          end
          object cbSimsaExcept: TRadioButton
            Left = 13
            Top = 130
            Width = 123
            Height = 17
            Caption = #49900#49324#51228#50808
            TabOrder = 2
            TabStop = True
          end
          object cbBowan: TRadioButton
            Left = 15
            Top = 51
            Width = 123
            Height = 17
            Caption = #48372#50756
            TabOrder = 3
            TabStop = True
          end
          object cbNurak: TRadioButton
            Left = 15
            Top = 74
            Width = 123
            Height = 17
            Caption = #45572#46973
            TabOrder = 4
            TabStop = True
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #49569#49888
        ImageIndex = 1
        object rgChungGubun: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 100
          Width = 253
          Height = 98
          Align = alTop
          Caption = #52397#44396#44396#48516
          Color = 15655129
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #50896#52397#44396
            #48372#50756#52397#44396
            #52628#44032#52397#44396
            #48516#47532#52397#44396
            #45572#46973#52397#44396)
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          OnClick = rgChungGubunClick
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 253
          Height = 91
          Align = alTop
          Caption = #52397#44396' '#51221#48372
          Color = 15655129
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object EllipsLabel8: TLabel
            Left = 13
            Top = 28
            Width = 64
            Height = 16
            Alignment = taRightJustify
            Caption = #52397#44396#48264#54840
            Transparent = True
          end
          object EllipsLabel6: TLabel
            Left = 13
            Top = 58
            Width = 64
            Height = 16
            Alignment = taRightJustify
            Caption = #52397#44396#47588#52404
            Transparent = True
            Visible = False
          end
          object cbChungNo: TAdvComboBox
            Left = 84
            Top = 25
            Width = 157
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #51088#46041#51613#44032
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '')
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 0
            Text = #51088#46041#51613#44032
          end
          object cbChungGuMethod: TAdvComboBox
            Left = 84
            Top = 55
            Width = 157
            Height = 24
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
              #49900#54217#50896' '#52397#44396#54252#53448
              'KT EDI')
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 1
            Text = #49900#54217#50896' '#52397#44396#54252#53448
          end
        end
        object GroupBox5: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 204
          Width = 253
          Height = 194
          Align = alTop
          Caption = #51088#47308#49373#49457'/'#51216#44160
          Color = 15655129
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object btnChungGuDataCreate: TButton
            AlignWithMargins = True
            Left = 5
            Top = 21
            Width = 243
            Height = 40
            Align = alTop
            Caption = #9312' '#49569#49888#50857' '#51088#47308' '#49373#49457
            TabOrder = 0
            OnClick = btnChungGuDataCreateClick
          end
          object btnSamCheck: TButton
            AlignWithMargins = True
            Left = 5
            Top = 67
            Width = 243
            Height = 36
            Align = alTop
            Caption = #9313' '#54028#51068#51216#44160
            TabOrder = 1
            OnClick = btnSamCheckClick
          end
          object Button7: TButton
            AlignWithMargins = True
            Left = 5
            Top = 132
            Width = 243
            Height = 42
            Align = alTop
            Caption = #50724#47448#51312#54924
            TabOrder = 2
            OnClick = Button7Click
          end
          object cbCheckSend: TCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 109
            Width = 243
            Height = 17
            Align = alTop
            Caption = #51216#44160' '#54980' '#51593#49884' '#49569#49888
            TabOrder = 3
            OnClick = cbCheckSendClick
          end
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 404
          Width = 253
          Height = 100
          Align = alTop
          Caption = #49569#49888
          Color = 15655129
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          object cbPreExam: TCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 21
            Width = 243
            Height = 17
            Align = alTop
            Caption = #49324#51204#51216#44160#49569#49888'('#44428#51109#49324#54637')'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object CheckBox1: TCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 44
            Width = 243
            Height = 17
            Align = alTop
            Caption = #49345#49884#51216#44160
            TabOrder = 1
            Visible = False
          end
          object btnSend: TButton
            AlignWithMargins = True
            Left = 5
            Top = 70
            Width = 243
            Height = 25
            Align = alBottom
            Caption = #49569#49888
            TabOrder = 2
            OnClick = btnSendClick
          end
        end
        object CheckBox2: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 510
          Width = 253
          Height = 17
          Align = alTop
          Caption = #52397#44396#54028#51068' '#49373#49457#44600#51060' '#50724#47448' '#54644#44208
          Color = 15655129
          ParentColor = False
          TabOrder = 4
        end
      end
      object TabSheet4: TTabSheet
        Caption = #53685#48372#49436
        ImageIndex = 3
        object EllipsLabel13: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 248
          Width = 253
          Height = 16
          Align = alTop
          Caption = #47749#49464#49436#48264#54840
          Transparent = True
          ExplicitWidth = 80
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 3
          Top = 93
          Width = 253
          Height = 39
          Align = alTop
          Caption = #52397#44396#54028#51068' '#49436#49885#51312#54924
          TabOrder = 0
          WordWrap = True
          OnClick = Button4Click
        end
        object Button15: TButton
          AlignWithMargins = True
          Left = 3
          Top = 48
          Width = 253
          Height = 39
          Align = alTop
          Caption = #53685#48372#49436'  '#48372#44592
          TabOrder = 1
          WordWrap = True
          OnClick = Button15Click
        end
        object Button16: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 253
          Height = 39
          Align = alTop
          Caption = #53685#48372#49436'  '#49688#49888
          TabOrder = 2
          WordWrap = True
          OnClick = Button16Click
        end
        object cbMyungNo: TComboBox
          AlignWithMargins = True
          Left = 3
          Top = 270
          Width = 253
          Height = 24
          Align = alTop
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 3
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 3
          Top = 199
          Width = 253
          Height = 43
          Align = alTop
          Caption = #52397#44396#54028#51068' '#48520#47084#50724#44592
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button30: TButton
          Left = 0
          Top = 470
          Width = 259
          Height = 41
          Align = alTop
          Caption = #47749#49464#49436' '#48520#47084#50724#44592
          TabOrder = 5
          OnClick = Button30Click
        end
        object GroupBox11: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 300
          Width = 253
          Height = 48
          Align = alTop
          Caption = #51652#47308' '#44396#48516
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 6
          object RadioButton1: TRadioButton
            Left = 13
            Top = 20
            Width = 97
            Height = 17
            Caption = #50808#47000
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 125
            Top = 20
            Width = 77
            Height = 17
            Caption = #51077#50896
            TabOrder = 1
            TabStop = True
          end
        end
        object GroupBox12: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 354
          Width = 253
          Height = 113
          Align = alTop
          Caption = #52397#44396' '#51333#47448
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 7
          object RadioButton3: TRadioButton
            Left = 14
            Top = 20
            Width = 123
            Height = 17
            Caption = #44148#44053#48372#54744
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 14
            Top = 43
            Width = 123
            Height = 17
            Caption = #51032#47308#44553#50668
            TabOrder = 1
          end
          object RadioButton5: TRadioButton
            Left = 14
            Top = 91
            Width = 123
            Height = 17
            Caption = #49328#51116
            TabOrder = 2
            TabStop = True
          end
          object RadioButton6: TRadioButton
            Left = 14
            Top = 68
            Width = 123
            Height = 17
            Caption = #51088#46041#52264#48372#54744
            TabOrder = 3
            TabStop = True
          end
        end
        object GroupBox13: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 138
          Width = 253
          Height = 55
          Align = alTop
          Caption = #52397#44396' '#44592#44036
          Color = 16379361
          ParentBackground = False
          ParentColor = False
          TabOrder = 8
          object Label14: TLabel
            Left = 87
            Top = 27
            Width = 16
            Height = 16
            Caption = #45380
            Transparent = True
          end
          object Label15: TLabel
            Left = 159
            Top = 27
            Width = 16
            Height = 16
            Caption = #50900
            Transparent = True
          end
          object cbYear1: TAdvComboBox
            Left = 13
            Top = 23
            Width = 68
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
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
            TabOrder = 0
            Text = '2012'
            OnChange = cbMonthChange
          end
          object cbMonth1: TAdvComboBox
            Left = 109
            Top = 23
            Width = 44
            Height = 24
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropDownCount = 12
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = -1
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 1
            Text = '05'
            OnChange = cbMonthChange
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #54872#44221#49444#51221
        ImageIndex = 2
        object Button13: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 253
          Height = 39
          Align = alTop
          Caption = #54872#44221#49444#51221
          TabOrder = 0
          OnClick = Button13Click
        end
        object Button14: TButton
          AlignWithMargins = True
          Left = 3
          Top = 48
          Width = 253
          Height = 39
          Align = alTop
          Caption = #47196#44536#48372#44592
          TabOrder = 1
          OnClick = Button14Click
        end
        object Button1: TButton
          Left = 0
          Top = 178
          Width = 85
          Height = 25
          Caption = 'reSummary'
          TabOrder = 2
          Visible = False
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 5
          Top = 208
          Width = 70
          Height = 25
          Caption = 'reSummary_'#51088#48372
          TabOrder = 3
          Visible = False
          OnClick = Button1Click
        end
        object Button18: TButton
          Left = 5
          Top = 148
          Width = 75
          Height = 25
          Caption = 'Button18'
          TabOrder = 4
          Visible = False
          OnClick = Button18Click
        end
      end
    end
    object pnlTerm2: TPanel
      Left = 0
      Top = 71
      Width = 267
      Height = 35
      Align = alTop
      Color = 16379361
      ParentBackground = False
      TabOrder = 2
      object Label7: TLabel
        Left = 1
        Top = 1
        Width = 70
        Height = 33
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = #52397#44396#44592#44036
        Layout = tlCenter
        ExplicitLeft = -5
        ExplicitTop = -4
      end
      object lblTerm: TLabel
        Left = 71
        Top = 1
        Width = 195
        Height = 33
        Align = alClient
        Alignment = taCenter
        Caption = '2017'#45380' 09'#50900
        Font.Charset = ANSI_CHARSET
        Font.Color = 4194432
        Font.Height = -24
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 143
        ExplicitHeight = 24
      end
    end
    object pnlTerm: TPanel
      Left = 0
      Top = 106
      Width = 267
      Height = 90
      Align = alTop
      Color = 16379361
      ParentBackground = False
      TabOrder = 3
      object lblStat: TLabel
        Left = 5
        Top = 0
        Width = 47
        Height = 21
        Alignment = taCenter
        Caption = 'lblStat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object AdvProgressBar1: TAdvProgressBar
        Left = 1
        Top = 71
        Width = 265
        Height = 18
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Level0ColorTo = 14811105
        Level1ColorTo = 13303807
        Level2Color = 5483007
        Level2ColorTo = 11064319
        Level3ColorTo = 13290239
        Level1Perc = 70
        Level2Perc = 90
        Position = 0
        Rounded = False
        ShowBorder = True
        Version = '1.3.1.0'
        ExplicitWidth = 239
      end
    end
  end
  object pnlTop1: TPanel
    Left = 322
    Top = 0
    Width = 485
    Height = 826
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 6
    object pnlSummary: TAdvPanel
      Left = 0
      Top = 0
      Width = 485
      Height = 176
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = 14408667
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #52397#44396' '#50836#50557
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object grdsummary: TAdvStringGrid
        Left = 71
        Top = 40
        Width = 1010
        Height = 229
        Cursor = crDefault
        ColCount = 13
        DefaultRowHeight = 28
        DrawingStyle = gdsClassic
        FixedCols = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goThumbTracking]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grdsummaryGetAlignment
        OnGetFormat = grdsummaryGetFormat
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #44148#49688
          #52509#51652#47308#48708
          #48376#51064#48512#45812#44552
          #52397#44396#50529
          #52264#46321#52397#44396#50529
          ''
          ''
          #44148#49688
          #52509#51652#47308#48708
          ''
          #52264#46321#51648#49688
          '1.000000')
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
        FixedColWidth = 127
        FixedRowHeight = 28
        FixedRowAlways = True
        FixedFont.Charset = ANSI_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -16
        FixedFont.Name = #47569#51008' '#44256#46357
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        MouseActions.SizeFixedCol = True
        MouseActions.SizeFixedRow = True
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
          127
          59
          120
          113
          111
          110
          7
          64
          64
          102
          7
          64
          64)
      end
      object AdvStringGrid2: TAdvStringGrid
        Left = 24
        Top = 24
        Width = 313
        Height = 153
        Cursor = crDefault
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        Visible = False
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
      end
    end
    object pnlMain: TAdvPanel
      Left = 0
      Top = 176
      Width = 485
      Height = 229
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = 14408667
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.TopIndent = 3
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 300
      object ProgressBar: TAdvProgressBar
        Left = 497
        Top = 5
        Width = 258
        Height = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Level0ColorTo = 14811105
        Level1ColorTo = 13303807
        Level2Color = 5483007
        Level2ColorTo = 11064319
        Level3ColorTo = 13290239
        Level1Perc = 70
        Level2Perc = 90
        Position = 50
        ShowBorder = True
        Version = '1.3.1.0'
        Visible = False
      end
      object grdMain: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 483
        Height = 182
        Cursor = crDefault
        Align = alTop
        ColCount = 62
        Ctl3D = True
        DefaultRowHeight = 28
        DrawingStyle = gdsClassic
        RowCount = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving, goEditing]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu2
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = grdMainGetCellColor
        OnGetAlignment = grdMainGetAlignment
        OnFilterDone = grdMainFilterDone
        OnRowChanging = grdMainRowChanging
        OnClickSort = grdMainClickSort
        OnClickCell = grdMainClickCell
        OnDblClickCell = grdMainDblClickCell
        OnCheckBoxClick = grdMainCheckBoxClick
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          #48264#54840
          'Check'
          #48337#47197#48264#54840
          #49457#47749
          #51652#47308#51068#51088
          #52488#51116#51652
          #51333#48324
          #45208#51060
          #51452#48124#48264#54840
          #54588#48372#54744#51088
          #51613#48264#54840
          #51312#54633#44592#54840
          #51109#50528#44396#48516
          #51652#47308#49884#44036
          #50896#50808#52376#48169#51068#47144
          #52509#51652#47308#48708
          #48376#51064#48512#45812
          #52397#44396#44552#50529
          #48708#44553#50668#48376#51064
          #49345#54644#50808#51064
          #49328#51221#53945#47168#46321#47197#48264#54840
          #44277#49345#44396#48516
          #44208#44284
          #52280#44256#49324#54637
          #49324#50976
          #47749#51068#47144
          #48376#51064#48512#45812#44396#48516
          #51652#47308#54869#51064#48264#54840
          #50689#50976#50500#44160#51652#45817#51068
          #53952#45768#48516#47532
          #51221#50984'/'#51221#50529
          #52488#51116#53076#46300
          #51333#48324#53076#46300
          #51109#50528#44592#44552
          #51652#52272#47308'(jubsuak)'
          #50896#50808#53945#51221#44396#48516
          #50896#50808#53945#51221#45236#50669
          #53945#51221#45236#50669'(T_jung)'
          #45812#45817#51032#47749
          #47732#54728#48264#54840
          #51088#48372#49324
          #49324#44256#51217#49688#48264#54840
          #51648#44553#48372#51613#48264#54840
          #51076#54540#46976#53944#46321#47197#48264#54840'1'
          #51076#54540#46976#53944#46321#47197#48264#54840'2'
          #47749#51068#47144#48264#54840
          'iOrder'
          'isAI'
          'iaKind'
          'isPregnan'
          'isInPat'
          'Jubsu_id'
          'doc_code'
          'treatRoom'
          'simsa'
          '100/100'#48120#47564' '#52509#50529
          '100/100'#48120#47564' '#48376#45812
          '100/100'#48120#47564' '#52397#44396#50529
          #50836#50577#44553#50668#52509'1'
          #51077#50896#49884#44036
          #53748#50896#49884#44036
          #49328#51221#53945#47168#51201#50857'(1=true)')
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'jumgumMain'
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
        FilterDropDownAuto = True
        FilterDropDownClear = '(All)'
        FilterDropDownCheck = True
        FilterDropDownColumns = fdAll
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 60
        FixedRowHeight = 28
        FixedRowAlways = True
        FixedFont.Charset = ANSI_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -16
        FixedFont.Name = #47569#51008' '#44256#46357
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        MouseActions.FixedColsEdit = fceRightClick
        MouseActions.SizeFixedCol = True
        MouseActions.SizeFixedRow = True
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
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.IndexShow = True
        Version = '8.4.4.1'
        ColWidths = (
          60
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
          64
          64
          64
          64
          64
          64
          78
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
          131
          121
          88
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
          64)
        object RichEdit1: TRichEdit
          Left = 40
          Top = 48
          Width = 89
          Height = 73
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'RichEdit1')
          ParentFont = False
          TabOrder = 4
          Visible = False
          Zoom = 100
        end
      end
      object Button5: TButton
        Tag = 1
        Left = 1
        Top = 0
        Width = 88
        Height = 21
        Caption = #51204#52404#49440#53469'/'#54644#51228
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button12: TButton
        Left = 95
        Top = 0
        Width = 86
        Height = 18
        Caption = 'Excel'#51200#51109
        TabOrder = 2
        OnClick = Button12Click
      end
      object Button32: TButton
        Left = 184
        Top = 0
        Width = 65
        Height = 18
        Caption = #50676' '#44256#51221
        TabOrder = 3
        OnClick = Button32Click
      end
      object Button33: TButton
        Left = 255
        Top = 0
        Width = 74
        Height = 18
        Caption = #50676' '#44256#51221' '#54644#51228
        TabOrder = 4
        OnClick = Button33Click
      end
      object Button34: TButton
        Left = 343
        Top = 0
        Width = 106
        Height = 18
        Caption = #47749#51068#47144#48264#54840' '#51200#51109
        TabOrder = 5
      end
    end
    object grdJx_jinchal: TAdvStringGrid
      Left = 0
      Top = 405
      Width = 485
      Height = 421
      Cursor = crDefault
      Align = alClient
      ColCount = 31
      DefaultRowHeight = 28
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving, goEditing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
      Visible = False
      OnKeyDown = grdJx2KeyDown
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdJx2GetCellColor
      OnClickCell = grdJx2ClickCell
      OnButtonClick = grdJx2ButtonClick
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        #44396#48516
        #47749#52845
        #45800#44032
        '1'#54924#53804#50668#47049
        #54943#49688
        #51068#49688
        #44552#50529
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
        'Jin_day'
        #51652#47308#49884#44036
        'su_eng_name'
        #50696#50808#53076#46300
        'DrugInfo'
        'Su_SobulRu'
        #53945#51221#45236#50669#44396#48516#53076#46300
        'Su_gu2')
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\gridset_jx_jumgum.ini'
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
      FixedRowHeight = 28
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -16
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
      Navigation.AlwaysEdit = True
      Navigation.AdvanceAutoEdit = False
      Navigation.CursorWalkAlwaysEdit = False
      Navigation.LeftRightRowSelect = False
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
      ShowFocusedSelectionColor = False
      SortSettings.DefaultFormat = ssAutomatic
      VAlignment = vtaCenter
      Version = '8.4.4.1'
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
        64
        64
        64
        64
        64
        64
        64
        64
        64)
      object CheckListBox1: TCheckListBox
        Left = 29
        Top = 3
        Width = 132
        Height = 41
        ItemHeight = 21
        Items.Strings = (
          '')
        TabOrder = 4
        Visible = False
      end
      object ListBox3: TListBox
        Left = 649
        Top = 64
        Width = 115
        Height = 74
        ItemHeight = 21
        TabOrder = 5
        Visible = False
      end
    end
  end
  object AdvPanel5: TAdvPanel
    Left = 329
    Top = 406
    Width = 341
    Height = 158
    TabOrder = 2
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = 14408667
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = #46027#50880
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = 'Jinryo_o'
    Caption.TopIndent = 3
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object ListBox1: TListBox
      Left = 1
      Top = 19
      Width = 339
      Height = 65
      Align = alTop
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object grdJinO: TAdvStringGrid
      Left = 1
      Top = 84
      Width = 339
      Height = 73
      Cursor = crDefault
      Align = alClient
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 2
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
      ShowDesignHelper = False
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
        22)
    end
  end
  object AdvPanel6: TAdvPanel
    Left = 330
    Top = 559
    Width = 476
    Height = 106
    TabOrder = 4
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = 14408667
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = #46027#50880
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #48372#50756' '#48143' '#52628#44032#52397#44396
    Caption.TopIndent = 3
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
      Top = 60
      Width = 474
      Height = 45
      Cursor = crDefault
      Align = alClient
      DrawingStyle = gdsClassic
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
    object Panel1: TPanel
      Left = 1
      Top = 19
      Width = 474
      Height = 41
      Align = alTop
      TabOrder = 1
      object Button9: TButton
        Left = 10
        Top = 10
        Width = 116
        Height = 25
        Caption = #50641#49472#54028#51068' '#48520#47084#50724#44592
        TabOrder = 0
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 140
        Top = 10
        Width = 75
        Height = 25
        Caption = #45236#48372#45236#44592
        TabOrder = 1
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 225
        Top = 10
        Width = 75
        Height = 25
        Caption = 'close'
        TabOrder = 2
        Visible = False
        OnClick = Button11Click
      end
    end
  end
  object pnlBowan: TAdvPanel
    Left = 487
    Top = 621
    Width = 294
    Height = 95
    TabOrder = 3
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = 14408667
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = #46027#50880
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #48372#50756#52397#44396#51221#48372
    Caption.TopIndent = 3
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object Label8: TLabel
      Left = 12
      Top = 28
      Width = 112
      Height = 16
      Alignment = taRightJustify
      Caption = #47749#49464#49436#51217#49688#48264#54840
    end
    object Label9: TLabel
      Left = 28
      Top = 65
      Width = 96
      Height = 16
      Alignment = taRightJustify
      Caption = #49900#49324#48520#45733#53076#46300
    end
    object edtJubsuno: TEdit
      Left = 133
      Top = 24
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'edtJubsuno'
    end
    object edtSimsaBulCode: TEdit
      Left = 133
      Top = 59
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
      Text = 'edtSimsaBulCode'
    end
  end
  object pnlJagyuk: TAdvPanel
    Left = 639
    Top = 396
    Width = 301
    Height = 176
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #46027#50880
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    Caption.Color = 14408667
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #51088#44201#48320#46041
    Caption.TopIndent = 3
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object Label11: TLabel
      Left = 80
      Top = 25
      Width = 36
      Height = 12
      Caption = #48320#44221#51204
    end
    object Label12: TLabel
      Left = 200
      Top = 25
      Width = 36
      Height = 12
      Caption = #48320#44221#54980
    end
    object EllipsLabel5: TLabel
      Left = 16
      Top = 53
      Width = 45
      Height = 15
      Cursor = crHandPoint
      Caption = #51613'  '#48264' '#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel7: TLabel
      Left = 16
      Top = 108
      Width = 48
      Height = 15
      Cursor = crHandPoint
      Caption = #51312#54633#44592#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel12: TLabel
      Left = 16
      Top = 80
      Width = 48
      Height = 15
      Cursor = crHandPoint
      Caption = #54588#48372#54744#51088
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtJungNo: TAdvEdit
      Left = 78
      Top = 52
      Width = 83
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16381427
      DisabledBorder = False
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
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3287342
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'edtJungNo'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtGiho: TAdvEdit
      Left = 78
      Top = 104
      Width = 83
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16381427
      DisabledBorder = False
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
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3287342
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = 'edtGiho'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtgaip: TAdvEdit
      Left = 78
      Top = 79
      Width = 83
      Height = 20
      DefaultHandling = True
      EmptyText = #44032#51077#51088' '#50630#51020
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16645114
      DisabledBorder = False
      ShowModified = True
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
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 3287342
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = 'edtgaip'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtJungNo2: TAdvEdit
      Left = 198
      Top = 52
      Width = 83
      Height = 18
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16381427
      DisabledBorder = False
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
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 3287342
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = 'edtJungNo'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtgaip2: TAdvEdit
      Left = 198
      Top = 79
      Width = 83
      Height = 18
      DefaultHandling = True
      EmptyText = #44032#51077#51088' '#50630#51020
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16645114
      DisabledBorder = False
      ShowModified = True
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
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 3287342
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = 'edtgaip'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtGiho2: TAdvEdit
      Left = 198
      Top = 104
      Width = 83
      Height = 18
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16381427
      DisabledBorder = False
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
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 3287342
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = 'edtGiho'
      Visible = True
      Version = '3.4.9.0'
    end
    object Button6: TButton
      Left = 205
      Top = 135
      Width = 75
      Height = 25
      Caption = #51201#50857
      TabOrder = 6
      OnClick = Button6Click
    end
  end
  object pnlSuga: TAdvPanel
    Left = 919
    Top = 562
    Width = 516
    Height = 438
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #46027#50880
    Font.Style = []
    ParentFont = False
    TabOrder = 8
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
    Caption.Font.Height = -13
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #51600#44200#52286#44592
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object lstGroupTemp: TListBox
      Left = 32
      Top = 197
      Width = 145
      Height = 100
      ItemHeight = 12
      TabOrder = 0
    end
    object pgFavorite: TPageControl
      Left = 0
      Top = 18
      Width = 516
      Height = 420
      ActivePage = TabSheet6
      Align = alClient
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = #47926#51020#52376#48169
        object grdGroupCode: TAdvStringGrid
          Left = 0
          Top = 33
          Width = 508
          Height = 359
          Cursor = crDefault
          Align = alClient
          ColCount = 4
          DrawingStyle = gdsClassic
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ScrollBars = ssBoth
          ShowHint = True
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          OnDblClickCell = grdGroupCodeDblClickCell
          HintShowCells = True
          HintShowLargeText = True
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            'Group Code'
            'Group Name'
            'Sect')
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\gridset_grdGroupCode.ini'
          ColumnSize.Section = 'groupCode'
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
          MouseActions.SizeFixedCol = True
          Multilinecells = True
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          WordWrap = False
          ColWidths = (
            32
            93
            133
            39)
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
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 508
          Height = 33
          Align = alTop
          Caption = 'Panel4'
          ShowCaption = False
          TabOrder = 1
          object Label2: TLabel
            Left = 1
            Top = 7
            Width = 48
            Height = 12
            Caption = #44160#49353#45800#50612
          end
          object edtGroupOrderValue: TEdit
            Left = 59
            Top = 2
            Width = 142
            Height = 20
            Hint = #53076#46300#44160#49353': + '#51077#47141' / '#47749#52845#44160#49353' :'#47749#52845#51077#47141' '
            ImeMode = imSAlpha
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = 'edtGroupOrderValue'
          end
          object Button19: TButton
            Left = 224
            Top = 2
            Width = 75
            Height = 25
            Caption = #49352#47196#44256#52840
            TabOrder = 1
            OnClick = Button16Click
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = #49688#44032
        ImageIndex = 2
        object grdSuga: TAdvStringGrid
          Left = 0
          Top = 86
          Width = 508
          Height = 306
          Cursor = crDefault
          Align = alClient
          ColCount = 4
          DefaultRowHeight = 26
          DrawingStyle = gdsClassic
          RowCount = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          OnDblClickCell = grdSugaDblClickCell
          HintShowCells = True
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #49688#44032#53076#46300
            #47749#52845
            #49324#50857#51088#53076#46300)
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\gridset_suga.ini'
          ColumnSize.Section = 'gridset_suga'
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
          FixedColWidth = 32
          FixedRowHeight = 26
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
          Look = glStandard
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
            32
            80
            160
            64)
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 508
          Height = 86
          Align = alTop
          Caption = 'Panel4'
          ShowCaption = False
          TabOrder = 1
          object Label25: TLabel
            Left = 0
            Top = 61
            Width = 36
            Height = 12
            Caption = #44160#49353#50612
          end
          object edtSearchSuga: TEdit
            Left = 45
            Top = 55
            Width = 92
            Height = 20
            ImeMode = imSAlpha
            TabOrder = 0
            Text = 'edtSearchSuga'
          end
          object btnFind: TButton
            Left = 143
            Top = 55
            Width = 35
            Height = 25
            Caption = #44160#49353
            TabOrder = 1
            OnClick = btnFindClick
          end
          object RadioGroup1: TRadioGroup
            Left = 1
            Top = 1
            Width = 296
            Height = 43
            Columns = 3
            ItemIndex = 1
            Items.Strings = (
              #49688#44032#53076#46300
              #49324#50857#51088#53076#46300
              #49688#44032#47749#52845)
            TabOrder = 2
          end
          object Button21: TButton
            Tag = 1
            Left = 240
            Top = 55
            Width = 57
            Height = 25
            Caption = #51116#47308#52628#44032
            TabOrder = 3
            OnClick = Button15Click
          end
          object Button22: TButton
            Left = 303
            Top = 55
            Width = 57
            Height = 25
            Caption = #50557#51116#52628#44032
            TabOrder = 4
            OnClick = Button15Click
          end
          object Button23: TButton
            Left = 183
            Top = 55
            Width = 57
            Height = 25
            Caption = #48708#44553#52628#44032
            TabOrder = 5
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = #50557#52376#48169
        ImageIndex = 2
        object pnlDrug: TPanel
          Left = 0
          Top = 0
          Width = 508
          Height = 86
          Align = alTop
          Caption = 'Panel4'
          ShowCaption = False
          TabOrder = 0
          object Label40: TLabel
            Left = 0
            Top = 61
            Width = 36
            Height = 12
            Caption = #44160#49353#50612
          end
          object edtSearchDrug: TEdit
            Left = 45
            Top = 55
            Width = 92
            Height = 20
            ImeMode = imSAlpha
            TabOrder = 0
            Text = 'edtSearchDrug'
          end
          object btnDrugFind: TButton
            Left = 143
            Top = 55
            Width = 35
            Height = 25
            Caption = #44160#49353
            TabOrder = 1
          end
          object RadioGroup2: TRadioGroup
            Left = 1
            Top = 1
            Width = 296
            Height = 43
            Columns = 3
            ItemIndex = 1
            Items.Strings = (
              #49688#44032#53076#46300
              #49324#50857#51088#53076#46300
              #49688#44032#47749#52845)
            TabOrder = 2
          end
          object Button24: TButton
            Left = 239
            Top = 55
            Width = 57
            Height = 25
            Caption = #50557#51116#52628#44032
            TabOrder = 3
            OnClick = Button15Click
          end
        end
        object grdDrug: TAdvStringGrid
          Left = 0
          Top = 86
          Width = 508
          Height = 306
          Cursor = crDefault
          Align = alClient
          ColCount = 4
          DrawingStyle = gdsClassic
          RowCount = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 1
          HoverRowCells = [hcNormal, hcSelected]
          HintShowCells = True
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #49688#44032#53076#46300
            #47749#52845
            #49324#50857#51088#53076#46300)
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\gridset_drug.ini'
          ColumnSize.Section = 'gridset_drug'
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
          Look = glStandard
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
            32
            80
            160
            64)
          RowHeights = (
            22
            22)
        end
      end
      object TabSheet8: TTabSheet
        Caption = #44536#47353#53076#46300' '#52286#44592
        ImageIndex = 3
        object AdvSplitter9: TAdvSplitter
          Left = 0
          Top = 290
          Width = 508
          Height = 3
          Cursor = crVSplit
          Align = alTop
          MinSize = 1
          Appearance.BorderColor = clNone
          Appearance.BorderColorHot = clNone
          Appearance.Color = clWhite
          Appearance.ColorTo = clSilver
          Appearance.ColorHot = clWhite
          Appearance.ColorHotTo = clGray
          GripStyle = sgDots
          ExplicitLeft = 3
          ExplicitTop = 189
          ExplicitWidth = 301
        end
        object grdFindSuga: TAdvStringGrid
          Left = 0
          Top = 293
          Width = 508
          Height = 99
          Cursor = crDefault
          Align = alClient
          ColCount = 4
          DrawingStyle = gdsClassic
          RowCount = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 2
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #49324#50857#51088#53076#46300
            #49688#44032#47749#52845
            #49688#44032#53076#46300)
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset.ini'
          ColumnSize.Section = 'grdFindSuga'
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
          ShowDesignHelper = False
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ExplicitWidth = 372
          ExplicitHeight = 238
          ColWidths = (
            32
            86
            114
            64)
          RowHeights = (
            22)
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 508
          Height = 90
          Align = alTop
          Caption = 'Panel7'
          ShowCaption = False
          TabOrder = 0
          object edtFindGroupCode: TEdit
            Left = 3
            Top = 59
            Width = 167
            Height = 20
            ImeMode = imSAlpha
            TabOrder = 0
            Text = 'edtFindGroupCode'
          end
          object btnGroupCodeFind: TButton
            Left = 176
            Top = 59
            Width = 81
            Height = 21
            Caption = #44160#49353
            TabOrder = 1
          end
          object rgGroupSugaFind: TRadioGroup
            Left = 3
            Top = 5
            Width = 254
            Height = 48
            Caption = #53076#46300#44396#48516' '#49440#53469
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              #49324#50857#51088#53076#46300
              #49688#44032#53076#46300)
            TabOrder = 2
          end
        end
        object grdFindGroup: TAdvStringGrid
          Left = 0
          Top = 90
          Width = 508
          Height = 200
          Cursor = crDefault
          Align = alTop
          ColCount = 4
          DrawingStyle = gdsClassic
          RowCount = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
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
            #44536#47353#53076#46300
            #44536#47353#47749#52845
            #44396#48516)
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\gridset_findgroup.ini'
          ColumnSize.Section = 'grdFindGroupCode'
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
          ShowDesignHelper = False
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ExplicitWidth = 372
          ColWidths = (
            32
            117
            114
            64)
          RowHeights = (
            22)
        end
      end
      object TabSheet9: TTabSheet
        Caption = #51088#51452#50416#45716' '#52376#52824
        ImageIndex = 4
        object grdFavorite: TAdvStringGrid
          Left = 0
          Top = 33
          Width = 508
          Height = 359
          Cursor = crDefault
          Align = alClient
          DrawingStyle = gdsClassic
          RowCount = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #48324#52845
            #53076#46300
            'isGroup'
            'ID')
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\gridset_fovorite.ini'
          ColumnSize.Section = 'gridset_fovorite'
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
          Look = glStandard
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
          SortSettings.DefaultFormat = ssAutomatic
          SortSettings.Show = True
          Version = '8.4.4.1'
          ColWidths = (
            32
            80
            50
            27
            64)
          RowHeights = (
            22
            22)
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 508
          Height = 33
          Align = alTop
          Caption = 'Panel4'
          ShowCaption = False
          TabOrder = 1
        end
      end
    end
  end
  object pnlModSuga: TAdvPanel
    Left = 322
    Top = 402
    Width = 444
    Height = 471
    Color = clSilver
    TabOrder = 9
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = #46027#50880
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Text = #49688#44032' '#48320#44221
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object gbBefore: TGroupBox
      Left = 20
      Top = 41
      Width = 400
      Height = 90
      Caption = #48320#44221' '#51204' '#49688#44032
      TabOrder = 0
      object Label4: TLabel
        Left = 25
        Top = 37
        Width = 52
        Height = 17
        Alignment = taRightJustify
        Caption = #49688#44032#53076#46300
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object lblBefName: TLabel
        Left = 51
        Top = 60
        Width = 26
        Height = 17
        Caption = #47749#52845
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object edtBeforeCode: TEdit
        Left = 83
        Top = 33
        Width = 214
        Height = 23
        Color = 15988981
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544')'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object Button27: TButton
        Left = 303
        Top = 28
        Width = 74
        Height = 25
        Caption = #44160#49353
        TabOrder = 1
        OnClick = Button4Click
      end
    end
    object gbAfter: TGroupBox
      Left = 20
      Top = 137
      Width = 400
      Height = 90
      Caption = #48320#44221' '#54980' '#49688#44032
      TabOrder = 1
      object Label13: TLabel
        Left = 25
        Top = 41
        Width = 52
        Height = 17
        Alignment = taRightJustify
        Caption = #49688#44032#53076#46300
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object lblAftName: TLabel
        Left = 54
        Top = 64
        Width = 26
        Height = 17
        Caption = #47749#52845
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object edtAfterCode: TEdit
        Left = 83
        Top = 36
        Width = 214
        Height = 23
        Color = 15988981
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544')'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object Button28: TButton
        Left = 303
        Top = 34
        Width = 74
        Height = 25
        Caption = #44160#49353
        TabOrder = 1
        OnClick = Button5Click
      end
    end
    object Button29: TButton
      Left = 192
      Top = 409
      Width = 75
      Height = 33
      Caption = #52712#49548
      TabOrder = 2
      OnClick = Button29Click
    end
    object Button31: TButton
      Left = 288
      Top = 409
      Width = 129
      Height = 33
      Caption = #48320#44221' '#49884#51089
      TabOrder = 3
      OnClick = Button31Click
    end
    object rgKind: TRadioGroup
      Left = 24
      Top = 238
      Width = 397
      Height = 65
      Caption = #48320#44221' '#48276#50948
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #50668#44592#47564' '#51201#50857
        #44592#44036' '#52380#52404' '#51201#50857)
      TabOrder = 4
      OnClick = rgKindClick
    end
    object GroupBox10: TGroupBox
      Left = 24
      Top = 320
      Width = 393
      Height = 65
      Caption = #48320#44221' '#44592#44036
      TabOrder = 5
      Visible = False
      object dtStart: TDateTimePicker
        Left = 35
        Top = 25
        Width = 129
        Height = 24
        Date = 43756.000000000000000000
        Time = 0.711144270833756300
        TabOrder = 0
      end
      object dtFinish: TDateTimePicker
        Left = 240
        Top = 25
        Width = 129
        Height = 24
        Date = 43756.000000000000000000
        Time = 0.711144270833756300
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 24
      Top = 400
      Width = 113
      Height = 33
      Caption = 'Panel2'
      Color = 12615680
      ParentBackground = False
      TabOrder = 6
      Visible = False
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = AdvStringGrid1
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 288
    Top = 213
  end
  object OpenDialog1: TOpenDialog
    Left = 765
    Top = 245
  end
  object AdvGridExcelIO2: TAdvGridExcelIO
    AdvStringGrid = grdMain
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 805
    Top = 89
  end
  object SaveDialog1: TSaveDialog
    Left = 813
    Top = 136
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\gridset\chunggu_position_set.ini'
    SaveKey = 'jumgum_f'
    Version = '1.4.1.4'
    Left = 685
    Top = 69
  end
  object PopupMenu1: TPopupMenu
    Left = 1062
    Top = 101
    object N1: TMenuItem
      Caption = #51088#44201#51312#54924
      OnClick = N1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N9: TMenuItem
      Caption = #48372#54840#49849#51064#48264#54840
      OnClick = N9Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 441
    Top = 243
    object N4: TMenuItem
      Tag = 1
      Caption = #49900#49324#50756#47308
      OnClick = N4Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Tag = 4
      Caption = #48372#50756
      OnClick = N4Click
    end
    object N14: TMenuItem
      Tag = 5
      Caption = #45572#46973
      OnClick = N4Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Tag = 3
      Caption = #52397#44396#50640#49436' '#51228#50808
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #52488#44592#54868
      OnClick = N4Click
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object N17: TMenuItem
      Caption = #51652#47308#54869#51064#48264#54840' '#51200#51109
      OnClick = N17Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 981
    Top = 578
    object N7: TMenuItem
      Caption = #49688#51221' '#51200#51109
      OnClick = N7Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 1121
    Top = 419
    object N11: TMenuItem
      Caption = #49688#44032' '#44368#54872
      OnClick = N11Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object MenuItem1: TMenuItem
      Caption = #46321#47197' '#51221#48372
      OnClick = MenuItem1Click
    end
  end
  object PopupMenu5: TPopupMenu
    Left = 906
    Top = 747
    object N12: TMenuItem
      Caption = #51452#49345#48337' '#54644#51228
      OnClick = N12Click
    end
  end
end
