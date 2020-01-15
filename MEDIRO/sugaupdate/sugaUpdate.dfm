object sugaUpdate_f: TsugaUpdate_f
  Left = 173
  Top = 177
  Caption = 'sugaUpdate_f'
  ClientHeight = 441
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvStringGrid1: TAdvStringGrid
    Left = 0
    Top = 61
    Width = 738
    Height = 380
    Cursor = crDefault
    Align = alClient
    ColCount = 1
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
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
    ColWidths = (
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 61
    Align = alTop
    TabOrder = 1
    DesignSize = (
      738
      61)
    object AdvProgress1: TAdvProgressBar
      Left = 10
      Top = 35
      Width = 256
      Height = 18
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Level0ColorTo = 14811105
      Level1ColorTo = 13303807
      Level2Color = 5483007
      Level2ColorTo = 11064319
      Level3ColorTo = 13290239
      Level1Perc = 70
      Level2Perc = 90
      Position = 0
      ShowBorder = True
      Version = '1.3.1.0'
    end
    object Label1: TLabel
      Left = 280
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object Button1: TButton
      Left = 9
      Top = 8
      Width = 111
      Height = 26
      Caption = #50641#49472#54028#51068#48520#47084#50724#44592
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 129
      Top = 8
      Width = 137
      Height = 25
      Caption = #49688#44032#50629#45936#51060#53944' '#49884#51089
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 622
      Top = 1
      Width = 116
      Height = 25
      Caption = 'suga '#50629#45936#51060#53944
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 272
      Top = 9
      Width = 121
      Height = 25
      Caption = #51116#47308#50629#45936#51060#53944
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 400
      Top = 8
      Width = 142
      Height = 26
      Hint = '..\upSuga\Database11.mdb'
      Caption = #51204#52404#49688#44032
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 548
      Top = 1
      Width = 75
      Height = 25
      Hint = '..\upSuga\Database11.mdb'
      Caption = #49324#50857#51088#49688#44032
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 556
      Top = 30
      Width = 75
      Height = 25
      Caption = 'UserSuga2'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 637
      Top = 30
      Width = 75
      Height = 25
      Caption = 'usersuga3'
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 399
      Top = 30
      Width = 75
      Height = 25
      Caption = #49328#51221#47749#52845#50629#45936#51060#53944
      TabOrder = 8
      OnClick = Button9Click
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = AdvStringGrid1
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    Version = '3.14'
    Left = 125
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 165
    Top = 40
  end
end
