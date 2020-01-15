object labOrder_f: TlabOrder_f
  Left = 0
  Top = 0
  Caption = 'labOrder_f'
  ClientHeight = 507
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 75
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 779
      Top = 8
      Width = 33
      Height = 13
      Caption = #51652#47308#49892
      Visible = False
    end
    object Label2: TLabel
      Left = 779
      Top = 15
      Width = 33
      Height = 13
      Caption = #45812#45817#51032
      Visible = False
    end
    object lblFrom: TLabel
      Left = 441
      Top = 7
      Width = 12
      Height = 21
      Caption = '~'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 265
      Top = 11
      Width = 44
      Height = 13
      Caption = #44160#49353#44592#44036
    end
    object Label4: TLabel
      Left = 3
      Top = 52
      Width = 69
      Height = 13
      Caption = #51204#49569#44592#44288' '#49440#53469
    end
    object ComboBox1: TComboBox
      Left = 818
      Top = 2
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
      Visible = False
    end
    object ComboBox2: TComboBox
      Left = 818
      Top = 12
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'ComboBox1'
      Visible = False
    end
    object saveEhwa: TButton
      Left = 790
      Top = 27
      Width = 81
      Height = 25
      Caption = #51060#54868#51204#49569
      TabOrder = 2
      Visible = False
      OnClick = saveEhwaClick
    end
    object Button3: TButton
      Left = 767
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Receive'
      TabOrder = 3
      Visible = False
    end
    object btnSend: TButton
      Left = 253
      Top = 45
      Width = 109
      Height = 25
      Caption = #51204#49569#49884#51089
      TabOrder = 4
      OnClick = btnSendClick
    end
    object Button5: TButton
      Left = 767
      Top = 6
      Width = 75
      Height = 25
      Caption = 'ReadXml'
      TabOrder = 5
      Visible = False
      OnClick = Button5Click
    end
    object edtname: TAdvEdit
      Left = 3
      Top = 4
      Width = 109
      Height = 29
      Hint = #51060#47492#44160#49353' = '#51060#47492' ('#51473#44036#50612')  '#51077#47141' '#54980' '#50644#53552' '
      BorderColor = clSilver
      DefaultHandling = True
      EmptyText = #54620#44544#49457#47749
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = clSilver
      FocusColor = clBtnFace
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
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      HintShowLargeText = True
      ImeMode = imSHanguel
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = 'edtname'
      Visible = True
      OnClick = edtnameClick
      Version = '3.4.9.0'
    end
    object edtChart: TAdvEdit
      Left = 118
      Top = 4
      Width = 123
      Height = 29
      BorderColor = clSilver
      DefaultHandling = True
      EmptyText = #52264#53944#48264#54840
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = 10329501
      FocusColor = clBtnFace
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
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = 'edtChart'
      Visible = True
      Version = '3.4.9.0'
    end
    object dpSdate: TDateTimePicker
      Left = 315
      Top = 4
      Width = 120
      Height = 29
      Date = 40127.000000000000000000
      Time = 0.493366608789074200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 8
    end
    object dpfDate: TDateTimePicker
      Left = 459
      Top = 4
      Width = 118
      Height = 29
      Date = 40127.000000000000000000
      Time = 0.493454861112695700
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 9
    end
    object Button6: TButton
      Left = 583
      Top = 4
      Width = 75
      Height = 29
      Caption = #44160#49353
      TabOrder = 10
      OnClick = Button6Click
    end
    object Button2: TButton
      Left = 832
      Top = 3
      Width = 75
      Height = 25
      Caption = 'test MEMO'
      TabOrder = 11
      Visible = False
      OnClick = Button2Click
    end
    object cbChoiceLab: TComboBox
      Left = 78
      Top = 48
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 12
      Text = #51204#49569#44592#44288#51012' '#49440#53469#54616#49464#50836'.'
      Items.Strings = (
        #51204#49569#44592#44288#51012' '#49440#53469#54616#49464#50836'.'
        #51060#50896
        #51060#54868)
    end
    object btnPrint: TButton
      Left = 583
      Top = 39
      Width = 75
      Height = 25
      Caption = #52636#47141
      TabOrder = 13
      OnClick = btnPrintClick
    end
    object cbPreview: TCheckBox
      Left = 664
      Top = 39
      Width = 97
      Height = 17
      Caption = #48120#47532#48372#44592
      TabOrder = 14
    end
    object Panel3: TPanel
      Left = 456
      Top = 40
      Width = 65
      Height = 25
      Caption = 'Panel3'
      Color = 15400938
      ParentBackground = False
      TabOrder = 15
      Visible = False
    end
    object cbBloodTest: TCheckBox
      Left = 664
      Top = 8
      Width = 97
      Height = 17
      Caption = #54792#50529#44160#49324
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 946
    Height = 432
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object AdvSplitter1: TAdvSplitter
      Left = 365
      Top = 1
      Height = 430
      Align = alRight
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitLeft = 592
      ExplicitTop = 384
      ExplicitHeight = 100
    end
    object grdHx: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 364
      Height = 430
      Cursor = crDefault
      Align = alClient
      ColCount = 10
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grdHxGetCellColor
      OnGetCellBorder = grdHxGetCellBorder
      OnRowChanging = grdHxRowChanging
      OnClickCell = grdHxClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #49440#53469
        #51068#51088
        #52264#53944#48264#54840
        #49457#47749
        #49457#48324
        #45208#51060
        #51452#48124#48264#54840
        #44160#49324#48264#54840
        #51204#49569#50668#48512)
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\LabOrder_Hx.ini'
      ColumnSize.Section = 'grdHx'
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
      ExplicitLeft = -2
      ColWidths = (
        32
        72
        73
        68
        64
        35
        36
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
    object grdWonNe: TAdvStringGrid
      Left = 368
      Top = 1
      Width = 577
      Height = 430
      Cursor = crDefault
      Align = alRight
      ColCount = 8
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellBorder = grdWonNeGetCellBorder
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #48337#50896#44160#49324#53076#46300' '
        #48337#50896#44160#52404#53076#46300
        #44160#49324#47749
        #44160#52404#47749
        #44160#52404#48264#54840
        #51652#47308#49892
        #45812#45817#51032)
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\LabOrder_Hx.ini'
      ColumnSize.Section = 'grdWonNe'
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
        32
        84
        86
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
      object Memo1: TMemo
        Left = 4
        Top = 224
        Width = 369
        Height = 161
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssBoth
        TabOrder = 4
        Visible = False
      end
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'labOrder_f'
    Version = '1.4.1.4'
    Left = 225
    Top = 170
  end
  object frxReport1: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43503.684004340300000000
    ReportOptions.LastChange = 43573.514201805560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 112
    Datasets = <
      item
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = #49457#47749
        Value = Null
      end
      item
        Name = #52264#53944#48264#54840
        Value = Null
      end
      item
        Name = #51452#48124#46321#47197#48264#54840
        Value = Null
      end
      item
        Name = #51452#49548
        Value = Null
      end
      item
        Name = #51312#54633#44592#54840
        Value = Null
      end
      item
        Name = #51613#48264#54840
        Value = Null
      end
      item
        Name = #52840#44256#49324#54637
        Value = Null
      end
      item
        Name = #48337#50896#47749
        Value = Null
      end
      item
        Name = #48337#50896#51452#49548
        Value = Null
      end
      item
        Name = #48337#50896#51204#54868
        Value = Null
      end
      item
        Name = #48337#50896#54057#49828
        Value = Null
      end
      item
        Name = #45236#50896#45236#50669
        Value = Null
      end
      item
        Name = #51613#49345
        Value = Null
      end
      item
        Name = #49345#48337#45236#50857
        Value = Null
      end
      item
        Name = #52376#48169#45236#50857
        Value = Null
      end
      item
        Name = #49688#45225#45236#50669
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.236240000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Width = 718.110236220471900000
          Height = 0.377952755905512000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000020000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#48337#50896#47749']')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#48337#50896#51452#49548']')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 45.354360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
        end
        object SysMemo3: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 45.354360000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #48156#54665#51068#49884' : ')
        end
        object BarCode1: TfrxBarCodeView
          Align = baRight
          AllowVectorExport = True
          Left = 639.110700000000000000
          Top = 7.559060000000040000
          Width = 79.000000000000000000
          Height = 34.015770000000000000
          BarType = bcCode128
          Frame.Typ = []
          HAlign = haCenter
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxUserDataSet1
        DataSetName = 'frxUserDataSet1'
        RowCount = 0
        Stretched = True
        object frxUserDataSet1val1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'jinday'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."jinday"]')
        end
        object frxUserDataSet1val2: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'code'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."code"]')
        end
        object frxUserDataSet1val3: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'hname'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxUserDataSet1."hname"]')
          VAlign = vaCenter
        end
        object frxUserDataSet1chongtu: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'chongtu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."chongtu"]')
          VAlign = vaCenter
        end
        object frxUserDataSet1hoisu: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'hoisu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."hoisu"]')
        end
        object frxUserDataSet1ilsu: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ilsu'
          DataSet = frxUserDataSet1
          DataSetName = 'frxUserDataSet1'
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxUserDataSet1."ilsu"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.236220470000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 268.346630000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = #44404#47548#52404
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44160#49324#51032#47280#49436)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#49457#47749']')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 56.692950000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '['#51452#48124#46321#47197#48264#54840']')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 56.692950000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '['#52264#53944#48264#54840']')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 102.047244094488000000
          Width = 718.110236220471900000
          Height = 0.188976377952756000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 26.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #45812#45817#51032)
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 659.527985000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #49436#47749)
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 68.031540000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Condition = #52376#48169#45236#50857
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '<'#52376#48169#45236#50857'>')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #51068#51088'/'#44368#48512#48264#54840)
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #52376#48169#53076#46300)
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #52376#48169#47749#52845)
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 22.677180000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #50857#47049)
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54943#49688)
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068#49688)
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #50857#48277)
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 718.110236220471900000
          Height = 0.377952760000000000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '-'#51060#54616' '#50668#48177'-')
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Top = 22.677179999999900000
          Width = 718.110236220471900000
          Height = 0.377952755905512000
          Frame.Typ = []
          Frame.Width = 0.010000000000000000
        end
      end
    end
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Fields.Strings = (
      'jinday'
      'code'
      'hname'
      'chongtu'
      'hoisu'
      'ilsu')
    OnGetValue = frxUserDataSet1GetValue
    Left = 526
    Top = 184
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 526
    Top = 248
  end
end
