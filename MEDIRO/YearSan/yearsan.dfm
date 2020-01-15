object yearsan_f: Tyearsan_f
  Left = 288
  Top = 339
  Caption = #51652#47308#48708#54869#51064#49436
  ClientHeight = 592
  ClientWidth = 1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdmain: TAdvStringGrid
    Left = 0
    Top = 61
    Width = 1080
    Height = 423
    Cursor = crDefault
    Align = alClient
    Color = clWhite
    ColCount = 14
    DrawingStyle = gdsClassic
    FixedCols = 0
    ScrollBars = ssBoth
    TabOrder = 3
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      #49440#53469
      #51068#51088
      #44396#48516
      #52509#51652#47308#48708
      #44277#45800#48512#45812
      #48372#54744#48376#51064
      #48708#48372#54744
      #52852#46300
      #54788#44552#50689#49688#51613
      #54788#44552
      #53685#51109
      #53685#51109#54788#44552#50689#49688#51613
      #49688#45225#44552#50529)
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
    Version = '8.4.4.1'
    ColWidths = (
      64
      64
      64
      64
      64
      64
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
  object pltop: TPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 61
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 123
      Top = 23
      Width = 29
      Height = 13
      AutoSize = False
      Caption = #48512#53552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 261
      Top = 23
      Width = 29
      Height = 13
      AutoSize = False
      Caption = #44620#51648
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 530
      Top = 25
      Width = 299
      Height = 26
      Caption = #8251#51652#47308#48708' '#54869#51064#49436#50640#45716' '#49345#48337#47749'('#49345#48337#53076#46300')'#51060' '#54364#49884#46104#51648' '#50506#49845#45768#45796'. '#13#10'    '#49345#48337#47749#51060' '#54596#50836#54620#44221#50864#51652#45800#49436#47484' '#48156#44553#54644#50556' '#54633#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtdaystart: TMaskEdit
      Left = 17
      Top = 20
      Width = 101
      Height = 19
      BevelInner = bvNone
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '!9999/99/00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '    -  -  '
    end
    object edtdaylast: TMaskEdit
      Left = 155
      Top = 20
      Width = 101
      Height = 19
      BevelInner = bvNone
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '!9999/99/00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '    -  -  '
    end
    object btnSearch: TButton
      Left = 438
      Top = 17
      Width = 86
      Height = 28
      Cursor = crHandPoint
      Cancel = True
      Caption = #44160#49353#54616#44592
      TabOrder = 2
      OnClick = btnSearchClick
    end
    object cblastYearJungsan: TCheckBox
      Left = 304
      Top = 24
      Width = 129
      Height = 17
      Caption = #51204#45380#46020' '#50672#47568#51221#49328#48516
      TabOrder = 3
      Visible = False
      OnClick = cblastYearJungsanClick
    end
    object cbZero: TCheckBox
      Left = 605
      Top = 5
      Width = 106
      Height = 17
      Caption = #49688#45225#44552#50529' 0 '#54252#54632
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 905
      Top = 5
      Width = 71
      Height = 17
      Caption = #49345#48337#54252#54632
      TabOrder = 5
      Visible = False
    end
    object CheckBox3: TCheckBox
      Left = 530
      Top = 5
      Width = 71
      Height = 17
      Caption = #51068#51088#53685#54633
      TabOrder = 6
    end
    object CheckBox4: TCheckBox
      Left = 795
      Top = 5
      Width = 71
      Height = 17
      Caption = #48708#48372#51228#50808
      TabOrder = 7
      Visible = False
    end
  end
  object plge: TPanel
    Left = 0
    Top = 484
    Width = 1080
    Height = 34
    Align = alBottom
    TabOrder = 1
    object wLabel38: TLabel
      Left = 29
      Top = 7
      Width = 28
      Height = 12
      Alignment = taCenter
      Caption = #54633' '#44228
      Color = 15987441
      Font.Charset = HANGEUL_CHARSET
      Font.Color = 16744448
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object edtchong: TAdvEdit
      Left = 180
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtchung: TAdvEdit
      Left = 265
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtbonin: TAdvEdit
      Left = 350
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtbonin1: TAdvEdit
      Left = 434
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtcard: TAdvEdit
      Left = 519
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtreceipt: TAdvEdit
      Left = 609
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edthyun: TAdvEdit
      Left = 699
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtsunapek: TAdvEdit
      Left = 969
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtTong: TAdvEdit
      Left = 789
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
    object edtTongReceipt: TAdvEdit
      Left = 879
      Top = 5
      Width = 80
      Height = 19
      Cursor = crIBeam
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etMoney
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
      BorderStyle = bsNone
      Color = 8454016
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Text = '0'
      Visible = True
      Version = '3.4.9.0'
    end
  end
  object plbottom: TPanel
    Left = 0
    Top = 518
    Width = 1080
    Height = 74
    Align = alBottom
    TabOrder = 2
    object Label4: TLabel
      Left = 348
      Top = 27
      Width = 61
      Height = 13
      AutoSize = False
      Caption = #48156#44553#51068#51088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 873
      Top = 3
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #48156#44553#44592#44288
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 873
      Top = 28
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #49324#50629#51088#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 873
      Top = 51
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45824#54364#51088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 602
      Top = 6
      Width = 36
      Height = 13
      Caption = #50948' '#50668#48177
      Visible = False
    end
    object Label9: TLabel
      Left = 602
      Top = 26
      Width = 47
      Height = 13
      Caption = #50500#47000' '#50668#48177
      Visible = False
    end
    object Label10: TLabel
      Left = 702
      Top = 6
      Width = 16
      Height = 13
      Caption = 'mm'
      Visible = False
    end
    object Label11: TLabel
      Left = 702
      Top = 31
      Width = 16
      Height = 13
      Caption = 'mm'
      Visible = False
    end
    object spSkinButton1: TButton
      Left = 13
      Top = 20
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #48156#44553#54788#54889' '#51200#51109
      TabOrder = 0
      Visible = False
    end
    object spSkinButton2: TButton
      Left = 112
      Top = 19
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #54869#51064#49436' '#48156#44553#45824#51109
      TabOrder = 1
      Visible = False
    end
    object spSkinButton3: TButton
      Left = 230
      Top = 19
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #44060#51064' '#48156#44553#54788#54889
      TabOrder = 2
      Visible = False
    end
    object edtdayprt: TMaskEdit
      Left = 410
      Top = 22
      Width = 101
      Height = 19
      BevelInner = bvNone
      BevelKind = bkSoft
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '!9999/99/00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ImeName = 'Microsoft IME 2003'
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '    -  -  '
    end
    object RadioGroup2: TRadioGroup
      Left = 517
      Top = 6
      Width = 79
      Height = 55
      Caption = #51064#49604
      ItemIndex = 0
      Items.Strings = (
        '1'#47588' '#51064#49604
        '2'#47588' '#51064#49604)
      TabOrder = 4
    end
    object btnPrint: TButton
      Left = 757
      Top = 34
      Width = 76
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #51064#49604
      TabOrder = 5
      OnClick = btnPrintClick
    end
    object edtname: TEdit
      Left = 936
      Top = -1
      Width = 128
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
    end
    object edtSaup: TEdit
      Left = 936
      Top = 24
      Width = 128
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 7
    end
    object edtDaepyo: TEdit
      Left = 936
      Top = 49
      Width = 128
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 8
    end
    object cbUseYearSan: TCheckBox
      Left = 755
      Top = 10
      Width = 81
      Height = 17
      Caption = #50672#47568#51221#49328#50857
      TabOrder = 9
    end
    object SpinEdit1: TSpinEdit
      Left = 662
      Top = 1
      Width = 41
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 10
      Value = 0
      Visible = False
    end
    object SpinEdit2: TSpinEdit
      Left = 662
      Top = 26
      Width = 41
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 11
      Value = 0
      Visible = False
    end
    object Button1: TButton
      Left = 341
      Top = 46
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 12
      Visible = False
      OnClick = Button1Click
    end
    object cbPreview: TCheckBox
      Left = 677
      Top = 33
      Width = 74
      Height = 17
      Caption = #48120#47532#48372#44592
      TabOrder = 13
    end
  end
  object frxReport1: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #44592#48376#44050
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38862.577281898200000000
    ReportOptions.LastChange = 43374.643346226900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 253
    Datasets = <>
    Variables = <
      item
        Name = ' '#54637#47785
        Value = Null
      end
      item
        Name = 'ChartNo'
        Value = Null
      end
      item
        Name = 'PtName'
        Value = Null
      end
      item
        Name = 'JinDay'
        Value = Null
      end
      item
        Name = 'YaganGongHyu'
        Value = Null
      end
      item
        Name = 'DRGNo'
        Value = Null
      end
      item
        Name = 'ByungSil'
        Value = Null
      end
      item
        Name = 'Gubun'
        Value = Null
      end
      item
        Name = 'YoungsuNo'
        Value = Null
      end
      item
        Name = 'YJinchal'
        Value = Null
      end
      item
        Name = 'BJinchal'
        Value = Null
      end
      item
        Name = 'YIBwon'
        Value = Null
      end
      item
        Name = 'BIBwon'
        Value = Null
      end
      item
        Name = 'YSiksa'
        Value = Null
      end
      item
        Name = 'BSiksa'
        Value = Null
      end
      item
        Name = 'YJojae'
        Value = Null
      end
      item
        Name = 'BJojae'
        Value = Null
      end
      item
        Name = 'YJusa'
        Value = Null
      end
      item
        Name = 'BJusa'
        Value = Null
      end
      item
        Name = 'YMarche'
        Value = Null
      end
      item
        Name = 'BMarche'
        Value = Null
      end
      item
        Name = 'YSusul'
        Value = Null
      end
      item
        Name = 'BSusul'
        Value = Null
      end
      item
        Name = 'YGumsa'
        Value = Null
      end
      item
        Name = 'BGumsa'
        Value = Null
      end
      item
        Name = 'YXRay'
        Value = Null
      end
      item
        Name = 'BXRay'
        Value = Null
      end
      item
        Name = 'YChiryoJaeryo'
        Value = Null
      end
      item
        Name = 'BChiryoJaeryo'
        Value = Null
      end
      item
        Name = 'YTotBonin'
        Value = Null
      end
      item
        Name = 'BTotBonin'
        Value = Null
      end
      item
        Name = 'YEtc'
        Value = Null
      end
      item
        Name = 'BEtc'
        Value = Null
      end
      item
        Name = 'YMulri'
        Value = Null
      end
      item
        Name = 'BMulri'
        Value = Null
      end
      item
        Name = 'YCT'
        Value = Null
      end
      item
        Name = 'BCT'
        Value = Null
      end
      item
        Name = 'YMRI'
        Value = Null
      end
      item
        Name = 'BMRI'
        Value = Null
      end
      item
        Name = 'YChoum'
        Value = Null
      end
      item
        Name = 'BChoum'
        Value = Null
      end
      item
        Name = 'YBoOrtho'
        Value = Null
      end
      item
        Name = 'BBoOrtho'
        Value = Null
      end
      item
        Name = 'YSuhyul'
        Value = Null
      end
      item
        Name = 'BSuhyul'
        Value = Null
      end
      item
        Name = 'YSelectJinryo'
        Value = Null
      end
      item
        Name = 'BSelectJinryo'
        Value = Null
      end
      item
        Name = 'YSum'
        Value = Null
      end
      item
        Name = 'BSum'
        Value = Null
      end
      item
        Name = 'YBonin'
        Value = Null
      end
      item
        Name = 'YBohum'
        Value = Null
      end
      item
        Name = 'TotJinryo'
        Value = Null
      end
      item
        Name = 'TotBonin'
        Value = Null
      end
      item
        Name = 'PrevSunab'
        Value = Null
      end
      item
        Name = 'SunabCard'
        Value = Null
      end
      item
        Name = 'SunabCashYoungsu'
        Value = Null
      end
      item
        Name = 'SunabCash'
        Value = Null
      end
      item
        Name = 'SunabSum'
        Value = Null
      end
      item
        Name = 'CashYoungSu'
        Value = Null
      end
      item
        Name = 'RegNo'
        Value = Null
      end
      item
        Name = 'SungInNo'
        Value = Null
      end
      item
        Name = 'YoIm'
        Value = Null
      end
      item
        Name = 'BussNo'
        Value = Null
      end
      item
        Name = 'HospitalName'
        Value = Null
      end
      item
        Name = 'Sojae'
        Value = Null
      end
      item
        Name = 'Doctor'
        Value = Null
      end
      item
        Name = 'OutDate'
        Value = Null
      end
      item
        Name = 'UserDefName1'
        Value = Null
      end
      item
        Name = 'UserDefName2'
        Value = Null
      end
      item
        Name = 'UserDefName3'
        Value = Null
      end
      item
        Name = 'UserDefName4'
        Value = Null
      end
      item
        Name = 'YUserDef2'
        Value = Null
      end
      item
        Name = 'YUserDef3'
        Value = Null
      end
      item
        Name = 'YUserDef4'
        Value = Null
      end
      item
        Name = 'BUserDef2'
        Value = Null
      end
      item
        Name = 'BUserDef3'
        Value = Null
      end
      item
        Name = 'BUserDef4'
        Value = Null
      end
      item
        Name = 'were'
        Value = Null
      end
      item
        Name = 'ibwonjung'
        Value = Null
      end
      item
        Name = 'ibwontwe'
        Value = Null
      end
      item
        Name = 'ibwon'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #48148#53461
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Shape1: TfrxShapeView
        AllowVectorExport = True
        Left = 108.094495510000000000
        Top = 185.196970000000000000
        Width = 500.787401570000000000
        Height = 687.874460000000000000
        Frame.Typ = []
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 206.992270000000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 148.519790000000000000
        Top = 188.094620000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[were]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 216.551330000000000000
        Top = 188.094620000000000000
        Width = 52.913420000000000000
        Height = 16.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwon]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 269.464750000000000000
        Top = 188.094620000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '(')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 284.582870000000000000
        Top = 188.094620000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwontwe]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 348.834880000000000000
        Top = 188.094620000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwonjung]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 409.307360000000000000
        Top = 188.094620000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          ') '#51652#47308#48708' '#44228#49328#49436', '#50689#49688#51613)
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 169.196970000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '['#39'['#48324#51648' 6'#54840' '#49436#49885']'#39']')
        ParentFont = False
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 223.889920000000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = 222.551330000000000000
        Top = 206.771773150000000000
        Height = 570.267748270000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 113.826840000000000000
        Top = 209.661536930000000000
        Width = 104.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#46321#47197#48264#54840)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 228.787570000000000000
        Top = 209.661536930000000000
        Width = 87.133890000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#49457#47749)
        ParentFont = False
      end
      object Line4: TfrxLineView
        AllowVectorExport = True
        Left = 318.378170000000000000
        Top = 206.771773150000000000
        Height = 553.259842520000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line5: TfrxLineView
        AllowVectorExport = True
        Left = 450.441250000000000000
        Top = 206.771800000000000000
        Height = 66.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = 321.953000000000000000
        Top = 210.661536930000000000
        Width = 125.133890000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#44592#44036)
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 456.016080000000000000
        Top = 210.661536930000000000
        Width = 152.267780000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50556#44036'('#44277#55092#51068') '#51652#47308)
        ParentFont = False
      end
      object Line6: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 241.008040000000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line7: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 256.882009370000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo12: TfrxMemoView
        AllowVectorExport = True
        Left = 113.826840000000000000
        Top = 242.787570000000000000
        Width = 104.031540000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#44284#47785)
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 226.330860000000000000
        Top = 242.787570000000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51656#48337#44400'(DRG)'#48264#54840)
        ParentFont = False
      end
      object Line8: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 272.378072360000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line9: TfrxLineView
        AllowVectorExport = True
        Left = 386.630180000000000000
        Top = 241.007993620000000000
        Height = 31.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 321.496290000000000000
        Top = 242.787570000000000000
        Width = 62.236240000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48337#49892)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 389.968770000000000000
        Top = 242.787570000000000000
        Width = 59.133890000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#44396#48516)
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        AllowVectorExport = True
        Left = 453.559370000000000000
        Top = 242.787570000000000000
        Width = 155.401670000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50689#49688#51613' '#48264#54840'('#45380#50900'-'#51068#47144#48264#54840')')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        AllowVectorExport = True
        Left = 113.826840000000000000
        Top = 259.149725910000000000
        Width = 104.236240000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#45800#48169#49324#49440#44284)
        ParentFont = False
      end
      object Line10: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 288.141930000000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo18: TfrxMemoView
        AllowVectorExport = True
        Left = 113.826840000000000000
        Top = 274.913490790000000000
        Width = 104.236240000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54637'    '#47785)
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        AllowVectorExport = True
        Left = 226.110390000000000000
        Top = 274.913490790000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50836#50577#44553#50668'('#9312'+'#9313')')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        AllowVectorExport = True
        Left = 323.055350000000000000
        Top = 274.913490790000000000
        Width = 74.692950000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48708#44553#50668' '#9314)
        ParentFont = False
      end
      object Line11: TfrxLineView
        AllowVectorExport = True
        Left = 400.645950000000000000
        Top = 273.133977870000000000
        Height = 486.897618270000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo21: TfrxMemoView
        AllowVectorExport = True
        Left = 404.897960000000000000
        Top = 274.913490790000000000
        Width = 203.370130000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44552#50529' '#49328#51221' '#45236#50669)
        ParentFont = False
      end
      object Line12: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 288.252085670000000000
        Height = 397.968501500000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo22: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 309.039580000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #54596)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 358.173470000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #49688)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 407.307360000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #54637)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 456.441250000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #47785)
        ParentFont = False
      end
      object Line13: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 305.149725910000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo26: TfrxMemoView
        AllowVectorExport = True
        Left = 136.519790000000000000
        Top = 289.921460000000000000
        Width = 81.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#52272#47308)
        ParentFont = False
      end
      object Line14: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 322.157700000000000000
        Width = 477.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo27: TfrxMemoView
        AllowVectorExport = True
        Left = 136.519790000000000000
        Top = 306.929253460000000000
        Width = 81.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51077#50896#47308)
        ParentFont = False
      end
      object Line15: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 339.165471500000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo28: TfrxMemoView
        AllowVectorExport = True
        Left = 136.519790000000000000
        Top = 325.937230000000000000
        Width = 81.795300000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49885'   '#45824)
        ParentFont = False
      end
      object Line16: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 356.063109290000000000
        Width = 477.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo29: TfrxMemoView
        AllowVectorExport = True
        Left = 135.622140000000000000
        Top = 340.944999060000000000
        Width = 81.590600000000000000
        Height = 12.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #53804#50557' '#48143' '#51312#51116#47308)
        ParentFont = False
      end
      object Line17: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 372.960747090000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo30: TfrxMemoView
        AllowVectorExport = True
        Left = 136.960730000000000000
        Top = 357.842636850000000000
        Width = 78.913420000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51452'  '#49324'  '#47308)
        ParentFont = False
      end
      object Line18: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 389.968770000000000000
        Width = 477.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo31: TfrxMemoView
        AllowVectorExport = True
        Left = 136.960730000000000000
        Top = 376.740274650000000000
        Width = 78.913420000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #47560'  '#52712'  '#47308)
        ParentFont = False
      end
      object Line19: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 408.866420000000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo32: TfrxMemoView
        AllowVectorExport = True
        Left = 135.622140000000000000
        Top = 393.748300000000000000
        Width = 81.590600000000000000
        Height = 12.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52376#52824' '#48143' '#49688#49696#47308)
        ParentFont = False
      end
      object Line20: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 425.984540000000000000
        Width = 268.692913390000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo33: TfrxMemoView
        AllowVectorExport = True
        Left = 137.960730000000000000
        Top = 411.756025120000000000
        Width = 78.803149610000000000
        Height = 12.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44160'  '#49324'  '#47308)
        ParentFont = False
      end
      object Line21: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 454.220780000000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo34: TfrxMemoView
        AllowVectorExport = True
        Left = 135.401670000000000000
        Top = 427.653662910000000000
        Width = 83.590600000000000000
        Height = 24.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #50689#49345' '#51652#45800' '#48143
          #48169#49324#49440' '#52824#47308#47308)
        ParentFont = False
      end
      object Line22: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 473.118430000000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo35: TfrxMemoView
        AllowVectorExport = True
        Left = 135.401670000000000000
        Top = 458.000310000000000000
        Width = 84.252010000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52824#47308' '#51116#47308#45824)
        ParentFont = False
      end
      object Line23: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 492.016080000000000000
        Width = 291.480520000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo36: TfrxMemoView
        AllowVectorExport = True
        Left = 135.622140000000000000
        Top = 476.897960000000000000
        Width = 82.031540000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51204#50529#48376#51064#48512#45812)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 510.693260000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #49440)
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 559.827150000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #53469)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 608.961040000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #54637)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        AllowVectorExport = True
        Left = 112.944960000000000000
        Top = 658.094930000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #47785)
        ParentFont = False
      end
      object Line24: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 509.023736770000000000
        Width = 477.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo41: TfrxMemoView
        AllowVectorExport = True
        Left = 138.299320000000000000
        Top = 495.795610000000000000
        Width = 78.456710000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44592#53440)
        ParentFont = False
      end
      object Line25: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 527.921374570000000000
        Width = 477.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo42: TfrxMemoView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 512.803264330000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51116#54876#48143#47932#47532#52824#47308#47308)
        ParentFont = False
      end
      object Line26: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 546.819012360000000000
        Width = 477.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo43: TfrxMemoView
        AllowVectorExport = True
        Left = 136.960730000000000000
        Top = 531.700902130000000000
        Width = 80.692950000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'CT '#51652#45800)
        ParentFont = False
      end
      object Line27: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 563.827150000000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo44: TfrxMemoView
        AllowVectorExport = True
        Left = 137.181200000000000000
        Top = 548.598539920000000000
        Width = 80.472480000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'MRI '#51652#45800)
        ParentFont = False
      end
      object Line28: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 580.834757950000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo45: TfrxMemoView
        AllowVectorExport = True
        Left = 138.740260000000000000
        Top = 584.614297720000000000
        Width = 76.913420000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48372#52384)
        ParentFont = False
      end
      object Line29: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 597.732395750000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo46: TfrxMemoView
        AllowVectorExport = True
        Left = 138.740260000000000000
        Top = 567.496165510000000000
        Width = 76.913420000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44368#51221)
        ParentFont = False
      end
      object Line30: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 616.630033540000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line31: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 635.527671340000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo48: TfrxMemoView
        AllowVectorExport = True
        Left = 136.960730000000000000
        Top = 601.511911100000000000
        Width = 80.472480000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51076#54540#46976#53944)
        ParentFont = False
      end
      object Line32: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 652.425309130000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line33: TfrxLineView
        AllowVectorExport = True
        Left = 131.842610000000000000
        Top = 669.322946930000000000
        Width = 268.803340000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line34: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 686.220584720000000000
        Width = 291.480520000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line35: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 705.338692520000000000
        Width = 291.480520000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line36: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 724.236330310000000000
        Width = 291.480520000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line37: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 743.133968110000000000
        Width = 500.472790000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line38: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 760.252075910000000000
        Width = 500.472584960000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo49: TfrxMemoView
        AllowVectorExport = True
        Left = 116.740260000000000000
        Top = 690.110700000000000000
        Width = 99.118120000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44228)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        AllowVectorExport = True
        Left = 115.826840000000000000
        Top = 709.008350000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48376#51064#48512#45812#44552#9312)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        AllowVectorExport = True
        Left = 115.826840000000000000
        Top = 728.126470000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48372#54744#51088#48512#45812#44552#9313)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        AllowVectorExport = True
        Left = 115.826840000000000000
        Top = 745.024120000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#50629#51088#46321#47197#48264#54840)
        ParentFont = False
      end
      object Line39: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 777.260360000000000000
        Width = 500.472584960000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo53: TfrxMemoView
        AllowVectorExport = True
        Left = 115.826840000000000000
        Top = 762.031610790000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49324#50629#51109' '#49548#51116#51648)
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        AllowVectorExport = True
        Left = 320.614410000000000000
        Top = 745.024120000000000000
        Width = 77.574830000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49345'   '#54840)
        ParentFont = False
      end
      object Line40: TfrxLineView
        AllowVectorExport = True
        Left = 452.441250000000000000
        Top = 760.252085670000000000
        Height = 17.007864250000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line41: TfrxLineView
        AllowVectorExport = True
        Left = 509.134200000000000000
        Top = 760.252085670000000000
        Height = 17.007864250000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo55: TfrxMemoView
        AllowVectorExport = True
        Left = 456.000310000000000000
        Top = 762.031610790000000000
        Width = 49.574830000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #49457'   '#47749)
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        AllowVectorExport = True
        Left = 584.063390000000000000
        Top = 762.031610790000000000
        Width = 22.456710000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '(??')
        ParentFont = False
      end
      object Line42: TfrxLineView
        AllowVectorExport = True
        Left = 109.165430000000000000
        Top = 796.158010000000000000
        Width = 500.472584960000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo57: TfrxMemoView
        AllowVectorExport = True
        Left = 110.944960000000000000
        Top = 799.937540000000000000
        Width = 478.913730000000000000
        Height = 50.590600000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '* '#51060' '#44228#49328#49436', '#50689#49688#51613#51008' '#49548#46301#49464#48277#49345' '#51032#47308#48708' '#44277#51228#49888#52397#50640' '#49324#50857#54624' '#49688' '#51080#49845#45768#45796'.'
          '* '#51060' '#44228#49328#49436', '#50689#49688#51613#50640' '#45824#54620' '#49464#48512#45236#50669#51012' '#50836#44396#54624' '#49688' '#51080#49845#45768#45796'.'
          '* '#51204#50529#48376#51064#48512#45812#51060#46976' '#44397#48124#44148#44053#48372#54744#48277#49884#54665#44508#52825' '#48324#54364' 5'#51032' '#44508#51221#50640' '#51032#54620' '#50836#50577#44553#50668' '#48708#50857#51032' '#48376#51064#51204#50529#48512#45812
          '   '#54637#47785' '#48708#50857#51012' '#47568#54633#45768#45796'.')
        ParentFont = False
      end
      object Line43: TfrxLineView
        AllowVectorExport = True
        Left = 108.826840000000000000
        Top = 852.078850000000000000
        Width = 501.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo58: TfrxMemoView
        AllowVectorExport = True
        Left = 113.826840000000000000
        Top = 856.078850000000000000
        Width = 397.811070000000000000
        Height = 15.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #51452' : '#54637#47785#51473' '#49440#53469#54637#47785#51008' '#50836#50577#44592#44288#51032' '#53945#49457#50640' '#46384#46972' '#52628#44032' '#46608#45716' '#49373#47029#51060' '#44032#45733#54633#45768#45796'.')
        ParentFont = False
      end
      object Line44: TfrxLineView
        AllowVectorExport = True
        Left = 400.826840000000000000
        Top = 482.078850000000000000
        Width = 208.800000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line45: TfrxLineView
        AllowVectorExport = True
        Left = 473.826840000000000000
        Top = 288.078850000000000000
        Height = 194.362204720000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo59: TfrxMemoView
        AllowVectorExport = True
        Left = 401.826840000000000000
        Top = 292.078850000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#48708#52509#50529
          #9315'('#9312'+'#9313'+'#9314')')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        AllowVectorExport = True
        Left = 401.826840000000000000
        Top = 328.078850000000000000
        Width = 71.795300000000000000
        Height = 25.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54872#51088#48512#45812' '#52509#50529
          #9316'('#9312'+'#9314')')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        AllowVectorExport = True
        Left = 401.826840000000000000
        Top = 360.078850000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51060#48120' '
          #45225#48512#54620#44552#50529#9317)
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        AllowVectorExport = True
        Left = 399.826840000000000000
        Top = 420.078850000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49688#45225#44552#50529
          #9318'('#9316'-'#9317')')
        ParentFont = False
      end
      object Line46: TfrxLineView
        AllowVectorExport = True
        Left = 473.826840000000000000
        Top = 412.078850000000000000
        Width = 136.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line47: TfrxLineView
        AllowVectorExport = True
        Left = 473.826840000000000000
        Top = 436.078850000000000000
        Width = 136.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line48: TfrxLineView
        AllowVectorExport = True
        Left = 473.826840000000000000
        Top = 458.078850000000000000
        Width = 136.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line49: TfrxLineView
        AllowVectorExport = True
        Left = 535.826840000000000000
        Top = 390.078850000000000000
        Height = 92.125984250000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo63: TfrxMemoView
        AllowVectorExport = True
        Left = 479.826840000000000000
        Top = 394.078850000000000000
        Width = 53.795300000000000000
        Height = 17.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52852#46300)
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        AllowVectorExport = True
        Left = 475.826840000000000000
        Top = 420.078850000000000000
        Width = 59.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54788#44552#50689#49688#51613)
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        AllowVectorExport = True
        Left = 475.826840000000000000
        Top = 440.078850000000000000
        Width = 57.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54788#44552)
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        AllowVectorExport = True
        Left = 475.826840000000000000
        Top = 464.078850000000000000
        Width = 59.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54633#44228)
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        AllowVectorExport = True
        Left = 405.826840000000000000
        Top = 490.078850000000000000
        Width = 82.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #54788#44552#50689#49688#51613'(')
        ParentFont = False
      end
      object Line50: TfrxLineView
        AllowVectorExport = True
        Left = 485.826840000000000000
        Top = 509.078850000000000000
        Height = 38.200000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo68: TfrxMemoView
        AllowVectorExport = True
        Left = 407.826840000000000000
        Top = 512.078850000000000000
        Width = 71.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #49888#48516#54869#51064#48264#54840)
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        AllowVectorExport = True
        Left = 405.826840000000000000
        Top = 532.078850000000000000
        Width = 71.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #54788#44552#49849#51064#48264#54840)
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        AllowVectorExport = True
        Left = 405.826840000000000000
        Top = 550.078850000000000000
        Width = 135.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '* '#50836#50577#44592#44288' '#51076#51032' '#54876#50857' '#44277#44036)
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        AllowVectorExport = True
        Left = 375.826840000000000000
        Top = 874.078850000000000000
        Width = 232.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '150mm X 200mm ('#48372#51316#50857#51648' (2'#51333') 70g/m2)')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        AllowVectorExport = True
        Left = 113.826840000000000000
        Top = 228.078850000000000000
        Width = 104.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ChartNo]')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 228.078850000000000000
        Width = 88.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[PtName]')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 228.078850000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[JinDay]')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        AllowVectorExport = True
        Left = 455.826840000000000000
        Top = 226.078850000000000000
        Width = 152.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YaganGongHyu]')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 260.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DRGNo]')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 260.078850000000000000
        Width = 62.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ByungSil]')
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        AllowVectorExport = True
        Left = 389.826840000000000000
        Top = 258.078850000000000000
        Width = 58.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Gubun]')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        AllowVectorExport = True
        Left = 453.826840000000000000
        Top = 258.078850000000000000
        Width = 154.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YoungsuNo]')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 290.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJinchal]')
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 307.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YIBwon]')
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 324.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSiksa]')
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 341.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJojae]')
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 358.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJusa]')
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        AllowVectorExport = True
        Left = 229.606370000000000000
        Top = 375.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMarche]')
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 394.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSusul]')
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 411.866260120000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YGumsa]')
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 430.078850000000000000
        Width = 90.031540000000000000
        Height = 21.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YXRay]')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 458.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YChiryoJaeryo]')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 477.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YTotBonin]')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 494.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YEtc]')
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 513.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMulri]')
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 532.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YCT]')
        ParentFont = False
      end
      object Memo94: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 549.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMRI]')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 566.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YChoum]')
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 583.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBoOrtho]')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 620.976500000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSuhyul]')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 601.181200000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSelectJinryo]')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 290.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJinchal]')
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 307.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BIBwon]')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 324.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSiksa]')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 341.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJojae]')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 358.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJusa]')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 375.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMarche]')
        ParentFont = False
      end
      object Memo105: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 394.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSusul]')
        ParentFont = False
      end
      object Memo106: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 411.866260120000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BGumsa]')
        ParentFont = False
      end
      object Memo107: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 430.078850000000000000
        Width = 76.031540000000000000
        Height = 21.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BXRay]')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 458.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BChiryoJaeryo]')
        ParentFont = False
      end
      object Memo109: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 477.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BTotBonin]')
        ParentFont = False
      end
      object Memo110: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 494.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BEtc]')
        ParentFont = False
      end
      object Memo111: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 513.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMulri]')
        ParentFont = False
      end
      object Memo112: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 532.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BCT]')
        ParentFont = False
      end
      object Memo113: TfrxMemoView
        AllowVectorExport = True
        Left = 318.047310000000000000
        Top = 549.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMRI]')
        ParentFont = False
      end
      object Memo114: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 566.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BChoum]')
        ParentFont = False
      end
      object Memo115: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 583.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BBoOrtho]')
        ParentFont = False
      end
      object Memo116: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 620.976500000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSuhyul]')
        ParentFont = False
      end
      object Memo117: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 601.181200000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSelectJinryo]')
        ParentFont = False
      end
      object Memo118: TfrxMemoView
        AllowVectorExport = True
        Left = 479.826840000000000000
        Top = 298.078850000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[TotJinryo]')
        ParentFont = False
      end
      object Memo119: TfrxMemoView
        AllowVectorExport = True
        Left = 479.826840000000000000
        Top = 332.078850000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[TotBonin]')
        ParentFont = False
      end
      object Memo120: TfrxMemoView
        AllowVectorExport = True
        Left = 479.826840000000000000
        Top = 366.078850000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[PrevSunab]')
        ParentFont = False
      end
      object Memo121: TfrxMemoView
        AllowVectorExport = True
        Left = 538.826840000000000000
        Top = 394.078850000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCard]')
        ParentFont = False
      end
      object Memo122: TfrxMemoView
        AllowVectorExport = True
        Left = 539.826840000000000000
        Top = 418.078850000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCashYoungsu]')
        ParentFont = False
      end
      object Memo123: TfrxMemoView
        AllowVectorExport = True
        Left = 539.826840000000000000
        Top = 440.078850000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCash]')
        ParentFont = False
      end
      object Memo124: TfrxMemoView
        AllowVectorExport = True
        Left = 539.826840000000000000
        Top = 464.078850000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabSum]')
        ParentFont = False
      end
      object Memo125: TfrxMemoView
        AllowVectorExport = True
        Left = 489.826840000000000000
        Top = 512.078850000000000000
        Width = 116.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[RegNo]')
        ParentFont = False
      end
      object Memo126: TfrxMemoView
        AllowVectorExport = True
        Left = 489.826840000000000000
        Top = 532.078850000000000000
        Width = 116.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[SungInNo]')
        ParentFont = False
      end
      object Memo127: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 690.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSum]')
        ParentFont = False
      end
      object Memo128: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 708.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBonin]')
        ParentFont = False
      end
      object Memo129: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 728.078850000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBohum]')
        ParentFont = False
      end
      object Memo130: TfrxMemoView
        AllowVectorExport = True
        Left = 321.826840000000000000
        Top = 690.078850000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSum]')
        ParentFont = False
      end
      object Memo133: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 745.134355000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BussNo]')
        ParentFont = False
      end
      object Memo134: TfrxMemoView
        AllowVectorExport = True
        Left = 403.826840000000000000
        Top = 744.078850000000000000
        Width = 202.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[HospitalName]')
        ParentFont = False
      end
      object Memo135: TfrxMemoView
        AllowVectorExport = True
        Left = 225.826840000000000000
        Top = 762.078850000000000000
        Width = 222.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Sojae]')
        ParentFont = False
      end
      object Memo137: TfrxMemoView
        AllowVectorExport = True
        Left = 115.826840000000000000
        Top = 780.078850000000000000
        Width = 490.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = 'yyyy. mm. dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[OutDate]')
        ParentFont = False
      end
      object Memo131: TfrxMemoView
        AllowVectorExport = True
        Left = 577.826840000000000000
        Top = 490.078850000000000000
        Width = 27.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          ')')
        ParentFont = False
      end
      object Memo132: TfrxMemoView
        AllowVectorExport = True
        Left = 491.826840000000000000
        Top = 490.078850000000000000
        Width = 82.795300000000000000
        Height = 13.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[CashYoungSu]')
        ParentFont = False
      end
      object Memo275: TfrxMemoView
        AllowVectorExport = True
        Left = 405.826840000000000000
        Top = 569.078850000000000000
        Width = 197.795300000000000000
        Height = 169.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[YoIm]')
        ParentFont = False
      end
      object Memo277: TfrxMemoView
        AllowVectorExport = True
        Left = 523.693260000000000000
        Top = 169.196970000000000000
        Width = 85.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        AllowVectorExport = True
        Left = 136.063080000000000000
        Top = 619.842920000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName1]')
        ParentFont = False
      end
      object Memo279: TfrxMemoView
        AllowVectorExport = True
        Left = 136.063080000000000000
        Top = 634.961040000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName2]')
        ParentFont = False
      end
      object Memo280: TfrxMemoView
        AllowVectorExport = True
        Left = 136.063080000000000000
        Top = 653.858690000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName3]')
        ParentFont = False
      end
      object Memo281: TfrxMemoView
        AllowVectorExport = True
        Left = 136.063080000000000000
        Top = 672.756340000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName4]')
        ParentFont = False
      end
      object Memo285: TfrxMemoView
        AllowVectorExport = True
        Left = 226.015816380000000000
        Top = 638.740570000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef2]')
        ParentFont = False
      end
      object Memo286: TfrxMemoView
        AllowVectorExport = True
        Left = 226.015816380000000000
        Top = 657.638220000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef3]')
        ParentFont = False
      end
      object Memo287: TfrxMemoView
        AllowVectorExport = True
        Left = 226.015816380000000000
        Top = 672.756340000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef4]')
        ParentFont = False
      end
      object Memo291: TfrxMemoView
        AllowVectorExport = True
        Left = 322.015816380000000000
        Top = 638.740570000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef2]')
        ParentFont = False
      end
      object Memo292: TfrxMemoView
        AllowVectorExport = True
        Left = 322.015816380000000000
        Top = 657.638220000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef3]')
        ParentFont = False
      end
      object Memo293: TfrxMemoView
        AllowVectorExport = True
        Left = 322.015816380000000000
        Top = 672.756340000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef4]')
        ParentFont = False
      end
      object Picture3: TfrxPictureView
        AllowVectorExport = True
        Left = 566.929500000000000000
        Top = 744.567410000000000000
        Width = 52.913420000000000000
        Height = 52.913420000000000000
        Frame.Typ = []
        Picture.Data = {
          07544269746D6170DA030000424DDA030000000000003E000000280000004E00
          00004D00000001000100000000009C0300000000000000000000020000000000
          000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC
          0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFC000007FFFFFFC0000FFFF
          FE0000000FFFFFFC0000FFFFF800000003FFFFFC0000FFFFE003FFF800FFFFFC
          0000FFFFC01FFFFF007FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFC07FFFFFFFC07FFFC0000FFF01FFFFFFFFF01FFFC0000FFE0
          3FFFFFFFFF80FFFC0000FFE07FFFFFFFFFC0FFFC0000FFC1FF0000007FF07FFC
          0000FF83FE0000007FF83FFC0000FF03FE0000003FF81FFC0000FF07FE000000
          3FFC1FFC0000FE0FFE1FFFFE7FFE0FFC0000FC1FFE1FFFFFFFFF07FC0000FC1F
          FE1FFFFFFFFF07FC0000F83FFE1FFFFFFFFF83FC0000F87FFE1FFFFFFFFFC3FC
          0000F07FFE1FFFFFFFFFC1FC0000F0FFFE1FFFFFFFFFE1FC0000F0FFFE1FFFFF
          FFFFE1FC0000E0FFFE1FFFFFFFFFE0FC0000E1FFFE1FFFFFFFFFF0FC0000E1FF
          FE1FFFF9FFFFF0FC0000C1FFFE1FFFF0FFFFF07C0000C3FFFF3FFFF0FFFFF87C
          0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0
          FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFF07FF0FFFFF87C0000C3FF
          FFC03FF0FFFFF87C0000C3FFFF800FF0FFFFF87C0000C3FFFF0007F0FFFFF87C
          0000C3FFFE0003F0FFFFF87C0000C3FFFC0E01F0FFFFF87C0000C3FFF81FC0F0
          FFFFF87C0000C3FFF83FE0F0FFFFF87C0000C3FFF07FF0F0FFFFF87C0000C3FF
          F07FF0F0FFFFF87C0000C1FFF0FFF0F0FFFFF07C0000E1FFF0FFF0F0FFFFF0FC
          0000E1FFF0FFF0F0FFFFF0FC0000E0FFF0FFE0F0FFFFE0FC0000F0FFF0FFE0F0
          FFFFE1FC0000F0FFF07FC1F0FFFFE1FC0000F07FF01F81F0FFFFC1FC0000F87F
          F80003F0FFFFC3FC0000F83FFC0007F0FFFF83FC0000FC1FFF000FF0FFFF07FC
          0000FC1FFF803FF0FFFF07FC0000FE0FFFF0FFF0FFFE0FFC0000FF07FFFFFFF0
          FFFC1FFC0000FF03FFFFFFF0FFF81FFC0000FF81FFFFFFF0FFF03FFC0000FFC0
          FFFFFFF0FFE07FFC0000FFE07FFFFFF0FFC0FFFC0000FFF03FFFFFF9FF81FFFC
          0000FFF81FFFFFFFFF03FFFC0000FFFC07FFFFFFFC07FFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFFC01FFFFF007FFFFC0000FFFF
          E003FFF800FFFFFC0000FFFFF800000003FFFFFC0000FFFFFE0000000FFFFFFC
          0000FFFFFFC000007FFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo136: TfrxMemoView
        AllowVectorExport = True
        Left = 511.826840000000000000
        Top = 762.078850000000000000
        Width = 68.031540000000000000
        Height = 13.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Doctor]')
        ParentFont = False
      end
      object Line51: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 60.472480000000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo138: TfrxMemoView
        AllowVectorExport = True
        Left = 682.213050000000000000
        Top = 41.574830000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[were]')
        ParentFont = False
      end
      object Memo139: TfrxMemoView
        AllowVectorExport = True
        Left = 750.244590000000000000
        Top = 41.574830000000000000
        Width = 52.913420000000000000
        Height = 14.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwon]')
        ParentFont = False
      end
      object Memo140: TfrxMemoView
        AllowVectorExport = True
        Left = 803.158010000000000000
        Top = 41.574830000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '(')
        ParentFont = False
      end
      object Memo141: TfrxMemoView
        AllowVectorExport = True
        Left = 818.276130000000000000
        Top = 41.574830000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwontwe]')
        ParentFont = False
      end
      object Memo142: TfrxMemoView
        AllowVectorExport = True
        Left = 882.528140000000000000
        Top = 41.574830000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[ibwonjung]')
        ParentFont = False
      end
      object Memo143: TfrxMemoView
        AllowVectorExport = True
        Left = 943.000620000000000000
        Top = 41.574830000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          ') '#51652#47308#65533'?'#44228#49328'?? ?'#65533#49688#65533)
        ParentFont = False
      end
      object Memo144: TfrxMemoView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 22.677180000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '['#39'['#48324#65533'? 6???'#65533#49885']'#39']')
        ParentFont = False
      end
      object Line52: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 77.370130000000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line53: TfrxLineView
        AllowVectorExport = True
        Left = 756.244590000000000000
        Top = 60.251983150000000000
        Height = 570.267748270000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo145: TfrxMemoView
        AllowVectorExport = True
        Left = 647.520100000000000000
        Top = 63.141746930000000000
        Width = 104.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#51088'?'#65533#47197#48264#54840)
        ParentFont = False
      end
      object Memo146: TfrxMemoView
        AllowVectorExport = True
        Left = 762.480830000000000000
        Top = 63.141746930000000000
        Width = 87.133890000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#51088'?'#65533#47749)
        ParentFont = False
      end
      object Line54: TfrxLineView
        AllowVectorExport = True
        Left = 852.071430000000000000
        Top = 60.251983150000000000
        Height = 553.259842520000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line55: TfrxLineView
        AllowVectorExport = True
        Left = 984.134510000000000000
        Top = 60.252010000000000000
        Height = 66.000000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo147: TfrxMemoView
        AllowVectorExport = True
        Left = 855.646260000000000000
        Top = 64.141746930000000000
        Width = 125.133890000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#44592#44036)
        ParentFont = False
      end
      object Memo148: TfrxMemoView
        AllowVectorExport = True
        Left = 989.709340000000000000
        Top = 64.141746930000000000
        Width = 152.267780000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#44036'('#44277#55092'?? '#51652#47308)
        ParentFont = False
      end
      object Line56: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 94.488250000000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line57: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 110.362219370000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo149: TfrxMemoView
        AllowVectorExport = True
        Left = 647.520100000000000000
        Top = 96.267780000000000000
        Width = 104.031540000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#44284#47785)
        ParentFont = False
      end
      object Memo150: TfrxMemoView
        AllowVectorExport = True
        Left = 760.024120000000000000
        Top = 96.267780000000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51656#48337#65533'?DRG)'#48264#54840)
        ParentFont = False
      end
      object Line58: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 125.858282360000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line59: TfrxLineView
        AllowVectorExport = True
        Left = 920.323440000000000000
        Top = 94.488203620000000000
        Height = 31.000000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo151: TfrxMemoView
        AllowVectorExport = True
        Left = 855.189550000000000000
        Top = 96.267780000000000000
        Width = 62.236240000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48337#49892)
        ParentFont = False
      end
      object Memo152: TfrxMemoView
        AllowVectorExport = True
        Left = 923.662030000000000000
        Top = 96.267780000000000000
        Width = 59.133890000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#51088#44396#48516)
        ParentFont = False
      end
      object Memo153: TfrxMemoView
        AllowVectorExport = True
        Left = 987.252630000000000000
        Top = 96.267780000000000000
        Width = 155.401670000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#49688#65533'?'#48264#54840'(?'#65533#50900'-?'#65533#47144#48264#54840')')
        ParentFont = False
      end
      object Memo154: TfrxMemoView
        AllowVectorExport = True
        Left = 647.520100000000000000
        Top = 112.629935910000000000
        Width = 104.236240000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #65533'?   '#65533)
        ParentFont = False
      end
      object Line60: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 141.622140000000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo155: TfrxMemoView
        AllowVectorExport = True
        Left = 647.520100000000000000
        Top = 128.393700790000000000
        Width = 104.236240000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '??   '#65533)
        ParentFont = False
      end
      object Memo156: TfrxMemoView
        AllowVectorExport = True
        Left = 759.803650000000000000
        Top = 128.393700790000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#50577#44553#50668'(????')
        ParentFont = False
      end
      object Memo157: TfrxMemoView
        AllowVectorExport = True
        Left = 856.748610000000000000
        Top = 128.393700790000000000
        Width = 74.692950000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48708#44553'???')
        ParentFont = False
      end
      object Line61: TfrxLineView
        AllowVectorExport = True
        Left = 934.339210000000000000
        Top = 126.614187870000000000
        Height = 486.897618270000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo158: TfrxMemoView
        AllowVectorExport = True
        Left = 938.591220000000000000
        Top = 128.393700790000000000
        Width = 203.370130000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44552#50529' ?'#65533#51221' ?'#65533#50669)
        ParentFont = False
      end
      object Line62: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 141.732295670000000000
        Height = 397.968501500000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo159: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 162.519790000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '?')
        ParentFont = False
      end
      object Memo160: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 211.653680000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '?')
        ParentFont = False
      end
      object Memo161: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 260.787570000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '?')
        ParentFont = False
      end
      object Memo162: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 309.921460000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #65533)
        ParentFont = False
      end
      object Line63: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 158.629935910000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo163: TfrxMemoView
        AllowVectorExport = True
        Left = 670.213050000000000000
        Top = 143.401670000000000000
        Width = 81.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#52272#65533)
        ParentFont = False
      end
      object Line64: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 175.637910000000000000
        Width = 477.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo164: TfrxMemoView
        AllowVectorExport = True
        Left = 670.213050000000000000
        Top = 160.409463460000000000
        Width = 81.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#50896#65533)
        ParentFont = False
      end
      object Line65: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 192.645681500000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo165: TfrxMemoView
        AllowVectorExport = True
        Left = 670.213050000000000000
        Top = 179.417440000000000000
        Width = 81.795300000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '??  ?'#65533)
        ParentFont = False
      end
      object Line66: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 209.543319290000000000
        Width = 477.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo166: TfrxMemoView
        AllowVectorExport = True
        Left = 669.315400000000000000
        Top = 193.543329060000000000
        Width = 81.590600000000000000
        Height = 12.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#50557' '#65533'?'#51312#51116#65533)
        ParentFont = False
      end
      object Line67: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 226.440957090000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo167: TfrxMemoView
        AllowVectorExport = True
        Left = 670.653990000000000000
        Top = 211.322846850000000000
        Width = 78.913420000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #65533'? ?? '#65533)
        ParentFont = False
      end
      object Line68: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 243.448980000000000000
        Width = 477.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo168: TfrxMemoView
        AllowVectorExport = True
        Left = 670.653990000000000000
        Top = 230.220484650000000000
        Width = 78.913420000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #65533'? '#65533'? '#65533)
        ParentFont = False
      end
      object Line69: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 262.346630000000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo169: TfrxMemoView
        AllowVectorExport = True
        Left = 669.315400000000000000
        Top = 247.228510000000000000
        Width = 81.590600000000000000
        Height = 12.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52376#52824' '#65533'??'#65533#49696#65533)
        ParentFont = False
      end
      object Line70: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 279.464750000000000000
        Width = 268.692913390000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo170: TfrxMemoView
        AllowVectorExport = True
        Left = 670.653990000000000000
        Top = 264.354355120000000000
        Width = 78.803149610000000000
        Height = 12.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44160'  ?? '#65533)
        ParentFont = False
      end
      object Line71: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 307.700990000000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo171: TfrxMemoView
        AllowVectorExport = True
        Left = 669.094930000000000000
        Top = 281.133872910000000000
        Width = 83.590600000000000000
        Height = 24.677180000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#49345' '#51652#45800' '#65533'?#13;'
          #48169#49324'??'#52824#47308#65533)
        ParentFont = False
      end
      object Line72: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 326.598640000000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo172: TfrxMemoView
        AllowVectorExport = True
        Left = 669.094930000000000000
        Top = 311.480520000000000000
        Width = 84.252010000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52824#47308' ?'#65533#47308'?'#65533)
        ParentFont = False
      end
      object Line73: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 345.496290000000000000
        Width = 291.480520000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo173: TfrxMemoView
        AllowVectorExport = True
        Left = 669.315400000000000000
        Top = 330.378170000000000000
        Width = 82.031540000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#50529#48376#51064#48512'?')
        ParentFont = False
      end
      object Memo174: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 364.173470000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '?')
        ParentFont = False
      end
      object Memo175: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 413.307360000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '?')
        ParentFont = False
      end
      object Memo176: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 462.441250000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '?')
        ParentFont = False
      end
      object Memo177: TfrxMemoView
        AllowVectorExport = True
        Left = 646.638220000000000000
        Top = 511.575140000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #65533)
        ParentFont = False
      end
      object Line74: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 362.503946770000000000
        Width = 477.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo178: TfrxMemoView
        AllowVectorExport = True
        Left = 671.992580000000000000
        Top = 349.275820000000000000
        Width = 78.456710000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44592#65533'?')
        ParentFont = False
      end
      object Line75: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 381.401584570000000000
        Width = 477.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo179: TfrxMemoView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 366.283474330000000000
        Width = 90.708720000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#54876#48143#47932#47532#52824#47308#47308)
        ParentFont = False
      end
      object Line76: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 400.299222360000000000
        Width = 477.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo180: TfrxMemoView
        AllowVectorExport = True
        Left = 670.653990000000000000
        Top = 385.181112130000000000
        Width = 80.692950000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'CT '#51652#45800#65533)
        ParentFont = False
      end
      object Line77: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 417.307360000000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo181: TfrxMemoView
        AllowVectorExport = True
        Left = 670.874460000000000000
        Top = 402.078749920000000000
        Width = 80.472480000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'MRI '#51652#45800#65533)
        ParentFont = False
      end
      object Line78: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 434.314967950000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo182: TfrxMemoView
        AllowVectorExport = True
        Left = 672.433520000000000000
        Top = 434.314977720000000000
        Width = 76.913420000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48372#52384#65533)
        ParentFont = False
      end
      object Line79: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 451.212605750000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo183: TfrxMemoView
        AllowVectorExport = True
        Left = 672.433520000000000000
        Top = 420.976375510000000000
        Width = 76.913420000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #44368#51221#65533)
        ParentFont = False
      end
      object Line80: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 470.110243540000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line81: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 489.007881340000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo184: TfrxMemoView
        AllowVectorExport = True
        Left = 670.653990000000000000
        Top = 454.992121100000000000
        Width = 80.472480000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#54540'?'#65533'?')
        ParentFont = False
      end
      object Line82: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 505.905519130000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line83: TfrxLineView
        AllowVectorExport = True
        Left = 665.535870000000000000
        Top = 522.803156930000000000
        Width = 268.803340000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line84: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 539.700794720000000000
        Width = 291.480520000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line85: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 558.818902520000000000
        Width = 291.480520000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line86: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 577.716540310000000000
        Width = 291.480520000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line87: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 596.614178110000000000
        Width = 500.472790000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line88: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 613.732285910000000000
        Width = 500.472584960000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo185: TfrxMemoView
        AllowVectorExport = True
        Left = 650.433520000000000000
        Top = 543.590910000000000000
        Width = 99.118120000000000000
        Height = 11.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #65533)
        ParentFont = False
      end
      object Memo186: TfrxMemoView
        AllowVectorExport = True
        Left = 649.520100000000000000
        Top = 562.488560000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48376#51064#48512'?'#65533#44552'?')
        ParentFont = False
      end
      object Memo187: TfrxMemoView
        AllowVectorExport = True
        Left = 649.520100000000000000
        Top = 581.606680000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #48372#54744'?'#65533#65533'??'#65533#44552'?')
        ParentFont = False
      end
      object Memo188: TfrxMemoView
        AllowVectorExport = True
        Left = 649.520100000000000000
        Top = 598.504330000000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#50629'?'#65533#46321#47197#48264'?')
        ParentFont = False
      end
      object Line89: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 630.740570000000000000
        Width = 500.472584960000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo189: TfrxMemoView
        AllowVectorExport = True
        Left = 649.520100000000000000
        Top = 615.511820790000000000
        Width = 103.000000000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#50629'???'#65533#51116#51648)
        ParentFont = False
      end
      object Memo190: TfrxMemoView
        AllowVectorExport = True
        Left = 854.307670000000000000
        Top = 598.504330000000000000
        Width = 77.574830000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '??  ?')
        ParentFont = False
      end
      object Line90: TfrxLineView
        AllowVectorExport = True
        Left = 986.134510000000000000
        Top = 613.732295670000000000
        Height = 17.007864250000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Line91: TfrxLineView
        AllowVectorExport = True
        Left = 1042.827460000000000000
        Top = 613.732295670000000000
        Height = 17.007864250000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo191: TfrxMemoView
        AllowVectorExport = True
        Left = 989.693570000000000000
        Top = 615.511820790000000000
        Width = 49.574830000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '??  '#65533)
        ParentFont = False
      end
      object Memo192: TfrxMemoView
        AllowVectorExport = True
        Left = 1117.756650000000000000
        Top = 615.511820790000000000
        Width = 22.456710000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '(??')
        ParentFont = False
      end
      object Line92: TfrxLineView
        AllowVectorExport = True
        Left = 642.858690000000000000
        Top = 649.638220000000000000
        Width = 500.472584960000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo193: TfrxMemoView
        AllowVectorExport = True
        Left = 644.638220000000000000
        Top = 653.417750000000000000
        Width = 478.913730000000000000
        Height = 50.590600000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '* ??'#44228#49328'?? ?'#65533#49688#51613#65533'? ?'#65533#46301'?'#65533#48277'???'#65533#47308#65533'?'#44277#51228'?'#65533#52397'???'#65533#50857'?????'#65533#49845'?'#65533#45796'.'
          '* ??'#44228#49328'?? ?'#65533#49688#51613#50640' ?'#65533'???'#65533#65533'??'#65533#50669'???'#65533#44396'?????'#65533#49845'?'#65533#45796'.'
          '* ?'#65533#50529#48376#51064#48512'?'#65533#51060'?'#65533' '#65533'??'#44148#44053#48372#54744#48277#49884'?'#65533#44508#65533'?'#48324#54364' 5??'#44508#51221'???'#65533#54620' ?'#65533#50577#44553#50668' '#48708#50857'??'#48376#51064'?'#65533#50529#48512'??#13;'
          '   ??'#65533#65533' '#48708#50857'??'#47568#54633'?'#65533#45796'.')
        ParentFont = False
      end
      object Line93: TfrxLineView
        AllowVectorExport = True
        Left = 642.520100000000000000
        Top = 705.559060000000000000
        Width = 501.000000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo194: TfrxMemoView
        AllowVectorExport = True
        Left = 647.520100000000000000
        Top = 709.559060000000000000
        Width = 397.811070000000000000
        Height = 15.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          #65533'?: ??'#65533#65533#65533'??'#65533#53469'??'#65533#65533'?'#65533' ?'#65533#50577#44592#65533'????'#65533#49457'???'#65533#46972' '#52628#65533'? ?'#65533#45716' ?'#65533#47029'??'#44032'?'#65533#54633'?'#65533#45796'.')
        ParentFont = False
      end
      object Line94: TfrxLineView
        AllowVectorExport = True
        Left = 934.520100000000000000
        Top = 335.559060000000000000
        Width = 208.800000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line95: TfrxLineView
        AllowVectorExport = True
        Left = 1007.520100000000000000
        Top = 141.559060000000000000
        Height = 194.362204720000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo195: TfrxMemoView
        AllowVectorExport = True
        Left = 935.520100000000000000
        Top = 145.559060000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #51652#47308#48708#52509'??#13;'
          '????????')
        ParentFont = False
      end
      object Memo196: TfrxMemoView
        AllowVectorExport = True
        Left = 935.520100000000000000
        Top = 181.559060000000000000
        Width = 71.795300000000000000
        Height = 25.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#51088#48512'??'#52509#50529
          '??????')
        ParentFont = False
      end
      object Memo197: TfrxMemoView
        AllowVectorExport = True
        Left = 935.520100000000000000
        Top = 213.559060000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#65533'? '
          '?'#65533#65533'??'#65533#44552'?'#65533#9317)
        ParentFont = False
      end
      object Memo198: TfrxMemoView
        AllowVectorExport = True
        Left = 933.520100000000000000
        Top = 273.559060000000000000
        Width = 71.795300000000000000
        Height = 27.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#45225#44552#50529
          '??????')
        ParentFont = False
      end
      object Line96: TfrxLineView
        AllowVectorExport = True
        Left = 1007.520100000000000000
        Top = 265.559060000000000000
        Width = 136.000000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line97: TfrxLineView
        AllowVectorExport = True
        Left = 1007.520100000000000000
        Top = 289.559060000000000000
        Width = 136.000000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line98: TfrxLineView
        AllowVectorExport = True
        Left = 1007.520100000000000000
        Top = 311.559060000000000000
        Width = 136.000000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line99: TfrxLineView
        AllowVectorExport = True
        Left = 1069.520100000000000000
        Top = 243.559060000000000000
        Height = 92.125984250000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo199: TfrxMemoView
        AllowVectorExport = True
        Left = 1013.520100000000000000
        Top = 247.559060000000000000
        Width = 53.795300000000000000
        Height = 17.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #52852#46300)
        ParentFont = False
      end
      object Memo200: TfrxMemoView
        AllowVectorExport = True
        Left = 1009.520100000000000000
        Top = 273.559060000000000000
        Width = 59.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#44552'?'#65533#49688#65533)
        ParentFont = False
      end
      object Memo201: TfrxMemoView
        AllowVectorExport = True
        Left = 1009.520100000000000000
        Top = 293.559060000000000000
        Width = 57.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#44552)
        ParentFont = False
      end
      object Memo202: TfrxMemoView
        AllowVectorExport = True
        Left = 1009.520100000000000000
        Top = 317.559060000000000000
        Width = 59.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#44228)
        ParentFont = False
      end
      object Line100: TfrxLineView
        AllowVectorExport = True
        Left = 1019.520100000000000000
        Top = 362.559060000000000000
        Height = 38.200000000000000000
        Visible = False
        Color = clBlack
        Frame.Typ = [ftLeft]
        Frame.Width = 0.500000000000000000
      end
      object Memo203: TfrxMemoView
        AllowVectorExport = True
        Left = 941.520100000000000000
        Top = 365.559060000000000000
        Width = 71.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#48516'?'#65533#51064#48264#54840)
        ParentFont = False
      end
      object Memo204: TfrxMemoView
        AllowVectorExport = True
        Left = 939.520100000000000000
        Top = 385.559060000000000000
        Width = 71.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '?'#65533#44552'?'#65533#51064#48264#54840)
        ParentFont = False
      end
      object Memo205: TfrxMemoView
        AllowVectorExport = True
        Left = 939.520100000000000000
        Top = 403.559060000000000000
        Width = 135.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '* ?'#65533#50577#44592#65533'? ?'#65533#51032' ?'#65533#50857' '#44277#44036)
        ParentFont = False
      end
      object Memo206: TfrxMemoView
        AllowVectorExport = True
        Left = 909.520100000000000000
        Top = 727.559060000000000000
        Width = 232.944960000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '150mm X 200mm ('#48372#51316'?'#65533#65533'? (2'#65533'? 70g/m2)')
        ParentFont = False
      end
      object Memo207: TfrxMemoView
        AllowVectorExport = True
        Left = 647.520100000000000000
        Top = 81.559060000000000000
        Width = 104.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ChartNo]')
        ParentFont = False
      end
      object Memo208: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 81.559060000000000000
        Width = 88.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[PtName]')
        ParentFont = False
      end
      object Memo209: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 81.559060000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[JinDay]')
        ParentFont = False
      end
      object Memo210: TfrxMemoView
        AllowVectorExport = True
        Left = 989.520100000000000000
        Top = 79.559060000000000000
        Width = 152.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YaganGongHyu]')
        ParentFont = False
      end
      object Memo211: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 113.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DRGNo]')
        ParentFont = False
      end
      object Memo212: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 113.559060000000000000
        Width = 62.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ByungSil]')
        ParentFont = False
      end
      object Memo213: TfrxMemoView
        AllowVectorExport = True
        Left = 923.520100000000000000
        Top = 111.559060000000000000
        Width = 58.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Gubun]')
        ParentFont = False
      end
      object Memo214: TfrxMemoView
        AllowVectorExport = True
        Left = 987.520100000000000000
        Top = 111.559060000000000000
        Width = 154.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YoungsuNo]')
        ParentFont = False
      end
      object Memo215: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 143.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJinchal]')
        ParentFont = False
      end
      object Memo216: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 160.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YIBwon]')
        ParentFont = False
      end
      object Memo217: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 177.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSiksa]')
        ParentFont = False
      end
      object Memo218: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 194.677180000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJojae]')
        ParentFont = False
      end
      object Memo219: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 211.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YJusa]')
        ParentFont = False
      end
      object Memo220: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 228.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMarche]')
        ParentFont = False
      end
      object Memo221: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 247.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSusul]')
        ParentFont = False
      end
      object Memo222: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 264.464590120000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YGumsa]')
        ParentFont = False
      end
      object Memo223: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 283.559060000000000000
        Width = 90.031540000000000000
        Height = 21.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YXRay]')
        ParentFont = False
      end
      object Memo224: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 311.677180000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YChiryoJaeryo]')
        ParentFont = False
      end
      object Memo225: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 330.677180000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YTotBonin]')
        ParentFont = False
      end
      object Memo226: TfrxMemoView
        AllowVectorExport = True
        Left = 760.520100000000000000
        Top = 347.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YEtc]')
        ParentFont = False
      end
      object Memo227: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 366.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMulri]')
        ParentFont = False
      end
      object Memo228: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 385.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YCT]')
        ParentFont = False
      end
      object Memo229: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 402.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YMRI]')
        ParentFont = False
      end
      object Memo230: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 419.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YChoum]')
        ParentFont = False
      end
      object Memo231: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 436.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBoOrtho]')
        ParentFont = False
      end
      object Memo232: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 473.456710000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSuhyul]')
        ParentFont = False
      end
      object Memo233: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 454.661410000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSelectJinryo]')
        ParentFont = False
      end
      object Memo234: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 143.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJinchal]')
        ParentFont = False
      end
      object Memo235: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 160.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BIBwon]')
        ParentFont = False
      end
      object Memo236: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 177.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSiksa]')
        ParentFont = False
      end
      object Memo237: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 194.677180000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJojae]')
        ParentFont = False
      end
      object Memo238: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 211.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BJusa]')
        ParentFont = False
      end
      object Memo239: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 228.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMarche]')
        ParentFont = False
      end
      object Memo240: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 247.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSusul]')
        ParentFont = False
      end
      object Memo241: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 264.464590120000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BGumsa]')
        ParentFont = False
      end
      object Memo242: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 283.559060000000000000
        Width = 76.031540000000000000
        Height = 21.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BXRay]')
        ParentFont = False
      end
      object Memo243: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 311.677180000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BChiryoJaeryo]')
        ParentFont = False
      end
      object Memo244: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 330.677180000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BTotBonin]')
        ParentFont = False
      end
      object Memo245: TfrxMemoView
        AllowVectorExport = True
        Left = 856.520100000000000000
        Top = 347.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BEtc]')
        ParentFont = False
      end
      object Memo246: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 366.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMulri]')
        ParentFont = False
      end
      object Memo247: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 385.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BCT]')
        ParentFont = False
      end
      object Memo248: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 402.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BMRI]')
        ParentFont = False
      end
      object Memo249: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 419.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BChoum]')
        ParentFont = False
      end
      object Memo250: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 436.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BBoOrtho]')
        ParentFont = False
      end
      object Memo251: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 473.456710000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSuhyul]')
        ParentFont = False
      end
      object Memo252: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 454.661410000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSelectJinryo]')
        ParentFont = False
      end
      object Memo253: TfrxMemoView
        AllowVectorExport = True
        Left = 1013.520100000000000000
        Top = 151.559060000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[TotJinryo]')
        ParentFont = False
      end
      object Memo254: TfrxMemoView
        AllowVectorExport = True
        Left = 1013.520100000000000000
        Top = 185.559060000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[TotBonin]')
        ParentFont = False
      end
      object Memo255: TfrxMemoView
        AllowVectorExport = True
        Left = 1013.520100000000000000
        Top = 219.559060000000000000
        Width = 126.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[PrevSunab]')
        ParentFont = False
      end
      object Memo256: TfrxMemoView
        AllowVectorExport = True
        Left = 1073.520100000000000000
        Top = 247.559060000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCard]')
        ParentFont = False
      end
      object Memo257: TfrxMemoView
        AllowVectorExport = True
        Left = 1073.520100000000000000
        Top = 271.559060000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCashYoungsu]')
        ParentFont = False
      end
      object Memo258: TfrxMemoView
        AllowVectorExport = True
        Left = 1073.520100000000000000
        Top = 293.559060000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabCash]')
        ParentFont = False
      end
      object Memo259: TfrxMemoView
        AllowVectorExport = True
        Left = 1073.520100000000000000
        Top = 317.559060000000000000
        Width = 66.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[SunabSum]')
        ParentFont = False
      end
      object Memo260: TfrxMemoView
        AllowVectorExport = True
        Left = 1023.520100000000000000
        Top = 365.559060000000000000
        Width = 116.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[RegNo]')
        ParentFont = False
      end
      object Memo261: TfrxMemoView
        AllowVectorExport = True
        Left = 1023.520100000000000000
        Top = 385.559060000000000000
        Width = 116.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[SungInNo]')
        ParentFont = False
      end
      object Memo262: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 543.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YSum]')
        ParentFont = False
      end
      object Memo263: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 561.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBonin]')
        ParentFont = False
      end
      object Memo264: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 581.559060000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YBohum]')
        ParentFont = False
      end
      object Memo265: TfrxMemoView
        AllowVectorExport = True
        Left = 855.520100000000000000
        Top = 543.559060000000000000
        Width = 76.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BSum]')
        ParentFont = False
      end
      object Memo266: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 598.614565000000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BussNo]')
        ParentFont = False
      end
      object Memo267: TfrxMemoView
        AllowVectorExport = True
        Left = 937.520100000000000000
        Top = 597.559060000000000000
        Width = 202.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[HospitalName]')
        ParentFont = False
      end
      object Memo268: TfrxMemoView
        AllowVectorExport = True
        Left = 759.520100000000000000
        Top = 615.559060000000000000
        Width = 222.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Sojae]')
        ParentFont = False
      end
      object Memo269: TfrxMemoView
        AllowVectorExport = True
        Left = 649.520100000000000000
        Top = 633.559060000000000000
        Width = 490.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = 'yyyy. mm. dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[OutDate]')
        ParentFont = False
      end
      object Memo270: TfrxMemoView
        AllowVectorExport = True
        Left = 939.520100000000000000
        Top = 342.677180000000000000
        Width = 82.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '?'#65533#44552'?'#65533#49688#65533'?')
        ParentFont = False
      end
      object Memo271: TfrxMemoView
        AllowVectorExport = True
        Left = 1111.520100000000000000
        Top = 342.677180000000000000
        Width = 27.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          ')')
        ParentFont = False
      end
      object Memo272: TfrxMemoView
        AllowVectorExport = True
        Left = 1025.520100000000000000
        Top = 342.677180000000000000
        Width = 82.795300000000000000
        Height = 13.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[CashYoungSu]')
        ParentFont = False
      end
      object Memo273: TfrxMemoView
        AllowVectorExport = True
        Left = 939.520100000000000000
        Top = 421.677180000000000000
        Width = 197.795300000000000000
        Height = 169.338590000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[YoIm]')
        ParentFont = False
      end
      object Memo274: TfrxMemoView
        AllowVectorExport = True
        Left = 1063.386520000000000000
        Top = 22.677180000000000000
        Width = 79.944960000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        ParentFont = False
      end
      object Memo276: TfrxMemoView
        AllowVectorExport = True
        Left = 671.008660000000000000
        Top = 472.441250000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName1]')
        ParentFont = False
      end
      object Memo278: TfrxMemoView
        AllowVectorExport = True
        Left = 671.008660000000000000
        Top = 491.338900000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName2]')
        ParentFont = False
      end
      object Memo282: TfrxMemoView
        AllowVectorExport = True
        Left = 671.008660000000000000
        Top = 506.457020000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName3]')
        ParentFont = False
      end
      object Memo283: TfrxMemoView
        AllowVectorExport = True
        Left = 667.229130000000000000
        Top = 525.354670000000000000
        Width = 78.692950000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[UserDefName4]')
        ParentFont = False
      end
      object Memo284: TfrxMemoView
        AllowVectorExport = True
        Left = 759.449233860000000000
        Top = 492.472467800000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef2]')
        ParentFont = False
      end
      object Memo288: TfrxMemoView
        AllowVectorExport = True
        Left = 759.449233860000000000
        Top = 507.590587800000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef3]')
        ParentFont = False
      end
      object Memo289: TfrxMemoView
        AllowVectorExport = True
        Left = 759.449233860000000000
        Top = 526.488237800000000000
        Width = 90.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[YUserDef4]')
        ParentFont = False
      end
      object Memo290: TfrxMemoView
        AllowVectorExport = True
        Left = 855.449233860000000000
        Top = 491.338900000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef2]')
        ParentFont = False
      end
      object Memo294: TfrxMemoView
        AllowVectorExport = True
        Left = 855.449233860000000000
        Top = 510.236550000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef3]')
        ParentFont = False
      end
      object Memo295: TfrxMemoView
        AllowVectorExport = True
        Left = 855.449233860000000000
        Top = 525.354670000000000000
        Width = 75.968503940000000000
        Height = 13.118120000000000000
        Visible = False
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '#,##0'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[BUserDef4]')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 1090.536490000000000000
        Top = 597.165740000000000000
        Width = 52.913420000000000000
        Height = 52.913420000000000000
        Visible = False
        Frame.Typ = []
        Picture.Data = {
          07544269746D6170DA030000424DDA030000000000003E000000280000004E00
          00004D00000001000100000000009C0300000000000000000000020000000000
          000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC
          0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFC000007FFFFFFC0000FFFF
          FE0000000FFFFFFC0000FFFFF800000003FFFFFC0000FFFFE003FFF800FFFFFC
          0000FFFFC01FFFFF007FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFC07FFFFFFFC07FFFC0000FFF01FFFFFFFFF01FFFC0000FFE0
          3FFFFFFFFF80FFFC0000FFE07FFFFFFFFFC0FFFC0000FFC1FF0000007FF07FFC
          0000FF83FE0000007FF83FFC0000FF03FE0000003FF81FFC0000FF07FE000000
          3FFC1FFC0000FE0FFE1FFFFE7FFE0FFC0000FC1FFE1FFFFFFFFF07FC0000FC1F
          FE1FFFFFFFFF07FC0000F83FFE1FFFFFFFFF83FC0000F87FFE1FFFFFFFFFC3FC
          0000F07FFE1FFFFFFFFFC1FC0000F0FFFE1FFFFFFFFFE1FC0000F0FFFE1FFFFF
          FFFFE1FC0000E0FFFE1FFFFFFFFFE0FC0000E1FFFE1FFFFFFFFFF0FC0000E1FF
          FE1FFFF9FFFFF0FC0000C1FFFE1FFFF0FFFFF07C0000C3FFFF3FFFF0FFFFF87C
          0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFFFFFF0
          FFFFF87C0000C3FFFFFFFFF0FFFFF87C0000C3FFFFF07FF0FFFFF87C0000C3FF
          FFC03FF0FFFFF87C0000C3FFFF800FF0FFFFF87C0000C3FFFF0007F0FFFFF87C
          0000C3FFFE0003F0FFFFF87C0000C3FFFC0E01F0FFFFF87C0000C3FFF81FC0F0
          FFFFF87C0000C3FFF83FE0F0FFFFF87C0000C3FFF07FF0F0FFFFF87C0000C3FF
          F07FF0F0FFFFF87C0000C1FFF0FFF0F0FFFFF07C0000E1FFF0FFF0F0FFFFF0FC
          0000E1FFF0FFF0F0FFFFF0FC0000E0FFF0FFE0F0FFFFE0FC0000F0FFF0FFE0F0
          FFFFE1FC0000F0FFF07FC1F0FFFFE1FC0000F07FF01F81F0FFFFC1FC0000F87F
          F80003F0FFFFC3FC0000F83FFC0007F0FFFF83FC0000FC1FFF000FF0FFFF07FC
          0000FC1FFF803FF0FFFF07FC0000FE0FFFF0FFF0FFFE0FFC0000FF07FFFFFFF0
          FFFC1FFC0000FF03FFFFFFF0FFF81FFC0000FF81FFFFFFF0FFF03FFC0000FFC0
          FFFFFFF0FFE07FFC0000FFE07FFFFFF0FFC0FFFC0000FFF03FFFFFF9FF81FFFC
          0000FFF81FFFFFFFFF03FFFC0000FFFC07FFFFFFFC07FFFC0000FFFE03FFFFFF
          F80FFFFC0000FFFF00FFFFFFE01FFFFC0000FFFFC01FFFFF007FFFFC0000FFFF
          E003FFF800FFFFFC0000FFFFF800000003FFFFFC0000FFFFFE0000000FFFFFFC
          0000FFFFFFC000007FFFFFFC0000FFFFFFF80003FFFFFFFC0000FFFFFFFFFFFF
          FFFFFFFC0000}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo296: TfrxMemoView
        AllowVectorExport = True
        Left = 1045.520100000000000000
        Top = 615.559060000000000000
        Width = 68.031540000000000000
        Height = 13.118120000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = #48148#53461
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Doctor]')
        ParentFont = False
      end
    end
  end
  object frxUserDataSet_feeDetail: TfrxUserDataSet
    UserName = 'frxUserDataSet_feeDetail'
    Fields.Strings = (
      'val1'
      'val2'
      'val3'
      'val4'
      'val5'
      'val6'
      'val7'
      'val8'
      'val9'
      'val10'
      'val11'
      'val12')
    OnGetValue = frxUserDataSet_feeDetailGetValue
    Left = 400
    Top = 253
  end
end
