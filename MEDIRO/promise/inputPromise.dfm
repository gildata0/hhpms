object inputPromise_f: TinputPromise_f
  Left = 382
  Top = 136
  ActiveControl = edtname
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'inputPromise_f'
  ClientHeight = 602
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 560
    Width = 766
    Height = 42
    Align = alBottom
    TabOrder = 0
    Visible = False
    DesignSize = (
      766
      42)
    object lblStat: TLabel
      Left = 333
      Top = 15
      Width = 41
      Height = 13
      Caption = 'lblStat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #46027#50880
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object AdvOfficeRadioGroup1: TAdvOfficeRadioGroup
      Left = 469
      Top = 1
      Width = 296
      Height = 40
      BorderStyle = bsNone
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Version = '1.5.0.9'
      Align = alRight
      ParentBackground = False
      ParentCtl3D = True
      TabOrder = 0
      Visible = False
      Columns = 4
      Items.Strings = (
        #51221#49884
        #48736#47492
        #45734#51020
        #45817#51068)
      ButtonVertAlign = tlBottom
      Ellipsis = False
    end
    object btnNewon: TAdvGlowButton
      Left = 381
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45236#50896#52376#47532
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      Visible = False
      OnClick = btnNewonClick
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
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 560
    Align = alClient
    TabOrder = 1
    object pnlYeyakInfo: TAdvPanel
      Left = 1
      Top = 1
      Width = 764
      Height = 400
      Align = alTop
      BevelOuter = bvNone
      Color = 16643051
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #50696#50557' '#46321#47197' '#51221#48372
      Caption.TopIndent = 3
      Caption.Visible = True
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = 13542013
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = 7485192
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 16575452
      StatusBar.ColorTo = 16571329
      StatusBar.GradientDirection = gdVertical
      Text = ''
      DesignSize = (
        764
        400)
      FullHeight = 200
      object lblcphone: TLabel
        Left = 702
        Top = 32
        Width = 46
        Height = 13
        Caption = 'lblcphone'
        Visible = False
      end
      object EllipsLabel2: TLabel
        Left = 3
        Top = 205
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #50696#50557#51068#51088
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel3: TLabel
        Left = 224
        Top = 272
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49884#51089#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel4: TLabel
        Left = 9
        Top = 30
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #54872#51088#51060#47492
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel5: TLabel
        Left = 9
        Top = 54
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #52264#53944#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel6: TLabel
        Left = 231
        Top = 54
        Width = 96
        Height = 13
        AutoSize = False
        Caption = #50696#50557' '#49696#49885' '#46321#47197
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblAppointNo: TLabel
        Left = 704
        Top = 20
        Width = 60
        Height = 17
        AutoSize = False
        Caption = #50696#50557#48264#54840
        FocusControl = cbTel
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object EllipsLabel10: TLabel
        Left = 7
        Top = 119
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #45812#45817#51032
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel11: TLabel
        Left = 9
        Top = 78
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #55092#45824#51204#54868
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object thdytlrks: TLabel
        Left = 224
        Top = 305
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49548#50836#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel12: TLabel
        Left = 224
        Top = 338
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #51333#47308#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel13: TLabel
        Left = 643
        Top = 10
        Width = 30
        Height = 13
        AutoSize = False
        Caption = #51204
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object EllipsLabel8: TLabel
        Left = 617
        Top = 186
        Width = 40
        Height = 13
        AutoSize = False
        Caption = #51665#51204#54868
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object EllipsLabel14: TLabel
        Left = 570
        Top = 311
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #51452#48124#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object EllipsLabel15: TLabel
        Left = 565
        Top = 32
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #47700#47784#46321#47197#51088
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel7: TLabel
        Left = 585
        Top = 266
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #44396#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object lblChairName: TLabel
        Left = 283
        Top = 265
        Width = 68
        Height = 13
        AutoSize = False
        Color = 8453888
        Font.Charset = ANSI_CHARSET
        Font.Color = clPurple
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object EllipsLabel9: TLabel
        Left = 491
        Top = 33
        Width = 96
        Height = 13
        AutoSize = False
        Caption = #47700#47784' '#46321#47197
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel16: TLabel
        Left = 228
        Top = 80
        Width = 25
        Height = 13
        AutoSize = False
        Caption = #49353
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel17: TLabel
        Left = 343
        Top = 80
        Width = 25
        Height = 13
        AutoSize = False
        Caption = #53356#44592
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel18: TLabel
        Left = -2
        Top = 100
        Width = 61
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #51652#47308#49892
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object pnlReferHospInfo: TPanel
        AlignWithMargins = True
        Left = 9
        Top = 138
        Width = 200
        Height = 61
        BevelOuter = bvNone
        Caption = 'Panel4'
        Color = 16771773
        ParentBackground = False
        ShowCaption = False
        TabOrder = 56
        DesignSize = (
          200
          61)
        object EllipsLabel44: TLabel
          Left = -2
          Top = 7
          Width = 52
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = #51032#47280#48337#50896
          Font.Charset = ANSI_CHARSET
          Font.Color = 3815994
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object EllipsLabel46: TLabel
          Left = -2
          Top = 35
          Width = 52
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = ' '#45812#45817#51032
          Font.Charset = ANSI_CHARSET
          Font.Color = 3815994
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object ProgressBarSoge: TAdvProgressBar
          Left = -7
          Top = 56
          Width = 207
          Height = 5
          BorderColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Level0Color = clWhite
          Level0ColorTo = 14811105
          Level1ColorTo = 13303807
          Level2Color = 5483007
          Level2ColorTo = 11064319
          Level3ColorTo = 13290239
          Level1Perc = 70
          Level2Perc = 90
          Position = 50
          Rounded = False
          ShowBorder = True
          ShowPercentage = False
          ShowPosition = False
          Steps = 20
          Version = '1.3.1.0'
        end
        object edtReferHospCode: TAdvEdit
          AlignWithMargins = True
          Left = 274
          Top = 4
          Width = 0
          Height = 25
          Margins.Right = 8
          DefaultHandling = True
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
          Anchors = [akLeft, akTop, akRight]
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'edtReferHospCode'
          Visible = True
          Version = '3.4.9.0'
        end
        object edtreferHospName: TAdvEdit
          AlignWithMargins = True
          Left = 56
          Top = 4
          Width = 138
          Height = 25
          DefaultHandling = True
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
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'edtreferHospName'
          Visible = True
          OnKeyPress = edtreferHospNameKeyPress
          Version = '3.4.9.0'
        end
        object btnReferHospEdit: TButton
          Left = -200
          Top = 32
          Width = 49
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #49688#51221
          TabOrder = 3
        end
        object edtRHosp: TEdit
          Left = 331
          Top = 0
          Width = 121
          Height = 21
          TabOrder = 4
          Text = 'edtRHosp'
          Visible = False
        end
        object edtRHospID: TEdit
          Left = 215
          Top = 10
          Width = 121
          Height = 21
          TabOrder = 5
          Text = 'edtRHospID'
          Visible = False
        end
        object cbReferHospDoc: TComboBox
          AlignWithMargins = True
          Left = 56
          Top = 32
          Width = 138
          Height = 25
          Margins.Right = 8
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'cbReferHospDoc'
        end
        object Edit1: TEdit
          Left = 272
          Top = 32
          Width = 81
          Height = 21
          TabOrder = 6
          Text = 'Edit1'
          Visible = False
        end
      end
      object cbDoc2: TComboBox
        Left = 489
        Top = 374
        Width = 70
        Height = 20
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 31
        Visible = False
        OnChange = cbDoc2Change
      end
      object DateTimePicker1: TDateTimePicker
        Left = 61
        Top = 203
        Width = 80
        Height = 20
        Date = 40065.000000000000000000
        Time = 0.421287615739856800
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object edtname: TAdvEdit
        Left = 65
        Top = 26
        Width = 81
        Height = 21
        BorderColor = clTeal
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
        FlatLineColor = 10329501
        FocusColor = 16381427
        SoftBorder = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Persistence.Enable = True
        Persistence.Key = '.\db.ini'
        Persistence.Section = 'promiseTemp'
        BevelInner = bvNone
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 1
        Text = 'edtname'
        Visible = True
        OnClick = edtnameClick
        OnKeyPress = edtnameKeyPress
        OnMouseDown = edtnameMouseDown
        Version = '3.4.9.0'
      end
      object edtChart: TAdvEdit
        Left = 65
        Top = 50
        Width = 138
        Height = 21
        BorderColor = clTeal
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
        FlatLineColor = 10329501
        FocusColor = 16381427
        SoftBorder = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Persistence.Enable = True
        Persistence.Key = '.\db.ini'
        Persistence.Section = 'promiseTemp'
        BevelInner = bvNone
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = 'edtChart'
        Visible = True
        OnKeyPress = edtChartKeyPress
        Version = '3.4.9.0'
      end
      object yList: TListBox
        Left = 232
        Top = 148
        Width = 244
        Height = 114
        BevelKind = bkSoft
        BorderStyle = bsNone
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 12
        Items.Strings = (
          #48156#52824
          #51076#54540#46976#53944
          '1st OP.'
          '2nd OP.'
          'resin')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnDblClick = yListDblClick
      end
      object edtTel: TAdvEdit
        Left = 65
        Top = 74
        Width = 138
        Height = 21
        BorderColor = clTeal
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
        FlatLineColor = 10329501
        FocusColor = 16381427
        SoftBorder = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Persistence.Enable = True
        Persistence.Key = '.\db.ini'
        Persistence.Section = 'promiseTemp'
        BevelInner = bvNone
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = 'edtTel'
        Visible = True
        OnChange = edtTelChange
        Version = '3.4.9.0'
      end
      object cbGugan: TComboBox
        Left = 641
        Top = 262
        Width = 59
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = 3618615
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 6
        Text = '1'
        Visible = False
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20')
      end
      object cbSoyo: TComboBox
        Left = 283
        Top = 300
        Width = 85
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 7
        OnChange = cbSoyoChange
      end
      object cbTeam: TComboBox
        Left = 200
        Top = 123
        Width = 38
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        ParentFont = False
        TabOrder = 8
        Text = '1'
        Visible = False
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
      object cbJundam: TComboBox
        Left = 491
        Top = 348
        Width = 67
        Height = 20
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 9
        Visible = False
      end
      object cbAmin: TComboBox
        Left = 391
        Top = 300
        Width = 51
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        ParentFont = False
        TabOrder = 11
        Text = '1'
        Visible = False
        Items.Strings = (
          '1'
          '5'
          '10'
          '15'
          '30'
          '45')
      end
      object edtpass: TAdvEdit
        Left = 281
        Top = 366
        Width = 40
        Height = 21
        Hint = #39'11'#39'+'#50724#45720' '#45216#51676
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
        FlatLineColor = 10329501
        FocusColor = 16381427
        SoftBorder = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BevelInner = bvNone
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 12
        Text = 'edtpass'
        Visible = True
        OnChange = edtpassChange
        Version = '3.4.9.0'
      end
      object memSulsik: TMemo
        Left = 231
        Top = 102
        Width = 245
        Height = 40
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memSulsik'
          '1'
          '2'
          '3')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        OnKeyDown = memSulsikKeyDown
      end
      object ComboBox1: TComboBox
        Left = 586
        Top = 7
        Width = 51
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        ParentFont = False
        TabOrder = 14
        Text = #48516
        Visible = False
        Items.Strings = (
          #48516
          #49884#44036
          #51068)
      end
      object cbEdit: TAdvOfficeCheckBox
        Left = 233
        Top = 366
        Width = 42
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #49352#44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        Alignment = taLeftJustify
        Caption = #51104#44552
        ReturnIsTab = False
        Version = '1.5.0.9'
      end
      object cbsTime: TAdvMaskEdit
        Left = 283
        Top = 268
        Width = 85
        Height = 26
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        Ctl3D = False
        DefaultHandling = True
        DoubleBuffered = False
        Enabled = True
        EditMask = '!90:00;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 5
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 17
        Text = '  :  '
        Visible = True
        AutoFocus = False
        Flat = False
        FlatLineColor = clBlack
        FlatParentColor = True
        ShowModified = False
        FocusColor = clWindow
        FocusBorder = False
        FocusFontColor = clBlack
        LabelAlwaysEnabled = False
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ModifiedColor = clRed
        SelectFirstChar = False
        SoftBorder = True
        Version = '3.4.9.0'
      end
      object cbfTime: TAdvMaskEdit
        Left = 283
        Top = 334
        Width = 85
        Height = 26
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWindow
        Ctl3D = False
        DefaultHandling = True
        DoubleBuffered = False
        Enabled = True
        EditMask = '!90:00;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 5
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        Text = '  :  '
        Visible = True
        AutoFocus = False
        Flat = False
        FlatLineColor = clBlack
        FlatParentColor = True
        ShowModified = False
        FocusColor = clWindow
        FocusBorder = False
        FocusFontColor = clBlack
        LabelAlwaysEnabled = False
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ModifiedColor = clRed
        SelectFirstChar = False
        Version = '3.4.9.0'
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 401
        Top = 266
        Width = 75
        Height = 28
        AntiAlias = aaNone
        Caption = #49696#49885' '#52628#44032
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 19
        OnClick = AdvGlowButton1Click
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
      object pnlColor: TPanel
        Left = 232
        Top = 26
        Width = 28
        Height = 21
        Cursor = crHandPoint
        Caption = 'S'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 20
        OnClick = pnlColorClick
      end
      object pnlCol1: TPanel
        Left = 261
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 21
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol2: TPanel
        Left = 283
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '2'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 22
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol3: TPanel
        Left = 304
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '3'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 23
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol4: TPanel
        Left = 326
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '4'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 24
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol5: TPanel
        Left = 348
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '5'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 25
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol6: TPanel
        Left = 369
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '6'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 26
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol7: TPanel
        Left = 391
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '7'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 27
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object edtLock: TEdit
        Left = 327
        Top = 366
        Width = 52
        Height = 19
        BorderStyle = bsNone
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 28
        Text = 'edtLock'
      end
      object edtTel2: TAdvEdit
        Left = 663
        Top = 183
        Width = 114
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
        FlatLineColor = 10329501
        FocusColor = 16381427
        SoftBorder = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BevelInner = bvNone
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 29
        Text = 'edtTel'
        Visible = False
        Version = '3.4.9.0'
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 149
        Top = 25
        Width = 26
        Height = 21
        Hint = #54872#51088#51060#47492' '#49352#47196
        AntiAlias = aaNone
        ImageIndex = 15
        Images = ImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
        OnClick = AdvGlowButton2Click
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
      object edtWhisper: TMemo
        Left = 491
        Top = 51
        Width = 263
        Height = 126
        BevelKind = bkSoft
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #46027#50880#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 32
      end
      object edtJumin: TAdvEdit
        Left = 626
        Top = 306
        Width = 138
        Height = 21
        BorderColor = clTeal
        DefaultHandling = True
        EmptyTextStyle = []
        Flat = True
        FlatLineColor = 10329501
        FocusColor = 16381427
        SoftBorder = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BevelInner = bvNone
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        ReadOnly = True
        TabOrder = 33
        Text = 'edtJumin'
        Visible = False
        OnChange = edtTelChange
        Version = '3.4.9.0'
      end
      object cbJundam2: TComboBox
        Left = 626
        Top = 28
        Width = 126
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 35
      end
      object pnlCol8: TPanel
        Left = 412
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '8'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 36
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol9: TPanel
        Left = 434
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '9'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 37
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object pnlCol10: TPanel
        Left = 456
        Top = 26
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Caption = '10'
        Color = 16774387
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = #46027#50880
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 38
        OnDblClick = pnlCol1DblClick
        OnMouseDown = pnlCol1MouseDown
      end
      object DateTimePicker2: TDateTimePicker
        Left = 146
        Top = 203
        Width = 80
        Height = 21
        Date = 41333.000000000000000000
        Time = 0.688137488439679100
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 41
        Visible = False
      end
      object cbBunryu: TComboBox
        Left = 330
        Top = 51
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 42
        OnChange = cbBunryuChange
        Items.Strings = (
          ''
          #44368#51221
          #48372#52384
          #49457#54805
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
      end
      object cbFontColor: TColorBox
        Left = 243
        Top = 74
        Width = 81
        Height = 22
        TabOrder = 44
        OnSelect = cbFontColorSelect
      end
      object cbFontSize: TComboBox
        Left = 369
        Top = 75
        Width = 44
        Height = 21
        Style = csDropDownList
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 45
        Items.Strings = (
          '8'
          '10'
          '12'
          '14'
          '16'
          '18'
          '20'
          '22'
          '24'
          '26'
          '28'
          '30'
          '36'
          '48'
          '72')
      end
      object cbBold: TCheckBox
        Left = 429
        Top = 78
        Width = 46
        Height = 17
        Caption = 'Bold'
        TabOrder = 46
      end
      object cbDoc: TColumnComboBox
        Left = 65
        Top = 119
        Width = 138
        Height = 21
        Color = clWindow
        Version = '1.6.0.0'
        Visible = True
        Columns = <
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end>
        ComboItems = <>
        EditColumn = -1
        EditHeight = 15
        EmptyText = ''
        EmptyTextStyle = []
        DropWidth = 0
        DropHeight = 200
        Enabled = True
        ButtonWidth = 17
        GridLines = False
        ItemIndex = -1
        LookupColumn = 0
        LabelCaption = ''
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        SortColumn = 0
        TabOrder = 47
      end
      object lstPatPhoneList: TListBox
        Left = 611
        Top = -20
        Width = 166
        Height = 46
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 13
        TabOrder = 49
        Visible = False
      end
      object AdvGlowButton3: TAdvGlowButton
        Left = 200
        Top = 25
        Width = 26
        Height = 21
        Hint = #54872#51088#51060#47492' '#51649#51204' '#48373#44396
        AntiAlias = aaNone
        ImageIndex = 5
        Images = ImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 50
        OnClick = AdvGlowButton3Click
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
      object edtTelOR: TEdit
        Left = 643
        Top = 0
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 51
        Text = 'edtTelOR'
        Visible = False
      end
      object AdvGlowButton4: TAdvGlowButton
        Left = 175
        Top = 25
        Width = 26
        Height = 21
        Hint = #54872#51088#51060#47492' '#49688#51221
        AntiAlias = aaNone
        ImageIndex = 14
        Images = ImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 52
        OnClick = AdvGlowButton4Click
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
      object cbTreatRoom: TColumnComboBox
        AlignWithMargins = True
        Left = 65
        Top = 97
        Width = 138
        Height = 21
        ParentCustomHint = False
        Color = clWhite
        Version = '1.6.0.0'
        Visible = True
        BevelInner = bvNone
        BevelOuter = bvNone
        Columns = <
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
          end
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
          end
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            ParentFont = False
          end>
        ComboItems = <>
        EditColumn = -1
        EditHeight = 15
        EmptyText = #51652#47308#49892
        EmptyTextFocused = True
        EmptyTextStyle = []
        DropWidth = 0
        DropHeight = 200
        Enabled = True
        ButtonWidth = 17
        GridLines = False
        ItemIndex = -1
        LookupColumn = 0
        LabelCaption = ''
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentShowHint = False
        ShowHint = False
        SortColumn = 0
        TabOrder = 54
        OnSelect = cbTreatRoomSelect
      end
      object PlannerCalendar1: TPlannerCalendar
        Left = 9
        Top = 224
        Width = 194
        Height = 170
        EventDayColor = clBlack
        EventFont.Charset = ANSI_CHARSET
        EventFont.Color = clWindowText
        EventFont.Height = -16
        EventFont.Name = #47569#51008' '#44256#46357
        EventFont.Style = [fsBold]
        EventMarkerColor = clYellow
        EventMarkerShape = evsCircle
        BackgroundPosition = bpTiled
        BorderWidth = 1
        CaptionColor = clNone
        CaptionTextColor = clWindowText
        DateDownColor = 16246477
        DateHoverColor = 16446182
        DateSelectColor = 16246477
        DateSelectBorderColor = 16246477
        DayFont.Charset = ANSI_CHARSET
        DayFont.Color = clWindowText
        DayFont.Height = -13
        DayFont.Name = #47569#51008' '#44256#46357
        DayFont.Style = []
        EventHints = True
        FocusColor = clHighlight
        HeaderColor = clNone
        InActiveColor = clWhite
        InversColor = clTeal
        LineColor = clGray
        Line3D = False
        Look = lookFlat
        NameOfDays.Monday = #50900
        NameOfDays.Tuesday = #54868
        NameOfDays.Wednesday = #49688
        NameOfDays.Thursday = #47785
        NameOfDays.Friday = #44552
        NameOfDays.Saturday = #53664
        NameOfDays.Sunday = #51068
        NameOfMonths.January = '1'
        NameOfMonths.February = '2'
        NameOfMonths.March = '3'
        NameOfMonths.April = '4'
        NameOfMonths.May = '5'
        NameOfMonths.June = '6'
        NameOfMonths.July = '7'
        NameOfMonths.August = '8'
        NameOfMonths.September = '9'
        NameOfMonths.October = '10'
        NameOfMonths.November = '11'
        NameOfMonths.December = '12'
        NameOfMonths.UseIntlNames = True
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clWindowText
        WeekFont.Height = -11
        WeekFont.Name = 'Tahoma'
        WeekFont.Style = []
        WeekName = 'Wk'
        SelectColor = clTeal
        SelectFontColor = 4473924
        ShowGotoToday = True
        ShowToday = True
        StartDay = 7
        TextColor = clBlack
        TodayFormat = '"'#50724#45720#51008' "YYYY"'#45380'" MM"'#50900' "DD "'#51068'"'
        TodayStyle = tsRaised
        WeekendColor = clRed
        Day = 6
        Month = 5
        Year = 2019
        Font.Charset = ANSI_CHARSET
        Font.Color = 7485192
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 55
        OnDaySelect = PlannerCalendar1DaySelect
        GradientStartColor = clWhite
        GradientEndColor = clWhite
        GradientDirection = gdVertical
        MonthGradientStartColor = 15790320
        MonthGradientEndColor = 15790320
        MonthGradientDirection = gdVertical
        HintPrevYear = #51060#51204' '#54644
        HintPrevMonth = #51060#51204' '#45804
        HintNextMonth = #45796#51020' '#45804
        HintNextYear = #45796#51020' '#54644
        Version = '2.3.2.0'
        TMSStyle = 21
      end
      object cbTel: TCheckBox
        Left = 492
        Top = 261
        Width = 95
        Height = 20
        TabStop = False
        Caption = #51204#54868#49888#54872
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object cbAlret: TCheckBox
        Left = 492
        Top = 235
        Width = 95
        Height = 20
        TabStop = False
        Caption = #51204#54868#50836#52397
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Visible = False
        OnClick = cbAlretClick
      end
      object cbSms: TCheckBox
        Left = 492
        Top = 209
        Width = 210
        Height = 20
        TabStop = False
        Caption = #50696#50557#51068#51204' SMS '#51088#46041#51204#49569
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object AdvOfficeCheckBox1: TCheckBox
        Left = 379
        Top = 360
        Width = 104
        Height = 20
        TabStop = False
        Caption = #47700#47784#47196' '#49324#50857
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 34
      end
      object cbnoSMS: TCheckBox
        Left = 492
        Top = 183
        Width = 113
        Height = 20
        Hint = #49440#53469#46108' '#49353#51060' Red'#51060#47732' '#51088#46041#51004#47196' '#52404#53356' '#46121#45768#45796'.'
        TabStop = False
        Caption = 'SMS'#51204#49569' '#44552#51648
        Color = 16643051
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 43
        OnClick = cbnoSMSClick
      end
      object cbAutoSendSMS: TCheckBox
        Left = 492
        Top = 322
        Width = 165
        Height = 20
        Hint = #50696#50557' '#51200#51109' '#54980' '#48148#47196' SMS'#44032' '#51204#49569#46121#45768#45796'.'
        TabStop = False
        Caption = #51200#51109#54980' '#51593#49884' SMS'#51204#49569
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 48
      end
      object AdvOfficeCheckBox2: TCheckBox
        Left = 492
        Top = 287
        Width = 143
        Height = 20
        TabStop = False
        Caption = 'WEB '#49888#54872
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 53
      end
      object btnSave: TButton
        Left = 564
        Top = 349
        Width = 129
        Height = 45
        Anchors = [akTop, akRight]
        Caption = #51200#51109
        ModalResult = 1
        TabOrder = 39
        TabStop = False
        WordWrap = True
        OnClick = btnSaveClick
      end
      object btnCancel: TButton
        Left = 700
        Top = 349
        Width = 52
        Height = 45
        Anchors = [akTop, akRight]
        Caption = #52712#49548
        TabOrder = 40
        TabStop = False
        WordWrap = True
        OnClick = btnCancelClick
      end
    end
    object pnlYeyakList: TAdvPanel
      Left = 1
      Top = 401
      Width = 764
      Height = 158
      Align = alClient
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.9'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #50696#50557#45236#50669
      Caption.TopIndent = 3
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = 13542013
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = 7485192
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 16575452
      StatusBar.ColorTo = 16571329
      StatusBar.GradientDirection = gdVertical
      Text = ''
      OnCaptionClick = pnlYeyakListCaptionClick
      FullHeight = 200
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 764
        Height = 158
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = #50696#50557#45236#50669
          object grdPromise: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 756
            Height = 130
            Cursor = crDefault
            Align = alClient
            ColCount = 15
            DefaultRowHeight = 21
            DrawingStyle = gdsClassic
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7485192
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu1
            ScrollBars = ssBoth
            ShowHint = True
            TabOrder = 0
            HoverRowCells = [hcNormal, hcSelected]
            OnGetCellColor = grdPromiseGetCellColor
            OnGridHint = grdPromiseGridHint
            OnGridWideHint = grdPromiseGridWideHint
            OfficeHint.Title = #45824#44592#51221#48372
            OfficeHint.Notes.Strings = (
              #45824#44592#49884#44036' '#53364#47533#54616#47732' '#45824#44592#49884#44036' '#50504#48372#51076'.'
              #51217#49688#49884#44036' '#53364#47533#54616#47732' '#51217#49688#49884#44036' '#50504#48372#51076'.'
              #49457#47749' '#53364#47533#54616#47732' '#45824#44592#49884#44036', '#51217#49688#49884#44036' '#48372#51076'.'
              #54872#51088#47484' '#49440#53469#54620' '#54980', '#47560#50864#49828' '#50724#47480#51901' '#48260#53948' '#53364#47533#54616#47732' '
              #50696#50557#51004#47196' '#50734#44592#44144#45208', '#45824#44592' '#51221#48372#47484' '#48148#44992#49688' '#51080#51020'.')
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ColumnHeaders.Strings = (
              ''
              #51068#51088
              #49884#44036
              #50696#50557#45236#50857
              #52376#47532#44208#44284
              'chart'
              'pos'
              'cancel'
              'idn'
              #47700#47784
              #51652#47308#49892
              #45812#45817#51032
              #47700#47784#51077#47141#51088
              #46321#47197#51068
              #48320#44221#51068)
            ControlLook.FixedGradientHoverFrom = 16710648
            ControlLook.FixedGradientHoverTo = 16446189
            ControlLook.FixedGradientHoverMirrorFrom = 16049367
            ControlLook.FixedGradientHoverMirrorTo = 15258305
            ControlLook.FixedGradientDownFrom = 15853789
            ControlLook.FixedGradientDownTo = 15852760
            ControlLook.FixedGradientDownMirrorFrom = 15522767
            ControlLook.FixedGradientDownMirrorTo = 15588559
            ControlLook.FixedGradientDownBorder = 14007466
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
            FixedColWidth = 20
            FixedRowHeight = 22
            FixedRowAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glSoft
            MouseActions.SelectOnRightClick = True
            MouseActions.WheelAction = waScroll
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
            ScrollProportional = True
            ScrollSynch = True
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
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            SortSettings.DefaultFormat = ssAutomatic
            SortSettings.Show = True
            SortSettings.FixedCols = True
            SortSettings.HeaderColorTo = 16579058
            SortSettings.HeaderMirrorColor = 16380385
            SortSettings.HeaderMirrorColorTo = 16182488
            Version = '8.4.4.1'
            ColWidths = (
              20
              68
              41
              140
              35
              12
              12
              9
              16
              88
              51
              48
              72
              64
              64)
            RowHeights = (
              22
              21)
          end
        end
        object TabSheet2: TTabSheet
          Caption = #54801#51652#48337#50896' '#44160#49324#50836#52397' '#45236#50669
          ImageIndex = 1
          inline ReferHospPatListFrame_fr1: TReferHospPatListFrame_fr
            Left = 0
            Top = 0
            Width = 756
            Height = 130
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 756
            ExplicitHeight = 130
            inherited pnlSearch: TPanel
              Width = 756
              ExplicitWidth = 756
              inherited lblDash: TLabel
                Width = 7
                ExplicitWidth = 7
              end
            end
            inherited grdList: TAdvStringGrid
              Width = 756
              Height = 105
              ExplicitWidth = 756
              ExplicitHeight = 105
            end
          end
        end
      end
    end
    object pnlChoiceDate: TAdvPanel
      Left = 394
      Top = 475
      Width = 194
      Height = 127
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      CanMove = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = #51204#54868#50836#52397' '#51068#51088' '#49440#53469
      Caption.Visible = True
      DoubleBuffered = True
      ShowMoveCursor = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 0
      object rgCall: TRadioGroup
        Left = 6
        Top = 20
        Width = 177
        Height = 52
        Columns = 2
        Items.Strings = (
          #45817#51068
          #54616#47336#51204
          #51060#53952#51204
          #44592#53440)
        TabOrder = 0
        OnClick = rgCallClick
      end
      object btnCallConfirm: TAdvGlowButton
        Left = 65
        Top = 102
        Width = 58
        Height = 23
        Caption = #54869#51064
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnCallConfirmClick
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
      object pnlCall: TAdvPanel
        Left = 5
        Top = 74
        Width = 179
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UseDockManager = True
        Visible = False
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.Indent = 0
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 0
        object EllipsLabel1: TLabel
          Left = 10
          Top = 8
          Width = 52
          Height = 13
          AutoSize = False
          Caption = #50836#52397#51068#51088
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dtCall: TDateTimePicker
          Left = 69
          Top = 4
          Width = 88
          Height = 20
          Date = 40065.000000000000000000
          Time = 0.421287615739856800
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = #46027#50880
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object rgMinewon: TRadioGroup
      Left = 222
      Top = 475
      Width = 192
      Height = 64
      Caption = #48120#45236#50896' '#52376#47532
      Columns = 2
      Items.Strings = (
        #50672#46973#50504#46120
        #51116#50696#50557
        'R/C'
        #53440#52824#44284)
      TabOrder = 3
      Visible = False
      OnClick = rgMinewonClick
    end
  end
  object ColorDialog1: TColorDialog
    Left = 502
    Top = 117
  end
  object PopupMenu1: TPopupMenu
    Left = 567
    Top = 116
    object N1: TMenuItem
      Caption = #50696#50557' '#48320#44221
      Hint = #51648#51221#51068#51088#47196' '#50696#50557' '#44032#51256#50724#44592
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #50696#50557' '#52286#44592
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #50696#50557' '#49325#51228
      OnClick = N4Click
    end
  end
  object ImageList3: TImageList
    Left = 636
    Top = 116
    Bitmap = {
      494C010110001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A00ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039393900E7DEDE005A5A5A00ADADAD00D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032323200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039393900DEDEDE00DED6D600E7E7E7005A5A5A00ADADAD00C6C6C600DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      00000E0E0E000E0E0E000E0E0E00DFDFDF00D5D5D500D4D4D400D3D3D300D2D2
      D200D1D1D100D0D0D000FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900D6D6D600D6D6D600DEDED600DEDEDE00E7E7E7005A5A5A00ADADAD00C6C6
      C600DEDEDE000000000000000000000000000000000000000000000000000E0E
      0E0000B93D0000B93D0000B93D0000501900D6D6D600D5D5D500D4D4D400D3D3
      D300D2D2D200D1D1D100FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039393900D6D6
      D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7DE00EFEFEF005A5A5A00ADAD
      AD00C6C6C600DEDEDE0000000000000000000000000000000000000000000E0E
      0E0015E5550012D34D0000B93D0000501900D8D8D800D7D7D700D6D6D600D4D4
      D400D3D3D300D2D2D200FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0039393900A4A0A000A4A0
      A000A4A0A000B5B5B500D6CECE00D6D6D600DEDEDE00DEDEDE00EFEFEF005A5A
      5A00D6D6D600000000000000000000000000000000000E0E0E000E0E0E000E0E
      0E001BE8580012D34D0000B93D00005019000050190000501900D7D7D700D5D5
      D500D4D4D400D3D3D300FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363009498A500C0C0C000C0C0
      C000C0C0C000C0C0C000C6C6C600ADADAD006363630039393900C6C6C600F7F7
      F7005A5A5A00D6D6D60000000000000000000E0E0E000FCE4A000FCE4A000FCE
      4A0021EB5B001BE0550000B93D0000B93D0000B93D0000B93D0000501900D6D6
      D600D5D5D500D4D4D400FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B003C3E57001A255C00191D
      3D00191D3D0042537700D6D6D600B5B5B5007B848C0063636300DEDEDE00EFEF
      EF00F7F7F7005A5A5A00D6D6D600000000000E0E0E00B1FFB1002DF163002AF0
      61002DF163001BE055001BE0550012D34D0012D34D0000B93D0000501900D8D8
      D800D7D7D700D6D6D600FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484006576A1006B8CC6008CAD
      DE00445B9F00425377001A255C003C3E5700529CC600C6C6C600EFEFEF00EFEF
      EF00F7F7F700F7F7F7005A5A5A00DED6D6000E0E0E003DB90000B1FFB100B1FF
      B1008EFF8E0029EF610025ED5F0082F9960082F9960000B93D0000501900D9D9
      D900D8D8D800D7D7D700FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484008CADDE008CADDE009CB5
      E7008CA7D8007788B1007F9CCE00657FC100232479006576A100EFEFEF00EFEF
      EF00F7F7F700F7F7F700F7F7F700A55A5A00000000000E0E0E000E0E0E000E0E
      0E00B1FFB1002FF2640000B93D00005019000050190000501900DCDCDC00DADA
      DA00D9D9D900D8D8D800FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CADDE007F9CCE00445B
      9F001A255C001A255C0063DAFF001A255C007F9CCE00DEE7EF00EFEFEF00EFEF
      EF00F7F7F700F7F7F700D6D6D600CEADAD000000000000000000000000000E0E
      0E00B1FFB10034F5670000B93D0000501900DFDFDF00DEDEDE00DDDDDD00DCDC
      DC00DBDBDB00DADADA00FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CADDE00445B
      9F001A255C0063DAFF001A255C007F9CCE008CADDE00E7E7E700EFEFEF00EFEF
      EF00F7F7F700D6D6D600A5A5A500000000000000000000000000000000000E0E
      0E003DB90000B1FFB1003DB9000000501900E0E0E000DFDFDF00DEDEDE00DDDD
      DD00DCDCDC00DBDBDB00FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A25
      5C0063DAFF00949CBD009CB5E70094ADDE00E7E7E700E7E7E700EFEFEF00EFEF
      EF00CECECE00A5A5A50000000000000000000000000000000000000000000000
      00000E0E0E000E0E0E0000501900E2E2E200E1E1E100E0E0E000DFDFDF00DEDE
      DE00DDDDDD00DCDCDC00FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A255C0063DA
      FF00949CBD00ADBDDE00D6D6D600EFEFEF005A5A5A00B5B5B500EFEFEF00CECE
      CE00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000032323200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000C0C0C0000000
      00000000000084848400F7F7F700EFE7E700EFEFEF005A5A5A00B5B5B500A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000003232320032323200323232003232320032323200323232003232
      3200323232003232320032323200323232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003100D600000000000000
      00000000000000000000A4A0A000A4A0A000A4A0A000A4A0A000A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD735200C65A0000AD4A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00F7EFE700F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00A57B7300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B55A3100C65A0000CE63
      0000B55210000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF008CF7FF00CEC6BD00F7E7D600F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B55A3100C663
      0000CE630000B55A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00F7E7DE00FFE7CE00F7DEBD00F7DEBD00F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B7300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B55A
      2100CE630000C6630000C6846300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00ADEFFF00A5EF
      FF0094EFFF00CEC6BD00F7E7E700F7E7D600F7DEC600F7DEC600F7DEBD00F7DE
      BD00F7DEC600F7E7D600A57B73000000000000000000AD4A0000BD5A0000BD5A
      0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300000000000000
      0000AD4A0000CE630000B54A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00B5EFFF00ADEF
      FF00A5EFFF00CEC6BD00F7EFE700F7EFDE00FFE7CE00FFE7CE00FFE7CE00F7DE
      C600F7E7D600EFE7DE00A57B73000000000000000000B5520000D6730000CE6B
      0000CE630000CE630000CE630000CE630000C6630000BD6B4200000000000000
      0000CE9C8400C6630000C6630000C68463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00BDEFFF00BDF7
      FF00ADF7FF00CEC6BD00FFF7EF00FFE7CE00FFDEBD00F7DEBD00F7DEBD00FFDE
      B500F7DEC600F7EFE700A57B73000000000000000000BD5A0000DE7B0000D673
      0000CE630000A5421000CE9C8400CE9C8400CE9C840000000000000000000000
      000000000000AD4A0000CE630000B55210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7EF
      DE00F7EFE700EFE7DE00A57B73000000000000000000C6630000E7840000CE63
      0000DE730000CE630000C6846300000000000000000000000000000000000000
      000000000000C6734200CE630000B54A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00DEF7
      FF00CEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7
      DE00D6BDB500C6ADA500A57B73000000000000000000CE630000F7940000B552
      1000B5520000DE7B0000CE6B0000BD7B52000000000000000000000000000000
      000000000000C6734200CE630000B54A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00E7FF
      FF00DEF7FF00CEC6BD00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300C6AD8C00000000000000000000000000CE6B0800FF9C0800CE84
      420000000000B5520000E7840000CE6B0000BD63310000000000000000000000
      000000000000B54A0000CE630000B55210000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00D6F7FF00F7FF
      FF00E7FFFF00CEC6BD00FFEFE700FFF7EF00FFF7EF00FFEFEF00FFF7EF00E7C6
      BD00C6AD8C00299CDE00000000000000000000000000CE732100FFAD3100CE84
      4A000000000000000000C6631000E7840000E77B0000BD520000C67B5200C68C
      7300B5521000C6630000C6630000C68463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE00000000000000000000000000CE7B3900FFBD6300C67B
      5200000000000000000000000000B55A2100E77B0000E7840000DE7B0000D673
      0000CE6B0000C6630000AD4A1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00F7F7
      F700ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF0084D6F700299CDE00000000000000000000000000CE947B00C6845A000000
      000000000000000000000000000000000000CE9C8400C6631000CE6B0000CE6B
      0000BD5A0000BD6B420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00DEF7FF00DECE
      C600BDA59C00A57B7300A57B7300A57B7300A57B7300A57B7300BD9C9400E7EF
      E70094DEF700299CDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000299CDE00B5D6
      E700949C9C00E7DED600F7E7D600F7E7D600F7E7D600CEC6BD00849CA5008CCE
      E700299CDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A5525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A000000000000000000000000000000
      0000AD390000A54200008C290000000000000000000000000000A5420000A542
      00008C2900000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7E7CE008C5A5A00000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      00000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00000000000000000000000000C65A
      0000A5420000A5420000A54200008C29000000000000A5420000AD390000A542
      0000AD3900008C29000000000000000000000000000000000000000000000000
      000000000000B58C8C00F7EFDE00F7DECE00F7DEC600F7DEC600F7DEC600F7DE
      C600EFDECE00EFDECE008C5A5A00000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C6000000000000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00000000000000000000000000AD39
      00000000000000000000000000008C29000000000000AD390000000000000000
      0000000000008C29000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD60000000000000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A00000000000000000000000000AD39
      00008C29000000000000000000008C29000000000000AD390000000000000000
      0000C65A00008C290000000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7E7CE00EFDECE009C6B6300000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF0000000000000000000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A00000000000000000000000000C65A
      0000AD390000A5420000AD390000AD39000000000000AD390000AD390000A542
      0000AD3900008C290000000000000000000000000000B58C8C00FFF7E700F7EF
      DE00F7EFDE00B58C8C00FFF7EF00F7E7CE00F7DEC600F7DEC600F7DEC600F7DE
      C600F7E7D600EFDECE009C6B6B00000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C600000000000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A000000000000000000000000000000
      0000C65A0000A5420000A54200009C4A18008C634A00AD390000A5420000A542
      00008C29000000000000000000000000000000000000B58C8C00F7EFDE00F7DE
      CE00F7DEC600B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFE7D600A57B7300000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C600000000000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD5252000000000000000000000000000000
      00000000000000000000000000008C736B004242420063524200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFF700FFE7D600FFE7D600F7E7D600F7E7CE00FFE7
      D600FFF7E700EFDEDE00A57B7300000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C6000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      000000000000000000008C736B009C847B009C847B009C847B00635242000000
      00000000000000000000000000000000000000000000B58C8C00FFF7EF00F7DE
      C600F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700EFDE
      DE00D6C6C600BDADAD00B5847300000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A00007308000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000008C736B009C847B00B5A59C0000000000B5A59C009C847B006352
      42000000000000000000000000000000000000000000B58C8C00FFF7EF00F7E7
      CE00F7DEC600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700B58C
      8C00B58C8C00B58C8C00B58C8C00000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C6000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000000000
      00008C736B009C847B00B5A59C00000000000000000000000000B5A59C009C84
      7B006352420000000000000000000000000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD290008841000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000008C73
      6B009C847B00B5A59C000000000000000000000000000000000000000000B5A5
      9C009C847B0063524200000000000000000000000000B58C8C00FFFFF700FFE7
      D600FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD8484000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A5180000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000000000009C84
      7B00B5A59C000000000000000000000000000000000000000000000000000000
      0000B5A59C009C847B00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700EFDEDE00D6C6C600BDADAD00B58473000000
      000000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      18000884100000000000000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A00000000000000000000000000B5A5
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000B5A59C00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      08000000000000000000000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFCFFF800FFFFFFFFF83FF800
      FFFFFFFFF00FF000C007C007E007E000FFFFFFFFC003E000F807F83F00078000
      FFFFFFFF00030000C007C00700010000FFFFFFFF00000000F807F01F00008000
      FFFFFFFF8000E000C007C007C001E000FFFFFFFFE003F000F807F83FC007F800
      FFFFFFFF980FF800FFFFFFFFBC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E00FFFFF8FFFFFFFFFFFFFFF8C03C007F83F10388FFFFFFFF39FBAD7FFFFC03F
      F39F0000FFFFFFFFF39FD6378FFFC007F39FC6D78C03FFFFF39FEED68FFFC03F
      F39FEC38FFFFFFFFF39FFFFFFFFFC007E10FFFFF8FFFFFFFFFFFFFFF8C03C03F
      FFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFE001FF8FFFFFFFFFC001FF87FFFFFFFF
      8001FFC3FFFFFFFF8001FFE1FFFFFFFF80018031F00F81FF80018030F8C7E3FF
      80018078F8C7F1FF800181F8F8C7F8FF800180F8F80FFC7F80038878F8C7FE3F
      80038C00F8C7FF1F80038E01F8C7FF8F80039F03F00FFF038003FFFFFFFFFFFF
      C007FFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFC001FFFFF8018FFF8000F1C7F801
      807F8000E083F801800F8000EEBBF80180078000E6B3800180078000E0838001
      80038000F007800180038000FE3F800180018000FC1F800180018000F88F8001
      80018000F1C7800380038000E3E3800780078000E7F3801FC3C78000EFFB801F
      FE0F8000FFFF803FFFFFC001FFFF807F00000000000000000000000000000000
      000000000000}
  end
end
