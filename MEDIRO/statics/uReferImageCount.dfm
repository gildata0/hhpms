object ReferImageCount_f: TReferImageCount_f
  Left = 0
  Top = 0
  Caption = 'ReferImageCount_f'
  ClientHeight = 472
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter1: TAdvSplitter
    Left = 0
    Top = 219
    Width = 783
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitTop = 221
  end
  object grdImageStat: TAdvStringGrid
    Left = 8
    Top = -14
    Width = 697
    Height = 207
    Cursor = crDefault
    DrawingStyle = gdsClassic
    FixedCols = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 0
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
    Navigation.AllowClipboardAlways = True
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
    Version = '8.4.4.1'
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 57
    Align = alTop
    Caption = 'spSkinPanel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -285
    ExplicitWidth = 1068
    DesignSize = (
      783
      57)
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
    object Label2: TLabel
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
    object Label4: TLabel
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
    end
    object Label7: TLabel
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
    object Label8: TLabel
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
    end
    object Label11: TLabel
      Left = 968
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Label11'
      Visible = False
    end
    object btnSch: TAdvGlowButton
      Left = 507
      Top = 4
      Width = 133
      Height = 37
      Caption = #44160#49353
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnSchClick
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 646
      Top = 4
      Width = 71
      Height = 37
      AntiAlias = aaNone
      Caption = 'Excel'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
      Time = 0.552258391202485600
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 4
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
      TabOrder = 5
    end
    object edtYY: TEdit
      Left = 753
      Top = 4
      Width = 41
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
      Text = 'edtYY'
      Visible = False
    end
    object edtMM: TEdit
      Left = 1176
      Top = 44
      Width = 57
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 10
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 9
      Text = #51204#52404
      Items.Strings = (
        #51204#52404)
    end
    object cbNew: TCheckBox
      Left = 269
      Top = 34
      Width = 193
      Height = 17
      Anchors = [akLeft, akTop, akBottom]
      Caption = #51312#54924#44592#44036' '#45236' '#49888#54872#47564' '#51312#54924
      TabOrder = 11
      Visible = False
    end
    object Button3: TButton
      Left = 800
      Top = 2
      Width = 145
      Height = 25
      Caption = 'Latitude Longitude'
      TabOrder = 12
      Visible = False
    end
  end
  object grdImgStatAll: TAdvStringGrid
    Left = 0
    Top = 265
    Width = 783
    Height = 207
    Cursor = crDefault
    Align = alBottom
    DrawingStyle = gdsClassic
    FixedCols = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu2
    ScrollBars = ssBoth
    TabOrder = 2
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
    Version = '8.4.4.1'
    ExplicitTop = 271
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 783
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 3
    ExplicitLeft = 728
    ExplicitTop = 96
    ExplicitWidth = 185
    object Label5: TLabel
      Left = 16
      Top = 14
      Width = 119
      Height = 13
      Caption = #51032#47280#48337#50896' '#50689#49345' '#52524#50689' '#44148#49688
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 224
    Width = 783
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 4
    ExplicitTop = 65
    object Label6: TLabel
      Left = 16
      Top = 14
      Width = 97
      Height = 13
      Caption = #51204#52404' '#50689#49345' '#52524#50689' '#44148#49688
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 106
    object copy1: TMenuItem
      Caption = 'copy'
      OnClick = copy1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 272
    Top = 330
    object MenuItem1: TMenuItem
      Caption = 'copy'
      OnClick = MenuItem1Click
    end
  end
end
