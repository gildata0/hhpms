object RyeyakPrt_f: TRyeyakPrt_f
  Left = 180
  Top = 243
  Caption = #50724#45720' '#50696#50557#54788#54889' '#51064#49604
  ClientHeight = 568
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 10
    Top = 10
    Width = 794
    Height = 1123
    ShowingPreview = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
      Top = 72
      Width = 718
      Height = 21
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel7: TQRLabel
        Left = 275
        Top = 4
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          727.604166666666800000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #49457#47749
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 129
        Top = 4
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          341.312500000000000000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #49884#44036
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 442
        Top = 4
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          1169.458333333333000000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #45236#50857
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 356
        Top = 4
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          941.916666666666800000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #51204#54868
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 193
        Top = 4
        Width = 49
        Height = 14
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          10.583333333333330000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #52320#53944#48264#54840
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 30
        Top = 4
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          79.375000000000000000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #51068#51088
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 689
        Top = 4
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          1822.979166666667000000
          10.583333333333330000
          66.145833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #49828#52884
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 93
      Width = 718
      Height = 17
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object lblName: TQRLabel
        Left = 275
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          727.604166666666800000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblName'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lblTime: TQRLabel
        Left = 129
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          341.312500000000000000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblTime'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lblRemark: TQRLabel
        Left = 442
        Top = 1
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          1169.458333333333000000
          2.645833333333333000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lblTel: TQRLabel
        Left = 356
        Top = 1
        Width = 37
        Height = 13
        Size.Values = (
          34.395833333333330000
          941.916666666666800000
          2.645833333333333000
          97.895833333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblTel'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lblCode: TQRLabel
        Left = 193
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          510.645833333333300000
          2.645833333333333000
          113.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblCode'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Left = 0
        Top = 0
        Width = 26
        Height = 13
        Size.Values = (
          34.395833333333300000
          0.000000000000000000
          0.000000000000000000
          68.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Text = ''
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 9
      end
      object lblDate: TQRLabel
        Left = 30
        Top = 1
        Width = 43
        Height = 13
        Size.Values = (
          34.395833333333330000
          79.375000000000000000
          2.645833333333333000
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
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 690
        Top = 1
        Width = 49
        Height = 13
        Size.Values = (
          34.395833333333330000
          1825.625000000000000000
          2.645833333333333000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'QRLabel1'
        Color = clWhite
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
      Width = 718
      Height = 34
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333320000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lblSubject: TQRLabel
        Left = 303
        Top = 9
        Width = 112
        Height = 17
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          23.812500000000000000
          296.333333333333400000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = True
        Caption = #50724#45720' '#50696#50557#54788#54889
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
      object LblScheduleDay: TQRLabel
        Left = 633
        Top = 15
        Width = 85
        Height = 13
        Size.Values = (
          34.395833333333340000
          1674.812500000000000000
          39.687500000000000000
          224.895833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = True
        Caption = 'LblScheduleDay'
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
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 110
      Width = 718
      Height = 16
      Frame.DrawTop = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object LblHospName: TQRLabel
        Left = 651
        Top = 2
        Width = 67
        Height = 13
        Size.Values = (
          34.395833333333340000
          1722.437500000000000000
          5.291666666666667000
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
        Font.Name = #48148#53461#52404
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
        Top = 2
        Width = 55
        Height = 13
        Size.Values = (
          34.395833333333340000
          0.000000000000000000
          5.291666666666667000
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
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 9
      end
    end
  end
end
