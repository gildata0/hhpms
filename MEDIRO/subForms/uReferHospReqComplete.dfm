object ReferHospReqComplete_f: TReferHospReqComplete_f
  Left = 0
  Top = 0
  Caption = 'ReferHospReqComplete_f'
  ClientHeight = 615
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 45
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 65
      Height = 17
      Caption = #51652#47308#54924#49569#49436
    end
    object Button1: TButton
      Left = 497
      Top = 6
      Width = 107
      Height = 35
      Caption = #51200#51109
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 702
    Height = 76
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 13676431
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label2: TLabel
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
    object Label3: TLabel
      Left = 245
      Top = 13
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
    object Label4: TLabel
      Left = 245
      Top = 33
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
    object Label5: TLabel
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
    object Label6: TLabel
      Left = 526
      Top = 7
      Width = 36
      Height = 15
      Caption = #50672#48264#54840
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
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
    object Label8: TLabel
      Left = 459
      Top = 9
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
    object Label9: TLabel
      Left = 459
      Top = 29
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
    object Label18: TLabel
      Left = 442
      Top = 52
      Width = 48
      Height = 15
      Caption = #51204#54868#48264#54840
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object edtName: TAdvEdit
      Left = 297
      Top = 6
      Width = 121
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
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
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtBd: TAdvEdit
      Left = 297
      Top = 27
      Width = 121
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
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
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtPadd: TAdvEdit
      Left = 69
      Top = 48
      Width = 349
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
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
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtSeqNo: TAdvEdit
      Left = 568
      Top = 5
      Width = 107
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
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
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtJuminNo: TAdvEdit
      Left = 69
      Top = 27
      Width = 118
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtAge: TAdvEdit
      Left = 493
      Top = 5
      Width = 35
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object edtChart: TAdvEdit
      Left = 69
      Top = 6
      Width = 117
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object edtTelNo: TAdvEdit
      Left = 493
      Top = 49
      Width = 107
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = ''
      Visible = True
      OnChange = edtTelNoChange
      Version = '3.4.9.0'
    end
    object edtGender: TAdvEdit
      Left = 493
      Top = 26
      Width = 35
      Height = 20
      DefaultHandling = True
      EmptyTextStyle = []
      FlatLineColor = 16777088
      FocusColor = 13676431
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
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = 'edtGender'
      Visible = True
      Version = '3.4.9.0'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 702
    Height = 391
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object Label11: TLabel
      Left = 15
      Top = 244
      Width = 48
      Height = 12
      Caption = #51652#45800#50689#49345
      Color = 16772055
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label15: TLabel
      Left = 340
      Top = 150
      Width = 5
      Height = 17
    end
    object Label12: TLabel
      Left = 15
      Top = 6
      Width = 24
      Height = 12
      Caption = #49345#48337
      Color = 16772055
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label13: TLabel
      Left = 15
      Top = 74
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
      Transparent = False
      Layout = tlCenter
    end
    object Image1: TImage
      Left = 16
      Top = 262
      Width = 184
      Height = 123
      Proportional = True
      Stretch = True
    end
    object lstDangName1: TListBox
      Left = 206
      Top = 6
      Width = 398
      Height = 62
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 5263440
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 15
      Top = 92
      Width = 589
      Height = 133
      BorderStyle = bsNone
      Color = 16775152
      Font.Charset = ANSI_CHARSET
      Font.Color = 5263440
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object rgDesease: TRadioGroup
      Left = 15
      Top = 24
      Width = 185
      Height = 44
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #51076#49345#51201#52628#51221
        #52572#51333#54032#45800)
      TabOrder = 2
    end
    object Button2: TButton
      Left = 149
      Top = 231
      Width = 51
      Height = 25
      Caption = '+'#52628#44032
      TabOrder = 3
      OnClick = Button2Click
    end
    object Memo2: TMemo
      Left = 312
      Top = 264
      Width = 169
      Height = 113
      Lines.Strings = (
        'Memo2')
      TabOrder = 4
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 512
    Width = 702
    Height = 103
    Align = alBottom
    Color = 16513524
    TabOrder = 3
    object Label19: TLabel
      Left = 66
      Top = 10
      Width = 39
      Height = 17
      Caption = #48156#54665#51068
    end
    object Label20: TLabel
      Left = 569
      Top = 58
      Width = 52
      Height = 17
      Caption = #51032#49324#49457#47749
      Visible = False
    end
    object Label21: TLabel
      Left = 27
      Top = 39
      Width = 78
      Height = 17
      Caption = #48156#54665#51652#47308#44592#44288
    end
    object Label22: TLabel
      Left = 13
      Top = 79
      Width = 91
      Height = 17
      Caption = #51652#47308#44592#44288#49548#51116#51648
    end
    object Label23: TLabel
      Left = 345
      Top = 60
      Width = 52
      Height = 17
      Caption = #47732#54728#48264#54840
    end
    object Label24: TLabel
      Left = 52
      Top = 60
      Width = 52
      Height = 17
      Caption = #51204#54868#48264#54840
    end
    object Label10: TLabel
      Left = 592
      Top = 27
      Width = 52
      Height = 17
      Alignment = taRightJustify
      Caption = #51652#47308#49440#53469
      Color = 15987441
      ParentColor = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object EllipsLabel1: TLabel
      Left = 345
      Top = 39
      Width = 52
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#51032#49324
      Transparent = True
    end
    object EdtDocName: TComboBox
      Left = 634
      Top = 53
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
      Visible = False
    end
    object lstDoctor: TListBox
      Left = 239
      Top = 6
      Width = 43
      Height = 19
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ItemHeight = 17
      TabOrder = 4
      Visible = False
    end
    object RelDate: TDateTimePicker
      Left = 111
      Top = 6
      Width = 93
      Height = 25
      Date = 43279.000000000000000000
      Time = 0.676693634261027900
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      TabOrder = 5
    end
    object EdtHName: TAdvEdit
      Left = 111
      Top = 40
      Width = 176
      Height = 14
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
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWindow
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
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtAdd: TAdvEdit
      Left = 110
      Top = 80
      Width = 453
      Height = 14
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
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWindow
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
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object EdtLNo: TAdvEdit
      Left = 404
      Top = 60
      Width = 159
      Height = 14
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
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '3.4.9.0'
    end
    object edthphone: TAdvEdit
      Left = 111
      Top = 60
      Width = 176
      Height = 14
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
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWindow
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = ''
      Visible = True
      OnChange = edtTelNoChange
      Version = '3.4.9.0'
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 659
      Top = 22
      Width = 129
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = False
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
      EditHeight = 19
      EmptyText = #51652#47308#49892
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = False
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
      TabOrder = 7
    end
    object cbDoc: TColumnComboBox
      AlignWithMargins = True
      Left = 403
      Top = 29
      Width = 160
      Height = 25
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
      EditHeight = 19
      EmptyText = #45812#45817#51032
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = False
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
      TabOrder = 8
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 296
    Top = 145
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 361
  end
end
