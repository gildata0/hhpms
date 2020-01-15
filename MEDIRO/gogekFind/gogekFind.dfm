object gogekfind_f: Tgogekfind_f
  Left = 131
  Top = 242
  Caption = 'gogekfind_f'
  ClientHeight = 501
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.7.9'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Text = #44256#44061#44160#49353
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 0
    object Label1: TLabel
      Left = 465
      Top = 15
      Width = 7
      Height = 13
      Caption = '~'
    end
    object AdvProgressBar1: TAdvProgressBar
      Left = 665
      Top = 10
      Width = 128
      Height = 18
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
      ShowBorder = True
      Version = '1.3.1.0'
    end
    object EdtSch2: TAdvEdit
      Left = 237
      Top = 10
      Width = 133
      Height = 23
      DefaultHandling = True
      EmptyText = #44160#49353#50612#47484' '#51077#47141#54616#49464#50836
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 1
      Text = ''
      Visible = True
      OnKeyPress = EdtSch2KeyPress
      Version = '3.4.9.0'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 375
      Top = 10
      Width = 88
      Height = 21
      Date = 41935.000000000000000000
      Time = 0.333457743057806500
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
    end
    object DateTimePicker2: TDateTimePicker
      Left = 476
      Top = 10
      Width = 84
      Height = 21
      Date = 41935.000000000000000000
      Time = 0.333571030103485100
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
    end
    object AdvGlowButton1: TButton
      Left = 802
      Top = 9
      Width = 81
      Height = 24
      Caption = 'Excel '#51200#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      WordWrap = True
      OnClick = AdvGlowButton1Click
    end
    object btnSearch: TButton
      Left = 7
      Top = 8
      Width = 81
      Height = 24
      Caption = #44160#49353
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      WordWrap = True
      OnClick = btnSearchClick
    end
    object AdvGlowButton3: TButton
      Left = 572
      Top = 9
      Width = 89
      Height = 24
      Caption = 'SMS'#51204#49569
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      WordWrap = True
      OnClick = AdvGlowButton3Click
    end
    object Button2: TButton
      Left = 890
      Top = 9
      Width = 86
      Height = 24
      Caption = #45936#51060#53552' '#51221#47532
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = Button2Click
    end
    object cbGubun: TComboBox
      Left = 95
      Top = 9
      Width = 139
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 7
      Text = #47784#46160#44160#49353
      OnChange = cbGubunChange
      Items.Strings = (
        #47784#46160#44160#49353
        #54872#51088#47749
        #48337#47197#48264#54840
        #51204#54868#48264#54840
        #55092#45824#51204#54868
        #51452#49548
        #53945#51060#49324#54637
        #54588#48372#54744#51088
        #49373#45380#50900#51068
        #52572#52488#45236#50896#51068
        #52572#51333#45236#50896#51068
        #48120#46321#47197#54872#51088#47532#49828#53944
        #54016)
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 439
    Width = 991
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.7.9'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
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
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    Text = ''
    DesignSize = (
      991
      62)
    FullHeight = 0
    object lblCount: TEllipsLabel
      Left = 16
      Top = 20
      Width = 48
      Height = 12
      Caption = 'lblCount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #46027#50880#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object lbltime: TEllipsLabel
      Left = 16
      Top = 40
      Width = 42
      Height = 12
      Caption = 'lbltime'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #46027#50880#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object btnSave: TButton
      Left = 825
      Top = 23
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #54869#51064
      TabOrder = 0
      Visible = False
    end
    object btnCancel: TButton
      Left = 913
      Top = 23
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      TabOrder = 1
      Visible = False
    end
    object Button1: TButton
      Left = 737
      Top = 23
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49352#47196
      TabOrder = 2
      Visible = False
    end
    object AdvProgress1: TAdvProgress
      Left = 0
      Top = 0
      Width = 991
      Height = 16
      Align = alTop
      BarColor = clHighlight
      TabOrder = 3
      BkColor = clWindow
      Version = '1.2.0.0'
    end
  end
  object AdvPanel6: TAdvPanel
    Left = 0
    Top = 41
    Width = 991
    Height = 398
    Align = alClient
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.7.9'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
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
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 153
    object grdFind: TAdvStringGrid
      Left = 0
      Top = 0
      Width = 991
      Height = 398
      Cursor = crDefault
      Align = alClient
      ColCount = 14
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdFindGetAlignment
      OnClickSort = grdFindClickSort
      OnDblClickCell = grdFindDblClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #49440#53469
        #48337#47197#48264#54840
        #49457#47749
        #49457#48324
        #45208#51060
        #51452#49548
        #51665#51204#54868
        #55092#45824#51204#54868
        #54588#48372#54744#51088
        #52572#52488#45236#50896#51068
        #52572#51333#45236#50896#51068
        #53945#51060#49324#54637
        #51613#48264#54840)
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\grdFind_pat.ini'
      ColumnSize.Section = 'grdFind_pat'
      ColumnSize.Location = clIniFile
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
      FixedColWidth = 36
      FixedRowHeight = 22
      FixedRowAlways = True
      FixedColAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clBlack
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
      SortSettings.Direction = sdDescending
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '8.4.4.1'
      ColWidths = (
        36
        51
        68
        81
        79
        34
        145
        98
        99
        58
        73
        340
        97
        64)
    end
    object grdCRM: TDBAdvGrid
      Left = 14
      Top = 240
      Width = 752
      Height = 104
      Cursor = crDefault
      ColCount = 2
      DrawingStyle = gdsClassic
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      Version = '2.4.6.0'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'MS Sans Serif'
          PrintFont.Style = []
          Width = 20
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'MS Sans Serif'
          PrintFont.Style = []
          Width = 64
        end>
      InvalidPicture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000000000000000000000000000000000000000000001111111100000
        0000000000000000011111111111100000000000000000011111111111111110
        0000000000000111111111111111111110000000000011111111111111111111
        1100000000011111111111111111111111100000001111117711111111117111
        1110000000111111FF7111111117FF111111000001111118FFF91111117FFFF1
        1111100001111178FFFF711117FFFFF711111000911111178FFFF9117FFFF871
        111110001111199178FFFF97FFFF87111111110011119999178FFFFFFFFF7191
        11111100111999999178FFFFFFF7199911111100119999999997FFFFFF899999
        91111100199999999997FFFFFF9999999911110099999999999FFFFFFFF99999
        999111009999999999FFFFFFFFFF999999911100999999999FFFFF778FFFF999
        99911100999999998FFF879978FFFF999999910099999978FFF87999978FFFF7
        9999910009999978FF8799999978FF8799999000099999978879999999978879
        9999100000999999779999999999779999990000009999977799999999999999
        9991000000099997888879999999999999100000000099978888888888779999
        9900000000000999788888888887999990000000000000999788888888799991
        0000000000000000999788888799991000000000000000000099999999999000
        00000000FF8000FFFF00007FFE00001FF800000FF0000007F0000007E0000003
        C0000001C0000001800000018000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000180000001
        80000003C0000003C0000007E000000FF000001FF800003FFC0000FFFF0001FF
        FFC007FF}
      ShowUnicode = False
      ColWidths = (
        20
        64)
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 16765615
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 16773091
    Settings.Caption.ColorTo = 16765615
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clBlack
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 16445929
    Settings.ColorTo = 15587527
    Settings.ColorMirror = 15587527
    Settings.ColorMirrorTo = 16773863
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = 7485192
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
    Settings.StatusBar.BorderColor = 16765615
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = 7485192
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 16245715
    Settings.StatusBar.ColorTo = 16109747
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2007Luna
    Left = 63
    Top = 91
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdFind
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 657
    Top = 52
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'xls|xls'
    Left = 618
    Top = 51
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'gogekfind_f'
    Version = '1.4.1.4'
    Left = 305
    Top = 96
  end
end
