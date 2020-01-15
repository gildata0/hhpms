object yearAcc_f: TyearAcc_f
  Left = 1
  Top = 1
  Caption = 'yearAcc_f'
  ClientHeight = 711
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdmain: TAdvStringGrid
    Left = 262
    Top = 47
    Width = 672
    Height = 501
    Cursor = crDefault
    ColCount = 16
    DefaultRowHeight = 21
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = grdmainGetCellColor
    OnGetAlignment = grdmainGetAlignment
    OnGetFormat = grdmainGetFormat
    OnClickSort = grdmainClickSort
    OnCanSort = grdmainCanSort
    OnClickCell = grdmainClickCell
    OnDblClickCell = grdmainDblClickCell
    OnGetEditorType = grdmainGetEditorType
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      #50672#48264
      #52264#53944#48264#54840
      #49457#47749
      #51452#48124#48264#54840
      #49688#45225#51068#51088
      #51221#49328#44552#50529
      #49892#49688#45225#44552#50529
      #48372#54744
      #48708#48372#54744
      #54788#44552
      #54788#50689
      #52852#46300
      #53685#51109
      #53685#51109#54788#50689
      #44592#53440
      #51228#50808)
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
    FixedColWidth = 50
    FixedRowHeight = 38
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.0n'
    FloatingFooter.FooterStyle = fsColumnPreview
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    MouseActions.DisjunctRowSelect = True
    MouseActions.WheelIncrement = 1
    Multilinecells = True
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
    RowHeaders.Strings = (
      '')
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
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SortSettings.AutoColumnMerge = True
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.Column = 12
    SortSettings.Show = True
    SortSettings.IndexShow = True
    Version = '8.4.4.1'
    ColWidths = (
      50
      89
      60
      90
      75
      71
      79
      79
      79
      79
      79
      79
      80
      88
      34
      64)
    RowHeights = (
      38
      21
      21
      21
      21
      21
      21
      21
      21
      21)
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 41
    Width = 256
    Height = 670
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.7.9'
    AutoHideChildren = False
    BorderColor = clGray
    BorderShadow = True
    Caption.Color = clHighlight
    Caption.ColorTo = clBlue
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.Indent = 2
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 14938354
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clSilver
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clBlack
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 0
    object Label1: TLabel
      Left = 15
      Top = 10
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #49324#50629#51088#48264#54840
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 15
      Top = 34
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48337#50896#47749
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 15
      Top = 58
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #50836#50577#44592#44288#44592#54840
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 15
      Top = 82
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #50896#51109' '#49457#47749
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 15
      Top = 106
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #51204#54868#48264#54840
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 15
      Top = 548
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #51089#49457#51068#51088
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label7: TLabel
      Left = 15
      Top = 130
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#48512#49436
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 15
      Top = 154
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#49457#47749
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 15
      Top = 178
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#50672#46973#52376
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label10: TLabel
      Left = 15
      Top = 240
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #49688#45225#49884#51089#51068
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label11: TLabel
      Left = 15
      Top = 264
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #49688#45225#51333#47308#51068
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label12: TLabel
      Left = 15
      Top = 459
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #49688#45225#44148#49688
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object Label13: TLabel
      Left = 15
      Top = 484
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #49688#45225#54633#44228
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
    end
    object lblHap: TLabel
      Left = 100
      Top = 484
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblHap'
    end
    object lblGunSu: TLabel
      Left = 100
      Top = 459
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblGunSu'
    end
    object Label15: TLabel
      Left = 209
      Top = 460
      Width = 19
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #44148
    end
    object Label16: TLabel
      Left = 210
      Top = 481
      Width = 19
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #50896
    end
    object lblStart: TLabel
      Left = 25
      Top = 205
      Width = 32
      Height = 13
      Caption = 'lblStart'
    end
    object lblFinish: TLabel
      Left = 25
      Top = 220
      Width = 37
      Height = 13
      Caption = 'lblFinish'
    end
    object Label14: TLabel
      Left = 15
      Top = 309
      Width = 11
      Height = 13
      Caption = #54016
      Visible = False
    end
    object Label18: TLabel
      Left = 145
      Top = 289
      Width = 96
      Height = 12
      Caption = #50500#47000' '#49688#45225' '#54637#47785#47564
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #46027#50880#52404
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblBohum: TLabel
      Left = 100
      Top = 507
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblBohum'
      Visible = False
    end
    object Label20: TLabel
      Left = 210
      Top = 502
      Width = 19
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #50896
      Visible = False
    end
    object lblBibo: TLabel
      Left = 100
      Top = 528
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblBibo'
      Visible = False
    end
    object Label19: TLabel
      Left = 210
      Top = 524
      Width = 19
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #50896
      Visible = False
    end
    object Label21: TLabel
      Left = 15
      Top = 505
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48372#54744
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
      Visible = False
    end
    object Label22: TLabel
      Left = 15
      Top = 525
      Width = 79
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48708#48372#54744
      Color = 16310708
      ParentColor = False
      Layout = tlCenter
      Visible = False
    end
    object MinewonIndicator: TAdvSmoothStatusIndicator
      Left = 8
      Top = 403
      Width = 25
      Height = 25
      Caption = '1'
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
    object AdvSmoothStatusIndicator1: TAdvSmoothStatusIndicator
      Left = 8
      Top = 578
      Width = 25
      Height = 25
      Caption = '2'
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
    object AdvSmoothStatusIndicator2: TAdvSmoothStatusIndicator
      Left = 7
      Top = 623
      Width = 25
      Height = 25
      Caption = '3'
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
    object btnSunapNeyuk: TAdvGlassButton
      Left = 33
      Top = 400
      Width = 213
      Height = 32
      AntiAlias = aaNone
      BackColor = clAqua
      BackGroundSymbolColor = clSilver
      Caption = #49688#45225' '#45236#50669' '#50676#46988
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 12
      Version = '1.3.1.0'
      OnClick = btnSunapNeyukClick
    end
    object edtSaupNo: TEdit
      Left = 95
      Top = 10
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      Text = 'edtSaupNo'
    end
    object edtSaupname: TEdit
      Left = 95
      Top = 34
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtSaupname'
    end
    object edtCode: TEdit
      Left = 95
      Top = 58
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Text = 'edtCode'
    end
    object edtDepyoName: TEdit
      Left = 95
      Top = 82
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
      Text = 'edtDepyoName'
    end
    object edtTel: TEdit
      Left = 95
      Top = 106
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
      Text = 'edtTel'
    end
    object edtBusu: TEdit
      Left = 95
      Top = 130
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
      Text = 'edtBusu'
    end
    object edtDamName: TEdit
      Left = 95
      Top = 154
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
      Text = 'edtDamName'
    end
    object edtDamTel: TEdit
      Left = 95
      Top = 178
      Width = 150
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 7
      Text = 'edtDamTel'
    end
    object btnDataMake: TAdvGlassButton
      Left = 33
      Top = 573
      Width = 213
      Height = 32
      AntiAlias = aaNone
      BackColor = 16777088
      Caption = #51088#47308' '#49373#49457
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      ForceTransparent = True
      GlowColor = 16760205
      InnerBorderColor = clBlack
      Layout = blGlyphTop
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 11
      Version = '1.3.1.0'
      OnClick = btnDataMakeClick
    end
    object dtStart: TDateTimePicker
      Left = 95
      Top = 238
      Width = 121
      Height = 21
      Date = 39380.000000000000000000
      Time = 0.714328333298908500
      ImeName = 'Microsoft IME 2003'
      TabOrder = 8
      OnCloseUp = dtStartCloseUp
    end
    object dtFinish: TDateTimePicker
      Left = 95
      Top = 263
      Width = 121
      Height = 21
      Date = 39380.000000000000000000
      Time = 0.714459629598422900
      ImeName = 'Microsoft IME 2003'
      TabOrder = 9
      OnCloseUp = dtFinishCloseUp
    end
    object dtmake: TDateTimePicker
      Left = 95
      Top = 547
      Width = 121
      Height = 21
      Date = 39380.000000000000000000
      Time = 0.719862013902457000
      ImeName = 'Microsoft IME 2003'
      TabOrder = 10
    end
    object btnSave: TAdvGlassButton
      Left = 145
      Top = 203
      Width = 100
      Height = 32
      AntiAlias = aaNone
      BackColor = 4227200
      BackGroundSymbolColor = clSilver
      Caption = #44592#52488#51221#48372' '#51200#51109
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 13
      Version = '1.3.1.0'
      Visible = False
      OnClick = btnSaveClick
    end
    object Progress1: TProgressBar
      Left = 35
      Top = 435
      Width = 209
      Height = 8
      TabOrder = 14
    end
    object btnSend: TAdvGlassButton
      Left = 33
      Top = 620
      Width = 213
      Height = 32
      AntiAlias = aaNone
      BackColor = clOlive
      Caption = #51088#47308' '#51216#44160'/'#49569#49888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      ForceTransparent = True
      GlowColor = 16760205
      InnerBorderColor = clBlack
      Layout = blGlyphTop
      OuterBorderColor = clWhite
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 15
      Version = '1.3.1.0'
      OnClick = btnSendClick
    end
    object cbLocalExcept: TCheckBox
      Left = 15
      Top = 344
      Width = 97
      Height = 17
      Caption = #51648#50669#54872#51088' '#51228#50808
      TabOrder = 16
    end
    object cbBiboExcept: TCheckBox
      Left = 121
      Top = 344
      Width = 125
      Height = 17
      Caption = #48708#48372#54744#49688#45225' '#51228#50808
      TabOrder = 17
      Visible = False
    end
    object cbTeam: TComboBox
      Left = 35
      Top = 305
      Width = 81
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 18
      Text = 'cbTeam'
      Visible = False
    end
    object edtGuBun: TEdit
      Left = 180
      Top = 305
      Width = 59
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 19
      Text = 'edtGuBun'
      Visible = False
    end
    object cbHangmok: TCheckBox
      Left = 15
      Top = 328
      Width = 86
      Height = 17
      Caption = #48708#48372#54744#54637#47785
      TabOrder = 20
      Visible = False
    end
    object cbDistinct: TCheckBox
      Left = 121
      Top = 328
      Width = 125
      Height = 17
      Caption = #45817#51068#49688#45225#51473#48373#51228#50808
      TabOrder = 21
      Visible = False
    end
    object exceptIlban: TCheckBox
      Left = 121
      Top = 359
      Width = 125
      Height = 17
      Caption = #48372#54744#51333#48324#51068#48152' '#51228#50808
      TabOrder = 22
    end
    object cbOrtho: TCheckBox
      Left = 15
      Top = 359
      Width = 97
      Height = 17
      Caption = #44368#51221#51228#50808
      TabOrder = 23
      Visible = False
    end
    object cbJumin: TCheckBox
      Left = 121
      Top = 379
      Width = 125
      Height = 17
      Caption = #51452#48124#48264#54840#50724#47448' '#51228#50808
      TabOrder = 24
    end
    object CheckBox1: TCheckBox
      Left = 100
      Top = 328
      Width = 16
      Height = 17
      Hint = #48708#48372#54744' '#54637#47785#51473' '#52404#53356#46108' '#54637#47785#51008' '#48152#50689#54616#51648' '#50506#49845#45768#45796'.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
      Visible = False
    end
    object CheckBox2: TCheckBox
      Left = 0
      Top = 328
      Width = 11
      Height = 16
      Caption = 'CheckBox2'
      TabOrder = 26
      Visible = False
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.7.9'
    AutoHideChildren = False
    BorderColor = clGray
    BorderShadow = True
    Caption.Color = clHighlight
    Caption.ColorTo = clBlue
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.Indent = 2
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 14938354
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clSilver
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clBlack
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 0
    object Label17: TLabel
      Left = 25
      Top = 15
      Width = 207
      Height = 16
      Caption = #50672#47568#51221#49328' '#44036#49548#54868' '#51088#47308' '#49373#49457#44592
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = #48148#53461
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblNo1: TLabel
      Left = 495
      Top = 0
      Width = 30
      Height = 13
      Caption = 'lblNo1'
      Visible = False
    end
    object lblNo2: TLabel
      Left = 495
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Label18'
      Visible = False
    end
    object lblNo3: TLabel
      Left = 690
      Top = 5
      Width = 38
      Height = 13
      Caption = 'Label18'
      Visible = False
    end
    object lblNo4: TLabel
      Left = 690
      Top = 20
      Width = 38
      Height = 13
      Caption = 'Label18'
      Visible = False
    end
    object Button1: TButton
      Left = 655
      Top = 10
      Width = 75
      Height = 25
      Caption = #50641#49472#51200#51109
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 740
      Top = 10
      Width = 75
      Height = 25
      Caption = #48520#47084#50724#44592
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 835
      Top = 10
      Width = 75
      Height = 25
      Caption = #49440#53469' '#52404#53356
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object AdvPanel3: TAdvPanel
    Left = 465
    Top = 275
    Width = 300
    Height = 200
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
    object grdBibo: TAdvStringGrid
      Left = 20
      Top = 35
      Width = 236
      Height = 141
      Cursor = crDefault
      ColCount = 3
      DrawingStyle = gdsClassic
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
        'No.'
        #54637#47785
        #49440#53469)
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
        117
        36)
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = clGray
    Settings.BorderShadow = True
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = clHighlight
    Settings.Caption.ColorTo = clBlue
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clHighlightText
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.Indent = 2
    Settings.Collaps = False
    Settings.CollapsColor = clBtnFace
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = clWhite
    Settings.ColorTo = 14938354
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
    Settings.StatusBar.BorderColor = clSilver
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clBlack
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 14938354
    Settings.StatusBar.ColorTo = clWhite
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Left = 765
    Top = 115
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdmain
    Options.ImportCellFormats = False
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportCellFormats = False
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 445
    Top = 5
  end
  object SaveDialog1: TSaveDialog
    Left = 535
    Top = 10
  end
  object OpenDialog1: TOpenDialog
    Left = 745
    Top = 10
  end
  object SaveDialog2: TSaveDialog
    Left = 290
    Top = 85
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'yearAcc_f'
    Version = '1.4.1.4'
    Left = 334
    Top = 367
  end
end
