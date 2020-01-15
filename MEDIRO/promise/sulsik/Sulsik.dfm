object Sulsik_f: TSulsik_f
  Left = 809
  Top = 204
  BorderIcons = [biMinimize, biMaximize]
  Caption = #49696#49885#51077#47141'(Sulsik_f)'
  ClientHeight = 350
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object btnMoveUp: TButton
    Left = 134
    Top = 290
    Width = 51
    Height = 25
    Caption = #9650
    TabOrder = 4
    OnClick = btnMoveUpClick
  end
  object btnMoveDown: TButton
    Left = 189
    Top = 290
    Width = 51
    Height = 25
    Caption = #9660
    TabOrder = 5
    OnClick = btnMoveDownClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 41
    Align = alTop
    TabOrder = 6
    ExplicitWidth = 245
    object Label1: TLabel
      Left = 9
      Top = 14
      Width = 24
      Height = 12
      Caption = #48516#47448
    end
    object cbBunRyu: TComboBox
      Left = 50
      Top = 10
      Width = 126
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      OnChange = cbBunRyuChange
      Items.Strings = (
        ''
        #44368#51221
        #48372#52384
        #49457#54805
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
    end
    object Button4: TButton
      Left = 180
      Top = 10
      Width = 19
      Height = 19
      Caption = '+'
      TabOrder = 1
      Visible = False
    end
    object Button5: TButton
      Left = 205
      Top = 10
      Width = 19
      Height = 19
      Caption = '-'
      TabOrder = 2
      Visible = False
    end
  end
  object btnAdd: TButton
    Left = 8
    Top = 317
    Width = 79
    Height = 25
    Caption = #52628#44032
    TabOrder = 3
    OnClick = btnAddClick
  end
  object btnPost: TButton
    Left = 93
    Top = 317
    Width = 72
    Height = 25
    Caption = #51200#51109
    TabOrder = 0
    OnClick = btnPostClick
  end
  object btnDelete: TButton
    Left = 174
    Top = 317
    Width = 72
    Height = 25
    Caption = #49325#51228
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object Button1: TButton
    Left = 255
    Top = 317
    Width = 72
    Height = 25
    Caption = #45803#44592
    TabOrder = 2
    OnClick = Button1Click
  end
  object grdMain: TAdvStringGrid
    Left = 8
    Top = 36
    Width = 329
    Height = 236
    Cursor = crDefault
    ColCount = 2
    DrawingStyle = gdsClassic
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 7
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'No.'
      #49696#49885#47749)
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
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.4.1.0'
    ColWidths = (
      32
      276)
  end
end
