object loadJusoFind_f: TloadJusoFind_f
  Left = 0
  Top = 0
  ActiveControl = gdResult
  Caption = #46020#47196#47749' '#51452#49548' '#52286#44592
  ClientHeight = 472
  ClientWidth = 837
  Color = clBtnFace
  Constraints.MaxWidth = 853
  Constraints.MinHeight = 500
  Constraints.MinWidth = 853
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 103
      Width = 58
      Height = 21
      Caption = #44160#49353#50612' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 466
      Top = 15
      Width = 124
      Height = 21
      Alignment = taRightJustify
      Caption = ' '#54168#51060#51648#45817' '#52636#47141'  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 456
      Top = 106
      Width = 134
      Height = 21
      Alignment = taRightJustify
      Caption = #54788#51116' '#54168#51060#51648' '#48264#54840' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object lblCurrentPage: TLabel
      Left = 613
      Top = 103
      Width = 30
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object lblTotalCount: TLabel
      Left = 634
      Top = 63
      Width = 9
      Height = 21
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 510
      Top = 63
      Width = 80
      Height = 21
      Alignment = taRightJustify
      Caption = #52286#51008' '#51452#49548' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 643
      Top = 63
      Width = 22
      Height = 21
      Caption = ' '#44148
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 649
      Top = 15
      Width = 16
      Height = 21
      Caption = #44148
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 635
      Top = 103
      Width = 15
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object lblTotPage: TLabel
      Left = 653
      Top = 103
      Width = 30
      Height = 21
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object btnFind: TButton
      Left = 333
      Top = 90
      Width = 106
      Height = 49
      Caption = #52286#44592
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnFindClick
    end
    object rdgAddr: TRadioGroup
      Left = 16
      Top = 12
      Width = 423
      Height = 72
      Caption = #52286#44592' '#44396#48516
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #51204#52404' '#46020#47196#47749' '#51452#49548
        #46020#47196#47749' '#51452#49548'('#46041#47749' '#51228#50808')')
      ParentFont = False
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 593
      Top = 12
      Width = 50
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 50
    end
    object edtAddr: TAdvEdit
      Left = 80
      Top = 100
      Width = 233
      Height = 29
      DefaultHandling = True
      EmptyText = #46020#47196#47749' '#51452#49548#47484' '#51077#47141#54616#49464#50836
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = ''
      Visible = True
      OnKeyPress = edtAddrKeyPress
      Version = '3.4.6.3'
    end
    object Button1: TButton
      Left = 762
      Top = 104
      Width = 57
      Height = 25
      Caption = #46244' Page'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 699
      Top = 104
      Width = 57
      Height = 25
      Caption = #50526' Page'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object gdResult: TAdvColumnGrid
    Left = 0
    Top = 145
    Width = 837
    Height = 286
    Cursor = crDefault
    Align = alClient
    ColCount = 4
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    StyleElements = [seClient, seBorder]
    OnKeyPress = gdResultKeyPress
    HoverRowCells = [hcNormal, hcSelected]
    OnDblClickCell = gdResultDblClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'NO'
      #50864#54200#48264#54840
      #46020#47196#47749' '#51452#49548
      #44396#51452#49548)
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
    FixedColWidth = 45
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
    Look = glListView
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
    ScrollBarAlways = saVert
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
    Version = '3.1.6.0'
    Columns = <
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        ColumnPopupType = cpFixedCellsRClick
        DropDownCount = 8
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Header = 'NO'
        HeaderAlignment = taCenter
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = #47569#51008' '#44256#46357
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Password = False
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintColor = clWhite
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        ReadOnly = False
        ShowBands = False
        SortStyle = ssAutomatic
        SpinMax = 0
        SpinMin = 0
        SpinStep = 1
        Tag = 0
        Width = 45
      end
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        ColumnPopupType = cpFixedCellsRClick
        DropDownCount = 8
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Header = #50864#54200#48264#54840
        HeaderAlignment = taCenter
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = #47569#51008' '#44256#46357
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Password = False
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintColor = clWhite
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        ReadOnly = False
        ShowBands = False
        SortStyle = ssAutomatic
        SpinMax = 0
        SpinMin = 0
        SpinStep = 1
        Tag = 0
        Width = 71
      end
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taLeftJustify
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        ColumnPopupType = cpFixedCellsRClick
        DropDownCount = 8
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Header = #46020#47196#47749' '#51452#49548
        HeaderAlignment = taCenter
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = #47569#51008' '#44256#46357
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Password = False
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintColor = clWhite
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        ReadOnly = False
        ShowBands = False
        SortStyle = ssAutomatic
        SpinMax = 0
        SpinMin = 0
        SpinStep = 1
        Tag = 0
        Width = 300
      end
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taLeftJustify
        Borders = []
        BorderPen.Color = clSilver
        ButtonHeight = 18
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        ColumnPopupType = cpFixedCellsRClick
        DropDownCount = 8
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Header = #44396#51452#49548
        HeaderAlignment = taCenter
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = #47569#51008' '#44256#46357
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Password = False
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintColor = clWhite
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -13
        PrintFont.Name = #47569#51008' '#44256#46357
        PrintFont.Style = []
        ReadOnly = False
        ShowBands = False
        SortStyle = ssAutomatic
        SpinMax = 0
        SpinMin = 0
        SpinStep = 1
        Tag = 0
        Width = 400
      end>
    ColWidths = (
      45
      71
      300
      400)
    RowHeights = (
      22
      22)
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 431
    Width = 837
    Height = 41
    Align = alBottom
    Caption = 'pnlBottom'
    ShowCaption = False
    TabOrder = 2
  end
  object idHttp: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
    Top = 224
  end
  object XMLDocument: TXMLDocument
    Left = 88
    Top = 224
    DOMVendorDesc = 'MSXML'
  end
end
