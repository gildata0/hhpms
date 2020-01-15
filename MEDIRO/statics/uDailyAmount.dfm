object DailyAmount_f: TDailyAmount_f
  Left = 0
  Top = 0
  Caption = 'DailyAmount_f'
  ClientHeight = 515
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 979
    Height = 515
    Align = alClient
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 0
    object Chart1: TChart
      Left = 1
      Top = 256
      Width = 977
      Height = 258
      Title.Text.Strings = (
        'TChart')
      SeriesGroups = <
        item
          Name = 'Group1'
        end
        item
          Name = 'Group2'
        end>
      View3D = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        33
        15
        33)
      ColorPaletteIndex = 13
      object cbHidemark: TCheckBox
        Left = 41
        Top = 6
        Width = 128
        Height = 17
        Caption = 'Show mark'
        TabOrder = 0
        OnClick = cbHidemarkClick
      end
      object Series2: TBarSeries
        Marks.Children = <
          item
            Shape.ShapeStyle = fosRectangle
            Shape.Style = smsValue
          end>
        Title = 'Series1'
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
      object Series1: TBarSeries
        Marks.Frame.Visible = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
    end
    object grdCount: TAdvStringGrid
      Left = 1
      Top = 162
      Width = 977
      Height = 94
      Cursor = crDefault
      Align = alTop
      ColCount = 7
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      Visible = False
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51068#51088#9
        #52509#50529#9
        #52397#44396#50529#9
        #44553#50668#48376#45812#9
        #48708#44553#50668#48376#45812
        #49688#45225#50529#9)
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
      Look = glSoft
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
      SearchFooter.Color = clBtnFace
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
      SelectionColor = clHighlight
      SelectionTextColor = clHighlightText
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        32
        98
        123
        85
        79
        79
        172)
    end
    object grdCount2: TAdvStringGrid
      Left = 1
      Top = 68
      Width = 977
      Height = 94
      Cursor = crDefault
      Align = alTop
      ColCount = 7
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
      Visible = False
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51068#51088#9
        #52509#50529#9
        #52397#44396#50529#9
        #44553#50668#48376#45812#9
        #48708#44553#50668#48376#45812
        #49688#45225#50529#9)
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
      Look = glSoft
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
      SearchFooter.Color = clBtnFace
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
      SelectionColor = clHighlight
      SelectionTextColor = clHighlightText
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.4.1'
      ColWidths = (
        32
        98
        123
        85
        79
        79
        172)
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 977
      Height = 67
      Align = alTop
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 3
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
        Top = 2
        Width = 116
        Height = 29
        Date = 38657.000000000000000000
        Time = 0.552258391202485700
        ImeName = 'Microsoft IME 2003'
        TabOrder = 0
      end
      object dt2: TDateTimePicker
        Left = 447
        Top = 2
        Width = 121
        Height = 29
        Date = 38657.000000000000000000
        Time = 0.552351516198541500
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
      end
      object cbYear: TComboBox
        Left = 72
        Top = 4
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
        Top = 4
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
        Caption = #45817#50900' '#51068#48324' '#51312#54924
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
      object btnSchMonth: TButton
        Left = 144
        Top = 39
        Width = 133
        Height = 24
        Hint = #44592#48376#51008' '#49345#45812#51068#51088#47196' '#44160#49353
        Caption = #45817#54644' '#50900#48324' '#51312#54924
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        WordWrap = True
        OnClick = btnSchMonthClick
      end
      object btnSchTeam: TButton
        Left = 283
        Top = 40
        Width = 193
        Height = 24
        Hint = #44592#48376#51008' '#49345#45812#51068#51088#47196' '#44160#49353
        Caption = #45817#50900' '#51652#47308#49892#48324' '#51312#54924
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        TabStop = False
        WordWrap = True
        OnClick = btnSchTeamClick
      end
      object RadioButton1: TRadioButton
        Left = 637
        Top = 6
        Width = 68
        Height = 17
        Caption = #44592#44036
        TabOrder = 9
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 574
        Top = 6
        Width = 57
        Height = 17
        Caption = #45817#50900
        Checked = True
        TabOrder = 10
        TabStop = True
        OnClick = RadioButton2Click
      end
      object btnschYear: TButton
        Left = 482
        Top = 39
        Width = 133
        Height = 24
        Hint = #44592#48376#51008' '#49345#45812#51068#51088#47196' '#44160#49353
        Caption = #50672#46020#48324' '#51312#54924
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        TabStop = False
        WordWrap = True
        OnClick = btnschYearClick
      end
      object cbShowData: TCheckBox
        Left = 633
        Top = 44
        Width = 128
        Height = 17
        Caption = 'Show data'
        TabOrder = 12
        OnClick = cbShowDataClick
      end
    end
  end
end
