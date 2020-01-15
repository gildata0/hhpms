object misuSunap_f: TmisuSunap_f
  Left = 0
  Top = 0
  Caption = 'misuSunap_f'
  ClientHeight = 435
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter1: TAdvSplitter
    Left = 401
    Top = 59
    Height = 335
    Align = alRight
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 408
    ExplicitTop = 168
    ExplicitHeight = 100
  end
  object Panel3: TPanel
    Left = 0
    Top = 59
    Width = 401
    Height = 335
    Align = alClient
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = -3
    ExplicitTop = 61
    object grdMisu: TAdvStringGrid
      Left = 1
      Top = 6
      Width = 400
      Height = 250
      Cursor = crDefault
      ColCount = 12
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnClickSort = grdMisuClickSort
      OnClickCell = grdMisuClickCell
      OnCheckBoxClick = grdMisuCheckBoxClick
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #49440#53469
        #52264#53944#48264#54840
        #49457#47749
        #51032#47280#48337#50896
        #48120#49688#48156#49373#51068#51088
        #48120#49688#50756#45225#51068#51088
        #48120#49688#44552#50529
        'jinryo_pID'
        'jubsu_id'
        'Doc_code'
        'TreatRoom'
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
      SortSettings.Show = True
      SortSettings.IndexShow = True
      SortSettings.IgnoreBlanks = True
      SortSettings.IgnoreCase = True
      Version = '8.4.4.1'
      ColWidths = (
        32
        31
        72
        83
        94
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
  object pnlBottom: TAdvPanel
    Left = 0
    Top = 394
    Width = 628
    Height = 41
    Align = alBottom
    TabOrder = 1
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
    DoubleBuffered = False
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 41
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 289
      Height = 13
      Caption = #54872#51088#50752' '#45216#51676#47484' '#52286#50500#49436' '#53364#47533' '#54616#49888' '#54980' '#48120#49688#49688#45225#51012' '#52376#47532#54616#49464#50836'.'
      Transparent = True
    end
    object AdvProgressBar1: TAdvProgressBar
      Left = 425
      Top = 7
      Width = 186
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
      Rounded = False
      ShowBorder = True
      Version = '1.3.1.0'
    end
    object Label5: TLabel
      Left = 16
      Top = 27
      Width = 289
      Height = 13
      Caption = #49440#53469#46108' '#54872#51088#44032' '#54620#44148' '#51060#49345#51064' '#44221#50864' '#54788#44552#51004#47196' '#49688#45225#52376#47532' '#46121#45768#45796'.'
      Transparent = True
    end
  end
  object pnlTop: TAdvPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 59
    Align = alTop
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
    DoubleBuffered = False
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 41
    object lblTerm: TLabel
      Left = 14
      Top = 11
      Width = 22
      Height = 13
      Caption = #44592#44036
      Transparent = True
    end
    object lblterm2: TLabel
      Left = 151
      Top = 11
      Width = 8
      Height = 13
      Caption = '~'
      Transparent = True
    end
    object btnMisuSearch: TButton
      Left = 351
      Top = 10
      Width = 75
      Height = 25
      Caption = #44160#49353
      TabOrder = 0
      OnClick = btnMisuSearchClick
    end
    object DateTimePicker2: TDateTimePicker
      Left = 48
      Top = 8
      Width = 97
      Height = 21
      Date = 43643.000000000000000000
      Time = 0.461588935184408900
      TabOrder = 1
    end
    object DateTimePicker3: TDateTimePicker
      Left = 165
      Top = 8
      Width = 97
      Height = 21
      Date = 43643.000000000000000000
      Time = 0.461588935184408900
      TabOrder = 2
    end
    object cbWhole: TCheckBox
      Left = 272
      Top = 8
      Width = 73
      Height = 17
      Caption = #51204#52404#44592#44036
      TabOrder = 3
      OnClick = cbWholeClick
    end
    object Button2: TButton
      Left = 531
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 1
      Top = 35
      Width = 88
      Height = 18
      Caption = #51204#52404#49440#53469'/'#54644#51228
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 432
      Top = 10
      Width = 81
      Height = 25
      Caption = #44160#49353#52488#44592#54868
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object pnlBody: TAdvPanel
    Left = 404
    Top = 59
    Width = 224
    Height = 335
    Align = alRight
    TabOrder = 3
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
    DoubleBuffered = False
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    ExplicitTop = 41
    ExplicitHeight = 353
    FullHeight = 353
    object Label1: TLabel
      Left = 74
      Top = 73
      Width = 22
      Height = 13
      Caption = #49457#47749
      Transparent = True
    end
    object Label2: TLabel
      Left = 52
      Top = 51
      Width = 44
      Height = 13
      Caption = #52264#53944#48264#54840
      Transparent = True
    end
    object Label3: TLabel
      Left = 51
      Top = 27
      Width = 44
      Height = 13
      Caption = #49688#45225#51068#51088
      Transparent = True
    end
    object wLabel11: TLabel
      Left = 35
      Top = 209
      Width = 62
      Height = 17
      Alignment = taCenter
      Caption = #49688#45225'  '#44552#50529
      Color = 16770805
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
    object btnSunap: TButton
      Left = 21
      Top = 286
      Width = 100
      Height = 40
      Caption = #48120#49688#49688#45225' '#51200#51109
      TabOrder = 0
      OnClick = btnSunapClick
    end
    object edtChart: TEdit
      Left = 102
      Top = 48
      Width = 100
      Height = 21
      TabOrder = 1
      Text = 'edtChart'
      OnClick = edtChartClick
    end
    object edtName: TEdit
      Left = 102
      Top = 72
      Width = 100
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = 'edtName'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 102
      Top = 24
      Width = 100
      Height = 21
      Date = 43561.000000000000000000
      Time = 0.544406180561054500
      TabOrder = 3
    end
    object btnCard: TButton
      Left = 21
      Top = 104
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
      TabOrder = 4
    end
    object edtCard: TAdvEdit
      Left = 102
      Top = 99
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
      LabelFont.Name = 'Tahoma'
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
      TabOrder = 5
      Text = '0'
      Visible = True
      OnChange = edtCardChange
      Version = '3.4.9.0'
    end
    object lblHyunGeum: TButton
      Left = 21
      Top = 134
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
      TabOrder = 6
    end
    object edtHyun: TAdvEdit
      Tag = 1
      Left = 102
      Top = 129
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
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.ValueList.Strings = (
        'Filename=E:\_Projects\MEDIRO\sunap\umisuSunap.pas'
        'InterfaceSectionLine=2'
        'InterfaceUsesLine=4'
        'ImplementationSectionLine=68'
        'ImplementationUsesLine=69'
        'InitializationSectionLine=461')
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
      ShowHint = True
      TabOrder = 7
      Text = '0'
      Visible = True
      OnChange = edtCardChange
      Version = '3.4.9.0'
    end
    object lblTong: TButton
      Left = 21
      Top = 167
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
      TabOrder = 8
    end
    object edtTong: TAdvEdit
      Tag = 3
      Left = 102
      Top = 164
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
      LabelFont.Name = 'Tahoma'
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
      TabOrder = 9
      Text = '0'
      Visible = True
      OnChange = edtCardChange
      Version = '3.4.9.0'
    end
    object edtSunap: TAdvEdit
      Left = 103
      Top = 199
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
      LabelFont.Name = 'Tahoma'
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
      TabOrder = 10
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtTreatRoom: TEdit
      Left = 208
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'edtTreatRoom'
      Visible = False
    end
    object edtJinryoPid: TEdit
      Left = 208
      Top = 33
      Width = 121
      Height = 21
      TabOrder = 12
      Text = 'edtJinryoPid'
      Visible = False
    end
    object edtDocCode: TEdit
      Left = 208
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 13
      Text = 'edtDocCode'
      Visible = False
    end
    object Button3: TButton
      Left = 142
      Top = 286
      Width = 65
      Height = 40
      Caption = #45803#44592
      ModalResult = 1
      TabOrder = 14
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdMisu
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 201
    Top = 111
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Left = 312
    Top = 109
  end
end
