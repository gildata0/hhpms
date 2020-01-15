object optionSet_f: ToptionSet_f
  Left = 51
  Top = 101
  BorderIcons = [biSystemMenu]
  Caption = 'optionSet_f'
  ClientHeight = 781
  ClientWidth = 1444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object EllipsLabel235: TLabel
    Left = 16
    Top = 607
    Width = 185
    Height = 21
    AutoSize = False
    Caption = #9679#52824#49885#49353' '#51648#51221'('#49345#50501')'
    Transparent = True
  end
  object pcOption: TAdvPageControl
    Left = 185
    Top = 35
    Width = 1259
    Height = 746
    ActivePage = AdvTabSheet2
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Align = alClient
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabBorder3D = True
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.1.7'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    OnCanChange = pcOptionCanChange
    object AdvTabSheet2: TAdvTabSheet
      Caption = #44592#48376' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 3
      object Label1: TLabel
        Left = 659
        Top = 47
        Width = 11
        Height = 13
        Caption = #45380
        Transparent = True
      end
      object Label2: TLabel
        Left = 724
        Top = 47
        Width = 11
        Height = 13
        Caption = #50900
        Transparent = True
      end
      object Label3: TLabel
        Left = 789
        Top = 47
        Width = 11
        Height = 13
        Caption = #51068
      end
      object lblJumin: TLabel
        Left = 123
        Top = 5
        Width = 37
        Height = 13
        Caption = 'lblJumin'
      end
      object Label5: TLabel
        Left = 435
        Top = 600
        Width = 108
        Height = 26
        Caption = #8251#48320#44221' '#54980' '#54532#47196#44536#47016#51012' '#13#10'    '#51116#49884#51089' '#54616#49901#49884#50724'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 435
        Top = 630
        Width = 80
        Height = 13
        Caption = #51064#51613#49436' '#46321#47197#50504#45236
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 435
        Top = 649
        Width = 341
        Height = 39
        Caption = 
          #51064#51613#49436#45716' '#44148#44053#48372#54744#44277#45800#44284'  '#49900#49324#54217#44032#50896' '#46160#44400#45936#50640' '#46321#47197#51012' '#54616#49492#50556#54633#45768#45796'.'#13#10'http://www.hira.or.kr '#47700#51064#52285' ' +
          #44277#51064#51064#51613#49436' '#46321#47197#13#10'http://medi.nhis.or.kr '#47700#51064#52285' '#44277#51064#51064#51613#49436' '#46321#47197
      end
      object spSkinLabel2: TLabel
        Left = 16
        Top = 46
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#48337#50896#47749'('#54620#44544')'
        Transparent = True
      end
      object spSkinLabel3: TLabel
        Left = 430
        Top = 20
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#49457#47749'('#54620#44544')'
        Transparent = True
      end
      object spSkinLabel4: TLabel
        Left = 430
        Top = 49
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#49373#45380#50900#51068
        Transparent = True
      end
      object spSkinLabel8: TLabel
        Left = 16
        Top = 369
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#51204#54868
        Transparent = True
      end
      object spSkinLabel9: TLabel
        Left = 430
        Top = 106
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#51060#46041#51204#54868
        Transparent = True
      end
      object spSkinLabel10: TLabel
        Left = 430
        Top = 133
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#51060#47700#51068
        Transparent = True
      end
      object spSkinLabel11: TLabel
        Left = 17
        Top = 181
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#50864#54200#48264#54840
        Transparent = True
      end
      object spSkinLabel12: TLabel
        Left = 16
        Top = 209
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#51452#49548
        Transparent = True
        OnClick = spSkinLabel12Click
      end
      object spSkinLabel1: TLabel
        Left = 16
        Top = 20
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#50836#50577#44592#44288#44592#54840
        Transparent = True
        OnDblClick = spSkinLabel1DblClick
      end
      object spSkinLabel13: TLabel
        Left = 16
        Top = 127
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#50629#53468
        Transparent = True
      end
      object spSkinLabel15: TLabel
        Left = 16
        Top = 398
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#54057#49828
        Transparent = True
      end
      object spSkinLabel14: TLabel
        Left = 16
        Top = 154
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#50629#51333
        Transparent = True
      end
      object spSkinLabel16: TLabel
        Left = 16
        Top = 102
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#49324#50629#51088#48264#54840
        Transparent = True
      end
      object EllipsLabel11: TLabel
        Left = 17
        Top = 559
        Width = 113
        Height = 18
        AutoSize = False
        Caption = #9679#52488#51116#51652' '#49328#51221#51068#49688
        Transparent = True
      end
      object EllipsLabel12: TLabel
        Left = 16
        Top = 441
        Width = 113
        Height = 17
        AutoSize = False
        Caption = #9679#48337#51032#50896#44396#48516
        Transparent = True
      end
      object EllipsLabel13: TLabel
        Left = 16
        Top = 465
        Width = 113
        Height = 18
        AutoSize = False
        Caption = #9679#49900#54217#50896' '#51648#48512' '#53076#46300
        Transparent = True
      end
      object EllipsLabel14: TLabel
        Left = 16
        Top = 491
        Width = 113
        Height = 17
        AutoSize = False
        Caption = #9679#46321#47197#46108' '#51032#49324' '#49688
        Transparent = True
      end
      object EllipsLabel15: TLabel
        Left = 430
        Top = 367
        Width = 113
        Height = 21
        AutoSize = False
        Caption = #9679#52376#48169#51204' '#49324#50857' '#44592#44036
        Transparent = True
      end
      object EllipsLabel16: TLabel
        Left = 430
        Top = 391
        Width = 113
        Height = 16
        AutoSize = False
        Caption = #9679#52376#48169#51204' '#51064#49604
        Transparent = True
      end
      object EllipsLabel17: TLabel
        Left = 17
        Top = 527
        Width = 113
        Height = 17
        AutoSize = False
        Caption = #9679#51032#50557#48516#50629' '#51201#50857
        Transparent = True
      end
      object EllipsLabel18: TLabel
        Left = 430
        Top = 185
        Width = 113
        Height = 17
        AutoSize = False
        Caption = #9679#52397#44396#45824#54665#45800#52404
        Transparent = True
      end
      object EllipsLabel19: TLabel
        Left = 430
        Top = 448
        Width = 115
        Height = 16
        AutoSize = False
        Caption = #9679#50689#49688#51613' '#48156#44553#50857' '#54532#47536#53552
        Transparent = True
      end
      object EllipsLabel20: TLabel
        Left = 430
        Top = 213
        Width = 113
        Height = 15
        AutoSize = False
        Caption = #9679#48372#54744#52397#44396' '#51089#49457#51088#47749
        Transparent = True
      end
      object EllipsLabel21: TLabel
        Left = 430
        Top = 235
        Width = 113
        Height = 16
        AutoSize = False
        Caption = #9679#51089#49457#51088' '#51452#48124#48264#54840
        Transparent = True
      end
      object EllipsLabel22: TLabel
        Left = 430
        Top = 326
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#51064#51613#49436#50948#52824
        Transparent = True
      end
      object EllipsLabel23: TLabel
        Left = 430
        Top = 302
        Width = 115
        Height = 21
        AutoSize = False
        Caption = #9679#51088#44201#54869#51064' '#54056#49828#50892#46300
        Transparent = True
      end
      object EllipsLabel24: TLabel
        Left = 430
        Top = 490
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944#48264#54840' '#44508#52825
        Transparent = True
        Visible = False
      end
      object EllipsLabel25: TLabel
        Left = 430
        Top = 517
        Width = 140
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944#48264#54840' '#49352#47196#49884#51089' '#48264#54840
        Transparent = True
        Visible = False
      end
      object EllipsLabel131: TLabel
        Left = 430
        Top = 416
        Width = 131
        Height = 16
        AutoSize = False
        Caption = #9679#52376#48169#51204' '#45824#54364#50896#51109#47564'  '#48156#54665
        Transparent = True
      end
      object EllipsLabel166: TLabel
        Left = 430
        Top = 76
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#47732#54728#48264#54840
        Transparent = True
      end
      object EllipsLabel249: TLabel
        Left = 430
        Top = 260
        Width = 113
        Height = 16
        AutoSize = False
        Caption = #9679#52397#44396#49849#51064#48264#54840
        Transparent = True
      end
      object EllipsLabel294: TLabel
        Left = 17
        Top = 586
        Width = 101
        Height = 13
        AutoSize = False
        Caption = #9679#51652#47308#49884#44036'('#54217#51068')'
        Transparent = True
      end
      object EllipsLabel295: TLabel
        Left = 216
        Top = 585
        Width = 25
        Height = 13
        Caption = #48516'  ~'
        Transparent = True
      end
      object EllipsLabel296: TLabel
        Left = 161
        Top = 585
        Width = 11
        Height = 13
        Caption = #49884
        Transparent = True
      end
      object EllipsLabel298: TLabel
        Left = 288
        Top = 585
        Width = 11
        Height = 13
        Caption = #49884
        Transparent = True
      end
      object EllipsLabel299: TLabel
        Left = 343
        Top = 585
        Width = 11
        Height = 13
        Caption = #48516
        Transparent = True
      end
      object EllipsLabel297: TLabel
        Left = 18
        Top = 613
        Width = 101
        Height = 13
        AutoSize = False
        Caption = #9679#51652#47308#49884#44036'('#53664#50836#51068')'
        Transparent = True
      end
      object EllipsLabel300: TLabel
        Left = 217
        Top = 612
        Width = 25
        Height = 13
        Caption = #48516'  ~'
        Transparent = True
      end
      object EllipsLabel301: TLabel
        Left = 162
        Top = 612
        Width = 11
        Height = 13
        Caption = #49884
        Transparent = True
      end
      object EllipsLabel302: TLabel
        Left = 289
        Top = 612
        Width = 11
        Height = 13
        Caption = #49884
        Transparent = True
      end
      object EllipsLabel303: TLabel
        Left = 344
        Top = 612
        Width = 11
        Height = 13
        Caption = #48516
        Transparent = True
      end
      object Label43: TLabel
        Left = 16
        Top = 75
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#48337#50896#47749'('#50689#50612')'
        Transparent = True
      end
      object lblDaepyoEng: TLabel
        Left = 842
        Top = 39
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#49457#47749'('#50689#50612')'
        Transparent = True
        Visible = False
      end
      object Label44: TLabel
        Left = 16
        Top = 276
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#51452#49548'('#50689#50612')'
        Transparent = True
        OnClick = spSkinLabel12Click
      end
      object EdtHpName: TEdit
        Left = 118
        Top = 47
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 1
        Text = 'EdtHpName'
        OnKeyPress = EdtHpNameKeyPress
      end
      object EdtName: TEdit
        Left = 588
        Top = 16
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 31
        Text = 'EdtName'
        OnExit = EdtNameExit
        OnKeyPress = EdtNameKeyPress
      end
      object EdtAdd: TEdit
        Left = 118
        Top = 207
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 8
        Text = 'EdtAdd'
        OnKeyPress = EdtAddKeyPress
      end
      object EdtAdd2: TEdit
        Left = 118
        Top = 233
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 9
        Text = 'EdtAdd2'
        OnKeyPress = EdtHpNameKeyPress
      end
      object EdtMail: TEdit
        Left = 588
        Top = 127
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 40
        Text = 'EdtMail'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtTel1: TEdit
        Left = 118
        Top = 368
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 11
        Text = 'edtTel1'
        OnChange = edtTel1Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edttel2: TEdit
        Left = 188
        Top = 368
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 13
        Text = 'edttel2'
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtTel3: TEdit
        Left = 258
        Top = 368
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 14
        Text = 'edtTel3'
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtHp1: TEdit
        Left = 588
        Top = 100
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 37
        Text = 'edtHp1'
        OnChange = edtHp1Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtHp2: TEdit
        Left = 658
        Top = 100
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 38
        Text = 'edtHp2'
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtHp3: TEdit
        Left = 729
        Top = 100
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 39
        Text = 'edtHp3'
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtZip1: TEdit
        Left = 118
        Top = 180
        Width = 65
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 6
        TabOrder = 6
        Text = 'edtZip1'
      end
      object edtZip2: TEdit
        Left = 188
        Top = 179
        Width = 65
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 7
        Text = 'edtZip2'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbYear: TComboBox
        Left = 588
        Top = 42
        Width = 65
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 33
        Text = 'cbYear'
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbMonth: TComboBox
        Left = 680
        Top = 42
        Width = 41
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 34
        Text = 'cbMonth'
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDay: TComboBox
        Left = 744
        Top = 42
        Width = 39
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 35
        Text = 'ComboBox2'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtJumpoCode: TEdit
        Left = 118
        Top = 21
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 0
        Text = 'edtJumpoCode'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtUptae: TEdit
        Left = 118
        Top = 128
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 4
        Text = 'EdtUptae'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtFax1: TEdit
        Left = 118
        Top = 397
        Width = 65
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 15
        Text = 'edtFax1'
        OnChange = edtTel1Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtUpjong: TEdit
        Left = 118
        Top = 154
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 5
        Text = 'edtUpjong'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtSaupNo: TEdit
        Left = 118
        Top = 102
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 3
        Text = 'edtSaupNo'
        OnExit = edtSaupNoExit
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtilsu: TAdvSpinEdit
        Left = 119
        Top = 555
        Width = 121
        Height = 21
        Value = 30
        FloatValue = 30.000000000000000000
        HexDigits = 0
        HexValue = 0
        IncrementFloat = 0.100000000000000000
        IncrementFloatPage = 1.000000000000000000
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        MaxValue = 100
        MinValue = 30
        TabOrder = 22
        Visible = True
        Version = '1.8.4.0'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtDocNo: TAdvSpinEdit
        Left = 118
        Top = 487
        Width = 121
        Height = 21
        Value = 1
        FloatValue = 1.000000000000000000
        TimeValue = 0.041666666666666660
        HexDigits = 0
        HexValue = 0
        IncrementFloat = 0.100000000000000000
        IncrementFloatPage = 1.000000000000000000
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        MaxValue = 100
        MinValue = 1
        TabOrder = 20
        Visible = True
        Version = '1.8.4.0'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtChubang: TAdvSpinEdit
        Left = 588
        Top = 363
        Width = 121
        Height = 21
        Value = 1
        FloatValue = 1.000000000000000000
        TimeValue = 0.041666666666666660
        HexDigits = 0
        HexValue = 0
        IncrementFloat = 0.100000000000000000
        IncrementFloatPage = 1.000000000000000000
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        MaxValue = 100
        MinValue = 1
        TabOrder = 48
        Visible = True
        Version = '1.8.4.0'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtGubun: TAdvComboBox
        Left = 118
        Top = 437
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #51032#50896
          #48337#50896
          #51333#54633#48337#50896)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 18
        Text = #51032#50896
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtRmode: TAdvComboBox
        Left = 588
        Top = 445
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = -1
        Items.Strings = (
          #47196#52972#54532#47536#53552
          'SRP770II'
          'miniPrint'
          'FirstData')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 51
        Text = #47196#52972#54532#47536#53552
        OnChange = edtRmodeChange
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtBunup: TAdvComboBox
        Left = 119
        Top = 523
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #51201#50857#54632
          #51201#50857#50504#54632)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 21
        Text = #51201#50857#54632
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtPrintsu: TAdvComboBox
        Left = 588
        Top = 388
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = -1
        Items.Strings = (
          #50557#44397#47564
          #54872#51088#47564
          #50557#44397'+'#54872#51088)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 49
        Text = #50557#44397'+'#54872#51088
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtChartrule: TAdvComboBox
        Left = 588
        Top = 487
        Width = 196
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = False
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 5
        Items.Strings = (
          #54016' + '#45380#46020' + '#39'-'#39' + '#50900#51068' + '#50672#48320'  (01 + YY + '#39'-'#39' + MMDD + 001)'
          #45380#46020' + '#50900#51068' + '#50672#48264' (YYMMDD + 001)'
          #45380#46020' + '#50900#51068' + '#50672#48264' ('#49548#50500','#44368#51221#44396#48516')  (YYMMDD + 001)'
          #50672#48264' ('#39'00000000'#39')  (0 '#51060' '#52292#50892#51648#45716' 8'#51088#47532#49707#51088' '#51068#47144#49692')'
          #50672#48264'('#49707#51088':0 '#51060' '#50504#52292#50892#51648#45716' '#51068#47144#48264#54840#49692')'
          #49324#50857#51088'('#49324#50857#51088#44032' '#51076#51032#47196' '#48512#50668')'
          #49352#47196#49884#51089#54616#45716' '#50672#48264'('#39'00000000'#39')'
          #49352#47196#49884#51089#54616#45716' '#50672#48264'('#49707#51088')'
          #45380#46020' + '#50900' + '#50672#48264'(YYYYMM + 001)'
          '10'#50473' '#51613#44032'(10'#50473' '#51613#44032#54616#45716' 0 '#51060#52292#50892#51648#45716' 8'#51088#47532')')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 53
        Text = #49324#50857#51088'('#49324#50857#51088#44032' '#51076#51032#47196' '#48512#50668')'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtChungname: TAdvEdit
        Left = 588
        Top = 208
        Width = 121
        Height = 21
        DefaultHandling = True
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
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 42
        Text = 'edtChungname'
        Visible = True
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object edtChungjumin: TAdvEdit
        Left = 588
        Top = 233
        Width = 121
        Height = 21
        DefaultHandling = True
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
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 43
        Text = 'edtChungjumin'
        Visible = True
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object edtChartnew: TAdvEdit
        Left = 588
        Top = 512
        Width = 121
        Height = 21
        DefaultHandling = True
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
        TabOrder = 55
        Text = 'edtChartnew'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object edtjagyukPass: TAdvEdit
        Left = 588
        Top = 299
        Width = 121
        Height = 21
        DefaultHandling = True
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
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 45
        Text = 'edtjagyukPass'
        Visible = True
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object edtJagyukid2: TAdvEdit
        Left = 715
        Top = 298
        Width = 121
        Height = 21
        DefaultHandling = True
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
        TabOrder = 46
        Text = 'edtJagyukid2'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object edtDeheng: TAdvEdit
        Left = 588
        Top = 181
        Width = 121
        Height = 21
        DefaultHandling = True
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
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 41
        Text = 'edtDeheng'
        Visible = True
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object edtsimJibu: TAdvComboBox
        Left = 118
        Top = 462
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #49436#50872
          #48512#49328
          #45824#44396
          #44305#51452
          #45824#51204
          #49688#50896
          #52285#50896)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 19
        Text = #49436#50872
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtJagyukid: TComboBox
        Left = 588
        Top = 322
        Width = 195
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 47
        Text = '0'
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
      end
      object edtfax2: TEdit
        Left = 188
        Top = 397
        Width = 65
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 16
        Text = 'edtFax1'
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtfax3: TEdit
        Left = 258
        Top = 397
        Width = 65
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 17
        Text = 'edtFax1'
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChubangDaepyo: TAdvComboBox
        Left = 588
        Top = 413
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 50
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtMyunhuNo: TEdit
        Left = 588
        Top = 74
        Width = 64
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 36
        Text = 'edtMyunhuNo'
        OnExit = edtSaupNoExit
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtSRPDriver: TEdit
        Left = 747
        Top = 445
        Width = 69
        Height = 21
        Hint = #45824#49548#47928#51088' '#44396#48516#46121#45768#45796'.'
        ImeName = 'Microsoft Office IME 2007'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 54
        Text = 'edtSRPDriver'
        Visible = False
      end
      object edtChungNo: TAdvEdit
        Left = 588
        Top = 258
        Width = 121
        Height = 21
        DefaultHandling = True
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
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 44
        Text = 'edtChungNo'
        Visible = True
        OnKeyPress = EdtHpNameKeyPress
        Version = '3.4.9.0'
      end
      object cbPrintingCnt: TAdvComboBox
        Left = 746
        Top = 445
        Width = 70
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          '2'#47588#51064#49604
          '1'#47588#51064#49604
          '')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 52
        Text = '2'#47588#51064#49604
        OnKeyPress = EdtHpNameKeyPress
      end
      object ComboBox4: TComboBox
        Left = 120
        Top = 582
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 23
        Text = '09'
        Items.Strings = (
          '07'
          '08'
          '09'
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
          '20'
          '21'
          '22'
          '23'
          '24')
      end
      object ComboBox5: TComboBox
        Left = 177
        Top = 582
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 24
        Text = '30'
        Items.Strings = (
          '00'
          '05'
          '10'
          '15'
          '20'
          '25'
          '30'
          '35'
          '40'
          '45'
          '50'
          '55')
      end
      object ComboBox6: TComboBox
        Left = 247
        Top = 582
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 25
        Text = '09'
        Items.Strings = (
          '07'
          '08'
          '09'
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
          '20'
          '21'
          '22'
          '23'
          '24')
      end
      object ComboBox7: TComboBox
        Left = 304
        Top = 582
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 26
        Text = '30'
        Items.Strings = (
          '00'
          '05'
          '10'
          '15'
          '20'
          '25'
          '30'
          '35'
          '40'
          '45'
          '50'
          '55')
      end
      object ComboBox8: TComboBox
        Left = 121
        Top = 609
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 27
        Text = '09'
        Items.Strings = (
          '07'
          '08'
          '09'
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
          '20'
          '21'
          '22'
          '23'
          '24')
      end
      object ComboBox9: TComboBox
        Left = 178
        Top = 609
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 28
        Text = '30'
        Items.Strings = (
          '00'
          '05'
          '10'
          '15'
          '20'
          '25'
          '30'
          '35'
          '40'
          '45'
          '50'
          '55')
      end
      object ComboBox10: TComboBox
        Left = 248
        Top = 609
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 29
        Text = '09'
        Items.Strings = (
          '07'
          '08'
          '09'
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
          '20'
          '21'
          '22'
          '23'
          '24')
      end
      object ComboBox11: TComboBox
        Left = 305
        Top = 609
        Width = 40
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 30
        Text = '30'
        Items.Strings = (
          '00'
          '05'
          '10'
          '15'
          '20'
          '25'
          '30'
          '35'
          '40'
          '45'
          '50'
          '55')
      end
      object EdtHpEngName: TEdit
        Left = 118
        Top = 73
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 2
        Text = 'EdtHpEngName'
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtEngName: TEdit
        Left = 842
        Top = 66
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 32
        Text = 'edtEngName'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object EdtEngAdd: TEdit
        Left = 118
        Top = 278
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 10
        Text = 'EdtEngAdd'
        OnKeyPress = EdtAddKeyPress
      end
      object EdtEngAdd2: TEdit
        Left = 118
        Top = 303
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 56
        Text = 'EdtEngAdd2'
        OnKeyPress = EdtHpNameKeyPress
      end
      object EdtEngAdd3: TEdit
        Left = 118
        Top = 329
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 12
        Text = 'EdtEngAdd3'
        OnKeyPress = EdtHpNameKeyPress
      end
    end
    object AdvTabSheet1: TAdvTabSheet
      Caption = #50696#50557' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object AdvPanel2: TAdvPanel
        Left = 0
        Top = 0
        Width = 1251
        Height = 718
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
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
        object AdvPanel4: TAdvPanel
          Left = 1
          Top = 246
          Width = 1249
          Height = 376
          Align = alTop
          BevelOuter = bvNone
          Color = 16381427
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UseDockManager = True
          Version = '2.5.7.9'
          AutoHideChildren = False
          BorderColor = 16765615
          Caption.Color = 16316406
          Caption.ColorTo = 15261915
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clBlack
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 2
          Caption.ShadeLight = 255
          Caption.Text = #54868#47732' '#44396#49457
          Caption.Visible = True
          CollapsColor = clNone
          CollapsDelay = 0
          ColorTo = 15195349
          ColorMirror = 15195349
          ColorMirrorTo = 16513776
          DoubleBuffered = True
          ShadowColor = clBlack
          ShadowOffset = 0
          StatusBar.BorderStyle = bsSingle
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = 7485192
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          StatusBar.Color = 16445163
          StatusBar.ColorTo = 15064023
          StatusBar.GradientDirection = gdVertical
          Styler = AdvPanelStyler1
          Text = ''
          FullHeight = 0
          object EllipsLabel8: TLabel
            Left = 20
            Top = 22
            Width = 101
            Height = 13
            AutoSize = False
            Caption = #9679#49884#44036' '#49324#51060' '#44036#44201
            Transparent = True
          end
          object EllipsLabel43: TLabel
            Left = 20
            Top = 92
            Width = 191
            Height = 13
            AutoSize = False
            Caption = #9679#49884#51089#49884' '#54788#51116#49884#44036#51004#47196' '#51060#46041
            Transparent = True
          end
          object EllipsLabel110: TLabel
            Left = 20
            Top = 148
            Width = 191
            Height = 13
            AutoSize = False
            Caption = #9679#50696#50557#54364#50640#49436' '#51060#47492#44284' '#52320#53944#48264#54840' '#48372#44592
            Transparent = True
          end
          object EllipsLabel114: TLabel
            Left = 20
            Top = 204
            Width = 191
            Height = 13
            AutoSize = False
            Caption = #9679#50696#50557#52860#47100' '#53356#44592' '#44256#51221
            Transparent = True
          end
          object EllipsLabel135: TLabel
            Left = 20
            Top = 258
            Width = 191
            Height = 13
            AutoSize = False
            Caption = #9679#50696#50557#54364#50640#49436' '#51060#47492#47564' '#48372#44592
            Transparent = True
          end
          object EllipsLabel156: TLabel
            Left = 20
            Top = 313
            Width = 191
            Height = 13
            AutoSize = False
            Caption = #9679#50696#50557#54364' '#51060#46041' '#51104#44552#54644#51228
            Transparent = True
          end
          object Planner1: TPlanner
            Left = 534
            Top = 25
            Width = 386
            Height = 341
            AttachementGlyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888700078888888888708880788888888808808808888888880808080
              8888888880808080888888888080808088888888808080808888888880808080
              8888888880808080888888888080808088888888808080808888888888808080
              8888888888808880888888888888000888888888888888888888}
            Caption.Title = 'TMS software <b>TPlanner</b>'
            Caption.Font.Charset = DEFAULT_CHARSET
            Caption.Font.Color = clWhite
            Caption.Font.Height = -13
            Caption.Font.Name = 'Verdana'
            Caption.Font.Style = []
            DayNames.Strings = (
              'Sun'
              'Mon'
              'Tue'
              'Wed'
              'Thu'
              'Fri'
              'Sat')
            DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
            DefaultItem.CaptionFont.Color = clWindowText
            DefaultItem.CaptionFont.Height = -11
            DefaultItem.CaptionFont.Name = 'MS Sans Serif'
            DefaultItem.CaptionFont.Style = []
            DefaultItem.Cursor = -1
            DefaultItem.Font.Charset = DEFAULT_CHARSET
            DefaultItem.Font.Color = clWindowText
            DefaultItem.Font.Height = -11
            DefaultItem.Font.Name = 'MS Sans Serif'
            DefaultItem.Font.Style = []
            DefaultItem.ItemBegin = 16
            DefaultItem.ItemEnd = 17
            DefaultItem.ItemPos = 0
            DefaultItem.Name = 'PlannerItem0'
            DefaultItem.Shadow = True
            DeleteGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
              0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
              161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
              56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
              075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
              EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
              EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
              5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
              0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
            Display.ActiveEnd = 40
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.CompletionFormat = '%d%%'
            Footer.Completion.Font.Charset = DEFAULT_CHARSET
            Footer.Completion.Font.Color = clWindowText
            Footer.Completion.Font.Height = -11
            Footer.Completion.Font.Name = 'Arial'
            Footer.Completion.Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            GridLeftCol = 1
            GridTopRow = 0
            Header.CustomGroups = <>
            Header.Font.Charset = DEFAULT_CHARSET
            Header.Font.Color = clWindowText
            Header.Font.Height = -11
            Header.Font.Name = 'MS Sans Serif'
            Header.Font.Style = []
            Header.GroupHeight = 0
            Header.GroupFont.Charset = DEFAULT_CHARSET
            Header.GroupFont.Color = clWindowText
            Header.GroupFont.Height = -11
            Header.GroupFont.Name = 'MS Sans Serif'
            Header.GroupFont.Style = []
            HintPause = 2500
            HTMLOptions.CellFontStyle = []
            HTMLOptions.HeaderFontStyle = []
            HTMLOptions.SidebarFontStyle = []
            Items = <>
            Mode.Month = 9
            Mode.PeriodStartDay = 1
            Mode.PeriodStartMonth = 9
            Mode.PeriodStartYear = 2009
            Mode.PeriodEndDay = 19
            Mode.PeriodEndMonth = 10
            Mode.PeriodEndYear = 2009
            Mode.TimeLineStart = 40057.000000000000000000
            Mode.TimeLineNVUBegin = 0
            Mode.TimeLineNVUEnd = 0
            Mode.Year = 2009
            Mode.Day = 6
            Sidebar.Font.Charset = DEFAULT_CHARSET
            Sidebar.Font.Color = clWindowText
            Sidebar.Font.Height = -11
            Sidebar.Font.Name = 'Arial'
            Sidebar.Font.Style = []
            Sidebar.HourFontRatio = 1.800000000000000000
            PositionProps = <>
            PrintOptions.LineWidth = 0
            PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
            PrintOptions.FooterFont.Color = clWindowText
            PrintOptions.FooterFont.Height = -11
            PrintOptions.FooterFont.Name = 'MS Sans Serif'
            PrintOptions.FooterFont.Style = []
            PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
            PrintOptions.HeaderFont.Color = clWindowText
            PrintOptions.HeaderFont.Height = -11
            PrintOptions.HeaderFont.Name = 'MS Sans Serif'
            PrintOptions.HeaderFont.Style = []
            URLGlyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
              0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
              0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
              88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
              888887F8F8222208888888776888208888888887777778888888}
            Version = '3.5.5.1'
            Skin.SkinTop.Data = {
              E6160000424DE61600000000000036000000280000003A000000210000000100
              180000000000B0160000C30E0000C30E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4
              BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7
              E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BA
              A7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4
              BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7
              E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA7E4BAA70000E1C2B2E1C1B2
              E0C0B0DFBEAEDFBEADDEBCABDDBBA9DDBCAADFBEACDFBDACDFBEADDEBCACDDBC
              AADFBEACDFBDACDFBEADDEBCACDDBCAADFBEACDFBDACDFBEADDEBCACDFBEACDF
              BDACDFBEADDEBCACDDBCAADFBEACDFBDACDFBEADDEBCACDFBEACDFBDACDFBEAD
              DEBCACDDBCAADFBEACDFBDACDFBEADDEBCACDFBEACDFBDACDFBEADDEBCACDDBC
              AADFBEACDFBDACDFBEADDEBCACE0C0B0DFBEAEDFBEADDEBCABDDBCAAE0C0AEE3
              C5B5E7CABAEBD0C20000E1C1AFE1C0AFE1BFAEE1BFAEE0BFAEDEBDAEE2BFAEE1
              BDABDDB9A6DEB9A5DEBAA6DEBBA7DDB9A6DDB9A6DEB9A5DEBAA6DEBAA6DEBAA6
              DEBAA6DEBAA6DEBAA6DEBBA7DDB9A6DEB9A5DEBAA6DEBBA7DDB9A6DDB9A6DEB9
              A5DEBAA6DEBBA7DDB9A6DEB9A5DEBAA6DEBBA7DDB9A6DDB9A6DEB9A5DEBAA6DE
              BBA7DDB9A6DEB9A5DEBAA6DEBBA7DDB9A6DDB9A6DEB9A5DEBAA6DEBBA7E1BFAE
              E1BFAEE0BFAEDEBDAEE8C9BBEED1C5F3DCD3FF00FFFF00FF0000D1A289F3E5DE
              F2DCD0EFCCBBF0CDB6F0CDB6F0CFBBF1CEBAF1CEBAF1CEBBF1CFBBF2CFBCF1CE
              BBF1CEBBF1CEBBF1CEBBF2D3C0F2D3C0F2D3C0F2D3C0F2D3C0F2D3C0F2D3C0F3
              D3C1F3D4C1F3D4C3F3D4C2F3D4C3F3D5C4F3D6C5F3D6C5F3D6C4F3D6C6F3D7C6
              F3D7C6F3D7C6F3D7C6F3D7C7F3D7C6F3D7C7F3D7C6F3D7C5F3D7C6F3D6C4F3D5
              C3F3D5C4F3D4C3F3D4C1F2D3C2F2D3C1F2D0BDDCB8A7D3AF9EF2DCD1FF00FFFF
              00FFFF00FFFF00FF0000CE9D81F3E2DBF0DACFEDCBBAF0CDB6F0CEB9F1CEB7F1
              CEBAF1CEBAF1CEBAF1CEBBF1CFBBF1CEBAF2D3C0F2D3C0F2D3C0F2D3C0F2D3C0
              F2D3C0F2D3C0F2D3C0F2D3C0F2D3C0F2D3C0F2D3C0F3D4C2F3D4C1F3D4C2F3D4
              C4F3D5C4F3D5C4F3D6C4F3D6C6F3D6C6F3D6C6F3D6C5F3D7C5F3D7C7F3D7C6F3
              D7C7F3D7C6F3D7C5F3D7C6F3D6C4F3D6C4F3D5C4F3D4C4F3D4C1F3D3C2F2D1BE
              E6C0B0E0BBAAF3DDD2FF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81F2E1DB
              F0D9CEECCBB7F0CDB6F0CDB6F1CDB7F1CDB7F0CDB7F1CEB8F1CEB8F0CEB8F2D3
              C0F2D3C0F2D3C0F2D3C0F2D3C0F2D3BFF2D3BFF2D3BFF2D3BFF2D3BFF2D3BFF2
              D3BFF2D3BFF2D3C0F3D3C1F3D4C1F3D4C1F3D4C2F3D4C3F3D5C3F3D5C3F3D6C4
              F3D6C3F3D6C4F3D6C4F3D6C4F3D6C4F3D6C4F3D6C4F3D6C5F3D6C4F3D6C4F3D6
              C3F3D5C3F3D4C2F2D2C0F1D0BDE6BFAEE4C0B1FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81F3E2DBF0DACFEDCBBAEFC9B5EFCAB5F0CAB6F0
              CAB4EFC9B5EFCAB5F0CAB6F0CAB4F2D3BFF2D3BFF2D3BFF2D3BFF2D3BFF0CEBB
              F0CEBBF0CEBBF0CEBBF0CEBBF0CEBBF1D0BCF1D0BDF1D1BDF2D0BEF1D1C0F1D1
              BFF2D2C1F2D2C1F2D2C1F2D3C2F2D3C2F2D3C3F2D3C1F2D4C3F2D4C2F2D4C4F2
              D4C3F2D4C3F2D4C4F2D4C4F2D4C2F2D4C2F2D3C1F2D1C0F2CEBBE9C2B1E0BCAC
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81F2E1DB
              F0D9CEECCBB7EFC8B4EFC8B4EFC8B4EFCAB4EFC8B4EFC8B4EFC8B4EFCAB4EFCA
              B4EFC8B4F0CEBCF0CEBCF0CEBCF0CEBCF0CEBCF0CEBCF0CEBCF0CEBBF0CEBBF0
              CEBBF0CEBBF0CEBBF0CEBBF1CFBDF1D0BEF1D1BEF1D0BFF1D1BFF1D1C0F2D1C0
              F2D2C0F2D3C1F2D2C1F2D2C1F2D2C1F2D3C2F2D3C2F2D3C2F2D3C2F2D2C2F2D2
              C1F0D1BEF0CDBAEBC5B1DDB8A6F2DCD1FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000D1A289F3E5DEF2DCD0EFCCBBEDC7B2EDC7B2EDC7B2EE
              C8B2EDC7B2EDC7B2EDC7B2EEC8B2EEC8B2EECCBAEECCBAEECCBAEECCBAEECCBA
              EECCBAEECCBAEECCBAEFCDB9EFCDB9EFCDB9EFCDB9EFCDB9EFCDB9F0CEBBF0CE
              BCF0CEBDF0CFBDF0CFBDF0D0BEF0D0BEF0D0BEF0D0BFF0D1BFF0D1C0F0D1C0F0
              D1C1F0D1C1F1D1C0F1D1C1F1D1C0F0D0BFEFCDBBEDC7B4DAB29FEFD4C9FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81F3E2DB
              F0DACFEDCBBAECC5B1EDC7B2EDC7B2ECC6B2ECC5B1EDC7B2EDC7B2ECC6B2ECC6
              B2EDC7B2EDCAB8EDCAB8EDCAB8EDCAB8EDCAB8EDCAB8EDCAB8EDCAB8EDCAB8ED
              CAB8EDCAB8EDCAB8EFCDB9EFCDB9EFCEBBEFCDBBF0CEBCF0CEBDF0CFBDF0CFBD
              F0D0BCF0D0BEF0CFBEF0CFBEF0D0BDF0D1BFF0D1C0F0D1BEF0D0C0EFD0BEEFCC
              BAEDC7B5E2BAA8E3BFADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81F2E1DBF0D9CEECCBB7EBC4AFEBC4AFEBC4AFEC
              C4AFEBC4AFEBC4AFEBC4AFECC4AFECC4AFEBC4AFEBC7B4EBC7B4EBC4B2EBC4B2
              EBC4B2EBC4B2EBC4B2EBC4B2EBC7B4EBC7B4EBC7B4EBC7B4EDCAB8EDCAB8EDCA
              B8EDCAB8EDCBB8EDCBBAEDCBB9EECCBAEECCBBEECDBAEFCCBBEECDBCEECDBBEF
              CDBBEFCEBCEFCEBDEFCDBDEDCBBAEDC8B6E8BFABDDB6A3F2DBD1FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81F2E0D9
              EFD7CDEBC7B7EAC2AEEAC2AEEAC2AEEAC2AFEAC2AEEAC2AEEAC2AEEAC2AFEAC2
              AFEAC2AEEAC2AFEAC2AFEBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EB
              C4B2EBC4B2EBC4B2EBC7B4EBC7B4EBC7B4EBC7B4ECC9B7EDC9B7ECCAB8EDCAB8
              EDCAB8EDCAB9EDCAB9EDCBBAEDCBBAEDCBBAEDCBBAEDCBBBEDCAB8ECC8B5EAC3
              AFDCB3A0E7C6B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81F0DFD6EFD6CCEAC7B4EAC1ACEAC1ACE9C0ACE9
              C0ACEAC1ACEAC1ACE9C0ACE9C0ACE9C0ACEAC1ACEAC1ACEAC1ACEBC4B2EBC4B2
              EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4
              B2EBC4B2EBC7B4ECC8B5ECC8B4ECC7B5ECC8B6ECC8B5EDC8B7ECC8B7EDC8B7EC
              CAB8ECC9B8ECC9B7ECC7B4EAC3AFE4B8A5DEB7A3FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81F0DED6
              EDD5CBE9C7B2E9BEAAE9BFAAE8BFAAE8BFAAE9BEAAE9BFAAE8BFAAE8BFAAE8BF
              AAE9BEAAE9BFAAE9BFAAE9C2AFE9C2AFE9C2AFE9C2AFEBC4B2EBC4B2EBC4B2EB
              C4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC4B2EBC5B2EAC6B3
              EBC7B4EAC7B4EBC6B4EBC6B4ECC7B5ECC8B5EBC7B6EBC6B4E9C2AFE9BCA9D9AF
              99EACDBFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EFDDD5EDD3C9E7C4B2E7BDA9E7BDA9E7BDA9E7
              BDA8E7BDA9E7BDA9E7BDA9E7BDA8E7BDA8E7BDA9E7BDA9E7BDA9E7BDA9E7BDA8
              E9C2AFE9C2AFE9C2AFE9C2AFE7C2AEE7C2AEE7C2AEE7C2AEE7C2AEE7C2AEE7C2
              AEE7C2AEE9C2AFE9C2AFE9C3B1E9C3B1E9C4B2E9C4B1E9C4B2EAC4B3EAC4B3EA
              C5B2EAC5B2E9C2AFE6BCA8E0B29FE1BDABFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81F0DED6
              EDD5CBE9C7B2E6BDA7E6BDA7E6BDA7E6BDA7E6BDA7E6BDA7E6BDA7E6BDA7E6BD
              A7E6BDA7E6BDA7E6BDA7E6BDA7E6BFABE6BFABE6BFABE6BFABE6BFABE9C2AFE9
              C2AFE9C2AFE9C2AFE9C2AFE9C2AFE9C2AFE9C2AFE7C2AEE7C2AEE7C2AEE8C2AE
              E8C2AEE8C3AFE8C3AFE8C4AFE8C4B0E9C4B0E9C1AEE7BCAAE4B6A2DBB29DF0D6
              CBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EFDDD5EDD3C9E7C4B2E4BBA5E4BBA5E4BBA6E4
              BBA5E4BBA5E4BBA5E4BBA6E4BBA5E4BBA5E4BBA5E4BBA5E4BBA5E4BBA6E4BBA5
              E6BFABE6BFABE6BFABE6BFABE6BFABE6BFABE6BFABE6BFABE6BFABE6BFABE6BF
              ABE6BFABE6BFABE6BFABE6BFABE6C0ACE6C0ACE7C0ADE7C0ACE7C1AEE7C1ADE7
              BFAEE6BDABE3B6A5DBAC98E6C6B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81EFDCD3
              ECD2C6E7C2B1E4B9A5E3B9A3E4B9A5E4B9A5E4B9A5E3B9A3E4B9A5E4B9A5E4B9
              A5E4B9A5E3B9A3E3B9A3E4B9A5E4B9A5E4B9A5E4B9A5E6BFABE6BDAAE6BDAAE6
              BDAAE6BDAAE6BDAAE6BDAAE6BDAAE6BDAAE6BDAAE6BDAAE6BDAAE6BDAAE6BDAA
              E4BDABE6BEABE4BEABE6BEABE6BEABE5BCA9E2B6A4E0AF9CD4A78CEFD5C9FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EDDAD3EBD1C6E6C1B1E1B8A2E1B8A3E3B8A2E3
              B8A3E1B8A2E1B8A3E3B8A2E3B8A3E3B8A3E1B8A2E1B8A3E1B8A3E3B8A2E3B8A3
              E3B8A3E1B8A2E4BBA8E4BBA8E4BBA8E4BBA8E4BBA8E4BBA8E4BBA8E4BBA8E4BB
              A8E4BBA8E4BBA8E4BBA8E4BBA8E3BCA8E4BBA7E3BCA8E3BCA8E3BCA8E3BCA8E3
              B7A5E0B29DD8A890DEB49EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81EDD9D2
              EAD0C6E4BFAEE0B5A2E1B6A2E1B5A2E0B5A2E0B5A2E1B6A2E1B5A2E0B5A2E0B5
              A2E0B5A2E1B6A2E1B6A2E1B5A2E0B5A2E0B5A2E0B5A2E0B6A3E0B6A3E0B6A3E0
              B6A3E0B6A3E0B6A3E0B6A3E3B9A6E3B9A6E3B9A6E3B9A6E3B9A6E3B9A6E3B9A6
              E3B9A6E3B8A6E3B9A7E3B9A7E1B7A5E0B3A0DDAA97D2A389EED4C8FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EDD7D1E9D0C3E4BDAEDFB49FDFB59FDFB4A0DF
              B5A0DFB49FDFB59FDFB4A0DFB5A0DFB5A0DFB49FDFB59FDFB59FDFB4A0DFB5A0
              DFB5A0DFB49FDFB59FDFB4A0E0B6A3E0B6A3E0B6A3E0B6A3E0B6A3E0B6A3E0B6
              A3E0B6A3E0B6A3E0B6A3E0B6A3E0B6A3E0B6A3E0B7A3E0B7A3E1B6A3E0B3A0DD
              AD9AD5A48ADDB59DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81EBD7CF
              E9CDC3E3BDACDFB29FDFB39FDFB29FDFB29FDFB29FDFB39FDFB29FDFB29FDFB2
              9FDFB29FDFB39FDFB39FDFB29FDFB29FDFB29FDFB29FDFB39FDFB29FDFB29FE0
              B6A3E0B6A3E0B6A3E0B6A3E0B6A3DFB39FDFB39FDFB29FDFB39FDFB29FE0B4A1
              E0B5A2E0B5A2E0B5A2DFB5A0DCAF9AD9A692D1A289EBCEC2FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EBD6CFE7CCC1E1BDAADDB29EDEB29EDDB29EDE
              B29EDDB29EDEB29EDDB29EDEB29EDEB29EDDB29EDEB29EDEB29EDDB29EDEB29E
              DEB29EDDB29EDEB29EDDB29EDEB29EDFB29FDFB39FDFB39FDFB39FDFB39FDEB3
              A0DEB3A0DEB3A0DEB3A0DEB3A0DEB3A0DEB3A0DFB3A0DEB39FDEB09DDAA996D3
              A288DEB7A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81EAD5CE
              E7CCC0E0BBA8DDB19CDDB19DDDB19DDDB09CDDB19CDDB19DDDB19DDDB09CDDB0
              9CDDB19CDDB19DDDB19DDDB19DDDB09CDDB09CDDB19CDDB19DDDB19DDDB09CDD
              B09CDDB19CDDB19DDDB19DDDB19DDEB29FDEB29FDEB29FDEB29FDEB29FDEB29F
              DEB19FDEB19DDEB09DDBAB97D5A490D3A68DF0D9CEFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EAD4CDE7CBC0E0B9A8DDB09CDDB09CDDB09BDB
              B09CDDB09CDDB09CDDB09BDBB09CDBB09CDDB09CDDB09CDDB09CDDB09BDBB09C
              DBB09CDDB09CDDB09CDDB09BDBB09CDBB09CDDB09CDDB09CDDB09BDDB09CDDB0
              9BDDB09CDDB09BDDB09CDDB09BDBB09CDBB29DDBB19CDBAD99D8A894D2A48CEC
              D1C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81EAD5CF
              E6CBC1DFBBA8DBB09BDBAF9ADBAF9BDBAE9BDBB09BDBAF9ADBAF9BDBAE9BDBAE
              9BDBB09BDBAF9ADBAF9ADBAF9BDBAE9BDBAE9BDBB09BDBAF9ADBAF9BDBAE9BDB
              AE9BDBB09BDBAF9ADBAF9BDBAF9ADBAF9BDBAF9ADBAF9BDBAF9ADBAF9BDBB09C
              DBB09DDAAF99DAAA97D2A38DDFBBA8FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000CE9D81EBDAD5E7CFC6DFBDABDAAF9BDAAE9ADAAD9ADA
              AE9ADAAF9BDAAE9ADAAD9ADAAE9ADAAE9ADAAF9BDAAE9ADAAE9ADAAD9ADAAE9A
              DAAE9ADAAF9BDAAE9ADAAD9ADAAE9ADAAE9ADAAF9BDAAE9ADAAD9ADAAD9ADAAD
              9ADAAD9ADAAD9ADAAD9ADAAD9ADBB19DDBB09DDAAD99D4A690D7AD97F2DAD0FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000CE9D81EAD7D3
              EAD7D1E3C4B7DDB3A2DAAE9BDAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD
              98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DA
              AD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98D3B1A2DDB3A2DDB4A3
              DBB19FD7A996D7AE99EED6CAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000C59781E4CDC6EFE6E1EAD6D0E3C3B7DFBBAADDB6A5DD
              B3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2
              DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3
              A2DEB9A8DFBBAADFBDAEDFBDACDEB9A8D7AC98CFA188EFD6CCFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F1DDD4C59781
              F3E6E1F0E6E1ECDDD9E8D2CBE6CCC3E4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9
              BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4
              C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C8BDE4C7BADFBDAFD3A795
              CD9D81F0D8CEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FF00FFEED7CFC59781EADDDBF1E5E0EFE6E1EDE0DFEC
              DDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9
              ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDD
              D9E6CCC3DEBDAFD3A998D0A28ECFA085FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
              F1DDD4CA9F8BC89D88C59781C59781C59781C59781C59781C59781C59781C597
              81C59781C59781C59781C59781C59781C59781C59781C59781C59781C59781C5
              9781C59781C59781C59781C59781C59781C59781CE9D81CE9D81FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000}
            Skin.SkinCenter.Data = {
              0E050000424D0E050000000000003600000028000000290000000A0000000100
              180000000000D8040000C30E0000C30E00000000000000000000CE9D81F0DFD6
              EFD6CCEAC7B4DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FE9C7B2E9CDC3EBD7CFCE9D8100CE9D81F0DED6EDD5CBE9
              C7B2DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FE7C4B2E9D0C3EDD7D1CE9D8100CE9D81EFDDD5EDD3C9E7C4B2DFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FE9C7B2EAD0C6EDD9D2CE9D8100CE9D81F0DED6EDD5CBE9C7B2DFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FEAC7B4
              E9D0C3EDDAD3CE9D8100CE9D81EFDDD5EDD3C9E7C4B2DFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FEAC7B4ECD2C6EF
              DCD3CE9D8100CE9D81EFDCD3ECD2C6E7C2B1DFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FEAC7B4EDD3C9EFDDD5CE9D
              8100CE9D81EDDAD3EBD1C6E6C1B1DFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FEAC7B4EDD5CBF0DED6CE9D8100CE9D
              81EDD9D2EAD0C6E4BFAEDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FEAC7B4EDD3C9EFDDD5CE9D8100CE9D81EDD7D1
              E9D0C3E4BDAEDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FE9C7B2EDD5CBF0DED6CE9D8100CE9D81EBD7CFE9CDC3E3
              BDACDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29F
              DFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB2
              9FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDFB29FDF
              B29FDFB29FEAC7B4EFD6CCF0DFD6CE9D8100}
            Skin.SkinBottom.Data = {
              F6030000424DF603000000000000360000002800000028000000080000000100
              180000000000C0030000C30E0000C30E00000000000000000000FF00FFFF00FF
              F1DDD4CA9F8BC89D88C59781C59781C59781C59781C59781C59781C59781C597
              81C59781C59781C59781C59781C59781C59781C59781C59781C59781C59781C5
              9781C59781C59781C59781C59781C59781C59781C59781C59781C59781C59781
              C59781C89D88CA9F8BF1DDD4FF00FFFF00FFFF00FFEED7CFC59781EADDDBF1E5
              E0EFE6E1EDE0DFECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9EC
              DDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9
              ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9ECDDD9EDE0DFEFE6E1F1E5E0EADD
              DBC59781EED7CFFF00FFF1DDD4C59781F3E6E1F0E6E1ECDDD9E8D2CBE6CCC3E4
              C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BE
              E4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9BEE4C9
              BEE4C9BEE4C9BEE4C9BEE4C9BEE6CCC3E8D2CBECDDD9F0E6E1F3E6E1C59781F1
              DDD4C59781E4CDC6EFE6E1EAD6D0E3C3B7DFBBAADDB6A5DDB3A2DDB3A2DDB3A2
              DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3
              A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DDB3A2DD
              B3A2DDB3A2DDB6A5DFBBAAE3C3B7EAD6D0EFE6E1E4CDC6C59781CE9D81EAD7D3
              EAD7D1E3C4B7DDB3A2DAAE9BDAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD
              98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DA
              AD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98DAAD98
              DAAE9BDDB3A2E3C4B7EAD7D1EAD7D3CE9D81CE9D81EBDAD5E7CFC6DFBDABDAAF
              9BDAAE9ADAAD9ADAAE9ADAAF9BDAAE9ADAAD9ADAAE9ADAAE9ADAAF9BDAAE9ADA
              AE9ADAAD9ADAAE9ADAAE9ADAAF9BDAAE9ADAAD9ADAAE9ADAAE9ADAAF9BDAAE9A
              DAAD9ADAAE9ADAAF9BDAAE9ADAAD9ADAAD9ADAAD9ADAAD9ADAAE9ADAAF9BDFBD
              ABE7CFC6EBDAD5CE9D81CE9D81EAD5CFE6CBC1DFBBA8DBB09BDBAF9ADBAF9BDB
              AE9BDBB09BDBAF9ADBAF9BDBAE9BDBAE9BDBB09BDBAF9ADBAF9ADBAF9BDBAE9B
              DBAE9BDBB09BDBAF9ADBAF9BDBAE9BDBAE9BDBB09BDBAF9ADBAF9BDBAE9BDBB0
              9BDBAF9ADBAF9BDBAF9ADBAF9BDBAF9BDBAF9ADBB09BDFBBA8E6CBC1EAD5CFCE
              9D81CE9D81EAD4CDE7CBC0E0B9A8DDB09CDDB09CDDB09BDBB09CDDB09CDDB09C
              DDB09BDBB09CDBB09CDDB09CDDB09CDDB09CDDB09BDBB09CDBB09CDDB09CDDB0
              9CDDB09BDBB09CDBB09CDDB09CDDB09CDDB09BDBB09CDDB09CDDB09CDDB09BDD
              B09CDDB09BDDB09BDDB09CDDB09CE0B9A8E7CBC0EAD4CDCE9D81}
            Skin.SkinSelectTop.Data = {
              E6160000424DE61600000000000036000000280000003A000000210000000100
              180000000000B0160000C30E0000C30E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FF
              DFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8
              FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDF
              C8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FF
              DFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8
              FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC8FFDFC80000FFE8D5FFE7D5
              FFE6D3FFE4D0FFE4CFFFE1CDFFE0CAFFE1CCFFE4CEFFE2CEFFE4CFFFE1CEFFE1
              CCFFE4CEFFE2CEFFE4CFFFE1CEFFE1CCFFE4CEFFE2CEFFE4CFFFE1CEFFE4CEFF
              E2CEFFE4CFFFE1CEFFE1CCFFE4CEFFE2CEFFE4CFFFE1CEFFE4CEFFE2CEFFE4CF
              FFE1CEFFE1CCFFE4CEFFE2CEFFE4CFFFE1CEFFE4CEFFE2CEFFE4CFFFE1CEFFE1
              CCFFE4CEFFE2CEFFE4CFFFE1CEFFE6D3FFE4D0FFE4CFFFE1CDFFE1CCFFE6D0FF
              ECD9FFF2DFFFF9E80000FFE7D2FFE6D2FFE5D0FFE5D0FFE5D0FFE2D0FFE5D0FF
              E2CDFFDEC7FFDEC6FFDFC7FFE0C8FFDEC7FFDEC7FFDEC6FFDFC7FFDFC7FFDFC7
              FFDFC7FFDFC7FFDFC7FFE0C8FFDEC7FFDEC6FFDFC7FFE0C8FFDEC7FFDEC7FFDE
              C6FFDFC7FFE0C8FFDEC7FFDEC6FFDFC7FFE0C8FFDEC7FFDEC7FFDEC6FFDFC7FF
              E0C8FFDEC7FFDEC6FFDFC7FFE0C8FFDEC7FFDEC7FFDEC6FFDFC7FFE0C8FFE5D0
              FFE5D0FFE5D0FFE2D0FFF1E0FFFAECFFFFFDFF00FFFF00FF0000FAC2A4FFFFFF
              FFFFF9FFF4E0FFF6DAFFF6DAFFF8E0FFF7DFFFF7DFFFF7E0FFF8E0FFF8E1FFF7
              E0FFF7E0FFF7E0FFF7E0FFFDE6FFFDE6FFFDE6FFFDE6FFFDE6FFFDE6FFFDE6FF
              FDE7FFFEE7FFFEEAFFFEE8FFFEEAFFFFEBFFFFECFFFFECFFFFEBFFFFEDFFFFED
              FFFFEDFFFFEDFFFFEDFFFFEEFFFFEDFFFFEEFFFFEDFFFFECFFFFEDFFFFEBFFFF
              EAFFFFEBFFFEEAFFFEE7FFFDE8FFFDE7FFF9E2FFDCC8FDD2BDFFFFFAFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFFFF8FFF3DFFFF6DAFFF7DEFFF7DBFF
              F7DFFFF7DFFFF7DFFFF7E0FFF8E0FFF7DFFFFDE6FFFDE6FFFDE6FFFDE6FFFDE6
              FFFDE6FFFDE6FFFDE6FFFDE6FFFDE6FFFDE6FFFDE6FFFEE8FFFEE7FFFEE8FFFE
              EBFFFFEBFFFFEBFFFFEBFFFFEDFFFFEDFFFFEDFFFFECFFFFECFFFFEEFFFFEDFF
              FFEEFFFFEDFFFFECFFFFEDFFFFEBFFFFEBFFFFEBFFFEEBFFFEE7FFFDE8FFFAE4
              FFE6D3FFE0CCFFFFFCFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFF
              FFFFF7FFF3DBFFF6DAFFF6DAFFF6DBFFF6DBFFF6DBFFF7DCFFF7DCFFF7DCFFFD
              E6FFFDE6FFFDE6FFFDE6FFFDE6FFFDE5FFFDE5FFFDE5FFFDE5FFFDE5FFFDE5FF
              FDE5FFFDE5FFFDE6FFFDE7FFFEE7FFFEE7FFFEE8FFFEEAFFFFEAFFFFEAFFFFEB
              FFFFEAFFFFEBFFFFEBFFFFEBFFFFEBFFFFEBFFFFEBFFFFECFFFFEBFFFFEBFFFF
              EAFFFFEAFFFEE8FFFCE6FFF9E2FFE5D0FFE6D4FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFFFF8FFF3DFFFF1D9FFF2D9FFF2DAFF
              F2D8FFF1D9FFF2D9FFF2DAFFF2D8FFFDE5FFFDE5FFFDE5FFFDE5FFFDE5FFF7E0
              FFF7E0FFF7E0FFF7E0FFF7E0FFF7E0FFF9E1FFF9E2FFFAE2FFF9E4FFFAE6FFFA
              E5FFFCE7FFFCE7FFFCE7FFFDE8FFFDE8FFFDEAFFFDE7FFFEEAFFFEE8FFFEEBFF
              FEEAFFFEEAFFFEEBFFFEEBFFFEE8FFFEE8FFFDE7FFFAE6FFF7E0FFE8D4FFE1CE
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFF
              FFFFF7FFF3DBFFF0D8FFF0D8FFF0D8FFF2D8FFF0D8FFF0D8FFF0D8FFF2D8FFF2
              D8FFF0D8FFF7E1FFF7E1FFF7E1FFF7E1FFF7E1FFF7E1FFF7E1FFF7E0FFF7E0FF
              F7E0FFF7E0FFF7E0FFF7E0FFF8E2FFF9E4FFFAE4FFF9E5FFFAE5FFFAE6FFFAE6
              FFFCE6FFFDE7FFFCE7FFFCE7FFFCE7FFFDE8FFFDE8FFFDE8FFFDE8FFFCE8FFFC
              E7FFFAE4FFF6DFFFECD4FFDCC7FFFFFAFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FAC2A4FFFFFFFFFFF9FFF4E0FFEED5FFEED5FFEED5FF
              F0D5FFEED5FFEED5FFEED5FFF0D5FFF0D5FFF4DFFFF4DFFFF4DFFFF4DFFFF4DF
              FFF4DFFFF4DFFFF4DFFFF6DEFFF6DEFFF6DEFFF6DEFFF6DEFFF6DEFFF7E0FFF7
              E1FFF7E2FFF8E2FFF8E2FFF9E4FFF9E4FFF9E4FFF9E5FFFAE5FFFAE6FFFAE6FF
              FAE7FFFAE7FFFAE6FFFAE7FFFAE6FFF9E5FFF6E0FFEED8FFD5BEFFFEF1FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFF
              FFFFF8FFF3DFFFECD4FFEED5FFEED5FFEDD5FFECD4FFEED5FFEED5FFEDD5FFED
              D5FFEED5FFF2DCFFF2DCFFF2DCFFF2DCFFF2DCFFF2DCFFF2DCFFF2DCFFF2DCFF
              F2DCFFF2DCFFF2DCFFF6DEFFF6DEFFF7E0FFF6E0FFF7E1FFF7E2FFF8E2FFF8E2
              FFF9E1FFF9E4FFF8E4FFF8E4FFF9E2FFFAE5FFFAE6FFFAE4FFF9E6FFF9E4FFF4
              DFFFEED9FFDFC9FFE5CFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFFFF7FFF3DBFFEBD2FFEBD2FFEBD2FF
              EBD2FFEBD2FFEBD2FFEBD2FFEBD2FFEBD2FFEBD2FFEED8FFEED8FFEBD5FFEBD5
              FFEBD5FFEBD5FFEBD5FFEBD5FFEED8FFEED8FFEED8FFEED8FFF2DCFFF2DCFFF2
              DCFFF2DCFFF3DCFFF3DFFFF3DEFFF4DFFFF4E0FFF6DFFFF4E0FFF6E1FFF6E0FF
              F6E0FFF7E1FFF7E2FFF6E2FFF3DFFFF0DAFFE5CDFFDAC3FFFFFAFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFF
              FFFFF6FFEEDBFFE8D0FFE8D0FFE8D0FFE8D2FFE8D0FFE8D0FFE8D0FFE8D2FFE8
              D2FFE8D0FFE8D2FFE8D2FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FF
              EBD5FFEBD5FFEBD5FFEED8FFEED8FFEED8FFEED8FFF1DBFFF1DBFFF2DCFFF2DC
              FFF2DCFFF2DEFFF2DEFFF3DFFFF3DFFFF3DFFFF3DFFFF3E0FFF2DCFFF0D9FFEA
              D2FFD6C0FFEDDCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFFFF4FFEED8FFE7CEFFE7CEFFE6CEFF
              E6CEFFE7CEFFE7CEFFE6CEFFE6CEFFE6CEFFE7CEFFE7CEFFE7CEFFEBD5FFEBD5
              FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEB
              D5FFEBD5FFEED8FFF0D9FFF0D8FFEED9FFF0DAFFF0D9FFF0DBFFF0DBFFF0DBFF
              F2DCFFF1DCFFF1DBFFEED8FFEAD2FFDCC6FFDBC3FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFF
              FFFFF3FFEED5FFE4CCFFE5CCFFE5CCFFE5CCFFE4CCFFE5CCFFE5CCFFE5CCFFE5
              CCFFE4CCFFE5CCFFE5CCFFE8D2FFE8D2FFE8D2FFE8D2FFEBD5FFEBD5FFEBD5FF
              EBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFEBD5FFECD5FFEDD6
              FFEED8FFEED8FFEDD8FFEDD8FFEED9FFF0D9FFEEDAFFEDD8FFE8D2FFE1CAFFD2
              B7FFF6E5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFFDF1FFEBD5FFE2CAFFE2CAFFE2CAFF
              E2C9FFE2CAFFE2CAFFE2CAFFE2C9FFE2C9FFE2CAFFE2CAFFE2CAFFE2CAFFE2C9
              FFE8D2FFE8D2FFE8D2FFE8D2FFE8D0FFE8D0FFE8D0FFE8D0FFE8D0FFE8D0FFE8
              D0FFE8D0FFE8D2FFE8D2FFEAD4FFEAD4FFEBD5FFEBD4FFEBD5FFEBD6FFEBD6FF
              ECD5FFECD5FFE8D2FFE1C9FFD5BEFFE2CDFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFF
              FFFFF3FFEED5FFE2C8FFE2C8FFE2C8FFE2C8FFE2C8FFE2C8FFE2C8FFE2C8FFE2
              C8FFE2C8FFE2C8FFE2C8FFE2C8FFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE8D2FF
              E8D2FFE8D2FFE8D2FFE8D2FFE8D2FFE8D2FFE8D2FFE8D0FFE8D0FFE8D0FFE8D0
              FFE8D0FFEAD2FFEAD2FFEBD2FFEBD3FFEBD3FFE7D0FFE1CCFFDAC2FFD5BCFFFF
              F3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFFDF1FFEBD5FFE0C6FFE0C6FFE0C7FF
              E0C6FFE0C6FFE0C6FFE0C7FFE0C6FFE0C6FFE0C6FFE0C6FFE0C6FFE0C7FFE0C6
              FFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE5CDFFE5
              CDFFE5CDFFE5CDFFE5CDFFE5CDFFE6CEFFE6CEFFE6CFFFE6CEFFE7D0FFE7CFFF
              E5D0FFE2CDFFDAC6FFCEB6FFEDD8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFD
              FFFCEDFFE8D4FFDEC6FFDEC3FFDEC6FFDEC6FFDEC6FFDEC3FFDEC6FFDEC6FFDE
              C6FFDEC6FFDEC3FFDEC3FFDEC6FFDEC6FFDEC6FFDEC6FFE5CDFFE2CCFFE2CCFF
              E2CCFFE2CCFFE2CCFFE2CCFFE2CCFFE2CCFFE2CCFFE2CCFFE2CCFFE2CCFFE2CC
              FFE2CDFFE4CDFFE4CDFFE4CDFFE4CDFFE1CAFFDAC4FFD2BBFEC8A8FFFFF1FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFDFFFAEDFFE7D4FFDCC2FFDCC3FFDCC2FF
              DCC3FFDCC2FFDCC3FFDCC2FFDCC3FFDCC3FFDCC2FFDCC3FFDCC3FFDCC2FFDCC3
              FFDCC3FFDCC2FFE0C9FFE0C9FFE0C9FFE0C9FFE0C9FFE0C9FFE0C9FFE0C9FFE0
              C9FFE0C9FFE0C9FFE0C9FFE0C9FFE1C9FFE0C8FFE1C9FFE1C9FFE1C9FFE1C9FF
              DBC6FFD5BCFFC9ACFFD8BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFC
              FFF9EDFFE5D0FFD9C2FFDAC2FFD9C2FFD9C2FFD9C2FFDAC2FFD9C2FFD9C2FFD9
              C2FFD9C2FFDAC2FFDAC2FFD9C2FFD9C2FFD9C2FFD9C2FFDAC3FFDAC3FFDAC3FF
              DAC3FFDAC3FFDAC3FFDAC3FFDEC7FFDEC7FFDEC7FFDEC7FFDEC7FFDEC7FFDEC7
              FFDEC7FFDCC7FFDEC8FFDEC8FFDBC6FFD6C0FFCCB5FCC3A4FFFEF0FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFAFFF9EAFFE2D0FFD8BEFFD9BEFFD8C0FF
              D9C0FFD8BEFFD9BEFFD8C0FFD9C0FFD9C0FFD8BEFFD9BEFFD9BEFFD8C0FFD9C0
              FFD9C0FFD8BEFFD9BEFFD8C0FFDAC3FFDAC3FFDAC3FFDAC3FFDAC3FFDAC3FFDA
              C3FFDAC3FFDAC3FFDAC3FFDAC3FFDAC3FFDAC3FFDBC3FFDBC3FFDAC3FFD6C0FF
              CFB8FFC4A5FFD9BCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFF8
              FFF6EAFFE2CEFFD5BEFFD6BEFFD5BEFFD5BEFFD5BEFFD6BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD6BEFFD6BEFFD5BEFFD5BEFFD5BEFFD5BEFFD6BEFFD5BEFFD5BEFF
              DAC3FFDAC3FFDAC3FFDAC3FFDAC3FFD6BEFFD6BEFFD5BEFFD6BEFFD5BEFFD8C1
              FFD9C2FFD9C2FFD9C2FFD9C0FFD2B8FFC7AFFAC2A4FFF7E8FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFF8FFF4E7FFE2CCFFD5BDFFD5BDFFD5BDFF
              D5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BD
              FFD5BDFFD5BDFFD5BDFFD5BDFFD5BDFFD5BEFFD6BEFFD6BEFFD6BEFFD6BEFFD6
              C0FFD6C0FFD6C0FFD6C0FFD6C0FFD6C0FFD6C0FFD6C0FFD6BEFFD3BCFFCAB4FD
              C2A3FFDBC1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFF7
              FFF4E6FFE0C9FFD4BBFFD4BCFFD4BCFFD3BBFFD4BBFFD4BCFFD4BCFFD3BBFFD3
              BBFFD4BBFFD4BCFFD4BCFFD4BCFFD3BBFFD3BBFFD4BBFFD4BCFFD4BCFFD3BBFF
              D3BBFFD4BBFFD4BCFFD4BCFFD4BCFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD4BEFFD4BCFFD3BCFFCDB5FFC4ACFDC7A9FFFFF7FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFEF6FFF3E6FFDEC9FFD3BBFFD3BBFFD3BAFF
              D3BBFFD3BBFFD3BBFFD3BAFFD3BBFFD3BBFFD3BBFFD3BBFFD3BBFFD3BAFFD3BB
              FFD3BBFFD3BBFFD3BBFFD3BAFFD3BBFFD3BBFFD3BBFFD3BBFFD3BAFFD3BBFFD3
              BAFFD3BBFFD3BAFFD3BBFFD3BAFFD3BBFFD5BCFFD4BBFFCFB7FFC9B1FCC4A8FF
              FAECFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFF8
              FFF3E7FFE0C9FFD3BAFFD2B8FFD2BAFFD0BAFFD3BAFFD2B8FFD2BAFFD0BAFFD0
              BAFFD3BAFFD2B8FFD2B8FFD2BAFFD0BAFFD0BAFFD3BAFFD2B8FFD2BAFFD0BAFF
              D0BAFFD3BAFFD2B8FFD2BAFFD2B8FFD2BAFFD2B8FFD2BAFFD2B8FFD2BAFFD3BB
              FFD3BCFFD2B7FFCCB5FCC3A9FFE0C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000F7BC9AFFFFFFFFF8EDFFE2CDFFD2BAFFD0B8FFCFB8FF
              D0B8FFD2BAFFD0B8FFCFB8FFD0B8FFD0B8FFD2BAFFD0B8FFD0B8FFCFB8FFD0B8
              FFD0B8FFD2BAFFD0B8FFCFB8FFD0B8FFD0B8FFD2BAFFD0B8FFCFB8FFCFB8FFCF
              B8FFCFB8FFCFB8FFCFB8FFCFB8FFD4BCFFD3BCFFCFB7FEC7ACFFCFB5FFFFF9FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F7BC9AFFFFFD
              FFFFFAFFEBDBFFD6C2FFD0BAFFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCF
              B6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FF
              CFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FDD4C2FFD6C2FFD8C3
              FFD4BEFFCAB4FFD0B7FFFFF2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000ECB59AFFF6EDFFFFFFFFFFF9FFEADBFFE0CCFFDAC6FF
              D6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2
              FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6
              C2FFDEC9FFE0CCFFE2D0FFE2CEFFDEC9FFCEB6F8C1A3FFFFF4FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FFFFFEECB59A
              FFFFFFFFFFFFFFFFFFFFFCF3FFF4EAFFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1
              E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FF
              F1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF0E2FFEEDFFFE2D2FDC8B2
              F6BC9AFFFFF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FF00FFFFFFF8ECB59AFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF4EAFFE2D2FDCAB6F9C2AAF8C09FFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
              FFFFFEF2BEA6F0BCA3ECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB5
              9AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AEC
              B59AECB59AECB59AECB59AECB59AECB59AECB59AF7BC9AF7BC9AFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000}
            Skin.SkinSelectCenter.Data = {
              0E050000424D0E050000000000003600000028000000290000000A0000000100
              180000000000D8040000C30E0000C30E00000000000000000000F7BC9AFFFFFF
              FFFFF4FFEED8FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFEED5FFF6EAFFFFF8F7BC9A00F7BC9AFFFFFFFFFFF3FF
              EED5FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFEBD5FFF9EAFFFFFAF7BC9A00F7BC9AFFFFFFFFFDF1FFEBD5FFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFEED5FFF9EDFFFFFCF7BC9A00F7BC9AFFFFFFFFFFF3FFEED5FFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFEED8
              FFF9EAFFFFFDF7BC9A00F7BC9AFFFFFFFFFDF1FFEBD5FFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFEED8FFFCEDFF
              FFFDF7BC9A00F7BC9AFFFFFDFFFCEDFFE8D4FFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFEED8FFFDF1FFFFFFF7BC
              9A00F7BC9AFFFFFDFFFAEDFFE7D4FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFEED8FFFFF3FFFFFFF7BC9A00F7BC
              9AFFFFFCFFF9EDFFE5D0FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFEED8FFFDF1FFFFFFF7BC9A00F7BC9AFFFFFA
              FFF9EAFFE2D0FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFEED5FFFFF3FFFFFFF7BC9A00F7BC9AFFFFF8FFF6EAFF
              E2CEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BE
              FFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5
              BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFFD5BEFF
              D5BEFFD5BEFFEED8FFFFF4FFFFFFF7BC9A00}
            Skin.SkinSelectBottom.Data = {
              F6030000424DF603000000000000360000002800000028000000080000000100
              180000000000C0030000C30E0000C30E00000000000000000000FF00FFFF00FF
              FFFFFEF2BEA6F0BCA3ECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB5
              9AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AEC
              B59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59AECB59A
              ECB59AF0BCA3F2BEA6FFFFFEFF00FFFF00FFFF00FFFFFFF8ECB59AFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFECB59AFFFFF8FF00FFFFFFFEECB59AFFFFFFFFFFFFFFFFFFFFFCF3FFF4EAFF
              F1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4
              FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1E4FFF1
              E4FFF1E4FFF1E4FFF1E4FFF1E4FFF4EAFFFCF3FFFFFFFFFFFFFFFFFFECB59AFF
              FFFEECB59AFFF6EDFFFFFFFFFFF9FFEADBFFE0CCFFDAC6FFD6C2FFD6C2FFD6C2
              FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6
              C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FFD6C2FF
              D6C2FFD6C2FFDAC6FFE0CCFFEADBFFFFF9FFFFFFFFF6EDECB59AF7BC9AFFFFFD
              FFFFFAFFEBDBFFD6C2FFD0BAFFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCF
              B6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FF
              CFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6FFCFB6
              FFD0BAFFD6C2FFEBDBFFFFFAFFFFFDF7BC9AF7BC9AFFFFFFFFF8EDFFE2CDFFD2
              BAFFD0B8FFCFB8FFD0B8FFD2BAFFD0B8FFCFB8FFD0B8FFD0B8FFD2BAFFD0B8FF
              D0B8FFCFB8FFD0B8FFD0B8FFD2BAFFD0B8FFCFB8FFD0B8FFD0B8FFD2BAFFD0B8
              FFCFB8FFD0B8FFD2BAFFD0B8FFCFB8FFCFB8FFCFB8FFCFB8FFD0B8FFD2BAFFE2
              CDFFF8EDFFFFFFF7BC9AF7BC9AFFFFF8FFF3E7FFE0C9FFD3BAFFD2B8FFD2BAFF
              D0BAFFD3BAFFD2B8FFD2BAFFD0BAFFD0BAFFD3BAFFD2B8FFD2B8FFD2BAFFD0BA
              FFD0BAFFD3BAFFD2B8FFD2BAFFD0BAFFD0BAFFD3BAFFD2B8FFD2BAFFD0BAFFD3
              BAFFD2B8FFD2BAFFD2B8FFD2BAFFD2BAFFD2B8FFD3BAFFE0C9FFF3E7FFFFF8F7
              BC9AF7BC9AFFFEF6FFF3E6FFDEC9FFD3BBFFD3BBFFD3BAFFD3BBFFD3BBFFD3BB
              FFD3BAFFD3BBFFD3BBFFD3BBFFD3BBFFD3BBFFD3BAFFD3BBFFD3BBFFD3BBFFD3
              BBFFD3BAFFD3BBFFD3BBFFD3BBFFD3BBFFD3BAFFD3BBFFD3BBFFD3BBFFD3BAFF
              D3BBFFD3BAFFD3BAFFD3BBFFD3BBFFDEC9FFF3E6FFFEF6F7BC9A}
            Skin.SkinCaptionX = 4
            Skin.SkinX = 4
            Skin.SkinY = 10
            TMSStyle = 0
          end
          object AdvTrackBar1: TAdvTrackBar
            Left = 16
            Top = 39
            Width = 150
            Height = 26
            BorderColor = clNone
            BorderColorDisabled = clNone
            Buttons.BorderColor = 9262895
            Buttons.BorderColorHot = 10079963
            Buttons.BorderColorDown = 4548219
            Buttons.Color = 15653832
            Buttons.ColorTo = 16178633
            Buttons.ColorHot = 15465983
            Buttons.ColorHotTo = 11332863
            Buttons.ColorDown = 7778289
            Buttons.ColorDownTo = 4296947
            Buttons.ColorMirror = 15586496
            Buttons.ColorMirrorTo = 16245200
            Buttons.ColorMirrorHot = 5888767
            Buttons.ColorMirrorHotTo = 10807807
            Buttons.ColorMirrorDown = 946929
            Buttons.ColorMirrorDownTo = 5021693
            Buttons.GradientMirror = ggVertical
            ColorTo = clNone
            ColorDisabled = clNone
            ColorDisabledTo = clNone
            Direction = gdHorizontal
            Color = clNone
            Max = 50
            Min = 20
            ParentShowHint = False
            Position = 20
            ShowHint = True
            Slider.BorderColor = 12752500
            Slider.BorderColorDisabled = clBlack
            Slider.Color = clWhite
            Slider.ColorTo = clBlack
            Slider.ColorDisabled = clBlack
            Slider.ColorDisabledTo = clBlack
            Slider.ColorCompleted = clNone
            Slider.ColorCompletedTo = clNone
            Slider.ColorCompletedDisabled = clNone
            Slider.ColorCompletedDisabledTo = clNone
            Slider.Direction = gdHorizontal
            TabOrder = 1
            Thumb.BorderColor = 10317632
            Thumb.BorderColorHot = 10079963
            Thumb.BorderColorDown = 4548219
            Thumb.BorderColorDisabled = clBlack
            Thumb.Color = 15653832
            Thumb.ColorTo = 16178633
            Thumb.ColorDown = 7778289
            Thumb.ColorDownTo = 4296947
            Thumb.ColorHot = 15465983
            Thumb.ColorHotTo = 11332863
            Thumb.ColorDisabled = clBlack
            Thumb.ColorDisabledTo = clBlack
            Thumb.ColorMirror = 15586496
            Thumb.ColorMirrorTo = 16245200
            Thumb.ColorMirrorHot = 5888767
            Thumb.ColorMirrorHotTo = 10807807
            Thumb.ColorMirrorDown = 946929
            Thumb.ColorMirrorDownTo = 5021693
            Thumb.ColorMirrorDisabled = clBlack
            Thumb.ColorMirrorDisabledTo = clBlack
            Thumb.Gradient = ggVertical
            Thumb.GradientMirror = ggRadial
            Thumb.Shape = tsPointer
            TickMark.Color = clBlack
            TickMark.ColorDisabled = clBlack
            TickMark.Font.Charset = DEFAULT_CHARSET
            TickMark.Font.Color = clWindowText
            TickMark.Font.Height = -11
            TickMark.Font.Name = 'Tahoma'
            TickMark.Font.Style = []
            TickMark.ShowText = True
            TrackHint = True
            TrackLabel.Font.Charset = DEFAULT_CHARSET
            TrackLabel.Font.Color = clWindowText
            TrackLabel.Font.Height = -11
            TrackLabel.Font.Name = 'Tahoma'
            TrackLabel.Font.Style = []
            TrackLabel.Format = 'Pos: %d'
            Version = '1.6.10.0'
            OnChange = AdvTrackBar1Change
          end
          object cbCurrentTime: TAdvComboBox
            Left = 22
            Top = 111
            Width = 148
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 2
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbChartNoView: TAdvComboBox
            Left = 22
            Top = 167
            Width = 148
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 3
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbColumnFix: TAdvComboBox
            Left = 22
            Top = 223
            Width = 148
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 4
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbonlyChartView: TAdvComboBox
            Left = 22
            Top = 277
            Width = 148
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 5
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbPromiseLock: TAdvComboBox
            Left = 22
            Top = 327
            Width = 148
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 6
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object GroupBox1: TGroupBox
            Left = 210
            Top = 25
            Width = 318
            Height = 291
            Caption = #9679#49353' '#51648#51221
            TabOrder = 7
            object EllipsLabel159: TLabel
              Left = 7
              Top = 73
              Width = 41
              Height = 16
              AutoSize = False
              Caption = #52712#49548
              Transparent = True
            end
            object EllipsLabel160: TLabel
              Left = 7
              Top = 98
              Width = 41
              Height = 16
              AutoSize = False
              Caption = #48320#44221
              Transparent = True
            end
            object EllipsLabel161: TLabel
              Left = 7
              Top = 48
              Width = 41
              Height = 16
              AutoSize = False
              Caption = #45236#50896
              Transparent = True
            end
            object EllipsLabel162: TLabel
              Left = 7
              Top = 128
              Width = 49
              Height = 16
              AutoSize = False
              Caption = #50672#46973#50504#46120
              Transparent = True
            end
            object EllipsLabel163: TLabel
              Left = 7
              Top = 153
              Width = 41
              Height = 16
              AutoSize = False
              Caption = #51116#50696#50557
              Transparent = True
            end
            object EllipsLabel164: TLabel
              Left = 7
              Top = 185
              Width = 49
              Height = 16
              AutoSize = False
              Caption = #47532#53084#46321#47197
              Transparent = True
            end
            object EllipsLabel165: TLabel
              Left = 7
              Top = 215
              Width = 49
              Height = 16
              AutoSize = False
              Caption = #51333#44208
              Transparent = True
            end
            object EllipsLabel168: TLabel
              Left = 57
              Top = 28
              Width = 41
              Height = 16
              AutoSize = False
              Caption = #48176#44221#49353
              Transparent = True
            end
            object EllipsLabel169: TLabel
              Left = 162
              Top = 28
              Width = 41
              Height = 16
              AutoSize = False
              Caption = #44544#51088#49353
              Transparent = True
            end
            object cbColorCancel_b: TAdvColorPickerDropDown
              Left = 55
              Top = 70
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 0
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorChange_b: TAdvColorPickerDropDown
              Left = 55
              Top = 95
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 1
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object CbColorNewon_b: TAdvColorPickerDropDown
              Left = 55
              Top = 45
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 2
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorNotCon_b: TAdvColorPickerDropDown
              Left = 55
              Top = 125
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 3
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorreYeyak_b: TAdvColorPickerDropDown
              Left = 55
              Top = 150
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 4
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorRecall_b: TAdvColorPickerDropDown
              Left = 55
              Top = 180
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 5
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorEnd_b: TAdvColorPickerDropDown
              Left = 55
              Top = 210
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 6
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorCancel_f: TAdvColorPickerDropDown
              Left = 160
              Top = 70
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 7
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorChange_f: TAdvColorPickerDropDown
              Left = 160
              Top = 95
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 8
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorNewon_f: TAdvColorPickerDropDown
              Left = 160
              Top = 45
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 9
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorNotCon_f: TAdvColorPickerDropDown
              Left = 160
              Top = 125
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 10
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorReYeyak_f: TAdvColorPickerDropDown
              Left = 160
              Top = 150
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 11
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorRecall_f: TAdvColorPickerDropDown
              Left = 160
              Top = 180
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 12
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbColorEnd_f: TAdvColorPickerDropDown
              Left = 160
              Top = 210
              Width = 100
              Height = 21
              Colors = <
                item
                  Caption = 'Black'
                  Color = clBlack
                end
                item
                  Caption = 'Maroon'
                  Color = clMaroon
                end
                item
                  Caption = 'Green'
                  Color = clGreen
                end
                item
                  Caption = 'Olive'
                  Color = clOlive
                end
                item
                  Caption = 'Navy'
                  Color = clNavy
                end
                item
                  Caption = 'Purple'
                  Color = clPurple
                end
                item
                  Caption = 'Teal'
                  Color = clTeal
                end
                item
                  Caption = 'Gray'
                  Color = clGray
                end
                item
                  Caption = 'Silver'
                  Color = clSilver
                end
                item
                  Caption = 'Red'
                  Color = clRed
                end
                item
                  Caption = 'Lime'
                  Color = clLime
                end
                item
                  Caption = 'Yellow'
                  Color = clYellow
                end
                item
                  Caption = 'Blue'
                  Color = clBlue
                end
                item
                  Caption = 'Fuchsia'
                  Color = clFuchsia
                end
                item
                  Caption = 'Aqua'
                  Color = clAqua
                end
                item
                  Caption = 'White'
                  Color = clWhite
                end>
              ItemAppearance.BorderColor = 9295827
              ItemAppearance.BorderColorTop = 16056063
              ItemAppearance.BorderColorBottom = 13302015
              ItemAppearance.ColorHot = 14155773
              ItemAppearance.ColorHotTo = 5821692
              ItemAppearance.ColorHotText = clBlack
              ItemAppearance.ColorMirrorHot = 5821692
              ItemAppearance.ColorMirrorHotTo = 11792892
              ItemAppearance.ColorSelected = 10944507
              ItemAppearance.ColorSelectedTo = 309748
              ItemAppearance.ColorMirrorSelected = 1425915
              ItemAppearance.ColorMirrorSelectedTo = 6874105
              ItemAppearance.ColorSelectedText = clBlack
              ItemAppearance.EdgeColor = 12835295
              ItemAppearance.Font.Charset = DEFAULT_CHARSET
              ItemAppearance.Font.Color = clWindowText
              ItemAppearance.Font.Height = -11
              ItemAppearance.Font.Name = 'Tahoma'
              ItemAppearance.Font.Style = []
              ImeName = 'Microsoft Office IME 2007'
              DropDownColor = 15984090
              DropDownBorderColor = clNone
              LabelMargin = 0
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'MS Sans Serif'
              LabelFont.Style = []
              Version = '1.4.6.1'
              ButtonAppearance.BorderColorHot = 10079963
              ButtonAppearance.BorderColorDown = 4370174
              ButtonAppearance.Color = 16773091
              ButtonAppearance.ColorTo = 16768452
              ButtonAppearance.ColorDisabledTo = 11974326
              ButtonAppearance.ColorDown = 11196927
              ButtonAppearance.ColorDownTo = 7257087
              ButtonAppearance.ColorHot = 15465983
              ButtonAppearance.ColorHotTo = 11332863
              ButtonAppearance.Font.Charset = DEFAULT_CHARSET
              ButtonAppearance.Font.Color = clWindowText
              ButtonAppearance.Font.Height = -11
              ButtonAppearance.Font.Name = 'Tahoma'
              ButtonAppearance.Font.Style = []
              DropDownHeader.Color = 16773091
              DropDownHeader.ColorTo = 16765615
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 7485192
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = False
              DropDownHeader.BorderColor = 16765615
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = 16773091
              DropDownFooter.ColorTo = 16765615
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 7485192
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'MS Sans Serif'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = False
              DropDownFooter.BorderColor = 16765615
              DropDownFooter.Buttons = <>
              TabOrder = 13
              SelectionColorStyle = 1
              TMSStyle = 4
            end
            object cbViewItalic: TCheckBox
              Left = 265
              Top = 45
              Width = 47
              Height = 17
              Caption = 'Italic'
              TabOrder = 14
            end
          end
        end
        object AdvPanel5: TAdvPanel
          Left = 1
          Top = 1
          Width = 1249
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Color = 16381427
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UseDockManager = True
          Version = '2.5.7.9'
          AutoHideChildren = False
          BorderColor = 16765615
          Caption.Color = 16316406
          Caption.ColorTo = 15261915
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clBlack
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 2
          Caption.ShadeLight = 255
          Caption.Text = #50696#50557#54364#51032' '#49884#44036', '#49353' '#44396#49457#50640' '#45824#54644#49436' '#50741#49496#51012' '#48320#44221#54633#45768#45796'.'
          Caption.Visible = True
          CollapsColor = clNone
          CollapsDelay = 0
          ColorTo = 15195349
          ColorMirror = 15195349
          ColorMirrorTo = 16513776
          DoubleBuffered = True
          ShadowColor = clBlack
          ShadowOffset = 0
          StatusBar.BorderStyle = bsSingle
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = 7485192
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          StatusBar.Color = 16445163
          StatusBar.ColorTo = 15064023
          StatusBar.GradientDirection = gdVertical
          Styler = AdvPanelStyler1
          Text = ''
          FullHeight = 0
        end
        object AdvPanel6: TAdvPanel
          Left = 1
          Top = 25
          Width = 1249
          Height = 221
          Align = alTop
          BevelOuter = bvNone
          Color = 16381427
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          UseDockManager = True
          Version = '2.5.7.9'
          AutoHideChildren = False
          BorderColor = 16765615
          Caption.Color = 16316406
          Caption.ColorTo = 15261915
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clBlack
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 2
          Caption.ShadeLight = 255
          Caption.Text = #49884#44036#51648#51221
          Caption.Visible = True
          CollapsColor = clNone
          CollapsDelay = 0
          ColorTo = 15195349
          ColorMirror = 15195349
          ColorMirrorTo = 16513776
          DoubleBuffered = True
          ShadowColor = clBlack
          ShadowOffset = 0
          StatusBar.BorderStyle = bsSingle
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = 7485192
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          StatusBar.Color = 16445163
          StatusBar.ColorTo = 15064023
          StatusBar.GradientDirection = gdVertical
          Styler = AdvPanelStyler1
          Text = ''
          FullHeight = 0
          object EllipsLabel1: TLabel
            Left = 20
            Top = 28
            Width = 55
            Height = 13
            AutoSize = False
            Caption = #9679#49884#51089#49884#44036
            Transparent = True
          end
          object EllipsLabel2: TLabel
            Left = 20
            Top = 53
            Width = 55
            Height = 13
            AutoSize = False
            Caption = #9679#47560#44048#49884#44036
            Transparent = True
          end
          object EllipsLabel3: TLabel
            Left = 20
            Top = 76
            Width = 55
            Height = 13
            AutoSize = False
            Caption = #9679#49884#44036#44036#44201
            Transparent = True
          end
          object EllipsLabel4: TLabel
            Left = 121
            Top = 27
            Width = 11
            Height = 13
            Caption = #49884
            Transparent = True
          end
          object EllipsLabel5: TLabel
            Left = 176
            Top = 27
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel6: TLabel
            Left = 121
            Top = 51
            Width = 11
            Height = 13
            Caption = #49884
            Transparent = True
          end
          object EllipsLabel7: TLabel
            Left = 176
            Top = 51
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel9: TLabel
            Left = 121
            Top = 76
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel10: TLabel
            Left = 20
            Top = 101
            Width = 55
            Height = 13
            AutoSize = False
            Caption = #9679#52972#47100#49688
            Transparent = True
          end
          object EllipsLabel99: TLabel
            Left = 235
            Top = 27
            Width = 116
            Height = 13
            AutoSize = False
            Caption = #9679#54217#51068' '#51216#49900#49884#51089#49884#44036
            Transparent = True
          end
          object EllipsLabel101: TLabel
            Left = 397
            Top = 26
            Width = 11
            Height = 13
            Caption = #49884
            Transparent = True
          end
          object EllipsLabel102: TLabel
            Left = 452
            Top = 26
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel103: TLabel
            Left = 397
            Top = 50
            Width = 11
            Height = 13
            Caption = #49884
            Transparent = True
          end
          object EllipsLabel104: TLabel
            Left = 452
            Top = 50
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel100: TLabel
            Left = 235
            Top = 52
            Width = 116
            Height = 13
            AutoSize = False
            Caption = #9679#54217#51068' '#51216#49900#47560#52840#49884#44036
            Transparent = True
          end
          object EllipsLabel105: TLabel
            Left = 235
            Top = 75
            Width = 81
            Height = 16
            AutoSize = False
            Caption = #9679#51216#49900#54364#49884' '#49353
            Transparent = True
          end
          object EllipsLabel106: TLabel
            Left = 235
            Top = 97
            Width = 81
            Height = 16
            AutoSize = False
            Caption = #9679#51216#49900#54364#49884' '#45236#50857
            Transparent = True
          end
          object EllipsLabel182: TLabel
            Left = 21
            Top = 123
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679#50896#51109#51221#48372' '#53092#48372#48149#49828#47196' '#48372#44592
            Transparent = True
          end
          object EllipsLabel186: TLabel
            Left = 21
            Top = 148
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679#50696#50557#46321#47197#49884' '#44544#51088#49353' '#44256#51221
            Transparent = True
          end
          object EllipsLabel189: TLabel
            Left = 366
            Top = 145
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679'SMS'#51204#49569#48169#51648' '#51088#46041#49444#51221
            Transparent = True
          end
          object EllipsLabel201: TLabel
            Left = 366
            Top = 120
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679#50696#50557#46321#47197#49884' SMS '#51088#46041' '#51204#49569
            Transparent = True
          end
          object EllipsLabel222: TLabel
            Left = 21
            Top = 171
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679#50696#50557#51064#49604#49884' '#54872#51088' '#52280#44256#49324#54637' '#51064#49604
            Transparent = True
          end
          object EllipsLabel239: TLabel
            Left = 366
            Top = 172
            Width = 195
            Height = 21
            AutoSize = False
            Caption = #9679#50696#50557' '#49325#51228#49884'  '#51217#49688#45236#50669#46020' '#44057#51060' '#49325#51228
            Transparent = True
          end
          object EllipsLabel243: TLabel
            Left = 490
            Top = 25
            Width = 122
            Height = 13
            AutoSize = False
            Caption = #9679#53664#50836#51068' '#51216#49900#49884#51089#49884#44036
            Transparent = True
          end
          object EllipsLabel244: TLabel
            Left = 652
            Top = 24
            Width = 11
            Height = 13
            Caption = #49884
            Transparent = True
          end
          object EllipsLabel245: TLabel
            Left = 707
            Top = 24
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel246: TLabel
            Left = 652
            Top = 48
            Width = 11
            Height = 13
            Caption = #49884
            Transparent = True
          end
          object EllipsLabel247: TLabel
            Left = 707
            Top = 48
            Width = 11
            Height = 13
            Caption = #48516
            Transparent = True
          end
          object EllipsLabel248: TLabel
            Left = 490
            Top = 50
            Width = 124
            Height = 13
            AutoSize = False
            Caption = #9679#53664#50836#51068' '#51216#49900#47560#52840#49884#44036
            Transparent = True
          end
          object EllipsLabel262: TLabel
            Left = 691
            Top = 118
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679#48120#50756#47308' '#50629#47924#45236#50669' '#44228#49549' '#48372#44592
            Transparent = True
          end
          object EllipsLabel270: TLabel
            Left = 691
            Top = 143
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679'Promise Transfer'
            Transparent = True
          end
          object EllipsLabel284: TLabel
            Left = 21
            Top = 193
            Width = 185
            Height = 21
            AutoSize = False
            Caption = #9679#50696#50557#46321#47197#49884' '#52488#44592' '#54016' '#51201#50857' '#50504#54632
            Transparent = True
          end
          object cbsTime: TComboBox
            Left = 80
            Top = 24
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = '09'
            Items.Strings = (
              '07'
              '08'
              '09'
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
              '20'
              '21'
              '22'
              '23'
              '24')
          end
          object cbsMin: TComboBox
            Left = 137
            Top = 24
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = '30'
            Items.Strings = (
              '00'
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
          end
          object cbfTime: TComboBox
            Left = 80
            Top = 48
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 2
            Text = '09'
            Items.Strings = (
              '07'
              '08'
              '09'
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
              '20'
              '21'
              '22'
              '23'
              '24')
          end
          object cbfMin: TComboBox
            Left = 137
            Top = 48
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 3
            Text = '30'
            Items.Strings = (
              '00'
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
          end
          object cbiMin: TComboBox
            Left = 80
            Top = 72
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 4
            Text = '30'
            Items.Strings = (
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55'
              '60')
          end
          object edtGugan: TAdvEdit
            Left = 80
            Top = 96
            Width = 41
            Height = 21
            DefaultHandling = True
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
            TabOrder = 5
            Text = 'edtGugan'
            Visible = True
            Version = '3.4.9.0'
          end
          object cbLunchsTime: TComboBox
            Left = 356
            Top = 23
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 6
            Text = '09'
            Items.Strings = (
              '07'
              '08'
              '09'
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
              '20'
              '21'
              '22'
              '23'
              '24')
          end
          object cbLunchsmin: TComboBox
            Left = 413
            Top = 23
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 7
            Text = '30'
            Items.Strings = (
              '00'
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
          end
          object cbLunchfTime: TComboBox
            Left = 356
            Top = 47
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 8
            Text = '09'
            Items.Strings = (
              '07'
              '08'
              '09'
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
              '20'
              '21'
              '22'
              '23'
              '24')
          end
          object cbLunchfMin: TComboBox
            Left = 413
            Top = 47
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 9
            Text = '30'
            Items.Strings = (
              '00'
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
          end
          object edtLunchColor: TAdvColorPickerDropDown
            Left = 356
            Top = 70
            Width = 251
            Height = 21
            Colors = <
              item
                Caption = 'Black'
                Color = clBlack
              end
              item
                Caption = 'Maroon'
                Color = clMaroon
              end
              item
                Caption = 'Green'
                Color = clGreen
              end
              item
                Caption = 'Olive'
                Color = clOlive
              end
              item
                Caption = 'Navy'
                Color = clNavy
              end
              item
                Caption = 'Purple'
                Color = clPurple
              end
              item
                Caption = 'Teal'
                Color = clTeal
              end
              item
                Caption = 'Gray'
                Color = clGray
              end
              item
                Caption = 'Silver'
                Color = clSilver
              end
              item
                Caption = 'Red'
                Color = clRed
              end
              item
                Caption = 'Lime'
                Color = clLime
              end
              item
                Caption = 'Yellow'
                Color = clYellow
              end
              item
                Caption = 'Blue'
                Color = clBlue
              end
              item
                Caption = 'Fuchsia'
                Color = clFuchsia
              end
              item
                Caption = 'Aqua'
                Color = clAqua
              end
              item
                Caption = 'White'
                Color = clWhite
              end>
            ItemAppearance.BorderColor = 9295827
            ItemAppearance.BorderColorTop = 16056063
            ItemAppearance.BorderColorBottom = 13302015
            ItemAppearance.ColorHot = 14155773
            ItemAppearance.ColorHotTo = 5821692
            ItemAppearance.ColorHotText = clBlack
            ItemAppearance.ColorMirrorHot = 5821692
            ItemAppearance.ColorMirrorHotTo = 11792892
            ItemAppearance.ColorSelected = 10944507
            ItemAppearance.ColorSelectedTo = 309748
            ItemAppearance.ColorMirrorSelected = 1425915
            ItemAppearance.ColorMirrorSelectedTo = 6874105
            ItemAppearance.ColorSelectedText = clBlack
            ItemAppearance.EdgeColor = 12835295
            ItemAppearance.Font.Charset = DEFAULT_CHARSET
            ItemAppearance.Font.Color = clWindowText
            ItemAppearance.Font.Height = -11
            ItemAppearance.Font.Name = 'Tahoma'
            ItemAppearance.Font.Style = []
            ImeName = 'Microsoft Office IME 2007'
            DropDownColor = 15984090
            DropDownBorderColor = clNone
            LabelMargin = 0
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            Version = '1.4.6.1'
            ButtonAppearance.BorderColorHot = 10079963
            ButtonAppearance.BorderColorDown = 4370174
            ButtonAppearance.Color = 16773091
            ButtonAppearance.ColorTo = 16768452
            ButtonAppearance.ColorDisabledTo = 11974326
            ButtonAppearance.ColorDown = 11196927
            ButtonAppearance.ColorDownTo = 7257087
            ButtonAppearance.ColorHot = 15465983
            ButtonAppearance.ColorHotTo = 11332863
            ButtonAppearance.Font.Charset = DEFAULT_CHARSET
            ButtonAppearance.Font.Color = clWindowText
            ButtonAppearance.Font.Height = -11
            ButtonAppearance.Font.Name = 'Tahoma'
            ButtonAppearance.Font.Style = []
            DropDownHeader.Color = 16773091
            DropDownHeader.ColorTo = 16765615
            DropDownHeader.Font.Charset = DEFAULT_CHARSET
            DropDownHeader.Font.Color = 7485192
            DropDownHeader.Font.Height = -11
            DropDownHeader.Font.Name = 'Tahoma'
            DropDownHeader.Font.Style = []
            DropDownHeader.Visible = False
            DropDownHeader.BorderColor = 16765615
            DropDownHeader.Buttons = <>
            DropDownFooter.Color = 16773091
            DropDownFooter.ColorTo = 16765615
            DropDownFooter.Font.Charset = DEFAULT_CHARSET
            DropDownFooter.Font.Color = 7485192
            DropDownFooter.Font.Height = -11
            DropDownFooter.Font.Name = 'MS Sans Serif'
            DropDownFooter.Font.Style = []
            DropDownFooter.Visible = False
            DropDownFooter.BorderColor = 16765615
            DropDownFooter.Buttons = <>
            TabOrder = 10
            SelectionColorStyle = 1
            TMSStyle = 4
          end
          object edtLunchCap: TEdit
            Left = 356
            Top = 95
            Width = 250
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 11
          end
          object cbPromiseDocComboView: TAdvComboBox
            Left = 234
            Top = 121
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 12
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbFixPromiseFontcolor: TAdvComboBox
            Left = 234
            Top = 145
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 1
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 13
            Text = #50696
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbAutoNoSms: TAdvComboBox
            Left = 564
            Top = 143
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 14
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbAutoSendSMS: TAdvComboBox
            Left = 564
            Top = 118
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 15
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbRemarkPrint: TAdvComboBox
            Left = 234
            Top = 169
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 16
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbJubsuDelete: TAdvComboBox
            Left = 564
            Top = 168
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 17
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbLunchsTime_sat: TComboBox
            Left = 611
            Top = 21
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 18
            Text = '09'
            Items.Strings = (
              '07'
              '08'
              '09'
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
              '20'
              '21'
              '22'
              '23'
              '24')
          end
          object cbLunchsmin_sat: TComboBox
            Left = 668
            Top = 21
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 19
            Text = '30'
            Items.Strings = (
              '00'
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
          end
          object cbLunchfTime_sat: TComboBox
            Left = 611
            Top = 45
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 20
            Text = '09'
            Items.Strings = (
              '07'
              '08'
              '09'
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
              '20'
              '21'
              '22'
              '23'
              '24')
          end
          object cbLunchfMin_sat: TComboBox
            Left = 668
            Top = 45
            Width = 40
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 21
            Text = '30'
            Items.Strings = (
              '00'
              '05'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55')
          end
          object cbDelayWorkView: TAdvComboBox
            Left = 879
            Top = 118
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 22
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbPromiseTransfer: TAdvComboBox
            Left = 879
            Top = 143
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 1
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 23
            Text = #50696
            OnKeyPress = EdtHpNameKeyPress
          end
          object cbPromiseTeamLoad: TAdvComboBox
            Left = 234
            Top = 191
            Width = 106
            Height = 21
            Color = clWindow
            Version = '1.9.2.1'
            Visible = True
            ButtonWidth = 17
            EmptyTextStyle = []
            DropWidth = 0
            Enabled = True
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            Items.Strings = (
              #50500#45768#50724
              #50696)
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            TabOrder = 24
            Text = #50500#45768#50724
            OnKeyPress = EdtHpNameKeyPress
          end
        end
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = #52264#53944#48264#54840#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object plchart: TPanel
        Left = 0
        Top = 0
        Width = 1251
        Height = 718
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label36: TLabel
          Left = 32
          Top = 534
          Width = 384
          Height = 24
          Caption = 
            #8251' '#51060' '#48264#54840#47484' '#49352#47196' '#49884#51089#54616#45716' '#48264#54840#47196' '#46321#47197#49884#53412#47140#47732' '#52404#53356#47484' '#54644#51452#49492#50556#46104#47728','#13#10'     '#51201#50857#49884#53412#47732' '#51060' '#48264#54840' '#48512#53552' '#49352#47196' '#49884#51089 +
            #54616#45716' '#48264#54840#47196' '#46321#47197#46121#45768#45796'.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object rgchartrul: TRadioGroup
          Left = 8
          Top = 10
          Width = 561
          Height = 476
          Caption = #52264#53944#48264#54840' '#44508#52825
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Items.Strings = (
            #54016' + '#45380#46020' + '#39'-'#39' + '#50900#51068' + '#50672#48320'  (01 + YY + '#39'-'#39' + MMDD + 001)'
            #45380#46020' + '#50900#51068' + '#50672#48264' (YYMMDD + 001)'
            #45380#46020' + '#50900#51068' + '#50672#48264' ('#49548#50500','#44368#51221#44396#48516')  (YYMMDD + 001)'
            #50672#48264' ('#39'00000000'#39')  (0 '#51060' '#52292#50892#51648#45716' 8'#51088#47532#49707#51088' '#51068#47144#49692')'
            #50672#48264'('#49707#51088')         (0 '#51060' '#50504#52292#50892#51648#45716' '#51068#47144#48264#54840#49692')'
            #49324#50857#51088'             ('#49324#50857#51088#44032' '#51076#51032#47196' '#48512#50668')'
            #49352#47196#49884#51089#54616#45716' '#50672#48264'  ('#39'00000000'#39')'
            #49352#47196#49884#51089#54616#45716' '#50672#48264'  ('#49707#51088')'
            #45380#46020' + '#50900' + '#50672#48264'   (YYYYMM + 001)'
            '10'#50473' '#51613#44032'          (10'#50473' '#51613#44032#54616#45716' 0 '#51060#52292#50892#51648#45716' 8'#51088#47532')'
            #45380#46020'+'#39'-'#39'+'#50672#48264'      (YY-001)'
            #51217#46160#50612' + '#50672#48264'     (J-123456)'
            #49457#47749'+'#51452#48124'('#45380#50900')'
            #49373#45380#50900#51068' + '#50672#48264'  (980217) 2'#48264#51704#48512#53556' '#50672#48264' '#48512#50668
            #49373#45380#50900#51068' + '#49457#47749'  (980217'#54861#44600#46041')'
            #45380#46020'+'#39'-'#39'+'#50672#48264'      (YY-1) 0'#51060' '#52292#50892#51648#51648#50506#51020
            #49457#47749' + '#49373#45380#50900#51068'  ('#54861#44600#46041'980217)   '
            #45380#46020' + '#50900' + '#51068' + '#50672#48264'('#46160#51088#47532')   (YYMMDD + 01)'
            #49373#45380#50900#51068' +'#39'-'#39'+ '#50672#48264'  (980217) 2'#48264#51704#48512#53556' '#50672#48264' '#48512#50668' (YYMMDD-2)'
            #49373#45380#50900#51068' +'#39'-'#39'+ '#50672#48264'  (980217) 1'#48264#51704#48512#53556' '#50672#48264' '#48512#50668' (YYMMDD-1)'
            #45380#46020'+'#50672#48264'      (YYYY001)')
          ParentFont = False
          TabOrder = 0
          OnClick = rgchartrulClick
        end
        object cbstartno: TCheckBox
          Left = 8
          Top = 506
          Width = 126
          Height = 17
          Caption = #49352#47196' '#49884#51089#54616#45716' '#48264#54840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtSno: TEdit
          Left = 137
          Top = 500
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          ParentFont = False
          TabOrder = 2
        end
        object btnApp: TButton
          Left = 272
          Top = 503
          Width = 54
          Height = 25
          Caption = #51201#50857
          TabOrder = 4
          OnClick = btnAppClick
        end
        object btnChartNoInitial: TButton
          Left = 342
          Top = 503
          Width = 139
          Height = 25
          Caption = #52264#53944#48264#54840' '#52488#44592#54868
          TabOrder = 3
          OnClick = btnChartNoInitialClick
        end
      end
    end
    object AdvTabSheet4: TAdvTabSheet
      Caption = #44592#53440#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel35: TLabel
        Left = 16
        Top = 20
        Width = 155
        Height = 21
        AutoSize = False
        Caption = #9679'DSLR '#51060#48120#51648' '#51200#51109' '#44221#47196
        Transparent = True
      end
      object EllipsLabel52: TLabel
        Left = 16
        Top = 46
        Width = 155
        Height = 21
        AutoSize = False
        Caption = #9679#51088#46041' '#50629#45936#51060#53944#49444#51221
        Transparent = True
      end
      object EllipsLabel34: TLabel
        Left = 16
        Top = 68
        Width = 140
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#51221#48372' '#54637#49884' '#48520#47084#50724#44592
        Transparent = True
      end
      object EllipsLabel76: TLabel
        Left = 16
        Top = 90
        Width = 140
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088' '#52280#44256#49324#54637' '#44636#48149#51060#44592
        Transparent = True
      end
      object EllipsLabel77: TLabel
        Left = 393
        Top = 90
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #54872#51088#51032' '#52280#44256#49324#54637#51060' '#44636#48149#44144#47548
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel78: TLabel
        Left = 16
        Top = 112
        Width = 140
        Height = 21
        AutoSize = False
        Caption = #9679'DUR'#49892#54665
        Transparent = True
      end
      object EllipsLabel79: TLabel
        Left = 393
        Top = 112
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #52376#48169#51204' '#48156#54665#49884' DUR'#49892#54665' '#50668#48512
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel81: TLabel
        Left = 16
        Top = 134
        Width = 140
        Height = 21
        AutoSize = False
        Caption = #9679#51333#47308#49884' '#48177#50629#49892#54665
        Transparent = True
      end
      object EllipsLabel82: TLabel
        Left = 393
        Top = 132
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #51333#47308#49884' '#48177#50629#51012' '#49892#54665#54624#51648' '#50668#48512#47484' '#51656#51032
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel56: TLabel
        Left = 16
        Top = 156
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'X-ray'#48520#47084#50732#46412' '#51652#54665#47700#49884#51648#52285' '#48372#44592
        Transparent = True
      end
      object EllipsLabel57: TLabel
        Left = 393
        Top = 154
        Width = 345
        Height = 21
        AutoSize = False
        Caption = 'x-Ray'#50689#49345' '#48520#47084#50732#46412' '#51652#54665' '#47700#49884#51648#52285#51012' '#48372#50668#51468
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel74: TLabel
        Left = 16
        Top = 180
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#50808#48512' '#49688#45225#54268' '#49324#50857
        Transparent = True
      end
      object EllipsLabel75: TLabel
        Left = 393
        Top = 177
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #50808#48512' '#49688#45225' '#54532#47196#44536#47016#51012' '#49324#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel88: TLabel
        Left = 16
        Top = 203
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52397#44396#49688#45225' '#52285#48516#47532
        Transparent = True
      end
      object EllipsLabel89: TLabel
        Left = 16
        Top = 226
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#50696#50557#54364' '#52285#48516#47532
        Transparent = True
      end
      object EllipsLabel90: TLabel
        Left = 16
        Top = 249
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#44256#44061#46321#47197' '#52285#48516#47532
        Transparent = True
      end
      object EllipsLabel93: TLabel
        Left = 16
        Top = 317
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#44032#51313#54788#54889#52285' '#54637#49884' '#48520#47084#50724#44592
        Transparent = True
      end
      object EllipsLabel94: TLabel
        Left = 16
        Top = 340
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#52852#46300#49849#51064#51088#47308' '#51200#51109#44221#47196
        Transparent = True
      end
      object EllipsLabel107: TLabel
        Left = 16
        Top = 272
        Width = 252
        Height = 21
        AutoSize = False
        Caption = #9679#52397#44396#49688#45225#51200#51109#49884' '#49688#45225#50529#51012' '#54788#44552#51004#47196' '#51088#46041#51200#51109
        Transparent = True
      end
      object EllipsLabel111: TLabel
        Left = 16
        Top = 295
        Width = 256
        Height = 21
        AutoSize = False
        Caption = #9679#51060#51204','#54980' '#54872#51088#44160#49353#49884' '#52320#53944#48264#54840' '#49707#51088#54805#51004#47196' '#48320#54872
        Transparent = True
      end
      object EllipsLabel171: TLabel
        Left = 16
        Top = 389
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#54788#44552#50689#49688#51613' '#49688#45225#44552#50529#50640' '#54252#54632
        Transparent = True
      end
      object EllipsLabel172: TLabel
        Left = 16
        Top = 412
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#49828#53356#47536' '#49464#51060#48260
        Transparent = True
      end
      object EllipsLabel173: TLabel
        Left = 322
        Top = 409
        Width = 29
        Height = 16
        AutoSize = False
        Caption = #48516
        Transparent = True
      end
      object EllipsLabel175: TLabel
        Left = 16
        Top = 459
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#49688#45225#50640#49436' '#45812#45817#51032' '#49324#50857
        Transparent = True
      end
      object EllipsLabel176: TLabel
        Left = 16
        Top = 482
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#44592#44036#48324' '#49688#45225' '#47532#49828#53944#50640#49436' '#54872#51088#44396#48516' '#48372#44592
        Transparent = True
      end
      object EllipsLabel179: TLabel
        Left = 16
        Top = 433
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#54872#51088#50620#44404#48372#44592' '#44277#50976#54260#45908' '#44221#47196
        Transparent = True
      end
      object lblNewonView: TLabel
        Left = 16
        Top = 665
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#45236#50896' '#51221#48372' '#48372#44592
        Transparent = True
        Visible = False
      end
      object lblSunapSumView: TLabel
        Left = 18
        Top = 640
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#49688#45225' '#51221#48372' '#48372#44592
        Transparent = True
        Visible = False
      end
      object EllipsLabel193: TLabel
        Left = 16
        Top = 510
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#50696#50557' '#48143' '#47532#53084' '#50508#47548
        Transparent = True
      end
      object EllipsLabel200: TLabel
        Left = 16
        Top = 535
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#49828#52992#51068#47553' '#46041#51032#49436' '#49324#50857
        Transparent = True
      end
      object lblAgeFilter: TLabel
        Left = 16
        Top = 690
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#45208#51060' filtering'
        Transparent = True
        Visible = False
      end
      object EllipsLabel275: TLabel
        Left = 16
        Top = 365
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#44256#44061#51221#48372' '#46321#47197#49884' '#50948#49373#49324' '#52488#44592#54868
        Transparent = True
      end
      object Label31: TLabel
        Left = 17
        Top = 562
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#44592#52488#44160#49324#54637#47785' '#48372#44592
        Transparent = True
      end
      object Label32: TLabel
        Left = 16
        Top = 589
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#44160#49324#49892' '#47700#47784' '#48372#44592
        Transparent = True
      end
      object Label33: TLabel
        Left = 16
        Top = 616
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#45797#53552#49828#45432#53944' '#44592#48376#54637#47785' '#51088#46041' '#51077#47141
        Transparent = True
      end
      object cbWeb: TComboBox
        Left = 283
        Top = 42
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 1
        Text = #50696
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbDetailLoad: TAdvComboBox
        Left = 283
        Top = 64
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 2
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChamgoload: TAdvComboBox
        Left = 283
        Top = 86
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 3
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDur: TAdvComboBox
        Left = 283
        Top = 108
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 4
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbBackup: TAdvComboBox
        Left = 283
        Top = 130
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 5
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbMessageview: TAdvComboBox
        Left = 283
        Top = 152
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 6
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbSunap: TAdvComboBox
        Left = 283
        Top = 175
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 7
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbBohumOut: TAdvComboBox
        Left = 283
        Top = 198
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 8
        Text = #50500#45768#50724
      end
      object cbYeyakOut: TAdvComboBox
        Left = 283
        Top = 221
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 9
        Text = #50500#45768#50724
      end
      object cbGogekOut: TAdvComboBox
        Left = 283
        Top = 244
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 10
        Text = #50500#45768#50724
      end
      object cbFamily: TAdvComboBox
        Left = 282
        Top = 313
        Width = 107
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 11
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtKisPath: TEdit
        Left = 282
        Top = 336
        Width = 390
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 12
      end
      object cbBohumSunap: TAdvComboBox
        Left = 282
        Top = 267
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 13
        Text = #50500#45768#50724
      end
      object cbChartConv: TAdvComboBox
        Left = 282
        Top = 290
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 14
        Text = #50500#45768#50724
      end
      object cbHyunSunapIn: TAdvComboBox
        Left = 282
        Top = 384
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 15
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtScreenSave: TAdvSpinEdit
        Left = 282
        Top = 406
        Width = 41
        Height = 21
        Value = 0
        DateValue = 42044.746822037040000000
        HexDigits = 0
        HexValue = 0
        EditAlign = eaRight
        IncrementFloat = 0.100000000000000000
        IncrementFloatPage = 1.000000000000000000
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 16
        Visible = True
        Version = '1.8.4.0'
      end
      object cbUseDocSunap: TAdvComboBox
        Left = 282
        Top = 455
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 17
        Text = #50500#45768#50724
      end
      object cbSunapUseGubun: TAdvComboBox
        Left = 282
        Top = 478
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 18
        Text = #50500#45768#50724
      end
      object cbNewonCountView: TAdvComboBox
        Left = 282
        Top = 661
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = False
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 20
        Text = #50696
      end
      object cbSunapSumView: TAdvComboBox
        Left = 282
        Top = 637
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = False
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 21
        Text = #50696
      end
      object cbRecallAlret: TAdvComboBox
        Left = 282
        Top = 504
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 22
        Text = #50696
      end
      object cbAgreementScaleling: TAdvComboBox
        Left = 282
        Top = 529
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 23
        Text = #50500#45768#50724
      end
      object cbAgeFilter: TAdvComboBox
        Left = 282
        Top = 686
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = False
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 24
        Text = #50500#45768#50724
      end
      object cbInitHygine: TAdvComboBox
        Left = 282
        Top = 360
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 25
        Text = #50500#45768#50724
      end
      object edtDicapath: TAdvDirectoryEdit
        Left = 283
        Top = 20
        Width = 390
        Height = 21
        DefaultHandling = True
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
        TabOrder = 0
        Text = 'edtDicapath'
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 21
        Flat = False
        Etched = False
        Glyph.Data = {
          D6020000424DD60200000000000036000000280000000E0000000C0000000100
          200000000000A002000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000008080
          8000808080008080800080808000808080008080800080808000808080000000
          0000FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000808080008080
          800080808000808080008080800080808000808080008080800000000000FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF000000000080808000808080008080
          8000808080008080800080808000808080008080800000000000FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
        ReadOnly = False
        BrowseDialogText = 'Select Directory'
      end
      object edtimgSharefolderPath: TAdvDirectoryEdit
        Left = 282
        Top = 430
        Width = 390
        Height = 21
        DefaultHandling = True
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
        TabOrder = 19
        Text = 'edtimgSharefolderPath'
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 21
        Flat = False
        Etched = False
        Glyph.Data = {
          D6020000424DD60200000000000036000000280000000E0000000C0000000100
          200000000000A002000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000008080
          8000808080008080800080808000808080008080800080808000808080000000
          0000FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000808080008080
          800080808000808080008080800080808000808080008080800000000000FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF000000000080808000808080008080
          8000808080008080800080808000808080008080800000000000FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
        ReadOnly = False
        BrowseDialogText = 'Select Directory'
      end
      object cbBaseExamView: TAdvComboBox
        Left = 283
        Top = 556
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 26
        Text = #50696
      end
      object cbExamMemoView: TAdvComboBox
        Left = 282
        Top = 583
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 27
        Text = #50696
      end
      object cbDoctorsNoteAutoInput: TAdvComboBox
        Left = 282
        Top = 610
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 28
        Text = #50696
      end
    end
    object AdvTabSheet5: TAdvTabSheet
      Caption = 'SMS '#51204#49569' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      DesignSize = (
        1251
        718)
      object Label7: TLabel
        Left = 525
        Top = 156
        Width = 11
        Height = 13
        Caption = #45380
        Transparent = True
        Visible = False
      end
      object Label8: TLabel
        Left = 588
        Top = 156
        Width = 11
        Height = 13
        Caption = #50900
        Transparent = True
        Visible = False
      end
      object Label9: TLabel
        Left = 648
        Top = 161
        Width = 11
        Height = 13
        Caption = #51068
        Visible = False
      end
      object Label12: TLabel
        Left = 108
        Top = 205
        Width = 75
        Height = 26
        Caption = '0:infomedi'#13#10'1:humansoftlab'
      end
      object lblSize1: TLabel
        Left = 55
        Top = 404
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Size 90/'
        Color = 16773866
        ParentColor = False
      end
      object lblSize2: TLabel
        Left = 115
        Top = 404
        Width = 12
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '90'
        Color = 16773866
        ParentColor = False
      end
      object Label26: TLabel
        Left = 260
        Top = 40
        Width = 26
        Height = 13
        Caption = '8~10'
      end
      object Label27: TLabel
        Left = 260
        Top = 65
        Width = 26
        Height = 13
        Caption = '8~10'
      end
      object Label28: TLabel
        Left = 260
        Top = 95
        Width = 26
        Height = 13
        Caption = '8~10'
      end
      object spSkinLabel5: TLabel
        Left = 12
        Top = 36
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#49324#50857#51088#50500#51060#46356
        Transparent = True
      end
      object spSkinLabel6: TLabel
        Left = 12
        Top = 65
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#48708#48128#48264#54840
        Transparent = True
      end
      object spSkinLabel7: TLabel
        Left = 12
        Top = 97
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#48708#48128#48264#54840#54869#51064
        Transparent = True
      end
      object EllipsLabel27: TLabel
        Left = 17
        Top = 7
        Width = 88
        Height = 21
        AutoSize = False
        Caption = 'SMS '#47196#44536#51064
        Transparent = True
      end
      object EllipsLabel28: TLabel
        Left = 12
        Top = 123
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#51088#46041#47196#44536#51064
        Transparent = True
      end
      object EllipsLabel26: TLabel
        Left = 687
        Top = 32
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#51088#46041' '#51204#49569' '#49444#51221
        Transparent = True
        Visible = False
      end
      object EllipsLabel53: TLabel
        Left = 12
        Top = 153
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679'SMS '#51204#49569' '#48264#54840
        Transparent = True
      end
      object EllipsLabel30: TLabel
        Left = 356
        Top = 33
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#45824#54364#51088' '#49457#47749
        Transparent = True
        Visible = False
      end
      object EllipsLabel31: TLabel
        Left = 356
        Top = 183
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#51204#54868
        Transparent = True
        Visible = False
      end
      object EllipsLabel32: TLabel
        Left = 356
        Top = 156
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#49373#45380#50900#51068
        Transparent = True
        Visible = False
      end
      object EllipsLabel33: TLabel
        Left = 356
        Top = 212
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#51060#46041#51204#54868
        Transparent = True
        Visible = False
      end
      object EllipsLabel51: TLabel
        Left = 356
        Top = 243
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#51060#47700#51068
        Transparent = True
        Visible = False
      end
      object EllipsLabel59: TLabel
        Left = 356
        Top = 102
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#51452#49548
        Transparent = True
        Visible = False
      end
      object EllipsLabel60: TLabel
        Left = 356
        Top = 69
        Width = 101
        Height = 21
        AutoSize = False
        Caption = #9679#50864#54200#48264#54840
        Transparent = True
        Visible = False
      end
      object EllipsLabel70: TLabel
        Left = 12
        Top = 184
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679'SMS '#49436#48260
        Transparent = True
      end
      object EllipsLabel167: TLabel
        Left = 12
        Top = 244
        Width = 88
        Height = 21
        AutoSize = False
        Caption = #9679#48516'(min) '#52824#54872
        Transparent = True
      end
      object EllipsLabel178: TLabel
        Left = 12
        Top = 282
        Width = 249
        Height = 21
        AutoSize = False
        Caption = #9679#49888#44508#54872#51088' '#51200#51109#49884' '#49548#44060#51088#50640#44172' '#51088#46041' SMS'#51204#49569
        Transparent = True
      end
      object EllipsLabel250: TLabel
        Left = 352
        Top = 282
        Width = 159
        Height = 21
        AutoSize = False
        Caption = #9679#50696#50557' '#48320#44221#49884'  SMS '#51088#46041' '#51204#49569
        Transparent = True
      end
      object EllipsLabel251: TLabel
        Left = 12
        Top = 443
        Width = 159
        Height = 21
        AutoSize = False
        Caption = #9679#50696#50557' '#52712#49548#49884'  SMS '#51088#46041' '#51204#49569
        Transparent = True
      end
      object AdvPanel1: TAdvPanel
        Left = 352
        Top = 424
        Width = 259
        Height = 305
        BevelOuter = bvNone
        Color = 16381427
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        UseDockManager = True
        Version = '2.5.7.9'
        AutoHideChildren = False
        BorderColor = 16765615
        Caption.Color = 16316406
        Caption.ColorTo = 15261915
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        Caption.Text = #50696#50557' SMS'#51204#49569' '#49444#51221
        Caption.Visible = True
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 15195349
        ColorMirror = 15195349
        ColorMirrorTo = 16513776
        DoubleBuffered = True
        ShadowColor = clBlack
        ShadowOffset = 0
        StatusBar.BorderStyle = bsSingle
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = 7485192
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        StatusBar.Color = 16445163
        StatusBar.ColorTo = 15064023
        StatusBar.GradientDirection = gdVertical
        Styler = AdvPanelStyler1
        Text = ''
        FullHeight = 0
        object btnChar: TSpeedButton
          Left = 159
          Top = 188
          Width = 52
          Height = 20
          Cursor = crHandPoint
          Caption = #53945#49688#47928#51088
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object LblMemcontentSize: TLabel
          Left = 130
          Top = 30
          Width = 46
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Size 90/'
          Color = 16773866
          ParentColor = False
        end
        object Label6: TLabel
          Left = 180
          Top = 30
          Width = 12
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '90'
          Color = 16773866
          ParentColor = False
        end
        object EllipsLabel36: TLabel
          Left = 15
          Top = 30
          Width = 66
          Height = 13
          AutoSize = False
          Caption = 'SMS'#47700#49884#51648
          Transparent = True
        end
        object EllipsLabel37: TLabel
          Left = 15
          Top = 190
          Width = 86
          Height = 13
          AutoSize = False
          Caption = #48372#45236#45716#49884#44036
          Transparent = True
          Visible = False
        end
        object EllipsLabel38: TLabel
          Left = 60
          Top = 216
          Width = 31
          Height = 13
          AutoSize = False
          Caption = #51068#51204
          Transparent = True
          Visible = False
        end
        object EllipsLabel39: TLabel
          Left = 136
          Top = 215
          Width = 11
          Height = 13
          Caption = #49884
          Transparent = True
          Visible = False
        end
        object EllipsLabel40: TLabel
          Left = 191
          Top = 215
          Width = 11
          Height = 13
          Caption = #48516
          Transparent = True
          Visible = False
        end
        object EllipsLabel41: TLabel
          Left = 17
          Top = 250
          Width = 66
          Height = 13
          AutoSize = False
          Caption = #51088#46041' '#51204#49569
          Transparent = True
          Visible = False
        end
        object EllipsLabel42: TLabel
          Left = 17
          Top = 276
          Width = 66
          Height = 13
          AutoSize = False
          Caption = #51204#49569#51204' '#54869#51064
          Transparent = True
          Visible = False
        end
        object cbbefortime: TComboBox
          Left = 95
          Top = 213
          Width = 40
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          ItemIndex = 1
          TabOrder = 0
          Text = '09'
          Visible = False
          Items.Strings = (
            '08'
            '09'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23')
        end
        object cbbeformin: TComboBox
          Left = 152
          Top = 213
          Width = 40
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 1
          Text = '30'
          Visible = False
          Items.Strings = (
            '00'
            '05'
            '10'
            '15'
            '20'
            '25'
            '30'
            '35'
            '40'
            '45'
            '50'
            '55')
        end
        object memSMS: TMemo
          Left = 15
          Top = 47
          Width = 183
          Height = 129
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -19
          Font.Name = #46027#50880
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          Lines.Strings = (
            #50864#47532#45208#46972#45824#54620#48124#44397
            #47564#49464#50864#47532#45208#46972#45824#54620
            #48124#44397#47564#49464#50864#47532#45208#46972
            #45824#54620#48124#44397#47564#49464#50864#47532
            #45208#46972#45824#54620#48124#44397#47564#49464
            #50864#47532#45208#46972#45824)
          MaxLength = 250
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object edtbeforsms: TSpinEdit
          Left = 15
          Top = 213
          Width = 41
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 0
          Visible = False
        end
        object cbSms: TAdvComboBox
          Left = 94
          Top = 247
          Width = 75
          Height = 21
          Color = clWindow
          Version = '1.9.2.1'
          Visible = False
          ButtonWidth = 17
          EmptyTextStyle = []
          DropWidth = 0
          Enabled = True
          ImeName = 'Microsoft Office IME 2007'
          ItemIndex = 0
          Items.Strings = (
            #50500#45768#50724
            #50696)
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          TabOrder = 4
          Text = #50500#45768#50724
          OnKeyPress = EdtHpNameKeyPress
        end
        object cbCheck: TAdvComboBox
          Left = 94
          Top = 272
          Width = 75
          Height = 21
          Color = clWindow
          Version = '1.9.2.1'
          Visible = False
          ButtonWidth = 17
          EmptyTextStyle = []
          DropWidth = 0
          Enabled = True
          ImeName = 'Microsoft Office IME 2007'
          ItemIndex = 0
          Items.Strings = (
            #50500#45768#50724
            #50696)
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          TabOrder = 5
          Text = #50500#45768#50724
          OnKeyPress = EdtHpNameKeyPress
        end
      end
      object EdtId: TEdit
        Left = 108
        Top = 32
        Width = 150
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = 'EdtId'
        OnKeyPress = EdtHpNameKeyPress
      end
      object EdtPass1: TEdit
        Left = 108
        Top = 62
        Width = 150
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 10
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        Text = 'edt111'
        OnKeyPress = EdtHpNameKeyPress
      end
      object EdtPass2: TEdit
        Left = 108
        Top = 93
        Width = 150
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 10
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 2
        Text = 'EdtPass2'
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbSmslogin: TAdvComboBox
        Left = 108
        Top = 120
        Width = 150
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 3
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbSmsSave: TAdvOfficeCheckBox
        Left = 110
        Top = 2
        Width = 120
        Height = 20
        TabOrder = 4
        Alignment = taLeftJustify
        Caption = 'SMS'#51221#48372' '#50937#51200#51109
        ReturnIsTab = False
        Version = '1.5.0.9'
      end
      object imoPanel: TPanel
        Left = 1353
        Top = 92
        Width = 142
        Height = 110
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = 16772055
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Visible = False
        object grdImo: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 142
          Height = 110
          Cursor = crDefault
          Align = alClient
          ColCount = 6
          Ctl3D = True
          DefaultColWidth = 17
          DefaultRowHeight = 17
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 5
          FixedRows = 0
          ParentCtl3D = False
          ScrollBars = ssBoth
          TabOrder = 8
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
          FixedColWidth = 17
          FixedRowHeight = 17
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
          ShowDesignHelper = False
          SortSettings.DefaultFormat = ssAutomatic
          Version = '8.4.4.1'
          ColWidths = (
            17
            17
            17
            17
            17
            17)
        end
        object BtnName: TButton
          Left = 105
          Top = 1
          Width = 31
          Height = 20
          Hint = #54872#51088#47749
          Caption = '+ddd+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object spSkinButton1: TButton
          Left = 105
          Top = 22
          Width = 31
          Height = 20
          Hint = #48337#50896#47749
          Caption = '+aaa+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object spSkinButton2: TButton
          Left = 105
          Top = 43
          Width = 31
          Height = 20
          Hint = #50696#50557#51068
          Caption = '+dd+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object spSkinButton3: TButton
          Left = 105
          Top = 64
          Width = 31
          Height = 20
          Hint = #50696#50557#49884#44036
          Caption = '+hh+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object spSkinButton4: TButton
          Left = 105
          Top = 85
          Width = 31
          Height = 20
          Hint = #50696#50557#48516
          Caption = '+mm+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object spSkinButton5: TButton
          Left = 71
          Top = 86
          Width = 31
          Height = 20
          Hint = #50696#50557#50900
          Caption = '+rr+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object spSkinButton6: TButton
          Left = 0
          Top = 86
          Width = 31
          Height = 20
          Hint = #51008#54665#44228#51340
          Caption = '+xxxx+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object spSkinButton7: TButton
          Left = 36
          Top = 86
          Width = 31
          Height = 20
          Hint = #51204#54868#48264#54840
          Caption = '+ccc+'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
      end
      object edtSmsNo: TEdit
        Left = 108
        Top = 151
        Width = 150
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 8
        Text = 'edtSmsNo'
        OnChange = edtSmsNoChange
        OnKeyPress = EdtHpNameKeyPress
      end
      object memoHtml: TMemo
        Left = 905
        Top = 211
        Width = 201
        Height = 75
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        Lines.Strings = (
          'memoHtml')
        TabOrder = 9
        Visible = False
      end
      object memLog: TMemo
        Left = 905
        Top = 446
        Width = 201
        Height = 95
        ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
        Lines.Strings = (
          'memLog')
        TabOrder = 10
        Visible = False
      end
      object Edit1: TEdit
        Left = 458
        Top = 29
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 11
        Text = 'EdtName'
        Visible = False
        OnExit = EdtNameExit
        OnKeyPress = EdtNameKeyPress
      end
      object Edit2: TEdit
        Left = 458
        Top = 182
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 12
        Text = 'edtTel1'
        Visible = False
        OnChange = edtTel1Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit3: TEdit
        Left = 528
        Top = 182
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 13
        Text = 'edttel2'
        Visible = False
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit4: TEdit
        Left = 598
        Top = 182
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 14
        Text = 'edtTel3'
        Visible = False
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object ComboBox1: TComboBox
        Left = 458
        Top = 151
        Width = 65
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 15
        Text = 'cbYear'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object ComboBox2: TComboBox
        Left = 546
        Top = 151
        Width = 41
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 16
        Text = 'cbMonth'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object ComboBox3: TComboBox
        Left = 608
        Top = 151
        Width = 39
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 17
        Text = 'ComboBox2'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit5: TEdit
        Left = 458
        Top = 208
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 18
        Text = 'edtHp1'
        Visible = False
        OnChange = edtHp1Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit6: TEdit
        Left = 528
        Top = 208
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 19
        Text = 'edtHp2'
        Visible = False
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit7: TEdit
        Left = 598
        Top = 208
        Width = 65
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 4
        TabOrder = 20
        Text = 'edtHp3'
        Visible = False
        OnChange = edtHp3Change
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit8: TEdit
        Left = 458
        Top = 239
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 21
        Text = 'EdtMail'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit9: TEdit
        Left = 458
        Top = 95
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 22
        Text = 'EdtAdd'
        Visible = False
        OnKeyPress = EdtAddKeyPress
      end
      object Edit10: TEdit
        Left = 458
        Top = 120
        Width = 205
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 23
        Text = 'EdtAdd2'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit11: TEdit
        Left = 525
        Top = 62
        Width = 65
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 24
        Text = 'edtZip2'
        Visible = False
        OnKeyPress = EdtHpNameKeyPress
      end
      object Edit12: TEdit
        Left = 458
        Top = 63
        Width = 65
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        MaxLength = 3
        TabOrder = 25
        Text = 'edtZip1'
        Visible = False
      end
      object cbSMScustKind: TAdvComboBox
        Left = 108
        Top = 181
        Width = 150
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          '0'
          '1')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 26
        Text = '0'
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbSmsConvMin: TAdvComboBox
        Left = 108
        Top = 240
        Width = 150
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 27
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbSMSautosend: TAdvComboBox
        Left = 248
        Top = 282
        Width = 70
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 28
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object Memo1: TMemo
        Left = 905
        Top = 290
        Width = 201
        Height = 151
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'Memo1')
        TabOrder = 29
        Visible = False
      end
      object memSMSNew: TMemo
        Left = 135
        Top = 307
        Width = 171
        Height = 111
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memSMSNew')
        ScrollBars = ssVertical
        TabOrder = 30
        OnChange = memSMSNewChange
      end
      object cbSMSchangeSend: TAdvComboBox
        Left = 513
        Top = 282
        Width = 70
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 31
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object memSMSChange: TMemo
        Left = 410
        Top = 307
        Width = 171
        Height = 111
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memSMSChange')
        ScrollBars = ssVertical
        TabOrder = 32
        OnChange = memSMSNewChange
      end
      object cbSMScancelSend: TAdvComboBox
        Left = 228
        Top = 443
        Width = 70
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 33
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object memSMSCancel: TMemo
        Left = 135
        Top = 468
        Width = 171
        Height = 111
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memSMSCancel')
        ScrollBars = ssVertical
        TabOrder = 34
        OnChange = memSMSNewChange
      end
      object tabSms: TTabControl
        Left = 670
        Top = 56
        Width = 261
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Tabs.Strings = (
          #50696#50557' '
          #47532#53084)
        TabIndex = 0
        Visible = False
        OnChange = tabSmsChange
      end
    end
    object AdvTabSheet6: TAdvTabSheet
      Caption = #50689#49345#51221#48372' '#50672#46041
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label13: TLabel
        Left = 37
        Top = 190
        Width = 90
        Height = 16
        AutoSize = False
        Caption = #9679'DB '#51333#47448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 355
        Top = 88
        Width = 37
        Height = 13
        Caption = 'Label24'
      end
      object EllipsLabel54: TLabel
        Left = 36
        Top = 164
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345' DB'#51649#51217' '#51217#49549
        Transparent = True
      end
      object EllipsLabel55: TLabel
        Left = 36
        Top = 219
        Width = 120
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' '#44221#47196
        Transparent = True
      end
      object EllipsLabel61: TLabel
        Left = 36
        Top = 244
        Width = 105
        Height = 21
        AutoSize = False
        Caption = #9679#45936#51060#53552#48288#51060#49828#47749
        Transparent = True
      end
      object EllipsLabel62: TLabel
        Left = 36
        Top = 279
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#50976#51200#47749
        Transparent = True
      end
      object EllipsLabel63: TLabel
        Left = 36
        Top = 314
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#54056#49828#50892#46300
        Transparent = True
      end
      object EllipsLabel64: TLabel
        Left = 366
        Top = 55
        Width = 105
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345' '#48624#50612' '#51333#47448' 2'
        Transparent = True
      end
      object EllipsLabel68: TLabel
        Left = 357
        Top = 162
        Width = 157
        Height = 26
        Caption = 'OrderINF '#49436#48260#50640' '#51200#51109', '#47196#44536#51064#52285#51032' RIS'#50672#46041#50640' '#52404#53356#46104#50612#50556' '#54632'.'
        Transparent = True
        WordWrap = True
      end
      object EllipsLabel80: TLabel
        Left = 471
        Top = 247
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679#54028#45432#46972#47560' '#48372#51221' '#48708#50984
        Transparent = True
        Visible = False
      end
      object EllipsLabel84: TLabel
        Left = 35
        Top = 125
        Width = 134
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345' '#48624#50612' '#49892#54665#54028#51068#44221#47196
        Transparent = True
      end
      object EllipsLabel83: TLabel
        Left = 596
        Top = 126
        Width = 105
        Height = 13
        Caption = #53440' '#50689#49345#48624#50612' '#44221#47196#49444#51221
        Transparent = True
        WordWrap = True
      end
      object EllipsLabel85: TLabel
        Left = 36
        Top = 88
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345' '#48624#50612' '#51333#47448' 1'
        Transparent = True
      end
      object EllipsLabel44: TLabel
        Left = 36
        Top = 374
        Width = 155
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345#48624#50612' '#54872#51088#51221#48372' '#50672#46041
        Transparent = True
        Visible = False
      end
      object EllipsLabel45: TLabel
        Left = 356
        Top = 374
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #45940#53944#47196#50640#49436' '#54872#51088#47484' '#51200#51109#54624' '#46412' '#53440#50689#49345#48624#50612#50640' '#54872#51088#51221#48372' '#46041#49884#51200#51109
        Transparent = True
        Visible = False
      end
      object EllipsLabel46: TLabel
        Left = 36
        Top = 449
        Width = 155
        Height = 21
        AutoSize = False
        Caption = #9679'RIS '#49436#48260' '#51060#50857
        Transparent = True
      end
      object EllipsLabel47: TLabel
        Left = 356
        Top = 449
        Width = 374
        Height = 21
        AutoSize = False
        Caption = 'RIS'#50672#46041' '#49444#51221
        Transparent = True
      end
      object EllipsLabel48: TLabel
        Left = 36
        Top = 473
        Width = 105
        Height = 21
        AutoSize = False
        Caption = #9679'RIS '#49436#48260' IP'
        Transparent = True
      end
      object EllipsLabel49: TLabel
        Left = 36
        Top = 497
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679'RIS '#49436#48260' PORT'
        Transparent = True
      end
      object EllipsLabel50: TLabel
        Left = 36
        Top = 411
        Width = 140
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345' DB'#44221#47196' '#48143' '#51060#47492
        Transparent = True
      end
      object EllipsLabel58: TLabel
        Left = 36
        Top = 20
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679#51060#48120#51648#51221#48372#49324#50857
        Transparent = True
      end
      object EllipsLabel155: TLabel
        Left = 36
        Top = 55
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679#51060' PC '#51060#48120#51648' '#50504#48372#44592
        Transparent = True
      end
      object lblImageDel: TLabel
        Left = 36
        Top = 344
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#49325#51228#50672#46041
        Transparent = True
        Visible = False
      end
      object EllipsLabel174: TLabel
        Left = 37
        Top = 550
        Width = 166
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345#51221#48372' '#50676#46412' HTTP'#50672#46041' '#49324#50857
        Transparent = True
      end
      object EllipsLabel196: TLabel
        Left = 37
        Top = 575
        Width = 134
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345#51221#48372' '#48624#50612' '#51221#47148#48169#49885
        Transparent = True
      end
      object EllipsLabel197: TLabel
        Left = 37
        Top = 600
        Width = 164
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345#51221#48372' '#48624#50612#51025#50857#54532#47196#44536#47016' '
        Transparent = True
      end
      object EllipsLabel198: TLabel
        Left = 586
        Top = 601
        Width = 374
        Height = 21
        AutoSize = False
        Caption = #51025#50857#54532#47196#44536#47016#51060' '#51648#51221#46104#51648' '#50506#51004#47732' '#45940#53944#47196' '#44592#48376' '#48624#50612#44032' '#49892#54665#46121#45768#45796'.'
        Transparent = True
      end
      object EllipsLabel199: TLabel
        Left = 37
        Top = 630
        Width = 164
        Height = 21
        AutoSize = False
        Caption = #9679#44277#50976#54260#45908#49324#50857
        Transparent = True
      end
      object EllipsLabel227: TLabel
        Left = 37
        Top = 524
        Width = 154
        Height = 21
        AutoSize = False
        Caption = #9679#50689#49345#51221#48372' '#50676#44592' '#48169#49885
        Transparent = True
      end
      object EllipsLabel228: TLabel
        Left = 37
        Top = 655
        Width = 164
        Height = 21
        AutoSize = False
        Caption = #9679#44277#50976#54260#45908#44221#47196
        Transparent = True
      end
      object EllipsLabel229: TLabel
        Left = 356
        Top = 523
        Width = 374
        Height = 21
        AutoSize = False
        Caption = #54260#45908#48169#49885' - '#50689#49345#51221#48372' '#53364#47533#49884' '#54872#51088' '#44277#50976#54260#45908#44032' '#50676#47549#45768#45796'.'
        Transparent = True
      end
      object EllipsLabel230: TLabel
        Left = 354
        Top = 629
        Width = 374
        Height = 21
        AutoSize = False
        Caption = 'V-ceph '#44277#50976#54260#45908' '#49324#50857' '#51648#51221
        Transparent = True
      end
      object EllipsLabel231: TLabel
        Left = 655
        Top = 548
        Width = 441
        Height = 21
        AutoSize = False
        Caption = #50696#47484' '#49440#53469#54616#47732' '#50689#49345#51221#48372' '#50676#44592' '#48169#49885' '#51333#47448#50752' '#49345#44288#50630#51060' Http'#48169#49885#51004#47196' '#50676#47549#45768#45796'.'
        Transparent = True
      end
      object EllipsLabel242: TLabel
        Left = 37
        Top = 679
        Width = 164
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944#48264#54840' '#44221#47196#49324#50857
        Transparent = True
      end
      object EllipsLabel281: TLabel
        Left = 357
        Top = 575
        Width = 174
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = #9679#48624#50612' Http '#54620#44544' '#44221#47196' '#48169#49885' '#48320#44221
        Transparent = True
      end
      object EllipsLabel285: TLabel
        Left = 457
        Top = 489
        Width = 74
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = #9679#50040#45348#51068#50672#46041
        Transparent = True
      end
      object EllipsLabel288: TLabel
        Left = 372
        Top = 679
        Width = 119
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944#48264#54840' 0'#51228#44144
        Transparent = True
      end
      object cbAnotherViewerUse: TComboBox
        Left = 205
        Top = 159
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 0
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object edtDbName: TEdit
        Left = 205
        Top = 239
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'edtDbName'
      end
      object edtUsername: TEdit
        Left = 205
        Top = 274
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'edtUsername'
      end
      object edtPass: TEdit
        Left = 205
        Top = 309
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 3
        Text = 'edtPass'
      end
      object cbimageKind: TComboBox
        Left = 205
        Top = 85
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 4
        Text = #51333#47448#47484' '#49440#53469#54616#49464#50836'.'
        OnChange = cbimageKindChange
        Items.Strings = (
          #51333#47448#47484' '#49440#53469#54616#49464#50836'.'
          #49884#47196#45208'(MSSQL)'
          #51232#45937#49828
          #48148#53581' 3.X'
          #48148#53581' 4.X'
          #50500#49324#51060
          #54252#51064#53944#45769#49828
          'PLANMECA'
          'TROPHY_OR'
          'TROPHY_KODAK'
          'CDX'
          'MORITA'
          'IMAGING'
          'DENTIAN'
          #49884#47196#45208'(MDB)'
          'DANCE'
          'VCeph'
          'TRIANA'
          'WillMed_CT '
          'DIMAXIS'
          'RAMY VIEW'
          'DIGIX'
          #51060#51648#45940#53944#50500#51060
          'SIDEXIS 4'
          'TRIANA_new'
          'RAY')
      end
      object edtViewer: TEditBtn
        Left = 205
        Top = 123
        Width = 381
        Height = 21
        ReturnIsTab = False
        Flat = False
        Etched = False
        FocusBorder = False
        RightAlign = False
        TabOrder = 5
        Text = '0'
        Version = '1.5.2.0'
        OnClickBtn = edtViewerClickBtn
      end
      object cbViewKind: TComboBox
        Left = 470
        Top = 50
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 6
        Text = #51333#47448#47484' '#49440#53469#54616#49464#50836'.'
        Items.Strings = (
          #51333#47448#47484' '#49440#53469#54616#49464#50836'.'
          #49884#47196#45208'(MSSQL)'
          #51232#45937#49828
          #48148#53581' 3.X'
          #48148#53581' 4.X'
          #50500#49324#51060
          #54252#51064#53944#45769#49828
          'PLANMECA'
          'TROPHY_OR'
          'TROPHY_KODAK'
          'CDX'
          'MORITA'
          'IMAGING'
          'DENTIAN'
          #49884#47196#45208'(MDB)'
          'DANCE'
          'VCeph'
          'TRIANA'
          'WillMed_CT '
          'DIMAXIS'
          'RAMY VIEW'
          'DIGIX'
          #51060#51648#45940#53944#50500#51060
          'SIDEXIS 4')
      end
      object cbEasydent: TComboBox
        Left = 205
        Top = 370
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 7
        Text = #50696
        Visible = False
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbImageDbSaveKind: TComboBox
        Left = 205
        Top = 445
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 8
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724' - RIS'#49436#48260#51060#50857#50504#54632'('#51649#51217#51200#51109')'
          #50696' - RIS'#49436#48260#51060#50857
          #50696' - '#45936#51060#53552#45716' '#51060' PC'#50640' '#51649#51217#51200#51109)
      end
      object edtDbServerIP: TEdit
        Left = 205
        Top = 468
        Width = 146
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 9
        Text = 'edtDbServerIP'
      end
      object edtDbServerPort: TEdit
        Left = 205
        Top = 491
        Width = 146
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 10
        Text = 'edtDbServerPort'
      end
      object edtImageDBPath: TEdit
        Left = 205
        Top = 407
        Width = 386
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 11
        Text = 'edtImageDBPath'
      end
      object ScaleCombo: TComboBox
        Left = 605
        Top = 242
        Width = 56
        Height = 21
        DropDownCount = 9
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 12
        Text = '100%'
        Visible = False
        Items.Strings = (
          '    25%'
          '    27%'
          '    30%'
          '    33%'
          '    36%'
          '    39%'
          '    42%'
          '    45%'
          '    48%'
          '    51%'
          '    52%'
          '    75%'
          '  100%'
          '  200%'
          '  300%'
          '  400%'
          '  800%'
          '1600%')
      end
      object edtPath: TEdit
        Left = 205
        Top = 212
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 13
        Text = 'edtPath'
      end
      object cbImgUse: TComboBox
        Left = 205
        Top = 15
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 14
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbDbprotocol: TComboBox
        Left = 205
        Top = 185
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 15
        Text = 'mssql'
        Items.Strings = (
          'mssql'
          'mysql-5'
          'Oracle'
          'Interbase'
          'MS-ACCESS'
          'Firebird')
      end
      object cbImageViewThisPc: TComboBox
        Left = 205
        Top = 50
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 16
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbImageDel: TComboBox
        Left = 205
        Top = 339
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 17
        Text = #50500#45768#50724
        Visible = False
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbHttp: TComboBox
        Left = 205
        Top = 547
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 18
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object edtHttp: TEdit
        Left = 351
        Top = 547
        Width = 301
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 19
        Text = 'edtHttp'
      end
      object cbImgViewOrder: TComboBox
        Left = 205
        Top = 572
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 20
        Text = #51200#51109#49692#49436
        Items.Strings = (
          #51200#51109#49692#49436
          'Cap')
      end
      object edtImageViewAppPath: TEditBtn
        Left = 205
        Top = 598
        Width = 381
        Height = 21
        ReturnIsTab = False
        Flat = False
        Etched = False
        FocusBorder = False
        RightAlign = False
        TabOrder = 21
        Text = 'edtImageViewAppPath'
        Version = '1.5.2.0'
        OnClickBtn = edtImageViewAppPathClickBtn
      end
      object cbShareFolder: TComboBox
        Left = 205
        Top = 626
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 22
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object edtShareFolderPath: TEdit
        Left = 205
        Top = 651
        Width = 386
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 23
        Text = 'edtShareFolderPath'
      end
      object cbUseOldImageView: TComboBox
        Left = 205
        Top = 521
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 24
        Text = #44592#48376
        Items.Strings = (
          #44592#48376
          'Http'#48169#49885
          #54260#45908#48169#49885)
      end
      object cbChartPathUse: TComboBox
        Left = 205
        Top = 675
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 25
        Text = #50696
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbViewindi: TCheckBox
        Left = 570
        Top = 105
        Width = 97
        Height = 17
        Caption = #44060#48324#49444#51221
        TabOrder = 26
      end
      object cbHttpPathChange: TComboBox
        Left = 535
        Top = 572
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 27
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbUseThumbnail: TComboBox
        Left = 535
        Top = 487
        Width = 146
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 28
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          #45940#53944#47196#48169#49885
          #51060#51648#45940#53944#48169#49885)
      end
      object cbImageChartZeroExcept: TComboBox
        Left = 465
        Top = 675
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 29
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbFaceFromDB: TCheckBox
        Left = 680
        Top = 525
        Width = 141
        Height = 17
        Caption = #50620#44404#49324#51652#51008' DB'#50640#49436
        TabOrder = 30
      end
    end
    object AdvTabSheet7: TAdvTabSheet
      Caption = 'CID'#49436#48260' '#50672#44208#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel67: TLabel
        Left = 11
        Top = 31
        Width = 125
        Height = 21
        AutoSize = False
        Caption = #9679'CID'#49324#50857
        Transparent = True
      end
      object PageControl1: TPageControl
        Left = 10
        Top = 75
        Width = 826
        Height = 536
        ActivePage = TabSheet4
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = 'KT '
          object Label15: TLabel
            Left = 300
            Top = 105
            Width = 201
            Height = 39
            Caption = 
              'CP '#53076#46300' : 70090 '#55092#47676#49548#54532#53944#47017#13#10'100'#48264#51004#47196' '#51204#54868'  1, 4,  # KT'#50724#54536' API '#49888#52397#13#10#44288#47532#50629#52404' - '#48148#51060 +
              #53664' 02-541-8804'
          end
          object EllipsLabel86: TLabel
            Left = 11
            Top = 46
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'USER ID'
            Transparent = True
          end
          object EllipsLabel87: TLabel
            Left = 11
            Top = 81
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'PASSWORD'
            Transparent = True
          end
          object edtCidID: TEdit
            Left = 140
            Top = 44
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'edtCidID'
          end
          object edtCidPass: TEdit
            Left = 140
            Top = 79
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = 'edtCidPass'
          end
          object btnLogin: TButton
            Left = 12
            Top = 110
            Width = 128
            Height = 23
            Caption = #47196#44536#51064
            TabOrder = 2
            OnClick = btnLoginClick
          end
          object btnLoginKickOut: TButton
            Left = 12
            Top = 140
            Width = 128
            Height = 23
            Caption = #44592#51316' '#47196#44536#51064' '#54644#51228
            TabOrder = 3
            OnClick = btnLoginKickOutClick
          end
          object btnLogOut: TButton
            Left = 12
            Top = 170
            Width = 128
            Height = 23
            Caption = #47196#44536#50500#50883
            TabOrder = 4
            OnClick = btnLogOutClick
          end
          object btnSetMyInfo: TButton
            Left = 161
            Top = 169
            Width = 122
            Height = 23
            Caption = #54872#44221#49444#51221
            TabOrder = 5
            OnClick = btnSetMyInfoClick
          end
          object btnUserJoin: TButton
            Left = 161
            Top = 139
            Width = 122
            Height = 23
            Caption = #54924#50896' '#44032#51077
            TabOrder = 6
            OnClick = btnUserJoinClick
          end
          object btnLineJoin: TButton
            Left = 161
            Top = 109
            Width = 122
            Height = 23
            Caption = #54924#49440' '#52397#50557
            TabOrder = 7
            OnClick = btnLineJoinClick
          end
          object btnFindPasswd: TButton
            Left = 12
            Top = 202
            Width = 128
            Height = 23
            Caption = #54056#49828#50892#46300' '#52286#44592
            TabOrder = 8
            OnClick = btnFindPasswdClick
          end
          object btnHelp: TButton
            Left = 11
            Top = 236
            Width = 272
            Height = 23
            Caption = #46020#50880#47568
            TabOrder = 9
            OnClick = btnHelpClick
          end
          object Button1: TButton
            Left = 161
            Top = 201
            Width = 122
            Height = 23
            Caption = 'CID'#47784#46280' '#46321#47197
            TabOrder = 10
            OnClick = Button1Click
          end
          object textConnectState: TEdit
            Left = 12
            Top = 269
            Width = 270
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 11
            Text = 'textConnectState'
          end
          object Button3: TButton
            Left = 160
            Top = 300
            Width = 121
            Height = 25
            Caption = #54872#44221#49444#51221'2'
            TabOrder = 12
            OnClick = Button3Click
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'SKT'
          ImageIndex = 1
          object EllipsLabel267: TLabel
            Left = 11
            Top = 21
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'USER ID'
            Transparent = True
          end
          object EllipsLabel268: TLabel
            Left = 11
            Top = 56
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'PASSWORD'
            Transparent = True
          end
          object edtSktCidID: TEdit
            Left = 140
            Top = 19
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'edtSktCidID'
          end
          object edtSktCidPass: TEdit
            Left = 140
            Top = 54
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = 'edtSktCidPass'
          end
          object btnSktCidLogout: TButton
            Left = 152
            Top = 130
            Width = 128
            Height = 23
            Caption = #47196#44536#50500#50883
            TabOrder = 2
            OnClick = btnSktCidLogoutClick
          end
          object btnSktCidLogin: TButton
            Left = 7
            Top = 130
            Width = 128
            Height = 23
            Caption = #47196#44536#51064
            TabOrder = 3
            OnClick = btnSktCidLoginClick
          end
          object GroupBox2: TGroupBox
            Left = 300
            Top = 0
            Width = 316
            Height = 161
            Caption = #46321#47197'/'#48320#44221
            TabOrder = 4
            object EllipsLabel269: TLabel
              Left = 26
              Top = 21
              Width = 111
              Height = 21
              AutoSize = False
              Caption = #9679#46321#47197#51204#54868#48264#54840
              Transparent = True
            end
            object Button4: TButton
              Left = 27
              Top = 122
              Width = 128
              Height = 23
              Caption = #48708#48128#48264#54840' '#48320#44221
              TabOrder = 0
              OnClick = Button4Click
            end
            object btnSktCidSmsCertReq: TButton
              Left = 26
              Top = 89
              Width = 130
              Height = 23
              Caption = 'SMS'#51064#51613#48264#54840' '#50836#52397
              TabOrder = 1
              OnClick = btnSktCidSmsCertReqClick
            end
            object btnSKTInit: TButton
              Left = 26
              Top = 54
              Width = 270
              Height = 23
              Caption = #49436#48260#50672#44208'('#52488#44592#54868')'
              TabOrder = 2
              OnClick = btnSKTInitClick
            end
            object btnRegist: TButton
              Left = 167
              Top = 120
              Width = 128
              Height = 23
              Caption = #46321#47197
              TabOrder = 3
              OnClick = btnRegistClick
            end
            object edtSmsCertNo: TEdit
              Left = 165
              Top = 90
              Width = 131
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 4
              Text = 'edtSmsCertNo'
            end
            object edtSktTelNo: TEdit
              Left = 150
              Top = 19
              Width = 129
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 5
              Text = 'edtSktTelNo'
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'LG U+'
          ImageIndex = 2
          object Label30: TLabel
            Left = 20
            Top = 170
            Width = 304
            Height = 130
            Caption = 
              'http://openapi.uplus.co.kr/ '#13#10'IMS'#49468#53944#47533#49828' '#44256#44553#54805' '#44032#51077#13#10#13#10'IMS'#54805'(TAS)'#13#10'c:\de' +
              'ntro21\LGUPlusOpenAPI\TAS\TASBaseOpenApi.ocx '#13#10'regsvr32  TASBase' +
              'OpenApi.ocx  '#47196' '#46321#47197' '#54980' '#49324#50857#13#10#13#10#44256#44553#54805'(BAS)'#13#10'c:\dentro21\LGUPlusOpenAPI\B' +
              'AS\LGUBaseOpenApi.ocx'#13#10'regsvr32  LGUBaseOpenApi.ocx  '#47196' '#46321#47197' '#54980' '#49324#50857
          end
          object EllipsLabel286: TLabel
            Left = 11
            Top = 21
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'USER ID'
            Transparent = True
          end
          object EllipsLabel287: TLabel
            Left = 11
            Top = 56
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'PASSWORD'
            Transparent = True
          end
          object edtLGUplusTASID: TEdit
            Left = 140
            Top = 19
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'edtLGUplusTASID'
          end
          object edtLGUplusTASPass: TEdit
            Left = 140
            Top = 54
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = 'edtLGUplusTASPass'
          end
          object btnLGUCidLogin: TButton
            Left = 7
            Top = 130
            Width = 128
            Height = 23
            Caption = #47196#44536#51064
            TabOrder = 2
            OnClick = btnLGUCidLoginClick
          end
          object btnLGUCidLogout: TButton
            Left = 152
            Top = 130
            Width = 128
            Height = 23
            Caption = #47196#44536#50500#50883
            TabOrder = 3
            OnClick = btnLGUCidLogoutClick
          end
          object rgLguKind: TRadioGroup
            Left = 15
            Top = 80
            Width = 271
            Height = 41
            Caption = #49440#53469
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              #44256#44553#54805'(BAS)'
              'IMS'#54805'(TAS)')
            TabOrder = 4
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'KT internet'
          ImageIndex = 4
          object Label29: TLabel
            Left = 20
            Top = 185
            Width = 320
            Height = 182
            Caption = 
              '070-7732-4157 '#13#10'1877-9907'#13#10'010-2285-9620'#13#10#51204#54868' '#53685#54868' '#54980#13#10#50500#51060#46356#50752' '#48708#48264#51012' '#48156#44553#48155#45716 +
              #45796'.'#13#10#49888#52397#49884' '#50836#52397#49324#54637' '#13#10'DLL'#50672#46041' '#54620#45796#44256' '#49888#52397#54620#45796'.'#13#10'config.ini'#47484' dentro.exe'#54260#45908#50640' '#48373#49324#54620#45796'.'#13 +
              #10'[Connect]'#13#10'CTI_IPs=58.180.17.42'#13#10'CTI_PORT=2209'#9#9#9#9#9#9#13#10'WEB_PORT=' +
              '12209'#13#10#13#10'www.ipphoneplus.com'
          end
          object GroupBox3: TGroupBox
            Left = 20
            Top = 5
            Width = 316
            Height = 171
            Caption = #46321#47197'/'#48320#44221
            TabOrder = 0
            object EllipsLabel274: TLabel
              Left = 21
              Top = 31
              Width = 111
              Height = 21
              AutoSize = False
              Caption = #9679#46321#47197#51204#54868#48264#54840' 1'
              Transparent = True
            end
            object EllipsLabel272: TLabel
              Left = 21
              Top = 66
              Width = 111
              Height = 21
              AutoSize = False
              Caption = #9679'USER ID 1'
              Transparent = True
            end
            object EllipsLabel273: TLabel
              Left = 21
              Top = 101
              Width = 111
              Height = 21
              AutoSize = False
              Caption = #9679'PASSWORD 1'
              Transparent = True
            end
            object btnKTiInit: TButton
              Left = 20
              Top = 129
              Width = 121
              Height = 23
              Caption = 'DLL '#50672#44208'('#52488#44592#54868')'
              TabOrder = 0
              OnClick = btnKTiInitClick
            end
            object edtktiTelNo: TEdit
              Left = 150
              Top = 29
              Width = 140
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 1
              Text = 'edtktiTelNo'
            end
            object btnktiCidLogin: TButton
              Left = 145
              Top = 130
              Width = 56
              Height = 23
              Caption = #47196#44536#51064
              TabOrder = 2
              OnClick = btnktiCidLoginClick
            end
            object btnktiCidLogout: TButton
              Left = 210
              Top = 130
              Width = 80
              Height = 23
              Caption = #47196#44536#50500#50883
              TabOrder = 3
              OnClick = btnktiCidLogoutClick
            end
            object edtktiCidPass: TEdit
              Left = 150
              Top = 99
              Width = 140
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 4
              Text = 'edtktiCidPass'
            end
            object edtktiCidID: TEdit
              Left = 150
              Top = 64
              Width = 140
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 5
              Text = 'edtktiCidID'
            end
          end
          object Button2: TButton
            Left = 260
            Top = 185
            Width = 75
            Height = 25
            Caption = 'TEST'
            TabOrder = 1
            OnClick = Button2Click
          end
          object GroupBox4: TGroupBox
            Left = 350
            Top = 5
            Width = 286
            Height = 171
            Caption = #46321#47197'/'#48320#44221
            TabOrder = 2
            object EllipsLabel278: TLabel
              Left = 16
              Top = 60
              Width = 100
              Height = 21
              AutoSize = False
              Caption = #9679'USER ID 2'
              Transparent = True
            end
            object EllipsLabel279: TLabel
              Left = 16
              Top = 95
              Width = 100
              Height = 21
              AutoSize = False
              Caption = #9679'PASSWORD 2'
              Transparent = True
            end
            object EllipsLabel280: TLabel
              Left = 16
              Top = 30
              Width = 100
              Height = 21
              AutoSize = False
              Caption = #9679#46321#47197#51204#54868#48264#54840' 2'
              Transparent = True
            end
            object edtktiCidID2: TEdit
              Left = 120
              Top = 60
              Width = 144
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 0
              Text = 'edtktiCidID2'
            end
            object edtktiCidPass2: TEdit
              Left = 120
              Top = 95
              Width = 144
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 1
              Text = 'edtktiCidPass2'
            end
            object edtktiTelNo2: TEdit
              Left = 120
              Top = 30
              Width = 141
              Height = 21
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 2
              Text = 'edtktiTelNo2'
            end
            object btnKTiInit2: TButton
              Left = 20
              Top = 129
              Width = 121
              Height = 23
              Caption = 'DLL '#50672#44208'('#52488#44592#54868')'
              TabOrder = 3
            end
            object btnktiCidLogin2: TButton
              Left = 145
              Top = 130
              Width = 56
              Height = 23
              Caption = #47196#44536#51064
              TabOrder = 4
            end
            object btnktiCidLogout2: TButton
              Left = 206
              Top = 130
              Width = 80
              Height = 23
              Caption = #47196#44536#50500#50883
              TabOrder = 5
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'CID'#49436#48260' '#49324#50857
          ImageIndex = 3
          object Label4: TLabel
            Left = 15
            Top = 110
            Width = 268
            Height = 39
            Caption = 
              #8251'CID'#49436#48260' '#50672#44208#49444#51221' '#54980' '#51200#51109' '#54616#49884#44256#13#10'CID '#49436#48260#50640#49436' <Server For CID>'#51032' '#44396#46041#51012' '#54869#51064#54616#49888' '#54980','#13#10#45940#53944 +
              #47196#47484' '#45796#49884' '#49884#51089#54616#49901#49884#50724'.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object EllipsLabel66: TLabel
            Left = 11
            Top = 80
            Width = 111
            Height = 21
            AutoSize = False
            Caption = #9679'CID '#49436#48260' IP'
            Transparent = True
          end
          object EllipsLabel71: TLabel
            Left = 11
            Top = 50
            Width = 90
            Height = 21
            AutoSize = False
            Caption = #9679'CID '#49436#48260' '#54252#53944
            Transparent = True
          end
          object EllipsLabel154: TLabel
            Left = 12
            Top = 15
            Width = 90
            Height = 21
            AutoSize = False
            Caption = #9679'CID '#49436#48260' '#49324#50857
            Transparent = True
          end
          object edtCidIP: TEdit
            Left = 135
            Top = 80
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'edtCidIP'
          end
          object edtCidPort: TEdit
            Left = 135
            Top = 45
            Width = 144
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = 'edtCidPort'
          end
          object cbCidUse2: TComboBox
            Left = 135
            Top = 10
            Width = 145
            Height = 21
            ImeName = 'Microsoft Office IME 2007'
            ItemIndex = 0
            TabOrder = 2
            Text = #50500#45768#50724
            Items.Strings = (
              #50500#45768#50724
              #50696)
          end
        end
      end
      object cbCid: TComboBox
        Left = 70
        Top = 30
        Width = 215
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = #49324#50857#50504#54632
        OnChange = cbCidChange
        Items.Strings = (
          #49324#50857#50504#54632
          'KT Open API'
          'SKT Open API'
          'LG UPlus CENTRIX Premium API(TAS)'
          'KT internet Open API'
          'CID'#49436#48260' '#49324#50857)
      end
    end
    object AdvTabSheet8: TAdvTabSheet
      Caption = #48372#51312#51109#52824' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label10: TLabel
        Left = 30
        Top = 38
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#49828#52880#45320' '#54252#53944
      end
      object Label11: TLabel
        Left = 30
        Top = 63
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#49828#52880#45320' Speed'
      end
      object Label19: TLabel
        Left = 30
        Top = 244
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#53412#54056#46300'( '#49912#51064#54056#46300') '#54252#53944
      end
      object Label20: TLabel
        Left = 30
        Top = 269
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#53412#54056#46300'( '#49912#51064#54056#46300') Speed'
      end
      object EllipsLabel209: TLabel
        Left = 31
        Top = 312
        Width = 165
        Height = 16
        AutoSize = False
        Caption = #9679#51088#46041#51217#49688#54532#47196#44536#47016' '#51088#46041#49892#54665
        Transparent = True
      end
      object Label37: TLabel
        Left = 30
        Top = 217
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#53412#54056#46300'( '#49912#51064#54056#46300') '#51333#47448
      end
      object Label38: TLabel
        Left = 30
        Top = 140
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#49888#50857#52852#46300' '#45800#47568#44592' '#54252#53944
      end
      object Label39: TLabel
        Left = 30
        Top = 165
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#49888#50857#52852#46300' '#45800#47568#44592' Speed'
      end
      object Label40: TLabel
        Left = 30
        Top = 113
        Width = 131
        Height = 13
        AutoSize = False
        Caption = #9679#49888#50857#52852#46300' '#45800#47568#44592' '#51333#47448
      end
      object cbscannerport: TComboBox
        Left = 200
        Top = 35
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 0
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632)
      end
      object cbScannerSpeed: TComboBox
        Left = 200
        Top = 60
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 1
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632)
      end
      object cbKeyPadPort: TComboBox
        Left = 200
        Top = 239
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10'
          'COM11'
          'COM12'
          'COM13'
          'COM14'
          'COM15'
          'COM16'
          'COM17'
          'COM18'
          'COM19'
          'COM20')
      end
      object cbKeyPadSpeed: TComboBox
        Left = 200
        Top = 266
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          '9600'
          '14400'
          '34800'
          '57600')
      end
      object cbKeyPadAutostart: TAdvComboBox
        Left = 200
        Top = 308
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 4
        Text = #50500#45768#50724
      end
      object cbKeyPadKind: TComboBox
        Left = 200
        Top = 214
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 5
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'KIS'
          'KOVAN')
      end
      object cbCertMachinePort: TComboBox
        Left = 200
        Top = 137
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 6
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5'
          'COM6'
          'COM7'
          'COM8'
          'COM9'
          'COM10'
          'COM11'
          'COM12'
          'COM13'
          'COM14'
          'COM15'
          'COM16'
          'COM17'
          'COM18'
          'COM19'
          'COM20')
      end
      object cbCertMachineSpeed: TComboBox
        Left = 200
        Top = 162
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 7
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          '9600'
          '14400'
          '34800'
          '57600')
      end
      object cbCertMachineKind: TComboBox
        Left = 200
        Top = 110
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 8
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'KIS'
          'KOVAN')
      end
    end
    object AdvTabSheet9: TAdvTabSheet
      Caption = #45824#44592#54364' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label23: TLabel
        Left = 610
        Top = 380
        Width = 342
        Height = 13
        Caption = #50696#50557#45236#50669#50640' '#50812#51901' '#54637#47785' '#45236#50857#51060' '#51080#45716' '#50696#50557#47564' '#48373#49324'  /'#48708#50612#51080#51004#47732' '#47784#46160' '#48373#49324
      end
      object EllipsLabel69: TLabel
        Left = 17
        Top = 23
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#47532#49828#53944' '#48516#47532#54644#49436' '#48372#44592
        Transparent = True
      end
      object EllipsLabel72: TLabel
        Left = 17
        Top = 46
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#47532#49828#53944' '#44081#49888#49884' '#54637#49345#52376#51020#51004#47196
        Transparent = True
      end
      object EllipsLabel73: TLabel
        Left = 488
        Top = 43
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #44081#49888#48260#53948#49884' '#45824#44592#47785#47197#51060' '#47592#52376#51020#48512#53552' '#48372#51060#44172#54620#45796
        Transparent = True
      end
      object EllipsLabel97: TLabel
        Left = 17
        Top = 69
        Width = 204
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#47532#49828#53944' '#48264#54840' '#50669#49692#51004#47196'(...3, 2, 1)'
        Transparent = True
      end
      object EllipsLabel108: TLabel
        Left = 17
        Top = 92
        Width = 256
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#54364#50640' '#51652#47308#45824#44592#50500#51060#53080#45824#49888' '#54016#49353#51004#47196' '#54364#49884
        Transparent = True
      end
      object EllipsLabel130: TLabel
        Left = 17
        Top = 115
        Width = 304
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088' '#51200#51109#49884' '#51217#49688#45824#44592#51032' '#54016#51004#47196' '#54872#51088' '#54016' '#51201#50857
        Transparent = True
      end
      object EllipsLabel132: TLabel
        Left = 17
        Top = 139
        Width = 204
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#49457#47749#50640' '#54016#49353#49345' '#54364#49884
        Transparent = True
      end
      object EllipsLabel158: TLabel
        Left = 17
        Top = 162
        Width = 204
        Height = 21
        AutoSize = False
        Caption = #9679#51060#51648#45940#53944' '#45824#44592#51221#48372' '#50672#46041
        Transparent = True
      end
      object EllipsLabel194: TLabel
        Left = 17
        Top = 186
        Width = 204
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#49884' '#49324#50868#46300' '#54876#49457
        Transparent = True
      end
      object EllipsLabel202: TLabel
        Left = 18
        Top = 212
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#45796#51473' '#50696#50557#51088' '#49688#45225#49884' '#46041#49884' '#49688#45225#50756#47308#52376#47532
        Transparent = True
      end
      object EllipsLabel203: TLabel
        Left = 18
        Top = 237
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#47532#49828#53944' '#44081#49888#49884' '#53440#51060#47672' '#49324#50857' '#50504#54632
        Transparent = True
      end
      object EllipsLabel204: TLabel
        Left = 18
        Top = 262
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#47532#49828#53944' '#44081#49888#49884' '#49548#53011#53685#49888' '#49324#50857
        Transparent = True
      end
      object EllipsLabel205: TLabel
        Left = 19
        Top = 288
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#45824#44592#47532#49828#53944' '#44081#49888#49884' '#54872#51088#44396#48516' '#48372#44592
        Transparent = True
      end
      object EllipsLabel217: TLabel
        Left = 19
        Top = 411
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#51221#48372#48373#49324#49884' '#49688#45225#45236#50669' '#48373#49324
        Transparent = True
      end
      object EllipsLabel218: TLabel
        Left = 19
        Top = 359
        Width = 312
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#51221#48372#48373#49324#49884' '#49352#47196' '#47564#46304' '#52264#53944#48264#54840#47196' '#45936#51060#53552' '#47784#46160' '#51060#46041
        Transparent = True
      end
      object EllipsLabel219: TLabel
        Left = 19
        Top = 331
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#51221#48372#48373#49324' '#49324#50857
        Transparent = True
      end
      object EllipsLabel225: TLabel
        Left = 19
        Top = 474
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#51060#51648#45940#53944' '#52264#53944#48264#54840' '#48320#44221' '#48260#53948' '#48372#44592
        Transparent = True
      end
      object EllipsLabel226: TLabel
        Left = 19
        Top = 386
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#51221#48372#48373#49324#49884' '#50696#50557#45236#50669' '#48373#49324' '
        Transparent = True
      end
      object EllipsLabel240: TLabel
        Left = 19
        Top = 436
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#54872#51088#51221#48372#48373#49324#49884' '#52264#53944#45236#50669' '#48373#49324
        Transparent = True
      end
      object EllipsLabel241: TLabel
        Left = 488
        Top = 208
        Width = 345
        Height = 21
        AutoSize = False
        Caption = #45817#51068' '#45796#51473' '#50696#50557' '#54616#49888' '#48516' '#49688#45225#49345#53468' '#46041#49884' '#52376#47532
        Transparent = True
      end
      object EllipsLabel277: TLabel
        Left = 19
        Top = 499
        Width = 233
        Height = 21
        AutoSize = False
        Caption = #9679#45940#53448#54764#54140' '#51217#49688#47532#49828#53944' '#48372#44592
        Transparent = True
      end
      object cbDaegiViewMode: TAdvComboBox
        Left = 338
        Top = 18
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 0
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiRefreshMode: TAdvComboBox
        Left = 338
        Top = 41
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 1
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiOrder: TAdvComboBox
        Left = 338
        Top = 64
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 2
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiColor: TAdvComboBox
        Left = 338
        Top = 87
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 3
        Text = #50500#45768#50724
      end
      object cbDaegiTeamSave: TAdvComboBox
        Left = 338
        Top = 110
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 4
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbTeamColorDisp: TAdvComboBox
        Left = 338
        Top = 134
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 5
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbEasydentDaegi: TAdvComboBox
        Left = 338
        Top = 157
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 6
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiSound: TAdvComboBox
        Left = 338
        Top = 181
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 7
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbSunapFinish: TAdvComboBox
        Left = 338
        Top = 206
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 8
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiTimerUse: TAdvComboBox
        Left = 338
        Top = 231
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 9
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiSocketUse: TAdvComboBox
        Left = 338
        Top = 256
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 10
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDaegiGubunView: TAdvComboBox
        Left = 339
        Top = 282
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 11
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartCopyWithSunap: TAdvComboBox
        Left = 338
        Top = 408
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 12
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartCopyWithChartChange: TAdvComboBox
        Left = 338
        Top = 354
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 13
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartCopyUse: TAdvComboBox
        Left = 338
        Top = 328
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 14
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbEasyChartChangeView: TAdvComboBox
        Left = 338
        Top = 470
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 15
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartCopyWithPromise: TAdvComboBox
        Left = 338
        Top = 381
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 16
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtCopyPromiseParam: TEdit
        Left = 485
        Top = 380
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 17
      end
      object cbChartCopyWitheChart: TAdvComboBox
        Left = 338
        Top = 433
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 18
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbDentalHelperReception: TAdvComboBox
        Left = 338
        Top = 495
        Width = 145
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 19
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
    end
    object AdvTabSheet10: TAdvTabSheet
      Caption = 'Password'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label21: TLabel
        Left = 275
        Top = 385
        Width = 340
        Height = 13
        Caption = '*Password'#47484' 123'#51004#47196' '#49444#51221#54616#47732' password'#50630#51060' '#52264#53944' '#49688#51221'/'#49325#51228' '#46121#45768#45796'.'
        Visible = False
      end
      object EllipsLabel116: TLabel
        Left = 17
        Top = 23
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#51068#51088#48324' '#49688#45225#45236#50669
        Transparent = True
      end
      object EllipsLabel117: TLabel
        Left = 17
        Top = 55
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#51068#51068#51216#44160
        Transparent = True
      end
      object EllipsLabel118: TLabel
        Left = 17
        Top = 88
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#51068#47560#44048
        Transparent = True
      end
      object EllipsLabel119: TLabel
        Left = 17
        Top = 121
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#50900#47560#44048
        Transparent = True
      end
      object EllipsLabel120: TLabel
        Left = 17
        Top = 154
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#45380#47560#44048
        Transparent = True
      end
      object EllipsLabel122: TLabel
        Left = 17
        Top = 187
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#54805#53468#48324#49688#45225#45236#50669
        Transparent = True
      end
      object EllipsLabel123: TLabel
        Left = 17
        Top = 220
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#48120#49688#44552#45236#50669
        Transparent = True
      end
      object EllipsLabel188: TLabel
        Left = 17
        Top = 355
        Width = 114
        Height = 21
        AutoSize = False
        Caption = #9679#49345#45812#44288#47532' Lock'#54644#51228
        Transparent = True
      end
      object EllipsLabel208: TLabel
        Left = 17
        Top = 388
        Width = 114
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#49688#51221'/'#49325#51228
        Transparent = True
      end
      object EllipsLabel259: TLabel
        Left = 17
        Top = 250
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#49688#45225#49688#51221
        Transparent = True
      end
      object EllipsLabel260: TLabel
        Left = 17
        Top = 280
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#47560#44048#49688#51221
        Transparent = True
      end
      object EllipsLabel263: TLabel
        Left = 17
        Top = 315
        Width = 100
        Height = 21
        AutoSize = False
        Caption = #9679#50756#45225#52376#47532
        Transparent = True
      end
      object edtPassSunap: TEdit
        Left = 140
        Top = 18
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 0
        Text = 'edtPassSunap'
      end
      object edtPassDayJumgum: TEdit
        Left = 140
        Top = 50
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 1
        Text = 'edtPassDayJumgum'
      end
      object edtPassDayMagam: TEdit
        Left = 140
        Top = 85
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 2
        Text = 'edtPassDayMagam'
      end
      object edtPassMonthMagam: TEdit
        Left = 140
        Top = 120
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 3
        Text = 'edtPassMonthMagam'
      end
      object edtPassYearMagam: TEdit
        Left = 140
        Top = 150
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 4
        Text = 'edtPassYearMagam'
      end
      object edtPassSunapKind: TEdit
        Left = 140
        Top = 180
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 5
        Text = 'edtPassSunapKind'
      end
      object edtPassMisu: TEdit
        Left = 140
        Top = 215
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 6
        Text = 'edtPassMisu'
      end
      object edtpassLock: TEdit
        Left = 140
        Top = 350
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 7
        Text = 'edtPassMisu'
      end
      object edtpassChartDelete: TEdit
        Left = 140
        Top = 383
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 8
        Text = 'edtPassMisu'
      end
      object edtpassSunapUpdate: TEdit
        Left = 140
        Top = 245
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 9
        Text = 'edtPassMisu'
      end
      object edtPassMagamUpdate: TEdit
        Left = 140
        Top = 275
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 10
        Text = 'edtPassMisu'
      end
      object edtPassAccountFinal: TEdit
        Left = 140
        Top = 310
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 11
        Text = 'edtPassMisu'
      end
    end
    object AdvTabSheet11: TAdvTabSheet
      Caption = 'Charting '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel115: TLabel
        Left = 16
        Top = 299
        Width = 155
        Height = 21
        AutoSize = False
        Caption = #9679#48372#54744#52397#44396' '#51077#47141#49884' '#52264#53944' '#50672#46041
        Transparent = True
      end
      object EllipsLabel92: TLabel
        Left = 16
        Top = 414
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#50724#45720' '#52264#54021' '#46972#51064' '#49353
        Transparent = True
      end
      object EllipsLabel95: TLabel
        Left = 16
        Top = 92
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'archwire '#48372#44592'(UAW, LAW)'
        Transparent = True
      end
      object EllipsLabel96: TLabel
        Left = 16
        Top = 115
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'Next  App '#48372#44592
        Transparent = True
      end
      object EllipsLabel98: TLabel
        Left = 16
        Top = 345
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#44396#48516' '#53485' '#44048#52628#44592
        Transparent = True
      end
      object EllipsLabel121: TLabel
        Left = 16
        Top = 437
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' Padding'
        Transparent = True
      end
      object EllipsLabel109: TLabel
        Left = 16
        Top = 44
        Width = 211
        Height = 21
        AutoSize = False
        Caption = #9679'Hygine  '#48372#44592
        Transparent = True
      end
      object EllipsLabel29: TLabel
        Left = 631
        Top = 16
        Width = 155
        Height = 21
        AutoSize = False
        Caption = #9679#52264#54021#51077#47141#49884' '#48372#54744#52397#44396#50672#46041
        Transparent = True
        Visible = False
      end
      object EllipsLabel65: TLabel
        Left = 631
        Top = 46
        Width = 210
        Height = 21
        AutoSize = False
        Caption = #9679#52264#54021#51077#47141#49884' '#48372#54744#52397#44396#50672#46041' '#49884#51089#51068#51088
        Transparent = True
        Visible = False
      end
      object EllipsLabel91: TLabel
        Left = 16
        Top = 21
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#51204#51088#52264#53944' '#52285#48516#47532
        Transparent = True
      end
      object EllipsLabel124: TLabel
        Left = 16
        Top = 138
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#44592#53440#51221#48372'1 '#48372#44592
        Transparent = True
      end
      object EllipsLabel125: TLabel
        Left = 16
        Top = 276
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#54644#54588#53084' '#52264#54021' '#50672#46041
        Transparent = True
      end
      object EllipsLabel151: TLabel
        Left = 16
        Top = 253
        Width = 125
        Height = 21
        AutoSize = False
        Caption = #9679'Arch Wire '#51077#47141#48169#48277
        Transparent = True
      end
      object EllipsLabel153: TLabel
        Left = 16
        Top = 161
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#49828#52884#52264#53944' '#52285' '#48372#44592
        Transparent = True
      end
      object EllipsLabel157: TLabel
        Left = 15
        Top = 669
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52824#49885#46020' '#50557#50612' '#49324#50857
        Transparent = True
      end
      object EllipsLabel170: TLabel
        Left = 16
        Top = 184
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'Plan / Problem List '#48372#44592
        Transparent = True
      end
      object EllipsLabel177: TLabel
        Left = 16
        Top = 322
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#47532#49828#53944' '#50669#49692' '#48372#44592
        Transparent = True
      end
      object EllipsLabel183: TLabel
        Left = 16
        Top = 207
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#47560#52712#51077#47141' '#48372#44592
        Transparent = True
      end
      object EllipsLabel184: TLabel
        Left = 16
        Top = 230
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'X-ray'#51077#47141' '#48372#44592
        Transparent = True
      end
      object EllipsLabel185: TLabel
        Left = 16
        Top = 391
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#50896#50808#52376#48169' '#46972#51064' '#49353
        Transparent = True
      end
      object EllipsLabel191: TLabel
        Left = 16
        Top = 368
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#44396#48516' '#52488#44592' '#54168#51060#51648' Index'
        Transparent = True
      end
      object EllipsLabel195: TLabel
        Left = 16
        Top = 460
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#49912#51064#44592' '#49440#53469
        Transparent = True
      end
      object EllipsLabel215: TLabel
        Left = 16
        Top = 506
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#44277#51064#51064#51613#49436' '#51201#50857
        Transparent = True
      end
      object EllipsLabel216: TLabel
        Left = 16
        Top = 529
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944' '#44277#51064#51064#51613#49436' '#49444#51221' '#44221#47196
        Transparent = True
      end
      object EllipsLabel220: TLabel
        Left = 16
        Top = 483
        Width = 200
        Height = 21
        AutoSize = False
        Caption = #9679#52264#53944#49688#51221#49884' '#50516#54840' '#51201#50857
        Transparent = True
      end
      object EllipsLabel221: TLabel
        Left = 330
        Top = 486
        Width = 315
        Height = 21
        AutoSize = False
        Caption = #50696#47484' '#49440#53469#49884' '#50724#45720' '#51060#51204' '#52264#53944' '#49688#51221#49884' '#50516#54840' '#51077#47141' '#50836#44396
        Transparent = True
      end
      object EllipsLabel232: TLabel
        Left = 16
        Top = 552
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'NEXT '#48260#53948' '#49444#51221' ( '#44544#51088#49353')'
        Transparent = True
      end
      object EllipsLabel233: TLabel
        Left = 16
        Top = 575
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'NEXT '#48260#53948' '#49444#51221' ( '#47928#45800#47784#50577')'
        Transparent = True
      end
      object EllipsLabel234: TLabel
        Left = 15
        Top = 623
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52824#49885#46020' '#49353' '#51648#51221'('#49345#50501')'
        Transparent = True
      end
      object EllipsLabel236: TLabel
        Left = 15
        Top = 646
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52824#49885#46020' '#49353' '#51648#51221'('#54616#50501')'
        Transparent = True
      end
      object EllipsLabel238: TLabel
        Left = 16
        Top = 599
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679'NEXT '#48260#53948' '#49444#51221' ('#53581#49828#53944')'
        Transparent = True
      end
      object EllipsLabel261: TLabel
        Left = 16
        Top = 69
        Width = 211
        Height = 21
        AutoSize = False
        Caption = #9679'Doctor  '#48372#44592
        Transparent = True
      end
      object EllipsLabel266: TLabel
        Left = 15
        Top = 694
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#54021#49688#51221#49884' '#49688#51221#52285' '#51060#50857
        Transparent = True
      end
      object EllipsLabel276: TLabel
        Left = 15
        Top = 719
        Width = 185
        Height = 21
        AutoSize = False
        Caption = #9679#52264#54021' '#49688#51649' '#49828#53356#47204#48148' '#46041#44592#54868
        Transparent = True
      end
      object EllipsLabel289: TLabel
        Left = 376
        Top = 110
        Width = 90
        Height = 21
        AutoSize = False
        Caption = #9679'Code. '#48372#44592
        Transparent = True
      end
      object EllipsLabel290: TLabel
        Left = 376
        Top = 135
        Width = 90
        Height = 21
        AutoSize = False
        Caption = #9679'Kind '#48372#44592
        Transparent = True
      end
      object EllipsLabel292: TLabel
        Left = 376
        Top = 160
        Width = 115
        Height = 21
        AutoSize = False
        Caption = #9679'Daily Comment'#48372#44592
        Transparent = True
      end
      object cbChartinput: TComboBox
        Left = 223
        Top = 297
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 0
        Text = #50696
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbChartColor: TAdvColorPickerDropDown
        Left = 223
        Top = 412
        Width = 254
        Height = 21
        Colors = <
          item
            Caption = 'Black'
            Color = clBlack
          end
          item
            Caption = 'Maroon'
            Color = clMaroon
          end
          item
            Caption = 'Green'
            Color = clGreen
          end
          item
            Caption = 'Olive'
            Color = clOlive
          end
          item
            Caption = 'Navy'
            Color = clNavy
          end
          item
            Caption = 'Purple'
            Color = clPurple
          end
          item
            Caption = 'Teal'
            Color = clTeal
          end
          item
            Caption = 'Gray'
            Color = clGray
          end
          item
            Caption = 'Silver'
            Color = clSilver
          end
          item
            Caption = 'Red'
            Color = clRed
          end
          item
            Caption = 'Lime'
            Color = clLime
          end
          item
            Caption = 'Yellow'
            Color = clYellow
          end
          item
            Caption = 'Blue'
            Color = clBlue
          end
          item
            Caption = 'Fuchsia'
            Color = clFuchsia
          end
          item
            Caption = 'Aqua'
            Color = clAqua
          end
          item
            Caption = 'White'
            Color = clWhite
          end>
        ItemAppearance.BorderColor = 9295827
        ItemAppearance.BorderColorTop = 16056063
        ItemAppearance.BorderColorBottom = 13302015
        ItemAppearance.ColorHot = 14155773
        ItemAppearance.ColorHotTo = 5821692
        ItemAppearance.ColorHotText = clBlack
        ItemAppearance.ColorMirrorHot = 5821692
        ItemAppearance.ColorMirrorHotTo = 11792892
        ItemAppearance.ColorSelected = 10944507
        ItemAppearance.ColorSelectedTo = 309748
        ItemAppearance.ColorMirrorSelected = 1425915
        ItemAppearance.ColorMirrorSelectedTo = 6874105
        ItemAppearance.ColorSelectedText = clBlack
        ItemAppearance.EdgeColor = 12835295
        ItemAppearance.Font.Charset = DEFAULT_CHARSET
        ItemAppearance.Font.Color = clWindowText
        ItemAppearance.Font.Height = -11
        ItemAppearance.Font.Name = 'Tahoma'
        ItemAppearance.Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        DropDownColor = 15984090
        DropDownBorderColor = clNone
        LabelMargin = 0
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Version = '1.4.6.1'
        ButtonAppearance.BorderColorHot = 10079963
        ButtonAppearance.BorderColorDown = 4370174
        ButtonAppearance.Color = 16773091
        ButtonAppearance.ColorTo = 16768452
        ButtonAppearance.ColorDisabledTo = 11974326
        ButtonAppearance.ColorDown = 11196927
        ButtonAppearance.ColorDownTo = 7257087
        ButtonAppearance.ColorHot = 15465983
        ButtonAppearance.ColorHotTo = 11332863
        ButtonAppearance.Font.Charset = DEFAULT_CHARSET
        ButtonAppearance.Font.Color = clWindowText
        ButtonAppearance.Font.Height = -11
        ButtonAppearance.Font.Name = 'Tahoma'
        ButtonAppearance.Font.Style = []
        DropDownHeader.Color = 16773091
        DropDownHeader.ColorTo = 16765615
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 7485192
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = False
        DropDownHeader.BorderColor = 16765615
        DropDownHeader.Buttons = <>
        DropDownFooter.Color = 16773091
        DropDownFooter.ColorTo = 16765615
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 7485192
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'MS Sans Serif'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = False
        DropDownFooter.BorderColor = 16765615
        DropDownFooter.Buttons = <>
        TabOrder = 1
        SelectionColorStyle = 1
        TMSStyle = 4
      end
      object cbArch: TAdvComboBox
        Left = 223
        Top = 89
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 2
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbApp: TAdvComboBox
        Left = 223
        Top = 112
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 3
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbTab: TAdvComboBox
        Left = 223
        Top = 343
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 4
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object edtPadding: TAdvSpinEdit
        Left = 223
        Top = 435
        Width = 106
        Height = 21
        Value = 0
        DateValue = 42044.746822395830000000
        HexDigits = 0
        HexValue = 0
        IncrementFloat = 0.100000000000000000
        IncrementFloatPage = 1.000000000000000000
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 5
        Visible = True
        Version = '1.8.4.0'
      end
      object cbBohum: TComboBox
        Left = 791
        Top = 13
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 6
        Text = #50696
        Visible = False
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbHygine: TAdvComboBox
        Left = 223
        Top = 41
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 8
        Text = #50500#45768#50724
      end
      object cbChartOut: TAdvComboBox
        Left = 223
        Top = 18
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 9
        Text = #50500#45768#50724
      end
      object cbChartEtc1: TAdvComboBox
        Left = 223
        Top = 135
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 10
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbHappyCallChartWrite: TAdvComboBox
        Left = 223
        Top = 274
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 11
        Text = #50500#45768#50724
      end
      object cbArchKind: TAdvComboBox
        Left = 223
        Top = 251
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #53092#48372#48149#49828
          #53944#47532#48149#49828)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 12
        Text = #53092#48372#48149#49828
      end
      object cbScanView: TAdvComboBox
        Left = 223
        Top = 158
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 13
        Text = #50500#45768#50724
      end
      object cbTeethView: TAdvComboBox
        Left = 222
        Top = 669
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 14
        Text = #50500#45768#50724
      end
      object cbPlanDetailView: TAdvComboBox
        Left = 223
        Top = 181
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 15
        Text = #50500#45768#50724
      end
      object cbChartListOrder: TAdvComboBox
        Left = 223
        Top = 320
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 16
        Text = #50696
      end
      object cbMachi: TAdvComboBox
        Left = 223
        Top = 204
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 17
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbXray: TAdvComboBox
        Left = 223
        Top = 227
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 18
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbTuyakColor: TAdvColorPickerDropDown
        Left = 223
        Top = 389
        Width = 254
        Height = 21
        Colors = <
          item
            Caption = 'Black'
            Color = clBlack
          end
          item
            Caption = 'Maroon'
            Color = clMaroon
          end
          item
            Caption = 'Green'
            Color = clGreen
          end
          item
            Caption = 'Olive'
            Color = clOlive
          end
          item
            Caption = 'Navy'
            Color = clNavy
          end
          item
            Caption = 'Purple'
            Color = clPurple
          end
          item
            Caption = 'Teal'
            Color = clTeal
          end
          item
            Caption = 'Gray'
            Color = clGray
          end
          item
            Caption = 'Silver'
            Color = clSilver
          end
          item
            Caption = 'Red'
            Color = clRed
          end
          item
            Caption = 'Lime'
            Color = clLime
          end
          item
            Caption = 'Yellow'
            Color = clYellow
          end
          item
            Caption = 'Blue'
            Color = clBlue
          end
          item
            Caption = 'Fuchsia'
            Color = clFuchsia
          end
          item
            Caption = 'Aqua'
            Color = clAqua
          end
          item
            Caption = 'White'
            Color = clWhite
          end>
        ItemAppearance.BorderColor = 9295827
        ItemAppearance.BorderColorTop = 16056063
        ItemAppearance.BorderColorBottom = 13302015
        ItemAppearance.ColorHot = 14155773
        ItemAppearance.ColorHotTo = 5821692
        ItemAppearance.ColorHotText = clBlack
        ItemAppearance.ColorMirrorHot = 5821692
        ItemAppearance.ColorMirrorHotTo = 11792892
        ItemAppearance.ColorSelected = 10944507
        ItemAppearance.ColorSelectedTo = 309748
        ItemAppearance.ColorMirrorSelected = 1425915
        ItemAppearance.ColorMirrorSelectedTo = 6874105
        ItemAppearance.ColorSelectedText = clBlack
        ItemAppearance.EdgeColor = 12835295
        ItemAppearance.Font.Charset = DEFAULT_CHARSET
        ItemAppearance.Font.Color = clWindowText
        ItemAppearance.Font.Height = -11
        ItemAppearance.Font.Name = 'Tahoma'
        ItemAppearance.Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        DropDownColor = 15984090
        DropDownBorderColor = clNone
        LabelMargin = 0
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Version = '1.4.6.1'
        ButtonAppearance.BorderColorHot = 10079963
        ButtonAppearance.BorderColorDown = 4370174
        ButtonAppearance.Color = 16773091
        ButtonAppearance.ColorTo = 16768452
        ButtonAppearance.ColorDisabledTo = 11974326
        ButtonAppearance.ColorDown = 11196927
        ButtonAppearance.ColorDownTo = 7257087
        ButtonAppearance.ColorHot = 15465983
        ButtonAppearance.ColorHotTo = 11332863
        ButtonAppearance.Font.Charset = DEFAULT_CHARSET
        ButtonAppearance.Font.Color = clWindowText
        ButtonAppearance.Font.Height = -11
        ButtonAppearance.Font.Name = 'Tahoma'
        ButtonAppearance.Font.Style = []
        DropDownHeader.Color = 16773091
        DropDownHeader.ColorTo = 16765615
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 7485192
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = False
        DropDownHeader.BorderColor = 16765615
        DropDownHeader.Buttons = <>
        DropDownFooter.Color = 16773091
        DropDownFooter.ColorTo = 16765615
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 7485192
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'MS Sans Serif'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = False
        DropDownFooter.BorderColor = 16765615
        DropDownFooter.Buttons = <>
        TabOrder = 19
        SelectionColorStyle = 1
        TMSStyle = 4
      end
      object cbChartTab: TAdvComboBox
        Left = 223
        Top = 366
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #51204#52404
          '1'
          '2'
          '3'
          '4'
          '5')
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 20
        Text = #51204#52404
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartSignKind: TAdvComboBox
        Left = 223
        Top = 459
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50630#51020
          'KIS'#51204#51088#49436#47749#44592
          #53440#48660#47131#51077#47141#44592)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 21
        Text = #50630#51020
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbCert: TAdvComboBox
        Left = 223
        Top = 505
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 22
        Text = #50500#45768#50724
      end
      object edtCertPath: TEditBtn
        Left = 223
        Top = 528
        Width = 484
        Height = 21
        ReturnIsTab = False
        Flat = False
        Etched = False
        FocusBorder = False
        RightAlign = False
        TabOrder = 23
        Text = '0'
        Version = '1.5.2.0'
        OnClickBtn = edtViewerClickBtn
      end
      object cbChartDelete: TAdvComboBox
        Left = 223
        Top = 482
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 24
        Text = #50500#45768#50724
      end
      object cbNextButtonColor: TAdvColorPickerDropDown
        Left = 223
        Top = 551
        Width = 254
        Height = 21
        Colors = <
          item
            Caption = 'Black'
            Color = clBlack
          end
          item
            Caption = 'Maroon'
            Color = clMaroon
          end
          item
            Caption = 'Green'
            Color = clGreen
          end
          item
            Caption = 'Olive'
            Color = clOlive
          end
          item
            Caption = 'Navy'
            Color = clNavy
          end
          item
            Caption = 'Purple'
            Color = clPurple
          end
          item
            Caption = 'Teal'
            Color = clTeal
          end
          item
            Caption = 'Gray'
            Color = clGray
          end
          item
            Caption = 'Silver'
            Color = clSilver
          end
          item
            Caption = 'Red'
            Color = clRed
          end
          item
            Caption = 'Lime'
            Color = clLime
          end
          item
            Caption = 'Yellow'
            Color = clYellow
          end
          item
            Caption = 'Blue'
            Color = clBlue
          end
          item
            Caption = 'Fuchsia'
            Color = clFuchsia
          end
          item
            Caption = 'Aqua'
            Color = clAqua
          end
          item
            Caption = 'White'
            Color = clWhite
          end>
        ItemAppearance.BorderColor = 9295827
        ItemAppearance.BorderColorTop = 16056063
        ItemAppearance.BorderColorBottom = 13302015
        ItemAppearance.ColorHot = 14155773
        ItemAppearance.ColorHotTo = 5821692
        ItemAppearance.ColorHotText = clBlack
        ItemAppearance.ColorMirrorHot = 5821692
        ItemAppearance.ColorMirrorHotTo = 11792892
        ItemAppearance.ColorSelected = 10944507
        ItemAppearance.ColorSelectedTo = 309748
        ItemAppearance.ColorMirrorSelected = 1425915
        ItemAppearance.ColorMirrorSelectedTo = 6874105
        ItemAppearance.ColorSelectedText = clBlack
        ItemAppearance.EdgeColor = 12835295
        ItemAppearance.Font.Charset = DEFAULT_CHARSET
        ItemAppearance.Font.Color = clWindowText
        ItemAppearance.Font.Height = -11
        ItemAppearance.Font.Name = 'Tahoma'
        ItemAppearance.Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        DropDownColor = 15984090
        DropDownBorderColor = clNone
        LabelMargin = 0
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Version = '1.4.6.1'
        ButtonAppearance.BorderColorHot = 10079963
        ButtonAppearance.BorderColorDown = 4370174
        ButtonAppearance.Color = 16773091
        ButtonAppearance.ColorTo = 16768452
        ButtonAppearance.ColorDisabledTo = 11974326
        ButtonAppearance.ColorDown = 11196927
        ButtonAppearance.ColorDownTo = 7257087
        ButtonAppearance.ColorHot = 15465983
        ButtonAppearance.ColorHotTo = 11332863
        ButtonAppearance.Font.Charset = DEFAULT_CHARSET
        ButtonAppearance.Font.Color = clWindowText
        ButtonAppearance.Font.Height = -11
        ButtonAppearance.Font.Name = 'Tahoma'
        ButtonAppearance.Font.Style = []
        DropDownHeader.Color = 16773091
        DropDownHeader.ColorTo = 16765615
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 7485192
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = False
        DropDownHeader.BorderColor = 16765615
        DropDownHeader.Buttons = <>
        DropDownFooter.Color = 16773091
        DropDownFooter.ColorTo = 16765615
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 7485192
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'MS Sans Serif'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = False
        DropDownFooter.BorderColor = 16765615
        DropDownFooter.Buttons = <>
        TabOrder = 25
        SelectionColorStyle = 1
        TMSStyle = 4
      end
      object cbNextButtonAlign: TAdvComboBox
        Left = 223
        Top = 574
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50812#51901
          #50724#47480#51901
          #51473#50521)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 26
        Text = #50812#51901
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbUpperToothColor: TAdvColorPickerDropDown
        Left = 222
        Top = 622
        Width = 254
        Height = 21
        Colors = <
          item
            Caption = 'Black'
            Color = clBlack
          end
          item
            Caption = 'Maroon'
            Color = clMaroon
          end
          item
            Caption = 'Green'
            Color = clGreen
          end
          item
            Caption = 'Olive'
            Color = clOlive
          end
          item
            Caption = 'Navy'
            Color = clNavy
          end
          item
            Caption = 'Purple'
            Color = clPurple
          end
          item
            Caption = 'Teal'
            Color = clTeal
          end
          item
            Caption = 'Gray'
            Color = clGray
          end
          item
            Caption = 'Silver'
            Color = clSilver
          end
          item
            Caption = 'Red'
            Color = clRed
          end
          item
            Caption = 'Lime'
            Color = clLime
          end
          item
            Caption = 'Yellow'
            Color = clYellow
          end
          item
            Caption = 'Blue'
            Color = clBlue
          end
          item
            Caption = 'Fuchsia'
            Color = clFuchsia
          end
          item
            Caption = 'Aqua'
            Color = clAqua
          end
          item
            Caption = 'White'
            Color = clWhite
          end>
        ItemAppearance.BorderColor = 9295827
        ItemAppearance.BorderColorTop = 16056063
        ItemAppearance.BorderColorBottom = 13302015
        ItemAppearance.ColorHot = 14155773
        ItemAppearance.ColorHotTo = 5821692
        ItemAppearance.ColorHotText = clBlack
        ItemAppearance.ColorMirrorHot = 5821692
        ItemAppearance.ColorMirrorHotTo = 11792892
        ItemAppearance.ColorSelected = 10944507
        ItemAppearance.ColorSelectedTo = 309748
        ItemAppearance.ColorMirrorSelected = 1425915
        ItemAppearance.ColorMirrorSelectedTo = 6874105
        ItemAppearance.ColorSelectedText = clBlack
        ItemAppearance.EdgeColor = 12835295
        ItemAppearance.Font.Charset = DEFAULT_CHARSET
        ItemAppearance.Font.Color = clWindowText
        ItemAppearance.Font.Height = -11
        ItemAppearance.Font.Name = 'Tahoma'
        ItemAppearance.Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        DropDownColor = 15984090
        DropDownBorderColor = clNone
        LabelMargin = 0
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Version = '1.4.6.1'
        ButtonAppearance.BorderColorHot = 10079963
        ButtonAppearance.BorderColorDown = 4370174
        ButtonAppearance.Color = 16773091
        ButtonAppearance.ColorTo = 16768452
        ButtonAppearance.ColorDisabledTo = 11974326
        ButtonAppearance.ColorDown = 11196927
        ButtonAppearance.ColorDownTo = 7257087
        ButtonAppearance.ColorHot = 15465983
        ButtonAppearance.ColorHotTo = 11332863
        ButtonAppearance.Font.Charset = DEFAULT_CHARSET
        ButtonAppearance.Font.Color = clWindowText
        ButtonAppearance.Font.Height = -11
        ButtonAppearance.Font.Name = 'Tahoma'
        ButtonAppearance.Font.Style = []
        DropDownHeader.Color = 16773091
        DropDownHeader.ColorTo = 16765615
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 7485192
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = False
        DropDownHeader.BorderColor = 16765615
        DropDownHeader.Buttons = <>
        DropDownFooter.Color = 16773091
        DropDownFooter.ColorTo = 16765615
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 7485192
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'MS Sans Serif'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = False
        DropDownFooter.BorderColor = 16765615
        DropDownFooter.Buttons = <>
        TabOrder = 27
        SelectionColorStyle = 1
        TMSStyle = 4
      end
      object cbLowerToothColor: TAdvColorPickerDropDown
        Left = 222
        Top = 645
        Width = 254
        Height = 21
        Colors = <
          item
            Caption = 'Black'
            Color = clBlack
          end
          item
            Caption = 'Maroon'
            Color = clMaroon
          end
          item
            Caption = 'Green'
            Color = clGreen
          end
          item
            Caption = 'Olive'
            Color = clOlive
          end
          item
            Caption = 'Navy'
            Color = clNavy
          end
          item
            Caption = 'Purple'
            Color = clPurple
          end
          item
            Caption = 'Teal'
            Color = clTeal
          end
          item
            Caption = 'Gray'
            Color = clGray
          end
          item
            Caption = 'Silver'
            Color = clSilver
          end
          item
            Caption = 'Red'
            Color = clRed
          end
          item
            Caption = 'Lime'
            Color = clLime
          end
          item
            Caption = 'Yellow'
            Color = clYellow
          end
          item
            Caption = 'Blue'
            Color = clBlue
          end
          item
            Caption = 'Fuchsia'
            Color = clFuchsia
          end
          item
            Caption = 'Aqua'
            Color = clAqua
          end
          item
            Caption = 'White'
            Color = clWhite
          end>
        ItemAppearance.BorderColor = 9295827
        ItemAppearance.BorderColorTop = 16056063
        ItemAppearance.BorderColorBottom = 13302015
        ItemAppearance.ColorHot = 14155773
        ItemAppearance.ColorHotTo = 5821692
        ItemAppearance.ColorHotText = clBlack
        ItemAppearance.ColorMirrorHot = 5821692
        ItemAppearance.ColorMirrorHotTo = 11792892
        ItemAppearance.ColorSelected = 10944507
        ItemAppearance.ColorSelectedTo = 309748
        ItemAppearance.ColorMirrorSelected = 1425915
        ItemAppearance.ColorMirrorSelectedTo = 6874105
        ItemAppearance.ColorSelectedText = clBlack
        ItemAppearance.EdgeColor = 12835295
        ItemAppearance.Font.Charset = DEFAULT_CHARSET
        ItemAppearance.Font.Color = clWindowText
        ItemAppearance.Font.Height = -11
        ItemAppearance.Font.Name = 'Tahoma'
        ItemAppearance.Font.Style = []
        ImeName = 'Microsoft Office IME 2007'
        DropDownColor = 15984090
        DropDownBorderColor = clNone
        LabelMargin = 0
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Version = '1.4.6.1'
        ButtonAppearance.BorderColorHot = 10079963
        ButtonAppearance.BorderColorDown = 4370174
        ButtonAppearance.Color = 16773091
        ButtonAppearance.ColorTo = 16768452
        ButtonAppearance.ColorDisabledTo = 11974326
        ButtonAppearance.ColorDown = 11196927
        ButtonAppearance.ColorDownTo = 7257087
        ButtonAppearance.ColorHot = 15465983
        ButtonAppearance.ColorHotTo = 11332863
        ButtonAppearance.Font.Charset = DEFAULT_CHARSET
        ButtonAppearance.Font.Color = clWindowText
        ButtonAppearance.Font.Height = -11
        ButtonAppearance.Font.Name = 'Tahoma'
        ButtonAppearance.Font.Style = []
        DropDownHeader.Color = 16773091
        DropDownHeader.ColorTo = 16765615
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 7485192
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = False
        DropDownHeader.BorderColor = 16765615
        DropDownHeader.Buttons = <>
        DropDownFooter.Color = 16773091
        DropDownFooter.ColorTo = 16765615
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 7485192
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'MS Sans Serif'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = False
        DropDownFooter.BorderColor = 16765615
        DropDownFooter.Buttons = <>
        TabOrder = 28
        SelectionColorStyle = 1
        TMSStyle = 4
      end
      object edtNextButtonText: TAdvEdit
        Left = 223
        Top = 599
        Width = 121
        Height = 21
        DefaultHandling = True
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
        TabOrder = 29
        Text = 'edtNextButtonText'
        Visible = True
        Version = '3.4.9.0'
      end
      object cbDoctor: TAdvComboBox
        Left = 223
        Top = 66
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 30
        Text = #50500#45768#50724
      end
      object cbUseChartingModWindow: TAdvComboBox
        Left = 222
        Top = 694
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 31
        Text = #50500#45768#50724
      end
      object cbChartScrollSync: TAdvComboBox
        Left = 222
        Top = 719
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 32
        Text = #50500#45768#50724
      end
      object cbCode: TAdvComboBox
        Left = 498
        Top = 107
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 33
        Text = #50500#45768#50724
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartKindView: TAdvComboBox
        Left = 498
        Top = 132
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 34
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object cbChartDaily: TAdvComboBox
        Left = 498
        Top = 157
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 35
        Text = #50696
        OnKeyPress = EdtHpNameKeyPress
      end
      object dtBohumApply: TDateTimePicker
        Left = 795
        Top = 46
        Width = 141
        Height = 21
        Date = 43321.000000000000000000
        Time = 0.614456354167487000
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 7
        Visible = False
      end
    end
    object AdvTabSheet12: TAdvTabSheet
      Caption = 'Backup '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel126: TLabel
        Left = 26
        Top = 21
        Width = 120
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' '#44221#47196
        Transparent = True
      end
      object EllipsLabel127: TLabel
        Left = 26
        Top = 56
        Width = 105
        Height = 21
        AutoSize = False
        Caption = #9679#45936#51060#53552#48288#51060#49828#47749
        Transparent = True
      end
      object EllipsLabel128: TLabel
        Left = 26
        Top = 91
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#50976#51200#47749
        Transparent = True
      end
      object EllipsLabel129: TLabel
        Left = 26
        Top = 126
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#54056#49828#50892#46300
        Transparent = True
      end
      object edtDbName7: TEdit
        Left = 160
        Top = 51
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'edtDbName7'
      end
      object edtUsername7: TEdit
        Left = 160
        Top = 86
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'edtUsername7'
      end
      object edtpass7: TEdit
        Left = 160
        Top = 121
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 2
        Text = 'edtPass7'
      end
      object edtpath7: TEdit
        Left = 160
        Top = 14
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = 'edtPath7'
      end
    end
    object AdvTabSheet13: TAdvTabSheet
      Caption = #54028#51068#49436#48260#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label14: TLabel
        Left = 305
        Top = 106
        Width = 353
        Height = 65
        Caption = 
          'ftp '#49436#48260#51032' Root'#44221#47196#13#10' ('#50696': /web/files'#50640' chart'#54260#45908#47484' '#47564#46308#50612' '#51200#51109#54616#45716' '#44221#50864' /web/files' +
          #44620#51648' '#51201#51020')'#13#10#47532#45573#49828#51032' '#44221#50864' '#54856#46356#47113#53664#47532#47749' '#44620#51648' '#44592#51077#54644#50556#54620#45796'.'#13#10#50696') Centos VsFtpd'#51032' '#54856#46356#47113#53664#47532#44032' /tmp' +
          #51060#44256' '#44536#50504#50640' files-chart '#47196' '#13#10#44396#49457#46104#47732' /tmp/files '#47196' '#44592#51116#54644#50556' '#54632'.'
      end
      object Label16: TLabel
        Left = 355
        Top = 189
        Width = 315
        Height = 39
        Caption = 
          'imageserver1 '#13#10'     root folder'#44221#47196' --> Http '#48520#47084#50724#44592' '#44221#47196'('#50948#50640#49436' '#49436#48260'Toot '#50640#49436 +
          ' '#13#10'                                  web home'#51060' /web'#51064#44221#50864'/files'#47564' '#51201#51020 +
          ')'
      end
      object EllipsLabel112: TLabel
        Left = 36
        Top = 22
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#47928#49436#54028#51068#51221#48372#49324#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel113: TLabel
        Left = 36
        Top = 52
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#47928#49436#54028#51068#49436#48260'IP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel133: TLabel
        Left = 36
        Top = 82
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260#49324#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel134: TLabel
        Left = 36
        Top = 107
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' Root'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel136: TLabel
        Left = 36
        Top = 137
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel137: TLabel
        Left = 36
        Top = 167
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel138: TLabel
        Left = 36
        Top = 202
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' Port'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel139: TLabel
        Left = 36
        Top = 265
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' ImageServer1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel140: TLabel
        Left = 36
        Top = 295
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' ImageServer2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel141: TLabel
        Left = 36
        Top = 325
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' ImageServer3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel142: TLabel
        Left = 36
        Top = 420
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' Chart Server'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel143: TLabel
        Left = 36
        Top = 450
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' Docu Server'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel144: TLabel
        Left = 36
        Top = 355
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' ImageServer4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel145: TLabel
        Left = 36
        Top = 385
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #9679' ImageServer5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel146: TLabel
        Left = 502
        Top = 242
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #49436#48260' ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel147: TLabel
        Left = 356
        Top = 242
        Width = 117
        Height = 21
        AutoSize = False
        Caption = 'Root folder(/'#51228#50808')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel148: TLabel
        Left = 231
        Top = 242
        Width = 60
        Height = 21
        AutoSize = False
        Caption = #49436#48260'IP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel149: TLabel
        Left = 637
        Top = 242
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #49436#48260' Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel150: TLabel
        Left = 769
        Top = 241
        Width = 73
        Height = 21
        AutoSize = False
        Caption = #49436#48260' Port'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EllipsLabel152: TLabel
        Left = 86
        Top = 397
        Width = 45
        Height = 21
        AutoSize = False
        Caption = '(v-ceph)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cbFileUse: TComboBox
        Left = 154
        Top = 17
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 1
        TabOrder = 0
        Text = #50696
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object edtFileServerIP: TEdit
        Left = 154
        Top = 49
        Width = 146
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'edtFileServerIP'
      end
      object cbServerUse: TComboBox
        Left = 154
        Top = 78
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = #50696
        Items.Strings = (
          #50500#45768#50724
          #50696
          #44592#53440)
      end
      object edtFtpRoot: TEdit
        Left = 154
        Top = 104
        Width = 146
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = 'edtFtpRoot'
      end
      object edtFtpid: TEdit
        Left = 155
        Top = 135
        Width = 141
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 4
        Text = 'edtFtpid'
      end
      object edtFtpPass: TEdit
        Left = 155
        Top = 165
        Width = 141
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 5
        Text = 'edtFtpPass'
      end
      object edtFtpPort: TEdit
        Left = 155
        Top = 197
        Width = 141
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 6
        Text = 'edtFtpPort'
      end
      object cbImg1Kind: TComboBox
        Left = 154
        Top = 263
        Width = 70
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 7
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object cbImg2Kind: TComboBox
        Left = 154
        Top = 293
        Width = 70
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 8
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object cbImg3Kind: TComboBox
        Left = 154
        Top = 323
        Width = 70
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 9
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object cbChartServerKind: TComboBox
        Left = 154
        Top = 418
        Width = 70
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 10
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object cbDocuServerKind: TComboBox
        Left = 154
        Top = 448
        Width = 70
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 11
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object cbImg4Kind: TComboBox
        Left = 154
        Top = 353
        Width = 70
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 12
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object cbImg5Kind: TComboBox
        Left = 154
        Top = 383
        Width = 70
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 13
        Text = #49324#50857#50504#54632
        Items.Strings = (
          #49324#50857#50504#54632
          'TCP'
          'FTP')
      end
      object edtImg1IP: TEdit
        Left = 228
        Top = 263
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 14
        Text = 'edtImg1IP'
      end
      object edtImg1Root: TEdit
        Left = 355
        Top = 263
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 15
        Text = 'edtImg1Root'
      end
      object edtImg1ID: TEdit
        Left = 501
        Top = 263
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 16
        Text = 'edtImg1ID'
      end
      object edtImg1Pass: TEdit
        Left = 636
        Top = 263
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 17
        Text = 'edtImg1Pass'
      end
      object edtImg1Port: TEdit
        Left = 766
        Top = 263
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 18
        Text = 'edtImg1Port'
      end
      object edtImg2IP: TEdit
        Left = 228
        Top = 293
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 19
        Text = 'edtImg2IP'
      end
      object edtImg2Root: TEdit
        Left = 355
        Top = 293
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 20
        Text = 'edtImg2Root'
      end
      object edtImg2ID: TEdit
        Left = 501
        Top = 293
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 21
        Text = 'edtImg2ID'
      end
      object edtImg2Pass: TEdit
        Left = 636
        Top = 293
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 22
        Text = 'edtImg2Pass'
      end
      object edtImg2Port: TEdit
        Left = 766
        Top = 293
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 23
        Text = 'edtImg2Port'
      end
      object edtImg3IP: TEdit
        Left = 228
        Top = 323
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 24
        Text = 'edtImg3IP'
      end
      object edtImg3Root: TEdit
        Left = 355
        Top = 323
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 25
        Text = 'edtImg3Root'
      end
      object edtImg3ID: TEdit
        Left = 501
        Top = 323
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 26
        Text = 'edtImg3ID'
      end
      object edtImg3Pass: TEdit
        Left = 636
        Top = 323
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 27
        Text = 'edtImg3Pass'
      end
      object edtImg3Port: TEdit
        Left = 766
        Top = 323
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 28
        Text = 'edtImg3Port'
      end
      object edtImg4IP: TEdit
        Left = 228
        Top = 353
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 29
        Text = 'edtImg4IP'
      end
      object edtImg4Root: TEdit
        Left = 355
        Top = 353
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 30
        Text = 'edtImg4Root'
      end
      object edtImg4ID: TEdit
        Left = 501
        Top = 353
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 31
        Text = 'edtImg4ID'
      end
      object edtImg4Pass: TEdit
        Left = 636
        Top = 353
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 32
        Text = 'edtImg4Pass'
      end
      object edtImg4Port: TEdit
        Left = 766
        Top = 353
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 33
        Text = 'edtImg4Port'
      end
      object edtImg5IP: TEdit
        Left = 228
        Top = 383
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 34
        Text = 'edtImg5IP'
      end
      object edtImg5Root: TEdit
        Left = 355
        Top = 383
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 35
        Text = 'edtImg5Root'
      end
      object edtImg5ID: TEdit
        Left = 501
        Top = 383
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 36
        Text = 'edtImg5ID'
      end
      object edtImg5Pass: TEdit
        Left = 636
        Top = 383
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 37
        Text = 'edtImg5Pass'
      end
      object edtImg5Port: TEdit
        Left = 766
        Top = 383
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 38
        Text = 'edtImg5Port'
      end
      object edtChartServerIP: TEdit
        Left = 228
        Top = 418
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 39
        Text = 'edtChartServerIP'
      end
      object edtChartserverRoot: TEdit
        Left = 355
        Top = 418
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 40
        Text = 'edtChartserverRoot'
      end
      object edtChartServerID: TEdit
        Left = 501
        Top = 418
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 41
        Text = 'edtChartServerID'
      end
      object edtChartServerPass: TEdit
        Left = 636
        Top = 418
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 42
        Text = 'edtChartServerPass'
      end
      object edtChartserverPort: TEdit
        Left = 766
        Top = 418
        Width = 121
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 43
        Text = 'edtChartserverPort'
      end
      object edtDocuServerIP: TEdit
        Left = 228
        Top = 448
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 44
        Text = 'edtDocuServerIP'
      end
      object edtDocuServerRoot: TEdit
        Left = 355
        Top = 448
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 45
        Text = 'edtDocuServerRoot'
      end
      object edtDocuServerID: TEdit
        Left = 501
        Top = 448
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 46
        Text = 'edtDocuServerID'
      end
      object edtDocuServerPass: TEdit
        Left = 636
        Top = 448
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        PasswordChar = '*'
        TabOrder = 47
        Text = 'edtDocuServerPass'
      end
      object edtDocuserverPort: TEdit
        Left = 766
        Top = 448
        Width = 121
        Height = 21
        Color = 16763647
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 48
        Text = 'edtDocuserverPort'
      end
    end
    object AdvTabSheet14: TAdvTabSheet
      Caption = #51064#49604#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel206: TLabel
        Left = 16
        Top = 127
        Width = 230
        Height = 21
        AutoSize = False
        Caption = #9679#51652#47308#51032#47280#49436' '#51228#47785' '#51060#48120#51648' '#54028#51068
        Transparent = True
      end
      object EllipsLabel190: TLabel
        Left = 16
        Top = 78
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#51068#51088#48324' '#49688#45225' '#51064#49604#49884' '#44036#45800#51064#49604
        Transparent = True
      end
      object EllipsLabel187: TLabel
        Left = 16
        Top = 101
        Width = 210
        Height = 16
        AutoSize = False
        Caption = #9679#51068#51088#48324' '#49688#45225' '#51064#49604#49884' '#52280#44256#49324#54637' '#51460#48148#44984#44592
        Transparent = True
      end
      object EllipsLabel180: TLabel
        Left = 16
        Top = 27
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#51068#51068#51216#44160#54364' '#49464#47196#51064#49604
        Transparent = True
      end
      object EllipsLabel181: TLabel
        Left = 16
        Top = 51
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#52376#48169#51204#50857' '#51064#51109' '#54028#51068
        Transparent = True
      end
      object EllipsLabel207: TLabel
        Left = 16
        Top = 151
        Width = 230
        Height = 21
        AutoSize = False
        Caption = #9679#51652#47308#51032#47280#49436' '#51473#44036' '#51060#48120#51648' '#54028#51068
        Transparent = True
      end
      object EllipsLabel224: TLabel
        Left = 16
        Top = 176
        Width = 230
        Height = 21
        AutoSize = False
        Caption = #9679#44592#48376' '#51652#47308#44592#47197#51648' '#49324#50857
        Transparent = True
      end
      object EllipsLabel192: TLabel
        Left = 16
        Top = 201
        Width = 230
        Height = 21
        AutoSize = False
        Caption = #9679#52376#48169#51204' '#51064#49604#49884' '#51452#48124#48264#54840#48372#44592
        Transparent = True
      end
      object EllipsLabel304: TLabel
        Left = 16
        Top = 228
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#48337#50896#50857' '#51064#51109' '#54028#51068
        Transparent = True
      end
      object EllipsLabel305: TLabel
        Left = 16
        Top = 255
        Width = 185
        Height = 16
        AutoSize = False
        Caption = #9679#45824#54364#50896#51109' '#51064#51109' '#54028#51068
        Transparent = True
      end
      object cbSunapPrintOpt1: TAdvComboBox
        Left = 282
        Top = 72
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 0
        Text = #50500#45768#50724
      end
      object cbSunapPrintLineChange: TAdvComboBox
        Left = 282
        Top = 95
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 1
        Text = #50500#45768#50724
      end
      object cbJungsanPrintDirection: TAdvComboBox
        Left = 282
        Top = 23
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 2
        Text = #50500#45768#50724
      end
      object edtSignFilePath: TAdvFileNameEdit
        Left = 282
        Top = 47
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 3
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtDocuHeaderFile: TAdvFileNameEdit
        Left = 282
        Top = 121
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 4
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtDocuMidFile: TAdvFileNameEdit
        Left = 282
        Top = 147
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 5
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object cbPrtFirstForm: TAdvComboBox
        Left = 282
        Top = 172
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 6
        Text = #50500#45768#50724
      end
      object cbJuminView: TAdvComboBox
        Left = 282
        Top = 197
        Width = 106
        Height = 21
        Color = clWindow
        Version = '1.9.2.1'
        Visible = True
        ButtonWidth = 17
        EmptyTextStyle = []
        DropWidth = 0
        Enabled = True
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        Items.Strings = (
          #50500#45768#50724
          #50696)
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        TabOrder = 7
        Text = #50500#45768#50724
      end
      object edtSignFilePath1: TAdvFileNameEdit
        Left = 282
        Top = 224
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 8
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtSignFilePath2: TAdvFileNameEdit
        Left = 282
        Top = 251
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 9
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
    end
    object AdvTabSheet15: TAdvTabSheet
      Caption = #50808#48512#54532#47196#44536#47016' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label22: TLabel
        Left = 27
        Top = 61
        Width = 90
        Height = 16
        AutoSize = False
        Caption = #9679'DB '#51333#47448
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 525
        Top = 275
        Width = 290
        Height = 13
        Caption = #44221#47196#50640' '#54872#51088' '#50500#51060#46356#47484' '#49324#50857' '#54624' '#44221#50864' \{patid}'#47484' '#51077#47141#54616#49464#50836'.'
      end
      object EllipsLabel210: TLabel
        Left = 26
        Top = 32
        Width = 130
        Height = 21
        AutoSize = False
        Caption = #9679#50808#48512#54532#47196#44536#47016' '#51333#47448
        Transparent = True
      end
      object EllipsLabel211: TLabel
        Left = 26
        Top = 88
        Width = 120
        Height = 21
        AutoSize = False
        Caption = #9679#49436#48260' '#44221#47196'2'
        Transparent = True
      end
      object EllipsLabel212: TLabel
        Left = 26
        Top = 114
        Width = 105
        Height = 21
        AutoSize = False
        Caption = #9679#45936#51060#53552#48288#51060#49828#47749'2'
        Transparent = True
      end
      object EllipsLabel213: TLabel
        Left = 26
        Top = 141
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#50976#51200#47749'2'
        Transparent = True
      end
      object EllipsLabel214: TLabel
        Left = 26
        Top = 168
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#54056#49828#50892#46300'2'
        Transparent = True
      end
      object EllipsLabel252: TLabel
        Left = 26
        Top = 283
        Width = 85
        Height = 21
        AutoSize = False
        Caption = #9679#44277#50976#54260#45908' '#44221#47196
        Transparent = True
      end
      object EllipsLabel253: TLabel
        Left = 26
        Top = 338
        Width = 135
        Height = 21
        AutoSize = False
        Caption = #9679'Power Point '#54532#47196#44536#47016' '
        Transparent = True
      end
      object EllipsLabel254: TLabel
        Left = 26
        Top = 253
        Width = 220
        Height = 21
        AutoSize = False
        Caption = 'PPT '#46608#45716' '#50689#49345#51221#48372' '#44277#50976#50857' '#54260#45908' '#51648#51221
        Transparent = True
      end
      object EllipsLabel265: TLabel
        Left = 26
        Top = 308
        Width = 135
        Height = 21
        AutoSize = False
        Caption = #9679#44277#50976#54260#45908' '#51217#44540' '#50500#51060#46356
        Transparent = True
      end
      object EllipsLabel282: TLabel
        Left = 26
        Top = 388
        Width = 135
        Height = 21
        AutoSize = False
        Caption = #9679#54172#52264#53944' '#50896#48376#51060#48120#51648' '#44221#47196
        Transparent = True
      end
      object EllipsLabel283: TLabel
        Left = 26
        Top = 415
        Width = 120
        Height = 21
        AutoSize = False
        Caption = #9679#44396#54172#52264#53944' '#44221#47196
        Transparent = True
      end
      object Label34: TLabel
        Left = 27
        Top = 442
        Width = 119
        Height = 21
        AutoSize = False
        Caption = #9679'Google Map Api Key'
        Transparent = True
      end
      object CBAnotherDB: TComboBox
        Left = 160
        Top = 29
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = #51333#47448#47484' '#49440#53469#54616#49464#50836'.'
        Items.Strings = (
          #51333#47448#47484' '#49440#53469#54616#49464#50836'.'
          #46160#48264#50640
          #54616#45208#47196
          #50532#46300#52980
          #45940#53944#50937)
      end
      object edtPath2: TEdit
        Left = 160
        Top = 81
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'edtPath2'
      end
      object edtDbName2: TEdit
        Left = 160
        Top = 109
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'edtDbName2'
      end
      object edtUsername2: TEdit
        Left = 160
        Top = 136
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = 'edtUsername2'
      end
      object edtPass3: TEdit
        Left = 160
        Top = 163
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 4
        Text = 'edtPass3'
      end
      object cbDbprotocol2: TComboBox
        Left = 160
        Top = 56
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 5
        Text = 'mssql'
        Items.Strings = (
          'mssql'
          'mysql-5'
          'Oracle'
          'Interbase'
          'MS-ACCESS'
          'Firebird')
      end
      object edtPPtPath: TAdvFileNameEdit
        Left = 160
        Top = 332
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 6
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtShareFolderPPT: TAdvDirectoryEdit
        Left = 160
        Top = 275
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 7
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
          00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
          00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
          0000FF0BBB00000F0000FFF000FFFFFF0000}
        ReadOnly = False
        BrowseDialogText = 'Select Directory'
      end
      object cbShareFolderID: TComboBox
        Left = 160
        Top = 301
        Width = 145
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 8
        Text = #52264#53944#48264#54840
        Items.Strings = (
          #52264#53944#48264#54840
          #54872#51088#49457#47749
          #52264#53944#48264#54840' + '#54872#51088#49457#47749
          #54872#51088#49457#47749' + '#52264#53944#48264#54840
          #54872#51088#49457#47749' +('#52264#53944#48264#54840')')
      end
      object edtPenchartTemplatePath: TAdvDirectoryEdit
        Left = 160
        Top = 385
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 9
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
          00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
          00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
          0000FF0BBB00000F0000FFF000FFFFFF0000}
        ReadOnly = False
        BrowseDialogText = 'Select Directory'
      end
      object edtPenchartSavedPath: TAdvDirectoryEdit
        Left = 160
        Top = 410
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 10
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
          00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
          00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
          0000FF0BBB00000F0000FFF000FFFFFF0000}
        ReadOnly = False
        BrowseDialogText = 'Select Directory'
      end
      object edtGoogleMapApiKey: TEdit
        Left = 161
        Top = 437
        Width = 144
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 11
        Text = 'edtGoogleMapApiKey'
      end
    end
    object AdvTabSheet16: TAdvTabSheet
      Caption = #52397#44396#49688#45225' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel223: TLabel
        Left = 31
        Top = 21
        Width = 90
        Height = 21
        AutoSize = False
        Caption = #9679#52397#44396' '#48260#53948' '#44600#51060' '
        Transparent = True
      end
      object edtJinryoButtonLength: TAdvEdit
        Left = 135
        Top = 18
        Width = 121
        Height = 21
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        TabOrder = 0
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
    end
    object AdvTabSheet17: TAdvTabSheet
      Caption = #49688#45225' '#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel237: TLabel
        Left = 16
        Top = 36
        Width = 320
        Height = 21
        AutoSize = False
        Caption = #9679#49688#45225' '#52280#44256#49324#54637' '#44284' '#51217#49688#49884' '#51077#47141#54620' Daily Comment '#50672#46041
        Transparent = True
      end
      object EllipsLabel264: TLabel
        Left = 16
        Top = 66
        Width = 320
        Height = 21
        AutoSize = False
        Caption = #9679#49688#45225' '#45236#50669#50640#49436' '#52852#46300#44552#50529#48143' '#52852#46300#49324' '#48372#44592
        Transparent = True
      end
      object EllipsLabel271: TLabel
        Left = 16
        Top = 91
        Width = 320
        Height = 21
        AutoSize = False
        Caption = #9679#51064#49604#49884' '#51077#50896' '#49440#53469
        Transparent = True
      end
      object EllipsLabel291: TLabel
        Left = 16
        Top = 121
        Width = 320
        Height = 21
        AutoSize = False
        Caption = #9679#49688#45225' '#48516#45225#51077#47141#49884' '#51077#47141#52285' '#51060#50857
        Transparent = True
      end
      object EllipsLabel293: TLabel
        Left = 16
        Top = 151
        Width = 320
        Height = 21
        AutoSize = False
        Caption = #9679#49688#45225' '#49912#51064' '#51077#47141#52285#50640#49436' '#52509#44552#50529' '#44048#52628#44592
        Transparent = True
      end
      object Label35: TLabel
        Left = 16
        Top = 178
        Width = 320
        Height = 21
        AutoSize = False
        Caption = #9679#49688#45225#49884' '#54637#49345' '#54788#44552#50689#49688#51613#51088#51652#48156#44553
        Transparent = True
      end
      object cbSunapComment: TComboBox
        Left = 338
        Top = 33
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = #50696
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbSunapRemarkCardView: TComboBox
        Left = 338
        Top = 63
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 1
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbIbwon: TComboBox
        Left = 338
        Top = 88
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 2
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbBunnapInputUse: TComboBox
        Left = 338
        Top = 118
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 3
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbHideTot: TComboBox
        Left = 338
        Top = 148
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 4
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbAutoHyunReceipt: TComboBox
        Left = 338
        Top = 175
        Width = 106
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 5
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
    end
    object AdvTabSheet18: TAdvTabSheet
      Caption = #46041#51032#49436#49444#51221
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object EllipsLabel255: TLabel
        Left = 16
        Top = 61
        Width = 110
        Height = 21
        AutoSize = False
        Caption = #9679#44368#51221#46041#51032#49436' 1page'
        Transparent = True
      end
      object EllipsLabel256: TLabel
        Left = 16
        Top = 91
        Width = 110
        Height = 21
        AutoSize = False
        Caption = #9679#44368#51221#46041#51032#49436' 2page'
        Transparent = True
      end
      object EllipsLabel257: TLabel
        Left = 16
        Top = 31
        Width = 115
        Height = 21
        AutoSize = False
        Caption = #9679#44060#51064#51221#48372#54876#50857#46041#51032#49436
        Transparent = True
      end
      object EllipsLabel258: TLabel
        Left = 16
        Top = 121
        Width = 110
        Height = 21
        AutoSize = False
        Caption = #9679#51652#47308#48708#45236#50669#49436
        Transparent = True
      end
      object edtOrthoagree1Path: TAdvFileNameEdit
        Left = 135
        Top = 57
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 0
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtOrthoagree2Path: TAdvFileNameEdit
        Left = 135
        Top = 87
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 1
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtPersonalinfoPath: TAdvFileNameEdit
        Left = 135
        Top = 27
        Width = 359
        Height = 21
        DefaultHandling = True
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
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
      object edtTreatFeePath: TAdvFileNameEdit
        Left = 135
        Top = 117
        Width = 359
        Height = 21
        DefaultHandling = True
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
        TabOrder = 3
        Text = ''
        Visible = True
        Version = '1.5.1.0'
        ButtonStyle = bsButton
        ButtonWidth = 18
        Flat = False
        Etched = False
        Glyph.Data = {
          CE000000424DCE0000000000000076000000280000000C0000000B0000000100
          0400000000005800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
          00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
          0000DDDDD0DDD0D00000DDDDDD000DDD0000}
        ReadOnly = False
        FilterIndex = 0
        DialogOptions = []
        DialogKind = fdOpen
      end
    end
    object AdvTabSheet19: TAdvTabSheet
      Caption = #50808#48512' '#47553#53356' '#50672#44208
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label41: TLabel
        Left = 27
        Top = 20
        Width = 119
        Height = 21
        AutoSize = False
        Caption = #9679#47553#53356'1'
        Transparent = True
      end
      object Label42: TLabel
        Left = 27
        Top = 47
        Width = 119
        Height = 21
        AutoSize = False
        Caption = #9679#47553#53356'2'
        Transparent = True
      end
      object edtLink1: TEdit
        Left = 161
        Top = 15
        Width = 416
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'edtLink1'
      end
      object edtLink2: TEdit
        Left = 161
        Top = 42
        Width = 416
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'edtLink2'
      end
    end
  end
  object pnlBottom: TAdvPanel
    Left = 0
    Top = 0
    Width = 1444
    Height = 35
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
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
    DesignSize = (
      1444
      35)
    FullHeight = 0
    object btnSave: TAdvGlowButton
      Left = 731
      Top = 4
      Width = 109
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #51200#51109
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object btnCancel: TAdvGlowButton
      Left = 844
      Top = 4
      Width = 75
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCancelClick
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
  object pnlButton: TAdvPanel
    Left = 0
    Top = 35
    Width = 185
    Height = 746
    Align = alLeft
    BevelOuter = bvNone
    Color = 16381427
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 16316406
    Caption.ColorTo = 15261915
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15195349
    ColorMirror = 15195349
    ColorMirrorTo = 16513776
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16445163
    StatusBar.ColorTo = 15064023
    StatusBar.GradientDirection = gdVertical
    Styler = AdvPanelStyler1
    Text = ''
    FullHeight = 0
    object gbButton: TAdvGroupBox
      Left = 0
      Top = 0
      Width = 185
      Height = 746
      Align = alClient
      ParentCtl3D = True
      TabOrder = 0
      Visible = False
      object btnBasic: TAdvGlowButton
        Left = 3
        Top = 3
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #44592#48376#49444#51221
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object btnJubsu: TAdvGlowButton
        Left = 3
        Top = 44
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #51217#49688
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object btnPromise: TAdvGlowButton
        Left = 3
        Top = 85
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #50696#50557#51109#48512
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton4: TAdvGlowButton
        Left = 3
        Top = 126
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #52397#44396#49900#49324
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton5: TAdvGlowButton
        Left = 3
        Top = 167
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #47928#49436
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton6: TAdvGlowButton
        Left = 3
        Top = 208
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #47928#51088#51204#49569
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton7: TAdvGlowButton
        Left = 3
        Top = 249
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = 'CRM'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton8: TAdvGlowButton
        Left = 3
        Top = 290
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #51652#45800#51088#47308#49688#51665
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 7
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton9: TAdvGlowButton
        Left = 3
        Top = 331
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #52264#54021
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 8
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
      object AdvGlowButton10: TAdvGlowButton
        Left = 3
        Top = 372
        Width = 179
        Height = 41
        Align = alTop
        AntiAlias = aaNone
        BorderStyle = bsNone
        Caption = #52824#47308#44228#54925
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 9
        OnClick = btnBasicClick
        AllowAllUp = True
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
        Style = bsCheck
      end
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 16765615
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 16316406
    Settings.Caption.ColorTo = 15261915
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clBlack
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 16381427
    Settings.ColorTo = 15195349
    Settings.ColorMirror = 15195349
    Settings.ColorMirrorTo = 16513776
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = 7485192
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = 7485192
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 16445163
    Settings.StatusBar.ColorTo = 15064023
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2007Silver
    Left = 19
    Top = 473
  end
  object HTTP: TIdHTTP
    Intercept = IdLogEvent1
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'a'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 20
    Top = 430
  end
  object LogDebug: TIdLogDebug
    Left = 57
    Top = 432
  end
  object IdLogEvent1: TIdLogEvent
    OnReceived = IdLogEvent1Received
    Left = 140
    Top = 435
  end
end
