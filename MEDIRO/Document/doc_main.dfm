object Main_f: TMain_f
  Left = 71
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #47928#49436#44288#47532
  ClientHeight = 814
  ClientWidth = 1353
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 215
    Height = 814
    Align = alLeft
    Color = 15392983
    TabOrder = 0
    object lblVersion: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 795
      Width = 207
      Height = 15
      Align = alBottom
      Caption = 'Ver.'
      ExplicitWidth = 25
    end
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 110
      Width = 149
      Height = 2
      TabOrder = 13
      ControlData = {
        4C000000660F0000350000000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object btnPlanPaper: TButton
      AlignWithMargins = True
      Left = 4
      Top = 115
      Width = 207
      Height = 33
      Hint = '0'
      Align = alTop
      Caption = #52824#47308#44228#54925#49436
      TabOrder = 0
      Visible = False
      OnClick = btnPlanPaperClick
    end
    object btnSogyunseo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 154
      Width = 207
      Height = 33
      Hint = '1'
      Align = alTop
      Caption = #49548#44204#49436
      TabOrder = 1
      OnClick = btnSogyunseoClick
    end
    object btnJinryoUiRoiSeo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 232
      Width = 207
      Height = 33
      Hint = '2'
      Align = alTop
      Caption = #51652#47308#51032#47280#49436
      TabOrder = 2
      OnClick = btnJinryoUiRoiSeoClick
    end
    object btnJinryoHwakinSeo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 271
      Width = 207
      Height = 33
      Hint = '3'
      Align = alTop
      Caption = #51652#47308#54869#51064#49436
      TabOrder = 3
      OnClick = btnJinryoHwakinSeoClick
    end
    object btnJindanSeo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 310
      Width = 207
      Height = 33
      Hint = '4'
      Align = alTop
      Caption = #51068#48152#51652#45800#49436
      TabOrder = 4
      OnClick = btnJindanSeoClick
    end
    object btnHyangChu: TButton
      AlignWithMargins = True
      Left = 4
      Top = 349
      Width = 207
      Height = 35
      Hint = '5'
      Align = alTop
      Caption = #54693#54980#52824#47308#48708#52628#51221#49436
      TabOrder = 5
      Visible = False
      OnClick = btnHyangChuClick
    end
    object btnSangHaeJindan: TButton
      AlignWithMargins = True
      Left = 4
      Top = 390
      Width = 207
      Height = 35
      Hint = '6'
      Align = alTop
      Caption = #49345#54644#51652#45800#49436
      TabOrder = 6
      OnClick = btnSangHaeJindanClick
    end
    object btnHwakinSeo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 472
      Width = 207
      Height = 35
      Hint = '7'
      Align = alTop
      Caption = '(         ) '#54869#51064#49436
      TabOrder = 7
      OnClick = btnHwakinSeoClick
    end
    object spSkinButton101: TButton
      AlignWithMargins = True
      Left = 4
      Top = 593
      Width = 207
      Height = 35
      Hint = '8'
      Align = alTop
      Caption = #51652#47308#48708#54869#51064#49436#48156#44553#45824#51109
      TabOrder = 8
      OnClick = spSkinButton101Click
    end
    object spSkinButton100: TButton
      AlignWithMargins = True
      Left = 4
      Top = 634
      Width = 207
      Height = 35
      Hint = '9'
      Align = alTop
      Caption = #50896#50808#52376#48169#51204#48156#44553#45824#51109
      TabOrder = 9
      OnClick = spSkinButton100Click
    end
    object spSkinButton104: TButton
      AlignWithMargins = True
      Left = 4
      Top = 675
      Width = 207
      Height = 35
      Hint = '10'
      Align = alTop
      Caption = #47928#49436#48156#44553#45824#51109
      TabOrder = 10
      OnClick = spSkinButton104Click
    end
    object spSkinButton2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 716
      Width = 207
      Height = 35
      Hint = '12'
      Align = alTop
      Caption = #48169#49324#49440#52524#50689#45824#51109
      TabOrder = 11
      OnClick = spSkinButton2Click
    end
    object spSkinButton1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 757
      Width = 207
      Height = 37
      Align = alTop
      Caption = #45803#44592
      TabOrder = 12
      OnClick = spSkinButton1Click
    end
    object btnArmyJindanSeo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 513
      Width = 207
      Height = 35
      Hint = '7'
      Align = alTop
      Caption = #48337#49324#50857#51652#45800#49436
      TabOrder = 14
      OnClick = btnArmyJindanSeoClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 431
      Width = 207
      Height = 35
      Hint = '7'
      Align = alTop
      Caption = #53685#50896'/'#51077#50896' '#54869#51064#49436
      TabOrder = 15
      OnClick = Button1Click
    end
    object Panel28: TPanel
      Left = 1
      Top = 1
      Width = 213
      Height = 111
      Align = alTop
      Caption = 'Panel28'
      ShowCaption = False
      TabOrder = 16
      object Shape54: TShape
        Left = 13
        Top = 30
        Width = 113
        Height = 21
        Pen.Color = clGradientActiveCaption
      end
      object Shape55: TShape
        Left = 13
        Top = 79
        Width = 112
        Height = 21
        Pen.Color = clGradientActiveCaption
      end
      object EdtChartNo: TEdit
        Left = 14
        Top = 80
        Width = 110
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EdtChartNoKeyPress
      end
      object EdtPName: TEdit
        Left = 14
        Top = 31
        Width = 111
        Height = 18
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = EdtPNameEnter
        OnExit = EdtPNameExit
        OnKeyPress = EdtChartNoKeyPress
      end
      object BitBtn3: TBitBtn
        Left = 13
        Top = 58
        Width = 113
        Height = 19
        Caption = #52264#53944#48264#54840
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn1: TBitBtn
        Left = 13
        Top = 10
        Width = 113
        Height = 19
        Caption = #54872#51088#51060#47492
        NumGlyphs = 2
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object spSkinButton11: TButton
        Left = 127
        Top = 79
        Width = 17
        Height = 21
        Hint = #45796#51020
        TabOrder = 4
        OnClick = spSkinButton11Click
      end
    end
    object btnHoisongSeo: TButton
      AlignWithMargins = True
      Left = 4
      Top = 193
      Width = 207
      Height = 33
      Hint = '1'
      Align = alTop
      Caption = #54924#49569#49436
      TabOrder = 17
      OnClick = btnHoisongSeoClick
    end
    object btnCertification: TButton
      AlignWithMargins = True
      Left = 4
      Top = 554
      Width = 207
      Height = 33
      Hint = '4'
      Align = alTop
      Caption = 'Medical Certification'
      TabOrder = 18
      OnClick = btnCertificationClick
    end
  end
  object Panel2: TPanel
    Left = 215
    Top = 0
    Width = 1138
    Height = 814
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1138
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 16513524
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblKind: TLabel
        Left = 5
        Top = 14
        Width = 38
        Height = 12
        Caption = 'lblKind'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object pnlHwakinCap: TPanel
        Left = 238
        Top = 5
        Width = 307
        Height = 37
        Caption = 'pnlHwakinCap'
        ShowCaption = False
        TabOrder = 0
        object Label57: TLabel
          Left = 112
          Top = 3
          Width = 84
          Height = 27
          Caption = #54869#51064#49436
        end
        object edtHwakinCap2: TComboBox
          Left = 17
          Top = 0
          Width = 89
          Height = 35
          ItemIndex = 0
          TabOrder = 0
          Text = #53685#50896
          OnChange = edtHwakinCap2Change
          Items.Strings = (
            #53685#50896
            #51077#50896)
        end
        object edtHwakinCap: TEdit
          Left = 8
          Top = 0
          Width = 98
          Height = 33
          TabOrder = 1
          Text = 'edtHwakinCap'
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 759
      Width = 1138
      Height = 55
      Align = alBottom
      BevelOuter = bvNone
      Color = 15392983
      TabOrder = 1
      object Label55: TLabel
        Left = 8
        Top = 8
        Width = 295
        Height = 45
        Caption = 
          #54872#51088#51060#47492#51060' '#51080#45716#44221#50864#45716' '#54644#45817#54872#51088#51032' '#51652#47308#48708#13#10#54869#51064#49436' '#48156#44553#54788#54889#51012', '#54872#51088#51060#47492#51060' '#50630#45716#44221#50864#45716' '#13#10#54644#45817#44592#44036#51032'  '#51204#52404#48156#44553#54788#54889#51012' '#48389 +
          #45768#45796'.'
        Visible = False
      end
      object btnNew: TButton
        Left = 56
        Top = 12
        Width = 89
        Height = 26
        Caption = #49888#44508
        TabOrder = 0
        OnClick = btnNewClick
      end
      object btnSave: TButton
        Left = 168
        Top = 12
        Width = 89
        Height = 26
        Caption = #51200#51109
        TabOrder = 1
        OnClick = btnSaveClick
      end
      object btnDelete: TButton
        Left = 394
        Top = 12
        Width = 89
        Height = 26
        Caption = #49325#51228
        TabOrder = 2
        OnClick = btnDeleteClick
      end
      object btnPrint: TButton
        Left = 281
        Top = 12
        Width = 89
        Height = 26
        Caption = #51064#49604
        TabOrder = 3
        OnClick = btnPrintClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 49
      Width = 1138
      Height = 76
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 13676431
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object Label1: TLabel
        Left = 14
        Top = 10
        Width = 48
        Height = 15
        Caption = #52320#53944#48264#54840
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 214
        Top = 10
        Width = 48
        Height = 15
        Caption = #54872#51088#49457#47749
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 214
        Top = 30
        Width = 48
        Height = 15
        Caption = #49373#45380#50900#51068
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 22
        Top = 50
        Width = 28
        Height = 15
        Caption = #51452' '#49548
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 452
        Top = 10
        Width = 36
        Height = 15
        Caption = #50672#48264#54840
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 14
        Top = 30
        Width = 48
        Height = 15
        Caption = #51452#48124#48264#54840
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 452
        Top = 30
        Width = 28
        Height = 15
        Caption = #45208' '#51060
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 451
        Top = 52
        Width = 28
        Height = 15
        Caption = #49457' '#48324
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Shape10: TShape
        Left = 68
        Top = 5
        Width = 120
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape11: TShape
        Left = 265
        Top = 5
        Width = 123
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape12: TShape
        Left = 495
        Top = 5
        Width = 117
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape13: TShape
        Left = 68
        Top = 26
        Width = 120
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape14: TShape
        Left = 265
        Top = 26
        Width = 122
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape15: TShape
        Left = 68
        Top = 47
        Width = 368
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape16: TShape
        Left = 495
        Top = 26
        Width = 51
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Edit1: TEdit
        Left = 266
        Top = 6
        Width = 121
        Height = 16
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtBd: TEdit
        Left = 266
        Top = 27
        Width = 120
        Height = 16
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object EdtPadd: TEdit
        Left = 69
        Top = 48
        Width = 366
        Height = 16
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object EdtSeqNo: TEdit
        Left = 496
        Top = 6
        Width = 107
        Height = 16
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object EdtJuminNo: TEdit
        Left = 69
        Top = 27
        Width = 118
        Height = 16
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdtAge: TEdit
        Left = 496
        Top = 27
        Width = 35
        Height = 16
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdtGender: TComboBox
        Left = 495
        Top = 47
        Width = 52
        Height = 23
        BevelInner = bvSpace
        BevelKind = bkFlat
        Ctl3D = False
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        TabOrder = 6
        Items.Strings = (
          #45224
          #50668)
      end
      object Edit2: TEdit
        Left = 69
        Top = 6
        Width = 117
        Height = 17
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 680
      Width = 1138
      Height = 79
      Align = alBottom
      Color = 16513524
      TabOrder = 3
      object Label3: TLabel
        Left = 24
        Top = 13
        Width = 45
        Height = 15
        Caption = #48156#54665#51068
      end
      object Label4: TLabel
        Left = 354
        Top = 11
        Width = 60
        Height = 15
        Caption = #51032#49324#49457#47749
      end
      object Label5: TLabel
        Left = 24
        Top = 35
        Width = 90
        Height = 15
        Caption = #48156#54665#51652#47308#44592#44288
      end
      object Label16: TLabel
        Left = 23
        Top = 56
        Width = 105
        Height = 15
        Caption = #51652#47308#44592#44288#49548#51116#51648
      end
      object Label17: TLabel
        Left = 354
        Top = 34
        Width = 60
        Height = 15
        Caption = #47732#54728#48264#54840
      end
      object Shape21: TShape
        Left = 134
        Top = 31
        Width = 181
        Height = 18
        Pen.Color = clGradientActiveCaption
      end
      object Shape22: TShape
        Left = 134
        Top = 53
        Width = 446
        Height = 19
        Pen.Color = clGradientActiveCaption
      end
      object Shape23: TShape
        Left = 426
        Top = 30
        Width = 156
        Height = 18
        Pen.Color = clGradientActiveCaption
      end
      object EdtHName: TEdit
        Left = 137
        Top = 34
        Width = 176
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object EdtAdd: TEdit
        Left = 137
        Top = 57
        Width = 440
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object EdtLNo: TEdit
        Left = 429
        Top = 33
        Width = 151
        Height = 14
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object cbDocName: TComboBox
        Left = 426
        Top = 5
        Width = 154
        Height = 20
        BevelInner = bvSpace
        BevelKind = bkFlat
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentFont = False
        TabOrder = 3
        OnChange = cbDocNameChange
        OnClick = cbDocNameClick
      end
      object lstDoctor: TListBox
        Left = 281
        Top = 6
        Width = 43
        Height = 19
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ItemHeight = 15
        TabOrder = 4
        Visible = False
      end
      object RelDate: TDateTimePicker
        Left = 134
        Top = 6
        Width = 141
        Height = 23
        Date = 43279.000000000000000000
        Time = 0.676693634261028000
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 5
      end
    end
    object pcMain: TPageControl
      Left = 0
      Top = 125
      Width = 1138
      Height = 555
      ActivePage = TabSheet2
      Align = alClient
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object TabSheet1: TTabSheet
        Caption = #54693#54980#52824#47308#48708#52628#51221#49436'/'#49548#44204#49436'/'#51652#47308#54869#51064#49436
        object Label11: TLabel
          Left = 395
          Top = 20
          Width = 72
          Height = 24
          Caption = #44397#51228#54364#51456#51656#48337#13#10#49324#51064#48516#47448
        end
        object LblReturn: TLabel
          Left = 30
          Top = 359
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #52824#47308#44592#44036
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label19: TLabel
          Left = 30
          Top = 75
          Width = 76
          Height = 12
          Alignment = taCenter
          Caption = #54693#54980' '#52824#47308#45236#50669
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Shape4: TShape
          Left = 112
          Top = 357
          Width = 445
          Height = 23
          Pen.Color = clGradientActiveCaption
        end
        object Shape3: TShape
          Left = 30
          Top = 97
          Width = 570
          Height = 254
          Pen.Color = clGradientActiveCaption
        end
        object Shape2: TShape
          Left = 481
          Top = 18
          Width = 121
          Height = 72
          Pen.Color = clGradientActiveCaption
        end
        object Shape9: TShape
          Left = 166
          Top = 18
          Width = 222
          Height = 72
          Pen.Color = clGradientActiveCaption
        end
        object btnSearchSangByung0: TButton
          Left = 30
          Top = 40
          Width = 133
          Height = 21
          Caption = #51652#45800#47749#44160#49353
          PopupMenu = SangMenu
          TabOrder = 0
          OnClick = btnSearchSangByung0Click
        end
        object edtSangCode4: TEdit
          Left = 394
          Top = 50
          Width = 81
          Height = 18
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
          Text = #49324#51064#51649#51217#51077#47141
          Visible = False
          OnEnter = edtSangCode4Enter
          OnExit = edtSangCode4Exit
          OnKeyPress = edtSangCode4KeyPress
        end
        object edtJindan: TEdit
          Left = 31
          Top = 21
          Width = 132
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 2
          Text = #51652#45800#47749#51649#51217#51077#47141
          Visible = False
          OnEnter = edtJindanEnter
          OnExit = edtJindanExit
          OnKeyPress = edtJindanKeyPress
        end
        object lstDangName: TListBox
          Left = 169
          Top = 26
          Width = 215
          Height = 65
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 3
          OnDblClick = lstDangNameDblClick
        end
        object lstSangCode: TListBox
          Left = 482
          Top = 21
          Width = 116
          Height = 65
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 4
          OnDblClick = lstSangCodeDblClick
        end
        object EdtReturn: TEdit
          Left = 115
          Top = 361
          Width = 441
          Height = 18
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16775152
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          MaxLength = 100
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object Memo2: TMemo
          Left = 32
          Top = 102
          Width = 563
          Height = 249
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 6
        end
      end
      object TabSheet2: TTabSheet
        Caption = #51652#47308#51032#47280#49436
        ImageIndex = 1
        object Label6: TLabel
          Left = 384
          Top = 21
          Width = 72
          Height = 24
          Caption = #44397#51228#54364#51456#51656#48337#13#10#49324#51064#48516#47448
        end
        object Label7: TLabel
          Left = 30
          Top = 71
          Width = 124
          Height = 12
          Caption = '  '#54872#51088#49345#53468' '#48143' '#51652#47308#51032#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel9: TLabel
          Left = 344
          Top = 338
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #51652#47308#44396#48516
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label10: TLabel
          Left = 30
          Top = 338
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #51652#47308#44592#44036
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Shape20: TShape
          Left = 422
          Top = 387
          Width = 170
          Height = 22
          Pen.Color = clGradientActiveCaption
        end
        object Shape19: TShape
          Left = 421
          Top = 362
          Width = 170
          Height = 22
          Pen.Color = clGradientActiveCaption
        end
        object Shape18: TShape
          Left = 106
          Top = 387
          Width = 175
          Height = 22
          Pen.Color = clGradientActiveCaption
        end
        object Shape17: TShape
          Left = 106
          Top = 362
          Width = 116
          Height = 22
          Pen.Color = clGradientActiveCaption
        end
        object Shape8: TShape
          Left = 30
          Top = 93
          Width = 572
          Height = 239
          Pen.Color = clGradientActiveCaption
        end
        object Shape7: TShape
          Left = 106
          Top = 336
          Width = 213
          Height = 22
          Pen.Color = clGradientActiveCaption
        end
        object Shape6: TShape
          Left = 467
          Top = 19
          Width = 136
          Height = 68
          Pen.Color = clGradientActiveCaption
        end
        object Shape5: TShape
          Left = 168
          Top = 19
          Width = 203
          Height = 68
          Pen.Color = clGradientActiveCaption
        end
        object Label25: TLabel
          Left = 35
          Top = 393
          Width = 60
          Height = 12
          Caption = #48372#54744#51088#47749#52845
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 20
          Top = 422
          Width = 605
          Height = 2
          Pen.Color = clBlue
          Visible = False
        end
        object Label24: TLabel
          Left = 357
          Top = 369
          Width = 48
          Height = 12
          Caption = #54588#48372#54744#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 355
          Top = 393
          Width = 36
          Height = 12
          Caption = #51613#48264#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 37
          Top = 369
          Width = 60
          Height = 12
          Caption = #48372#54744#51088#44592#54840
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 356
          Top = 110
          Width = 4
          Height = 12
        end
        object btnSearchSangByung1: TButton
          Left = 30
          Top = 41
          Width = 133
          Height = 21
          Caption = #49345#48337#47749#44160#49353
          PopupMenu = SangMenu
          TabOrder = 0
          OnClick = btnSearchSangByung0Click
        end
        object edtSangCode3: TEdit
          Left = 383
          Top = 50
          Width = 81
          Height = 18
          ImeName = 'Microsoft IME 2003'
          TabOrder = 1
          Text = #49324#51064#51649#51217#51077#47141
          Visible = False
          OnEnter = edtSangCode3Enter
          OnExit = edtSangCode3Exit
          OnKeyPress = edtSangCode3KeyPress
        end
        object Edit10: TEdit
          Left = 425
          Top = 366
          Width = 160
          Height = 15
          BorderStyle = bsNone
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 2
        end
        object Edit9: TEdit
          Left = 425
          Top = 391
          Width = 160
          Height = 17
          BorderStyle = bsNone
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 3
        end
        object Edit8: TEdit
          Left = 110
          Top = 391
          Width = 169
          Height = 17
          BorderStyle = bsNone
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 4
        end
        object Edit7: TEdit
          Left = 110
          Top = 366
          Width = 107
          Height = 16
          BorderStyle = bsNone
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 5
        end
        object ComboBox1: TComboBox
          Left = 423
          Top = 338
          Width = 85
          Height = 20
          BevelInner = bvSpace
          BevelKind = bkFlat
          Enabled = False
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemIndex = 0
          TabOrder = 6
          Text = #50808#47000
          Items.Strings = (
            #50808#47000
            #51077#50896)
        end
        object edtJindan1: TEdit
          Left = 31
          Top = 17
          Width = 132
          Height = 18
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 7
          Text = #51652#45800#47749#51649#51217#51077#47141
          Visible = False
          OnEnter = edtJindanEnter
          OnExit = edtJindanExit
          OnKeyPress = edtJindanKeyPress
        end
        object lstDangName1: TListBox
          Left = 169
          Top = 20
          Width = 199
          Height = 65
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 8
          OnDblClick = lstDangName1DblClick
        end
        object lstSangCode1: TListBox
          Left = 468
          Top = 20
          Width = 132
          Height = 65
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 9
          OnDblClick = lstSangCode1DblClick
        end
        object Edit5: TEdit
          Left = 110
          Top = 340
          Width = 206
          Height = 16
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16775152
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          MaxLength = 100
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object Memo1: TMemo
          Left = 35
          Top = 97
          Width = 564
          Height = 235
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 11
        end
      end
      object TabSheet3: TTabSheet
        Caption = #51652#47308#54869#51064#49436
        ImageIndex = 2
        object wLabel21: TLabel
          Left = 30
          Top = 343
          Width = 28
          Height = 12
          Alignment = taCenter
          Caption = #48708' '#44256
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label54: TLabel
          Left = 385
          Top = 109
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #52824#47308#44592#44036
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label26: TLabel
          Left = 30
          Top = 112
          Width = 76
          Height = 12
          Alignment = taCenter
          Caption = #54693#54980' '#52824#47308#51032#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object lblStartDesease: TLabel
          Left = 231
          Top = 110
          Width = 36
          Height = 12
          Alignment = taCenter
          Caption = #48156#48337#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          Visible = False
        end
        object Shape28: TShape
          Left = 65
          Top = 341
          Width = 523
          Height = 66
          Pen.Color = clGradientActiveCaption
        end
        object Shape27: TShape
          Left = 439
          Top = 105
          Width = 150
          Height = 22
          Pen.Color = clGradientActiveCaption
        end
        object Shape26: TShape
          Left = 30
          Top = 134
          Width = 559
          Height = 203
          Pen.Color = clGradientActiveCaption
        end
        object Label27: TLabel
          Left = 392
          Top = 28
          Width = 72
          Height = 24
          Caption = #44397#51228#54364#51456#51656#48337#13#10#49324#51064#48516#47448
        end
        object btnSearchSangByung2: TButton
          Left = 19
          Top = 31
          Width = 134
          Height = 21
          Caption = #51652#45800#47749#44160#49353
          PopupMenu = SangMenu
          TabOrder = 1
          OnClick = btnSearchSangByung0Click
        end
        object edtTeeth1: TAdvEdit
          Left = 19
          Top = 53
          Width = 134
          Height = 18
          DefaultHandling = True
          EmptyText = #52824#49885#51012' '#51077#47141#54616#49464#50836
          EmptyTextStyle = []
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
          Color = clWindow
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 2
          Text = ''
          Visible = False
          Version = '3.4.9.0'
        end
        object edtSangCode: TEdit
          Left = 616
          Top = 55
          Width = 80
          Height = 18
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 3
          Text = #49324#51064#51649#51217#51077#47141
          Visible = False
          OnEnter = edtSangCodeEnter
          OnExit = edtSangCodeExit
          OnKeyPress = edtSangCodeKeyPress
        end
        object cbDeseaseDateAccept: TCheckBox
          Left = 231
          Top = 87
          Width = 122
          Height = 17
          Caption = #48156#48337#51068' '#51201#50857
          TabOrder = 4
          OnClick = cbDeseaseDateAcceptClick
        end
        object edtTerm: TEdit
          Left = 443
          Top = 106
          Width = 146
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
          ParentFont = False
          TabOrder = 5
        end
        object Edit12: TMemo
          Left = 68
          Top = 346
          Width = 515
          Height = 59
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 6
        end
        object lstSangCode2: TListBox
          Left = 470
          Top = 2
          Width = 111
          Height = 71
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 7
          OnDblClick = lstSangCode2DblClick
        end
        object lstDangName2: TListBox
          Left = 165
          Top = 0
          Width = 221
          Height = 71
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnDblClick = lstDangName2DblClick
        end
        object edtJindan2: TEdit
          Left = 19
          Top = 7
          Width = 134
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 9
          Text = #51652#45800#47749#51649#51217#51077#47141
          Visible = False
          OnEnter = edtJindanEnter
          OnExit = edtJindanExit
          OnKeyPress = edtJindanKeyPress
        end
        object Memo3: TMemo
          Left = 34
          Top = 137
          Width = 551
          Height = 198
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 10
        end
        object RadioButton2: TRadioButton
          Left = 92
          Top = 77
          Width = 71
          Height = 17
          Caption = #52572#51333#51652#45800
          TabOrder = 11
        end
        object RadioButton1: TRadioButton
          Left = 32
          Top = 77
          Width = 54
          Height = 17
          Caption = #51076#49345#51201
          Checked = True
          TabOrder = 12
          TabStop = True
        end
        object dtStartDesease: TDateTimePicker
          Left = 273
          Top = 108
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676698159717489000
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 0
          Visible = False
        end
        object pnlTerm: TPanel
          Left = 112
          Top = 140
          Width = 321
          Height = 125
          Caption = 'pnlTerm'
          ShowCaption = False
          TabOrder = 13
          Visible = False
          object lblTerm: TLabel
            Left = 37
            Top = 12
            Width = 48
            Height = 12
            Alignment = taCenter
            Caption = #52824#47308#44592#44036
            Color = 16772055
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label56: TLabel
            Left = 188
            Top = 12
            Width = 9
            Height = 12
            Alignment = taCenter
            Caption = '~'
            Color = 16772055
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object DateTimePicker1: TDateTimePicker
            Left = 89
            Top = 8
            Width = 93
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676698159717489000
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 0
          end
          object DateTimePicker2: TDateTimePicker
            Left = 203
            Top = 8
            Width = 93
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676698159717489000
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 1
          end
          object btmSang2Load: TButton
            Left = 216
            Top = 90
            Width = 81
            Height = 25
            Caption = #51201#50857
            TabOrder = 2
            OnClick = btmSang2LoadClick
          end
          object pnlOpCode: TPanel
            Left = 24
            Top = 32
            Width = 265
            Height = 57
            Caption = 'pnlOpCode'
            ShowCaption = False
            TabOrder = 3
            Visible = False
            object lblOpCode: TLabel
              Left = 13
              Top = 14
              Width = 48
              Height = 12
              Alignment = taCenter
              Caption = #49688#49696#53076#46300
              Color = 16772055
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
            end
            object lblOpName: TLabel
              Left = 13
              Top = 38
              Width = 36
              Height = 12
              Alignment = taCenter
              Caption = #49688#49696#47749
              Color = 16772055
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = #44404#47548
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
              Layout = tlCenter
            end
            object edtOpCode: TEdit
              Left = 64
              Top = 10
              Width = 121
              Height = 18
              TabOrder = 0
              Text = 'edtOpCode'
            end
            object edtOpName: TEdit
              Left = 64
              Top = 34
              Width = 121
              Height = 18
              TabOrder = 1
              Text = 'edtOpName'
            end
          end
        end
        object Button2: TButton
          Left = 112
          Top = 106
          Width = 75
          Height = 25
          Caption = #52824#47308#44592#44036
          TabOrder = 14
          OnClick = Button2Click
        end
      end
      object TabSheet4: TTabSheet
        Caption = #54693#54980#52824#47308#48708#52628#51221#49436
        ImageIndex = 3
        object Shape29: TShape
          Left = 30
          Top = 95
          Width = 587
          Height = 228
          Pen.Color = clGradientActiveCaption
        end
        object Label30: TLabel
          Left = 30
          Top = 326
          Width = 28
          Height = 12
          Alignment = taCenter
          Caption = #48708' '#44256
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label29: TLabel
          Left = 30
          Top = 73
          Width = 76
          Height = 12
          Alignment = taCenter
          Caption = #54693#54980' '#52824#47308#45236#50669
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label32: TLabel
          Left = 274
          Top = 15
          Width = 70
          Height = 12
          Alignment = taCenter
          Caption = #48337#47749'('#51076#49345#51201')'
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label22: TLabel
          Left = 30
          Top = 41
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#50896#51064
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label31: TLabel
          Left = 30
          Top = 14
          Width = 60
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#45380#50900#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Shape44: TShape
          Left = 355
          Top = 14
          Width = 264
          Height = 21
          Pen.Color = clGradientActiveCaption
        end
        object Shape43: TShape
          Left = 144
          Top = 40
          Width = 475
          Height = 21
          Pen.Color = clGradientActiveCaption
        end
        object Shape30: TShape
          Left = 67
          Top = 326
          Width = 550
          Height = 60
          Pen.Color = clGradientActiveCaption
        end
        object CheckBox10: TCheckBox
          Left = 208
          Top = 16
          Width = 60
          Height = 17
          Caption = #48708#51201#50857
          TabOrder = 1
        end
        object Edit14: TMemo
          Left = 69
          Top = 328
          Width = 546
          Height = 57
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 2
        end
        object Edit15: TEdit
          Left = 357
          Top = 16
          Width = 259
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 3
          OnEnter = edtJindanEnter
        end
        object Memo4: TMemo
          Left = 34
          Top = 99
          Width = 575
          Height = 223
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 4
        end
        object Edit3: TEdit
          Left = 147
          Top = 43
          Width = 470
          Height = 17
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16775152
          Ctl3D = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object DateEdit1: TDateTimePicker
          Left = 107
          Top = 14
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676704490739211900
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = #49345#54644#51652#45800#49436
        ImageIndex = 4
        object Label33: TLabel
          Left = 424
          Top = 7
          Width = 72
          Height = 24
          Caption = #44397#51228#54364#51456#51656#48337#13#10#49324#51064#48516#47448
        end
        object Label49: TLabel
          Left = 50
          Top = 373
          Width = 124
          Height = 12
          Caption = #48337#48156#51613#48156#49373'    '#44032#45733#50668#48512
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object Label48: TLabel
          Left = 50
          Top = 333
          Width = 72
          Height = 12
          Caption = #54693#54980#52824#47308#51032#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label47: TLabel
          Left = 50
          Top = 307
          Width = 100
          Height = 12
          Caption = #52824#47308#47484#50836#54616#45716' '#44592#44036
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label45: TLabel
          Left = 50
          Top = 282
          Width = 72
          Height = 12
          Caption = #49885#49324#44032#45733#50668#48512
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label44: TLabel
          Left = 50
          Top = 261
          Width = 96
          Height = 12
          Caption = #53685#49345#54876#46041#44032#45733#50668#48512
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label43: TLabel
          Left = 50
          Top = 239
          Width = 48
          Height = 12
          Caption = #51077#50896#50668#48512
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label42: TLabel
          Left = 50
          Top = 218
          Width = 84
          Height = 12
          Caption = #50808#44284#51201#49688#49696#50668#48512
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label41: TLabel
          Left = 50
          Top = 161
          Width = 72
          Height = 12
          Caption = #51652#47308#44221#44284#51032#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label39: TLabel
          Left = 340
          Top = 125
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#51221#46020
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label38: TLabel
          Left = 48
          Top = 126
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#48512#50948
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label35: TLabel
          Left = 16
          Top = 95
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#50896#51064
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label36: TLabel
          Left = 304
          Top = 71
          Width = 60
          Height = 12
          Alignment = taCenter
          Caption = #52488#51652#45380#50900#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Label34: TLabel
          Left = 16
          Top = 71
          Width = 60
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#45380#50900#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel2: TLabel
          Left = 4
          Top = 307
          Width = 12
          Height = 72
          Alignment = taCenter
          Caption = #54693#54980#13#10#52824#47308#13#10#51032#44204
          Color = 16249062
          ParentColor = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel1: TLabel
          Left = 3
          Top = 166
          Width = 12
          Height = 108
          Alignment = taCenter
          Caption = #49345#54644#50640#13#10#13#10#45824#54620#13#10#13#10#49548#44204
          Color = 16249062
          ParentColor = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object Shape56: TShape
          Left = 47
          Top = 405
          Width = 587
          Height = 18
          Pen.Color = clGradientActiveCaption
        end
        object Shape42: TShape
          Left = 163
          Top = 376
          Width = 471
          Height = 28
          Pen.Color = clGradientActiveCaption
        end
        object Shape41: TShape
          Left = 163
          Top = 330
          Width = 471
          Height = 44
          Pen.Color = clGradientActiveCaption
        end
        object Shape40: TShape
          Left = 163
          Top = 281
          Width = 471
          Height = 20
          Pen.Color = clGradientActiveCaption
        end
        object Shape39: TShape
          Left = 163
          Top = 260
          Width = 471
          Height = 20
          Pen.Color = clGradientActiveCaption
        end
        object Shape38: TShape
          Left = 163
          Top = 239
          Width = 471
          Height = 20
          Pen.Color = clGradientActiveCaption
        end
        object Shape37: TShape
          Left = 163
          Top = 217
          Width = 471
          Height = 21
          Pen.Color = clGradientActiveCaption
        end
        object Shape36: TShape
          Left = 163
          Top = 158
          Width = 471
          Height = 58
          Pen.Color = clGradientActiveCaption
        end
        object Shape35: TShape
          Left = 399
          Top = 122
          Width = 235
          Height = 35
          Pen.Color = clGradientActiveCaption
        end
        object Shape34: TShape
          Left = 107
          Top = 122
          Width = 223
          Height = 35
          Pen.Color = clGradientActiveCaption
        end
        object Shape33: TShape
          Left = 107
          Top = 94
          Width = 527
          Height = 27
          Pen.Color = clGradientActiveCaption
        end
        object Shape32: TShape
          Left = 506
          Top = 5
          Width = 128
          Height = 61
          Pen.Color = clGradientActiveCaption
        end
        object Shape31: TShape
          Left = 149
          Top = 5
          Width = 269
          Height = 62
          Pen.Color = clGradientActiveCaption
        end
        object Label52: TLabel
          Left = 260
          Top = 309
          Width = 6
          Height = 12
          Caption = '-'
        end
        object Label46: TLabel
          Left = 371
          Top = 310
          Width = 116
          Height = 12
          Caption = #54693#54980' '#50557'             '#51452#44036
        end
        object Label50: TLabel
          Left = 13
          Top = 408
          Width = 24
          Height = 12
          Caption = #44592#53440
        end
        object Label37: TLabel
          Left = 14
          Top = 132
          Width = 24
          Height = 12
          Caption = #51613#49345
        end
        object btnSearchSangByung4: TButton
          Left = 12
          Top = 25
          Width = 133
          Height = 21
          Caption = #51652#45800#47749#44160#49353
          PopupMenu = SangMenu
          TabOrder = 4
          OnClick = btnSearchSangByung0Click
        end
        object edtSangCode2: TEdit
          Left = 424
          Top = 40
          Width = 78
          Height = 18
          ImeName = 'Microsoft IME 2003'
          TabOrder = 5
          Text = #49324#51064#51649#51217#51077#47141
          Visible = False
          OnEnter = edtSangCode2Enter
          OnExit = edtSangCode2Exit
          OnKeyPress = edtSangCode2KeyPress
        end
        object Edit18: TMemo
          Left = 108
          Top = 124
          Width = 221
          Height = 32
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          TabOrder = 6
        end
        object Edit19: TMemo
          Left = 400
          Top = 124
          Width = 233
          Height = 32
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          TabOrder = 7
        end
        object Edit17: TMemo
          Left = 108
          Top = 96
          Width = 525
          Height = 24
          BorderStyle = bsNone
          Color = 16775152
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imHanguel
          ImeName = 'Microsoft IME 2003'
          Lines.Strings = (
            '1'
            '2')
          MaxLength = 65
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object Edit20: TMemo
          Left = 164
          Top = 160
          Width = 469
          Height = 55
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          MaxLength = 400
          ScrollBars = ssVertical
          TabOrder = 9
        end
        object Edit21: TMemo
          Left = 164
          Top = 219
          Width = 469
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            '1')
          MaxLength = 66
          ParentFont = False
          TabOrder = 10
        end
        object Edit26: TMemo
          Left = 164
          Top = 332
          Width = 469
          Height = 41
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          MaxLength = 200
          TabOrder = 11
        end
        object Edit27: TMemo
          Left = 164
          Top = 378
          Width = 469
          Height = 25
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          MaxLength = 200
          TabOrder = 12
        end
        object Edit28: TMemo
          Left = 48
          Top = 407
          Width = 585
          Height = 15
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            #50500#50500#50500#50500)
          TabOrder = 13
        end
        object Edit25: TEdit
          Left = 418
          Top = 307
          Width = 22
          Height = 18
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 14
          OnKeyPress = Edit20KeyPress
        end
        object Edit24: TEdit
          Left = 164
          Top = 282
          Width = 469
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          MaxLength = 200
          ParentFont = False
          TabOrder = 15
          OnKeyPress = Edit20KeyPress
        end
        object Edit23: TEdit
          Left = 164
          Top = 261
          Width = 469
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          MaxLength = 200
          ParentFont = False
          TabOrder = 16
          OnKeyPress = Edit20KeyPress
        end
        object Edit22: TEdit
          Left = 164
          Top = 240
          Width = 469
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          MaxLength = 200
          ParentFont = False
          TabOrder = 17
          OnKeyPress = Edit20KeyPress
        end
        object lstSangCode4: TListBox
          Left = 507
          Top = 7
          Width = 126
          Height = 58
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 18
          OnDblClick = lstDangNameDblClick
        end
        object lstDangName4: TListBox
          Left = 150
          Top = 7
          Width = 267
          Height = 59
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ItemHeight = 14
          ParentFont = False
          TabOrder = 19
          OnDblClick = lstDangNameDblClick
        end
        object RadioButton4: TRadioButton
          Left = 74
          Top = 52
          Width = 71
          Height = 17
          Caption = #52572#51333#51652#45800
          TabOrder = 20
        end
        object RadioButton3: TRadioButton
          Left = 14
          Top = 52
          Width = 64
          Height = 17
          Caption = #51076#49345#51201
          Checked = True
          TabOrder = 21
          TabStop = True
        end
        object edtJindan4: TEdit
          Left = 12
          Top = 6
          Width = 133
          Height = 18
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 22
          Text = #51652#45800#47749#51649#51217#51077#47141
          Visible = False
          OnEnter = edtJindanEnter
          OnExit = edtJindanExit
          OnKeyPress = edtJindanKeyPress
        end
        object DateEdit6: TDateTimePicker
          Left = 270
          Top = 306
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676710648149310200
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 0
        end
        object DateEdit5: TDateTimePicker
          Left = 164
          Top = 306
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676718715280003300
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 1
        end
        object DateEdit4: TDateTimePicker
          Left = 384
          Top = 67
          Width = 117
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676723472221056000
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 2
        end
        object DateEdit2: TDateTimePicker
          Left = 107
          Top = 70
          Width = 126
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676727986108744600
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 3
        end
      end
      object TabSheet6: TTabSheet
        Caption = #51652#47308#48708#54869#51064#49436#48156#44553#45824#51109
        ImageIndex = 5
        object Panel25: TPanel
          Left = 0
          Top = 0
          Width = 1130
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          Color = 16513524
          TabOrder = 0
          object Label40: TLabel
            Left = 166
            Top = 4
            Width = 10
            Height = 19
            Caption = '-'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #44417#49436
            Font.Style = []
            ParentFont = False
          end
          object wLabel3: TLabel
            Left = 3
            Top = 5
            Width = 48
            Height = 12
            Alignment = taCenter
            Caption = #48156#54665#51068#51088
            Color = 16772055
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object wDateEdit5: TDateTimePicker
            Left = 67
            Top = 4
            Width = 97
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676733668980887200
            Color = 16248558
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 0
          end
          object wDateEdit6: TDateTimePicker
            Left = 181
            Top = 4
            Width = 97
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676740810187766300
            Color = 16248558
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 1
          end
        end
        object grdList4: TAdvStringGrid
          Left = 0
          Top = 29
          Width = 1130
          Height = 498
          Cursor = crDefault
          Align = alClient
          Ctl3D = True
          DrawingStyle = gdsClassic
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #52264#53944#48264#54840
            #49457#47749
            #48156#54665#51068#51088
            #51312#54868#44592#44036)
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
          Version = '8.4.4.1'
          ColWidths = (
            64
            128
            135
            208
            339)
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
      object TabSheet7: TTabSheet
        Caption = #50896#50808#52376#48169#51204#48156#44553#45824#51109
        ImageIndex = 6
        object Panel26: TPanel
          Left = 0
          Top = 0
          Width = 1130
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          Color = 16513524
          TabOrder = 0
          object Label51: TLabel
            Left = 170
            Top = 5
            Width = 10
            Height = 19
            Caption = '-'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #44417#49436
            Font.Style = []
            ParentFont = False
          end
          object wLabel7: TLabel
            Left = 3
            Top = 5
            Width = 48
            Height = 12
            Alignment = taCenter
            Caption = #51312#54924#44592#44036
            Color = 16772055
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object wDateEdit7: TDateTimePicker
            Left = 67
            Top = 4
            Width = 97
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676747650461038600
            Color = 16248558
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 0
          end
          object wDateEdit8: TDateTimePicker
            Left = 187
            Top = 4
            Width = 97
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676763981478870800
            Color = 16248558
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 1
          end
        end
        object grdList5: TAdvStringGrid
          Left = 0
          Top = 29
          Width = 1130
          Height = 498
          Cursor = crDefault
          Align = alClient
          ColCount = 7
          Ctl3D = True
          DrawingStyle = gdsClassic
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #51652#47308#51068#51088
            #48512#50668#48264#54840
            #52264#53944#48264#54840
            #49457#47749
            #51452#48124#48264#54840
            #49324#50857#44592#44036)
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
          Version = '8.4.4.1'
          ColWidths = (
            64
            94
            117
            126
            139
            173
            145)
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
      object TabSheet8: TTabSheet
        Caption = #47928#49436#48156#44553#45824#51109
        ImageIndex = 7
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 1130
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Color = 16513524
          TabOrder = 0
          object Label53: TLabel
            Left = 178
            Top = 6
            Width = 10
            Height = 19
            Caption = '-'
            Color = 16249079
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #44417#49436
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object wLabel4: TLabel
            Left = 11
            Top = 8
            Width = 48
            Height = 12
            Alignment = taCenter
            Caption = #51312#54924#44592#44036
            Color = 16772055
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object CheckBox4: TCheckBox
            Left = 425
            Top = 27
            Width = 87
            Height = 17
            Caption = #51652#47308#54869#51064#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Visible = False
          end
          object CheckBox2: TCheckBox
            Left = 82
            Top = 27
            Width = 94
            Height = 17
            Caption = #52824#47308#44228#54925#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
          object CheckBox1: TCheckBox
            Left = 182
            Top = 27
            Width = 59
            Height = 17
            Caption = #49548#44204#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object CheckBox3: TCheckBox
            Left = 321
            Top = 27
            Width = 88
            Height = 17
            Caption = #51652#47308#51032#47280#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
          end
          object CheckBox8: TCheckBox
            Left = 426
            Top = 45
            Width = 90
            Height = 17
            Caption = #51068#48152#51652#45800#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
          end
          object CheckBox7: TCheckBox
            Left = 321
            Top = 45
            Width = 92
            Height = 17
            Caption = #49345#54644#51652#45800#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
          end
          object CheckBox6: TCheckBox
            Left = 182
            Top = 45
            Width = 129
            Height = 17
            Caption = #54693#54980#52824#47308#48708#52628#51221#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
          end
          object CheckBox5: TCheckBox
            Left = 82
            Top = 45
            Width = 90
            Height = 17
            Caption = '(     )'#54869#51064#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Visible = False
          end
          object CheckBox11: TCheckBox
            Left = 522
            Top = 45
            Width = 90
            Height = 17
            Caption = #48337#49324#50857#51652#45800#49436
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Visible = False
          end
          object wDateEdit9: TDateTimePicker
            Left = 75
            Top = 7
            Width = 97
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676769745368801500
            Color = 16248558
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 9
          end
          object wDateEdit10: TDateTimePicker
            Left = 195
            Top = 7
            Width = 97
            Height = 20
            Date = 43279.000000000000000000
            Time = 0.676777245367702500
            Color = 16248558
            ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
            TabOrder = 10
          end
        end
        object grdList6: TAdvStringGrid
          Left = 0
          Top = 33
          Width = 1130
          Height = 494
          Cursor = crDefault
          Align = alClient
          ColCount = 8
          Ctl3D = True
          DrawingStyle = gdsClassic
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goTabs, goRowSelect]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          HoverRowCells = [hcNormal, hcSelected]
          OnDblClickCell = grdList6DblClickCell
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            ''
            #50672#48264
            #51333#47448
            #52264#53944#48264#54840
            #49457#47749
            #49345#48337#47749
            #48156#44553#51068#51088
            #45812#45817#51032#49324)
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
          FixedColWidth = 32
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
          Version = '8.4.4.1'
          ColWidths = (
            32
            81
            117
            126
            88
            179
            79
            93)
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
      object TabSheet9: TTabSheet
        Caption = #48169#49324#49440#52524#50689#45824#51109
        ImageIndex = 8
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 1130
          Height = 527
          ActivePage = TabSheet13
          Align = alClient
          TabOrder = 0
          object TabSheet11: TTabSheet
            Caption = #48169#49324#49440#52524#50689#45824#51109
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 1122
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Color = 16513524
              TabOrder = 0
              object wDateEdit1: TDateTimePicker
                Left = 8
                Top = 6
                Width = 93
                Height = 20
                Date = 43279.000000000000000000
                Time = 0.676782974529487500
                ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
                TabOrder = 0
              end
              object wDateEdit2: TDateTimePicker
                Left = 116
                Top = 6
                Width = 95
                Height = 20
                Date = 43279.000000000000000000
                Time = 0.676788865741400600
                ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
                TabOrder = 1
              end
            end
            object grdList1: TAdvStringGrid
              Left = 0
              Top = 33
              Width = 1122
              Height = 466
              Cursor = crDefault
              Align = alClient
              ColCount = 9
              Ctl3D = True
              DrawingStyle = gdsClassic
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 1
              HoverRowCells = [hcNormal, hcSelected]
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ColumnHeaders.Strings = (
                ''
                #51068#51088
                #52264#53944#48264#54840
                #49457#47749
                #49457#48324
                #45208#51060
                #52524#50689#45236#50669
                #47588#49688
                #52524#50689#48512#50948)
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
              FixedColWidth = 32
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
              Version = '8.4.4.1'
              ColWidths = (
                32
                86
                150
                110
                42
                39
                173
                57
                174)
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
          object TabSheet12: TTabSheet
            Caption = #48169#49324#49440#52524#50689#53685#44228
            ImageIndex = 1
            object Panel9: TPanel
              Left = 0
              Top = 29
              Width = 1122
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              BorderStyle = bsSingle
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object Panel10: TPanel
                Left = 489
                Top = 0
                Width = 32
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = #44228
                Color = 15528937
                TabOrder = 0
              end
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 33
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Color = 15528937
                TabOrder = 1
              end
              object Panel12: TPanel
                Left = 451
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '12'#50900
                Color = 15528937
                TabOrder = 2
              end
              object Panel13: TPanel
                Left = 413
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '11'#50900
                Color = 15528937
                TabOrder = 3
              end
              object Panel14: TPanel
                Left = 375
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '10'#50900
                Color = 15528937
                TabOrder = 4
              end
              object Panel15: TPanel
                Left = 337
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '9'#50900
                Color = 15528937
                TabOrder = 5
              end
              object Panel16: TPanel
                Left = 299
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '8'#50900
                Color = 15528937
                TabOrder = 6
              end
              object Panel17: TPanel
                Left = 261
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '7'#50900
                Color = 15528937
                TabOrder = 7
              end
              object Panel18: TPanel
                Left = 223
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '6'#50900
                Color = 15528937
                TabOrder = 8
              end
              object Panel19: TPanel
                Left = 185
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '5'#50900
                Color = 15528937
                TabOrder = 9
              end
              object Panel20: TPanel
                Left = 147
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '4'#50900
                Color = 15528937
                TabOrder = 10
              end
              object Panel21: TPanel
                Left = 109
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '3'#50900
                Color = 15528937
                TabOrder = 11
              end
              object Panel22: TPanel
                Left = 71
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '2'#50900
                Color = 15528937
                TabOrder = 12
              end
              object Panel23: TPanel
                Left = 33
                Top = 0
                Width = 38
                Height = 19
                Align = alLeft
                BevelOuter = bvNone
                Caption = '1'#50900
                Color = 15528937
                TabOrder = 13
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 1122
              Height = 29
              Align = alTop
              BevelOuter = bvNone
              Color = 16513524
              TabOrder = 1
              object ComboBox2: TComboBox
                Left = 10
                Top = 4
                Width = 71
                Height = 20
                ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
                TabOrder = 0
                Items.Strings = (
                  '2002'
                  '2003'
                  '2004'
                  '2005'
                  '2006'
                  '2007'
                  '2008'
                  '2009'
                  '2010'
                  '2011')
              end
            end
            object grdList2: TAdvStringGrid
              Left = 0
              Top = 50
              Width = 1122
              Height = 449
              Cursor = crDefault
              Align = alClient
              ColCount = 38
              Ctl3D = True
              DefaultColWidth = 38
              DrawingStyle = gdsClassic
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 2
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
              FixedColWidth = 38
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
              Version = '8.4.4.1'
              ColWidths = (
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38
                38)
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
          object TabSheet13: TTabSheet
            Caption = #51068#51088#48324' '#48169#49324#49440' '#53685#44228
            ImageIndex = 2
            object Panel24: TPanel
              Left = 0
              Top = 0
              Width = 1122
              Height = 29
              Align = alTop
              BevelOuter = bvNone
              Color = 16513524
              TabOrder = 0
              object wDateEdit3: TDateTimePicker
                Left = 8
                Top = 4
                Width = 93
                Height = 20
                Date = 43279.000000000000000000
                Time = 0.676794930557662200
                ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
                TabOrder = 0
              end
              object wDateEdit4: TDateTimePicker
                Left = 112
                Top = 4
                Width = 95
                Height = 20
                Date = 43279.000000000000000000
                Time = 0.676803171292704100
                ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
                TabOrder = 1
              end
            end
            object grdList3: TAdvStringGrid
              Left = 0
              Top = 29
              Width = 1122
              Height = 470
              Cursor = crDefault
              Align = alClient
              Ctl3D = True
              DrawingStyle = gdsClassic
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 1
              HoverRowCells = [hcNormal, hcSelected]
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ColumnHeaders.Strings = (
                ''
                #51068#51088
                #45224
                #50668
                #54633#44228)
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
              FixedColWidth = 32
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
              Version = '8.4.4.1'
              ColWidths = (
                32
                94
                125
                131
                119)
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
        end
      end
      object TabSheet10: TTabSheet
        Caption = #48337#49324#50857#51652#45800#49436
        ImageIndex = 9
        object Shape24: TShape
          Left = 91
          Top = 10
          Width = 358
          Height = 20
          Pen.Color = clGradientActiveCaption
        end
        object Shape25: TShape
          Left = 91
          Top = 34
          Width = 358
          Height = 20
          Pen.Color = clGradientActiveCaption
        end
        object Shape45: TShape
          Left = 123
          Top = 61
          Width = 471
          Height = 28
          Pen.Color = clGradientActiveCaption
        end
        object Shape46: TShape
          Left = 123
          Top = 92
          Width = 471
          Height = 59
          Pen.Color = clGradientActiveCaption
        end
        object Shape47: TShape
          Left = 123
          Top = 154
          Width = 471
          Height = 44
          Pen.Color = clGradientActiveCaption
        end
        object Shape48: TShape
          Left = 123
          Top = 201
          Width = 471
          Height = 44
          Pen.Color = clGradientActiveCaption
        end
        object Shape49: TShape
          Left = 123
          Top = 276
          Width = 471
          Height = 44
          Pen.Color = clGradientActiveCaption
        end
        object Shape50: TShape
          Left = 123
          Top = 323
          Width = 471
          Height = 45
          Pen.Color = clGradientActiveCaption
        end
        object Shape51: TShape
          Left = 123
          Top = 371
          Width = 328
          Height = 37
          Pen.Color = clGradientActiveCaption
        end
        object wLabel5: TLabel
          Left = 20
          Top = 11
          Width = 46
          Height = 12
          Alignment = taCenter
          Caption = #48337'('#49345')'#47749
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel6: TLabel
          Left = 454
          Top = 10
          Width = 60
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#45380#50900#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel8: TLabel
          Left = 20
          Top = 35
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #48156#48337#51109#49548
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel10: TLabel
          Left = 454
          Top = 37
          Width = 60
          Height = 12
          Alignment = taCenter
          Caption = #52488#51652#45380#50900#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel11: TLabel
          Left = 20
          Top = 63
          Width = 48
          Height = 12
          Alignment = taCenter
          Caption = #49345#54644#50896#51064
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object wLabel12: TLabel
          Left = 20
          Top = 94
          Width = 158
          Height = 12
          Caption = #51613#49345' '#48143' '#48337'('#49345#54644')'#50640' '#45824#54620' '#49548#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel13: TLabel
          Left = 20
          Top = 156
          Width = 112
          Height = 12
          Caption = #54788#51116#44620#51648#51032' '#52824#47308#44221#44284
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel14: TLabel
          Left = 20
          Top = 203
          Width = 172
          Height = 12
          Caption = #54788#51116#44620#51648#51032' '#51068#48152#49345#53468#50752#50868#46041#45733#47141
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel15: TLabel
          Left = 20
          Top = 251
          Width = 124
          Height = 12
          Caption = #44228#49549#52824#47308#47484' '#50836#54616#45716#44592#44036
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel16: TLabel
          Left = 20
          Top = 278
          Width = 108
          Height = 12
          Caption = #54693#54980#52824#47308#50640#45824#54620#51032#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel17: TLabel
          Left = 20
          Top = 325
          Width = 172
          Height = 12
          Caption = #52824#47308#54980#51032' '#49900#49888'   '#51109#50528#50640#44288#54620#51032#44204
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel18: TLabel
          Left = 20
          Top = 373
          Width = 16
          Height = 48
          Alignment = taCenter
          Caption = #48337#47749' '#45236#50857
          Color = 16249062
          ParentColor = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel19: TLabel
          Left = 20
          Top = 388
          Width = 48
          Height = 12
          Caption = #44160#49324#54637#47785
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
        end
        object wLabel20: TLabel
          Left = 460
          Top = 373
          Width = 60
          Height = 12
          Alignment = taCenter
          Caption = #44160#49324#45380#50900#51068
          Color = 16772055
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object Edit11: TEdit
          Left = 92
          Top = 36
          Width = 354
          Height = 17
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 0
          OnEnter = edtJindanEnter
        end
        object Edit29: TMemo
          Left = 124
          Top = 63
          Width = 469
          Height = 25
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          TabOrder = 1
        end
        object Edit30: TMemo
          Left = 124
          Top = 94
          Width = 469
          Height = 56
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object Edit31: TMemo
          Left = 124
          Top = 156
          Width = 469
          Height = 41
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object Edit32: TMemo
          Left = 124
          Top = 203
          Width = 469
          Height = 41
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          ScrollBars = ssVertical
          TabOrder = 4
        end
        object RadioButton5: TRadioButton
          Left = 166
          Top = 254
          Width = 76
          Height = 17
          Caption = '3'#44060#50900#48120#47564
          Checked = True
          TabOrder = 5
          TabStop = True
        end
        object RadioButton6: TRadioButton
          Left = 243
          Top = 254
          Width = 75
          Height = 17
          Caption = '3'#44060#50900#51060#49345
          TabOrder = 6
        end
        object RadioButton7: TRadioButton
          Left = 320
          Top = 254
          Width = 75
          Height = 17
          Caption = '6'#44060#50900#51060#49345
          TabOrder = 7
        end
        object RadioButton8: TRadioButton
          Left = 398
          Top = 254
          Width = 67
          Height = 17
          Caption = '1'#45380#51060#49345
          TabOrder = 8
        end
        object RadioButton9: TRadioButton
          Left = 465
          Top = 254
          Width = 51
          Height = 17
          Caption = #44592#53440
          TabOrder = 9
        end
        object Edit13: TEdit
          Left = 516
          Top = 253
          Width = 76
          Height = 18
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 10
          OnEnter = edtJindanEnter
        end
        object Edit33: TMemo
          Left = 124
          Top = 278
          Width = 469
          Height = 41
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          ScrollBars = ssVertical
          TabOrder = 11
        end
        object Edit34: TMemo
          Left = 124
          Top = 326
          Width = 469
          Height = 41
          BorderStyle = bsNone
          Color = 16775152
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          Lines.Strings = (
            'Memo5')
          TabOrder = 12
        end
        object Edit16: TEdit
          Left = 124
          Top = 373
          Width = 326
          Height = 34
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 13
          OnEnter = edtJindanEnter
        end
        object Edit6: TEdit
          Left = 92
          Top = 12
          Width = 354
          Height = 17
          BorderStyle = bsNone
          Color = 16775152
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 5263440
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          ParentFont = False
          TabOrder = 14
          OnEnter = edtJindanEnter
        end
        object DateEdit7: TDateTimePicker
          Left = 540
          Top = 10
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676809432872687500
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 15
        end
        object DateEdit8: TDateTimePicker
          Left = 540
          Top = 35
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676816307866829400
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 16
        end
        object DateEdit9: TDateTimePicker
          Left = 542
          Top = 373
          Width = 93
          Height = 20
          Date = 43279.000000000000000000
          Time = 0.676822673609422100
          ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
          TabOrder = 17
        end
      end
      object TabSheet14: TTabSheet
        Caption = #50689#47928#51652#45800#49436
        ImageIndex = 10
        object Label28: TLabel
          Left = 19
          Top = 26
          Width = 153
          Height = 12
          Caption = 'To Whom It May Concern :'
        end
        object Label58: TLabel
          Left = 20
          Top = 55
          Width = 42
          Height = 12
          Caption = 'Name :'
        end
        object Label59: TLabel
          Left = 19
          Top = 83
          Width = 76
          Height = 12
          Caption = 'Date of Birth :'
        end
      end
    end
  end
  object SangMenu: TPopupMenu
    AutoHotkeys = maManual
    Left = 576
    Top = 38
    object N1: TMenuItem
      Caption = #51088#51452#49324#50857#54616#45716#49345#48337
      object K040: TMenuItem
        Caption = 'K04.0 '#52824#49688#50684
        OnClick = K040Click
      end
      object K0211: TMenuItem
        Caption = 'K02.1 '#49345#50500#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object K0531: TMenuItem
        Caption = 'K05.3 '#47564#49457' '#52824#51452#50684
        OnClick = K040Click
      end
      object K0471: TMenuItem
        Caption = 'K04.7 '#46041#51060#50630#45716' '#44540#45800#51452#50948' '#45453#50577
        OnClick = K040Click
      end
      object K0061: TMenuItem
        Caption = 'K00.6 '#52824#50500#47609#52636#51109#50528
        OnClick = K040Click
      end
      object K0203: TMenuItem
        Caption = 'K02.0 '#48277#46993#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object K0831: TMenuItem
        Caption = 'K08.3 '#51092#51316#52824#44540
        OnClick = K040Click
      end
      object K0521: TMenuItem
        Caption = 'K05.2 '#44553#49457' '#52824#51452#50684
        OnClick = K040Click
      end
      object K0381: TMenuItem
        Caption = 'K03.8 '#44592#53440' '#47749#49884#46108' '#52824#50500#44221#51312#51649#51032#51656#54872
        OnClick = K040Click
      end
      object K0441: TMenuItem
        Caption = 'K04.4 '#52824#49688#44592#50896#51032' '#44553#49457' '#44540#45800#49457' '#52824#51452#50684
        OnClick = K040Click
      end
      object K0451: TMenuItem
        Caption = 'K04.5 '#47564#49457#44540#45800#49457#52824#51452#50684
        OnClick = K040Click
      end
      object K0551: TMenuItem
        Caption = 'K05.5 '#52824#52628' '#51656#54872
        OnClick = K040Click
      end
      object K0111: TMenuItem
        Caption = 'K01.1 '#47588#48373#52824
        OnClick = K040Click
      end
      object S0251: TMenuItem
        Caption = 'S02.5 '#52824#50500#51032' '#54028#51208
        OnClick = K040Click
      end
      object K0001: TMenuItem
        Caption = 'K00.0 '#47924#52824#51613
        OnClick = K040Click
      end
      object K0331: TMenuItem
        Caption = 'K03.3 '#52824#50500#51032#48337#47532#51201#55137#49688#51613
        OnClick = K040Click
      end
    end
    object AF1: TMenuItem
      Caption = 'A.F'
      object K0202: TMenuItem
        Caption = 'K02   '#52824#50500#50864#49885#51613
        OnClick = K040Click
      end
      object K0201: TMenuItem
        Caption = 'K02.0 '#48277#46993#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object K0212: TMenuItem
        Caption = 'K02.1 '#49345#50500#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object K0231: TMenuItem
        Caption = 'K02.3 '#51221#51648#46108' '#52824#50500#50864#49885#51613
        OnClick = K040Click
      end
    end
    object Endo1: TMenuItem
      Caption = 'Endo'
      object K0401: TMenuItem
        Caption = 'K04.0 '#52824#49688#50684
        OnClick = K040Click
      end
      object K0411: TMenuItem
        Caption = 'K04.1 '#52824#49688#51032' '#44340#49324
        OnClick = K040Click
      end
      object K0421: TMenuItem
        Caption = 'K04.2 '#52824#49688#51032' '#48320#49457
        OnClick = K040Click
      end
      object K0431: TMenuItem
        Caption = 'K04.3 '#52824#49688#45236#51060#49345#44221#51312#51649#54805#49457
        OnClick = K040Click
      end
      object K0442: TMenuItem
        Caption = 'K04.4 '#44553#49457#44540#45800#49457' '#52824#51452#50684
        OnClick = K040Click
      end
      object K0222: TMenuItem
        Caption = 'K02.2 '#48177#50501#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object S0252: TMenuItem
        Caption = 'S02.5 '#52824#50500#51032' '#54028#51208
        OnClick = K040Click
      end
      object K0472: TMenuItem
        Caption = 'K04.7 '#46041#51060#50630#45716' '#44540#45800#51452#50948' '#45453#50577
        OnClick = K040Click
      end
      object K0452: TMenuItem
        Caption = 'K04.5 '#47564#49457#44540#45800#49457#52824#51452#50684
      end
    end
    object N2: TMenuItem
      Caption = #48156#52824
      object K0532: TMenuItem
        Caption = 'K05.3 '#47564#49457#52824#51452#50684
        OnClick = K040Click
      end
      object K0412: TMenuItem
        Caption = 'K04.1 '#52824#49688#51032' '#44340#49324
        OnClick = K040Click
      end
      object K0473: TMenuItem
        Caption = 'K04.7 '#46041#51060#50630#45716' '#44540#45800#51452#50948' '#45453#50577
        OnClick = K040Click
      end
      object K0481: TMenuItem
        Caption = 'K04.8 '#52824#44540#45229
        OnClick = K040Click
      end
      object K0232: TMenuItem
        Caption = 'K02.3 '#51221#51648#46108' '#52824#50500#50864#49885#51613
        OnClick = K040Click
      end
      object K0832: TMenuItem
        Caption = 'K08.3 '#51092#51316#52824#44540
        OnClick = K040Click
      end
      object S0256: TMenuItem
        Caption = 'S02.5 '#52824#50500#51032' '#54028#51208
        OnClick = K040Click
      end
      object K0062: TMenuItem
        Caption = 'K00.6 '#52824#50500#47609#52636#51032' '#51109#50528
        OnClick = K040Click
      end
      object K0112: TMenuItem
        Caption = 'K01.1 '#47588#48373#52824
        OnClick = K040Click
      end
      object K0011: TMenuItem
        Caption = 'K00.1 '#44284#51081#52824
        OnClick = K040Click
      end
      object K0041: TMenuItem
        Caption = 'K00.4 '#52824#50500#54805#49457#51032' '#51109#50528
        OnClick = K040Click
      end
      object K1021: TMenuItem
        Caption = 'K10.2 '#50501#44264' '#50684#51613#49457' '#48337#53468
        OnClick = K040Click
      end
      object K0241: TMenuItem
        Caption = 'K02.4 '#54028#52824#51613
      end
    end
    object omy1: TMenuItem
      Caption = 'Tomy'
      object K0402: TMenuItem
        Caption = 'K04.0 '#52824#49688#50684
        OnClick = K040Click
      end
      object K0223: TMenuItem
        Caption = 'K02.2 '#48177#50501#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
    end
    object N3: TMenuItem
      Caption = #45236#49548#50684
      object K0474: TMenuItem
        Caption = 'K04.7 '#46041#51060#50630#45716' '#44540#45800#51452#50948' '#45453#50577
        OnClick = K040Click
      end
      object K0522: TMenuItem
        Caption = 'K05.2 '#44553#49457#52824#51452#50684
        OnClick = K040Click
      end
      object K1022: TMenuItem
        Caption = 'K10.2 '#50501#44264#50684#51613#49457' '#48337#53468
        OnClick = K040Click
      end
      object K1131: TMenuItem
        Caption = 'K11.3 '#53440#50529#49440#51032' '#45453#50577
        OnClick = K040Click
      end
    end
    object N4: TMenuItem
      Caption = #51648#44033#44284#48124#52376#52824
      object K0301: TMenuItem
        Caption = 'K03.0 '#52824#50500#51032' '#44284#44368#47784#51613
        OnClick = K040Click
      end
      object K0311: TMenuItem
        Caption = 'K03.1 '#52824#50500#51032' '#47560#47784#51613
        OnClick = K040Click
      end
      object K0321: TMenuItem
        Caption = 'K03.2 '#52824#50500#51032' '#52840#49885#51613
        OnClick = K040Click
      end
      object K0382: TMenuItem
        Caption = 'K03.8 '#44592#53440#47749#49884#52824#50500#51312#51649#51656#54872
        OnClick = K040Click
      end
      object S0253: TMenuItem
        Caption = 'S02.5 '#52824#50500#51032' '#54028#51208
        OnClick = K040Click
      end
    end
    object N5: TMenuItem
      Caption = #52824#49688#48373#51312
      object K0224: TMenuItem
        Caption = 'K02.2 '#48177#50501#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object K0213: TMenuItem
        Caption = 'K02.1 '#49345#50500#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
    end
    object N6: TMenuItem
      Caption = #52824#51008#51208#51228
      object K0533: TMenuItem
        Caption = 'K05.3 '#47564#49457' '#52824#51452#50684
        OnClick = K040Click
      end
      object K0611: TMenuItem
        Caption = 'K06.1 '#52824#51008#48708#45824
        OnClick = K040Click
      end
    end
    object N7: TMenuItem
      Caption = #52824#49437#51228#44144
      object K0511: TMenuItem
        Caption = 'K05.1 '#47564#49457' '#52824#51008#50684
        OnClick = K040Click
      end
      object K0552: TMenuItem
        Caption = 'K05.5 '#44592#53440' '#52824#51452#51656#54872
        OnClick = K040Click
      end
      object K0534: TMenuItem
        Caption = 'K05.3 '#47564#49457' '#52824#51452#50684
        OnClick = K040Click
      end
      object K0541: TMenuItem
        Caption = 'K05.4 '#52824#51452#51613
        OnClick = K040Click
      end
      object K0361: TMenuItem
        Caption = 'K03.6 '#52824#50500#51032' '#52840#52265#47932
        OnClick = K040Click
      end
    end
    object N8: TMenuItem
      Caption = #44368#54633#51312#51221#49696
      object K0021: TMenuItem
        Caption = 'K00.2 '#52824#50500#53356#44592#50752#54805#53468#51060#49345
        OnClick = K040Click
      end
      object K0535: TMenuItem
        Caption = 'K05.3 '#47564#49457#52824#51452#50684
        OnClick = K040Click
      end
      object K0721: TMenuItem
        Caption = 'K07.2 '#52824#50676#44417#44288#44228' '#51060#49345
        OnClick = K040Click
      end
      object K0731: TMenuItem
        Caption = 'K07.3 '#52824#50500#50948#52824#51032' '#51060#49345
        OnClick = K040Click
      end
      object K0761: TMenuItem
        Caption = 'K07.6 '#52769#46160#54616#50501#44288#51208#51109#50528
        OnClick = K040Click
      end
      object S0254: TMenuItem
        Caption = 'S02.5 '#52824#50500#51032' '#54028#51208
        OnClick = K040Click
      end
    end
    object N9: TMenuItem
      Caption = #44592#53440
      object K0225: TMenuItem
        Caption = 'K02.2 '#48177#50501#51656#51032' '#50864#49885#51613
        OnClick = K040Click
      end
      object K0501: TMenuItem
        Caption = 'K05.0 '#44553#49457#52824#51008#50684
        OnClick = K040Click
      end
      object K0512: TMenuItem
        Caption = 'K05.1 '#47564#49457#52824#51008#50684
        OnClick = K040Click
      end
      object K0561: TMenuItem
        Caption = 'K05.6 '#49345#49464#48520#47749#52824#51452#51656#54872
        OnClick = K040Click
      end
      object K0881: TMenuItem
        Caption = 'K08.8 '#48520#44508#52825#54620#52824#51312#46028#44592
        OnClick = K040Click
      end
      object K0012: TMenuItem
        Caption = 'K00.1 '#44284#51081#52824
        OnClick = K040Click
      end
      object K0022: TMenuItem
        Caption = 'K00.2 '#52824#50500#51032' '#53356#44592#50752' '#54805#53468#51060#49345
        OnClick = K040Click
      end
      object K0302: TMenuItem
        Caption = 'K03.0 '#52824#50500#51032' '#44284#44368#47784#51613
        OnClick = K040Click
      end
      object K0312: TMenuItem
        Caption = 'K03.1 '#52824#50500#51032' '#47560#47784#51613
        OnClick = K040Click
      end
      object K0413: TMenuItem
        Caption = 'K04.1 '#52824#49688#51032' '#44340#49324
        OnClick = K040Click
      end
      object K0422: TMenuItem
        Caption = 'K04.2 '#52824#49688#51032' '#48320#49457
        OnClick = K040Click
      end
      object K0461: TMenuItem
        Caption = 'K04.6 '#46041#51060#51080#45716#44540#45800#51452#50948#45453#50577
        OnClick = K040Click
      end
      object K0482: TMenuItem
        Caption = 'K04.8 '#52824#44540#45229
        OnClick = K040Click
      end
      object K120: TMenuItem
        Caption = 'K12.0 '#51116#48156#49457#44396#44053#50500#54532#53440
        OnClick = K040Click
      end
      object K1401: TMenuItem
        Caption = 'K14.0 '#49444#50684
        OnClick = K040Click
      end
      object K0281: TMenuItem
        Caption = 'K02.8 '#44592#53440#52824#50500#50864#49885#51613
        OnClick = K040Click
      end
      object K0291: TMenuItem
        Caption = 'K02.9 '#49345#49464#48520#47749#52824#50500#50864#49885#51613
        OnClick = K040Click
      end
      object K0042: TMenuItem
        Caption = 'K00.4 '#47564#44257#52824
        OnClick = K040Click
      end
      object K1211: TMenuItem
        Caption = 'K12.1 '#44396#44053#45236#51032#44592#53440#48337#53468
        OnClick = K040Click
      end
      object K0612: TMenuItem
        Caption = 'K06.1 '#52824#51008#48708#45824
        OnClick = K040Click
      end
      object K0542: TMenuItem
        Caption = 'K05.4 '#52824#51452#51613
        OnClick = K040Click
      end
      object K0322: TMenuItem
        Caption = 'K03.2 '#52824#50500#51032' '#52840#49885#51613
        OnClick = K040Click
      end
      object K0031: TMenuItem
        Caption = 'K00.3 '#48152#49345#52824
        OnClick = K040Click
      end
      object K0081: TMenuItem
        Caption = 'K00.8 '#44592#53440#52824#50500#48156#50977#51032#51109#50528
        OnClick = K040Click
      end
      object K1132: TMenuItem
        Caption = 'K11.3 '#53440#50529#49440#51032#45453#50577
        OnClick = K040Click
      end
      object K1301: TMenuItem
        Caption = 'K13.0 '#51077#49696#51032#51656#54872
        OnClick = K040Click
      end
      object K0491: TMenuItem
        Caption = 'K04.9 '#52824#49688#52824#44540#45800#51452#50948#51032#49345#49464#48520#47749
        OnClick = K040Click
      end
      object K1031: TMenuItem
        Caption = 'K10.3 '#50501#44264#51032#52824#51312#50684
        OnClick = K040Click
      end
      object K0762: TMenuItem
        Caption = 'K07.6 '#52769#46160#54616#50501#44288#51208#51109#50528
        OnClick = K040Click
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #51204#52404#49345#48337#48372#44592
    end
  end
  object frxReport: TfrxReport
    Version = '6.3.5'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 100000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #65533#11963#65533#65533
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38867.565057500010000000
    ReportOptions.LastChange = 43798.670203553240000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 757
    Top = 30
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 843
    Top = 25
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 844
    Top = 245
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.INI'
    SaveKey = 'document_form'
    Version = '1.4.1.4'
    Left = 179
    Top = 37
  end
end
