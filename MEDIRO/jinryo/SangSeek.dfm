object SangSeek_f: TSangSeek_f
  Left = 263
  Top = 386
  Caption = #49345#48337#44288#47532
  ClientHeight = 446
  ClientWidth = 825
  Color = 16309210
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pltop: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = 16309210
    TabOrder = 0
    object edtSearch: TEdit
      Left = 274
      Top = 28
      Width = 141
      Height = 19
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      ImeMode = imSHanguel
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = edtSearchKeyPress
    end
    object rbCode: TRadioButton
      Left = 223
      Top = 29
      Width = 49
      Height = 17
      Caption = #53076#46300
      TabOrder = 1
      OnClick = rbKoreanClick
    end
    object rbKorean: TRadioButton
      Left = 18
      Top = 29
      Width = 90
      Height = 17
      Caption = #54620#44544' '#49345#48337#47749
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbKoreanClick
    end
    object btnSearch: TButton
      Left = 421
      Top = 18
      Width = 149
      Height = 39
      Caption = #44160#49353
      TabOrder = 3
      OnClick = btnSearchClick
    end
    object BitBtn2: TButton
      Left = 696
      Top = 18
      Width = 57
      Height = 39
      Caption = #45803#44592
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object Button1: TButton
      Left = 576
      Top = 18
      Width = 114
      Height = 39
      Caption = #54869#51064
      ModalResult = 1
      TabOrder = 5
    end
    object rbEng: TRadioButton
      Left = 122
      Top = 29
      Width = 90
      Height = 17
      Caption = #50689#47928' '#49345#48337#47749
      TabOrder = 6
      OnClick = rbKoreanClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 413
    Width = 825
    Height = 33
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 12
      Width = 254
      Height = 13
      Caption = #52286#51008' '#49345#48337#51032'  '#54644#45817#54637#47785#51012' '#45908#48660#53364#47533#54616#49901#49884#50836'.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 294
      Top = 12
      Width = 7
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 825
    Height = 340
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    object AdvSplitter1: TAdvSplitter
      Left = 226
      Top = 1
      Width = 5
      Height = 338
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object grdmain: TAdvStringGrid
      Left = 231
      Top = 1
      Width = 593
      Height = 338
      Cursor = crDefault
      Align = alClient
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellBorder = grdmainGetCellBorder
      OnDblClickCell = grdmainDblClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #53076#46300
        #44397#47928#47749
        #50689#47928#47749)
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
      ScrollProportional = True
      ScrollSynch = True
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
        80
        285
        234
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
    object tvDiseaseCode: TTreeView
      Left = 1
      Top = 1
      Width = 225
      Height = 338
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Indent = 19
      ParentFont = False
      TabOrder = 1
      OnClick = tvDiseaseCodeClick
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'FindDiseaseCode'
    Version = '1.4.1.4'
    Left = 72
    Top = 89
  end
end
