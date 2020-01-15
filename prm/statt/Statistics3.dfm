object Statistics3_f: TStatistics3_f
  Left = 160
  Top = 217
  Caption = 'Statistics3_f'
  ClientHeight = 636
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdMain: TAdvStringGrid
    Left = 0
    Top = 71
    Width = 1289
    Height = 528
    Cursor = crDefault
    Align = alClient
    ColCount = 16
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    GridLineColor = 15527152
    GridFixedLineColor = 13947601
    HoverRowCells = [hcNormal, hcSelected]
    OnGetAlignment = grdMainGetAlignment
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = 16575452
    ActiveCellColorTo = 16571329
    ColumnHeaders.Strings = (
      'No.'
      #45216#51676
      #51060#47492
      #54016
      #54872#51088#44396#48516
      #49345#45812#45236#50669
      #49345#45812#51088
      #49345#45812#49345#53468
      #54869#51221#51068#51088
      #54869#51221#44552#50529
      #49345#45812#47700#47784
      #52572#51333#45236#50896#51068
      #45796#51020#50696#50557#51068
      #52320#53944#48264#54840
      'id'
      'chk')
    ColumnSize.Save = True
    ColumnSize.Key = 'gridset'
    ColumnSize.Section = 'grdmain'
    ColumnSize.Location = clIniFile
    ControlLook.FixedGradientMirrorFrom = 16049884
    ControlLook.FixedGradientMirrorTo = 16247261
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
    FixedRowHeight = 22
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clBlack
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%0.n'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    Look = glWin7
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
    SearchFooter.Color = 16645370
    SearchFooter.ColorTo = 16247261
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
    SortSettings.HeaderColor = 16579058
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
    Version = '8.4.4.1'
    ColWidths = (
      64
      80
      78
      76
      64
      64
      64
      64
      64
      64
      64
      81
      64
      64
      64
      64)
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 599
    Width = 1289
    Height = 37
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
    FullHeight = 200
    object progressbar: TAdvProgressBar
      Left = 1
      Top = 17
      Width = 1287
      Height = 19
      Align = alBottom
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
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 71
    Align = alTop
    Caption = 'spSkinPanel1'
    TabOrder = 0
    object Label3: TLabel
      Left = 177
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
    object Label1: TLabel
      Left = 20
      Top = 14
      Width = 60
      Height = 15
      Caption = #51312#54924#44592#44036
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 290
      Top = 14
      Width = 45
      Height = 15
      Caption = #51312#54924#50900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 445
      Top = 14
      Width = 15
      Height = 15
      Caption = #54016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 557
      Top = 14
      Width = 60
      Height = 15
      Caption = #54872#51088#44396#48516
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 773
      Top = 14
      Width = 60
      Height = 15
      Caption = #49345#45812#49345#53468
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnSch: TAdvGlowButton
      Left = 935
      Top = 10
      Width = 91
      Height = 24
      Caption = #44160#49353
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
      Left = 807
      Top = 40
      Width = 91
      Height = 24
      AntiAlias = aaNone
      Caption = #51064#49604
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 707
      Top = 40
      Width = 91
      Height = 24
      AntiAlias = aaNone
      Caption = 'Excel'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 607
      Top = 40
      Width = 91
      Height = 24
      AntiAlias = aaNone
      Caption = #53581#49828#53944#51200#51109
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
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
    object dt1: TDateTimePicker
      Left = 86
      Top = 12
      Width = 87
      Height = 20
      Date = 38657.000000000000000000
      Time = 0.552258391202485700
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 8
    end
    object dt2: TDateTimePicker
      Left = 193
      Top = 12
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
      TabOrder = 7
    end
    object cbTeamName: TComboBox
      Left = 464
      Top = 11
      Width = 84
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = #51204#52404
      Items.Strings = (
        #51204#52404)
    end
    object cbGubun: TComboBox
      Left = 844
      Top = 9
      Width = 69
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = #51204#52404
      Items.Strings = (
        #51204#52404
        #49888#54872
        #51116#49888#54872)
    end
    object cbGubunList: TComboBox
      Left = 628
      Top = 9
      Width = 119
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 6
      Text = #51204#52404
      Items.Strings = (
        #51204#52404)
    end
  end
end
