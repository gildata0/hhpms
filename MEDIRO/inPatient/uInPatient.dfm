object inPatient_f: TinPatient_f
  Left = 0
  Top = 0
  Caption = 'inPatient_f'
  ClientHeight = 535
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    Caption = #51077#50896#54872#51088' '#51204#54872
    TabOrder = 0
    object lblChart: TLabel
      Left = 24
      Top = 16
      Width = 37
      Height = 13
      Caption = 'lblChart'
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 41
    Width = 635
    Height = 50
    Align = alTop
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
    FullHeight = 50
    object lblPatInfo: TLabel
      Left = 28
      Top = 14
      Width = 98
      Height = 30
      Caption = 'lblPatInfo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 450
    Width = 635
    Height = 85
    Align = alClient
    TabOrder = 2
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
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 635
    Height = 359
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 3
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 52
      Height = 17
      Caption = #51077#50896#51068#49884
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 52
      Height = 17
      Alignment = taRightJustify
      Caption = #51652#47308#49440#53469
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
    object EllipsLabel1: TLabel
      Left = 214
      Top = 48
      Width = 52
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#51032#49324
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvStringGrid1: TAdvStringGrid
      Left = 24
      Top = 128
      Width = 588
      Height = 212
      Cursor = crDefault
      ColCount = 6
      DefaultRowHeight = 60
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
        #48337#49892#47749
        '1'
        '2'
        '3'
        '4'
        '5')
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
      FixedRowHeight = 60
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
      VAlignment = vtaCenter
      Version = '8.4.4.1'
      WordWrap = False
      ColWidths = (
        64
        64
        64
        64
        64
        64)
      RowHeights = (
        60
        60
        60
        60
        60)
    end
    object btnInpatient: TButton
      Left = 416
      Top = 6
      Width = 113
      Height = 65
      Caption = #51077#50896#51217#49688
      TabOrder = 1
      OnClick = btnInpatientClick
    end
    object btnClose: TButton
      Left = 545
      Top = 6
      Width = 75
      Height = 65
      Caption = #45803#44592
      TabOrder = 2
      OnClick = btnCloseClick
    end
    object AdvDateTimePicker1: TAdvDateTimePicker
      Left = 79
      Top = 16
      Width = 318
      Height = 21
      Date = 43420.000000000000000000
      Format = ''
      Time = 0.422546296293148800
      DoubleBuffered = True
      Kind = dkDateTime
      ParentDoubleBuffered = False
      TabOrder = 3
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 43420.422546296290000000
      Version = '1.3.4.0'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 79
      Top = 43
      Width = 129
      Height = 21
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = True
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
      EditHeight = 15
      EmptyText = #51652#47308#49892
      EmptyTextFocused = True
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
      ParentShowHint = False
      ShowHint = False
      SortColumn = 0
      TabOrder = 4
      OnSelect = cbTreatRoomSelect
    end
    object cbDoc: TColumnComboBox
      AlignWithMargins = True
      Left = 268
      Top = 43
      Width = 129
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = True
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
      EmptyText = #45812#45817#51032
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = True
      ButtonWidth = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      TabOrder = 5
    end
    object rgInPatKind: TRadioGroup
      Left = 24
      Top = 72
      Width = 373
      Height = 41
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #45230#48337#46041
        #48164#48337#46041)
      TabOrder = 6
    end
  end
end
