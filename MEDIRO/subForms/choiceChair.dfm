object choiceChair_f: TchoiceChair_f
  Left = 514
  Top = 317
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'choiceChair_f'
  ClientHeight = 289
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdmain: TAdvStringGrid
    Left = 5
    Top = 10
    Width = 324
    Height = 234
    Cursor = crDefault
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 5
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial Black'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnClickCell = grdmainClickCell
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
    ShowSelection = False
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.4.4.1'
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      38
      46
      22
      22
      22)
  end
  object Panel1: TPanel
    Left = 8
    Top = 248
    Width = 321
    Height = 41
    TabOrder = 1
    object Button1: TButton
      Left = 153
      Top = 8
      Width = 75
      Height = 25
      Caption = #52404#50612#46321#47197
      TabOrder = 0
      OnClick = Button1Click
    end
    object AdvColorSelector1: TAdvColorSelector
      Left = 5
      Top = 5
      Width = 121
      Height = 22
      TabOrder = 1
      AppearanceStyle = esOffice2003Classic
      Version = '1.4.0.0'
      Visible = False
      SelectedColor = clNone
      ShowRGBHint = True
      AutoThemeAdapt = False
      BorderDownColor = 7021576
      BorderHotColor = clBlack
      Caption = ''
      Color = clBtnFace
      ColorDown = 11900292
      ColorHot = 14073525
      ColorDropDown = 16251129
      ColorSelected = 14604246
      ColorSelectedTo = clNone
      ColorSelectionDown = 14604246
      ColorSelectionDownTo = clNone
      ColorSelectionHot = 14073525
      ColorSelectionHotTo = clNone
      Style = ssCombo
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'Automatic'
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13209
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13107
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13056
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697728
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3486515
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 3355443
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 26367
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10053222
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 39423
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52377
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6723891
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13421619
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16737843
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10066329
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 52479
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16763904
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697881
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13408767
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10079487
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 10092543
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 13434828
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16777164
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16764057
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = 16751052
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          ImageIndex = -1
        end
        item
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          ImageIndex = -1
          Hint = 'More Color'
          ItemType = itFullWidthButton
        end>
    end
    object btnCls: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 2
      OnClick = btnClsClick
    end
  end
end
