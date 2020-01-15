object sunapsebulist_f: Tsunapsebulist_f
  Left = 84
  Top = 361
  Caption = #44060#51064#48324' '#49688#45225#45236#50669
  ClientHeight = 540
  ClientWidth = 1436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlmain: TPanel
    Left = 3
    Top = 100
    Width = 1393
    Height = 337
    Caption = 'pnlmain'
    TabOrder = 0
    object grdmain: TAdvStringGrid
      Left = -601
      Top = 39
      Width = 1850
      Height = 250
      Cursor = crDefault
      ColCount = 28
      DrawingStyle = gdsClassic
      FixedRows = 2
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
      OnGetCellColor = grdmainGetCellColor
      OnGetAlignment = grdmainGetAlignment
      OnGetFormat = grdmainGetFormat
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
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
        #48120#49688#45225
        #54872#48520
        #52852#46300#51333#47448
        #49888#44396
        'Kind'
        #49688#45225#52280#44256#49324#54637
        'IM'
        #50689#49688#51613
        #48512#44032#49464
        #54801#47141#48337#50896)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'sunap1'
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
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Clear')
      FixedColWidth = 20
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
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Show = True
      SortSettings.IndexShow = True
      SortSettings.IgnoreBlanks = True
      SortSettings.IgnoreCase = True
      Version = '8.4.4.1'
      ColWidths = (
        20
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
        61
        106
        50
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1436
    Height = 96
    Align = alTop
    BevelOuter = bvNone
    Color = 16047300
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblSum: TLabel
      Left = 90
      Top = 24
      Width = 107
      Height = 26
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblSum'
      Layout = tlCenter
    end
    object lblJan: TLabel
      Left = 90
      Top = 49
      Width = 107
      Height = 26
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblJan'
      Layout = tlCenter
    end
    object lblPlan: TLabel
      Left = 90
      Top = 4
      Width = 107
      Height = 26
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblSum'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 481
      Top = 10
      Width = 67
      Height = 13
      AutoSize = False
      Caption = #9632' '#48516#45225#48708#50857
      Transparent = True
    end
    object Label2: TLabel
      Left = 481
      Top = 35
      Width = 65
      Height = 13
      AutoSize = False
      Caption = #9632' '#48516#45225#44060#50900
      Transparent = True
    end
    object lblGam: TLabel
      Left = 388
      Top = 4
      Width = 38
      Height = 15
      Hint = #44048#47732#44552#50529
      Alignment = taRightJustify
      Caption = 'lblGam'
    end
    object lblChart: TLabel
      Left = 925
      Top = 45
      Width = 42
      Height = 15
      Caption = 'lblChart'
      Visible = False
    end
    object lblName: TLabel
      Left = 1010
      Top = 45
      Width = 45
      Height = 15
      Caption = 'lblName'
      Visible = False
    end
    object lblHwanbul: TLabel
      Left = 365
      Top = 55
      Width = 61
      Height = 15
      Alignment = taRightJustify
      Caption = 'lblHwanbul'
    end
    object spSkinStdLabel3: TLabel
      Left = 350
      Top = 76
      Width = 24
      Height = 15
      Caption = #48512#53552
    end
    object spSkinStdLabel4: TLabel
      Left = 475
      Top = 76
      Width = 24
      Height = 15
      Caption = #44620#51648
    end
    object spSkinStdLabel2: TLabel
      Left = 20
      Top = 78
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#54016
      Visible = False
    end
    object spSkinStdLabel5: TLabel
      Left = 20
      Top = 30
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#49688#45225' '#54633#44228
    end
    object spSkinStdLabel6: TLabel
      Left = 20
      Top = 55
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#51092#44552' '#54633#44228
    end
    object spSkinStdLabel7: TLabel
      Left = 20
      Top = 10
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#44228#54925' '#44552#50529
    end
    object spSkinStdLabel8: TLabel
      Left = 660
      Top = 5
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#44228#54925' '#52280#44256
    end
    object spSkinStdLabel1: TLabel
      Left = 220
      Top = 35
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#51060#48120' '#45225#48512#54620' '#44552#50529
    end
    object spSkinStdLabel9: TLabel
      Left = 220
      Top = 10
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#44048#47732#54620' '#44552#50529
    end
    object spSkinStdLabel10: TLabel
      Left = 220
      Top = 60
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#54872#48520#54620' '#44552#50529
    end
    object DateTimePicker1: TDateTimePicker
      Left = 262
      Top = 73
      Width = 87
      Height = 23
      Date = 38657.000000000000000000
      Time = 0.552258391202485700
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 386
      Top = 73
      Width = 87
      Height = 23
      Date = 38657.000000000000000000
      Time = 0.552351516198541500
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object edtMonthly: TEdit
      Left = 550
      Top = 32
      Width = 26
      Height = 23
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
      Text = '0'
    end
    object CheckBox1: TCheckBox
      Left = 1170
      Top = 8
      Width = 109
      Height = 17
      Caption = #49688#45225#44552#50529' 0 '#51228#50808
      TabOrder = 9
      OnClick = CheckBox1Click
    end
    object Memo1: TMemo
      Left = 725
      Top = 0
      Width = 271
      Height = 76
      ImeName = 'Microsoft Office IME 2007'
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object cbTerm: TCheckBox
      Left = 188
      Top = 74
      Width = 69
      Height = 17
      Caption = #44592#44036#51312#54924
      TabOrder = 11
    end
    object btnCls: TButton
      Left = 518
      Top = 70
      Width = 75
      Height = 24
      Caption = #51312#54924
      TabOrder = 0
      OnClick = btnClsClick
    end
    object btnPrt: TButton
      Left = 1003
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #51064#49604
      TabOrder = 3
      OnClick = btnPrtClick
    end
    object spSkinButton1: TButton
      Left = 1088
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #50641#49472#51200#51109
      TabOrder = 4
      OnClick = spSkinButton1Click
    end
    object cbTeam: TComboBox
      Left = 50
      Top = 74
      Width = 131
      Height = 23
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
      Text = 'cbTeam'
    end
    object edtMonthGeumek: TAdvEdit
      Left = 551
      Top = 4
      Width = 104
      Height = 27
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
      Color = clWindow
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 10
      TabOrder = 6
      Text = 'edtMonthGeumek'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtMonthly2: TAdvEdit
      Left = 583
      Top = 34
      Width = 28
      Height = 27
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
      Color = clWindow
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 10
      TabOrder = 7
      Text = 'edtMonthly2'
      Visible = False
      Version = '3.4.9.0'
    end
    object edtPrevSunap: TAdvEdit
      Left = 326
      Top = 29
      Width = 100
      Height = 27
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
      Color = 16047300
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 10
      TabOrder = 12
      Text = 'edtPrevSunap'
      Visible = True
      Version = '3.4.9.0'
    end
  end
  object pnlFinal: TPanel
    Left = 515
    Top = 240
    Width = 185
    Height = 171
    Caption = 'pnlFinal'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -48
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object SaveDialog1: TSaveDialog
    Left = 550
    Top = 115
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdmain
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 585
    Top = 120
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'sunapsebulist_f'
    Version = '1.4.1.4'
    Left = 525
    Top = 110
  end
end
