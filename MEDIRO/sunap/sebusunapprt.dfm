object sebusunapprt_f: Tsebusunapprt_f
  Left = 83
  Top = 191
  Caption = 'sebusunapprt_f'
  ClientHeight = 381
  ClientWidth = 1229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 330
    Top = 10
    Width = 1123
    Height = 794
    ShowingPreview = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #46027#50880#52404
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
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
      Top = 78
      Width = 1047
      Height = 19
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel7: TQRLabel
        Left = 36
        Top = 2
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          95.250000000000000000
          5.291666666666667000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #51652#47308#51068#51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 100
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          264.583333333333300000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #49457#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 204
        Top = 2
        Width = 13
        Height = 13
        Size.Values = (
          34.395833333333330000
          539.750000000000000000
          5.291666666666667000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #54016
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 241
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          637.645833333333200000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #48372#54744
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 316
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          836.083333333333200000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #48708#48372
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 375
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          992.187500000000000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #49688#45225
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 470
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          1243.541666666667000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #54788#44552
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 551
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          1457.854166666667000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #54788#50689
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 621
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          1643.062500000000000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #52852#46300
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 696
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          1841.500000000000000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #53685#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 833
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          2203.979166666667000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #44048#47732
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 874
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          2312.458333333333000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #48120#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel21: TQRLabel
        Left = 916
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          2423.583333333333000000
          5.291666666666667000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #52852#51333
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 950
        Top = 2
        Width = 31
        Height = 13
        Size.Values = (
          34.395833333333330000
          2513.541666666667000000
          5.291666666666667000
          82.020833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #49888'/'#44396
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 985
        Top = 2
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          2606.145833333333000000
          5.291666666666667000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #52280#44256#49324#54637
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel41: TQRLabel
        Left = 145
        Top = 2
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          383.645833333333300000
          5.291666666666667000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #52264#53944#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel45: TQRLabel
        Left = 744
        Top = 2
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          1968.500000000000000000
          5.291666666666667000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #53685#51109#54788#50689
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel46: TQRLabel
        Left = 1024
        Top = 2
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          2709.333333333333000000
          5.291666666666667000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #45236#50896#46041#44592
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 97
      Width = 1047
      Height = 20
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #46027#50880#52404
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        52.916666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 28
        Top = 3
        Width = 63
        Height = 13
        Size.Values = (
          34.395833333333300000
          74.083333333333300000
          7.937500000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 93
        Top = 3
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          246.062500000000000000
          7.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 200
        Top = 3
        Width = 22
        Height = 13
        Size.Values = (
          34.395833333333330000
          529.166666666666700000
          7.937500000000000000
          58.208333333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 225
        Top = 3
        Width = 56
        Height = 13
        Size.Values = (
          34.395833333333330000
          595.312500000000000000
          7.937500000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 284
        Top = 3
        Width = 64
        Height = 13
        Size.Values = (
          34.395833333333330000
          751.416666666666800000
          7.937500000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 350
        Top = 3
        Width = 74
        Height = 13
        Size.Values = (
          34.395833333333330000
          926.041666666666800000
          7.937500000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 433
        Top = 3
        Width = 63
        Height = 13
        Size.Values = (
          34.395833333333300000
          1145.645833333330000000
          7.937500000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 522
        Top = 3
        Width = 70
        Height = 13
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          7.937500000000000000
          185.208333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Left = 0
        Top = 2
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333300000
          0.000000000000000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = True
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 602
        Top = 3
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333330000
          1592.791666666667000000
          7.937500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 670
        Top = 3
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333330000
          1772.708333333333000000
          7.937500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 800
        Top = 3
        Width = 65
        Height = 13
        Size.Values = (
          34.395833333333330000
          2116.666666666667000000
          7.937500000000000000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel26: TQRLabel
        Left = 958
        Top = 3
        Width = 31
        Height = 13
        Size.Values = (
          34.395833333333340000
          2534.708333333333000000
          7.937500000000000000
          82.020833333333340000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 916
        Top = 3
        Width = 45
        Height = 13
        Size.Values = (
          34.395833333333330000
          2423.583333333333000000
          7.937500000000000000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 871
        Top = 3
        Width = 44
        Height = 13
        Size.Values = (
          34.395833333333330000
          2304.520833333333000000
          7.937500000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel40: TQRLabel
        Left = 995
        Top = 3
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          2632.604166666667000000
          7.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel42: TQRLabel
        Left = 146
        Top = 3
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          386.291666666666700000
          7.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel43: TQRLabel
        Left = 740
        Top = 3
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333340000
          1957.916666666667000000
          7.937500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel47: TQRLabel
        Left = 1020
        Top = 3
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          2698.750000000000000000
          7.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object LblSubject: TQRLabel
        Left = 454
        Top = 12
        Width = 138
        Height = 17
        Size.Values = (
          44.979166666666670000
          1201.208333333333000000
          31.750000000000000000
          365.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = True
        Caption = #44592#44036#48324'  '#49688#45225#45236#50669
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 138
      Width = 1047
      Height = 21
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object LblHospName: TQRLabel
        Left = 980
        Top = 4
        Width = 67
        Height = 13
        Size.Values = (
          34.395833333333340000
          2592.916666666667000000
          10.583333333333330000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = True
        Caption = 'LblHospName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object LblPrtDay: TQRLabel
        Left = 0
        Top = 4
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          10.583333333333330000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = True
        Caption = 'LblPrtDay'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 117
      Width = 1047
      Height = 21
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel29: TQRLabel
        Left = 225
        Top = 5
        Width = 56
        Height = 13
        Size.Values = (
          34.395833333333330000
          595.312500000000000000
          13.229166666666670000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 284
        Top = 5
        Width = 64
        Height = 13
        Size.Values = (
          34.395833333333330000
          751.416666666666800000
          13.229166666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 350
        Top = 5
        Width = 74
        Height = 13
        Size.Values = (
          34.395833333333330000
          926.041666666666800000
          13.229166666666670000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel32: TQRLabel
        Left = 433
        Top = 5
        Width = 63
        Height = 13
        Size.Values = (
          34.395833333333330000
          1145.645833333333000000
          13.229166666666670000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel33: TQRLabel
        Left = 522
        Top = 5
        Width = 70
        Height = 13
        Size.Values = (
          34.395833333333330000
          1381.125000000000000000
          13.229166666666670000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 602
        Top = 5
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333330000
          1592.791666666667000000
          13.229166666666670000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 670
        Top = 5
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333330000
          1772.708333333333000000
          13.229166666666670000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 800
        Top = 5
        Width = 65
        Height = 13
        Size.Values = (
          34.395833333333330000
          2116.666666666667000000
          13.229166666666670000
          171.979166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 871
        Top = 5
        Width = 44
        Height = 13
        Size.Values = (
          34.395833333333330000
          2304.520833333333000000
          13.229166666666670000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 36
        Top = 4
        Width = 25
        Height = 13
        Size.Values = (
          34.395833333333330000
          95.250000000000000000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #54633#44228
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 740
        Top = 5
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333330000
          1957.916666666667000000
          13.229166666666670000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
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
