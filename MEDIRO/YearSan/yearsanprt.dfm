object yearsanprt_f: Tyearsanprt_f
  Left = 231
  Top = 140
  Caption = #51652#47308#48708#54869#51064#49436
  ClientHeight = 745
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    ShowingPreview = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnNeedData = QuickRep1NeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 192
      Frame.Color = clWhite
      Frame.DrawTop = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 0
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        508.000000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lblSubject: TQRLabel
        Left = 234
        Top = 56
        Width = 249
        Height = 28
        Size.Values = (
          74.083333333333340000
          619.125000000000000000
          148.166666666666700000
          658.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = True
        Caption = #51652#47308#48708'('#50557#51228#48708') '#45225#51077' '#54869#51064#49436
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRShape2: TQRShape
        Left = 38
        Top = 88
        Width = 643
        Height = 105
        Size.Values = (
          277.812500000000000000
          100.541666666666700000
          232.833333333333400000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 40
        Top = 20
        Width = 609
        Height = 14
        Size.Values = (
          37.041666666666670000
          105.833333333333300000
          52.916666666666660000
          1611.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #9632' '#44397#48124#44148#44053#48372#54744' '#50836#50577#44553#50668#51032' '#44592#51456#50640' '#44288#54620' '#44508#52825' ['#48324#51648' '#51228'12'#54840#51032'2'#49436#49885'] <'#44060#51221' 2011.8.23>'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 38
        Top = 114
        Width = 643
        Height = 1
        Size.Values = (
          2.645833333333333000
          100.541666666666700000
          301.625000000000000000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 124
        Top = 88
        Width = 1
        Height = 105
        Size.Values = (
          277.812500000000000000
          328.083333333333400000
          232.833333333333400000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 162
        Top = 114
        Width = 1
        Height = 77
        Size.Values = (
          203.729166666666700000
          428.625000000000000000
          301.625000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 225
        Top = 138
        Width = 1
        Height = 54
        Size.Values = (
          142.875000000000000000
          595.312500000000000000
          365.125000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 162
        Top = 137
        Width = 519
        Height = 1
        Size.Values = (
          2.645833333333333000
          428.625000000000000000
          362.479166666666700000
          1373.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 353
        Top = 138
        Width = 1
        Height = 55
        Size.Values = (
          145.520833333333300000
          933.979166666666600000
          365.125000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 480
        Top = 89
        Width = 1
        Height = 105
        Size.Values = (
          277.812500000000000000
          1270.000000000000000000
          235.479166666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 546
        Top = 138
        Width = 1
        Height = 54
        Size.Values = (
          142.875000000000000000
          1444.625000000000000000
          365.125000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 613
        Top = 138
        Width = 1
        Height = 54
        Size.Values = (
          142.875000000000000000
          1621.895833333333000000
          365.125000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 353
        Top = 88
        Width = 1
        Height = 27
        Size.Values = (
          71.437500000000000000
          933.979166666666600000
          232.833333333333400000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 60
        Top = 97
        Width = 53
        Height = 14
        Size.Values = (
          37.041666666666670000
          158.750000000000000000
          256.645833333333400000
          140.229166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #54872#51088#49457#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 144
        Top = 97
        Width = 129
        Height = 14
        Size.Values = (
          37.041666666666670000
          381.000000000000000000
          256.645833333333400000
          341.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #54861#44600#46041
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 360
        Top = 97
        Width = 96
        Height = 14
        Size.Values = (
          37.041666666666670000
          952.500000000000000000
          256.645833333333400000
          254.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51452#48124#46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 494
        Top = 96
        Width = 123
        Height = 14
        Size.Values = (
          37.041666666666670000
          1307.041666666667000000
          254.000000000000000000
          325.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '680101-1978325'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 44
        Top = 138
        Width = 76
        Height = 14
        Size.Values = (
          37.041666666666670000
          116.416666666666700000
          365.125000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51652#47308','#51312#51228#51068#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 44
        Top = 168
        Width = 76
        Height = 14
        Size.Values = (
          37.041666666666670000
          116.416666666666700000
          444.500000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '('#51652#47308#44592#44036')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 130
        Top = 133
        Width = 27
        Height = 14
        Size.Values = (
          37.041666666666670000
          343.958333333333400000
          351.895833333333400000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44396#48516
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 129
        Top = 156
        Width = 30
        Height = 14
        Size.Values = (
          37.041666666666670000
          341.312500000000000000
          412.750000000000100000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '('#51077#50896','
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 246
        Top = 121
        Width = 144
        Height = 14
        Size.Values = (
          37.041666666666670000
          650.875000000000000000
          320.145833333333400000
          381.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51652#47308#48708'('#50557#51228#48708')'#45236#50669
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 169
        Top = 149
        Width = 48
        Height = 14
        Size.Values = (
          37.041666666666670000
          447.145833333333400000
          394.229166666666700000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #52509#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 237
        Top = 165
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          627.062500000000000000
          436.562499999999900000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9312#44277#45800
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 425
        Top = 160
        Width = 47
        Height = 14
        Size.Values = (
          37.041666666666670000
          1124.479166666667000000
          423.333333333333300000
          124.354166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #48512#45812#52509#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 516
        Top = 120
        Width = 144
        Height = 14
        Size.Values = (
          37.041666666666670000
          1365.250000000000000000
          317.500000000000000000
          381.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49548#46301#44277#51228' '#45824#49345#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 493
        Top = 163
        Width = 42
        Height = 14
        Size.Values = (
          37.041666666666670000
          1304.395833333333000000
          431.270833333333400000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #52852#46300
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 550
        Top = 151
        Width = 61
        Height = 14
        Size.Values = (
          37.041666666666670000
          1455.208333333333000000
          399.520833333333400000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #54788#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 618
        Top = 163
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1635.125000000000000000
          431.270833333333400000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #54788#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 129
        Top = 172
        Width = 30
        Height = 14
        Size.Values = (
          37.041666666666670000
          341.312500000000000000
          455.083333333333300000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #50808#47000')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 267
        Top = 142
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          706.437500000000000000
          375.708333333333400000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44553#50668
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape34: TQRShape
        Left = 225
        Top = 158
        Width = 193
        Height = 1
        Size.Values = (
          2.645833333333333000
          595.312500000000000000
          418.041666666666700000
          510.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel50: TQRLabel
        Left = 237
        Top = 178
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          627.062500000000000000
          470.958333333333400000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #48512#45812#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel51: TQRLabel
        Left = 302
        Top = 165
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          799.041666666666800000
          436.562499999999900000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9313#54872#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 302
        Top = 178
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          799.041666666666800000
          470.958333333333400000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #48512#45812#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel53: TQRLabel
        Left = 363
        Top = 142
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          960.437499999999900000
          375.708333333333400000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #48708#44553#50668
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel55: TQRLabel
        Left = 425
        Top = 144
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          1124.479166666667000000
          381.000000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #54872#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel56: TQRLabel
        Left = 364
        Top = 165
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          963.083333333333400000
          436.562499999999900000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9314#54872#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape36: TQRShape
        Left = 289
        Top = 159
        Width = 1
        Height = 34
        Size.Values = (
          89.958333333333340000
          764.645833333333400000
          420.687500000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel58: TQRLabel
        Left = 365
        Top = 178
        Width = 44
        Height = 14
        Size.Values = (
          37.041666666666670000
          965.729166666666800000
          470.958333333333400000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #48512#45812#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel59: TQRLabel
        Left = 166
        Top = 173
        Width = 57
        Height = 14
        Size.Values = (
          37.041666666666670000
          439.208333333333400000
          457.729166666666600000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '('#9312'+'#9313'+'#9314')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape37: TQRShape
        Left = 417
        Top = 138
        Width = 1
        Height = 55
        Size.Values = (
          145.520833333333300000
          1103.312500000000000000
          365.125000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel60: TQRLabel
        Left = 420
        Top = 175
        Width = 57
        Height = 14
        Size.Values = (
          37.041666666666670000
          1111.250000000000000000
          463.020833333333400000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '('#9313'+'#9314')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel62: TQRLabel
        Left = 550
        Top = 170
        Width = 61
        Height = 14
        Size.Values = (
          37.041666666666670000
          1455.208333333333000000
          449.791666666666700000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #50689#49688#51613
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 230
      Width = 718
      Height = 24
      Frame.Color = clWhite
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 0
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object lblDate: TQRLabel
        Left = 85
        Top = 8
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          224.895833333333300000
          21.166666666666670000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblDate'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRImage1: TQRImage
        Left = 169
        Top = 3
        Width = 101
        Height = 24
        Size.Values = (
          63.500000000000000000
          447.145833333333000000
          7.937500000000000000
          267.229166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
      object lblPlan: TQRLabel
        Left = 315
        Top = 8
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          833.437500000000000000
          21.166666666666670000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblPlan'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lblUp: TQRLabel
        Left = 440
        Top = 8
        Width = 32
        Height = 17
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          21.166666666666670000
          84.666666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblUp'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lblEa: TQRLabel
        Left = 530
        Top = 8
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1402.291666666667000000
          21.166666666666670000
          82.020833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblEa'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object lblAmount: TQRLabel
        Left = 610
        Top = 8
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          1613.958333333333000000
          21.166666666666670000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblAmount'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 48
        Top = 8
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666700000
          127.000000000000000000
          21.166666666666700000
          74.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Text = ''
        Transparent = True
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 28
        Width = 717
        Height = 1
        Frame.Color = clSilver
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          74.083333333333300000
          1897.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 38
        Top = 1
        Width = 643
        Height = 24
        Size.Values = (
          63.500000000000000000
          100.541666666666700000
          2.645833333333333000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 124
        Top = 1
        Width = 39
        Height = 24
        Size.Values = (
          63.500000000000000000
          328.083333333333400000
          2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 480
        Top = 1
        Width = 1
        Height = 24
        Size.Values = (
          63.500000000000000000
          1270.000000000000000000
          2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 546
        Top = 1
        Width = 68
        Height = 24
        Size.Values = (
          63.500000000000000000
          1444.625000000000000000
          2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 225
        Top = 1
        Height = 24
        Size.Values = (
          63.500000000000000000
          595.312500000000000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 44
        Top = 7
        Width = 70
        Height = 14
        Size.Values = (
          37.041666666666670000
          116.416666666666700000
          18.520833333333330000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2007-07-01'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 130
        Top = 7
        Width = 27
        Height = 14
        Size.Values = (
          37.041666666666670000
          343.958333333333400000
          18.520833333333330000
          71.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #50808#47000
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 165
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          436.562499999999900000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '1,200,000'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 228
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          603.250000000000000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '18,760'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 292
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          772.583333333333400000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 484
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1280.583333333333000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '1,200,000'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 550
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1455.208333333333000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 617
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1632.479166666667000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '8,030'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape35: TQRShape
        Left = 353
        Top = 1
        Height = 24
        Size.Values = (
          63.500000000000000000
          933.979166666666600000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel57: TQRLabel
        Left = 356
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          941.916666666666800000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel61: TQRLabel
        Left = 420
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1111.250000000000000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 254
      Width = 718
      Height = 270
      Frame.Color = clWhite
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 0
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand2
      Size.Values = (
        714.375000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape4: TQRShape
        Left = 38
        Top = -1
        Width = 643
        Height = 24
        Size.Values = (
          63.500000000000000000
          100.541666666666700000
          -2.645833333333333000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 124
        Top = -1
        Width = 39
        Height = 24
        Size.Values = (
          63.500000000000000000
          328.083333333333400000
          -2.645833333333333000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 225
        Top = -1
        Height = 24
        Size.Values = (
          63.500000000000000000
          595.312500000000000000
          -2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 546
        Top = -1
        Width = 68
        Height = 24
        Size.Values = (
          63.500000000000000000
          1444.625000000000000000
          -2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 49
        Top = 6
        Width = 65
        Height = 14
        Size.Values = (
          37.041666666666670000
          129.645833333333300000
          15.875000000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44228
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 164
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          433.916666666666800000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '26,790'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 228
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          603.250000000000000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '18,760'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 291
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          769.937500000000000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 484
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1280.583333333333000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 550
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1455.208333333333000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 618
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1635.125000000000000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '8,030'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 38
        Top = 22
        Width = 643
        Height = 27
        Size.Values = (
          71.437500000000000000
          100.541666666666700000
          58.208333333333340000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 38
        Top = 88
        Width = 643
        Height = 29
        Size.Values = (
          76.729166666666680000
          100.541666666666700000
          232.833333333333300000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 38
        Top = 116
        Width = 643
        Height = 29
        Size.Values = (
          76.729166666666680000
          100.541666666666700000
          306.916666666666700000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 38
        Top = 144
        Width = 643
        Height = 33
        Size.Values = (
          87.312500000000000000
          100.541666666666700000
          381.000000000000000000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 38
        Top = 176
        Width = 643
        Height = 33
        Size.Values = (
          87.312500000000000000
          100.541666666666700000
          465.666666666666800000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 38
        Top = 208
        Width = 643
        Height = 43
        Size.Values = (
          113.770833333333300000
          100.541666666666700000
          550.333333333333400000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 38
        Top = 250
        Width = 643
        Height = 17
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          661.458333333333400000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 276
        Top = 50
        Width = 1
        Height = 33
        Size.Values = (
          87.312500000000000000
          730.250000000000000000
          132.291666666666700000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 478
        Top = 116
        Width = 75
        Height = 28
        Size.Values = (
          74.083333333333340000
          1264.708333333333000000
          306.916666666666700000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel33: TQRLabel
        Left = 123
        Top = 31
        Width = 321
        Height = 14
        Size.Values = (
          37.041666666666670000
          325.437500000000000000
          82.020833333333340000
          849.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49548#46301#44277#51228#45824#49345#52509#50529
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 546
        Top = 31
        Width = 82
        Height = 14
        Size.Values = (
          37.041666666666670000
          1444.625000000000000000
          82.020833333333340000
          216.958333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 42
        Top = 98
        Width = 99
        Height = 14
        Size.Values = (
          37.041666666666670000
          111.125000000000000000
          259.291666666666700000
          261.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50629#51088#46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 42
        Top = 127
        Width = 99
        Height = 14
        Size.Values = (
          37.041666666666670000
          111.125000000000000000
          336.020833333333300000
          261.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50629#51109' '#49548#51116#51648
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 259
        Top = 98
        Width = 42
        Height = 14
        Size.Values = (
          37.041666666666670000
          685.270833333333200000
          259.291666666666700000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49345' '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 153
        Top = 98
        Width = 93
        Height = 14
        Size.Values = (
          37.041666666666670000
          404.812500000000000000
          259.291666666666700000
          246.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50629#51088#46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 153
        Top = 127
        Width = 317
        Height = 14
        Size.Values = (
          37.041666666666670000
          404.812500000000000000
          336.020833333333300000
          838.729166666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50629#51109' '#49548#51116#51648
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel40: TQRLabel
        Left = 310
        Top = 98
        Width = 161
        Height = 14
        Size.Values = (
          37.041666666666670000
          820.208333333333200000
          259.291666666666700000
          425.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49345'     '#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel41: TQRLabel
        Left = 484
        Top = 127
        Width = 61
        Height = 14
        Size.Values = (
          37.041666666666670000
          1280.583333333333000000
          336.020833333333300000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49457'    '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel42: TQRLabel
        Left = 558
        Top = 127
        Width = 78
        Height = 14
        Size.Values = (
          37.041666666666670000
          1476.375000000000000000
          336.020833333333300000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '('#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 46
        Top = 180
        Width = 627
        Height = 15
        Size.Values = (
          39.687500000000000000
          121.708333333333300000
          476.250000000000000000
          1658.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #8251' '#12300#44397#48124#44148#44053#48372#54744#48277#12301' '#51228'43'#51312#51032'2 '#46608#45716' '#12300#51032#47308#44553#50668#48277#12301' '#51228'11'#51312#51032'3'#50640' '#46384#46972' '#54872#51088#44032' '#51204#50529' '#48512#45812#54620' '#48708#50857#44284' '#48708#44553#50668#47196' '#48512#45812#54620
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 89
        Top = 156
        Width = 537
        Height = 14
        Size.Values = (
          37.041666666666670000
          235.479166666666700000
          412.750000000000100000
          1420.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2007 '#45380'   7 '#50900'   1 '#51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel47: TQRLabel
        Left = 46
        Top = 254
        Width = 627
        Height = 12
        Size.Values = (
          31.750000000000000000
          121.708333333333300000
          672.041666666666800000
          1658.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #50508#47548' : '#54788#44552#50689#49688#51613' '#47928#51032' 126  '#51064#53552#45367' '#54856#54168#51060#51648': http://'#54788#44552#50689#49688#51613'.kr'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel54: TQRLabel
        Left = 487
        Top = 98
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1288.520833333333000000
          259.291666666666700000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51204#54868#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape38: TQRShape
        Left = 353
        Top = -1
        Height = 23
        Size.Values = (
          60.854166666666680000
          933.979166666666600000
          -2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel63: TQRLabel
        Left = 356
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          941.916666666666800000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel64: TQRLabel
        Left = 420
        Top = 7
        Width = 58
        Height = 14
        Size.Values = (
          37.041666666666670000
          1111.250000000000000000
          18.520833333333330000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape39: TQRShape
        Left = 38
        Top = 48
        Width = 643
        Height = 41
        Size.Values = (
          108.479166666666700000
          100.541666666666700000
          127.000000000000000000
          1701.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 144
        Top = 48
        Width = 1
        Height = 97
        Size.Values = (
          256.645833333333400000
          381.000000000000000000
          127.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 480
        Top = 1
        Width = 1
        Height = 48
        Size.Values = (
          127.000000000000000000
          1270.000000000000000000
          2.645833333333333000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel65: TQRLabel
        Left = 42
        Top = 61
        Width = 99
        Height = 14
        Size.Values = (
          37.041666666666670000
          111.125000000000000000
          161.395833333333300000
          261.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #50836#50577#44592#44288#51333#47448
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel66: TQRLabel
        Left = 153
        Top = 55
        Width = 320
        Height = 14
        Size.Values = (
          37.041666666666670000
          404.812500000000000000
          145.520833333333300000
          846.666666666666600000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '[  ] '#51032#50896#44553#12685#48372#44148#44592#44288'        [  ] '#48337#50896#44553'        [  ] '#51333#54633#48337#50896
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel67: TQRLabel
        Left = 151
        Top = 73
        Width = 322
        Height = 14
        Size.Values = (
          37.041666666666670000
          399.520833333333300000
          193.145833333333300000
          851.958333333333200000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '[  ] '#49345#44553#51333#54633#48337#50896'              [ ] '#50557#44397#12685#54620#44397#55148#44480#51032#50557#54408#49468#53552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRShape40: TQRShape
        Left = 252
        Top = 88
        Width = 1
        Height = 29
        Size.Values = (
          76.729166666666680000
          666.750000000000000000
          232.833333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 306
        Top = 88
        Width = 1
        Height = 29
        Size.Values = (
          76.729166666666680000
          809.625000000000000000
          232.833333333333300000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 478
        Top = 88
        Width = 1
        Height = 29
        Size.Values = (
          76.729166666666680000
          1264.708333333333000000
          232.833333333333400000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 552
        Top = 88
        Width = 1
        Height = 29
        Size.Values = (
          76.729166666666680000
          1460.500000000000000000
          232.833333333333400000
          2.645833333333333000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel68: TQRLabel
        Left = 558
        Top = 98
        Width = 118
        Height = 14
        Size.Values = (
          37.041666666666670000
          1476.375000000000000000
          259.291666666666700000
          312.208333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51204#54868#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel69: TQRLabel
        Left = 68
        Top = 193
        Width = 575
        Height = 15
        Size.Values = (
          39.687500000000000000
          179.916666666666700000
          510.645833333333300000
          1521.354166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          #48708#50857#51032' '#53440#45817#49457' '#50668#48512#47484' '#44148#44053#48372#54744#49900#49324#54217#44032#50896'('#9743'1644-2000, '#54856#54168#51060#51648': www.hira.or.kr)'#50640' '#54869#51064' '#50836#52397#54616#49892 +
          ' '#49688' '#51080#49845#45768#45796'.'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel45: TQRLabel
        Left = 46
        Top = 211
        Width = 627
        Height = 14
        Size.Values = (
          37.041666666666670000
          121.708333333333300000
          558.270833333333400000
          1658.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 
          #8251' '#51060' '#45225#51077#54869#51064#49436#45716' '#12300#49548#46301#49464#48277#12301#50640' '#46384#47480' '#51032#47308#48708' '#44277#51228#49888#52397#50640' '#49324#50857#54624' '#49688' '#51080#49845#45768#45796'. '#45796#47564','#12300#49548#46301#49464#48277' '#49884#54665#47161#12301' '#51228'110'#51312#51228 +
          '2'#54637
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 62
        Top = 223
        Width = 560
        Height = 14
        Size.Values = (
          37.041666666666670000
          164.041666666666700000
          590.020833333333400000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #50640' '#46384#46972' '#54872#51088#48512#45812#50529' '#51473' 2009'#45380' 12'#50900' 31'#51068#44620#51648' '#51648#52636#54620' '#48120#50857#12685#49457#54805#49688#49696#51012' '#50948#54620' '#48708#50857' '#48143' '#44148#44053#51613#51652#51012' '#50948#54620' '#51032#50557#54408
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel70: TQRLabel
        Left = 62
        Top = 236
        Width = 560
        Height = 14
        Size.Values = (
          37.041666666666670000
          164.041666666666700000
          624.416666666666800000
          1481.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #44396#51077#48708#50857#51008' '#49548#46301#44277#51228' '#45824#49345#50529#50640' '#54252#54632#46121#45768#45796'.'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel71: TQRLabel
        Left = 655
        Top = 127
        Width = 26
        Height = 14
        Size.Values = (
          37.041666666666670000
          1733.020833333333000000
          336.020833333333300000
          68.791666666666680000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '('#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object qrV1: TQRLabel
        Left = 158
        Top = 55
        Width = 13
        Height = 14
        Size.Values = (
          37.041666666666670000
          418.041666666666700000
          145.520833333333300000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object qrV2: TQRLabel
        Left = 313
        Top = 55
        Width = 13
        Height = 14
        Size.Values = (
          37.041666666666670000
          828.145833333333200000
          145.520833333333300000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object qrV3: TQRLabel
        Left = 403
        Top = 55
        Width = 13
        Height = 14
        Size.Values = (
          37.041666666666670000
          1066.270833333333000000
          145.520833333333300000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object qrV4: TQRLabel
        Left = 158
        Top = 70
        Width = 13
        Height = 14
        Size.Values = (
          37.041666666666670000
          418.041666666666700000
          185.208333333333300000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object qrV5: TQRLabel
        Left = 313
        Top = 70
        Width = 13
        Height = 14
        Size.Values = (
          37.041666666666670000
          828.145833333333200000
          185.208333333333300000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
  end
end
