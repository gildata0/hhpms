object Holiday_f: THoliday_f
  Left = 202
  Top = 282
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #44277#55092#51068#51077#47141'(Holiday_f)'
  ClientHeight = 293
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object plbottom: TPanel
    Left = 0
    Top = 242
    Width = 521
    Height = 51
    Align = alBottom
    Caption = 'plbottom'
    TabOrder = 2
    object Label1: TLabel
      Left = 20
      Top = 10
      Width = 180
      Height = 36
      Caption = #8251#50508#47548#8251#13#10#44277#55092#51068' '#51200#51109#54980' '#54532#47196#44536#47016#51012' '#45796#49884' '#13#10#49884#51089#54624#46412' '#48512#53552' '#51201#50857#46121#45768#45796'.'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
    object btnAdd: TButton
      Left = 224
      Top = 15
      Width = 66
      Height = 25
      Caption = #52628#44032
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnPost: TButton
      Left = 294
      Top = 15
      Width = 66
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
      OnClick = btnPostClick
    end
    object btnDelete: TButton
      Left = 364
      Top = 15
      Width = 66
      Height = 25
      Caption = #49325#51228
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object btnClose: TButton
      Left = 434
      Top = 15
      Width = 66
      Height = 25
      Caption = #45803#44592
      TabOrder = 3
      OnClick = btnCloseClick
    end
  end
  object Grdmain: TAdvStringGrid
    Left = 256
    Top = 0
    Width = 265
    Height = 242
    Cursor = crDefault
    Align = alClient
    Color = clBtnShadow
    Ctl3D = True
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    OnExit = grdMainExit
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
  end
  object spSkinPanel2: TPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 242
    Align = alLeft
    Caption = 'spSkinPanel2'
    TabOrder = 1
    object PlannerCalendar1: TPlannerCalendar
      Left = 3
      Top = 4
      Width = 249
      Height = 233
      EventDayColor = clBlack
      EventFont.Charset = DEFAULT_CHARSET
      EventFont.Color = clWindowText
      EventFont.Height = -11
      EventFont.Name = 'MS Sans Serif'
      EventFont.Style = [fsBold]
      EventMarkerColor = clYellow
      EventMarkerShape = evsCircle
      BackgroundPosition = bpTiled
      BorderWidth = 1
      CaptionColor = clNone
      CaptionTextColor = clBlack
      DateDownColor = clNone
      DateHoverColor = clNone
      DayFont.Charset = DEFAULT_CHARSET
      DayFont.Color = clWindowText
      DayFont.Height = -11
      DayFont.Name = 'MS Sans Serif'
      DayFont.Style = []
      EventHints = True
      FocusColor = clHighlight
      HeaderColor = clNone
      InActiveColor = clGray
      InversColor = clTeal
      LineColor = clGray
      Line3D = True
      Look = lookFlat
      NameOfDays.Monday = #50900
      NameOfDays.Tuesday = #54868
      NameOfDays.Wednesday = #49688
      NameOfDays.Thursday = #47785
      NameOfDays.Friday = #44552
      NameOfDays.Saturday = #53664
      NameOfDays.Sunday = #51068
      NameOfMonths.January = '1'
      NameOfMonths.February = '2'
      NameOfMonths.March = '3'
      NameOfMonths.April = '4'
      NameOfMonths.May = '5'
      NameOfMonths.June = '6'
      NameOfMonths.July = '7'
      NameOfMonths.August = '8'
      NameOfMonths.September = '9'
      NameOfMonths.October = '10'
      NameOfMonths.November = '11'
      NameOfMonths.December = '12'
      NameOfMonths.UseIntlNames = True
      WeekFont.Charset = DEFAULT_CHARSET
      WeekFont.Color = clWindowText
      WeekFont.Height = -11
      WeekFont.Name = 'MS Sans Serif'
      WeekFont.Style = []
      WeekName = 'Wk'
      SelectColor = clTeal
      SelectFontColor = clWhite
      StartDay = 7
      TextColor = clBlack
      TodayFormat = '"Today" DDD/mm, YYYY'
      WeekendColor = clRed
      Day = 2
      Month = 3
      Year = 2011
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = PlannerCalendar1DblClick
      GradientStartColor = clWhite
      GradientEndColor = clBtnFace
      GradientDirection = gdVertical
      MonthGradientStartColor = clNone
      MonthGradientEndColor = clNone
      MonthGradientDirection = gdHorizontal
      HintPrevYear = 'Previous Year'
      HintPrevMonth = 'Previous Month'
      HintNextMonth = 'Next Month'
      HintNextYear = 'Next Year'
      Version = '2.3.2.0'
      TMSStyle = 0
    end
  end
end