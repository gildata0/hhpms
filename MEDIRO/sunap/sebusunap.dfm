object sebusunap_f: Tsebusunap_f
  Left = 233
  Top = 163
  Caption = #44592#44036#48324' '#49688#45225' '#45236#50669
  ClientHeight = 678
  ClientWidth = 1422
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvProgressBar1: TAdvProgressBar
    Left = 0
    Top = 660
    Width = 1422
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
    Position = 50
    ShowBorder = True
    Version = '1.3.1.0'
    ExplicitTop = 661
    ExplicitWidth = 1398
  end
  object pnlmain: TPanel
    Left = 33
    Top = 105
    Width = 1028
    Height = 337
    Caption = 'pnlmain'
    TabOrder = 0
    object grdmain: TAdvStringGrid
      Left = -32
      Top = 66
      Width = 1015
      Height = 250
      Cursor = crDefault
      ColCount = 34
      DrawingStyle = gdsClassic
      FixedRows = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goColMoving, goRowSelect]
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssBoth
      TabOrder = 0
      OnColumnMoved = grdmainColumnMoved
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdmainGetCellColor
      OnGetCellBorder = grdmainGetCellBorder
      OnGetAlignment = grdmainGetAlignment
      OnGetFormat = grdmainGetFormat
      OnClickSort = grdmainClickSort
      OnClickCell = grdmainClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51652#47308#51068#51088
        #49457#47749
        #48337#47197#48264#54840
        #51652#47308#49892
        #48372#54744#50976#54805
        #49888#44396
        #45236#50896#46041#44592
        #49688#45225#50529
        #48376#51064#48512#45812
        #44277#45800#52397#44396
        #48372#54744
        #48708#48372#54744
        #44592#53440#50857#54408
        #52509#51652#47308#48708
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
        #49688#45225#44396#48516
        #49688#45225#52280#44256#49324#54637
        'IM'
        #48512#44032#49464
        #48120#49688#49688#45225
        #48120#49688#51652#47308#51068#51088
        #54801#47141#48337#50896
        'pID'
        #49688#45225#44396#48516)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'sunap2'
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
      Look = glSoft
      MouseActions.SizeFixedCol = True
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
      SortSettings.IndexShow = True
      SortSettings.IgnoreBlanks = True
      SortSettings.IgnoreCase = True
      SortSettings.FixedCols = True
      Version = '8.4.4.1'
      ColWidths = (
        20
        64
        64
        64
        35
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
        64
        64
        64
        64
        64
        64
        78
        75
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
    Width = 1422
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16047300
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #46027#50880
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 1410
    object lblSum: TLabel
      Left = 1111
      Top = -2
      Width = 109
      Height = 26
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblSum'
      Layout = tlCenter
    end
    object ProgressBar: TAdvProgressBar
      Left = 650
      Top = 35
      Width = 191
      Height = 6
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
      Visible = False
    end
    object lblHwanbul: TLabel
      Left = 1168
      Top = 30
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'lblHwanbul'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spSkinStdLabel2: TLabel
      Left = 0
      Top = 24
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#54016
      Visible = False
    end
    object spSkinStdLabel5: TLabel
      Left = 1043
      Top = 4
      Width = 62
      Height = 16
      AutoSize = False
      Caption = #9632' '#49688#45225#54633#44228
    end
    object lblSum2: TLabel
      Left = 1103
      Top = 18
      Width = 117
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblSum2'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 1043
      Top = 17
      Width = 62
      Height = 16
      AutoSize = False
      Caption = #9632' '#52509#51652#47308#48708#54633#44228
    end
    object Label2: TLabel
      Left = 1
      Top = 15
      Width = 39
      Height = 17
      Alignment = taRightJustify
      Caption = #51652#47308#49892
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
      Visible = False
    end
    object EllipsLabel1: TLabel
      Left = 162
      Top = 15
      Width = 52
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#51032
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CheckBox1: TCheckBox
      Left = 1311
      Top = 18
      Width = 97
      Height = 17
      Caption = #50689#49688#51088'9'#51228#50808
      TabOrder = 4
      Visible = False
    end
    object Button1: TButton
      Left = 2
      Top = 38
      Width = 17
      Height = 20
      Caption = #9661
      TabOrder = 5
      OnClick = Button1Click
    end
    object cbZeroExcept: TCheckBox
      Left = 1311
      Top = -1
      Width = 107
      Height = 17
      Caption = #49688#45225#44552#50529' 0 '#51228#50808
      TabOrder = 7
      Visible = False
      OnClick = cbZeroExceptClick
    end
    object pnlTerm: TAdvPanel
      Left = 355
      Top = 7
      Width = 289
      Height = 28
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
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
      FullHeight = 200
      object spSkinStdLabel4: TLabel
        Left = 259
        Top = 11
        Width = 22
        Height = 13
        Caption = #44620#51648
      end
      object spSkinStdLabel3: TLabel
        Left = 134
        Top = 11
        Width = 22
        Height = 13
        Caption = #48512#53552
      end
      object spSkinStdLabel1: TLabel
        Left = 6
        Top = 11
        Width = 40
        Height = 16
        AutoSize = False
        Caption = #9632' '#44592#44036
      end
      object DateTimePicker2: TDateTimePicker
        Left = 170
        Top = 8
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
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 43
        Top = 7
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
        TabOrder = 1
        OnKeyDown = DateTimePicker1KeyDown
      end
    end
    object CbMonthJungsan: TCheckBox
      Left = 723
      Top = -1
      Width = 71
      Height = 17
      Caption = #50900#48324#51312#54924
      TabOrder = 9
      Visible = False
    end
    object cbNew: TCheckBox
      Left = 1406
      Top = 18
      Width = 97
      Height = 17
      Hint = #44592#44036#45236' '#49888#54872#47564' '#44160#49353
      Caption = #49888#54872
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
    end
    object CheckBox3: TCheckBox
      Left = 723
      Top = 18
      Width = 71
      Height = 17
      Caption = #44592#44036#51312#54924
      TabOrder = 11
      Visible = False
    end
    object cbTeam: TComboBox
      Left = 25
      Top = 26
      Width = 131
      Height = 20
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
      Text = 'cbTeam'
      Visible = False
    end
    object btnSearch: TButton
      Left = 800
      Top = 4
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 0
      OnClick = btnSearchClick
    end
    object btnPrt: TButton
      Left = 886
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #51064#49604
      TabOrder = 1
      OnClick = btnPrtClick
    end
    object btnExcelSave: TButton
      Left = 1230
      Top = 10
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #50641#49472#51200#51109
      TabOrder = 2
      OnClick = btnExcelSaveClick
    end
    object btnToday: TButton
      Left = 646
      Top = 4
      Width = 71
      Height = 25
      Caption = #50724#45720
      TabOrder = 6
      OnClick = btnTodayClick
    end
    object cbPreview: TCheckBox
      Left = 967
      Top = 10
      Width = 70
      Height = 17
      Caption = #48120#47532#48372#44592
      TabOrder = 12
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 43
      Top = 10
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
      EmptyText = #51652#47308#49892
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
      TabOrder = 13
    end
    object cbDoc: TColumnComboBox
      AlignWithMargins = True
      Left = 220
      Top = 10
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
      TabOrder = 14
    end
  end
  object pnldetail: TPanel
    Left = 0
    Top = 41
    Width = 1422
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 16047300
    TabOrder = 2
    Visible = False
    ExplicitWidth = 1410
    object spSkinStdLabel6: TLabel
      Left = 140
      Top = 11
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#48372#54744#44396#48516
    end
    object spSkinStdLabel7: TLabel
      Left = 395
      Top = 11
      Width = 47
      Height = 16
      AutoSize = False
      Caption = #9632' '#51312#54633#44396#48516
    end
    object cbBohum: TComboBox
      Left = 220
      Top = 5
      Width = 145
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 0
      Text = #51204#52404
      Items.Strings = (
        #51204#52404
        #48708#48372#54856
        #48372#54744
        #48372#54744'+'#48708#48372#54744)
    end
    object cbJohap: TComboBox
      Left = 465
      Top = 5
      Width = 145
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
      Text = #51204#52404
      Items.Strings = (
        #51204#52404
        #51648#50669'('#51032#48372')'
        #51649#51109'('#51032#48372')'
        #51068#48152)
    end
    object CheckBox2: TCheckBox
      Left = 20
      Top = 5
      Width = 86
      Height = 17
      Caption = #49457#47749' '#44536#47353
      TabOrder = 2
      OnClick = CheckBox2Click
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 33
    Top = 427
    Width = 836
    Height = 396
    TabOrder = 3
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
      Top = 216
      Width = 834
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object AdvStringGrid1: TAdvStringGrid
      Left = 1
      Top = 19
      Width = 834
      Height = 197
      Cursor = crDefault
      Align = alTop
      DrawingStyle = gdsClassic
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
    object AdvStringGrid2: TAdvStringGrid
      Left = 1
      Top = 219
      Width = 834
      Height = 176
      Cursor = crDefault
      Align = alClient
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
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdmain
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportHTMLTags = False
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 235
    Top = 70
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Left = 1065
    Top = 45
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'sunapseb_f'
    Version = '1.4.1.4'
    Left = 1010
    Top = 45
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 32
    Top = 80
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
    ReportOptions.LastChange = 43703.753427800930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 130
    Datasets = <
      item
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = #48337#50896#47749
        Value = Null
      end
      item
        Name = 'title'
        Value = Null
      end
      item
        Name = 'aTerm'
        Value = Null
      end
      item
        Name = 'noSunap'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1114.961350000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Width = 1114.960886220000000000
          Height = 0.377952760000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo8: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 725.669760000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '['#48337#50896#47749']')
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
        end
        object SysMemo3: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 929.764380000000000000
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
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #52636#47141#51068#49884' : ')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 1114.961350000000000000
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
        RowCount = 0
        Stretched = True
        object Line: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 0.000000000000000014
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Line#]')
        end
        object frxUserDataSet1jinday: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 0.000000000000000014
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'jinday'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."jinday"]')
        end
        object frxUserDataSet1pname: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 0.000000000000000014
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'pname'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."pname"]')
        end
        object frxUserDataSet1chart: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 0.000000000000000014
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'chart'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."chart"]')
        end
        object frxUserDataSet1team: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 0.000000000000000014
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'team'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."team"]')
        end
        object frxUserDataSet1bohumkind: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'bohumkind'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."bohumkind"]')
        end
        object frxUserDataSet1bonin1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 0.000000000000000014
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'bonin1'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."bonin1"]')
        end
        object frxUserDataSet1bonin: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 0.000000000000000014
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'bonin'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."bonin"]')
        end
        object frxUserDataSet1sunapak: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 0.000000000000000014
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'sunapak'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."sunapak"]')
        end
        object frxUserDataSet1discount: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 0.000000000000000014
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'discount'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."discount"]')
        end
        object frxUserDataSet1hyun: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 740.787880000000000000
          Top = 0.000000000000000014
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'hyun'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."hyun"]')
        end
        object frxUserDataSet1card: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 0.000000000000000014
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'card'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."card"]')
        end
        object frxUserDataSet1tong: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 857.953310000000000000
          Top = 0.000000000000000014
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'tong'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."tong"]')
        end
        object frxUserDataSet1misu: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 903.307670000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'misu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."misu"]')
        end
        object frxUserDataSet1sunapremark: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 997.795920000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ismisu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."ismisu"]')
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 0.000000000000000014
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'chong'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."chong"]')
        end
        object Memo43: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 0.000000000000000014
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'boninsum'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."boninsum"]')
        end
        object Memo44: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 0.000000000000000014
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'chung'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."chung"]')
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 944.882500000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'refund'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."refund"]')
        end
        object Memo48: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1054.488870000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'coHosp'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = #46027#50880
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."coHosp"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 70.110236220000000000
        Top = 18.897650000000000000
        Width = 1114.961350000000000000
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 914.646260000000000000
          Top = -3.779530000000000000
          Width = 60.472480000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Top = -3.779530000000000000
          Width = 249.448980000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          AutoWidth = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[title]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 69.921259840000000000
          Width = 1046.929346220000000000
          Height = 0.188976380000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 914.646260000000000000
          Top = -3.779530000000000000
          Width = 128.504020000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54016#51109)
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 984.567565000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #45824#54364#50896#51109)
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = -3.779530000000000000
          Width = 60.472480000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Top = -3.779530000000000000
          Width = 60.472480000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = -3.779530000000000000
          Width = 18.897650000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 861.732840000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #45812#45817)
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #45812#45817)
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 778.583180000000000000
          Top = 3.779530000000000000
          Width = 11.338590000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44208'  '#51116)
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          AutoWidth = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[aTerm]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[noSunap]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.834645670000000000
        Top = 151.181200000000000000
        Width = 1114.961350000000000000
        Condition = '<frxUserDataSet1."'#51652#47308#51068#51088'">'
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 23.055115670000000000
          Width = 1118.740416220000000000
          Height = 0.377952760000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51652#47308#51068#51088)
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51652#47308#49892)
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48372#54744)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48708#48372#54744)
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #49688#45225#50529)
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44048#47732)
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #52852#46300)
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #49457#47749)
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 137.952845000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #52264#53944#48264#54840)
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 740.787880000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54788#44552)
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #53685#51109)
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48120#49688)
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #52509#51652#47308#48708)
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 997.795920000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48120#49688#49688#45225)
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48372#54744#50976#54805)
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48264#54840)
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 948.662030000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54872#48520)
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #48376#51064#48512#45812)
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#45800#52397#44396)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1054.488870000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51032#47280#48337#50896)
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 245.669450000000000000
        Width = 1114.961350000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '-'#51060#54616' '#50668#48177'-')
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 1114.960886220000000000
          Height = 0.377952760000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
    end
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Fields.Strings = (
      'jinday'
      'pname'
      'chart'
      'team'
      'bohumkind'
      'newold'
      'newondonggi'
      'sunapak'
      'boninsum'
      'chung'
      'bonin'
      'bonin1'
      'etcs'
      'chong'
      'hyun'
      'hyunreceipt'
      'card'
      'tong'
      'tongreceipt'
      'etc2'
      'discount'
      'misu'
      'refund'
      'cardkind'
      'sunapkind'
      'sunapremark'
      'im'
      'bugase'
      'ismisu'
      'coHosp')
    OnGetValue = frxUserDataSet1GetValue
    Left = 32
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 210
    Top = 242
    object N1: TMenuItem
      Caption = #48372#44592' '#49444#51221
      OnClick = N1Click
    end
  end
end
