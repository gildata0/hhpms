object PatientABC_f: TPatientABC_f
  Left = 0
  Top = 0
  Caption = 'PatientABC_f'
  ClientHeight = 378
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object grdCount: TAdvStringGrid
    Left = 40
    Top = 88
    Width = 617
    Height = 250
    Cursor = crDefault
    ColCount = 9
    DefaultRowHeight = 32
    DrawingStyle = gdsClassic
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnGetAlignment = grdCountGetAlignment
    OnGetFloatFormat = grdCountGetFloatFormat
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'NO.'
      #52264#53944#48264#54840
      #49457#47749
      #49548#44060#51088
      #52509#44552#50529
      #48372#54744#52509#44552#50529
      #48372#54744#52397#44396#44552#50529
      #48372#54744#48376#51064#48512#45812
      #48708#48372#54744)
    ColumnSize.Save = True
    ColumnSize.Key = '.\db.ini'
    ColumnSize.Section = 'patientABC'
    ColumnSize.Location = clIniFile
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
    FixedColWidth = 50
    FixedRowHeight = 32
    FixedRowAlways = True
    FixedFont.Charset = ANSI_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -16
    FixedFont.Name = #47569#51008' '#44256#46357
    FixedFont.Style = [fsBold]
    FloatFormat = '%.0n'
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
    Version = '8.4.4.1'
    ColWidths = (
      50
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 67
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -161
    ExplicitTop = 1
    ExplicitWidth = 977
    object Label3: TLabel
      Left = 431
      Top = 4
      Width = 11
      Height = 21
      Caption = '~'
      Transparent = True
    end
    object Label1: TLabel
      Left = 238
      Top = 9
      Width = 64
      Height = 21
      Caption = #51312#54924#44592#44036
      Transparent = True
    end
    object Label2: TLabel
      Left = 3
      Top = 9
      Width = 64
      Height = 21
      Caption = #51312#54924#45380#46020
      Transparent = True
    end
    object Label7: TLabel
      Left = 203
      Top = 9
      Width = 16
      Height = 21
      Caption = #50900
      Transparent = True
    end
    object dt1: TDateTimePicker
      Left = 308
      Top = 5
      Width = 116
      Height = 29
      Date = 38657.000000000000000000
      Time = 0.552258391202485700
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
    end
    object dt2: TDateTimePicker
      Left = 447
      Top = 5
      Width = 121
      Height = 29
      Date = 38657.000000000000000000
      Time = 0.552351516198541500
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
    end
    object cbYear: TComboBox
      Left = 72
      Top = 5
      Width = 72
      Height = 29
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
      OnChange = cbYearChange
      OnDropDown = cbYearDropDown
      Items.Strings = (
        '')
    end
    object cbMonth: TComboBox
      Left = 150
      Top = 5
      Width = 47
      Height = 29
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      OnChange = cbMonthChange
      OnDropDown = cbMonthDropDown
      Items.Strings = (
        '')
    end
    object btnSchDay: TButton
      Left = 5
      Top = 40
      Width = 133
      Height = 24
      Hint = #44592#48376#51008' '#49345#45812#51068#51088#47196' '#44160#49353
      Caption = #54872#51088#48324' ABC'#48516#49437
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      WordWrap = True
      OnClick = btnSchDayClick
    end
    object edtYY: TEdit
      Left = 698
      Top = 1
      Width = 41
      Height = 29
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
      Text = 'edtYY'
      Visible = False
    end
    object edtMM: TEdit
      Left = 745
      Top = 0
      Width = 57
      Height = 29
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      Visible = False
    end
    object RadioButton1: TRadioButton
      Left = 637
      Top = 9
      Width = 68
      Height = 17
      Caption = #44592#44036
      TabOrder = 7
    end
    object RadioButton2: TRadioButton
      Left = 574
      Top = 9
      Width = 57
      Height = 17
      Caption = #45817#50900
      Checked = True
      TabOrder = 8
      TabStop = True
    end
    object cbShowData: TCheckBox
      Left = 633
      Top = 44
      Width = 128
      Height = 17
      Caption = 'Show data'
      TabOrder = 9
    end
  end
end
