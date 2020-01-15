object nurseActing_f: TnurseActing_f
  Left = 0
  Top = 0
  Caption = 'nurseActing_f'
  ClientHeight = 881
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 41
    Align = alTop
    Caption = #44036#54840#44592#47197#48512
    TabOrder = 0
    object lblProgresstime: TLabel
      Left = 16
      Top = 16
      Width = 72
      Height = 13
      Caption = 'lblProgresstime'
    end
    object Image4: TImage
      Left = 168
      Top = 8
      Width = 97
      Height = 33
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 41
    Width = 981
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
      Left = 30
      Top = 6
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
  object Panel3: TPanel
    Left = 0
    Top = 159
    Width = 981
    Height = 722
    Align = alClient
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    object grdProgress: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 979
      Height = 720
      Cursor = crDefault
      Align = alClient
      ColCount = 49
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goColMoving, goEditing]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnDblClickCell = grdProgressDblClickCell
      OnGetEditorType = grdProgressGetEditorType
      OnComboChange = grdProgressComboChange
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        'ED'
        'Kind'
        'Date'
        'Time'
        'Teeth'
        'UAW '
        'LAW'
        'Description'
        'Image'
        'P1'
        'p2'
        'p3'
        'p4'
        'code'
        'Dr.'
        #44036#54840#49324
        'path'
        'portion'
        'chk'
        'nord'
        'desFontName'
        'Mx'
        'Md'
        ''
        ''
        ''
        ''
        ''
        ''
        'App.'
        'Next'
        'ChartSeq'
        'isRich'
        'isImage '
        'Descript '
        'etc1 '
        'etc2 '
        'etc3 '
        'etc4 '
        'etc5 '
        'etc6 '
        'etc7'
        'etc8'
        'TeethFilename '
        'PrintCheck'
        'RowHeight'
        'SignInput'
        'ChartTag'
        'LineNo'
        'isNotice')
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\gridset_nx.ini'
      ColumnSize.Section = 'grdProgress'
      ColumnSize.Location = clIniFile
      ControlLook.FixedGradientHoverFrom = 13619409
      ControlLook.FixedGradientHoverTo = 12502728
      ControlLook.FixedGradientHoverMirrorFrom = 12502728
      ControlLook.FixedGradientHoverMirrorTo = 11254975
      ControlLook.FixedGradientHoverBorder = 12033927
      ControlLook.FixedGradientDownFrom = 8816520
      ControlLook.FixedGradientDownTo = 7568510
      ControlLook.FixedGradientDownMirrorFrom = 7568510
      ControlLook.FixedGradientDownMirrorTo = 6452086
      ControlLook.FixedGradientDownBorder = 14991773
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
      FixedAsButtons = True
      FixedColWidth = 35
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
      MouseActions.RowSelect = True
      MouseActions.SelectOnRightClick = True
      MouseActions.WheelIncrement = 1
      Navigation.EditSelectAll = False
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
      SizeWhileTyping.Height = True
      SizeWhileTyping.Width = True
      SizeWithForm = True
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ExplicitLeft = 6
      ExplicitTop = 6
      ColWidths = (
        35
        29
        101
        100
        100
        64
        122
        37
        45
        59
        44
        65
        43
        43
        33
        54
        41
        34
        64
        29
        31
        17
        14
        12
        13
        11
        12
        56
        40
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
      object Image2: TImage
        Left = 545
        Top = 30
        Width = 105
        Height = 105
        AutoSize = True
        Visible = False
      end
      object btnChartMod: TButton
        Left = 295
        Top = 21
        Width = 68
        Height = 23
        Hint = #49688#51221#51200#51109
        Caption = #45236#50857#49688#51221
        TabOrder = 2
        TabStop = False
        Visible = False
      end
      object btnDateMod: TButton
        Left = 86
        Top = 21
        Width = 68
        Height = 23
        Hint = #51068#51088' '#49688#51221#51200#51109
        Caption = #49688#51221' '#51200#51109
        TabOrder = 4
        TabStop = False
        Visible = False
      end
      object btnTeethEdit: TButton
        Left = 198
        Top = 23
        Width = 57
        Height = 20
        Hint = #52824#49885#49688#51221
        Caption = #52824#49885#49688#51221
        TabOrder = 3
        TabStop = False
        Visible = False
      end
      object btnChartInput: TButton
        Left = 485
        Top = 21
        Width = 28
        Height = 23
        Hint = #52264#54021#49696#49885' '#48520#47084#50724#44592
        Caption = '...'
        TabOrder = 5
        TabStop = False
        Visible = False
      end
    end
  end
  object pnlTool: TPanel
    Left = 0
    Top = 91
    Width = 981
    Height = 68
    Align = alTop
    Caption = #44036#54840#44592#47197#48512
    ShowCaption = False
    TabOrder = 4
    object btnNew: TButton
      Left = 71
      Top = 6
      Width = 106
      Height = 43
      Caption = #49352#47196' '#51089#49457
      TabOrder = 0
      OnClick = btnNewClick
    end
    object btnall: TButton
      Left = 18
      Top = 6
      Width = 47
      Height = 43
      Caption = 'ALL'
      TabOrder = 1
      OnClick = btnallClick
    end
    object btnPrint: TButton
      Left = 183
      Top = 6
      Width = 106
      Height = 43
      Caption = 'Print'
      TabOrder = 2
      OnClick = btnPrintClick
    end
    object cbPreview: TCheckBox
      Left = 295
      Top = 14
      Width = 97
      Height = 17
      Caption = #48120#47532#48372#44592
      TabOrder = 3
    end
  end
  object pnlInput: TAdvPanel
    Left = 44
    Top = 232
    Width = 699
    Height = 425
    TabOrder = 3
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Visible = True
    DoubleBuffered = False
    Position.Save = True
    Position.Key = '.\db.ini'
    Position.Section = 'actingInputer'
    Position.Location = clInifile
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 293
    object Splitter1: TSplitter
      Left = 502
      Top = 60
      Height = 307
      Align = alRight
      ExplicitLeft = 456
      ExplicitTop = 8
      ExplicitHeight = 100
    end
    object PageControl1: TPageControl
      Left = 505
      Top = 60
      Width = 193
      Height = 307
      ActivePage = tsFirstTab
      Align = alRight
      MultiLine = True
      TabOrder = 0
      object tsFirstTab: TTabSheet
        Caption = 'tsFirstTab'
        object Tree1: TTreeView
          Left = 3
          Top = 10
          Width = 172
          Height = 239
          BevelKind = bkFlat
          BorderStyle = bsNone
          Indent = 19
          MultiSelect = True
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          Visible = False
          OnCustomDrawItem = Tree1CustomDrawItem
          OnDblClick = Tree1DblClick
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 19
      Width = 697
      Height = 41
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 1
      object Label1: TLabel
        Left = 19
        Top = 15
        Width = 66
        Height = 12
        Cursor = crHandPoint
        AutoSize = False
        Caption = #9632' '#51068#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 453
        Top = 15
        Width = 66
        Height = 12
        Cursor = crHandPoint
        AutoSize = False
        Caption = #9632' '#44036#54840#49324
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 199
        Top = 15
        Width = 66
        Height = 12
        Cursor = crHandPoint
        AutoSize = False
        Caption = #9632' '#49884#44036
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object EllipsLabel1: TLabel
        Left = 285
        Top = 15
        Width = 11
        Height = 13
        Caption = #49884
        Transparent = True
      end
      object EllipsLabel2: TLabel
        Left = 340
        Top = 15
        Width = 11
        Height = 13
        Caption = #48516
        Transparent = True
      end
      object dtToday: TDateTimePicker
        Left = 71
        Top = 10
        Width = 102
        Height = 21
        Date = 39503.000000000000000000
        Time = 0.404778460600937300
        ImeName = 'Microsoft IME 2003'
        TabOrder = 0
      end
      object cbTime: TComboBox
        Left = 244
        Top = 10
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = '09'
        Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
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
          '21'
          '22'
          '23'
          '24')
      end
      object cbmin: TComboBox
        Left = 301
        Top = 10
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = '30'
        Items.Strings = (
          '00'
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
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
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '36'
          '37'
          '38'
          '39'
          '40'
          '41'
          '42'
          '43'
          '44'
          '45'
          '46'
          '47'
          '48'
          '49'
          '50'
          '51'
          '52'
          '53'
          '54'
          '55'
          '56'
          '57'
          '58'
          '59')
      end
      object cbAutoTime: TCheckBox
        Left = 369
        Top = 12
        Width = 64
        Height = 17
        Caption = #49884#44036' '#51088#46041
        TabOrder = 3
        OnClick = cbAutoTimeClick
      end
      object cbDam: TComboBox
        Left = 512
        Top = 8
        Width = 145
        Height = 21
        TabOrder = 4
      end
    end
    object pnlBottom: TPanel
      Left = 1
      Top = 367
      Width = 697
      Height = 57
      Align = alBottom
      Caption = 'pnlBottom'
      ShowCaption = False
      TabOrder = 2
      DesignSize = (
        697
        57)
      object Button2: TButton
        Left = 423
        Top = 7
        Width = 75
        Height = 36
        Anchors = [akRight, akBottom]
        Caption = #52712#49548
        TabOrder = 0
        OnClick = Button2Click
      end
      object btnModNewChart: TButton
        Left = 510
        Top = 6
        Width = 159
        Height = 37
        Anchors = [akRight, akBottom]
        Caption = #49688#51221'/'#51200#51109
        TabOrder = 1
        OnClick = btnModNewChartClick
      end
    end
    object pnlEditor: TAdvPanel
      Left = 1
      Top = 60
      Width = 501
      Height = 307
      Align = alClient
      TabOrder = 3
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = clSilver
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Visible = True
      DoubleBuffered = False
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 185
      object edtTxPrg: TRichEdit
        Left = 1
        Top = 61
        Width = 499
        Height = 245
        Align = alClient
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        WantReturns = False
        Zoom = 100
        OnClick = edtTxPrgClick
        OnContextPopup = edtTxPrgContextPopup
        OnSelectionChange = edtTxPrgSelectionChange
      end
      object AdvPanel2: TPanel
        Left = 1
        Top = 19
        Width = 499
        Height = 42
        Align = alTop
        BevelOuter = bvNone
        Caption = 'AdvPanel2'
        Color = 16645114
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentDoubleBuffered = False
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          499
          42)
        object ItalBtn: TSpeedButton
          Left = 35
          Top = 8
          Width = 23
          Height = 22
          AllowAllUp = True
          GroupIndex = 2
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0000000
            00000000000000000000000000000000000000000000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C000000000000000000000
            0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C00000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0000000000000
            000000000000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          OnClick = ItalBtnClick
        end
        object BoldBtn: TSpeedButton
          Left = 11
          Top = 8
          Width = 23
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C00000000000000000000000000000000000000000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C00000000000000000000000000000000000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
            00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C00000000000000000000000000000000000000000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          OnClick = BoldBtnClick
        end
        object UnderBtn: TSpeedButton
          Left = 59
          Top = 8
          Width = 23
          Height = 22
          AllowAllUp = True
          GroupIndex = 3
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C00000000000000000C0C0C0C0C0C0C000C0C0C0C00000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C000C0C0C0C00000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C00000000000000000C0C0C0C0C0C0C000C0C0C0C00000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C000C0C0C0C00000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C00000000000000000C0C0C0C0C0C0C000C0C0C0C00000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C000C0C0C0C00000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0000000000000000000000000C0C0C0C0C0C0C000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          OnClick = UnderBtnClick
        end
        object ColorBtn: TSpeedButton
          Left = 215
          Top = 7
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C00000000000008080000080800000808000008080000080
            80000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0008080000080800000FFFFC0C0C0C00000FFFFC0C0C0C00000FF
            FFC0C0C0C00000FFFFC00000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000008080C0C0C0C00000FFFF00C0C0C00000FFFF00C0C0C000FF0000808000
            008080000000C0C0C00000FFFF00C0C0C000000000C0C0C0C0C0C0C0C0000080
            80C0C0C0C00000FFFF0000008000000080C0C0C0C00000FFFFFFFF0000FFFF00
            0000FF0000FF800000C0C0C0C00000FFFF00C0C0C000000000C0008080000080
            800000FFFF000000FF000000FF000000FF00000080C0C0C0C00000FFFF00C0C0
            C000FF0000FFFF00000000FFFFC0C0C0C00000FFFFC0000000C00080800000FF
            FFC0C0C0C00000FFFFC00000FF000000FF00C0C0C00000FFFF00C0C0C00000FF
            FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C000000000C0008080C0C0C0
            C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF000000
            0000000000000000000000000000C0C0C00000808000000000000080800000FF
            FF0000800000008000000080000000FFFFC0C0C0C00000FFFFC0C0C0C0000000
            00FFFFFFFFFFFF000000000000C0C0C0C000000000C0C0C0C000008080C0C0C0
            C00000FF000000FF0000008000C0C0C0C00000FFFF00C0C0C00000FFFF000000
            00000000000000000000FF00000000000000C0C0C0C0C0C0C0000080800000FF
            FF0000FF000000FF0000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
            FF00C0C0C000008080C0C0C0C000FF00000000000000C0C0C0C0008080C0C0C0
            C00000FFFF00C0C0C00000FFFF0080008080800080008000808000FFFFC0C0C0
            C0000080800000000000C0C0C0C0C0C0C0008080800000000000008080FFFFFF
            FF00C0C0C00000FFFF00FF00FFFFFF00FF00FF00FFFF800080C0C0C0C00000FF
            FF0000000000C0C0C0C0C0C0C000C0C0C0C00000000000000000008080000080
            8000FFFFFFC0C0C0C00000FFFFFFFF00FF00FF00FFC0C0C0C00000FFFF000080
            8000000000C0C0C0C0C0C0C0C000C0C0C0C000000000000000C0C0C0C0C00080
            80FFFFFFFFFFFFFFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C0000000
            00C0C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0000000C0C0C0C0C0C0C0
            C0000080800000808000FFFFFFFFFFFFFF00FFFFFFFF0080800000000000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C00080800000808000008080000080800000808000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          OnClick = ColorBtnClick
        end
        object FontBtn: TSpeedButton
          Left = 236
          Top = 7
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333FFF33FFFFF33333300033000
            00333337773377777333333330333300033333337FF33777F333333330733300
            0333333377FFF777F33333333700000073333333777777773333333333033000
            3333333337FF777F333333333307300033333333377F777F3333333333703007
            33333333377F7773333333333330000333333333337777F33333333333300003
            33333333337777F3333333333337007333333333337777333333333333330033
            3333333333377333333333333333033333333333333733333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = FontBtnClick
        end
        object LeftBtn: TSpeedButton
          Left = 420
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Set selected item left aligned'
          AllowAllUp = True
          GroupIndex = 4
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          ParentShowHint = False
          ShowHint = True
          OnClick = LeftBtnClick
        end
        object CenterBtn: TSpeedButton
          Left = 439
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Set selected item center alignment'
          AllowAllUp = True
          GroupIndex = 5
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
            0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C00000000000000000000000000000000000000000000000
            000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
            0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          ParentShowHint = False
          ShowHint = True
          OnClick = CenterBtnClick
        end
        object RightBtn: TSpeedButton
          Left = 463
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Set selected item right alignment'
          AllowAllUp = True
          GroupIndex = 6
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
            C0C0C0C0C000C0C0C0C0C0C0C000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
            C0C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
            C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
          ParentShowHint = False
          ShowHint = True
          OnClick = RightBtnClick
        end
        object CheckBox1: TCheckBox
          Left = 876
          Top = 5
          Width = 20
          Height = 17
          Hint = #52264#53944#51064#49604#49884' '#52280#44256#49324#54637' '#51064#49604
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object spSkinButton6: TButton
          Left = 945
          Top = 3
          Width = 42
          Height = 20
          Anchors = [akTop, akRight]
          Caption = #54172#52628#44032
          TabOrder = 0
        end
        object spSkinButton7: TButton
          Left = 1030
          Top = 3
          Width = 59
          Height = 20
          Anchors = [akTop, akRight]
          Caption = #49696#49885#54200#51665
          TabOrder = 1
        end
        object spSkinButton8: TButton
          Left = 1193
          Top = 3
          Width = 61
          Height = 20
          Hint = #51217#49688#54016#44284' '#52264#54021#44592#47197' '#54016#51060' '#51068#52824#54644#50556' '#45824#44592#49345#53468#44032' '#48320#44221#46121#45768#45796'.'
          Anchors = [akTop, akRight]
          Caption = #51652#47308#49884#51089
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object spSkinButton9: TButton
          Tag = 1
          Left = 988
          Top = 3
          Width = 41
          Height = 20
          Anchors = [akTop, akRight]
          Caption = #54172#49688#51221
          TabOrder = 4
        end
        object spSkinButton10: TButton
          Left = -139
          Top = 3
          Width = 54
          Height = 20
          Anchors = [akTop, akRight]
          Caption = #52320#53944#51064#49604
          TabOrder = 5
        end
        object spSkinButton11: TButton
          Left = 1151
          Top = 3
          Width = 18
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'C'
          TabOrder = 6
        end
        object spSkinButton12: TButton
          Left = 1170
          Top = 3
          Width = 18
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'P'
          TabOrder = 7
        end
        object spSkinButton13: TButton
          Left = 1099
          Top = 3
          Width = 49
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'W+/H+'
          TabOrder = 8
        end
        object FontName: TComboBox
          Left = 265
          Top = 7
          Width = 110
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 9
          OnChange = FontNameChange
        end
        object FontSize: TComboBox
          Left = 376
          Top = 8
          Width = 44
          Height = 21
          Style = csDropDownList
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 10
          OnChange = FontSizeChange
          Items.Strings = (
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
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '30'
            '36'
            '48'
            '72')
        end
        object pnlCol1: TPanel
          Left = 107
          Top = 8
          Width = 23
          Height = 22
          Color = clRed
          ParentBackground = False
          TabOrder = 11
          OnClick = pnlCol1Click
        end
        object pnlcol2: TPanel
          Left = 128
          Top = 8
          Width = 23
          Height = 22
          Color = clBlue
          ParentBackground = False
          TabOrder = 12
          OnClick = pnlCol1Click
        end
        object pnlcol3: TPanel
          Left = 149
          Top = 8
          Width = 23
          Height = 22
          Color = clGreen
          ParentBackground = False
          TabOrder = 13
          OnClick = pnlCol1Click
        end
        object pnlcol4: TPanel
          Left = 170
          Top = 8
          Width = 23
          Height = 22
          Color = clYellow
          ParentBackground = False
          TabOrder = 14
          OnClick = pnlCol1Click
        end
        object pnlcol5: TPanel
          Left = 191
          Top = 8
          Width = 23
          Height = 22
          Color = 12615935
          ParentBackground = False
          TabOrder = 15
          OnClick = pnlCol1Click
        end
        object pnlCol6: TPanel
          Left = 84
          Top = 8
          Width = 23
          Height = 22
          Color = clBlack
          ParentBackground = False
          TabOrder = 16
          OnClick = pnlCol1Click
        end
      end
    end
    object AdvPanel3: TAdvPanel
      Left = 391
      Top = 94
      Width = 354
      Height = 311
      TabOrder = 4
      UseDockManager = True
      Visible = False
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
      object Image1: TImage
        Left = 143
        Top = 120
        Width = 181
        Height = 41
        Visible = False
      end
      object Label2: TLabel
        Left = 143
        Top = 95
        Width = 34
        Height = 13
        Caption = 'portion'
        Visible = False
      end
      object lbCharttagList: TListBox
        Left = 11
        Top = 30
        Width = 121
        Height = 116
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 13
        Items.Strings = (
          ''
          #49345#45812
          #49345#45812#50756#47308
          #51652#45800#51456#48708
          #51652#45800
          #51652#45800#50756#47308
          '1'#52264#44368#51221
          '2'#52264#44368#51221
          #51204#52404#44368#51221
          #48512#48516#44368#51221
          #45800#49692#44368#51221
          #51116#44368#51221
          #45800#49692#44368#51221#50756#47308
          '1'#52264#44368#51221#50756#47308
          '1'#52264#44368#51221#51333#47308
          #46356#48376#46377
          'Check Stop ')
        TabOrder = 0
        Visible = False
      end
      object edtChartTag: TEdit
        Left = 16
        Top = 179
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'edtChartTag'
        Visible = False
      end
      object edtCharttagOrder: TEdit
        Left = 16
        Top = 152
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'edtChartTagOrder'
        Visible = False
      end
      object edtTxPrice: TEdit
        Left = 143
        Top = 68
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 3
        Text = 'edtTxPrice'
        Visible = False
      end
      object edtCC: TEdit
        Left = 218
        Top = 68
        Width = 102
        Height = 21
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOrder = 4
        Text = 'edtCC'
      end
      object edtTx: TEdit
        Left = 142
        Top = 50
        Width = 151
        Height = 21
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        TabOrder = 5
        Text = 'edtTx'
      end
      object rgSelect: TRadioGroup
        Left = 11
        Top = 206
        Width = 331
        Height = 35
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'chart'
          'memo Cc'
          'memo Tx')
        TabOrder = 6
        Visible = False
      end
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'nurseActing_f'
    Version = '1.4.1.4'
    Left = 202
    Top = 255
  end
  object ColorDialog1: TColorDialog
    Left = 248
    Top = 253
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 285
    Top = 253
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 290
    Top = 357
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
    ReportOptions.LastChange = 43733.551164108790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 353
    Top = 42
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
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110236220472000000
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
          Top = 7.559060000000000000
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
        Height = 26.456710000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
        RowCount = 0
        Stretched = True
        object frxUserDataSet1val1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.889763780000000000
          Width = 75.590600000000000000
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
          Left = 83.149660000000000000
          Top = 1.889763780000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'jintime'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxUserDataSet1."jintime"]')
        end
        object frxUserDataSet1val3: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 1.889763779527559000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'remark'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."remark"]')
          VAlign = vaCenter
        end
        object frxUserDataSet1chongtu: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 1.889763779527559000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'nurseName'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."nurseName"]')
          VAlign = vaCenter
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 718.110236220000000000
          Height = 0.377952760000000000
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
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
            #44036#54840#44592#47197#51648)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#49457#47749']')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 75.590600000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '['#51452#48124#46321#47197#48264#54840']')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 75.590600000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#52264#53944#48264#54840']')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 102.047244094488000000
          Width = 718.110236220472000000
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 23.055132760000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Condition = #52376#48169#45236#50857
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.889763780000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #51068#51088)
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 1.889763780000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #49884#44036)
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 1.889763780000000000
          Width = 514.016080000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #45236#50857)
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44036#54840#49324)
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 18.897637795275590000
          Width = 718.110236220472000000
          Height = 0.377952760000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 275.905690000000000000
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
          Width = 718.110236220472000000
          Height = 0.377952755905512000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 465
    Top = 40
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Fields.Strings = (
      'jinday'
      'jintime'
      'remark'
      'nurseName')
    OnGetValue = frxUserDataSet1GetValue
    Left = 473
    Top = 112
  end
end
