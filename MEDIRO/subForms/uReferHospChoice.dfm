object ReferHospChoice_f: TReferHospChoice_f
  Left = 0
  Top = 0
  Caption = 'ReferHospChoice_f'
  ClientHeight = 296
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    Visible = False
    ExplicitWidth = 769
    object EllipsLabel1: TLabel
      Left = 59
      Top = 10
      Width = 36
      Height = 12
      Cursor = crHandPoint
      Caption = #48337#50896#47749
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel2: TLabel
      Left = 45
      Top = 35
      Width = 48
      Height = 12
      Cursor = crHandPoint
      Caption = #46321#47197#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel3: TLabel
      Left = 269
      Top = 9
      Width = 48
      Height = 12
      Cursor = crHandPoint
      Caption = #52280#44256#49324#54637
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtHospname: TAdvEdit
      Left = 100
      Top = 6
      Width = 112
      Height = 20
      DefaultHandling = True
      EmptyText = #49457#47749
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16445929
      SoftBorder = True
      LabelPosition = lpLeftCenter
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
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvNone
      AutoSize = False
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'edtHospname'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtReferCode: TAdvEdit
      Left = 100
      Top = 30
      Width = 113
      Height = 20
      DefaultHandling = True
      EmptyText = #52264#53944#48264#54840
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = 16381427
      SoftBorder = True
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
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = 'edtReferCode'
      Visible = True
      Version = '3.4.9.0'
    end
    object memRemark: TMemo
      Left = 323
      Top = 8
      Width = 414
      Height = 43
      Lines.Strings = (
        'memRemark')
      TabOrder = 2
    end
  end
  object grdFind: TAdvStringGrid
    Left = 0
    Top = 57
    Width = 872
    Height = 198
    Cursor = crDefault
    Align = alClient
    ColCount = 7
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    OnKeyPress = grdFindKeyPress
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = grdFindGetCellColor
    OnDblClickCell = grdFindDblClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #46321#47197#48264#54840
      #48337#50896#47749
      'PACS CODE'
      'PACS ID'
      #52280#44256#49324#54637
      'isContract')
    ControlLook.FixedGradientFrom = clBtnFace
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
    VAlignment = vtaCenter
    Version = '8.4.4.1'
    WordWrap = False
    ExplicitWidth = 769
    ExplicitHeight = 144
    ColWidths = (
      32
      103
      188
      78
      76
      265
      38)
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
  object Panel2: TPanel
    Left = 0
    Top = 255
    Width = 872
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = 45
    ExplicitTop = 247
    DesignSize = (
      872
      41)
    object lblCount: TLabel
      Left = 0
      Top = 6
      Width = 39
      Height = 13
      Caption = 'lblCount'
    end
    object lblshowtime: TLabel
      Left = 0
      Top = 25
      Width = 55
      Height = 13
      Caption = 'lblshowtime'
    end
    object lbltime: TLabel
      Left = 801
      Top = 6
      Width = 30
      Height = 13
      Caption = 'lbltime'
    end
    object Label1: TLabel
      Left = 231
      Top = 14
      Width = 194
      Height = 13
      AutoSize = False
      Caption = #49353#51004#47196' '#49440#53469#46108' '#54665#51008' '#44228#50557#48337#50896' '#51077#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnOk: TAdvGlowButton
      Left = 606
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49440#53469
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
      Left = 720
      Top = 6
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
      ExplicitLeft = 617
    end
    object btnNew: TAdvGlowButton
      Left = 525
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49352#47196
      ModalResult = 6
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
    object btnEdit: TAdvGlowButton
      Left = 431
      Top = 6
      Width = 88
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #54200#51665
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnEditClick
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
    object btnDelete: TAdvGlowButton
      Left = 623
      Top = 6
      Width = 75
      Height = 25
      Caption = #49325#51228
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      WordWrap = False
      TabOrder = 4
      TabStop = True
      OnClick = btnDeleteClick
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
    object Panel3: TPanel
      Left = 200
      Top = 8
      Width = 25
      Height = 25
      Color = 15400938
      ParentBackground = False
      TabOrder = 5
    end
  end
end
