object baljulist_f: Tbaljulist_f
  Left = 65
  Top = 133
  Caption = 'baljulist_f'
  ClientHeight = 561
  ClientWidth = 1166
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label14: TLabel
    Left = 26
    Top = 68
    Width = 54
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #48156#51452#48512#49436
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 26
    Top = 92
    Width = 54
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #45812#45817#51088
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1166
    Height = 561
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.7.6'
    AutoHideChildren = False
    BorderColor = clGray
    BorderShadow = True
    Caption.Color = 15988728
    Caption.ColorTo = 11322307
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    Caption.Text = #51452#47928#47749#49464#49436' '#51312#54924
    Caption.Visible = True
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 14938354
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clSilver
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clBlack
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    StatusBar.GradientDirection = gdVertical
    Styler = main_f.AdvPanelStyler1
    Text = ''
    FullHeight = 200
    object AdvSplitter1: TAdvSplitter
      Left = 0
      Top = 416
      Width = 1166
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
    end
    object pnlbtn: TAdvPanel
      Left = 0
      Top = 263
      Width = 1166
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.6'
      AutoHideChildren = False
      BorderColor = clGray
      BorderShadow = True
      Caption.Color = 15988728
      Caption.ColorTo = 11322307
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      CollapsColor = clBtnFace
      CollapsDelay = 0
      ColorTo = 14938354
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clSilver
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 14938354
      StatusBar.ColorTo = clWhite
      StatusBar.GradientDirection = gdVertical
      Styler = main_f.AdvPanelStyler1
      Text = ''
      FullHeight = 45
      object btnPrt: TAdvGlowButton
        Left = 99
        Top = 7
        Width = 76
        Height = 31
        AntiAlias = aaNone
        Caption = #51064#49604
        ImageIndex = 16
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnPrtClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnCls: TAdvGlowButton
        Left = 522
        Top = 7
        Width = 76
        Height = 31
        AntiAlias = aaNone
        Caption = #45803#44592
        ImageIndex = 14
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnClsClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object AdvGlowButton4: TAdvGlowButton
        Left = 440
        Top = 7
        Width = 76
        Height = 31
        AntiAlias = aaNone
        Caption = #50641#49472#51200#51109
        ImageIndex = 15
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = AdvGlowButton4Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnMod: TAdvGlowButton
        Left = 15
        Top = 7
        Width = 76
        Height = 31
        Caption = #49688#51221
        ImageIndex = 17
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnModClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnAppend: TAdvGlowButton
        Left = 182
        Top = 7
        Width = 252
        Height = 31
        AntiAlias = aaNone
        Caption = #47784#46160' '#54633#52824#44592
        ImageIndex = 8
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnAppendClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnAppend2: TAdvGlowButton
        Left = 607
        Top = 7
        Width = 199
        Height = 31
        AntiAlias = aaNone
        Caption = #49688#47049#51004#47196' '#47784#46160' '#54633#52824#44592
        ImageIndex = 8
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        OnClick = btnAppend2Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnJegoSet: TAdvGlowButton
        Left = 837
        Top = 7
        Width = 139
        Height = 31
        AntiAlias = aaNone
        Caption = #51116#44256' '#48152#50689
        ImageIndex = 6
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        Visible = False
        OnClick = btnJegoSetClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
    end
    object pnlTop: TAdvPanel
      Left = 0
      Top = 134
      Width = 1166
      Height = 129
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.5.7.6'
      AutoHideChildren = False
      BorderColor = clGray
      BorderShadow = True
      Caption.Color = 15988728
      Caption.ColorTo = 11322307
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      CollapsColor = clBtnFace
      CollapsDelay = 0
      ColorTo = 14938354
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clSilver
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 14938354
      StatusBar.ColorTo = clWhite
      StatusBar.GradientDirection = gdVertical
      Styler = main_f.AdvPanelStyler1
      Text = ''
      FullHeight = 0
      object AdvGroupBox2: TAdvGroupBox
        Left = 306
        Top = 0
        Width = 258
        Height = 129
        CaptionPosition = cpTopCenter
        Align = alLeft
        Caption = #48156#51452#51088' '#51221#48372
        ParentCtl3D = True
        TabOrder = 0
        object Label4: TLabel
          Left = 9
          Top = 78
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #52280#44256#49324#54637
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 7
          Top = 27
          Width = 54
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #48156#51452#48512#49436
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 7
          Top = 51
          Width = 54
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #45812#45817#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object memRemark: TMemo
          Left = 67
          Top = 73
          Width = 177
          Height = 45
          Ctl3D = True
          ImeName = 'Microsoft IME 2003'
          Lines.Strings = (
            'memRemark')
          MaxLength = 200
          ParentCtl3D = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object edtbusu: TEdit
          Left = 67
          Top = 23
          Width = 176
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          ReadOnly = True
          TabOrder = 1
          Text = 'edtbusu'
        end
        object edtUser: TEdit
          Left = 67
          Top = 47
          Width = 176
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          ReadOnly = True
          TabOrder = 2
          Text = 'edtUser'
        end
      end
      object AdvGroupBox3: TAdvGroupBox
        Left = 564
        Top = 0
        Width = 195
        Height = 129
        CaptionPosition = cpTopCenter
        Align = alLeft
        Caption = #44552#50529#51221#48372
        ParentCtl3D = True
        TabOrder = 1
        object Label5: TLabel
          Left = 2
          Top = 37
          Width = 49
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #44552#50529
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 2
          Top = 65
          Width = 49
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #48512#44032#49464
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 2
          Top = 95
          Width = 49
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #54633#44228
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object edtGeumek: TAdvEdit
          Left = 53
          Top = 26
          Width = 127
          Height = 28
          DefaultHandling = True
          EditAlign = eaRight
          EditType = etNumeric
          EmptyText = '0'
          EmptyTextStyle = []
          ExcelStyleDecimalSeparator = True
          Flat = True
          FlatLineColor = clOlive
          FocusColor = 16445929
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
          BorderStyle = bsNone
          Color = 16445929
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          Visible = True
          Version = '3.4.6.3'
        end
        object edtBugase: TAdvEdit
          Left = 53
          Top = 58
          Width = 127
          Height = 28
          DefaultHandling = True
          EditAlign = eaRight
          EditType = etNumeric
          EmptyText = '0'
          EmptyTextStyle = []
          ExcelStyleDecimalSeparator = True
          Flat = True
          FlatLineColor = clOlive
          FocusColor = 16445929
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
          BorderStyle = bsNone
          Color = 16445929
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
          Visible = True
          Version = '3.4.6.3'
        end
        object edtSum: TAdvEdit
          Left = 53
          Top = 90
          Width = 127
          Height = 28
          DefaultHandling = True
          EditAlign = eaRight
          EditType = etNumeric
          EmptyText = '0'
          EmptyTextStyle = []
          ExcelStyleDecimalSeparator = True
          Flat = True
          FlatLineColor = clOlive
          FocusColor = 16445929
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
          BorderStyle = bsNone
          Color = 16445929
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          Visible = True
          Version = '3.4.6.3'
        end
      end
      object AdvGroupBox4: TAdvGroupBox
        Left = 0
        Top = 0
        Width = 306
        Height = 129
        CaptionPosition = cpTopCenter
        Align = alLeft
        Caption = #50629#52404#51221#48372
        ParentCtl3D = True
        TabOrder = 2
        object Label7: TLabel
          Left = 153
          Top = 100
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #45225#54408#44592#54620
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 8
          Top = 50
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #45812#45817#51088#47749
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 8
          Top = 74
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #51204#54868
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 153
          Top = 75
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #48156#51452#51068#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 8
          Top = 99
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #54057#49828
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 153
          Top = 49
          Width = 52
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #55092#45824#54256
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object dpDate2: TDateTimePicker
          Left = 209
          Top = 96
          Width = 82
          Height = 21
          Hint = #51077#44256#51068#51088#47484' '#49440#53469#54616#47732' '#44536#45216#52824#51204#54364#44032' '#51204#54364#48264#54840#50640' '#48520#47084#51652#45796
          Date = 38062.408490567100000000
          Time = 38062.408490567100000000
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          TabOrder = 0
        end
        object edtDamName: TEdit
          Left = 64
          Top = 46
          Width = 82
          Height = 21
          Ctl3D = True
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          Text = 'edtDamName'
        end
        object edtTel: TEdit
          Left = 64
          Top = 71
          Width = 82
          Height = 21
          Ctl3D = True
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          Text = 'edtTel'
        end
        object dpDate: TDateTimePicker
          Left = 209
          Top = 71
          Width = 82
          Height = 21
          Hint = #51077#44256#51068#51088#47484' '#49440#53469#54616#47732' '#44536#45216#52824#51204#54364#44032' '#51204#54364#48264#54840#50640' '#48520#47084#51652#45796
          Date = 38062.408490567100000000
          Time = 38062.408490567100000000
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          TabOrder = 3
        end
        object edtFax: TEdit
          Left = 64
          Top = 96
          Width = 82
          Height = 21
          Ctl3D = True
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          Text = 'edtFax'
        end
        object edtHp: TEdit
          Left = 209
          Top = 46
          Width = 82
          Height = 21
          Ctl3D = True
          Enabled = False
          ImeName = 'Microsoft IME 2003'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          Text = 'edtHp'
        end
        object btnUpche: TAdvGlowButton
          Left = 12
          Top = 20
          Width = 46
          Height = 22
          AntiAlias = aaNone
          Caption = #50629#52404#47749
          Images = main_f.ImageList1
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 6
          OnClick = btnUpcheClick
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object edtUpche: TEdit
          Left = 63
          Top = 20
          Width = 226
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          ReadOnly = True
          TabOrder = 7
          Text = 'edtUpche'
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 18
      Width = 1166
      Height = 116
      Align = alTop
      TabOrder = 2
      object Label3: TLabel
        Left = 28
        Top = 39
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #50629#52404#47749
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 174
        Top = 14
        Width = 13
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '~'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 0
        Top = 64
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #48156#51452#48512#49436'('#54016')'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 26
        Top = 88
        Width = 54
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #45812#45817#51088
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtSeq: TEdit
        Left = 295
        Top = 36
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'edtSeq'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 85
        Top = 9
        Width = 84
        Height = 21
        Date = 41642.492923784720000000
        Time = 41642.492923784720000000
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
      end
      object DateTimePicker2: TDateTimePicker
        Left = 196
        Top = 9
        Width = 84
        Height = 21
        Date = 41642.492923784720000000
        Time = 41642.492923784720000000
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
      end
      object cbTerm: TCheckBox
        Left = 11
        Top = 11
        Width = 70
        Height = 17
        Caption = #48156#51452#44592#44036
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object btnSch: TAdvGlowButton
        Left = 297
        Top = 73
        Width = 76
        Height = 31
        Caption = #44160#49353'(F5)'
        ImageIndex = 5
        Images = main_f.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnSchClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 11918331
        Appearance.ColorCheckedTo = 7915518
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object cbibchu: TColumnComboBox
        Left = 84
        Top = 34
        Width = 196
        Height = 21
        Color = 16744448
        Version = '1.5.1.3'
        Visible = True
        Columns = <>
        ComboItems = <>
        EditColumn = -1
        EditHeight = 15
        EmptyText = ''
        EmptyTextStyle = []
        DropWidth = 0
        DropHeight = 200
        Enabled = True
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
        TabOrder = 5
        OnChange = cbibchuChange
      end
      object cbBusu: TColumnComboBox
        Left = 84
        Top = 59
        Width = 196
        Height = 21
        Color = 16744448
        Version = '1.5.1.3'
        Visible = True
        Columns = <
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
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
            Font.Color = clBlack
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
        GridLines = False
        ItemIndex = -1
        LookupColumn = 0
        LabelCaption = ''
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ShowLookup = True
        SortColumn = 0
        TabOrder = 6
      end
      object cbUser: TColumnComboBox
        Left = 84
        Top = 84
        Width = 196
        Height = 21
        Color = 16744448
        Version = '1.5.1.3'
        Visible = True
        Columns = <
          item
            Color = clWindow
            ColumnType = ctText
            Width = 100
            Alignment = taLeftJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
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
            Font.Color = clBlack
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
        TabOrder = 7
      end
      object cbBuga: TCheckBox
        Left = 295
        Top = 15
        Width = 97
        Height = 17
        Caption = #48512#44032#49464' '#54252#54632
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
    end
    object pnlWonjangList: TAdvPanel
      Left = 0
      Top = 309
      Width = 1166
      Height = 107
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UseDockManager = True
      Version = '2.5.7.6'
      AutoHideChildren = False
      BorderColor = clGray
      BorderShadow = True
      Caption.Color = 15988728
      Caption.ColorTo = 11322307
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #51452#47928' '#50896#51109' '#47532#49828#53944
      Caption.Visible = True
      CollapsColor = clBtnFace
      CollapsDelay = 0
      ColorTo = 14938354
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clSilver
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 14938354
      StatusBar.ColorTo = clWhite
      StatusBar.GradientDirection = gdVertical
      Styler = main_f.AdvPanelStyler1
      Text = ''
      FullHeight = 200
      object grdBjList: TAdvStringGrid
        Left = 0
        Top = 18
        Width = 1166
        Height = 89
        Cursor = crDefault
        Align = alClient
        ColCount = 10
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 14474202
        GridFixedLineColor = 14474202
        HoverRowCells = [hcNormal, hcSelected]
        OnGetFormat = grdBjListGetFormat
        OnClickCell = grdBjListClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 10344697
        ActiveCellColorTo = 6210033
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'grdBjList'
        ColumnSize.Location = clIniFile
        ControlLook.FixedGradientFrom = 16250613
        ControlLook.FixedGradientTo = 16250613
        ControlLook.FixedGradientMirrorFrom = 16250613
        ControlLook.FixedGradientMirrorTo = 16250613
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
        ControlLook.FixedGradientDownBorder = 14991773
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
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glCustom
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
        SearchFooter.Color = 16250613
        SearchFooter.ColorTo = 16250613
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
        SelectionColor = 14327846
        SelectionTextColor = clWhite
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        Version = '8.4.1.0'
        ColWidths = (
          64
          64
          64
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
    end
    object pnlSebuList: TAdvPanel
      Left = 0
      Top = 419
      Width = 1166
      Height = 142
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UseDockManager = True
      Version = '2.5.7.6'
      AutoHideChildren = False
      BorderColor = clGray
      BorderShadow = True
      Caption.Color = 15988728
      Caption.ColorTo = 11322307
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      Caption.Text = #51452#47928#50896#51109' '#49464#48512' '#47532#49828#53944
      Caption.Visible = True
      CollapsColor = clBtnFace
      CollapsDelay = 0
      ColorTo = 14938354
      DoubleBuffered = True
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.BorderColor = clSilver
      StatusBar.BorderStyle = bsSingle
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clBlack
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      StatusBar.Color = 14938354
      StatusBar.ColorTo = clWhite
      StatusBar.GradientDirection = gdVertical
      Styler = main_f.AdvPanelStyler1
      Text = ''
      FullHeight = 200
      object grdmain: TAdvStringGrid
        Left = 0
        Top = 18
        Width = 1166
        Height = 124
        Cursor = crDefault
        Align = alClient
        ColCount = 20
        Ctl3D = True
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goTabs, goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 14474202
        GridFixedLineColor = 14474202
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grdmainGetAlignment
        OnGetFormat = grdmainGetFormat
        OnCanSort = grdmainCanSort
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 10344697
        ActiveCellColorTo = 6210033
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'grdBalju'
        ColumnSize.Location = clIniFile
        ControlLook.FixedGradientFrom = 16250613
        ControlLook.FixedGradientTo = 16250613
        ControlLook.FixedGradientMirrorFrom = 16250613
        ControlLook.FixedGradientMirrorTo = 16250613
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
        ControlLook.FixedGradientDownBorder = 14991773
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
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.0n'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glCustom
        Navigation.AllowInsertRow = True
        Navigation.AllowDeleteRow = True
        Navigation.AdvanceOnEnter = True
        Navigation.AllowCtrlEnter = False
        Navigation.AllowClipboardRowGrow = False
        Navigation.AllowClipboardColGrow = False
        Navigation.AdvanceAuto = True
        Navigation.InsertPosition = pInsertAfter
        Navigation.ImproveMaskSel = True
        Navigation.CopyHTMLTagsToClipboard = False
        Navigation.HomeEndKey = heFirstLastRow
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
        SearchFooter.Color = 16250613
        SearchFooter.ColorTo = 16250613
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
        SelectionColor = 14327846
        SelectionTextColor = clWhite
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        Version = '8.4.1.0'
        ExplicitHeight = 125
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          22
          21
          21
          21
          21
          21
          21
          21
          21
          21)
      end
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdmain
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 1191
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    Left = 1221
    Top = 64
  end
end
