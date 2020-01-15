object findPt_f: TfindPt_f
  Left = 868
  Top = 432
  ActiveControl = Edit1
  BorderStyle = bsDialog
  Caption = #49688#51652#51088#44160#49353
  ClientHeight = 247
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 206
    Width = 432
    Height = 41
    Align = alBottom
    BorderStyle = bsSingle
    Color = 15392983
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object spSkinButton1: TButton
      Left = 326
      Top = 4
      Width = 85
      Height = 31
      Caption = #45803#44592
      TabOrder = 0
      OnClick = spSkinButton1Click
    end
    object spSkinButton2: TButton
      Left = 236
      Top = 4
      Width = 85
      Height = 31
      Caption = #49440#53469
      TabOrder = 1
      OnClick = spSkinButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 41
    Align = alTop
    BorderStyle = bsSingle
    Color = 15392983
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Edit1: TEdit
      Left = 94
      Top = 10
      Width = 121
      Height = 18
      ImeMode = imSHanguel
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 10
      Width = 73
      Height = 20
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ItemIndex = 0
      TabOrder = 2
      Text = #52264#53944#48264#54840
      Items.Strings = (
        #52264#53944#48264#54840
        #49688' '#51652' '#51088)
    end
    object spSkinButton3: TButton
      Left = 326
      Top = 4
      Width = 85
      Height = 31
      Caption = #44160#49353
      Default = True
      TabOrder = 0
      OnClick = spSkinButton3Click
    end
  end
  object grdFind: TAdvStringGrid
    Left = 0
    Top = 41
    Width = 432
    Height = 165
    Cursor = crDefault
    Align = alClient
    ColCount = 11
    DrawingStyle = gdsClassic
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    OnDblClick = grdFindDblClick
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #52264#53944#48264#54840
      #49457#47749
      #51452#48124#48264#54840
      #45208#51060
      #52280#44256#49324#54637
      #51452#49548
      #51312#54633#44592#54840
      ''
      #51613#48264#54840
      #54588#48372#54744#51088)
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
    Version = '8.4.1.0'
    ColWidths = (
      32
      111
      79
      93
      39
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
  end
end
