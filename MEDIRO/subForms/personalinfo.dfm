object personalinfo_f: Tpersonalinfo_f
  Left = 293
  Top = 59
  ActiveControl = pnlSign
  BorderIcons = [biSystemMenu]
  Caption = 'personalinfo_f'
  ClientHeight = 755
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = #44060#51064#51221#48372' '#49688#51665' '#51060#50857#50640' '#44288#54620' '#46041#51032#49436
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #49352#44404#47548
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 698
    Width = 677
    Height = 57
    Align = alBottom
    TabOrder = 1
    object btnPrint: TAdvGlowButton
      Left = 335
      Top = 5
      Width = 100
      Height = 41
      AntiAlias = aaNone
      Caption = #52636#47141
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnPrintClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnClose: TAdvGlowButton
      Left = 555
      Top = 5
      Width = 100
      Height = 41
      AntiAlias = aaNone
      Caption = #45803#44592
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCloseClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnSave: TAdvGlowButton
      Left = 445
      Top = 5
      Width = 100
      Height = 41
      AntiAlias = aaNone
      Caption = #51200#51109
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnSaveClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnSign: TAdvGlowButton
      Left = 215
      Top = 5
      Width = 111
      Height = 41
      AntiAlias = aaNone
      Caption = #48376#51064' '#51204#51088#49436#47749
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnSignClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnParentSign: TAdvGlowButton
      Left = 5
      Top = 5
      Width = 180
      Height = 41
      AntiAlias = aaNone
      Caption = #48277#51221#45824#47532#51064' '#51204#51088#49436#47749
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btnParentSignClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 41
    Width = 677
    Height = 657
    VertScrollBar.Position = 375
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 3
      Top = -377
      Width = 650
      Height = 733
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Image1: TImage
        Left = 37
        Top = 17
        Width = 577
        Height = 612
        AutoSize = True
        Center = True
      end
      object Label1: TLabel
        Left = 153
        Top = 675
        Width = 45
        Height = 15
        Caption = #49888#52397#51064
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 153
        Top = 700
        Width = 90
        Height = 15
        Caption = #51452#48124#46321#47197#48264#54840
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 154
        Top = 650
        Width = 60
        Height = 15
        Caption = #51089#49457#51068#51088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
      end
      object edtDate: TEdit
        Left = 250
        Top = 645
        Width = 180
        Height = 21
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object edtName: TEdit
        Left = 250
        Top = 670
        Width = 180
        Height = 21
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object edtJumin: TEdit
        Left = 250
        Top = 695
        Width = 180
        Height = 21
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object pnlSign: TPanel
        Left = 433
        Top = 635
        Width = 181
        Height = 91
        BevelOuter = bvNone
        Caption = #49436#47749' '#46608#45716' ('#51064')'
        Color = clWhite
        TabOrder = 3
        object Image2: TImage
          Left = 0
          Top = 0
          Width = 181
          Height = 91
          Align = alClient
          Center = True
          Proportional = True
          Stretch = True
          ExplicitTop = 4
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 619
      Width = 660
      Height = 38
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object lblSangho: TLabel
        Left = 0
        Top = 16
        Width = 660
        Height = 22
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = #44480#54616
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel4: TPanel
      Left = 5
      Top = 362
      Width = 650
      Height = 257
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 14994366
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object Label4: TLabel
        Left = 40
        Top = 50
        Width = 501
        Height = 41
        AutoSize = False
        Caption = 
          ' 2001'#45380' 7'#50900' '#44060#51221#46108' '#51221#48372#53685#49888#47581' '#51060#50857#52489#51652' '#48143' '#51221#48372#48372#54840#50640' '#44288#54620' '#48277#47456#50640' '#46384#47476#47732' '#47564'14'#49464' '#48120#47564' '#50612#47536#51060#46308#51032' '#44060#51064#51221#48372#47484' ' +
          #49688#51665#54616#47140#47732' '#48512#47784'('#46608#45716' '#48277#51221#45824#47532#51064')'#51032' '#46041#51032#44032' '#51080#50612#50556' '#54633#45768#45796'.'#13#10' '#51088#45376#51032' '#44060#51064#51221#48372#47484' '#48372#54840#54616#44592' '#50948#54620' '#51208#52264#51064' '#47564#53372' '#54801#51312#54616#50668 +
          ' '#51452#49884#44592' '#48148#46989#45768#45796'.'
        WordWrap = True
      end
      object Label5: TLabel
        Left = 40
        Top = 15
        Width = 241
        Height = 20
        AutoSize = False
        Caption = #48277#51221#45824#47532#51064' '#46041#51032#49436
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 40
        Top = 105
        Width = 90
        Height = 13
        AutoSize = False
        Caption = #48277#51221#45824#47532#51064' '#49457#47749':'
      end
      object Label7: TLabel
        Left = 275
        Top = 105
        Width = 51
        Height = 13
        AutoSize = False
        Caption = #48277#51201#44288#44228':'
      end
      object Label8: TLabel
        Left = 40
        Top = 130
        Width = 78
        Height = 13
        AutoSize = False
        Caption = #51452#48124#46321#47197' '#48264#54840':'
      end
      object Label9: TLabel
        Left = 275
        Top = 130
        Width = 39
        Height = 13
        AutoSize = False
        Caption = #50672#46973#52376':'
      end
      object Label10: TLabel
        Left = 40
        Top = 160
        Width = 381
        Height = 13
        AutoSize = False
        Caption = #48277#51221#45824#47532#51064#51004#47196#49436' '#50948' '#52397#49548#45380#51032' '#44060#51064#51221#48372#49688#51665' '#51060#50857#50640' '#44288#54616#50668' '#46041#51032#54633#45768#45796'.'
      end
      object Label11: TLabel
        Left = 215
        Top = 185
        Width = 102
        Height = 13
        AutoSize = False
        Caption = '20   '#45380'        '#50900'      '#51068
      end
      object Label12: TLabel
        Left = 215
        Top = 215
        Width = 63
        Height = 13
        AutoSize = False
        Caption = #48277#51221#45824#47532#51064':'
      end
      object Panel5: TPanel
        Left = 433
        Top = 150
        Width = 181
        Height = 91
        BevelOuter = bvNone
        Caption = #49436#47749' '#46608#45716' ('#51064')'
        Color = 14994366
        TabOrder = 0
        object Image3: TImage
          Left = 0
          Top = 0
          Width = 181
          Height = 91
          Align = alClient
          Center = True
          Proportional = True
          Stretch = True
        end
      end
      object edtParentName: TEdit
        Left = 135
        Top = 102
        Width = 126
        Height = 21
        BevelOuter = bvNone
        Color = 14994366
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 20
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object edtparentJumin: TEdit
        Left = 135
        Top = 127
        Width = 126
        Height = 21
        BevelOuter = bvNone
        Color = 14994366
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object edtLawRelation: TEdit
        Left = 330
        Top = 102
        Width = 126
        Height = 21
        BevelOuter = bvNone
        Color = 14994366
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 20
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object edtPhone: TEdit
        Left = 330
        Top = 127
        Width = 126
        Height = 21
        BevelOuter = bvNone
        Color = 14994366
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 15
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object edtParentName2: TEdit
        Left = 285
        Top = 212
        Width = 126
        Height = 21
        BevelOuter = bvNone
        Color = 14994366
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  object frxReport: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #44592#48376#44050
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41716.474924895800000000
    ReportOptions.LastChange = 41716.528805995400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 140
    Top = 6
    Datasets = <>
    Variables = <>
    Style = <>
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
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Top = 79.370130000000000000
        Width = 721.890230000000000000
        Height = 729.449290000000000000
        Frame.Typ = []
        Stretched = False
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture2: TfrxPictureView
        AllowVectorExport = True
        Left = 480.000310000000000000
        Top = 857.953310000000000000
        Width = 170.078850000000000000
        Height = 98.267780000000000000
        Frame.Typ = []
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 503.937333330000000000
        Top = 902.047826670000000000
        Width = 113.385826770000000000
        Height = 35.275613330000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '')
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 128.504020000000000000
        Top = 7.559060000000000000
        Width = 430.866420000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 219.212740000000000000
        Top = 994.016390000000000000
        Width = 442.099110000000000000
        Height = 41.574830000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -23
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[aSangho]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 170.078850000000000000
        Top = 805.039890000000000000
        Width = 442.099110000000000000
        Height = 41.574830000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -23
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[aDate]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 166.299320000000000000
        Top = 933.543910000000000000
        Width = 442.099110000000000000
        Height = 41.574830000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -17
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[aJumin]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 170.078850000000000000
        Top = 876.850960000000000000
        Width = 442.099110000000000000
        Height = 41.574830000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = -2147483640
        Font.Height = -17
        Font.Name = #44404#47548
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[aName]')
        ParentFont = False
      end
    end
  end
end
