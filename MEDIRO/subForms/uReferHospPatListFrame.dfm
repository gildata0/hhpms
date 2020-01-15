object ReferHospPatListFrame_fr: TReferHospPatListFrame_fr
  Left = 0
  Top = 0
  Width = 922
  Height = 221
  TabOrder = 0
  object pnlSearch: TPanel
    Left = 0
    Top = 0
    Width = 922
    Height = 25
    Align = alTop
    Caption = 'pnlSearch'
    ShowCaption = False
    TabOrder = 0
    object lblDash: TLabel
      Left = 155
      Top = 4
      Width = 8
      Height = 13
      Caption = '~'
    end
    object dt1: TDateTimePicker
      Left = 52
      Top = 0
      Width = 97
      Height = 21
      Date = 43473.000000000000000000
      Time = 0.740307928237598400
      TabOrder = 8
    end
    object dt2: TDateTimePicker
      Left = 171
      Top = 0
      Width = 97
      Height = 21
      Date = 43473.000000000000000000
      Time = 0.740307928237598400
      TabOrder = 9
    end
    object cb1: TCheckBox
      Tag = 1
      Left = 329
      Top = 4
      Width = 65
      Height = 17
      Caption = #44160#49324#51032#47280
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object cb3: TCheckBox
      Tag = 3
      Left = 471
      Top = 4
      Width = 65
      Height = 17
      Caption = #50696#50557#50756#47308
      TabOrder = 4
    end
    object cb4: TCheckBox
      Tag = 4
      Left = 542
      Top = 4
      Width = 65
      Height = 17
      Caption = #50696#50557#52712#49548
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object cb5: TCheckBox
      Tag = 5
      Left = 613
      Top = 4
      Width = 65
      Height = 17
      Caption = #44160#49324#50756#47308
      TabOrder = 6
    end
    object cbTerm: TCheckBox
      Left = 8
      Top = 4
      Width = 38
      Height = 17
      Caption = #44592#44036' '
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbTermClick
    end
    object CheckBox6: TCheckBox
      Left = 274
      Top = 4
      Width = 49
      Height = 17
      Caption = #51204#52404
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox6Click
    end
    object btnSearch: TButton
      Left = 694
      Top = -1
      Width = 75
      Height = 25
      Caption = #44160#49353
      TabOrder = 7
      OnClick = btnSearchClick
    end
    object cb2: TCheckBox
      Tag = 2
      Left = 400
      Top = 4
      Width = 65
      Height = 17
      Caption = #51032#47280#52712#49548
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Tag = 5
      Left = 775
      Top = 2
      Width = 82
      Height = 17
      Caption = #44228#50557#48337#50896
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
  end
  object grdList: TAdvStringGrid
    Left = 0
    Top = 25
    Width = 922
    Height = 196
    Cursor = crDefault
    Align = alClient
    ColCount = 14
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = grdListGetCellColor
    OnGetCellBorder = grdListGetCellBorder
    OnClickSort = grdListClickSort
    OnDblClickCell = grdListDblClickCell
    OnButtonClick = grdListButtonClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #46321#47197#51068#51088
      #48337#50896#47749
      #54872#51088#47749
      #52264#53944#48264#54840
      #51204#54868#48264#54840
      #50557#46020#51204#49569
      #51076#49345#49548#44204
      #44160#49324#51333#47448
      #51652#54665#49345#53468
      #50696#50557#54616#44592
      'PK'
      'PACS ID'
      #47928#51088#51204#49569)
    ColumnSize.Save = True
    ColumnSize.Key = '.\gridset\gridSet_referHospPatList.ini'
    ColumnSize.Section = 'referHospPatList_Frame'
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
    MouseActions.SizeFixedCol = True
    MouseActions.SizeFixedRow = True
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
    ScrollType = ssFlat
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
    SortSettings.Show = True
    VAlignment = vtaCenter
    Version = '8.4.4.1'
    ExplicitTop = 27
    ColWidths = (
      32
      79
      102
      69
      75
      67
      94
      140
      286
      64
      64
      64
      64
      69)
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
  object UniQuery1: TUniQuery
    Left = 168
    Top = 97
  end
end
