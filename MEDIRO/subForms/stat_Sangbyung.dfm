object stat_sangbyung_f: Tstat_sangbyung_f
  Left = 131
  Top = 185
  Caption = 'stat_sangbyung_f'
  ClientHeight = 524
  ClientWidth = 1105
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 486
    Top = 57
    Height = 467
    ExplicitLeft = 208
    ExplicitTop = 35
    ExplicitHeight = 483
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 486
    Height = 467
    Align = alLeft
    Alignment = taLeftJustify
    TabOrder = 0
    object grdprm: TAdvStringGrid
      Left = 1
      Top = 42
      Width = 484
      Height = 424
      Cursor = crDefault
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdprmGetAlignment
      OnGetFormat = grdprmGetFormat
      OnClickSort = grdprmClickSort
      OnClickCell = grdprmClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #53076#46300
        #54637#47785#47749
        #44396#48516
        #49688#47049
        #51228#51312#49324)
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'newnewon'
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
      FixedColWidth = 32
      FixedRowHeight = 22
      FixedRowAlways = True
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
      SortSettings.IgnoreBlanks = True
      SortSettings.IgnoreCase = True
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '8.4.4.1'
      ColWidths = (
        32
        76
        250
        47
        64
        64)
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 484
      Height = 41
      Align = alTop
      TabOrder = 1
      object btnExcel: TButton
        Left = 9
        Top = 10
        Width = 80
        Height = 25
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        TabOrder = 0
        OnClick = btnExcelClick
      end
      object btnPrint: TButton
        Left = 95
        Top = 10
        Width = 80
        Height = 25
        Cursor = crHandPoint
        Caption = #51064#49604
        TabOrder = 1
        OnClick = btnPrintClick
      end
    end
  end
  object Panel4: TPanel
    Left = 489
    Top = 57
    Width = 616
    Height = 467
    Align = alClient
    TabOrder = 1
    object AdvStringGrid1: TAdvStringGrid
      Left = 1
      Top = 42
      Width = 614
      Height = 424
      Cursor = crDefault
      Align = alClient
      ColCount = 9
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnClickSort = AdvStringGrid1ClickSort
      OnDblClickCell = AdvStringGrid1DblClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51068#51088
        #52264#53944#48264#54840
        #49457#47749
        'Code'
        'Remark'
        #52509#53804
        #54943#49688
        #51068#49688
        '')
      ColumnSize.Save = True
      ColumnSize.Key = '.\db.ini'
      ColumnSize.Section = 'treatSet'
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
      FixedColWidth = 32
      FixedRowHeight = 22
      FixedRowAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clBlack
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.0n'
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
        32
        84
        116
        129
        108
        79
        64
        64
        64)
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 614
      Height = 41
      Align = alTop
      TabOrder = 1
      object btnExcel2: TButton
        Left = 5
        Top = 10
        Width = 80
        Height = 25
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        TabOrder = 0
        OnClick = btnExcel2Click
      end
    end
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 0
    Width = 1105
    Height = 57
    Align = alTop
    Caption = 'spSkinPanel1'
    ShowCaption = False
    TabOrder = 2
    DesignSize = (
      1105
      57)
    object Label5: TLabel
      Left = 157
      Top = 34
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
    object Label6: TLabel
      Left = 3
      Top = 34
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
    object Label7: TLabel
      Left = 3
      Top = 9
      Width = 60
      Height = 15
      Caption = #51312#54924#45380#46020
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 270
      Top = 9
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
      Visible = False
    end
    object Label9: TLabel
      Left = 188
      Top = 9
      Width = 15
      Height = 15
      Caption = #50900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 374
      Top = 9
      Width = 30
      Height = 15
      Caption = #45812#45817
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label11: TLabel
      Left = 968
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Label11'
      Visible = False
    end
    object progressbar: TAdvProgressBar
      Left = 270
      Top = 48
      Width = 222
      Height = 4
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
      ShowPercentage = False
      ShowPosition = False
      Steps = 20
      Version = '1.3.1.0'
      Visible = False
    end
    object Label1: TLabel
      Left = 650
      Top = 11
      Width = 24
      Height = 13
      AutoSize = False
      Caption = ' '#54016
      Transparent = True
      Visible = False
    end
    object btnXls: TAdvGlowButton
      Left = 1175
      Top = 56
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
      Visible = False
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
      Left = 66
      Top = 32
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
      TabOrder = 3
    end
    object dt2: TDateTimePicker
      Left = 173
      Top = 32
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
      TabOrder = 4
    end
    object edtYY: TEdit
      Left = 753
      Top = 4
      Width = 41
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 7
      Text = 'edtYY'
      Visible = False
    end
    object edtMM: TEdit
      Left = 1176
      Top = 44
      Width = 57
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 9
      Visible = False
    end
    object cbTeamName: TComboBox
      Left = 289
      Top = 6
      Width = 78
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 2
      Text = #51204#52404
      Visible = False
      Items.Strings = (
        #51204#52404)
    end
    object cbYear: TComboBox
      Left = 68
      Top = 6
      Width = 65
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        '')
    end
    object cbMonth: TComboBox
      Left = 135
      Top = 6
      Width = 47
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 6
      OnChange = cbMonthChange
      Items.Strings = (
        '')
    end
    object cbHyg: TComboBox
      Left = 406
      Top = 6
      Width = 78
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 8
      Text = #51204#52404
      Visible = False
      Items.Strings = (
        #51204#52404)
    end
    object cbNew: TCheckBox
      Left = 723
      Top = 31
      Width = 193
      Height = 17
      Anchors = [akLeft, akTop, akBottom]
      Caption = #51312#54924#44592#44036' '#45236' '#49888#54872#47564' '#51312#54924
      TabOrder = 10
      Visible = False
    end
    object Button3: TButton
      Left = 808
      Top = 8
      Width = 145
      Height = 25
      Caption = 'Latitude Longitude'
      TabOrder = 11
      Visible = False
    end
    object cbKind: TComboBox
      Left = 339
      Top = 30
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 3
      TabOrder = 12
      Text = #52376#52824' '#53685#44228
      Items.Strings = (
        #44160#49353' '#54637#47785' '#49440#53469
        #52376#48169#50557' '#53685#44228
        #49345#48337' '#53685#44228
        #52376#52824' '#53685#44228
        #51116#47308' '#53685#44228)
    end
    object cbTeam: TComboBox
      Left = 666
      Top = 6
      Width = 63
      Height = 21
      Style = csDropDownList
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ItemIndex = 0
      TabOrder = 13
      Text = #51204#48512
      Visible = False
      Items.Strings = (
        #51204#48512
        '1'#54016
        '2'#54016
        '3'#54016
        '4'#54016
        '5'#54016
        '6'#54016
        '7'#54016
        '8'#54016)
    end
    object btnSch: TButton
      Left = 507
      Top = 4
      Width = 133
      Height = 37
      Caption = #44160#49353
      TabOrder = 0
      TabStop = False
      WordWrap = True
      OnClick = btnSchClick
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 1030
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 995
  end
  object AdvPreviewDialog1: TAdvPreviewDialog
    CloseAfterPrint = False
    DialogCaption = 'Preview'
    DialogPrevBtn = 'Previous'
    DialogNextBtn = 'Next'
    DialogPrintBtn = 'Print'
    DialogCloseBtn = 'Close'
    PreviewFast = False
    PreviewWidth = 800
    PreviewHeight = 600
    PreviewLeft = 100
    PreviewTop = 100
    PreviewCenter = False
    Left = 960
  end
end
