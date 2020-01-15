object referHosp_f: TreferHosp_f
  Left = 366
  Top = 178
  ActiveControl = edtHospname
  BorderIcons = [biSystemMenu]
  Caption = #54801#51652#48337#50896' '#46321#47197
  ClientHeight = 395
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 344
    Width = 592
    Height = 51
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 339
    ExplicitWidth = 607
    DesignSize = (
      592
      51)
    object btnOk: TAdvGlowButton
      Left = 280
      Top = 6
      Width = 142
      Height = 35
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #51200#51109
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnOkClick
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
      Left = 536
      Top = 6
      Width = 43
      Height = 35
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #45803#44592
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCancelClick
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
      ExplicitLeft = 551
    end
    object btnDelete: TAdvGlowButton
      Left = 462
      Top = 6
      Width = 68
      Height = 35
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #49325#51228
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
      ExplicitLeft = 477
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 233
    Width = 592
    Height = 111
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 607
    object EllipsLabel1: TLabel
      Left = 298
      Top = 10
      Width = 78
      Height = 12
      Cursor = crHandPoint
      Caption = #49548#44060#51088'('#48324#47749') :'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EllipsLabel2: TLabel
      Left = 320
      Top = 32
      Width = 56
      Height = 12
      Cursor = crHandPoint
      Caption = #51204#54868#48264#54840' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EllipsLabel3: TLabel
      Left = 40
      Top = 4
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
    object EllipsLabel5: TLabel
      Left = 320
      Top = 109
      Width = 56
      Height = 12
      Cursor = crHandPoint
      Caption = #53945'      '#51669' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblSogePaht: TLabel
      Left = 320
      Top = 83
      Width = 56
      Height = 12
      Cursor = crHandPoint
      Caption = #49548#44060#44221#47196' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EllipsLabel6: TLabel
      Left = 320
      Top = 55
      Width = 56
      Height = 12
      Cursor = crHandPoint
      Caption = #54648'  '#46300' '#54256' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EllipsLabel7: TLabel
      Left = 320
      Top = 130
      Width = 56
      Height = 12
      Cursor = crHandPoint
      Caption = #49548'  '#44060' '#52376' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object edtSogeja: TAdvEdit
      Left = 380
      Top = 6
      Width = 190
      Height = 20
      DefaultHandling = True
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
      Text = 'edtSogeja'
      Visible = False
      OnKeyPress = edtSogejaKeyPress
      Version = '3.4.9.0'
    end
    object edtHomePhone: TAdvEdit
      Left = 380
      Top = 30
      Width = 190
      Height = 20
      DefaultHandling = True
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
      TabOrder = 1
      Text = 'edtHomePhone'
      Visible = False
      OnKeyPress = edtSogejaKeyPress
      Version = '3.4.9.0'
    end
    object memSogeContent: TMemo
      Left = 100
      Top = 6
      Width = 190
      Height = 91
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'memSogeContent')
      TabOrder = 2
    end
    object edtCharacteristic: TAdvEdit
      Left = 380
      Top = 103
      Width = 190
      Height = 22
      DefaultHandling = True
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
      TabOrder = 3
      Text = 'edtCharacteristic'
      Visible = False
      OnKeyPress = edtSogejaKeyPress
      Version = '3.4.9.0'
    end
    object cmbSogePath: TComboBox
      Left = 380
      Top = 79
      Width = 190
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
      Text = 'cmbSogePath'
      Visible = False
      OnKeyPress = edtSogejaKeyPress
    end
    object edtSogeSite: TAdvEdit
      Left = 380
      Top = 128
      Width = 190
      Height = 22
      DefaultHandling = True
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
      TabOrder = 5
      Text = 'edtSogeSite'
      Visible = False
      OnKeyPress = edtSogejaKeyPress
      Version = '3.4.9.0'
    end
    object edtCellPhone: TAdvEdit
      Left = 380
      Top = 53
      Width = 190
      Height = 22
      DefaultHandling = True
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
      TabOrder = 6
      Text = 'edtCellPhone'
      Visible = False
      OnExit = edtCellPhoneExit
      OnKeyPress = edtSogejaKeyPress
      Version = '3.4.9.0'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 233
    Align = alTop
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    ExplicitWidth = 607
    object lblID: TLabel
      Left = 240
      Top = 8
      Width = 21
      Height = 13
      Caption = 'lblID'
    end
    object EllipsLabel8: TLabel
      Left = 58
      Top = 31
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
    object EllipsLabel9: TLabel
      Left = 44
      Top = 10
      Width = 48
      Height = 12
      Cursor = crHandPoint
      Caption = #46321#47197#53076#46300
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel4: TLabel
      Left = 57
      Top = 53
      Width = 42
      Height = 12
      Cursor = crHandPoint
      Caption = #50672#46973#52376'1'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel10: TLabel
      Left = 60
      Top = 106
      Width = 36
      Height = 12
      Cursor = crHandPoint
      Caption = #45812#45817#51032
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EllipsLabel11: TLabel
      Left = 57
      Top = 78
      Width = 42
      Height = 12
      Cursor = crHandPoint
      Caption = #50672#46973#52376'2'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4737096
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtHospname: TAdvEdit
      Left = 99
      Top = 27
      Width = 112
      Height = 20
      DefaultHandling = True
      EmptyText = #51032#47280#48337#50896#47749
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
      Left = 99
      Top = 5
      Width = 112
      Height = 20
      DefaultHandling = True
      EmptyText = #46321#47197#53076#46300
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
      ReadOnly = True
      TabOrder = 1
      Text = 'edtReferCode'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtCphone: TAdvEdit
      Left = 99
      Top = 49
      Width = 112
      Height = 20
      DefaultHandling = True
      EmptyText = #50672#46973#52376'1'
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
      TabOrder = 2
      Text = 'edtCphone'
      Visible = True
      OnChange = edtCphoneChange
      Version = '3.4.9.0'
    end
    object grdReferDoc: TAdvStringGrid
      Left = 102
      Top = 101
      Width = 185
      Height = 117
      Cursor = crDefault
      ColCount = 3
      DrawingStyle = gdsClassic
      RowCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 3
      HoverRowCells = [hcNormal, hcSelected]
      OnEditCellDone = grdReferDocEditCellDone
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #50896#51109#47749
        #50672#46973#52376)
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
      FixedColWidth = 20
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
      ShowSelection = False
      ShowDesignHelper = False
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        20
        72
        74)
      RowHeights = (
        22
        22
        22
        22
        22)
    end
    object edtCphone2: TAdvEdit
      Left = 99
      Top = 75
      Width = 112
      Height = 20
      DefaultHandling = True
      EmptyText = #50672#46973#52376'2'
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
      TabOrder = 4
      Text = 'edtCphone2'
      Visible = True
      OnChange = edtCphoneChange
      Version = '3.4.9.0'
    end
    object edtRHospID: TEdit
      Left = 280
      Top = 31
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = 'edtRHospID'
    end
    object edtRHosp: TEdit
      Left = 280
      Top = 4
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
      Text = 'edtRHosp'
    end
    object Button1: TButton
      Left = 57
      Top = 124
      Width = 39
      Height = 25
      Caption = #52628#44032
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 57
      Top = 155
      Width = 39
      Height = 25
      Caption = #49325#51228
      TabOrder = 8
      OnClick = Button2Click
    end
  end
end
