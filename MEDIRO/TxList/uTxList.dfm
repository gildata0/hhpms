object txList_f: TtxList_f
  Left = 0
  Top = 0
  Caption = 'txList_f'
  ClientHeight = 839
  ClientWidth = 1433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1433
    Height = 97
    Align = alTop
    Caption = 'pnlTop'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      1433
      97)
    object lblJuso: TLabel
      Left = 46
      Top = 52
      Width = 643
      Height = 13
      AutoSize = False
      Caption = #51452#49548' :'
    end
    object Label1: TLabel
      Left = 11
      Top = 52
      Width = 29
      Height = 13
      Caption = #51452#49548' :'
    end
    object Label2: TLabel
      Left = 11
      Top = 71
      Width = 51
      Height = 13
      Caption = #51312#54633#44592#54840' :'
    end
    object lblJohap: TLabel
      Left = 68
      Top = 71
      Width = 44
      Height = 13
      Caption = #51312#54633#44592#54840
    end
    object Label3: TLabel
      Left = 283
      Top = 71
      Width = 37
      Height = 13
      Caption = #51613#48264#54840':'
    end
    object lblJungNo: TLabel
      Left = 333
      Top = 71
      Width = 33
      Height = 13
      Caption = #51613#48264#54840
    end
    object lblFrom: TLabel
      Left = 633
      Top = 20
      Width = 12
      Height = 21
      Caption = '~'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtname: TAdvEdit
      Left = 11
      Top = 17
      Width = 109
      Height = 29
      Hint = #51060#47492#44160#49353' = '#51060#47492' ('#51473#44036#50612')  '#51077#47141' '#54980' '#50644#53552' '
      BorderColor = clSilver
      DefaultHandling = True
      EmptyText = #54620#44544#49457#47749
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = clSilver
      FocusColor = clBtnFace
      SoftBorder = True
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
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HintShowLargeText = True
      ImeMode = imSHanguel
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'edtname'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtChart: TAdvEdit
      Left = 126
      Top = 17
      Width = 123
      Height = 29
      BorderColor = clSilver
      DefaultHandling = True
      EmptyText = #52264#53944#48264#54840
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = clBtnFace
      SoftBorder = True
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
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = 'edtChart'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtJumin: TAdvEdit
      Left = 270
      Top = 17
      Width = 109
      Height = 29
      BorderColor = clSilver
      DefaultHandling = True
      EmptyText = #51452#48124'No'#50526
      EmptyTextFocused = True
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
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 6
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = 'edtJumin'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtJumin2: TAdvEdit
      Left = 385
      Top = 17
      Width = 116
      Height = 29
      BorderColor = clSilver
      DefaultHandling = True
      EditType = etPassword
      EmptyText = #51452#48124'No'#46244
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16381427
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
      BevelKind = bkSoft
      BevelOuter = bvNone
      CanUndo = False
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 7
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 3
      Text = 'edtJumin'
      Visible = True
      Version = '3.4.9.0'
    end
    object dpSdate: TDateTimePicker
      Left = 507
      Top = 17
      Width = 120
      Height = 29
      Date = 40127.000000000000000000
      Time = 0.493366608789074200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 4
    end
    object dpfDate: TDateTimePicker
      Left = 651
      Top = 17
      Width = 118
      Height = 29
      Date = 40127.000000000000000000
      Time = 0.493454861112695700
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 5
    end
    object Button1: TButton
      Left = 778
      Top = 17
      Width = 75
      Height = 29
      Caption = #44160#49353
      TabOrder = 6
      OnClick = Button1Click
    end
    object btnPrint: TButton
      Left = 903
      Top = 16
      Width = 75
      Height = 29
      Caption = #52636#47141
      TabOrder = 7
      OnClick = btnPrintClick
    end
    object cbPreview: TCheckBox
      Left = 984
      Top = 22
      Width = 97
      Height = 17
      Caption = #48120#47532#48372#44592
      TabOrder = 8
    end
    object Button2: TButton
      Left = 1344
      Top = 18
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #51652#47308#49688#51221
      TabOrder = 9
    end
  end
  object pnlBody: TPanel
    Left = 8
    Top = 117
    Width = 1121
    Height = 675
    BevelOuter = bvNone
    Caption = 'pnlBody'
    TabOrder = 1
    object Splitter1: TAdvSplitter
      Left = 350
      Top = 0
      Width = 5
      Height = 675
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitLeft = 351
      ExplicitTop = 1
      ExplicitHeight = 408
    end
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 350
      Height = 675
      Align = alLeft
      Caption = 'pnlLeft'
      TabOrder = 0
      object Splitter2: TAdvSplitter
        Left = 1
        Top = 364
        Width = 348
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
        ExplicitTop = 270
      end
      object Splitter3: TAdvSplitter
        Left = 1
        Top = 113
        Width = 348
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitTop = 180
      end
      object pnlChamgo: TAdvPanel
        Left = 1
        Top = 369
        Width = 348
        Height = 305
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.Indent = 0
        Caption.Text = #53945#51060#49324#54637
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
        object reRemark: TRichEdit
          Left = 32
          Top = 32
          Width = 177
          Height = 73
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Lines.Strings = (
            'reRemark')
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          Zoom = 100
        end
      end
      object pnlNewon: TAdvPanel
        Left = 1
        Top = 1
        Width = 348
        Height = 112
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -13
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = [fsBold]
        Caption.Indent = 0
        Caption.Text = #45236#50896#51221#48372
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
        object grdHx: TAdvStringGrid
          Left = 0
          Top = 18
          Width = 348
          Height = 94
          Cursor = crDefault
          Align = alClient
          ColCount = 15
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          OnGetCellBorder = grdHxGetCellBorder
          OnClickCell = grdHxClickCell
          OnDblClickCell = grdHxDblClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #51060#47492
            #51652#47308#51068#51088
            #48337#47197#48264#54840
            #51452#48124#48264#54840
            #51652#47308#44284#47785
            #48372#54744#50976#54805
            #52488#51116#51652
            #51077'/'#50808
            #45812#45817#51032
            #51217#49688#49884#44036
            #51652#47308#50756#47308#49884#44036
            #49324#50629#52404#44592#54840
            #51613#48264#54840
            #51217#49688#48264#54840)
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
          ColumnSize.Section = 'TxHx'
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
          ExplicitLeft = -5
          ExplicitTop = 17
          ColWidths = (
            32
            64
            94
            87
            64
            64
            64
            64
            64
            64
            70
            88
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
          object grdCopy: TAdvStringGrid
            Left = 37
            Top = 42
            Width = 348
            Height = 79
            Cursor = crDefault
            ColCount = 15
            DrawingStyle = gdsClassic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 4
            Visible = False
            HoverRowCells = [hcNormal, hcSelected]
            OnClickCell = grdHxClickCell
            OnDblClickCell = grdHxDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              ''
              #51060#47492
              #51652#47308#51068#51088
              #48337#47197#48264#54840
              #51452#48124#48264#54840
              #51652#47308#44284#47785
              #48372#54744#50976#54805
              #52488#51116#51652
              #51077'/'#50808
              #45812#45817#51032
              #51217#49688#49884#44036
              #51652#47308#50756#47308#49884#44036
              #49324#50629#52404#44592#54840
              #51613#48264#54840
              #51217#49688#48264#54840)
            ColumnSize.Save = True
            ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
            ColumnSize.Section = 'TxHx'
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
            ColWidths = (
              32
              64
              94
              87
              64
              64
              64
              64
              64
              64
              70
              88
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
      end
      object pnlWonweNumber: TAdvPanel
        Left = 1
        Top = 118
        Width = 348
        Height = 246
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -13
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = [fsBold]
        Caption.Indent = 0
        Caption.Text = #44368#48512#48264#54840
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
        object grdChubangHx: TAdvStringGrid
          Left = 0
          Top = 18
          Width = 348
          Height = 228
          Cursor = crDefault
          Align = alClient
          ColCount = 6
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          OnGetCellBorder = grdHxGetCellBorder
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #44368#48512#51068#51088
            #44368#48512#48264#54840
            #54872#51088#49457#47749
            #48337#47197#48264#54840
            #51452#48124#46321#47197#48264#54840)
          ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
          ColumnSize.Section = 'NoHx'
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ExplicitLeft = -5
          ExplicitTop = 17
          ColWidths = (
            32
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
    end
    object pnlRight: TPanel
      Left = 393
      Top = 0
      Width = 728
      Height = 675
      Align = alRight
      Caption = 'pnlRight'
      TabOrder = 1
      object Splitter4: TAdvSplitter
        Left = 1
        Top = 369
        Width = 726
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
        ExplicitTop = 843
        ExplicitWidth = 503
      end
      object Splitter6: TAdvSplitter
        Left = 1
        Top = 125
        Width = 726
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Appearance.BorderColor = clNone
        Appearance.BorderColorHot = clNone
        Appearance.Color = clWhite
        Appearance.ColorTo = clSilver
        Appearance.ColorHot = clWhite
        Appearance.ColorHotTo = clGray
        GripStyle = sgDots
        ExplicitWidth = 503
      end
      object pnlWonNe: TAdvPanel
        Left = 1
        Top = 1
        Width = 726
        Height = 124
        Align = alTop
        BevelOuter = bvNone
        Constraints.MinHeight = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -13
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = [fsBold]
        Caption.Indent = 0
        Caption.Text = #50896#45236#52376#48169
        Caption.TopIndent = 2
        Caption.Visible = True
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 300
        object grdWonNe: TAdvStringGrid
          Left = 0
          Top = 18
          Width = 726
          Height = 106
          Cursor = crDefault
          Align = alClient
          ColCount = 10
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          OnGetCellBorder = grdHxGetCellBorder
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #45236#50896#51068
            #52376#48169#51068
            #54637#47785
            #53076#46300
            #47749#52845
            #52509#53804
            #54943#49688
            #51068#49688
            #44552#50529
            #44553#50668#44396#48516
            #52376#48169#45236#50669
            '')
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
          ColumnSize.Section = 'WonneList'
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
            32
            83
            83
            40
            40
            37
            53
            151
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
      object pnlWonweList: TAdvPanel
        Left = 1
        Top = 130
        Width = 726
        Height = 239
        Align = alClient
        BevelOuter = bvNone
        Constraints.MinHeight = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -13
        Caption.Font.Name = #47569#51008' '#44256#46357
        Caption.Font.Style = [fsBold]
        Caption.Indent = 0
        Caption.Text = #50896#50808#52376#48169
        Caption.TopIndent = 2
        Caption.Visible = True
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 300
        object grdWonew: TAdvStringGrid
          Left = 0
          Top = 18
          Width = 726
          Height = 221
          Cursor = crDefault
          Align = alClient
          ColCount = 8
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          OnGetCellBorder = grdHxGetCellBorder
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #53076#46300
            #47749#52845
            #52509#53804
            #54943#49688
            #51068#49688
            #50857#48277
            #44553#50668#44396#48516)
          ColumnSize.Save = True
          ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
          ColumnSize.Section = 'WonweList'
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
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
            32
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
      object pnlSangByungCC: TPanel
        Left = 1
        Top = 374
        Width = 726
        Height = 300
        Align = alBottom
        Caption = 'pnlSangByungCC'
        Constraints.MinHeight = 100
        TabOrder = 2
        object Splitter5: TAdvSplitter
          Left = 313
          Top = 1
          Width = 5
          Height = 298
          Appearance.BorderColor = clNone
          Appearance.BorderColorHot = clNone
          Appearance.Color = clWhite
          Appearance.ColorTo = clSilver
          Appearance.ColorHot = clWhite
          Appearance.ColorHotTo = clGray
          GripStyle = sgDots
          ExplicitLeft = 121
          ExplicitHeight = 5
        end
        object pnlSangByung: TAdvPanel
          Left = 318
          Top = 1
          Width = 407
          Height = 298
          Align = alClient
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UseDockManager = True
          Version = '2.5.7.9'
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = ANSI_CHARSET
          Caption.Font.Color = clWhite
          Caption.Font.Height = -13
          Caption.Font.Name = #47569#51008' '#44256#46357
          Caption.Font.Style = [fsBold]
          Caption.Indent = 0
          Caption.Text = #49345#48337
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
          object grdSangByung: TAdvStringGrid
            Left = 0
            Top = 18
            Width = 407
            Height = 280
            Cursor = crDefault
            Align = alClient
            ColCount = 4
            DrawingStyle = gdsClassic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            HoverRowCells = [hcNormal, hcSelected]
            OnGetCellBorder = grdHxGetCellBorder
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              ''
              #53076#46300
              #47749#52845
              #51068#51088)
            ColumnSize.Save = True
            ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
            ColumnSize.Section = 'SangByung'
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
            SortSettings.DefaultFormat = ssAutomatic
            Version = '8.4.4.1'
            ColWidths = (
              32
              93
              198
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
        object pnlCC: TAdvPanel
          Left = 1
          Top = 1
          Width = 312
          Height = 298
          Align = alLeft
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UseDockManager = True
          Version = '2.5.7.9'
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = ANSI_CHARSET
          Caption.Font.Color = clWhite
          Caption.Font.Height = -13
          Caption.Font.Name = #47569#51008' '#44256#46357
          Caption.Font.Style = [fsBold]
          Caption.Indent = 0
          Caption.Text = #51613#49345
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
          object reCC: TRichEdit
            Left = 9
            Top = 32
            Width = 177
            Height = 73
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            Lines.Strings = (
              'reCC')
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            Zoom = 100
          end
          object grdCC: TAdvStringGrid
            Left = 1
            Top = 128
            Width = 310
            Height = 170
            Cursor = crDefault
            ColCount = 3
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
            OnGetCellBorder = grdHxGetCellBorder
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              ''
              #51068#51088
              'C/C')
            ColumnSize.Save = True
            ColumnSize.Key = '.\gridset\JinryobiList_Hx.ini'
            ColumnSize.Section = 'CC'
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
            SortSettings.DefaultFormat = ssAutomatic
            Version = '8.4.4.1'
            ColWidths = (
              32
              93
              198)
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
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 798
    Width = 1433
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'txList_f'
    Version = '1.4.1.4'
    Left = 163
    Top = 12
  end
  object frxReport1: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43503.684004340300000000
    ReportOptions.LastChange = 43761.419899699070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1184
    Top = 90
    Datasets = <
      item
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
      end
      item
        DataSet = frxUserDataSet2
        DataSetName = 'frxUserDataSet2'
      end
      item
        DataSet = frxUserDataSet3
        DataSetName = 'frxUserDataSet3'
      end
      item
        DataSet = frxUserDataSet4
        DataSetName = 'frxUserDataSet4'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = #49457#47749
        Value = Null
      end
      item
        Name = #52264#53944#48264#54840
        Value = Null
      end
      item
        Name = #51452#48124#46321#47197#48264#54840
        Value = Null
      end
      item
        Name = #51452#49548
        Value = Null
      end
      item
        Name = #51312#54633#44592#54840
        Value = Null
      end
      item
        Name = #51613#48264#54840
        Value = Null
      end
      item
        Name = #52840#44256#49324#54637
        Value = Null
      end
      item
        Name = #48337#50896#47749
        Value = Null
      end
      item
        Name = #48337#50896#51452#49548
        Value = Null
      end
      item
        Name = #48337#50896#51204#54868
        Value = Null
      end
      item
        Name = #48337#50896#54057#49828
        Value = Null
      end
      item
        Name = #45236#50896#45236#50669
        Value = Null
      end
      item
        Name = #51613#49345
        Value = Null
      end
      item
        Name = #49345#48337#45236#50857
        Value = Null
      end
      item
        Name = #52376#48169#45236#50857
        Value = Null
      end
      item
        Name = #49688#45225#45236#50669
        Value = Null
      end
      item
        Name = 'maintitle'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.236240000000000000
        Top = 778.583180000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110236220471900000
          Height = 0.377952755905512000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#48337#50896#47749']')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#48337#50896#51452#49548']')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 45.354360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
        end
        object SysMemo3: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 45.354360000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #48156#54665#51068#49884' : ')
        end
        object BarCode1: TfrxBarCodeView
          Align = baRight
          AllowVectorExport = True
          Left = 639.110700000000000000
          Top = 7.559060000000040000
          Width = 79.000000000000000000
          Height = 34.015770000000000000
          BarType = bcCode128
          Frame.Typ = []
          HAlign = haCenter
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
        RowCount = 0
        Stretched = True
        object frxUserDataSet1val1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'jinday'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."jinday"]')
        end
        object frxUserDataSet1val2: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'code'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."code"]')
        end
        object frxUserDataSet1val3: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'hname'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."hname"]')
          VAlign = vaCenter
        end
        object frxUserDataSet1chongtu: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'chongtu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."chongtu"]')
          VAlign = vaCenter
        end
        object frxUserDataSet1hoisu: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'hoisu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."hoisu"]')
        end
        object frxUserDataSet1ilsu: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ilsu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."ilsu"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.236220470000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 268.346630000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[maintitle]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#49457#47749']')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '['#51452#48124#46321#47197#48264#54840']')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '['#51452#49548']')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '['#51312#54633#44592#54840']')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 79.370130000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '['#51613#48264#54840']')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 37.795300000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#52264#53944#48264#54840']')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 102.047244094488000000
          Width = 718.110236220471900000
          Height = 0.188976377952756000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 26.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #45812#45817#51032)
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 659.527985000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #49436#47749)
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frxUserDataSet2
        DataSetName = 'frxUserDataSet2'
        RowCount = 0
        object frxUserDataSet2val1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val1'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val1"]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #45236#50896#51068#51088' :')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #51652#47308#44284#47785' :')
        end
        object frxUserDataSet2val2: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val2'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val2"]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #45812#45817#51032' :')
        end
        object frxUserDataSet2val3: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val3'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val3"]')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #48372#54744#50976#54805' :')
        end
        object frxUserDataSet2val4: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val4'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val4"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #49324#50629#52404#44592#54840' :')
        end
        object frxUserDataSet2val5: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val5'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val5"]')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #51613#48264#54840' :')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #52488#51116#51652#44396#48516' :')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #51217#49688#49884#44036' :')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 45.354360000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            #51652#47308#50756#47308#49884#44036' :')
        end
        object frxUserDataSet2val6: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val6'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val6"]')
        end
        object frxUserDataSet2val7: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val7'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val7"]')
        end
        object frxUserDataSet2val8: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val8'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val8"]')
        end
        object frxUserDataSet2val9: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val9'
          DataSet = frxUserDataSet2
          DataSetName = 'frxUserDataSet2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet2."val9"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        Condition = #52376#48169#45236#50857
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '<'#52376#48169#45236#50857'>')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #51068#51088'/'#44368#48512#48264#54840)
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #52376#48169#53076#46300)
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #52376#48169#47749#52845)
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 22.677180000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #50857#47049)
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54943#49688)
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068#49688)
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #50857#48277)
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 718.110236220471900000
          Height = 0.377952760000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Condition = #45236#50896#45236#50669
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '<'#45236#50896#45236#50669'>')
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        Condition = #51613#49345
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '<'#51613#49345'>')
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = frxUserDataSet3
        DataSetName = 'frxUserDataSet3'
        RowCount = 0
        Stretched = True
        object frxUserDataSet3val1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val1'
          DataSet = frxUserDataSet3
          DataSetName = 'frxUserDataSet3'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet3."val1"]')
        end
        object frxUserDataSet3val2: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'val2'
          DataSet = frxUserDataSet3
          DataSetName = 'frxUserDataSet3'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet3."val2"]')
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        DataSet = frxUserDataSet4
        DataSetName = 'frxUserDataSet4'
        RowCount = 0
        object frxUserDataSet4val1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'val1'
          DataSet = frxUserDataSet4
          DataSetName = 'frxUserDataSet4'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet4."val1"]')
        end
        object frxUserDataSet4val2: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'val2'
          DataSet = frxUserDataSet4
          DataSetName = 'frxUserDataSet4'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet4."val2"]')
        end
        object frxUserDataSet4val3: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'val3'
          DataSet = frxUserDataSet4
          DataSetName = 'frxUserDataSet4'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet4."val3"]')
        end
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        Condition = #49345#48337#45236#50857
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '<'#49345#48337'>')
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 695.433520000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object GroupHeader5: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 650.079160000000000000
        Width = 718.110700000000000000
        Condition = #49688#45225
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '<'#49688#45225#45236#50669'>')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '-'#51060#54616' '#50668#48177'-')
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Top = 22.677179999999900000
          Width = 718.110236220471900000
          Height = 0.377952755905512000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 1272
    Top = 112
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Fields.Strings = (
      'jinday'
      'code'
      'hname'
      'chongtu'
      'hoisu'
      'ilsu')
    OnGetValue = frxUserDataSet1GetValue
    Left = 1184
    Top = 152
  end
  object frxUserDataSet2: TfrxUserDataSet
    UserName = 'frxUserDataSet2'
    Fields.Strings = (
      'val1'
      'val2'
      'val3'
      'val4'
      'val5'
      'val6'
      'val7'
      'val8'
      'val9')
    OnGetValue = frxUserDataSet2GetValue
    Left = 1184
    Top = 224
  end
  object frxUserDataSet3: TfrxUserDataSet
    UserName = 'frxUserDataSet3'
    Fields.Strings = (
      'val1'
      'val2')
    OnGetValue = frxUserDataSet3GetValue
    Left = 1184
    Top = 288
  end
  object frxUserDataSet4: TfrxUserDataSet
    UserName = 'frxUserDataSet4'
    Fields.Strings = (
      'val1'
      'val2'
      'val3')
    OnGetValue = frxUserDataSet4GetValue
    Left = 1184
    Top = 360
  end
end
