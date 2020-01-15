object sms_reservsend_f: Tsms_reservsend_f
  Left = 768
  Top = 128
  Width = 245
  Height = 340
  BorderIcons = [biSystemMenu]
  Caption = 'sms_reservsend_f'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TAdvPanel
    Left = 0
    Top = 261
    Width = 229
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 16640730
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '1.7.7.2'
    AutoHideChildren = False
    BorderColor = clGray
    Caption.Color = 14059353
    Caption.ColorTo = 9648131
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clHighlight
    CollapsDelay = 0
    ColorTo = 14986888
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clNone
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWhite
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14716773
    StatusBar.ColorTo = 16374724
    StatusBar.GradientDirection = gdVertical
    DesignSize = (
      229
      41)
    FullHeight = 0
    object btnCls: TAdvGlowButton
      Left = 157
      Top = 8
      Width = 65
      Height = 23
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #45803#44592
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnClsClick
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
    object btnSend: TAdvGlowButton
      Left = 28
      Top = 8
      Width = 119
      Height = 23
      Anchors = [akTop, akRight]
      AntiAlias = aaNone
      Caption = #50696#50557#51068#51088#47196' '#51204#49569
      ModalResult = 1
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 229
    Height = 261
    Align = alClient
    TabOrder = 1
    UseDockManager = True
    Version = '1.7.7.2'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 0
    object EllipsLabel19: TEllipsLabel
      Left = 79
      Top = 223
      Width = 16
      Height = 16
      Caption = #49884
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object EllipsLabel20: TEllipsLabel
      Left = 144
      Top = 223
      Width = 16
      Height = 16
      Caption = #48516
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object lblDate: TEllipsLabel
      Left = 115
      Top = 195
      Width = 55
      Height = 16
      Caption = 'lblDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object Label1: TLabel
      Left = 35
      Top = 195
      Width = 68
      Height = 16
      Caption = #51204#49569#51068#51088
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbTime: TComboBox
      Left = 34
      Top = 220
      Width = 42
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 16
      ItemIndex = 1
      ParentFont = False
      TabOrder = 0
      Text = '10'
      Items.Strings = (
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '00'
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08')
    end
    object cbMin: TComboBox
      Left = 99
      Top = 220
      Width = 42
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = '00'
      Items.Strings = (
        '00'
        '05'
        '10'
        '15'
        '20'
        '25'
        '30'
        '35'
        '40'
        '45'
        '50'
        '55')
    end
    object PlannerCalendar1: TPlannerCalendar
      Left = 30
      Top = 15
      Width = 180
      Height = 171
      EventDayColor = clBlack
      EventMarkerColor = clYellow
      EventMarkerShape = evsCircle
      BackgroundPosition = bpTiled
      BevelOuter = bvNone
      BorderWidth = 1
      Look = lookFlat
      DateDownColor = clNone
      DateHoverColor = clNone
      DateSelectColor = clTeal
      DayFont.Charset = DEFAULT_CHARSET
      DayFont.Color = clWindowText
      DayFont.Height = -11
      DayFont.Name = 'MS Sans Serif'
      DayFont.Style = []
      WeekFont.Charset = DEFAULT_CHARSET
      WeekFont.Color = clWindowText
      WeekFont.Height = -11
      WeekFont.Name = 'MS Sans Serif'
      WeekFont.Style = []
      WeekName = 'Wk'
      TextColor = clBlack
      SelectColor = clTeal
      SelectFontColor = clWhite
      InActiveColor = clGray
      HeaderColor = clNone
      FocusColor = clHighlight
      InversColor = clTeal
      WeekendColor = clRed
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
      ShowDaysAfter = False
      StartDay = 7
      TodayFormat = '"Today" DDD/mm, YYYY'
      Day = 14
      Month = 11
      Year = 2009
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CaptionColor = clNone
      CaptionTextColor = clBlack
      OnMouseUp = PlannerCalendar1MouseUp
      LineColor = clGray
      Line3D = True
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
      Version = '1.7.3.3'
    end
  end
end
