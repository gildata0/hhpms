object telList_f: TtelList_f
  Left = 147
  Top = 161
  BorderIcons = [biSystemMenu]
  Caption = 'telList_f'
  ClientHeight = 603
  ClientWidth = 1181
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
  object GrdtelRec: TAdvStringGrid
    Left = 0
    Top = 41
    Width = 1181
    Height = 562
    Cursor = crDefault
    Align = alClient
    ColCount = 15
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    OnDblClick = GrdtelRecDblClick
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = GrdtelRecGetCellColor
    OnClickSort = GrdtelRecClickSort
    OnButtonClick = GrdtelRecButtonClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #51068#51088
      #49457#47749
      #51204#54868#48264#54840
      #49884#44036
      #53685#54868#49884#44036
      #45236#50857
      #53076#46300
      #51473#50836#46020
      #51452#51228
      #48155#51008#49324#46988
      #45572#44396#50640#44172
      #44396#48516
      #52264#53944
      #50557#46020#51204#49569)
    ColumnSize.Save = True
    ColumnSize.Key = '.\db.ini'
    ColumnSize.Section = 'grdTeltec'
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
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Clear')
    FixedColWidth = 60
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
    SortSettings.Show = True
    Version = '8.4.4.1'
    ColWidths = (
      60
      64
      64
      103
      42
      64
      153
      68
      64
      64
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1181
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label5: TLabel
      Left = 534
      Top = 15
      Width = 44
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object Label4: TLabel
      Left = 374
      Top = 15
      Width = 33
      Height = 13
      Caption = #51473#50836#46020
    end
    object Label3: TLabel
      Left = 130
      Top = 15
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label2: TLabel
      Left = 240
      Top = 15
      Width = 22
      Height = 13
      Caption = #44396#48516
    end
    object Label1: TLabel
      Left = 15
      Top = 15
      Width = 22
      Height = 13
      Caption = #44592#44036
    end
    object BtnTel: TButton
      Left = 694
      Top = 9
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 0
      OnClick = BtnTelClick
    end
    object spSkinButton2: TButton
      Left = 850
      Top = 9
      Width = 75
      Height = 25
      Caption = #50641#49472
      TabOrder = 1
      OnClick = spSkinButton2Click
    end
    object spSkinButton1: TButton
      Left = 926
      Top = 9
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 2
      OnClick = spSkinButton1Click
    end
    object rgGubun: TComboBox
      Left = 280
      Top = 10
      Width = 86
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 3
      Text = #51204#52404
      Items.Strings = (
        #51204#52404
        #48155#51008#51204#54868
        #44148#51204#54868)
    end
    object edtTelno: TEdit
      Left = 590
      Top = 10
      Width = 96
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
      Text = 'edtTelno'
    end
    object DtTelLast: TDateTimePicker
      Left = 140
      Top = 12
      Width = 86
      Height = 20
      Date = 37870.000000000000000000
      Time = 0.224136597200413200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 5
    end
    object DtTelFirst: TDateTimePicker
      Left = 45
      Top = 12
      Width = 86
      Height = 20
      Date = 37870.000000000000000000
      Time = 0.224136597200413200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 6
    end
    object ComboBox2: TComboBox
      Left = 420
      Top = 10
      Width = 96
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 7
      Text = #51204#52404
      Items.Strings = (
        #51204#52404
        #54869#51064#51204#54868
        #44596#44553
        #51473#50836
        #48372#53685)
    end
    object BtnTelPrt: TButton
      Left = 770
      Top = 9
      Width = 75
      Height = 25
      Caption = #51064#49604
      TabOrder = 8
      OnClick = BtnTelPrtClick
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = GrdtelRec
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 340
    Top = 95
  end
  object SaveDialog1: TSaveDialog
    Left = 226
    Top = 99
  end
  object frxReport1: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43496.589599467600000000
    ReportOptions.LastChange = 43496.589599467600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 249
    Datasets = <>
    Variables = <>
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 40.000000000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 324.000000000000000000
          Top = 12.000000000000000000
          Width = 69.000000000000000000
          Height = 17.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #46027#50880#52404
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #53685#54868#44592#47197)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 580.000000000000000000
          Top = 20.000000000000000000
          Width = 57.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #46027#50880#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LblTerm')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.000000000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 20.000000000000000000
          Top = 2.000000000000000000
          Width = 25.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #51068#51088)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 82.000000000000000000
          Top = 2.000000000000000000
          Width = 37.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #54872#51088#47749)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 165.000000000000000000
          Top = 2.000000000000000000
          Width = 49.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #51204#54868#48264#54840)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 300.000000000000000000
          Top = 2.000000000000000000
          Width = 25.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #49884#44036)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 400.000000000000000000
          Top = 2.000000000000000000
          Width = 25.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #45236#50857)
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.000000000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 20.000000000000000000
          Top = 3.000000000000000000
          Width = 49.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QRLabel1')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 82.000000000000000000
          Top = 3.000000000000000000
          Width = 49.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QRLabel1')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 164.000000000000000000
          Top = 3.000000000000000000
          Width = 49.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QRLabel1')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 300.000000000000000000
          Top = 3.000000000000000000
          Width = 49.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QRLabel1')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 400.000000000000000000
          Top = 3.000000000000000000
          Width = 49.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QRLabel1')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 28.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #48148#53461#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '(Detail no)')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.000000000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 628.000000000000000000
          Top = 4.000000000000000000
          Width = 67.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #46027#50880#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LblHospName')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 4.000000000000000000
          Width = 55.000000000000000000
          Height = 13.000000000000000000
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #46027#50880#52404
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'LblPrtDay')
          ParentFont = False
        end
      end
    end
  end
end
