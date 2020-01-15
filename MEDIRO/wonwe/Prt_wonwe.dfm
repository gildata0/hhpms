object Prt_Wonwe_f: TPrt_Wonwe_f
  Left = 430
  Top = 189
  Caption = #50896#50808#52376#48169#51204
  ClientHeight = 843
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 16
    Width = 635
    Height = 898
    ShowingPreview = False
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 836
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2764.895833333333000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape1: TQRShape
        Left = 16
        Top = 56
        Width = 545
        Height = 721
        Size.Values = (
          2384.557291666670000000
          52.916666666666700000
          185.208333333333000000
          1802.473958333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel70: TQRLabel
        Left = 237
        Top = 74
        Width = 105
        Height = 18
        Size.Values = (
          59.531250000000000000
          783.828125000000000000
          244.739583333333000000
          347.265625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #52376'    '#48169'    '#51204
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #48148#53461
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRShape2: TQRShape
        Left = 17
        Top = 130
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          429.947916666667000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel72: TQRLabel
        Left = 18
        Top = 110
        Width = 18
        Height = 17
        Size.Values = (
          56.223958333333300000
          59.531250000000000000
          363.802083333333000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9633
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel9: TQRLabel
        Left = 495
        Top = 228
        Width = 63
        Height = 14
        Size.Values = (
          46.302083333333300000
          1637.109375000000000000
          754.062500000000000000
          208.359375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #52824#44284#51032#49324
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 134
        Top = 200
        Width = 184
        Height = 14
        Size.Values = (
          46.302083333333300000
          443.177083333333000000
          661.458333333333000000
          608.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '651216-1565611'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 134
        Top = 167
        Width = 186
        Height = 14
        Size.Values = (
          46.302083333333300000
          443.177083333333000000
          552.317708333333000000
          615.156250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #54872#51088#51060#47492
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel68: TQRLabel
        Left = 437
        Top = 596
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1971.145833333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel53'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel67: TQRLabel
        Left = 384
        Top = 596
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1971.145833333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel39'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel66: TQRLabel
        Left = 332
        Top = 596
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1971.145833333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel40'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel65: TQRLabel
        Left = 29
        Top = 596
        Width = 278
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1971.145833333330000000
          919.427083333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel32'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel64: TQRLabel
        Left = 437
        Top = 571
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1888.463541666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel53'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel63: TQRLabel
        Left = 384
        Top = 571
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1888.463541666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel39'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel62: TQRLabel
        Left = 332
        Top = 571
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1888.463541666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel40'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel61: TQRLabel
        Left = 29
        Top = 571
        Width = 278
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1888.463541666670000000
          919.427083333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel32'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel60: TQRLabel
        Left = 437
        Top = 544
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1799.166666666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel53'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 433
        Top = 204
        Width = 125
        Height = 14
        Size.Values = (
          46.302083333333300000
          1432.057291666670000000
          674.687500000000000000
          413.411458333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'E-Mail@mail.com'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel59: TQRLabel
        Left = 384
        Top = 544
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1799.166666666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel39'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel58: TQRLabel
        Left = 332
        Top = 544
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1799.166666666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel40'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel57: TQRLabel
        Left = 29
        Top = 544
        Width = 278
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1799.166666666670000000
          919.427083333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel32'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel54: TQRLabel
        Left = 415
        Top = 36
        Width = 143
        Height = 14
        Size.Values = (
          46.302083333333300000
          1372.526041666670000000
          119.062500000000000000
          472.942708333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '[                                         ]'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel53: TQRLabel
        Left = 437
        Top = 470
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1554.427083333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel53'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel52: TQRLabel
        Left = 437
        Top = 445
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1471.744791666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel52'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel51: TQRLabel
        Left = 437
        Top = 421
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1392.369791666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel51'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel50: TQRLabel
        Left = 437
        Top = 398
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1316.302083333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel50'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 433
        Top = 182
        Width = 125
        Height = 13
        Size.Values = (
          42.994791666666700000
          1432.057291666670000000
          601.927083333333000000
          413.411458333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #54057#49828#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel49: TQRLabel
        Left = 437
        Top = 375
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1240.234375000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel49'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel48: TQRLabel
        Left = 437
        Top = 354
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666700000
          1445.286458333330000000
          1170.781250000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel48'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel47: TQRLabel
        Left = 437
        Top = 330
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1445.286458333330000000
          1091.406250000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel47'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel46: TQRLabel
        Left = 332
        Top = 330
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1091.406250000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel46'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel45: TQRLabel
        Left = 332
        Top = 354
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666700000
          1098.020833333330000000
          1170.781250000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel45'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel44: TQRLabel
        Left = 332
        Top = 375
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1240.234375000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel44'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel43: TQRLabel
        Left = 332
        Top = 398
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1316.302083333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel43'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel42: TQRLabel
        Left = 332
        Top = 421
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1392.369791666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel42'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel41: TQRLabel
        Left = 332
        Top = 445
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1471.744791666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel41'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel40: TQRLabel
        Left = 332
        Top = 470
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1098.020833333330000000
          1554.427083333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel40'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 433
        Top = 158
        Width = 124
        Height = 14
        Size.Values = (
          46.302083333333300000
          1432.057291666670000000
          522.552083333333000000
          410.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '055)287-2828'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel39: TQRLabel
        Left = 384
        Top = 470
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1554.427083333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel39'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel38: TQRLabel
        Left = 384
        Top = 445
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1471.744791666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel38'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 384
        Top = 421
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1392.369791666670000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel37'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel36: TQRLabel
        Left = 384
        Top = 398
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1316.302083333330000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel36'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel35: TQRLabel
        Left = 384
        Top = 375
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1240.234375000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel35'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel34: TQRLabel
        Left = 384
        Top = 354
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666700000
          1270.000000000000000000
          1170.781250000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel34'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel33: TQRLabel
        Left = 384
        Top = 330
        Width = 25
        Height = 14
        Size.Values = (
          46.302083333333300000
          1270.000000000000000000
          1091.406250000000000000
          82.682291666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel33'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel32: TQRLabel
        Left = 29
        Top = 470
        Width = 275
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1554.427083333330000000
          909.505208333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel32'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel31: TQRLabel
        Left = 29
        Top = 446
        Width = 275
        Height = 13
        Size.Values = (
          42.994791666666700000
          95.911458333333300000
          1475.052083333330000000
          909.505208333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel31'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel30: TQRLabel
        Left = 29
        Top = 421
        Width = 275
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1392.369791666670000000
          909.505208333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel30'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 433
        Top = 135
        Width = 124
        Height = 14
        Size.Values = (
          46.302083333333300000
          1432.057291666670000000
          446.484375000000000000
          410.104166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #54632#44760#54616#45716#52824#44284#51032#50896
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel29: TQRLabel
        Left = 29
        Top = 398
        Width = 275
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1316.302083333330000000
          909.505208333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel29'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel28: TQRLabel
        Left = 29
        Top = 375
        Width = 275
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1240.234375000000000000
          909.505208333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel28'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel27: TQRLabel
        Left = 29
        Top = 353
        Width = 276
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1167.473958333330000000
          912.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel27'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 29
        Top = 330
        Width = 276
        Height = 14
        Size.Values = (
          46.302083333333300000
          95.911458333333300000
          1091.406250000000000000
          912.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel26'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel25: TQRLabel
        Left = 64
        Top = 251
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          211.666666666667000000
          830.130208333334000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'K'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Left = 72
        Top = 251
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          238.125000000000000000
          830.130208333334000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 80
        Top = 251
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          264.583333333333000000
          830.130208333334000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 87
        Top = 251
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          287.734375000000000000
          830.130208333334000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel21: TQRLabel
        Left = 94
        Top = 251
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          310.885416666667000000
          830.130208333334000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel20: TQRLabel
        Left = 94
        Top = 228
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          310.885416666667000000
          754.062500000000000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel2: TQRLabel
        Left = 132
        Top = 137
        Width = 187
        Height = 14
        Size.Values = (
          46.302083333333300000
          436.562500000000000000
          453.098958333333000000
          618.463541666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '2003'#45380' 15'#50900' 17'#51068' - '#51228' 00034'#54840
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel19: TQRLabel
        Left = 87
        Top = 228
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          287.734375000000000000
          754.062500000000000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel18: TQRLabel
        Left = 80
        Top = 228
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          264.583333333333000000
          754.062500000000000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel17: TQRLabel
        Left = 72
        Top = 228
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          238.125000000000000000
          754.062500000000000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel16: TQRLabel
        Left = 64
        Top = 228
        Width = 7
        Height = 14
        Size.Values = (
          46.302083333333300000
          211.666666666667000000
          754.062500000000000000
          23.151041666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'K'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel15: TQRLabel
        Left = 387
        Top = 112
        Width = 169
        Height = 14
        Size.Values = (
          46.302083333333300000
          1279.921875000000000000
          370.416666666667000000
          558.932291666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #50836#50577#44592#44288#44592#54840' : 36400041    ]'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 211
        Top = 234
        Width = 97
        Height = 14
        Size.Values = (
          46.302083333333300000
          697.838541666667000000
          773.906250000000000000
          320.807291666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #44608' '#54732' '#51452
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 496
        Top = 251
        Width = 61
        Height = 14
        Size.Values = (
          46.302083333333300000
          1640.416666666670000000
          830.130208333334000000
          201.744791666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape3: TQRShape
        Left = 17
        Top = 156
        Width = 305
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          515.937500000000000000
          1008.723958333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 322
        Top = 131
        Width = 1
        Height = 92
        Size.Values = (
          304.270833333333000000
          1064.947916666670000000
          433.255208333333000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 353
        Top = 131
        Width = 1
        Height = 92
        Size.Values = (
          304.270833333333000000
          1167.473958333330000000
          433.255208333333000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 430
        Top = 131
        Width = 1
        Height = 92
        Size.Values = (
          304.270833333333000000
          1422.135416666670000000
          433.255208333333000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 17
        Top = 222
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          734.218750000000000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 127
        Top = 130
        Width = 1
        Height = 141
        Size.Values = (
          465.666666666667000000
          420.687500000000000000
          431.270833333333000000
          2.645833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 44
        Top = 157
        Width = 1
        Height = 66
        Size.Values = (
          218.281250000000000000
          145.520833333333000000
          519.244791666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 21
        Top = 138
        Width = 103
        Height = 13
        Size.Values = (
          42.994791666666700000
          69.453125000000000000
          456.406250000000000000
          340.651041666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44368#48512#50672#50900#51068#48143#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 45
        Top = 187
        Width = 278
        Height = 1
        Size.Values = (
          3.307291666666670000
          148.828125000000000000
          618.463541666667000000
          919.427083333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel55: TQRLabel
        Left = 20
        Top = 171
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666700000
          66.145833333333300000
          565.546875000000000000
          69.453125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #54872
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel69: TQRLabel
        Left = 20
        Top = 191
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666700000
          66.145833333333300000
          631.692708333333000000
          69.453125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51088
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel71: TQRLabel
        Left = 47
        Top = 167
        Width = 77
        Height = 13
        Size.Values = (
          42.994791666666700000
          155.442708333333000000
          552.317708333333000000
          254.661458333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49457'       '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel73: TQRLabel
        Left = 47
        Top = 200
        Width = 79
        Height = 13
        Size.Values = (
          42.994791666666700000
          155.442708333333000000
          661.458333333333000000
          261.276041666667000000)
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
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape11: TQRShape
        Left = 354
        Top = 176
        Width = 207
        Height = 1
        Size.Values = (
          3.307291666666670000
          1170.781250000000000000
          582.083333333333000000
          684.609375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 354
        Top = 152
        Width = 207
        Height = 1
        Size.Values = (
          3.307291666666670000
          1170.781250000000000000
          502.708333333333000000
          684.609375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 354
        Top = 199
        Width = 207
        Height = 1
        Size.Values = (
          3.307291666666670000
          1170.781250000000000000
          658.151041666667000000
          684.609375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel74: TQRLabel
        Left = 328
        Top = 147
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666700000
          1084.791666666670000000
          486.171875000000000000
          69.453125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51032
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel75: TQRLabel
        Left = 328
        Top = 162
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666700000
          1084.791666666670000000
          535.781250000000000000
          69.453125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #47308
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel76: TQRLabel
        Left = 328
        Top = 178
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666700000
          1084.791666666670000000
          588.697916666667000000
          69.453125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44592
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel77: TQRLabel
        Left = 328
        Top = 193
        Width = 21
        Height = 13
        Size.Values = (
          42.994791666666700000
          1084.791666666670000000
          638.307291666667000000
          69.453125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44288
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel79: TQRLabel
        Left = 356
        Top = 136
        Width = 71
        Height = 13
        Size.Values = (
          42.994791666666700000
          1177.395833333330000000
          449.791666666667000000
          234.817708333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #47749'    '#52845
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel78: TQRLabel
        Left = 356
        Top = 159
        Width = 71
        Height = 13
        Size.Values = (
          42.994791666666700000
          1177.395833333330000000
          525.859375000000000000
          234.817708333333000000)
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
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel80: TQRLabel
        Left = 356
        Top = 182
        Width = 71
        Height = 13
        Size.Values = (
          42.994791666666700000
          1177.395833333330000000
          601.927083333333000000
          234.817708333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #54057#49828#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel81: TQRLabel
        Left = 356
        Top = 205
        Width = 71
        Height = 13
        Size.Values = (
          42.994791666666700000
          1177.395833333330000000
          677.994791666667000000
          234.817708333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'e-mail'#51452#49548
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape14: TQRShape
        Left = 17
        Top = 271
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          896.276041666667000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 55
        Top = 222
        Width = 1
        Height = 49
        Size.Values = (
          162.057291666667000000
          181.901041666667000000
          734.218750000000000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 56
        Top = 246
        Width = 71
        Height = 1
        Size.Values = (
          3.307291666666670000
          185.208333333333000000
          813.593750000000000000
          234.817708333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel82: TQRLabel
        Left = 20
        Top = 226
        Width = 32
        Height = 13
        Size.Values = (
          42.994791666666700000
          66.145833333333300000
          747.447916666667000000
          105.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51656#48337
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel83: TQRLabel
        Left = 20
        Top = 241
        Width = 32
        Height = 13
        Size.Values = (
          42.994791666666700000
          66.145833333333300000
          797.057291666667000000
          105.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #48516#47448
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel84: TQRLabel
        Left = 20
        Top = 256
        Width = 32
        Height = 13
        Size.Values = (
          42.994791666666700000
          66.145833333333300000
          846.666666666667000000
          105.833333333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44592#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape17: TQRShape
        Left = 198
        Top = 223
        Width = 1
        Height = 49
        Size.Values = (
          162.057291666667000000
          654.843750000000000000
          737.526041666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel85: TQRLabel
        Left = 137
        Top = 226
        Width = 60
        Height = 13
        Size.Values = (
          42.994791666666700000
          453.098958333333000000
          747.447916666667000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #52376'    '#48169
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel86: TQRLabel
        Left = 137
        Top = 241
        Width = 60
        Height = 13
        Size.Values = (
          42.994791666666700000
          453.098958333333000000
          797.057291666667000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51032#47308#51064#51032
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel87: TQRLabel
        Left = 137
        Top = 256
        Width = 60
        Height = 13
        Size.Values = (
          42.994791666666700000
          453.098958333333000000
          846.666666666667000000
          198.437500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49457'    '#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape18: TQRShape
        Left = 436
        Top = 222
        Width = 1
        Height = 49
        Size.Values = (
          162.057291666667000000
          1441.979166666670000000
          734.218750000000000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 492
        Top = 223
        Width = 1
        Height = 49
        Size.Values = (
          162.057291666667000000
          1627.187500000000000000
          737.526041666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 437
        Top = 246
        Width = 123
        Height = 1
        Size.Values = (
          3.307291666666670000
          1445.286458333330000000
          813.593750000000000000
          406.796875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel88: TQRLabel
        Left = 329
        Top = 253
        Width = 96
        Height = 13
        Size.Values = (
          42.994791666666700000
          1088.098958333330000000
          836.744791666667000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '('#49436#47749#46608#45716#45216#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel89: TQRLabel
        Left = 439
        Top = 229
        Width = 52
        Height = 13
        Size.Values = (
          42.994791666666700000
          1451.901041666670000000
          757.369791666667000000
          171.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #47732#54728#51333#48324
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel90: TQRLabel
        Left = 439
        Top = 252
        Width = 52
        Height = 13
        Size.Values = (
          42.994791666666700000
          1451.901041666670000000
          833.437500000000000000
          171.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #47732#54728#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape21: TQRShape
        Left = 17
        Top = 294
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          972.343750000000000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel91: TQRLabel
        Left = 28
        Top = 277
        Width = 477
        Height = 13
        Size.Values = (
          42.994791666666700000
          92.604166666666700000
          916.119791666667000000
          1577.578125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #65290#54872#51088#51032#50836#44396#44032' '#51080#45716#46412#50640#45716' '#51656#48337#48516#47448#44592#54840#47484' '#44592#51116#54616#51648' '#50500#45768#54633#45768#45796'.'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape22: TQRShape
        Left = 17
        Top = 324
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1071.562500000000000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 319
        Top = 295
        Width = 1
        Height = 218
        Size.Values = (
          720.989583333334000000
          1055.026041666670000000
          975.651041666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 477
        Top = 295
        Width = 1
        Height = 320
        Size.Values = (
          1058.333333333330000000
          1577.578125000000000000
          975.651041666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 369
        Top = 295
        Width = 1
        Height = 217
        Size.Values = (
          717.682291666667000000
          1220.390625000000000000
          975.651041666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 423
        Top = 295
        Width = 1
        Height = 217
        Size.Values = (
          717.682291666667000000
          1398.984375000000000000
          975.651041666667000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 17
        Top = 347
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1147.630208333330000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel92: TQRLabel
        Left = 21
        Top = 303
        Width = 296
        Height = 13
        Size.Values = (
          42.994791666666700000
          69.453125000000000000
          1002.109375000000000000
          978.958333333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #52376#48169#51032#50557#54408#51032' '#47749#52845
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel93: TQRLabel
        Left = 321
        Top = 297
        Width = 45
        Height = 13
        Size.Values = (
          42.994791666666700000
          1061.640625000000000000
          982.265625000000000000
          148.828125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1'#54924
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel94: TQRLabel
        Left = 321
        Top = 310
        Width = 45
        Height = 13
        Size.Values = (
          42.994791666666700000
          1061.640625000000000000
          1025.260416666670000000
          148.828125000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #53804#50557#47049
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel95: TQRLabel
        Left = 371
        Top = 297
        Width = 51
        Height = 13
        Size.Values = (
          42.994791666666700000
          1227.005208333330000000
          982.265625000000000000
          168.671875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1'#51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel96: TQRLabel
        Left = 372
        Top = 311
        Width = 50
        Height = 12
        Size.Values = (
          39.687500000000000000
          1230.312500000000000000
          1028.567708333330000000
          165.364583333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #53804#50668#54943#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel97: TQRLabel
        Left = 424
        Top = 297
        Width = 51
        Height = 13
        Size.Values = (
          44.097222222222200000
          1402.291666666670000000
          983.368055555556000000
          167.569444444444000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #52509
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel98: TQRLabel
        Left = 426
        Top = 311
        Width = 50
        Height = 11
        Size.Values = (
          36.380208333333300000
          1408.906250000000000000
          1028.567708333330000000
          165.364583333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #53804#50557#51068#49688
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel99: TQRLabel
        Left = 483
        Top = 303
        Width = 73
        Height = 13
        Size.Values = (
          42.994791666666700000
          1597.421875000000000000
          1002.109375000000000000
          241.432291666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #50857'   '#48277
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape28: TQRShape
        Left = 17
        Top = 370
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1223.697916666670000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 17
        Top = 392
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1296.458333333330000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 17
        Top = 415
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1372.526041666670000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 17
        Top = 439
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1451.901041666670000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 17
        Top = 463
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1531.276041666670000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 17
        Top = 488
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1613.958333333330000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 17
        Top = 512
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1693.333333333330000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel100: TQRLabel
        Left = 480
        Top = 494
        Width = 79
        Height = 13
        Size.Values = (
          42.994791666666700000
          1587.500000000000000000
          1633.802083333330000000
          261.276041666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51312#51228#49884#52280#44256#49324#54637
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape35: TQRShape
        Left = 17
        Top = 537
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1776.015625000000000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 17
        Top = 563
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1862.005208333330000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 17
        Top = 589
        Width = 460
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          1947.994791666670000000
          1521.354166666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 17
        Top = 614
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          2030.677083333330000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 17
        Top = 639
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          2113.359375000000000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel101: TQRLabel
        Left = 65
        Top = 519
        Width = 304
        Height = 14
        Size.Values = (
          46.302083333333300000
          214.973958333333000000
          1716.484375000000000000
          1005.416666666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51452#49324#51228' '#52376#48169#45236#50669' ( '#50896#45236#51312#51228#9633'   '#50896#50808#52376#48169#9633' )'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape40: TQRShape
        Left = 319
        Top = 538
        Width = 1
        Height = 102
        Size.Values = (
          337.343750000000000000
          1055.026041666670000000
          1779.322916666670000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 369
        Top = 538
        Width = 1
        Height = 77
        Size.Values = (
          254.661458333333000000
          1220.390625000000000000
          1779.322916666670000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 423
        Top = 538
        Width = 1
        Height = 77
        Size.Values = (
          254.661458333333000000
          1398.984375000000000000
          1779.322916666670000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel102: TQRLabel
        Left = 21
        Top = 621
        Width = 293
        Height = 14
        Size.Values = (
          46.302083333333300000
          69.453125000000000000
          2053.828125000000000000
          969.036458333334000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50857#44592#44036' : '#44368#48512#51068#47196#48512#53552' (     ) '#51068#44036
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 163
        Top = 620
        Width = 18
        Height = 14
        Size.Values = (
          46.302083333333300000
          539.088541666667000000
          2050.520833333330000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel103: TQRLabel
        Left = 329
        Top = 621
        Width = 229
        Height = 14
        Size.Values = (
          46.302083333333300000
          1088.098958333330000000
          2053.828125000000000000
          757.369791666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50857#44592#44036#45236#50640' '#50557#44397#50640' '#51228#52636#54616#50668#50556' '#54633#45768#45796'.'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape43: TQRShape
        Left = 45
        Top = 692
        Width = 432
        Height = 1
        Size.Values = (
          3.307291666666670000
          148.828125000000000000
          2288.645833333330000000
          1428.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 17
        Top = 666
        Width = 543
        Height = 1
        Size.Values = (
          3.307291666666670000
          56.223958333333300000
          2202.656250000000000000
          1795.859375000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 45
        Top = 721
        Width = 433
        Height = 1
        Size.Values = (
          3.307291666666670000
          148.828125000000000000
          2384.557291666670000000
          1432.057291666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 45
        Top = 748
        Width = 433
        Height = 1
        Size.Values = (
          3.307291666666670000
          148.828125000000000000
          2473.854166666670000000
          1432.057291666670000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 477
        Top = 640
        Width = 1
        Height = 136
        Size.Values = (
          449.791666666667000000
          1577.578125000000000000
          2116.666666666670000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel104: TQRLabel
        Left = 480
        Top = 644
        Width = 79
        Height = 10
        Size.Values = (
          33.072916666666700000
          1587.500000000000000000
          2129.895833333330000000
          261.276041666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #52376#48169#51032#48320#44221','#49688#51221','#54869#51064
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel105: TQRLabel
        Left = 480
        Top = 654
        Width = 79
        Height = 10
        Size.Values = (
          33.072916666666700000
          1587.500000000000000000
          2162.968750000000000000
          261.276041666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #45824#52404#49884' '#44536#45236#50857#46321
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 7
      end
      object QRLabel106: TQRLabel
        Left = 76
        Top = 647
        Width = 329
        Height = 14
        Size.Values = (
          46.302083333333300000
          251.354166666667000000
          2139.817708333330000000
          1088.098958333330000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51032' '#50557' '#54408' '#51312' '#51228' '#45236' '#50669
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #48148#53461
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRShape48: TQRShape
        Left = 44
        Top = 667
        Width = 1
        Height = 110
        Size.Values = (
          363.802083333333000000
          145.520833333333000000
          2205.963541666670000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel107: TQRLabel
        Left = 22
        Top = 689
        Width = 18
        Height = 14
        Size.Values = (
          46.302083333333300000
          72.760416666666700000
          2278.723958333330000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51312
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel108: TQRLabel
        Left = 22
        Top = 706
        Width = 18
        Height = 14
        Size.Values = (
          46.302083333333300000
          72.760416666666700000
          2334.947916666670000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51228
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel109: TQRLabel
        Left = 22
        Top = 723
        Width = 18
        Height = 14
        Size.Values = (
          46.302083333333300000
          72.760416666666700000
          2391.171875000000000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #45236
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel110: TQRLabel
        Left = 22
        Top = 740
        Width = 18
        Height = 14
        Size.Values = (
          46.302083333333300000
          72.760416666666700000
          2447.395833333330000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #50669
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRShape49: TQRShape
        Left = 149
        Top = 667
        Width = 1
        Height = 110
        Size.Values = (
          363.802083333333000000
          492.786458333333000000
          2205.963541666670000000
          3.307291666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel111: TQRLabel
        Left = 53
        Top = 674
        Width = 92
        Height = 14
        Size.Values = (
          46.302083333333300000
          175.286458333333000000
          2229.114583333330000000
          304.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51312#51228#44592#44288#51032#47749#52845
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel112: TQRLabel
        Left = 53
        Top = 701
        Width = 92
        Height = 14
        Size.Values = (
          46.302083333333300000
          175.286458333333000000
          2318.411458333330000000
          304.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51312#51228#50557#49324' '#49457#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel113: TQRLabel
        Left = 52
        Top = 729
        Width = 96
        Height = 14
        Size.Values = (
          46.302083333333300000
          171.979166666667000000
          2411.015625000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51312#51228#47049'('#51312#51228#51068#49688')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel114: TQRLabel
        Left = 53
        Top = 755
        Width = 92
        Height = 14
        Size.Values = (
          46.302083333333300000
          175.286458333333000000
          2497.005208333330000000
          304.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51312#51228#50672#50900#51068
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 379
        Top = 701
        Width = 92
        Height = 14
        Size.Values = (
          46.302083333333300000
          1253.463541666670000000
          2318.411458333330000000
          304.270833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '('#49436#47749#46608#45716#45216#51064')'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 23
        Top = 113
        Width = 9
        Height = 10
        Size.Values = (
          33.072916666666700000
          76.067708333333300000
          373.723958333333000000
          29.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel56: TQRLabel
        Left = 38
        Top = 113
        Width = 46
        Height = 13
        Size.Values = (
          42.994791666666700000
          125.677083333333000000
          373.723958333333000000
          152.135416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51032#47308#48372#54744
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel115: TQRLabel
        Left = 84
        Top = 110
        Width = 18
        Height = 17
        Size.Values = (
          56.223958333333300000
          277.812500000000000000
          363.802083333333000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9633
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel116: TQRLabel
        Left = 88
        Top = 113
        Width = 9
        Height = 10
        Size.Values = (
          33.072916666666700000
          291.041666666667000000
          373.723958333333000000
          29.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel117: TQRLabel
        Left = 104
        Top = 113
        Width = 46
        Height = 13
        Size.Values = (
          42.994791666666700000
          343.958333333333000000
          373.723958333333000000
          152.135416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51032#47308#48372#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel118: TQRLabel
        Left = 156
        Top = 110
        Width = 18
        Height = 17
        Size.Values = (
          56.223958333333300000
          515.937500000000000000
          363.802083333333000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9633
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel119: TQRLabel
        Left = 175
        Top = 113
        Width = 46
        Height = 13
        Size.Values = (
          42.994791666666700000
          578.776041666667000000
          373.723958333333000000
          152.135416666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #49328#51116#48372#54744
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel120: TQRLabel
        Left = 160
        Top = 113
        Width = 9
        Height = 10
        Size.Values = (
          33.072916666666700000
          529.166666666667000000
          373.723958333333000000
          29.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel121: TQRLabel
        Left = 222
        Top = 110
        Width = 18
        Height = 17
        Size.Values = (
          56.223958333333300000
          734.218750000000000000
          363.802083333333000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9633
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel122: TQRLabel
        Left = 242
        Top = 113
        Width = 57
        Height = 13
        Size.Values = (
          42.994791666666700000
          800.364583333333000000
          373.723958333333000000
          188.515625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #51088#46041#52264#48372#54744
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel123: TQRLabel
        Left = 226
        Top = 113
        Width = 9
        Height = 10
        Size.Values = (
          33.072916666666700000
          747.447916666667000000
          373.723958333333000000
          29.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel124: TQRLabel
        Left = 299
        Top = 110
        Width = 18
        Height = 17
        Size.Values = (
          56.223958333333300000
          988.880208333334000000
          363.802083333333000000
          59.531250000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #9633
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel125: TQRLabel
        Left = 319
        Top = 113
        Width = 52
        Height = 13
        Size.Values = (
          42.994791666666700000
          1055.026041666670000000
          373.723958333333000000
          171.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #44592#53440'( )'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel126: TQRLabel
        Left = 303
        Top = 113
        Width = 9
        Height = 10
        Size.Values = (
          33.072916666666700000
          1002.109375000000000000
          373.723958333333000000
          29.765625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRRichText1: TQRRichText
        Left = 483
        Top = 328
        Width = 73
        Height = 156
        Size.Values = (
          515.937500000000000000
          1597.421875000000000000
          1084.791666666670000000
          241.432291666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HiresExport = False
        Transparent = False
        YIncrement = 50
      end
      object QRRichText2: TQRRichText
        Left = 483
        Top = 516
        Width = 75
        Height = 95
        Size.Values = (
          314.192708333333000000
          1597.421875000000000000
          1706.562500000000000000
          248.046875000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461#52404
        Font.Style = []
        HiresExport = False
        Transparent = False
        YIncrement = 50
      end
      object QRLabel127: TQRLabel
        Left = 21
        Top = 115
        Width = 14
        Height = 13
        Size.Values = (
          42.994791666666700000
          69.453125000000000000
          380.338541666667000000
          46.302083333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #9632
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel128: TQRLabel
        Left = 283
        Top = 519
        Width = 14
        Height = 13
        Size.Values = (
          42.994791666666700000
          935.963541666667000000
          1716.484375000000000000
          46.302083333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #9632
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 11
      end
      object QRLabel129: TQRLabel
        Left = 16
        Top = 42
        Width = 49
        Height = 13
        Size.Values = (
          42.994791666666700000
          52.916666666666700000
          138.906250000000000000
          162.057291666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #44032#51077#51088#47749': '
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel130: TQRLabel
        Left = 128
        Top = 42
        Width = 57
        Height = 13
        Size.Values = (
          42.994791666666700000
          423.333333333333000000
          138.906250000000000000
          188.515625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #49324#50629#51109#44592#54840': '
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel131: TQRLabel
        Left = 256
        Top = 42
        Width = 41
        Height = 13
        Size.Values = (
          42.994791666666700000
          846.666666666667000000
          138.906250000000000000
          135.598958333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #51613#48264#54840':'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel132: TQRLabel
        Left = 64
        Top = 42
        Width = 49
        Height = 13
        Size.Values = (
          42.994791666666700000
          211.666666666667000000
          138.906250000000000000
          162.057291666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel132'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel133: TQRLabel
        Left = 184
        Top = 42
        Width = 57
        Height = 13
        Size.Values = (
          42.994791666666700000
          608.541666666667000000
          138.906250000000000000
          188.515625000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel133'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel134: TQRLabel
        Left = 296
        Top = 42
        Width = 113
        Height = 13
        Size.Values = (
          42.994791666666700000
          978.958333333333000000
          138.906250000000000000
          373.723958333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'QRLabel134'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #48148#53461
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
end
