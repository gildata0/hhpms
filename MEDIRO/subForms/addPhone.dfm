object addPhone_f: TaddPhone_f
  Left = 373
  Top = 197
  BorderIcons = [biSystemMenu]
  Caption = 'addPhone_f'
  ClientHeight = 247
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel7: TAdvPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 206
    Align = alClient
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
    Caption.Text = #51204#54868#48264#54840' '#52628#44032
    Caption.TopIndent = 3
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
    object grdPhone: TAdvStringGrid
      Left = 0
      Top = 72
      Width = 280
      Height = 134
      Cursor = crDefault
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      RowCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      OnClick = grdPhoneClick
      GridLineColor = 15062992
      HoverRowCells = [hcNormal, hcSelected]
      OnRowChanging = grdPhoneRowChanging
      OnGetEditorType = grdPhoneGetEditorType
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 10344697
      ActiveCellColorTo = 6210033
      ColumnHeaders.Strings = (
        ''
        #44396#48516
        #48264#54840
        'SMS X')
      ControlLook.FixedGradientFrom = 16513526
      ControlLook.FixedGradientTo = 15260626
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
      SearchFooter.Color = 16773091
      SearchFooter.ColorTo = 16765615
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
      SelectionColor = 6210033
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        20
        62
        171
        46
        64
        64)
    end
    object pnltop: TAdvPanel
      Left = 0
      Top = 0
      Width = 280
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      FullHeight = 0
      object EllipsLabel25: TEllipsLabel
        Left = 8
        Top = 50
        Width = 29
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = #48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = 3815994
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        EllipsType = etNone
        Version = '1.0.0.0'
      end
      object EllipsLabel12: TEllipsLabel
        Left = 7
        Top = 19
        Width = 29
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = #44396#48516
        Font.Charset = ANSI_CHARSET
        Font.Color = 3815994
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        EllipsType = etNone
        Version = '1.0.0.0'
      end
      object lblChart: TLabel
        Left = 240
        Top = 24
        Width = 35
        Height = 13
        Caption = 'lblChart'
        Visible = False
      end
      object lblid: TLabel
        Left = 205
        Top = 8
        Width = 18
        Height = 13
        Caption = 'lblid'
        Visible = False
      end
      object lblname: TLabel
        Left = 176
        Top = 24
        Width = 36
        Height = 13
        Caption = 'lblname'
        Visible = False
      end
      object edtPhone: TAdvEdit
        Left = 41
        Top = 44
        Width = 108
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
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
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3287342
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 0
        Text = 'edtPhone'
        Visible = True
        Version = '3.4.9.0'
      end
      object cbKind: TAdvComboBox
        Left = 40
        Top = 14
        Width = 110
        Height = 20
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = -1
        Items.Strings = (
          #51665
          #55092#45824#54256
          #48372#54840#51088
          #54924#49324
          #51665'2'
          #55092#45824#54256'2'
          #48372#54840#51088'2'
          #54924#49324'2'
          #44592#53440)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentFont = False
        TabOrder = 1
        Text = #51665
      end
      object cbSMS: TAdvOfficeCheckBox
        Left = 160
        Top = 45
        Width = 106
        Height = 20
        TabOrder = 2
        Visible = False
        Alignment = taLeftJustify
        Caption = 'SMS '#51204#49569#50504#54632
        ReturnIsTab = False
        Version = '1.5.0.9'
      end
    end
  end
  object pnlBottom: TAdvPanel
    Left = 0
    Top = 206
    Width = 280
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
    DesignSize = (
      280
      41)
    FullHeight = 0
    object btnCls: TAdvGlowButton
      Left = 212
      Top = 8
      Width = 65
      Height = 23
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #45803#44592
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
    object btnAdd: TAdvGlowButton
      Left = 4
      Top = 8
      Width = 65
      Height = 23
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #52628#44032
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnAddClick
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
    object btnDel: TAdvGlowButton
      Left = 73
      Top = 8
      Width = 65
      Height = 23
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #49325#51228
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnDelClick
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
    object btnSave: TAdvGlowButton
      Left = 142
      Top = 8
      Width = 65
      Height = 23
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #51200#51109
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnSaveClick
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
end
