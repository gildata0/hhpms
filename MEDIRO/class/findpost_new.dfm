object findpost_new_f: Tfindpost_new_f
  Left = 207
  Top = 94
  Caption = 'findpost_new_f'
  ClientHeight = 445
  ClientWidth = 927
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
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 0
    Width = 927
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
    Version = '2.5.7.6'
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
    CollapsColor = clHighlight
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
    Text = '<P align="center"></P>'#50864#54200#48264#54840' '#44160#49353
    FullHeight = 0
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 404
    Width = 927
    Height = 41
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
    Version = '2.5.7.6'
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
    CollapsColor = clHighlight
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
    Text = ''
    DesignSize = (
      927
      41)
    FullHeight = 0
    object btnOk: TAdvGlowButton
      Left = 756
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #54869#51064
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object btnCancel: TAdvGlowButton
      Left = 844
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      ModalResult = 2
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
  end
  object grdPost: TAdvStringGrid
    Left = 10
    Top = 140
    Width = 910
    Height = 230
    Cursor = crDefault
    ColCount = 12
    DefaultRowHeight = 21
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    OnDblClick = grdPostDblClick
    OnKeyPress = grdPostKeyPress
    HoverRowCells = [hcNormal, hcSelected]
    OnClickCell = grdPostClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #50864#54200#48264#54840
      #46020#47196#47749#51452#49548
      #51648#48264#51452#49548
      #49884#46020
      #49884#44400#44396
      #51021#47732
      #46020#47196#47749
      #44148#47932#48264#54840#48376#48264
      #44148#47932#48264#54840#48512#48264
      #44396' '#46041#47749)
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
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.4.1.0'
    ColWidths = (
      50
      70
      378
      382
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
  object AdvPanel3: TAdvPanel
    Left = 0
    Top = 41
    Width = 927
    Height = 84
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UseDockManager = True
    Version = '2.5.7.6'
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
    CollapsColor = clHighlight
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
    Text = ''
    FullHeight = 0
    object Label1: TLabel
      Left = 34
      Top = 12
      Width = 22
      Height = 13
      Caption = #49884#46020
    end
    object Label2: TLabel
      Left = 183
      Top = 12
      Width = 33
      Height = 13
      Caption = #49884#44400#44396
    end
    object Label3: TLabel
      Left = 487
      Top = 10
      Width = 33
      Height = 13
      Caption = #46020#47196#47749
      Visible = False
    end
    object Label4: TLabel
      Left = 323
      Top = 12
      Width = 22
      Height = 13
      Caption = #51021#47732
    end
    object Label5: TLabel
      Left = 10
      Top = 53
      Width = 44
      Height = 13
      Caption = #49464#48512#44160#49353
    end
    object Label6: TLabel
      Left = 298
      Top = 53
      Width = 48
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #46041#47749
    end
    object Label7: TLabel
      Left = 485
      Top = 52
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48264#51648
    end
    object ComboBox1: TComboBox
      Left = 62
      Top = 8
      Width = 110
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
    end
    object ComboBox2: TComboBox
      Left = 227
      Top = 8
      Width = 93
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
      Text = 'ComboBox2'
      OnChange = ComboBox2Change
      OnKeyPress = ComboBox1KeyPress
    end
    object edtDongStr: TEdit
      Left = 350
      Top = 48
      Width = 130
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
      Text = 'edtDongStr'
      OnKeyPress = ComboBox1KeyPress
    end
    object Button1: TButton
      Left = 668
      Top = 45
      Width = 75
      Height = 25
      Caption = #44160#49353
      TabOrder = 7
      OnClick = Button1Click
    end
    object ComboBox3: TComboBox
      Left = 351
      Top = 7
      Width = 123
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
      Text = 'ComboBox3'
      OnChange = ComboBox3Change
      OnKeyPress = ComboBox1KeyPress
    end
    object ComboBox4: TComboBox
      Left = 526
      Top = 7
      Width = 145
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      Text = 'ComboBox4'
      Visible = False
      OnChange = ComboBox4Change
      OnKeyPress = ComboBox1KeyPress
    end
    object edtJibun: TEdit
      Left = 555
      Top = 48
      Width = 80
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      Text = 'edtJibun'
      OnKeyPress = ComboBox1KeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 62
      Top = 37
      Width = 215
      Height = 36
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #46020#47196#47749#51452#49548
        #51648#48264#51452#49548)
      TabOrder = 4
      OnClick = RadioGroup1Click
    end
  end
end
