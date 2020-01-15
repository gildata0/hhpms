object corpHospStat_f: TcorpHospStat_f
  Left = 0
  Top = 0
  Caption = 'corpHospStat_f'
  ClientHeight = 418
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter1: TAdvSplitter
    Left = 505
    Top = 73
    Height = 345
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    Persist.Enable = True
    Persist.Key = '.\gridset\gridSet_CorpHospStat.ini'
    Persist.Section = 'position'
    ExplicitLeft = 336
    ExplicitTop = 224
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 73
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label3: TLabel
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
    object Label1: TLabel
      Left = 3
      Top = 34
      Width = 52
      Height = 17
      Caption = #51312#54924#44592#44036
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 3
      Top = 9
      Width = 52
      Height = 17
      Caption = #51312#54924#45380#46020
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 188
      Top = 9
      Width = 13
      Height = 17
      Caption = #50900
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
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
      TabOrder = 0
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
      TabOrder = 1
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
      TabOrder = 2
      OnChange = cbYearChange
      OnDropDown = cbYearDropDown
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
      TabOrder = 3
      OnChange = cbMonthChange
      OnDropDown = cbMonthDropDown
      Items.Strings = (
        '')
    end
    object edtYY: TEdit
      Left = 659
      Top = 3
      Width = 41
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
      Text = 'edtYY'
      Visible = False
    end
    object edtMM: TEdit
      Left = 706
      Top = 2
      Width = 57
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
      Visible = False
    end
    object btnSch: TButton
      Left = 289
      Top = 2
      Width = 133
      Height = 24
      Hint = #44592#48376#51008' '#49345#45812#51068#51088#47196' '#44160#49353
      Caption = #44160#49353
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = False
      WordWrap = True
      OnClick = btnSchClick
    end
    object Button1: TButton
      Left = 449
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 7
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 464
      Top = 32
      Width = 97
      Height = 17
      Caption = #51652#47308#51204#52404
      TabOrder = 8
    end
    object cbShowAll: TCheckBox
      Left = 289
      Top = 32
      Width = 97
      Height = 17
      Caption = 'show All'
      TabOrder = 9
    end
  end
  object grdCorpHospList: TAdvStringGrid
    Left = 0
    Top = 73
    Width = 505
    Height = 345
    Cursor = crDefault
    Align = alLeft
    ColCount = 8
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 1
    OnKeyUp = grdCorpHospListKeyUp
    HoverRowCells = [hcNormal, hcSelected]
    OnClickSort = grdCorpHospListClickSort
    OnClickCell = grdCorpHospListClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'No.'
      #51068#51088
      #48337#50896#53076#46300
      #48337#50896#47749
      #50896#51109#47749
      #52264#53944#48264#54840
      #54872#51088#47749
      #51217#49688#48264#54840)
    ColumnSize.Save = True
    ColumnSize.Key = '.\gridset\gridSet_CorpHospStat.ini'
    ColumnSize.Section = 'grdCorpHosp'
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
    FixedColAlways = True
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
    ScrollProportional = True
    ScrollSynch = True
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
    SortSettings.IgnoreCase = True
    Version = '8.4.4.1'
    ExplicitLeft = -3
    ExplicitTop = 79
    ColWidths = (
      32
      64
      64
      64
      64
      64
      64
      64)
  end
  object grdJx: TAdvStringGrid
    Left = 508
    Top = 73
    Width = 407
    Height = 345
    Cursor = crDefault
    Align = alClient
    ColCount = 7
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentFont = False
    PopupMenu = PopupMenu2
    ScrollBars = ssBoth
    TabOrder = 2
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = grdJxGetCellColor
    OnGetAlignment = grdJxGetAlignment
    OnGetFormat = grdJxGetFormat
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'No.'
      #49688#44032#47749#52845
      #49688#44032#53076#46300
      #49688#47049
      #45800#44032
      #44552#50529
      'Modality')
    ColumnSize.Save = True
    ColumnSize.Key = '.\gridset\gridSet_CorpHospStat.ini'
    ColumnSize.Section = 'grdJx'
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
    ScrollProportional = True
    ScrollSynch = True
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
    Version = '8.4.4.1'
    ColWidths = (
      32
      64
      64
      64
      64
      64
      64)
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\FORM.INI'
    SaveKey = 'corpHospStat_f'
    Version = '1.4.1.4'
    Left = 524
    Top = 161
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdCorpHospList
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportHTMLTags = False
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 539
    Top = 6
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Left = 605
    Top = 5
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 201
    object copy1: TMenuItem
      Caption = 'copy'
      OnClick = copy1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 668
    Top = 201
    object copy2: TMenuItem
      Caption = 'copy'
      OnClick = copy2Click
    end
  end
end
