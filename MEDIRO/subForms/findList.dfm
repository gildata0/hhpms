object findlist_f: Tfindlist_f
  Left = 125
  Top = 154
  Caption = 'findlist_f'
  ClientHeight = 508
  ClientWidth = 1185
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdDaegi: TAdvStringGrid
    Left = 0
    Top = 52
    Width = 1185
    Height = 456
    Cursor = crDefault
    Align = alClient
    ColCount = 19
    DefaultRowHeight = 21
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goRowSelect]
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssBoth
    ShowHint = False
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnClickSort = grdDaegiClickSort
    OnCanSort = grdDaegiCanSort
    OnDblClickCell = grdDaegiDblClickCell
    OfficeHint.Title = #45824#44592#51221#48372
    OfficeHint.Notes.Strings = (
      #45824#44592#49884#44036' '#53364#47533#54616#47732' '#45824#44592#49884#44036' '#50504#48372#51076'.'
      #51217#49688#49884#44036' '#53364#47533#54616#47732' '#51217#49688#49884#44036' '#50504#48372#51076'.'
      #49457#47749' '#53364#47533#54616#47732' '#45824#44592#49884#44036', '#51217#49688#49884#44036' '#48372#51076'.'
      #54872#51088#47484' '#49440#53469#54620' '#54980', '#47560#50864#49828' '#50724#47480#51901' '#48260#53948' '#53364#47533#54616#47732' '
      #50557#49549#51004#47196' '#50734#44592#44144#45208', '#45824#44592' '#51221#48372#47484' '#48148#44992#49688' '#51080#51020'.')
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #49440#53469
      'ico'
      #51068#51088
      #49457#47749
      #52264#53944#48264#54840
      #54016
      #51204#45812#50948#49373#49324
      #44396#48516
      #51217#49688
      #45824#44592
      #50696#50557
      #50696#50557#52280#44256#49324#54637
      #51652#47308#49884#51089#49884#44036
      #51652#47308#47560#52840#49884#44036
      #49688#45225#49884#44036
      #55092#45824#54256
      #45796#51020#50696#50557#51068'/'#45236#50857
      'idn')
    ColumnSize.Save = True
    ColumnSize.Key = '.\db.ini'
    ColumnSize.Section = 'findlist'
    ColumnSize.Location = clIniFile
    ControlLook.FixedGradientFrom = clBtnFace
    ControlLook.FixedGradientHoverFrom = 16710648
    ControlLook.FixedGradientHoverTo = 16446189
    ControlLook.FixedGradientHoverMirrorFrom = 16049367
    ControlLook.FixedGradientHoverMirrorTo = 15258305
    ControlLook.FixedGradientDownFrom = 15853789
    ControlLook.FixedGradientDownTo = 15852760
    ControlLook.FixedGradientDownMirrorFrom = 15522767
    ControlLook.FixedGradientDownMirrorTo = 15588559
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
    FixedColWidth = 50
    FixedRowHeight = 22
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clBlack
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    GridImages = main_f.ImageList1
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
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.Show = True
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
    Version = '8.4.4.1'
    ColWidths = (
      50
      40
      52
      83
      64
      39
      88
      35
      65
      61
      64
      109
      87
      64
      80
      93
      117
      79
      64)
    RowHeights = (
      21
      21)
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 0
    Width = 1185
    Height = 52
    Align = alTop
    TabOrder = 1
    object EllipsLabel3: TEllipsLabel
      Left = 990
      Top = 33
      Width = 24
      Height = 15
      Cursor = crHandPoint
      Caption = #44396#48516
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object EllipsLabel4: TEllipsLabel
      Left = 330
      Top = 17
      Width = 12
      Height = 15
      Cursor = crHandPoint
      Caption = #54016
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object lblTeam: TLabel
      Left = 406
      Top = 16
      Width = 43
      Height = 12
      Caption = 'lblTeam'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object EllipsLabel1: TEllipsLabel
      Left = 15
      Top = 18
      Width = 24
      Height = 15
      Cursor = crHandPoint
      Caption = #44592#44036
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object progressbar: TAdvProgressBar
      Left = 15
      Top = 40
      Width = 566
      Height = 6
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
      Rounded = False
      ShowBorder = True
      ShowPercentage = False
      ShowPosition = False
      Steps = 20
      Version = '1.3.1.0'
      Visible = False
    end
    object EllipsLabel2: TEllipsLabel
      Left = 225
      Top = 19
      Width = 24
      Height = 15
      Cursor = crHandPoint
      Caption = #51333#47448
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object dtDate: TDateTimePicker
      Left = 50
      Top = 15
      Width = 80
      Height = 18
      Date = 40136.000000000000000000
      Time = 0.563465520826866900
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object dsDate: TDateTimePicker
      Left = 135
      Top = 15
      Width = 80
      Height = 18
      Date = 40136.000000000000000000
      Time = 0.563465520826866900
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
    end
    object cbexclusive: TCheckBox
      Left = 470
      Top = 15
      Width = 69
      Height = 17
      Hint = #51473#48373#46108' '#47749#45800#51012' '#51228#50808#54616#47728#13#10#51060#47492#44284' '#52264#53944#48264#54840#47564' '#48372#51077#45768#45796'.'
      Caption = #51473#48373#51228#50808
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edtSch: TAdvEdit
      Left = 636
      Top = 12
      Width = 155
      Height = 21
      DefaultHandling = True
      EmptyText = #50696#50557#45236#50669' '
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
      TabOrder = 3
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object spSkinButton1: TButton
      Left = 545
      Top = 10
      Width = 81
      Height = 25
      Caption = #44160#49353
      TabOrder = 4
      OnClick = spSkinButton1Click
    end
    object spSkinButton2: TButton
      Left = 880
      Top = 10
      Width = 81
      Height = 25
      Caption = #50641#49472
      TabOrder = 5
      OnClick = spSkinButton2Click
    end
    object spSkinButton3: TButton
      Left = 795
      Top = 10
      Width = 81
      Height = 25
      Caption = #49440#53469' SMS'#51204#49569
      TabOrder = 6
      OnClick = spSkinButton3Click
    end
    object cbDaegiGubun: TComboBox
      Left = 985
      Top = 10
      Width = 80
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = #51204#52404
      Visible = False
      Items.Strings = (
        #51204#52404
        #45236#50896
        #49888#54872
        #50557#49549
        ''
        '')
    end
    object cbTeam: TComboBox
      Left = 345
      Top = 13
      Width = 58
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 8
      OnChange = cbTeamChange
    end
    object cbKind: TComboBox
      Left = 260
      Top = 14
      Width = 58
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 9
      Text = #51217#49688
      OnChange = cbTeamChange
      Items.Strings = (
        #51217#49688
        #50696#50557)
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'findlist_f'
    Version = '1.4.1.4'
    Left = 315
    Top = 127
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdDaegi
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 370
    Top = 135
  end
  object SaveDialog1: TSaveDialog
    Left = 410
    Top = 142
  end
end
