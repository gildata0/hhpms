object nimsGuibBogo_f: TnimsGuibBogo_f
  Left = 0
  Top = 0
  Caption = 'nimsGuibBogo_f'
  ClientHeight = 588
  ClientWidth = 1217
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter1: TAdvSplitter
    Left = 345
    Top = 41
    Height = 547
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 448
    ExplicitTop = 272
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1217
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 14
      Width = 44
      Height = 13
      Caption = #44396#51077#48372#44256
    end
    object btnSendXML: TButton
      Left = 560
      Top = 10
      Width = 103
      Height = 25
      Caption = #48372#44256#50756#47308
      TabOrder = 0
      OnClick = btnSendXMLClick
    end
    object btnDBSave: TButton
      Left = 350
      Top = 10
      Width = 75
      Height = 25
      Caption = #51076#49884#51200#51109
      TabOrder = 1
      OnClick = btnDBSaveClick
    end
    object btnLoadNotSendData: TButton
      Left = 431
      Top = 10
      Width = 114
      Height = 25
      Caption = #51076#49884#51200#51109' '#44032#51256#50724#44592
      TabOrder = 2
    end
    object btnCls: TButton
      Left = 679
      Top = 10
      Width = 88
      Height = 25
      Caption = #45803#44592
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 345
    Height = 547
    Align = alLeft
    Caption = 'Panel2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    ShowCaption = False
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 343
      Height = 121
      Align = alTop
      Caption = #44396#51077#51221#48372' '#44160#49353
      TabOrder = 0
      object Label27: TLabel
        Left = 3
        Top = 24
        Width = 67
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #44396#51077#51068
        Color = 14143698
        ParentColor = False
        Transparent = False
        Layout = tlCenter
        WordWrap = True
      end
      object Label29: TLabel
        Left = 179
        Top = 30
        Width = 8
        Height = 15
        Caption = '~'
      end
      object Label30: TLabel
        Left = 3
        Top = 53
        Width = 67
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #49345#45824#50629#52404
        Color = 14143698
        ParentColor = False
        Transparent = False
        Layout = tlCenter
        WordWrap = True
      end
      object dtStart: TDateTimePicker
        Left = 76
        Top = 24
        Width = 96
        Height = 23
        Date = 43572.000000000000000000
        Time = 0.453970069444039800
        TabOrder = 0
      end
      object dtFinish: TDateTimePicker
        Left = 193
        Top = 24
        Width = 98
        Height = 23
        Date = 43572.000000000000000000
        Time = 0.453970069444039800
        TabOrder = 1
      end
      object btnGuipSearch: TButton
        Left = 296
        Top = 23
        Width = 44
        Height = 25
        Caption = #52286#44592
        TabOrder = 2
        OnClick = btnGuipSearchClick
      end
      object edtUpche: TAdvEdit
        Left = 76
        Top = 53
        Width = 215
        Height = 23
        DefaultHandling = True
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        TabOrder = 3
        Text = 'edtUpche'
        Visible = True
        Version = '3.4.9.0'
      end
      object btnInit1: TButton
        Left = 297
        Top = 54
        Width = 44
        Height = 25
        Caption = #52488#44592#54868
        TabOrder = 4
      end
      object cbBogoKind: TComboBox
        Left = 3
        Top = 82
        Width = 97
        Height = 23
        ItemIndex = 0
        TabOrder = 5
        Text = #48372#44256#51456#48708
        Items.Strings = (
          #48372#44256#51456#48708
          #48372#44256#45236#50669
          #51116#51204#49569)
      end
      object RadioButton1: TRadioButton
        Left = 115
        Top = 87
        Width = 113
        Height = 17
        Caption = #51200#51109#45936#51060#53552
        TabOrder = 6
      end
      object RadioButton2: TRadioButton
        Left = 234
        Top = 87
        Width = 113
        Height = 17
        Caption = #47560#50557#54693#51221#50557#54408
        TabOrder = 7
      end
    end
    object AdvPanel2: TAdvPanel
      Left = 1
      Top = 122
      Width = 343
      Height = 424
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #51204#49569#45936#51060#53552
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object grdSearchData: TAdvStringGrid
        Left = 1
        Top = 1
        Width = 341
        Height = 422
        Cursor = crDefault
        Align = alClient
        ColCount = 6
        DrawingStyle = gdsClassic
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnClickCell = grdSearchDataClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'No.'
          #48372#44256#51068
          #44396#51077#51068
          #49345#45824#50629#52404
          #49885#48324#48264#54840
          #51312#49885#48324#48264#54840)
        ColumnSize.Save = True
        ColumnSize.Location = clIniFile
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
        ColWidths = (
          32
          64
          64
          64
          64
          64)
      end
    end
  end
  object Panel3: TPanel
    Left = 348
    Top = 41
    Width = 869
    Height = 547
    Align = alClient
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    object AdvSplitter2: TAdvSplitter
      Left = 1
      Top = 377
      Width = 867
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitTop = 289
      ExplicitWidth = 245
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 867
      Height = 376
      Align = alTop
      Caption = 'Panel4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      ShowCaption = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 865
        Height = 121
        Align = alTop
        Caption = #44592#48376#51221#48372
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 26
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#48372#44256#51068#51088
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
          OnDblClick = Label2DblClick
        end
        object Label3: TLabel
          Left = 16
          Top = 55
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#44396#51077#51068#51088
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label4: TLabel
          Left = 16
          Top = 84
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#49324#50976
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label5: TLabel
          Left = 296
          Top = 24
          Width = 121
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#45812#45817#51088#47749
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label6: TLabel
          Left = 296
          Top = 53
          Width = 121
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#45812#45817#51088#51204#54868#48264#54840
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label7: TLabel
          Left = 600
          Top = 25
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#48372#44256#51088#47749
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label8: TLabel
          Left = 600
          Top = 54
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#45812#45817#51088#54648#46300#54256
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object dtBogoDate: TDateTimePicker
          Left = 119
          Top = 26
          Width = 171
          Height = 23
          Date = 43572.000000000000000000
          Time = 0.453970069444039800
          TabOrder = 0
        end
        object dtGuipDate: TDateTimePicker
          Left = 119
          Top = 55
          Width = 171
          Height = 23
          Date = 43572.000000000000000000
          Time = 0.453970069444039800
          TabOrder = 1
        end
        object edtDamdangName: TAdvEdit
          Left = 423
          Top = 24
          Width = 171
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 2
          Text = 'edtDamdangName'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtBogojaName: TAdvEdit
          Left = 703
          Top = 25
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 3
          Text = 'edtBogojaName'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtDamdangPhone: TAdvEdit
          Left = 423
          Top = 53
          Width = 171
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 4
          Text = 'edtDamdangPhone'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtDamdangCPhone: TAdvEdit
          Left = 703
          Top = 54
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 5
          Text = 'edtDamdangCPhone'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtSayu: TAdvEdit
          Left = 119
          Top = 84
          Width = 706
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 6
          Text = 'edtSayu'
          Visible = True
          Version = '3.4.9.0'
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 169
        Width = 865
        Height = 206
        Align = alClient
        Caption = #44396#51077' '#51221#48372
        TabOrder = 1
        object Label11: TLabel
          Left = 16
          Top = 26
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#49324#50857#51088#53076#46300
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label12: TLabel
          Left = 296
          Top = 26
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#52397#44396#53076#46300
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label13: TLabel
          Left = 600
          Top = 26
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = #47749#52845
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label14: TLabel
          Left = 16
          Top = 55
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#51228#54408#53076#46300
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label15: TLabel
          Left = 600
          Top = 55
          Width = 121
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = #51473#51216'/'#51068#48152' '#44288#47532#44396#48516
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label16: TLabel
          Left = 16
          Top = 84
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#51228#51312#48264#54840
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label17: TLabel
          Left = 16
          Top = 113
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = #51068#47144#48264#54840
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label18: TLabel
          Left = 16
          Top = 142
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = 'Barcode/RFID'
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label19: TLabel
          Left = 296
          Top = 142
          Width = 162
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#52572#49548#50976#53685#45800#50948#44396#51077#49688#47049
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label20: TLabel
          Left = 600
          Top = 142
          Width = 121
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#45233#44060#45800#50948' '#44396#51077#49688#47049
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label21: TLabel
          Left = 296
          Top = 113
          Width = 162
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#51228#54408#52572#49548#50976#53685#45800#50948
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label22: TLabel
          Left = 600
          Top = 113
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#51228#54408' '#45233#44060#45800#50948
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label23: TLabel
          Left = 296
          Top = 84
          Width = 162
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#50976#54952#44592#44036
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label24: TLabel
          Left = 600
          Top = 84
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#51200#51109#49548
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label25: TLabel
          Left = 296
          Top = 55
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#51228#54408#47749
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label28: TLabel
          Left = 16
          Top = 184
          Width = 124
          Height = 15
          Caption = '* '#54364#49884#45716' '#54596#49688#44050#51077#45768#45796'.'
        end
        object lblDanwi1: TLabel
          Left = 551
          Top = 113
          Width = 12
          Height = 15
          Caption = 'ea'
        end
        object lblDanwi2: TLabel
          Left = 551
          Top = 145
          Width = 12
          Height = 15
          Caption = 'ea'
        end
        object lblDanwi4: TLabel
          Left = 783
          Top = 145
          Width = 12
          Height = 15
          Caption = 'ea'
        end
        object lblDanwi3: TLabel
          Left = 783
          Top = 113
          Width = 12
          Height = 15
          Caption = 'ea'
        end
        object edtUserCode: TAdvEdit
          Left = 119
          Top = 26
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 0
          Text = 'edtUserCode'
          Visible = True
          Version = '3.4.9.0'
        end
        object btnSearchUserCode: TButton
          Left = 246
          Top = 24
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 1
        end
        object edtJepumCode: TAdvEdit
          Left = 119
          Top = 55
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 2
          Text = 'edtJepumCode'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtJejoNo: TAdvEdit
          Left = 119
          Top = 84
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 3
          Text = 'edtJejoNo'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtSeqNo: TAdvEdit
          Left = 119
          Top = 113
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 4
          Text = 'edtSeqNo'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtBarcode: TAdvEdit
          Left = 119
          Top = 142
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 5
          Text = 'edtBarcode'
          Visible = True
          Version = '3.4.9.0'
        end
        object btnSearchProductCode: TButton
          Left = 246
          Top = 53
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 6
        end
        object btnSearchJejoNo: TButton
          Left = 246
          Top = 82
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 7
        end
        object btnSearchSeqNo: TButton
          Left = 246
          Top = 111
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 8
        end
        object btnSearchBarcode: TButton
          Left = 246
          Top = 142
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 9
        end
        object edtChungGuCode: TAdvEdit
          Left = 399
          Top = 26
          Width = 145
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 10
          Text = 'edtChungGuCode'
          Visible = True
          Version = '3.4.9.0'
        end
        object btnSearchChungGuCode: TButton
          Left = 550
          Top = 24
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 11
        end
        object edtProductName: TAdvEdit
          Left = 399
          Top = 55
          Width = 145
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 12
          Text = 'edtProductName'
          Visible = True
          Version = '3.4.9.0'
        end
        object btnSearchProductName: TButton
          Left = 550
          Top = 55
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 13
        end
        object dtLifeTerm: TDateTimePicker
          Left = 464
          Top = 84
          Width = 130
          Height = 23
          Date = 43572.000000000000000000
          Time = 0.471144664348685200
          TabOrder = 14
        end
        object edtMinUtong: TAdvEdit
          Left = 464
          Top = 113
          Width = 81
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 15
          Text = 'edtMinUtong'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtMinGuip: TAdvEdit
          Left = 464
          Top = 142
          Width = 81
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 16
          Text = 'edtMinGuip'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtChungGuName: TAdvEdit
          Left = 703
          Top = 26
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 17
          Text = 'edtChungGuName'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtManageGubun: TAdvEdit
          Left = 735
          Top = 55
          Width = 90
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 18
          Text = 'edtManageGubun'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtDanwi: TAdvEdit
          Left = 703
          Top = 113
          Width = 74
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 19
          Text = 'edtDanwi'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtNatGuipSu: TAdvEdit
          Left = 727
          Top = 142
          Width = 50
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 20
          Text = 'edtNatGuipSu'
          Visible = True
          Version = '3.4.9.0'
        end
        object cbStorage2: TComboBox
          Left = 703
          Top = 84
          Width = 122
          Height = 23
          TabOrder = 21
          Text = 'cbStorage2'
        end
        object btnInit2: TButton
          Left = 173
          Top = 173
          Width = 67
          Height = 25
          Caption = #52488#44592#54868
          TabOrder = 22
          OnClick = btnInit2Click
        end
        object btnInsert: TButton
          Left = 246
          Top = 173
          Width = 67
          Height = 25
          Caption = #52628#44032
          TabOrder = 23
        end
        object btnMod: TButton
          Left = 319
          Top = 173
          Width = 67
          Height = 25
          Caption = #49688#51221
          TabOrder = 24
        end
        object btnDelete: TButton
          Left = 392
          Top = 173
          Width = 67
          Height = 25
          Caption = #49325#51228
          TabOrder = 25
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 122
        Width = 865
        Height = 47
        Align = alTop
        Caption = #49345#45824' '#47560#50557#47448#52712#44553#51088' '#51221#48372
        TabOrder = 2
        object Label9: TLabel
          Left = 16
          Top = 18
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#49345#45824#50629#52404' '#53076#46300
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label10: TLabel
          Left = 600
          Top = 18
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = ' '#49345#45824#50629#52404' '#51200#51109#49548
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label26: TLabel
          Left = 296
          Top = 18
          Width = 97
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = '* '#50629#52404#47749
          Color = 14143698
          ParentColor = False
          Transparent = False
          Layout = tlCenter
          WordWrap = True
        end
        object edtUpcheCode: TAdvEdit
          Left = 119
          Top = 18
          Width = 121
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 0
          Text = 'edtUpcheCode'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtUpcheName: TAdvEdit
          Left = 399
          Top = 18
          Width = 145
          Height = 23
          DefaultHandling = True
          EmptyTextStyle = []
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          TabOrder = 1
          Text = 'edtUpcheName'
          Visible = True
          Version = '3.4.9.0'
        end
        object cbStorage1: TComboBox
          Left = 703
          Top = 18
          Width = 74
          Height = 23
          TabOrder = 2
          Text = 'cbStorage1'
        end
        object btnSearchUpcheCode: TButton
          Left = 246
          Top = 16
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 3
        end
        object Button9: TButton
          Left = 550
          Top = 16
          Width = 44
          Height = 25
          Caption = #52286#44592
          TabOrder = 4
        end
        object btnSearchGumeHx: TButton
          Left = 783
          Top = 16
          Width = 58
          Height = 25
          Caption = #44396#47588#51221#48372
          TabOrder = 5
        end
      end
    end
    object AdvPanel1: TAdvPanel
      Left = 1
      Top = 380
      Width = 867
      Height = 166
      Align = alClient
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #51204#49569#45936#51060#53552
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object grdSendData: TAdvStringGrid
        Left = 1
        Top = 19
        Width = 865
        Height = 146
        Cursor = crDefault
        Align = alClient
        ColCount = 16
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnClickCell = grdSendDataClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #49324#50857#51088#53076#46300
          #52397#44396#53076#46300
          #51228#54408#47749
          #51228#54408#53076#46300
          #51200#51109#49548
          #51228#51312#48264#54840
          #51068#47144#48264#54840
          #50976#54952#44592#44036
          #52572#49548#50976#53685#45800#50948#49688#47049
          #51228#54408#52572#49548#50976#53685#45800#50948
          #51228#54408#52572#49548#50976#53685#44396#51077#49688#47049
          #51228#54408#45233#44060#45800#50948#49688#47049
          #51228#54408#45233#44060#45800#50948
          #51228#54408#45233#44060#45800#50948#44396#51077#49688#47049
          'barcode/RFID')
        ColumnSize.Save = True
        ColumnSize.Location = clIniFile
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
        ExplicitWidth = 522
        ExplicitHeight = 222
        ColWidths = (
          32
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
          64
          64)
      end
    end
  end
  object Panel5: TAdvPanel
    Left = 1206
    Top = 505
    Width = 642
    Height = 428
    TabOrder = 3
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Visible = True
    DoubleBuffered = False
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 105
    object Label31: TLabel
      Left = 2
      Top = 36
      Width = 65
      Height = 19
      Caption = 'FileName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label32: TLabel
      Left = 41
      Top = 61
      Width = 25
      Height = 19
      Caption = 'Key'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 43
      Top = 88
      Width = 21
      Height = 19
      Caption = 'Url'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = -2
      Top = 195
      Width = 70
      Height = 19
      Caption = 'Plain Text'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 7
      Top = 229
      Width = 134
      Height = 19
      Caption = 'Encrypted Message'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtFilename: TMemo
      Left = 85
      Top = 34
      Width = 444
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
    end
    object txtKey: TMemo
      Left = 85
      Top = 61
      Width = 444
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 1
    end
    object txtURL: TMemo
      Left = 85
      Top = 88
      Width = 444
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 2
    end
    object btnUpload: TButton
      Left = 535
      Top = 30
      Width = 86
      Height = 26
      Caption = #54028#51068#48372#44256
      TabOrder = 3
      OnClick = btnUploadClick
    end
    object btnResult: TButton
      Left = 535
      Top = 62
      Width = 86
      Height = 30
      Caption = #44208#44284#54869#51064
      TabOrder = 4
      OnClick = btnResultClick
    end
    object txtResult: TMemo
      Left = 85
      Top = 113
      Width = 444
      Height = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object txtPlainText: TMemo
      Left = 93
      Top = 195
      Width = 465
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '010-1234-5678')
      ParentFont = False
      TabOrder = 6
    end
    object txtEncryption2: TMemo
      Left = 93
      Top = 263
      Width = 436
      Height = 158
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 7
    end
    object Button2: TButton
      Left = 540
      Top = 195
      Width = 92
      Height = 25
      Caption = 'Encrypt'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
end
