object eecp_f: Teecp_f
  Left = 0
  Top = 0
  Caption = 'eecp_f'
  ClientHeight = 873
  ClientWidth = 1385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1385
    Height = 50
    Align = alTop
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
    Caption.Font.Color = clWindowText
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
    FullHeight = 50
    object lblPatInfo: TLabel
      Left = 28
      Top = 14
      Width = 98
      Height = 30
      Caption = 'lblPatInfo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button10: TButton
      Left = 344
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Load All Data'
      TabOrder = 0
      Visible = False
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 440
      Top = 16
      Width = 97
      Height = 25
      Caption = 'update SeqNo'
      TabOrder = 1
      Visible = False
      OnClick = Button11Click
    end
    object edtSeqNo: TAdvEdit
      Left = 576
      Top = 8
      Width = 121
      Height = 21
      DefaultHandling = True
      EditType = etNumeric
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
      Color = clWindow
      TabOrder = 2
      Text = '0'
      Visible = False
      Version = '3.4.9.0'
    end
  end
  object AdvPanel2: TAdvPanel
    Left = 241
    Top = 50
    Width = 1144
    Height = 823
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object Label25: TLabel
      Left = 21
      Top = 6
      Width = 32
      Height = 21
      Caption = #51068#51088
    end
    object Panel1: TPanel
      Left = 13
      Top = 41
      Width = 461
      Height = 432
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 51
        Width = 32
        Height = 21
        Caption = #52404#51473
      end
      object Label2: TLabel
        Left = 16
        Top = 86
        Width = 18
        Height = 21
        Caption = 'BP'
      end
      object Label3: TLabel
        Left = 16
        Top = 121
        Width = 22
        Height = 21
        Caption = 'HR'
      end
      object Label4: TLabel
        Left = 16
        Top = 156
        Width = 24
        Height = 21
        Caption = 'B/S'
      end
      object Label5: TLabel
        Left = 16
        Top = 191
        Width = 48
        Height = 21
        Caption = #54840#55137#49688
      end
      object Label6: TLabel
        Left = 16
        Top = 226
        Width = 39
        Height = 21
        Caption = 'SPO2'
      end
      object Label8: TLabel
        Left = 16
        Top = 330
        Width = 32
        Height = 21
        Caption = #48512#51333
      end
      object Label9: TLabel
        Left = 16
        Top = 401
        Width = 48
        Height = 21
        Caption = #54801#49900#51613
      end
      object Label15: TLabel
        Left = 16
        Top = 261
        Width = 80
        Height = 21
        Caption = #50640#45320#51648#48320#54868
      end
      object Label16: TLabel
        Left = 16
        Top = 296
        Width = 64
        Height = 21
        Caption = #50557#51228#48320#54868
      end
      object Label17: TLabel
        Left = 16
        Top = 366
        Width = 64
        Height = 21
        Caption = #54588#48512#49345#53468
      end
      object Label18: TLabel
        Left = 168
        Top = 21
        Width = 16
        Height = 21
        Caption = #51204
      end
      object Label19: TLabel
        Left = 296
        Top = 21
        Width = 16
        Height = 21
        Caption = #54980
      end
      object Label7: TLabel
        Left = 382
        Top = 51
        Width = 19
        Height = 21
        Caption = 'Kg'
      end
      object Label20: TLabel
        Left = 382
        Top = 86
        Width = 50
        Height = 21
        Caption = 'mmHg'
      end
      object Label21: TLabel
        Left = 382
        Top = 118
        Width = 38
        Height = 21
        Caption = #54924'/'#48516
      end
      object Label22: TLabel
        Left = 382
        Top = 153
        Width = 30
        Height = 21
        Caption = 'm/g'
      end
      object Label23: TLabel
        Left = 382
        Top = 188
        Width = 38
        Height = 21
        Caption = #54924'/'#48516
      end
      object Label24: TLabel
        Left = 382
        Top = 226
        Width = 13
        Height = 21
        Caption = '%'
      end
      object Label30: TLabel
        Left = 184
        Top = 87
        Width = 6
        Height = 21
        Caption = '/'
      end
      object Label31: TLabel
        Left = 313
        Top = 87
        Width = 6
        Height = 21
        Caption = '/'
      end
      object cbBujong: TComboBox
        Left = 127
        Top = 327
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 16
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbBujong2: TComboBox
        Left = 254
        Top = 327
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 21
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbEnergy2: TComboBox
        Left = 254
        Top = 258
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 19
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbEnergy: TComboBox
        Left = 127
        Top = 258
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 14
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbPharm2: TComboBox
        Left = 254
        Top = 292
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 20
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbPharm: TComboBox
        Left = 127
        Top = 292
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 15
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbSkin2: TComboBox
        Left = 254
        Top = 362
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 22
        Text = #51221#49345
        Items.Strings = (
          #51221#49345
          #48708#51221#49345)
      end
      object cbSkin: TComboBox
        Left = 127
        Top = 362
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 17
        Text = #51221#49345
        Items.Strings = (
          #51221#49345
          #48708#51221#49345)
      end
      object cbHeart2: TComboBox
        Left = 254
        Top = 397
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 23
        Text = #50500#45768#50724
        OnChange = cbHeartChange
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbHeart: TComboBox
        Left = 127
        Top = 397
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 18
        Text = #50500#45768#50724
        OnChange = cbHeartChange
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object edtWeight: TAdvEdit
        Left = 127
        Top = 48
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etFloat
        EmptyTextStyle = []
        Precision = 1
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
        Color = clWindow
        TabOrder = 0
        Text = '0.0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBP0: TAdvEdit
        Left = 193
        Top = 83
        Width = 55
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 2
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtHr: TAdvEdit
        Left = 127
        Top = 118
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 3
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBS: TAdvEdit
        Left = 127
        Top = 153
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 4
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBR: TAdvEdit
        Left = 127
        Top = 188
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 5
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtSPO2: TAdvEdit
        Left = 127
        Top = 223
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 6
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtWeight2: TAdvEdit
        Left = 254
        Top = 48
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etFloat
        EmptyTextStyle = []
        Precision = 1
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
        Color = clWindow
        TabOrder = 7
        Text = '0.0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBP2: TAdvEdit
        Left = 254
        Top = 83
        Width = 55
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 8
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtHr2: TAdvEdit
        Left = 254
        Top = 118
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 10
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBS2: TAdvEdit
        Left = 254
        Top = 153
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 11
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBR2: TAdvEdit
        Left = 254
        Top = 188
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 12
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtSPO22: TAdvEdit
        Left = 254
        Top = 223
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 13
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBP1: TAdvEdit
        Left = 127
        Top = 83
        Width = 55
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 1
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
      object edtBP3: TAdvEdit
        Left = 320
        Top = 83
        Width = 55
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 9
        Text = '0'
        Visible = True
        OnKeyPress = edtWeightKeyPress
        Version = '3.4.9.0'
      end
    end
    object dtDate3: TDateTimePicker
      Left = 267
      Top = 6
      Width = 186
      Height = 29
      Date = 43397.000000000000000000
      Time = 0.317117280101229000
      TabOrder = 2
      Visible = False
      OnCloseUp = dtDate3CloseUp
      OnChange = dtDate3Change
    end
    object Panel3: TPanel
      Left = 480
      Top = 128
      Width = 577
      Height = 49
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 3
      object Button1: TButton
        Left = 8
        Top = 8
        Width = 41
        Height = 33
        Hint = '0_clRed_20'
        ImageIndex = 8
        Images = ImageList1
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 55
        Top = 8
        Width = 41
        Height = 33
        Hint = '0_clblack_20'
        ImageIndex = 5
        Images = ImageList1
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 102
        Top = 8
        Width = 41
        Height = 33
        Hint = '0_clBlue_20'
        ImageIndex = 10
        Images = ImageList1
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button4: TButton
        Left = 337
        Top = 8
        Width = 41
        Height = 33
        ImageIndex = 1
        Images = ImageList1
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 149
        Top = 8
        Width = 41
        Height = 33
        Hint = '2_clLime_100'
        ImageIndex = 13
        Images = ImageList1
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button6: TButton
        Left = 196
        Top = 8
        Width = 41
        Height = 33
        Hint = '2_clpurple_100'
        ImageIndex = 14
        Images = ImageList1
        TabOrder = 5
        OnClick = Button1Click
      end
      object Button7: TButton
        Left = 243
        Top = 8
        Width = 41
        Height = 33
        Hint = '2_claqua_100'
        ImageIndex = 15
        Images = ImageList1
        TabOrder = 6
        OnClick = Button1Click
      end
      object Button8: TButton
        Left = 290
        Top = 8
        Width = 41
        Height = 33
        Hint = '2_clYellow_100'
        ImageIndex = 16
        Images = ImageList1
        TabOrder = 7
        OnClick = Button1Click
      end
      object Button9: TButton
        Left = 408
        Top = 8
        Width = 89
        Height = 33
        Caption = 'picture'
        TabOrder = 8
      end
    end
    object pnlImage: TPanel
      Left = 480
      Top = 183
      Width = 577
      Height = 560
      Caption = 'pnlImage'
      ShowCaption = False
      TabOrder = 4
      object Image1: TImage
        Left = 31
        Top = 93
        Width = 596
        Height = 552
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000001F20000
          01BD0806000000EE9FF469000000097048597300000EC400000EC401952B0E1B
          0000077A69545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F
          787061636B657420626567696E3D22EFBBBF222069643D2257354D304D704365
          6869487A7265537A4E54637A6B633964223F3E203C783A786D706D6574612078
          6D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D
          2241646F626520584D5020436F726520352E362D633134322037392E31363039
          32342C20323031372F30372F31332D30313A30363A3339202020202020202022
          3E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F777777
          2E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E73
          23223E203C7264663A4465736372697074696F6E207264663A61626F75743D22
          2220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D
          2F7861702F312E302F2220786D6C6E733A64633D22687474703A2F2F7075726C
          2E6F72672F64632F656C656D656E74732F312E312F2220786D6C6E733A70686F
          746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F74
          6F73686F702F312E302F2220786D6C6E733A786D704D4D3D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A
          73744576743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
          2E302F73547970652F5265736F757263654576656E74232220786D6C6E733A73
          745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F73547970652F5265736F75726365526566232220786D703A43726561746F
          72546F6F6C3D2241646F62652050686F746F73686F7020434320323031382028
          57696E646F7773292220786D703A437265617465446174653D22323031382D31
          302D32355431313A34353A31392B30393A30302220786D703A4D6F6469667944
          6174653D22323031382D31302D32355431313A34373A33302B30393A30302220
          786D703A4D65746164617461446174653D22323031382D31302D32355431313A
          34373A33302B30393A3030222064633A666F726D61743D22696D6167652F706E
          67222070686F746F73686F703A436F6C6F724D6F64653D2233222070686F746F
          73686F703A49434350726F66696C653D22735247422049454336313936362D32
          2E312220786D704D4D3A496E7374616E636549443D22786D702E6969643A6262
          3237396639362D363461612D643634662D623731352D36376364343230653839
          30362220786D704D4D3A446F63756D656E7449443D2261646F62653A646F6369
          643A70686F746F73686F703A62613565323937622D346534372D343334642D38
          3966392D3566353333333233313164302220786D704D4D3A4F726967696E616C
          446F63756D656E7449443D22786D702E6469643A64313835346138382D363062
          652D303534312D626165392D393130333464633364656133223E203C786D704D
          4D3A486973746F72793E203C7264663A5365713E203C7264663A6C6920737445
          76743A616374696F6E3D2263726561746564222073744576743A696E7374616E
          636549443D22786D702E6969643A64313835346138382D363062652D30353431
          2D626165392D393130333464633364656133222073744576743A7768656E3D22
          323031382D31302D32355431313A34353A31392B30393A303022207374457674
          3A736F6674776172654167656E743D2241646F62652050686F746F73686F7020
          43432032303138202857696E646F777329222F3E203C7264663A6C6920737445
          76743A616374696F6E3D227361766564222073744576743A696E7374616E6365
          49443D22786D702E6969643A62623237396639362D363461612D643634662D62
          3731352D363763643432306538393036222073744576743A7768656E3D223230
          31382D31302D32355431313A34373A33302B30393A3030222073744576743A73
          6F6674776172654167656E743D2241646F62652050686F746F73686F70204343
          2032303138202857696E646F777329222073744576743A6368616E6765643D22
          2F222F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F72793E
          203C786D704D4D3A496E6772656469656E74733E203C7264663A4261673E203C
          7264663A6C692073745265663A6C696E6B466F726D3D225265666572656E6365
          53747265616D222073745265663A66696C65506174683D22636C6F75642D6173
          7365743A2F2F63632D6170692D73746F726167652E61646F62652E696F2F6173
          736574732F61646F62652D6C69627261726965732F39343166643538392D3533
          65612D343734392D613438392D3935393962353964373132363B6E6F64653D37
          653533623931642D393065302D343434382D616437352D396637663561623866
          653934222073745265663A446F63756D656E7449443D22757569643A66663663
          333839332D663065372D343437612D613238642D306330376432373736356132
          222F3E203C2F7264663A4261673E203C2F786D704D4D3A496E6772656469656E
          74733E203C2F7264663A4465736372697074696F6E3E203C2F7264663A524446
          3E203C2F783A786D706D6574613E203C3F787061636B657420656E643D227222
          3F3ED89D02DD0000B5E54944415478DAEC9D07786455D9C7CFCCA44F7ADF4DEF
          C9F6A549D120088AA23415912245F90808EA6745407617142CA8A89420524410
          45AA888848F9425760FB6E7ADF4DEF6D924CF9FEEFE466BD6493DDCCCC397366
          EE9CDFF30CE79264E7BEE7DC7BCE7BCA5B4C4C11B0FCDFDD9B2351E4E29380CF
          143EBD275EB9B94FFB5D128A4B4D26D3A751AE77B95CC9F473FCBF8DFE0EFFFF
          1ECAD7F1791CFFA65D765D140A85422106936C01140703251D8BE2567CAEC027
          7CC1AF67A0AC77A25C05651D6D369998D3E53AE83BF037CC35F773FACFE3F85C
          0D85DE2BBB6E0A85C23F601CA1B1E3447C8EC767253E767CDAE857F8BC8BF1C0
          A9FBDB081439F8C4E193880F2D2286F1A9C7DF0DC9AE8BE2D028451E60A04355
          42093F06259CC1F37BF19DFDF8CEA3D029DB64D751A150880363088DEB57A2CF
          DFACDBA9C394DEC5E6A7FCF8FF1EFCEE61FC782DFEEF48EDEF16D3072EFCED7B
          F8FD268C1D7F975D37C5E228451E20A0F395A2D884CFF922BE1F9D117DD8F554
          65D5E6CFCAAEAB42A11003C69118F4F527A1783F21E0EB7F0565FE0DD975541C
          8C52E41241A7A355F70FD0F13E472B707A182E5FBFF4D0D0D7FF139F7FE0B315
          9FEDE898C3B2DB41A150F806C6920A14B49B7719C6926304DEEAAB1833EE925D
          5FC507518A5C12E878A7D2CC199756743C69CF0132B4E1FED7A173FE51769B28
          140ACFC0387204FAF06DE8C327D1FF6B3BE822A173F5FBF17991CD9DB77760EC
          D82FBB1D421DA5C82580CE77068AA7D001CD2EC1BDCE0336A3436E912D8442A1
          383CDA39F877F0F931933C8E6BE7ED742CF85B8C210133A085124A91FB1974C0
          63D99C5B9845B62C8BF06974C4E7640BA15028960663088D1DB42AFE926C5916
          F03B8C1F97CB162214518ADC8FA0036663F6BA0BB3D704D9B22C06641B866CB9
          E88C63B2655128148B837184CEA8AF942DC7127C03E3C7AF640B116A2845EE27
          28B80B14E53B5094EB65CB72186E4547BC4EB6100A85E260308E506C896AD972
          1C02F2552FC318D22C5B90504229723F810EF8231401AF204D2636EB72B13C74
          C42ED9B228148AFF8231A408C55E767090A880020B967F55566D3A55B61CA184
          52E47E001D700D8A1D2C78DAFB0E28F26B640BA15028FE4B4DF5967F08F20F17
          C18518431E912D44A8102C8A25A8A9A9DEFC77AC723F295B0E0F2017936274C4
          16D98228140AF762E06814FF962DC7723199981D63DE4918435E972D4B28A014
          B960D00129C671270BB2B636994C6F60F6FF11E54EA250C807E3C81F30805C18
          4C9D1163C838C6902295E3413C41A55C821174C0AFA0B857B61C5EA2B6D8150A
          C96886B223508A91B265F1823B31865C2D5B08A3A314B960D009EF4427BC4A64
          E097308B85858787B188B07016111EEEBEA69F858559DC253D66B3D9C4A66766
          D8D8C4241B1A1D630E8763B95FFF0974C47FCA6E47852254C11872328A9764CB
          E10D260C3B18FAD2944BAB589422170C3AE1D350E4672E5791535A521394AEC5
          6C712B5F8B654E191FF88485CD296B77198632DCFD779EE0743AD9FEDE3ED633
          3078D8BF85EC3B2AAB3605BACB9C42615830865CCBE6D21A072BE74291FF45B6
          1046462972C1A0133E0765F8A943297252D0A505792C3AD2BF3B67FBA0CCBBFB
          FA97F3A76BD11177F955388542E10663C8FD18A82F0DA6F3F105DC8BF1E37F64
          0B61649422170C3AE1DF509C7EA8BFC9CECC601929C97E978D26177B1A9B996D
          66E6707F4AB9886FF2BB800A8582BC5E5E42573D59B61CDE82854C5365D5A662
          D9721819A5C805435BEB28CE3CD4DFAC29296291111152E41B1A1965CD9DFB96
          FCBDC9E47E45DE4047FCB01401158A10A7A67A0B85755E2D5B0E1F20839C482C
          06966D98A3F00CA5C8050345FE0494E1394B6DADD3F9F6C68A7269F29158BB1A
          1AD9CCECEC927F035D3E83BF8B511D51A1F03F50E45D183F3265CBE12339183F
          3A650B61549422170C14F9835084172F75444E2B715A91CB848CDE3ABB7B0EF7
          67E5E888755205552842102872F2C7B6CA96C347D663FCD8215B08A3A214B960
          A0C8EF41B1A4A18735269A9517E44B95D1E170B21DF50D6E6BF64370063AE2B3
          5205552842909AEACDE4C225E7EC8D1F2762FCA8912D8451518A5C3050E4B7A1
          F8D652BF4F8C8B6345B9D9B2C564ADFBBAD8C0F0F0A1FEE41A74C43B64CBA950
          841A184382D860FD006761FC7846B61046452972C1A013DE8862CB52BF4F4B4E
          62B92BE41F7F8D4F4EB2BA96B6457F6732995CE04674C41FCA9653A1082528AA
          1B0A9B6C3938702AC68F7FC916C2A828452E1874C46FA0F8E552BFCFCE486719
          A929B2C57443466FD333071BBD99A1C89D2ED72FD011BF2D5B46852294C0F811
          85624AB61C1C381EE3C75BB285302A4A910B061DF102140F2FF5FBA29C6C9618
          1F275B4C3714EDAD6B910031DA8AFC7E74C4AFC89651A10835308690F14AB08F
          D5A5183F1A640B615482FDE50878D0093F8662C92DA55545052C3A2A4AB6986E
          A66CD36C4F53F3413F275F7228F207D1112F952DA342116A18C46A3D16E3C784
          6C218C8A52E48281222F4351BBD4EF37AE2A77C7570F14B6D7D533BBFD83EEE2
          DA8AFCD7E888DF902D9F42116A4091534AE1E365CBE10333183B8231735BD010
          381AC4A0409147A3985CEC779111E16C4D4960452EAC6F6D7367485B841BD019
          7F245B3E8522D4C018721E8A4765CBE12D5808ECABACDA24DF35C7C02845EE07
          30A31EC08CFAA060EA81E27AA6A77D7F37EB1B1A5AEC57E740913F255B3E8522
          D480220F8732A4EDF5A0F325A7DD461773FDBDB26AF3E9BE7F9B62299422F703
          35D59B9F3299CC673A9DCE0FB47779613EB34647CB16EF038C8C8DB3C6F68E85
          3F263FD60C28F23ED9F22914A1081603CD50E405B2E5F092CF63EC785CB61046
          4629723F8019F5E7513CA6FFD98AB454B6323D4DB6688BD23B30C8BAFA0798DD
          6E9F4F9A8219F52635A35628240145DE07459E2A5B0E2F208BFB6828F2C3A658
          54788F52E47E008A7C258A7DF156AB5B31868585B1BC952B5800D9B81D84D3E5
          62752DAD6CCA661BC6E511E8882DB265522842118C1F94C2F425D972788A7B78
          33997AB108C8902D8BD1096055621CD0114B50D417E7E6B084B858D9E22C1BCD
          F0ED5928F13364CBA250842A588DBF1B111EBE717A66C62C5B164F888A8CA000
          537BA1C857C996C5E82845EE07A0C88F45F1162547A12429C1C2CEFA46C7CCEC
          ECBD50E457CA9645A108556AAA374FAD484B8B9A9A9E664323A3B2C5392CF1B1
          5677D8E98EAE1E363A31F10A14F9C9B265323A4A91FB0128F24FA1786E754911
          8B8A080EC353CA9FFEFE1EB7FBFBB7A1C87F2E5B1E85225421AF97CCD49464B2
          AB696AEF6423E3E3B2455A9298E8287736473A42DC5ED7E0B0DBEDBFC3F85125
          5B2EA3A314B91F38A0C88B8BDCDB4DC1802ECADB67D011FF265B1E8522548122
          7F35CE1A7362495E2E73389D6C2FFAE56239110281794F1C8A45414773E0D318
          3F9E932D97D1518ADC0F4091AF46B1AB382F8725C406C719F9E0C8286BE9DC47
          97B9E8881DBE7E9F42A1F00E8C1F3760857BD3FAB25293C56266C36363EE9579
          A0111B13CDCA0AF2DDD7ADFBF6D31842F1335660FC08CC598781508ADC0FA023
          C6A098C85991C9D29393648BB32CF6F5F4B29E81C1F1CAAA4D8191D145A10851
          307E94A3D84BE7CE69DAF8B1B3BE91CDCC06967E9C976FD66E27F99C50E2B741
          897F4FB65CA18052E47EA2A67A4B576A52626620E41E5F0E8D6D1D64A8F22614
          F909B2655128421D8C1FAF4784871DB7BAB8C84CE7CF34D1EEEE1F902DD60758
          5B5ACC22C2C3E7B32852C2867C28F2C0DB3A30204A91FB899AEACDCFC644459F
          5E5E981F146DBEA3AEC1819975353AE2D5B2655128429D793B1B8A3F8105011B
          1D1F670D6D8173E2151911C1D69414B957E3BB1A9A9CE021952DD17F04855231
          02E8883799CDA6EB37569407BC2FA8C3E164DB6AEBE8F24A74C66AD9F228140A
          F7AAFC15B3D9FC91D5C58516B3C93CDF47038294C40477902B4C2E5CE3931353
          2E973BFFF83ED972850A4A91FB0928F2B3513C894EC8A222033BA3DFF8E424AB
          6B715B9C7E189DF10DD9F228140AF71892673299B6474544C46565A69B3BBABA
          03C67A3D2B239DA24092811BE565F81CC68D2765CB144A2845EE27D00929B07A
          AFDE602550E91B1C62ED182440223AE4886C79140AC51C18478E80327F9C12A8
          D07974A018BC91CBD9C4D4145D5E8531E36ED9F2841A4A91FB919AEA2DBBE2AC
          31ABC91F349069DBDFC5068647540E618522008132A7E3B93BA0D0ABA0D00365
          0CA795F897A1C41F902D482812282F4148800EB8C964629BD6969698C2C3C264
          8BB3247B9A5A9C5336DB5FD129CF962D8B42A138188C25A52802E6901C938A97
          31F1FF986C394215A5C8FD083A1F2DC59B9213E2C3C8A73CCC62912DD24190D5
          E98EBA069A5D7F178AFC36D9F228148AC521E33728D0139D4E67208CE3B760BC
          B85EB610A14A20BC00210594F955287E830E682AC9CB35C55963648B7480D189
          09D6BEBFCB39333B4B56A7ABD031DB65CBA45028160763C939289E902D87C659
          182F9E912D44A8A214B904D001F3A1C7DF498A8F4B2FC8CE922D8E9BDE8141D6
          D1DD435B64752E97EB3C74CA6DB2655228144B4367E5E8AF4DB8CCA7244712A1
          9B2729C3587928452E0974C29BD109AF5F575A6C0A0B80F3F2FAD676D7F8E4E4
          BB18108E4787B4CB9647A1501C1E8C2317A37850A60C18C7B655566DDA28BB2D
          4219A5C825810E9883A22D2B23DD94999A2255162766F3DBF6D6516CE49BA1C4
          37CB6E1B8542B13CB455792D16C5251217E55FC3B8F11BD96D11CA28452E919A
          EACD7F0DB3849DBEB6B4D81D3F5916A3E313ACA1CD7D1C7E223A648DEC765128
          14CB07CAFCC3285E93747B273E991837FA64B74328A314B944E63BA0EC203114
          21AA6F6878142BF264744887EC765128149E81B1E41614DF9770EB7B306654C9
          AE7FA8A314B9646AAAB7BC161666397E6D899C55396DC7EDA86F70DAEDF647D0
          21BF24BB3D140A85E740915BE8AC1A93F135FEBA2786AB698C1F452AA6BA7C94
          22970C3AE0B128DEA258C532CECA47C6C65963BB3B8BD2C7D0215F96DD1E0A85
          C23B34D7D63BFD78CB9B30666C925D6F8552E401013AE0EFB11CBFB0BCA8C01C
          EDE7842A0DADEDAEB1C9C94ECCE4F3D029A5FAB028140AEFC13872348A7F1FEA
          6FA222225878F87FBD64EC0EA7BB74381CEE60501EBAB11563CC68925D6F8552
          E401013A601265358A080FCF5A05650EFC72DF81E111D6BA6F3F5D7E091DF20F
          B2DB41A150780FC5A740D1B2F0E7140E3A3D25D99D6AF470A1A1EDA4D067ED6C
          6ADAC6C627A7DC3B768B2566C178355959B5C92ABBCE8A3994220F10D009C90F
          F3DD95E969E61569A9C2EF3736314996EA987EBB9EC324FC0CB51A5728829B85
          8ADC82054126C692F4E46466367B3FD4D358D1D5D78F72E2C0CFA0C85552A500
          4229F20082DCD1C2C3C2DDEE6822EF4333EC3D8DCD4EA7CBB5CBE5729D00253E
          2EBBEE0A85C237A0C8D7A37047644C8C8B63392B3218A53AE505EDE0B5777531
          0C1CEE089050E4E5B2EBAC984329F200021DF1CB287EB7AEB4E403E758BCA1ED
          F4C1915172372B8712EF925D6F8542E13B183F4E46F152764606CB484D16720F
          CA395ED7D24697AD50E405B2EBAC984329F200021DF14814EF96E6E73191C954
          B6EEAD73829F43897F57769D150A051F307E903FF7DD1B2ACADCDBEAA2A86F6D
          A3F3F3412872B921291507508A3C804047A469F4407ED64AB7618A28DEDBBD97
          8AFF8522BF5D769D150A051F307EDC111E1656B5AEAC44687EE4EEFE01B6AFA7
          97CCDDA33086CCFAFC850A9F518A3CC0406774E56466B8AD4C45B1A3AEC1316B
          B7DF8D4E788DECFA2A140A3ED4546FD995101BBBBA2857AC0DDAC8F8386B6C73
          C79EA8C418222B34AC428752E401863F147973C73E363C36D65259B5A950767D
          150A85EF60DC5889629F3FC23D93B1DBF6BA7A3A9EFB1D14F915B2EBAE508A3C
          E0702B7274C674819D51E73F5E818E582BBBCE0A85C237685B1DC555EBCA4A4C
          87F315E7C1BE9E5EDA62A7EDF58F600C795376FD431DA5C8030874C64C145D05
          D9592C39215ED87D288AD3F6BA0617F8213AE18DB2EBAD5028BC03630669EDDB
          F0F93AC59F58999EE697FB6235CE6A9B5B9DB699191BC691F3308E3C2BBB2D42
          19A5C8030874CA1350BC5E5690C76263C459AD13DAF67A7B65D5A63CD9F55628
          149E83F1629DC9647A108A742329707F0492D2E37038595347876B6C6292F4C8
          5DF85C07853E22BB5D4211A5C8030874CCAFA1F8D586F25266B108353C2525CE
          9ADA3BE9F23874BEB765D75DA1502C0F8C13B4ECBE1E9FABC3C3C34CF92B5798
          E36363A5C842A1D9BBFBFB29F21B6DB30F61524172DD8731C52EBB9D4209A5C8
          030474CE74CCAEFF6D8D8ECEC58A5CF873A1E408DB6BEB9D0EA7F37E74BACB65
          D75FA1501C1A4D817FCD6462DFC6D01D999E9C645A8195B8489FF1E5323D33C3
          3ABA7BDCB1D9318EB5637CF9317EFC20C69629D9B285024A910700E8A01FC3CB
          FF47B3D99C529A9F6B89898AF2CB7DF7F5F6B1EEBE7EF2033D021D6E97EC7650
          281407A3E561F83A3EE7E313969298685A999ECA35FC2A2FC62727D9FEDE7ED7
          D8C404863413ADD07F811FDF85F16550B66C4646297289A083D2A116CD5C2F83
          F27615E66499232322FC767FACC6DD31D767EDF66674B863D1D90664B78942A1
          3830367C1ECAF052F4CDA32D16B3333529C94CDE2C81A8C01732396573078E19
          1A1DC50A9DCDB85CEC2FF8F13DCAEF5C0C4A914B009D94B4F555E8A437A1B4AE
          484B3567A6A6D09694DF65A10E57D7DAEA4447DB8A01E3E36AE6AC50C801E302
          B9AA7C06E3C045E88BA7E0DA628D8E76A526259AC88BC55FE98D79425BEE7D83
          43AC7F78C4E97038CCA81BB9CBDC8D5F3D8AB1A65BB67C464129723FA2B98A5C
          8C97F966BCCC2B12E262594E66268B8C903BC3A6F4840D6D1D64AC429DEC13E8
          606DB2DB4AA10805C8F21CC52731267C1A7DEF385C5BA222239D2909F1E6A484
          04E963032FC8266768748CF50F0DCD5BB9BB50E757F0F38771FDA4B276F70DA5
          C8FD003AAB15C5A57871BF8B1737273626C6959D996EC26C5BB6680798989C62
          8DED1D64FC4659D13E8F8EF52FD9322914460363410E8A13F1F928C683CFA0AF
          A59B4CCC658D8E6198D89B68721F1D19295B4CA1501AE5C191510A4CE5B44D4F
          D336831D6DF00274FDD3B8FE2BC69E5ED932061B4A910B440BF072353AEC35E8
          B0F17156AB6B455A8A09A56CD116853A58537BA773D266A3F7E2E7F86C42A79A
          942D9742118CA0FF93462643B50FD107E3C089180728942A0B0F0B7340695B12
          6263595CAC35202CCF6530353DCD86A0D48747C79C53734A9D56EAFF413B5180
          9997F0F98F72653B3C4A9173069D975EC68F63867905669874DE654E4A883765
          A6A4B0E8A8C09F69D316D8FEDE3ED63330E0C2EBD185FFA7C86F8FA033D964CB
          A6500432E8FB349E5250A753D0EF4F41DF2105EE8E971A1519E18C8D893153A0
          274A511C0C066BFE667A66968D8C8D518C0BD7F8E414459E34631CC542C2F43A
          AEDFC79FECC487523736623C1A932D6F20A1143927D0892942DA25E8C057D0F9
          373AAA333529D19C9A98C8C2C3C5C73EE68D0D33E5F6AE9E79379211D4E97EFC
          F8317CDE412772C9964FA10814B4EDF22FA39F7C05FD240BA52B36261A0ADB6A
          A232263A3A6457DCDE42D6B71393936C6C62925CDA5C9353363AF63B10250B6D
          BC0F6D4DC77FB46A7F0A63D2B86C9965A214B90F6819873EAB59991E4D1D3831
          2ECE0405CEE2630373FBDC53266D36D63B30446E2494ED88AC4E7B50D7E7F0AB
          17F079051DA84FB68C0A850CD0FF57A0B80E9F2B69E72D312ED69482893B6D95
          9B2578A0181D3AFAB3CDCCB0E9E919363135454ADE819F59D0D4D3D0FB8FE24F
          7E84F1A851B69C32506F9B8768E7DEE4DF79BEB675668AB3C6B892E2E34DF8B0
          B030B1A15565415BEEA3E3136ECBD3D1F171CA67EEAE28DAA115BF7B15975BF1
          D981CF4EE58FAE3032DA16FA57A0406E470F884A4F4936D3D19951FB7E204367
          EC94CDB17F708856ECF4A3DFE0733DC6A009D9B2F913A5C80F033A2DF54E720B
          390D4AEB4C28AD35F4F3D89868179D7D93F2F647DAC040833AD0386D7B61663C
          AECD8CE77F8776C22ADDB50DBA7F0FFE975CD928A83B59A2F6E3432BF87E7434
          A7EC3A28149E82F12001EFF79FC94D33312E8EE5AECC0CC9FE1F685046470A40
          830F19CB75E2F99C8131669B6CB9FC8552E48BA0ADBA4FC3E75378293E899722
          D66C3639E3ADB1E6F8382BA30EAC3AEF07A14C4893B62936659B66B6E919669B
          71970756EE0BB06B812128590B9D713DAF02D128021D8C0BD9786F5FC46569DE
          CA15E694C404D9222916404781CD1DFB9C33B333762C242EC2B8F2986C99FC81
          52E41AE8A447B2B9A84AB4EA5ECF282B41448423312ED6121F17CBE26262A444
          5E0B76684B1ECA9CD9ED0E6677D0C7EEB64E2563BAB1C949C7ECAC5BD1931FE9
          73F8D35FA3E3BD2C5B66856221181F3228A991C56CCE2ACECBB104520C08C507
          A1D57973E73E171D0582FFC198F23BD9328926A43513754E14176996E6C51498
          21368656DC149821CE3051950219325E191C1E71078798999D2563BAF7F02CBE
          89CE57235B368582A0804E782FDF319B4D156505F966A3076C3102B480803227
          FF74FADFCB309E3C205B269184A42247C72C4671033E17E263A1486B14CF98B6
          CC2D16E5262283F9108EFB7BFB9CD3333364F4FB187EF45574C07ED9B229421B
          8C17F751F292D2FC3CB73B992238A05CE9CD1D9D6EBF74FCEFD9184B9E912D93
          28424A91A34326A3F8299B0B976A4A4B4E325136217F661C531C1A52E8BD8343
          6C7F4FAF13BD8FD2205E880EF80FD9722942138C1967A1782A3B338365A424CB
          1647E121349E34B4B5BBC627276DB85C8DB1A445B64C220819458E0EF905E86E
          CABA93989E926CA24EA90CD60217CA9AD4D2B9DF45FEA260133E3F54816814FE
          0463463419655AA3A3569615E487CC586934C83667774393C3E1743E5B59B5E9
          6CD9F288C0F02FA79671EC97F85C4D5BE8792B334D51EA8C2B28A0D97447778F
          3B0D2278049F8BA1CC1DB2E5528406183BBE8BE2271545052C262A4AB6380A1F
          E81D18A4B1841602A5460C1A6368458E8E188319F5DFA0104E5A9196CA56A6A7
          C91649E105B4D5DED1E54E5D7C3B3AE1FFCA9647617C28E109F92327C6C5A516
          E664C91647E123142C667B6DBD13BA80A2BFDD285B1EDE185691D34A1C1DF179
          5C7EAC303BCB94181F275B24850F74F5F5BB93B98053558A558568307E9021EC
          1F2A0AB11A8F56AB7123D0D8DE41D129DFAFACDA74A46C59786364457E0B8A6B
          8B72B3DDD6E88AE0862C506B9B5B28D5210592A950E7E50A91D4546F79252A32
          A2725551A17263310814F96D5F4F2F45944C305A9215432A7228F14A14AFAE48
          4B35A9ED74E330323ECE1ADB3AE8F23474C41764CBA33026183F5251F4666766
          9894A5BA7198989C62B52DAD74F931A3059E329C22A77CE02693695B7464E4EA
          F2C2029584C860ECA86B70CEDAED7F4247BC40B62C0A638231E422140FAD2E29
          6251CA35D5305018E96DB575747935C68F3B65CBC313C3A93974C233513C5D9A
          9F4BF980658BA3E00C19BDF50D0D8FBA5CAE44B5BDAE1001C690FB23C2C3BFB4
          B6B458A5333318DB6BEB1D7687E34E8C1D5F972D0B4F0CA7C86BAAB7BC181519
          71B23ADB32268323A3ACA5731F5D16A13336CB9647613C30863427C5C7151464
          2B6B75A351D7D2CAC627A79EC5D871866C59786228458E9974228AFEECCC0C8B
          3ADB322694596D7763135D7E169DF149D9F2288C05B99DA19852E7E3C6A4B963
          1F856C359CE5BAD114F939289E585D5CC854D0176342D6EB5BF7D6BAC0F550E4
          B7CA9647612C3086AC41B1B328379B296F17E3D1DED5CDFA87863BA1C87364CB
          C213A329F25BCC66F3F7365694A96D7503B3A3AE81F29CDF0545FE35D9B2288C
          05C6100AE1F9E4EAE2222C0694A19BD1A05814DDFD031350E4B1B265E189D114
          F9B3D6E8E8D3CB0B555C642353DBDC4A31D8FF0245FE05D9B2288C05C6906FA1
          B8ED8855E5CCA45C5E0C474FFF00EBECE97561EC30D462CF506F6A4DF596DD89
          F171AB0A95918AA169686B676313132F56566DFEB86C5914C6028AFC568BC5F2
          9D0DE5A5CA62DD80F40F0DB3B6FD5D74190D656E932D0F2F8CA6C8F7A72625AE
          C85D91295B1485409ADA3B2938CC1B95559B3E2C5B1685B18022BF273222FCCB
          6B4A94EB991119181E61ADFBF6D3651214F9B06C7978613045BE792C3D393996
          72072B8C0B75C4C191D1DD50E46B64CBA2301650E48F59A3A33FA78EE78CC9F0
          D8987B210072A0C83B65CBC30B43BDACE884F61569A9161596D5D8688A7C2F14
          F92AD9B2288C05C5588FB75A3F5A9C6728A36685864E91174091B7CA96871746
          53E4AEAC8C7496999A225B148540E88C6B6078A40E8ABC5CB62C0A630145BE33
          293E7E4D41F64AD9A22804303631C9EA5BDBE8722D14F92ED9F2F0C2308A1C4A
          9CCEB4EC3999192C5D057230341DDD3DAC6F70A80B8A5C8DB60AAE409177A625
          2566E5283B1B43A253E41BA1C8B7C99687174652E414D56D286FE50A969A9428
          5B1C854094225788028A7C2C333525561DCF1993499B8DED6D6AA1CB4A28F2D7
          64CBC30BC329F2FCAC952C253141B6380A812845AE1001C6101A0F9D6A57CFB8
          D8A6A7D9EE46778A864F4291FF43B63CBC309222CF45D1569493CD12E3556845
          23A345671A8122575B2F0A6E600C4947D143E7E3C9096A316044666667D9CEFA
          46BA3454AE062329F262140DC5B9392C21CE50D1F7140B306A9845855C30866C
          44F1BE4A816C5C1C0E07DB565B4F979742913F285B1E5E1849916F40B1B5343F
          0F9D3046B6380A812845AE1001C690D351FC4DC559372E2E978BBDBFA7962EAF
          8122BF43B63CBC3092223F1EC51BE585F9CC1A1D2D5B1C854094225788006348
          158ABB37569431B3D950A1B8153AB6EEAD73829BA0C8B7C89685174652E41F45
          F14A4551018B898A922D8E42204A912B448031E46628F0EF4391ABF0AC066657
          43A3637A66F65E28F22B65CBC20B2329F2B3503CB5B6B498458487CB16472190
          9E8141D6D9DD634747540F5AC10D8C210F4445465CB4BAB84829720353D7D2CA
          C627A79EC1F871966C59786124457E2E8A3FAF2B2B61E16161B2C55108A4178A
          9C5CD0D0110DF3FE2AE45353BDE5ADF858EBB16430AB302ECD1DFB2854EB7B95
          559B8E922D0B2F0C331042915F82E2810DE5A5CC6251136A23A314B9420450E4
          FD69C94929392AE992A1E9E8EA617D43433D50E48609DF679881108AFC6A14BF
          3962553933990C532DC5222845AEE00DC60FF2371BA714C850E6B2C55108A477
          70D0ADCC412CC69009D9F2F0C03003213AE23751FCFCC8D515B2455108A66F70
          88B57775D365343AA24DB63C8AE007E3C77A14DB4AF272597CACF22137326313
          13ACBEB59D2E8FC2F8F19E6C79786024457EB3C56CFEFE0665716A78068647DC
          A94C41123AE2B06C7914C10FC68F2FA0F893086359F25D56BB848183DDE160DB
          E782C25C89F1A35AB63C3C30CCDB858E78073AE015E888CAD2CDE00C8F8EB1A6
          0EE3E51456C803E3C78FCC66F3B51B2BCAB83B9053C62D15A42AB0D859DFE898
          999D7D08E3C765B265E1819114F9C33151515FAC282A50911C0C8E6E6BCC50A9
          0815F2C0F8F1B7D898E84F9515E4731F13E9282829219E852923DC80A1755F17
          1B1C19E9AEACDAB442B62C3C309222FF7B9CD5FA498A93AC303653D3D36C8F01
          331829E45153BD657F6A52E28A5C0179C8BBFAFADD2BF2D818B52AF714A7D329
          24CADED0C8286BEEDC47976B3086EC965D4F5F318C2247477C2F312EEE88C29C
          2CD9A22804E340E7DEB6B78E2EFF079DF05ED9F228821B2C02487B77E5AD5CC1
          A0CCB97F3F196652B44911DF6D746812B4222D95FBF7D239F98EBA0617D86284
          50AD4652E4BD69C94969227C4027A6A654FCF60063EBDE3AE873E7CFD009BF2F
          5B16457003457E1E8A47D79414B1C808FEC95268E54741AA947FBA67D06A1CCA
          9651902F11ABF2A6F64E36323EDE5A59B5A940765D7DC5108A1C1D3112C5143A
          8A293D2599FBF777F70FB0CCD414D9D554E8A86B69736182F5123AE1A9B26551
          0437183FAAA168BF028521E410BBAEA5D565365B4C25792A629C27D002AAB6B9
          9589CA0F3F343AEA8EF2C60CE086661445BE0EC576EA28F1B1FCF36834B67730
          15B6D1735C2EBC6082DEB0CEEE1ED63B38340845AE66580A9FA8A9DED292141F
          9F4F0A8337E47A46D9B6305170AD2D2D56D66E1ED03F34CCDAF677B178ABD555
          929FCB7D24713A5D6C7B6D1D0AD7AD50E437C8AEAF2F1845917F05C5BDA2E2AC
          EFA86F60AB8B8A98C5A20CE23DC1363DC366EDB32CCECA3FC086CE05ED0874C2
          ADB2EBAA084E307690756C5B7ED60A9692C8FF0C7B646CDCBD1020547A54CF68
          DFDF4DA154DDD7EB4A31B687F31FDB1BDB3AD8E8C4C4FB58101C29BBBEBE6014
          45FE486444F8796B4A8A85F4124A445F5690A7CEC93D8494EDF0D818CBCFE2BF
          D2A1F3B36DB5F5984CBB6E8122FF81ECBA2A82138C1DE4477C9FA8AC89E4E634
          303CECC2A549A558F68CBD4D2DCE499BED3FB83C262B23DD24E278938E4DF7F5
          F4DA7169C5383223BBCEDE6208455E53BDA5272531219DAC4E79E370384861B8
          9511EE21BBAA4105599C5247592FD658A519B3E922D97555042750E48F464644
          9CBBA6A488FB0B4ADBEA34D904CFE27FCF2CC8CE62C909F1B2AB1C1468471264
          55FE0393C9548985DA29AB8BF93FA3D1F109D6D0E68E49710C14F97F64D7DB5B
          825E91A32316A3682880A24D16A06847C7C7F1A03BDCC66E9815CAAE6E50415B
          8AB4B5286A12A40BD5BA0E9D70A7ECFA2A820F5A04A42626A6E7AEE4EF3FAE33
          A63AD66462AF66A6A646AD4C4F935DE5A0002B715A91D3E527F1A1338F472B0A
          0B584C34DF1D0DA3846B358222BF0245B5A8F3F18EAE6E32AA62897171AC2837
          5B7675838A1D750D8E59BBDD1267B5BA4A0518AB689D90B62DBF834EF873D9F5
          550417183BA84377889A686A3B46ED95559BF23061D8813164AD8A73B13CE86C
          9CCEC801CD7C263011EA4B4B4AB6E6ACE0EFC2A7856BBD1763C895B2EBED2D46
          50E44F4445469EB5BAB850C8F9F8BC328A8C0877AC295156A7CB056DE6F60105
          3BF05927EA0CB2B6B9D535699BFA5B65D5E63364D759115C60ECA077E6198C1D
          0C6308D7EFA623B9ED7301477E08057123EEF587E8C8C8F357091AA78C06EDB4
          0D8E8CB66112944FFF8FF6BBD762B15CB6BEACC4CC3B018D66F0F63AEEF511D9
          F5F696A056E478B8163CD4A1B4E4A43811C11628D9417D6B1B5DBE8CCF4947AC
          2A37A92C46CB032B117707019FC0E7F9AC8C74B3086315CA2B8CD9FB103A21FF
          00020A4383F1E35AF4E75B36569471EFD7F3AE53A01C8ABC0EF7BA01F7B86963
          45B91A4296C1AE8626C7F4CCCC9FD07617D2FFA3FD48C9D6D0AE28ED8EF2A4A3
          BB87E2E10F600CE11F42CE4F04F52B35EF3F4E3EDE0971FCFDC7A9230E0C8F0C
          63564D96AD4F6236CDA239CFDC8D0A19BAEDEFED236BD0688C5CCF4586879FB2
          5A80411166EDAC652E66B2CA84A6F0088C1FF74745467C69757111F79D360A02
          333165DB06E5708476AFCFA2787C4D49318B8CE0BF336524E60D8CC157D1A7EF
          A20BB41F4DB6DA31CE6717E5F03DE2D46DE327E27E23B2EBEF0DC1AEC8DDE7E3
          EBCB4BB9671622ABC9EDB5F54E87D3790FFEF7367C9AE8054A8CE73B1B342A64
          E8363A3EB19506B2F95CCFE585F9DC5DF8306BA7D93B5D7E1E9DF071D9F55604
          0F35D59B5F8CB35A4F29C9E39B68697A6616EF64235D5E8377F20EBA401F588B
          6247711E161D0282561909DD6EDE9168BFF7E77F8E36246D7EE3BAB21213CFF1
          5EB7F37A34EEF7AEECFA7B43B02BF27B23C2C32F151131491770E4047CDEC167
          6A657A5AB88800FE4604932087DDE1B8031DE31B784E51E880FDA949895611D9
          A5B6EEA9A5E84C37E35E9B65D75B113CD4546FA94F494C28E1EDB6AAED463970
          99817772807E467D00C5A4A830D246026D476D388DCB58B49F7DFEE768438A89
          DE4CC7A83CDB706676960CDEE83268170341ADC8D111DFC1ECF61811D6E4E436
          323C36B60F2BF31C3C5C17EE559B94105F562020B889D1D0AD92CF43DBFD992E
          D0097F6BB158BE2CC258656F738B6B72CAF634EE758EECBA2B82074A5D9A969C
          B482B77D0D56E34E280732C03C73E1FD44A54A3512E4D78D55F25B95559B8E5F
          F83BB4E16BD19191C7571415703BA6A3DDD7F7F7D492F7CBB518437E2ABBFEDE
          10EC8A7C242325399EB77FB7CEE2F496F918BC50447F89898A3A87E70B645406
          4746584BA7DBBFFBC0B935DA8F76365E17713CA159B8B6A0E317CAAEBB2278C0
          F83180F12399E7F8313E3945E7E3747936DEFDA73F78BFCDFF8A8DB17EAC349F
          EF56BED1D8B6B78E8E346F43FB7D6FE1EF308E5C82E201DEF64A9A0BDA6F71CF
          AB64D7DF1B8256916B5B555334BBC5AC9AEB77EB8C1FCAF060EBB5FBDD6C369B
          AFDB5851A614F961A0FCCBFD43C31FB002D58C555A126263F378EFA0F4F40FB0
          CE9E5E272EA3F0BC6665D75F111C40918F67A6A658790669D1DEFD312C025217
          86FC441FF8757858D855A2B2AC1981A9E969B6A7B1992E0F9A081168C358F229
          4F4F4E8ECAE6B8934267E4E393932F54566D3E4D761B7843302BF21214F522DC
          11E67C936DEF42111DA3BBDF45281E121578C648683192FF8A8E78B6FEE7732E
          38ECA675A5A5A6B0307E6319C573A7E01BA014F76C905D7F4570C05B9153B6BF
          1D75F54EBBC3713FDEC3CB17FE1EEFFF35287EAD92A72C8DCE6D2F136DD8B3D8
          DFA01D7F8FF1E3C275A5FC8EE95AF6ED674323A3F518F3CB64B7813704B322DF
          80626B697E1E8BB3C670FB5EDDF9EE0742F6E17EA4D4DFE17D3FA341C94C2846
          322EBF8FF6FB89FE7768C37C3667ACC2D5E047378B3F03F77C56761B28820328
          F2FE8C94E4145E5BEBBAB8DDA7E03D7C69E1EFF1FE9F8AE29F2A79CAD2509299
          C191910E28D425CF1FD08E27A37889A7DBF1BEDE3EDAD91BC77D83D22D299815
          B9FBCC95B74B936631499692E9E88C43BAFB51BCDF21B2704D4DE29FEED0288C
          4F4EB2BA16B72BC78968BF9A85BFC7E0F97F5191111F5E55C42FC29566AC4297
          DFC43D7F29BB0D14C1C16BF76CE94E4D4ACAE065ECA629A17EBC8FB49A742CFC
          3DC6903CFAB3C2EC2C96A492A72CCAC240308B71C0A73C36369BD7315DDFE090
          FB5884CD59CA4FC86E074F096645FE5114AFF09EDDEEAC6F74CEDA679FA9AC3A
          D8021A4A68303D392989E7D98CD1D0D202D279751C3AC4E4C2DFE3B97D09C5EF
          793F372D946E35EE79B5EC36500407E8CF6399A929B13CB6D6695B7D7B5DBDD3
          E170DCBDD43B480A08850DF78B506EAC07B3582098A5405B5E8FE266F229E771
          D4A9CB1B5F817BD7CA6E0B4F518A5CC7C4D4149D8FD3E5E7F0309F58F87B74FC
          37E363ADC7D1968E6271B44411DB2BAB366D58ECF7786E56CD58255A80B1CA3F
          3001FBA4EC365004073CCFC87563C7E9183BFE7E887BEEC56ABC5CB9B11ECC52
          81601603E308356027AF3CE553361BDB33976DEDE3B8F78BB2DBC2539422D7D1
          D9DDC37A07072731BB268BD3A945EE795F6444F8C52A79CAD2688160EE42FB7D
          6DA9BF413B3E1066B15C44D6BBBC8C55B46DCD264C208A65B7812238C07BE8C4
          64D294C1C15E430B02431E13898BED44E9EEF9444C74D4D9158505413BF68A82
          8E35BBFBFBA731FE7E2010CC52D4546F7E2E223CE2341EB9E475E94C2FC3BD1F
          90DD169E12B42F133AC44614EF9715E4B3D8183E67E4DAF6EC92E733B8E7B7A1
          777E3A97F820689B4E18BAD094E7A30D1F5DEAEFE6132014E664B3244E3EE5DA
          403A83FBAA60F88AC3423B4328C679B9AF6A9E2EAF622279F261EEBBC56C36DD
          80314499AD2F400B04F336DAF0B8E5FC3DDAF23C148FAE2E2E625191113EDFFF
          FD3DB54E97CBB51963C8CDB2DBC25382561BF15E914F4C4EB1DAB9400E9FC183
          FCDB12F7A4484D4FF37A718C8627094C6AAAB734C75BAD05147B9ACBBD8747DC
          2E246025EEDD25BB2D14810DFAF22A14BB4BF0FEC5FB18FB5CE7A9711DDEBD1F
          1FE6BEE492F9A41A430E665B6D9DC3E170DE8E36FCF672FE1E6D496722BDBC26
          639AA1DD038BB90E063A4A916B68D6EA14C02171B16D75ED9EE528F68AF05D37
          028B0582590ADADD40F1D3B5A5C5261E79CA7511B54EC0F37B53765B28021BBC
          7F9F46F12C8F5CE4A3E3E3584DBACF768FC3BBF7F661EE4BF159BB94F7CB0759
          2CACF372C082A031293EAEA8203BCB6719B41D8197317E7D4C767B784A302BF2
          33503CC32B2D606D732B053179050FF19443DC936E64CBCECC30F33857331A4B
          0582590CB42539EFEE5F999E66E161C13B6BB7D3D1085D5E88FB3F22BB2D1481
          0DDEBF5BCC26D3F7365494F91C54645F4F2FEB1918B0B95C6E4F8D659CED6E69
          4B4E88CFCD57066F07D0EDE615A20D5B96FBEFF01C1F8A8C88387F4D89EFA968
          299A67FFF0F0217DD803956056E4EEF3111E91D6344307DA1AFB365EA25F1CEA
          6FD1095BD009F35527FC204EA78B6DABAD2597EEC36E2FCE83B67C01ABA15356
          718A5F1FCC675C0AFF81B1234C0B17CCC50F593B1F7F090AE0D465DEFFBE88F0
          F08B45646D0C56E60C8D8786D1861EED91A32DC9A8F6579890318B8FD1F27A07
          065947770FE901EB52BBB2814A302BF26BD1196F396255B9CF75D085F85C8B07
          B8EB30F77D2C3A2AF2B33C039A18019D8DC1C968C35796F36FD096E46FFB1B5E
          F9E47737363B6CD3D30FE3FE97C86E0F45E082F7EE3A143FE211A5716E025B47
          0996AEC77B77EB32EF7F098A07A0C8198F632523A0B98FFEABB26AF3B22643F3
          CC0706E3F12C27A76C9449912E0F69AC1B8804B322FFAD968BDCE76800988551
          649F6174C6644A597A98FBFE2F8A9F630668F27506682474B3D904B4E1D872FE
          0DDA723D8A6DBC422D6A3EECEF60567FACECF65004265A98D4175293124D3CF2
          90EB6C334EC27BFFEA3265C847D142BEE4C98909B29B2420D03C86EE401B7EC3
          937FA7791F8C6567A49B3238F8936B47ACADD005AB20CBB4EC76592E41ABC86B
          AAB7EC4C888D5DC3636B6C4F53B373CA364DF9AC3F7BB8BFC58B73148AFFF0B0
          76351274BE35343AD608255AB2DC7F83B6B4984C6C223335359247508E393FD4
          814974C2D8C34DC814A107295093C9B43D262A2AAEAC208F8B0BA92EF35EBC27
          A13D317EF5A62426A4F1984C043B4E978B6D9D0BB17C35DAF04E4FFF3DDAB22E
          293EAE9487C19B2EB0CF8DC1744417948A1C1D9232D4D4F2703BD00502B8060F
          EE8E65DC3B0CFD7F2C2325258A771EF460665743A3637A66F60F68C34B3DF977
          E884EFC45BADC7F07043D38559FC18E47859769B2802074A7B0CC5FD1F8BD95C
          B1AAA8D0121ECE2783617347271B1E1BDF8509EC5A0FE5793C3A2AF26C7544F7
          018BF5B3D06F9FF1F4DFF334782328FB5AFFD030C5CA3F0AF26C93DD3ECB21E8
          14B9B68A7BCE6C329FBAB6B4C46CB1F8D60F74E7E31B97FBD0A07C5EB446477D
          ACAC203FE8DA4F049A1F2D5D7E1D6DF86B4FFE2DE5680EB358AE5A5F5ECAA513
          624070CECCCEEEC4AAFCC8C51257284213BC673449BFAA343FCFC4337BA1B625
          FC5BBC6B577928CF7750FC84824B99CDA13D8CE8122D7D08EDF86F4FFFFDBCC1
          1BAFF4B0349EED6E6C76E2B992F1C3C660D8620FAA378894388A3FE0F345DA46
          49E6904148731D99D25C479635F093B10C66F73FDC505E6A527985199BB4D9C8
          F58C2E174DDF7828E693A8AC2B2D613C5649BA5492D72DD7F848616CF08E9D85
          E2293ABEE199AC44B79B7739DEB5DF7928933B15674561018B890EED94A6BAC5
          9447AE67F3A02D2BA9E019E5736C62D26D80077E0299AE95DD4687236814B9B6
          127F0C0AF71C5E917C083C2CD7F8E4D4FF55566D3AC903593E8CE235959B7C8E
          A19151D63CE7039A8B97BEC3937F8BB65C8D6217CF203BDAD6189D5B7E440587
          096DF07E6560D25D6B8D8E4EA0D538CFC8CABAC1FE58BC67EF7828973B300CB9
          B1A684B8C1DBC0F0086B9D8BCA98AC4F1DBD5CD09634708CE4646698D239C6F7
          2023E8DE8141B2B5A120536FC96EA743114C8AFC3E1497F18C8844A907B7D5D6
          3A9D4ED7AD78503778200B4DFBC6B232D22D3C32EF043B3D0383E4074A2F7CC4
          720262E8E16DF046904BD0DEE616E7F4CC4C8FCBE55A03990665B791420E35D5
          9BFF6A32994FA7B3681E81A3F4E83C35E2BCC9615D53BD65242325393ED46D6D
          B476A44BB3B746AA68CBDAC4F8B8B2420E066FF3D0384286D033B3B3ED184756
          1F2A198E6C82429163B0A7F3A73BB3F1C2F370319867CA364D0F8A2E0F997A70
          31F0E26C4F888B5D5794C327B17D30D3D9D34B9D7159A15917036DF95E7CACF5
          089EE961A7A6A7DD91E6305D7B0E13B63395157BE88171E362140F8A0A874AAB
          C8C191D116BCF785DEFC7BF2BC498A8F5BC3C3DA3A98D116024EF451AFED64F0
          ACEF0E0F0BBB9C322AF2944DB362A7B1E34EC8778DECB65A8A8057E47840C7A0
          78333921DEC2FB85D76DE9789C680372DDABF9B1877C74266D40ABC58056E1CD
          BF475BDE894E7805EF4ED83F34ECDE66075FC3F3FD8DEC7652F80F0A016C3299
          1AE3ACD6D892BC1C21E3DCCEFA4607566B8FE2DDBAC84B199F898D8939A3AC20
          4F6E634946731B9DC0F8E1B53F2FDAF202140F8B08B2A3E5E1A0CB6507BBF237
          01ADC8F17062D01977474684E756141698791B96791B1650938DABA56430A305
          627913ED788237FF1E6D79198AFBD69795B0301FC3ED2E84CEEE874646294FF4
          31C1E24AA2F01DBC530F9B4DA62FAE2E29328B889EA64B947236DEABA7BD94B1
          3A3222E22BBCDCA682154E8A9C626677F2CA2FAF87E24ED3EE9E6D66A613D715
          81B8C51EE88AFC3614DF84123789B0ECAC6F6D27D7073274FBA817B2CD599D72
          CABE16CC90C1CFD8C4E4B378C1CFF0E6DF8B30789BC7E170BACFB966EDF66674
          C2F581D809157C99EF9B74F62CC28685DC93F66060C76ABC5E3B3B757A29E7ED
          E1E1615F5D575AC277F61A64F050E404B90563D276322646DC57565AF856DA62
          A734ABDF94D6584B10B08A1C2FF93A145B335253CCD9828C41B6D5D63BC0AFBD
          793090AF0845239D9127C687764A533A439A989AFA0BDAF10BDEFC7BB42565A0
          1A4E4F498E13F1AC83E59C4BE13B789722F12EEDC14A379F92F1703553D7A074
          BD7D8343A4BC8FF3C6EF5927EB668BD9FC03CAC026B3CD6403254E6EC076B4A5
          4F5B2768CF8FA37881976BF242C85519B2D23842BB7BEF4A6AAE450958458ED9
          554D98C57202CDAE446C5DDB6666D8EEB968425FC443F993A7FF1E2F4D048AE9
          9C15192C3D39B4539A62C5EB98B2F996ACA4A67AF3F33151D11F2F2FCC1732A8
          E9CEB94E859CFF92D4540AC16879EE7FC6D3A7588F2E39D016BC479B7D949514
          F90D50E421BDB53E6FB58EF6F4591F51A4C888F0B0A3561717719FC49115FBEE
          C6260A00B4C3E5721DE5ED4E8C08025291E3053F13C5D3227D2CB5D9159D9D66
          78E3BB4890FB48666A4A3C2FB7A960858722C733FF168A9FAD2B2B31F99A9676
          31E89C8B12224C4D4F77E3BA0CB28E4B6C328500F00EA560EC6E4D8C8F8FE5E9
          86A4478B3BD18177A818EFD0AC8FF2AAAD75D03738E4DEE5009168D3195FBE0B
          6DFA5114AFF08C35A2471706FA4AC85A2DA1B91625E014B9B6CD5A1B1D195954
          C1294FF5426CD3E476D642A907AB3D0DADA8078A7C3F5E9615399919F21A2C00
          E0A4C8C958A503932233CFE85B7AC8DD706F331D9507E63997C237F00EFD0A63
          C735588D9978FB8C13346EEC6E74BBAB56E1FDB98783BC0F4747457D7195A071
          2E58D0790FA5A15DFB7DFD3E3A2B0FB3584E5E53526C1611FEB6A9A39314FA18
          06923C6F1781BC0944454EAE1C0F89CA2EE6B640C4CA0C9DB24FB340F4FA41BC
          56BDA5313931A128D43318ED6D6A714CDA6C7F425B5EE8CBF7E0D9FFD162B17C
          615D69B190E3144277CE7534E47D4F467B29F8837787B2EEEDCD4849B6640B9A
          58CFC54B18B06108495F6EAADE430185F37A7CACF5049EF11382919171AC72E7
          3C002875E85E5FBF0FEFC29128DEA50516CF486FF34CCFCCD2163B2D047F0179
          BFEDFF163B988052E47351BE4C4D315151B9E58562129268861574E973862C8A
          269492985016EA8ABCAEA5CD393EE9B65A3FCB97EFC1F35F85621756E52651AB
          72ED9C8BACD8DF45473C56058A310635D59B9F369B2D9F595B5264C66450C83D
          B404298FE19D399F8FCC5B86D2939312454D3C82055DAE066E7EDA781F9EB158
          C24EC7A2C022C2E0510BDF4A472BA590B9D5AF0DB60881A6C8CF43F1A8A8D5B8
          C3E1A0200E4E87D3F9476F8338E8515BEB7390FB1914F9DF2AAB367FC6D7EFC2
          3BF07BACC62F5C8B557998A001796874943577B863C37F1EEFC1E37E6E2E0567
          F0CE6C44F1BEA81518A1CBD0E57114C8256426F78C1E156B9D314C8E68924497
          5E191E2F06DAF738146F8AF22AA28439BBE674091D295EECDF163B988051E468
          7813057F898A8C2C137566A48B094EB3A8465FBF0FB3BEC9CCD4D4E8503776D3
          02C2BC5559B5E9785FBF0BEF413E8AC68CD4148B28B743A2B6A5D5353965EBD4
          8C967C32B051C885E2A96315FEA9B5252516512941C918AB7F6898CE45537C35
          7223F09E9F82E24595FD6CEEB8F3FD3DB574F90DB4EDAF787D2F165A5DC909F1
          9934591281E609431933296B5BBB7F5A6B710249919F86E2F9C29C2C9614CFDF
          0790D8D5D0E89C99B5BF0485F3710EF2929023A2E23807131406756078A411ED
          5AC2E3FB287734267557D2AA5C84053B313E398515562B5D0694F5A9C233E68F
          63B232D24DA2121891A2A16D75ACC2EEC7BBF23F9CE476A742DE58516612B1F5
          1B6C68C71614E7E1EBBCBE136DFC604478F885A2C268D3AA1C723BF17E502C92
          FFF55F6B1D4CC0BC41983DFD0B83F649646928E2BDD6E5A9A6041A7FF5F5FBF0
          927C08C5DB2A95E97C4EF741AF42DD2E06DA968C0E5A33529223449E1FD6B7B6
          BBC62727C995A870B9B9E815810556E38F99CD96CF8A3490D485633D05EFC94B
          9CE4FE7B4C54F469A26C81820DCDADEF9F18434EE3F59D18472E41F18088F8EB
          F3CCEDD40C91016436DE8D013F35D74104C44B84065F8362270DDABCE3E4CE43
          31B78747C728ADE54A1E8EFC07E2839797325167B9C142EFE020EBE872A7218C
          E0B1ED48A07DEFB298CD57A07D8544E722462730B96B754FEEB89DCD29FC873F
          56E3849614A81F6347268F099F768C389C9E9C141FEA866EF3684717DD50E4DC
          2C87D1CEE40ED02E72D774667696ECAEE8B8F606BC1BB7F8A9B90E2250147935
          66D39482CE6C1130ABD6B640C85DE04768EC1F7092F9F6B030CBD5EBCB4A435B
          8B83A19151F7440964A17DF7F3F84EB4EF8751BC56929FCBE2AD5661B2533284
          A9E9E93D1840D6FAA7B514BCC03BF2078BC572BEC8D53879396CAFAB7702DAF6
          FD1A27B937A0D82A22B740B0D23734C4DAF7BB83C2900DC220AFEFA554B171D6
          98352579B9C264D7FCCABBA05F7264EDEC4957E474D68C0557776A52523445E3
          1181160290664D64D8D4CCE33BF182FC1B0AE6E8E2BCD0F6012574E7CD1F46FB
          BEC1E33B3557C4E1B4E4A458915E013A0BF6804D51A838182D8050FB8AB4548B
          486353ACC459CBDC24F5685EF1B5E7A3186E282F33592C211D0BE6005A3E04BA
          3C0DEDFC02AFEF455BFF00E3C8162CB884B5B56E67EF2CC8FE8C3FDA6B2181A0
          C8BF8AE28E55C5852C3A3252C83DF63436530ABAD7BCC972B684CC24E8180690
          7051FECEC184DDEEA0550B5D5E8A17F9415EDF8B767E20CC62B988F2948BDA5E
          2743267249B43BEC7FADACDA7CB67F5A4CE12B78376EC53BF1BDB5A5C54242FA
          CE437635631393F5183BCA787D674DF5E67F687905A48FBF8102F5C36DB5754E
          A7D3752BC6901B787DEFFCB1ADA8442AF3EC6A68A26C78AFE03D39C51FEDB510
          E92F1256B67BADD1D1656505794264D1AD16B9FB2896E6E7B23881DBBEC1C4B6
          DA7AA7C3E1F839DAF8BBBCBE13ED5C4985E84E48C954F6F7F691DD04855CECF4
          4373297C00EF451494780FDE897851AE4584EEFCF3BB782F6EE3247B04E6A423
          192929515902DD2B83116DD2F41F28C363787E2F744C4B425C6C3EF9948B623E
          F10B9B736D6E10DC5407215591CF5B7E17A033260B0A8AD0B26F3F9DE10E62C6
          B78297BFF0BCEBC886F25293A8B3B960632E28CCD4ABE88427F1FC5E74C26DD1
          91916B45C5DD27EC14900203364F1B0A8538D0FF2E45713FDE09161325CE075B
          975869258F18E09AEC6EDB0FB5083818DD11281915F6F2FA5EB4F90F315E7F7F
          3DD96009324C76389C6C07D952B85CBF9411B655B622BFC762367F655D79A959
          84CF99CEC88DB66BAEE7F5BD502EAF5AA3A32B45ED2204239D14B2707068146D
          9DC833EC29DE910B503C8CB666B131E2DCFC5A3AF7D37939D7099F420C34B983
          025F27726B5AF31D77620C7904EFC397787D2FA52E8552B97143459949889F6D
          104331CC7735B8E3745D86367F80D7F76A71F8EB4565449B47F36E18C2BB93C1
          CB7B67B9487B93D0B831788FFBD2929262720419B96971D549A914A061DB38C9
          4D4B80D11569A9E1A11ED14DCFF0D8983BC21B588BB6DEC5EB7BD1DEE118F83A
          12E26233446E8DE98E60CE83FC7F16DD5E0AEFC0FB70048AF7448736ED1F1A76
          073A02C7E07DF80FAFEFC524E44D4C488FC58A5C69F145A03C08D3333314EEF9
          4C9EDF8B767F3B2A32F2689199E674617C3F8777E609D16DA547A622A759EEEF
          456D8FD18C7A570325819FFD075E8A4F7394DB1D5A51F40A31D8D019BC7D0D2F
          F16F787E37DA9CCEDD7F227A2B757763330D22DC8C2215FCA154A566B399DC3E
          85A4A82468EC208532336B7F1DEFC2891C65A70163140B008B32925D9CB9E052
          EE0C73F13C57B5687B4A74F34859413EC6ED6861F26B466FFFC27BF3093F34D7
          01A42972CC906A30433A41D40C49E7DBCC2D1A138117E2160C20DFDB505E262C
          5049B032E7936D7B1913A753797E2FDA3C166DDD99101B9B40BEB7A2D005B629
          E1118B5FC1176D77A6172BF14491190775F9B14FC27BF02A47F92934F40BE585
          F9CC1A2D4E9904333A57AEE3D0F66FF3FADE392343D3BEC4F8B8D4C2EC2C61F2
          F7F40F50BA5BDA0526C3D90EF12D3687144DA425C668CEC9CC3089CA56A405FA
          D88599D17A9EDF8B09C8FBF156EB46E53F7E309AF5B71D97C93CF235EBC13B43
          B18C7F2132C984CEA6E2C790FF3A3F3499C203F00E9C81E219918AD0E974BA57
          5578172809D08739CB7F3366FFD76DA8508B80A5A0F6DF565B4F7DF03AF4C11F
          F3FC6EF22947B1654D49912932224288FC94C96D673D8D216C13E4BFD91F6D46
          C852E46E838F7565252611E14D75B191B99E77426E3A941BCACE483765080C09
          19AC4CD96C6CCF5C5E61EE674468FB68CA551F1B139D599A2FCEC850F37218D0
          8CDEFC6AB0A2383435D59B9F8A088F380303B1B073CE7DBD7DACBBAF9F5C118F
          C0F3DFCE57FE2DFF87F7F72322DF5F2350DBDCEA9AB44DFD9DE7912881312411
          F3A78EE4848458916E8B5A3648CAE190C7D3F0F750F8FD85D2E20C93F1529628
          E325BC08CE499BAD090D59CE23AEBA4E76F78A40F4596D30B3A3BEC1313B6BFF
          03DAFD52DEDF3D6F57519C9BC3F0FE08915F67B0F259D4E149B1ADA5582E78F6
          B475D79395911E262AAE3AC60CB7120177E3D97F95B3FC615022E399A9A991CA
          48F6D06871D7FB2AAB367177B4A745248A1B5715179A440520D319FE7E04EFD1
          EB421B4B438622FF288A57440DC6BA909B5F40233EC659F6DB2D16F335743EEE
          97C60A42B494A6FBD109B91F44A1FD694BF2BD88F0B075AB8B8B846D4FCE19AC
          CC9091E4E9C21B4CB12CF0ECBF8CE277A23259D15E281DC7D96666F6E37A35C6
          8E51CEF2BBE3ABD3915C42AC9849A851D0D928D0AE5837CFEFC67388C3B8D168
          8D8E4E13E53E4CEFD2F6BA060A9045696F2FF7479BC950E4BF0F0BB35CB8AEB4
          84FB404C090EC8DA74D66E7F178D792CEF6D0D0AC08FC9C71A916E50C1CE203A
          61CB5C272497BF56DEDF8FF7E758146FD1AA4694E56F775F3F6DB1D24E4E16EF
          8144E11DE87B2FC644459D5C5E982F6412DD49D6D2FD03345E7C14CFBC86F7F7
          CF07B1595756C2448694350253D3D314569B2E3F8367F137DEDF8F67F179148F
          89CC8A4646B37D438313D0E969A8C394D816F3B3229FB33E667DE9C9C95122D2
          F7699198A8331E89C6DBCA5B7614A390DB242AD5AA11D0C25AD2E5F978068F8A
          B8079EC57D98045EBAAAA8D01415C9DF6865769622BD35D07BF43DD4E167625B
          4C713834DB9401F43D8B88BEA7B3A9F9099EF7B582EAF02B2C60BEAAB2251E1E
          283FB66D6F2D4549A3488B378AB8072686FFC018722A794D89307C9B9CB2B1BD
          CD6E7BA10B50873F0A6E32BF2B72770EEFD5C5852C8AF3F98476B649832F85C8
          FB9600D9C9A5EA9FCA75E4F06CABAD77805FE3397C53C4F7CF19ADD0F6585472
          598198E85E5ADCE7C6CAAA4D25625B4B7138F0BC2F42F1D09A92621619C1775B
          9D266D7B9A9A9D0EA7F37D97CB75BC280347288E37E2ADD6E395B7CBF2A86D69
          754D4E4DBD5059B5F99322BE1FEF543AC690DDD19191C9B4CB23E2984E8B4BF1
          12C6908F8B6E2FBF2A728A6A141D15F9A18A42BEBEE3501A642D4D5BEAE4B7B0
          119DD1C65B763CF8EBF1B06FDAA85C470E8BA604C97DE77851F7C0F3380BC553
          A2B6D8757108B8FAB32A3C07E3C6DF31E07E8277BC7D3ACBA4C9FFA4CD3686EB
          F5228E827475184A4F494ECC568952968566F0D68D314458C0002DB8D73FD393
          934C22A28BEA228B728D1DBF187ED34868B422148D22E2DD36B6775062778A8F
          4D3983770892FFC998A8A8334526EF300AE4C2D3D3DF3F85713296A7D7C04228
          563F8ACBC9688577943DB7C10A6574733AEF451DAA44B7996271F08C29B3C820
          266C11BC276C6498096541032DE5C0FEA7C03AC4A118CD5D89B12F495CAC6F23
          D13738E456E62081B7E1A11E3C1BDABADF2222E4AFEE98F1EBA8C3AF45B6973F
          15F94D58C95ECF3B038D1684842E2F46633D244A7ECCA83BF0A0B3454694320A
          C3A363ACA9C3ED7E518167522BEA3E5A3ACBF7C32C96329A60F13622D25605B4
          5A23839569C1CDA658043C63CA11FFE4AAA20216CDD1E553174BFDFBBC038F2C
          52878D28DE5719CF96CFD8C4A43BA32213BC2336E70ECD9E852AFC246DB1F376
          2BA61D9F89A9A9F72BAB361D25B2BDFCA2C835B7A18EC4F8B8953CC3E3E914C6
          5DBCFD3E17C84F53B561D1D9738C82662C469717E2B93C22F25E7836A5E49286
          0E68A59539CF630F5D229573508FA744D643B13878BE0F608276D1BAB2126EB3
          7F0CAC9A3D8DEB6997CB1D2F4068D08E792B6951AE734684A22C6EAF75E76EF8
          329ECFFD22EFA5D9DCD08220170B020BCF05816E67A118F5681255077F297277
          A29192BC1C16CFC987520BDE40DBB63558317D5C6414AEF9BCE92A51CAF2D10C
          DEC8F0F03BA2EF85E7430631CFA526259A78EF98EC6A68A42408DCB331290E0F
          9EAB05036C3F9E6B622EA7334CDAEEDCDBD4E270389D1430EA28DEA18497A807
          19DFDE76C4AA0AA6CC6B960F14B9C32ED068560F9E51399ECD7F62A2A2ADA558
          10F04A313B17F6B95E78C8567F29F24731CB3977ADDB77DCF7EFA3CE484A1C8D
          D48216A273F121C1F2BB7362AF2B2D61E1E1CA077439CC6D294D0AB33A5DC87C
          86B49CCC0CC6337E3F1DDB74F5F553FC78CA313CE88FBA28E6C0333D01C5EBBC
          82A84079B33A8C1BB69999118C1B4788346E5B508F5F8485857D6D3DC75D8550
          80B6D6C727A7C8EAFB147FDC4F4B6AF37C7242BCB980E3CE31D9708D8E4F34A3
          1E45A26417AEC8D13864A1D2B5222D358C4768424CA5C93581CCFA47B519B5B0
          ED0A5D1D36610672E3C655E5CAD06D9968E7CB5D7879C505355E009ED31F505C
          509C9B63E2153510EF19457AA3CB2ABC6BF7F8AB2E0AF7F3FC29FADDB7D65794
          997D5D01906F725387DB2896266514F4E50D3FD6E3CFD6E8E8CF97178A719534
          2A734155867A3086F037295F023CABAB50DC99055D95C9C9B872706494B5CC79
          C0507C93F745C8ED0F454EDB223FE7713E44FB138D6D1DAEB1C989595C52677C
          4BB4FC5A1D1E8A8E8CBC605571A152E4CBC45F56A77AB454852F63CC3FAEAC80
          9FE1CA5C1207DB7F30A07CC81FF550CC5153BDA5092BF1421EA96B3BBB7B58CF
          807B43E522BC8F0FFBB91EFF463D8E169982D788E8D20A93F7CB84BFEE8B71E4
          2E145716E664B1A4F8789FBF8F228E6EAFAB73A2BC5D448C1342B822C74BDC10
          678D292AC9CBF5F95EADFB288EB7DB5DE4F3BCB36B1DA60E6FA2231EA73AE2F2
          F197D5E94228B90694F9BB61164B1E59A1F2302ED24D4A8A5097667FD5259421
          234614753CC2686255C7DAF7BB9F1F450ABBC1DF75C1F8B10F7558C9EB9C3F54
          181D9F70C7A400141B649BBFEE3B97E0C6F4222E2B7959B26B5915FBB018CD14
          E1922B5491A3413E82A2A630271B339B389FBE4BE766F62D34C42F44CABD1074
          C47674C41CD511978FDDEEC02CD43F56A70BD12CD9DF898A8888A795B9C5E2DB
          468A2E4FB95F730C873278866424F9535F63936BCAC06532B1275C2E76AEBFD2
          4A2EA8CBACC8AC6D4645E7874DCFED2FFEBC379E5992B620C8A70066BEDA46E9
          C2007F0C757999B7BCA215F9A3688873D1197D8A86A63B63B8138D70B5489997
          A8C74C567A5A38AF339350C19F56A70BC1333B1EAFDC2BB13131E1B41BE4AB5B
          9A9663B8B5B26A5381BFEB128A60F24C2E851B7D3957B64D4FB3BDCDAD4E4CC0
          28FC6AA53F92572C844281A2E81111702414787F4FADB409B4B620F877546444
          9C7B4160F67E4140361A3BEADCE3E1EF44049812A6C8D10864F6D7B6222DD5E2
          8B91DB04F9F2B6BA63A8FF130FF47434824394CC4BD483A6D1FDAA237A0E59AE
          8F4F4EFE1DCFECD332EEAF051379223921C15490ED9BCD9D2E3D2E65D57B4746
          7D4285F92890BE7820D8ED76B7129FB5DBBB340B75A121320F511777FA52150C
          C63B7637363B30217B04CFEF6219F7C7F3FB308A97E363AD616444EBCB82808E
          77FA878787B400535CF59848457E0B2A7DEDDAD26293B75B633A9F4FDAD73CC6
          1F3E9F8BD4632D8A1D58D5313C4C7FDF3EA8D17293B761159B2F4B063CBF6B50
          FC9AB266F992718F0C2DB7D5D63B01051FBA46567D42013C33CA4076ABB7DBEA
          645C54DF4A31D4A726F1D868DCD823B12EA7A1785E44A2A85040DB09A3C86847
          CA9201CFF05C147F265B0D5FE254E8CEFC4FC13BF9124F19852872543C1A4ABC
          3B293E3EDEDB9510064CB79B996D7A66589B51B78990751975511DD14B7AFA07
          28CF33CD3CA3F0FCECB2E4C033A46DB91B4891FB920653B4C18A628E9AEA2DF5
          B131D125A5F9795EFD7B4A7683E744CF8762A8BF28B32E78F72E41F1C0FAF252
          16C6313475A840A9A97B060647A0C8C5240E5F26788EDF43F1E3AC8C74E6ADAD
          833B7F435DBD132BD37BF05E5EC5533E518AFC4A1477F992F293CEC407474649
          09909BD9EB22E45C665DBE82E2DE0DE565CC57A3A95063786CCC3DA306A57886
          0DB2E4A078CA287E87CF65BE1C918C8C8DBB833B003A6F7D4D567D8C0C9E5525
          1514902339C173D71F9D51EC957846D501509F6BB1A8B9E58855E5CA87DC0B74
          31F1FDE6C6BA147896BF45713985194FF2E2DD24B45DCA7E28F50C9E8B01EE2F
          97E6CBDB0A059E49B1AFBDF90E2DFD1B5D7E1595BD8BB78C1ED6E746B3C9B449
          0583F19CA9E969B6A7D1EDADF5193CC7BFC994652EDC277B926429A280315E44
          0AD332A2D151CFDD6A7B5D0C588DBF8895EB496B4B8B2D9E9E47EA268EF7044A
          C63ABC77BF0C0F0BBB8667ACF85042B71DBD01CF74BB4C59B490C1CFE3F294D2
          FC5CAF322EEAACD74F447D6A78C92642917F1DC5EDB42D1667F5BCA2631313AC
          BEB59D8CDB1E44452FE32D9F17F5A98E8C08FFCA9A9262D5113D84141F599DB2
          3997C15FCA96473BF2A1B3A90F95E5E799AD319EEF16899A512BDCCFE764142F
          79E33B4E11F8F634B59085FA9BF89C2C32F78287757A34262AEA5C95FED83B74
          9115CFC6337D5AB63C94921663C89B66B36955794181392A32C2A37F4F63E28E
          BA06B25EE76AC0C75591A39231A8641B662AA964A5E929B3763B3A63339D21EC
          D28CDBA4A78E449D9E8E8D893EB3AC205FB62841C9CEFA46C7CCECEC3D22B3D3
          790265B2C33BFA96D96C2E23651E1DE599DD836E46ADB6D739A205F2D91E1D19
          B9B2BCB0C0A388AC34389285BA6D7A7A00D76B6459A82F464DF59657E3ADD613
          295EBCC273B4C5005DFA3D7EC852E05D5D413EE6E16161991430C653834CEDF8
          871601EB51A75D3C64E2ADC87F82E23B987D9A3C8D86437E7664693A31353581
          87B73E502268A123BE9B1817772485EB53784E7D6B3B1B9F9C78B1B2CA9D9020
          20C07BBA9294B9C562C92A2FC8B344462C7F56AD9B513F14083B4646602EF394
          E909AC72CA2A0A0BF13C3C8BC647613C7B070769E78756E2AFCAAE8F1E8C1F8D
          29890945BCB3F285123BEA1B1CB3B3F6803ACEC23BBB8A824E61E21953569087
          75C1F2375CC8907B57431325FDDAABE50BB1F92A0F37458E8A1D8BE28DF49464
          738E176E3E3A239580CAFD8C8ED8919A9498ADA2BA794720B8A02D06DED742DA
          22C36C3A151DD1E2492857B2DFE8EE1F202BFCF5325D9B821D3C030A30F1337C
          2E42FBBBB06AB5447BE819A20B057C0B9EC5F5B2EBB4108C1FC31929C90964ED
          ACF08EB92C6893CF6331F029D9B2E8D10C33C9C7DCEC690872EDBDA5C9E79FF1
          39DFD788835C14B9B6D5F01E66D21998516372E2D9D78E53D0979656AA086DC1
          5EC943265EA06EB695E969912B545437AFE8C6046D5F6F1F29BDC8403B53D666
          D56FE0BD8DA7EDDCE5466EA274987B1A9B1DB376FB3E2D629814D7C860066D7F
          0ADAFE2FF8C467A6A698C92DD093550DE174B9D86EAC6CF01C6865B33150CEC5
          7575A40A397C757B0C7528C7C6E0C848131603C5B26559089EF11751FCD11B2F
          8BDEC121D63197C381BC2BAEF24599FBACC851118A7FF92F74C2C2F2C27C4B94
          07DB94046D33D0B9F8CCACBD51DB52F7799B8117A81B458019E791B82154D185
          D7CDC1B3ED942DCF42F08C8F42F1B6A71108C922BFBEA5CD09A54EE974C927F4
          4F32E278072368F30B513C44AEA9853959266F13DB68BB78D4E61F42DBFF4776
          BD16A927BD50BD05592B59B28A0AE935DA739EC1330EC8401E35D55BB627C4C6
          AEF326A9161639EEC50EB897CDB94C7A15F1CD6B454E16C028AE8012BFD962B1
          4497E6E55A3C351C223AC9E1BF7F80566AD419DFF5561E11A08E2528EA8B7373
          18AFFCD6A1C6C4D414A501A54BAEEE163CC1737E24CC62396F7D79A9474B428A
          3CD8D2B99FC2D052E8469A88FE093FFE03EA592FBB4E818AB6827924312ECE44
          7627DE86BCA444363BEB1B2835E4EF03D55681CEFE51EC2543376FDC1D157360
          354EFD8C2E57E25977C996672178CE7763FCB81CE387579E4DDAAE25F5859730
          869C873AF67BFA1D5EF522087E016E7A3B6E9A4AF95A735764B0302F4229926B
          C1EEC6660A8A4F8935BEE1738B7286126FA078C397C036A18E2E0BDA2578C6BF
          972DCF626831D99F5C5554C8BC998C92FF3205AE189B9820C5427D8A22C9DDE4
          EFBC00818E16B7FA9578ABD502E5E653DC6AB2A7C14A8DDAB710EDDC2EBB6E4B
          D4578D1F1CD08E5EE9F2043CEB3765CBB3103C67D25DBFDC5051C6BC4DAC3234
          32CA5AF77791FB649FA6CC5FF5E4DF7BD493207024FADEFD2E173B1F9DD19595
          99EEB175BA9E8EEE1ED63738388DEFA399D6A0EF4DCA97F9017E4D4931F3D492
          56F15FB6EEAD250577339EF166D9B22C069E33F906B57B1B4D6C1E8AF1DDD5D7
          E70E68847EF234F5131919B70211CA0206C5BD27322222A99C436A59CDADF169
          B4EFE764D7ED1075FE0C8ABFAE2929629E7846283E08B925EFA8730786BC08CF
          FB61D9F22C04CFF90C14CFAC2E2E629EFA95EBB14DCFB0E68E4ED7D4F4341D17
          7D09757D64B9FF76D98A5CF3117F1EB3858FE4ACC834A52727F9DC0064E086D9
          D63310F86C9FBF4C0007C2B3FA30D35230320C734ECD6530FA926C599602CFDA
          9E9D916EC9E090335A0B2BE9427FF93FF4974FA0DE33B2EB271332FA425BBC88
          CF47571515987D556A646CB86D6F1D5D56A16DEF915DBF43D4FB5214F76F282F
          65161567DD27B474A63FC0F3FE916C591682E77C1C8A3779ECBCD062A0B9B393
          C2419332BF00F57D7439FF6E598A7CAE23B267B0C238BD2837DB941817C7A501
          F634353BA66CD30F43D84BB87C216728503E069F5B559C64DFD03218BD5D59B5
          E938D9B22C454DF596F1CCD414AB2F2977F568E77A50E6EC59F49B7342799B7D
          7EEBD1D71D8F79744142AE41BBDE21BB7E87A8F77750FCE4C8D5156AFCF0915D
          0D4D8EE99999FBF0BCAF902DCB42286F398A3A5EB610F47E6B632679FB7C0475
          7EFB70FF66B98A9CFC337FC8DB7A3B0814F94FC3C22CDF5C5FE69D1183628EB9
          2394A13E28F28075A6E5ADC8095DC287DFE01DFF9AEC3ACA403318DD99141F1F
          C933A81214B9535BA1DD22BB8E87A8FBAD6116CB77BC358252FC97400C2C350F
          B95FA3D84F56EBBC16B9E4CD45D10A3179A170D0ABF09E0F1CEAEF0FABC8B56D
          83D7A1C0CDBCA313058122FF5D5464C425AB8B8B5447F481DE8141B7326773E9
          4CA587DD5D0C3C6BF2F735F3F6F7D58CB2E8F232D4FD01D9F5F42794750ED458
          CCE6E3D187CC981473FBEEEDB5F576BBC3F173B4E9B5B2EB7988FAFF363222E2
          B235256AFCF09500F725A7D5ED902F99151783CECCC9351B6BF427308139F750
          7F7B4845AE6532DB19111E5EBCAAC8F3402F87230814F95F6363623E5356E05D
          5E64C51CBAF49F6581EA9A8567EDA28884E9020277347574B2E1D1310A567204
          AFD8CAC100DA9492423CC86B4B5DCFCEFA46BB16C3FF6AD9F53C44FD9F888D89
          3E47E569F01D9A1077F7F74F41A1799E894B30A21439A15B047D1AEFFA734BFD
          DDE114F9F751DCE26D26B3C311E88ABCA67ACB3B0971B1C714E578EEE8AFF82F
          53361B65A6A2CB53F1ACFF255B9E85E03D272D33929FB5021D917FE01F5DD023
          B2D8D9106811C844A0254169C2B891E069F8CAE510E8630781F1E38D84D8D8E3
          BD0914A2F8207D8343AC7D2E0A5AC0EDEA8954E49483A4B6B9858C853B317694
          2C6538BB640783709926136B4E4A4888A6C84422A0309710F0010877B9901BF8
          083A62131E4CA14A78E01B0E87836DAB752FC4BF8C677DBF6C7916425BC0289C
          A256E4C4C4E414AB9DF385FD5FB4C1EDB2EB2C1A3A968222BF94B6D445B86ED6
          B5B451209EBFA22DCF925DD7A5C0F8D180F1A3588D1FBE33303CC25AF7B983C2
          24E1990FCB96470FDE75DAB26DE57946AE47E747BFE4D8712845FE80D96CFAD2
          9A92628FD3B42D971DF50DF6D959FB9D81180C8640471CCA48494E54090F7C27
          087CC9856DADCF43A16A874647C731CBCE09B4C1882768CB8FA0A8C946BFE1E1
          CEB7189448636C62F2990057E4FD789F52B2D5F8E13343A363E4634D97B978E6
          1DB2E5D183F7BD0045B328454E50DD87C7C647B02ACF46FDC717FE7E5145AE65
          327B73657A9A4964B290EDB5F5940EF2B6403558711B4065A49B450D46A1C4EE
          8626876D662660537FE259CF62C2169629F0594FCFCCB2DD8D4DE40F7B77A0E4
          67E70D856EA6C02F519111B915EEBCE2623CAF824191FBE39D0A15287A22B964
          81A24049713D0F9EF306145B451D4113B6E9698A824A97DF44FD7FB9F0F707F5
          323A2F44E7DB1A111E9EBFBAB8F04047A4E53DA56FCCCE4CE7166E30905D48D0
          0E14F16650D4B969A8A10DBC7FC3B3FE8C6C591603ABA7C18C94E4245EBB2F64
          E0479D2F25299185E98281E8D2F57E016DF198EC7AF306FD86FAF2B550E2A698
          E8FF467D1C9F9C64B4B3C72BC259A02B72B4032DCD4655C2253EE8D2D55296BB
          6DB2E5D183675D81624F495E2E8B8FB50ABB8FE65B4EEE68B90B23467E4091D3
          A13D14F7B3B83C9E92A5CF2B6C0A91B7B7A985D2059AC9CF96C72A3DD0833AA0
          2DC8CDA141254CE183F612BE5159B5E9C3B265590C28F2E694C484025EE799DA
          19AE094ADC8977C86C8D99EB4B64BCD2D8DEEE1A1D9FA044415FC1BBFFA0ECBA
          F3027D66358AED9810592875E73CF35E0B184F9CE585F95C42240681229F3B37
          CDC96689F162B65B43095DF2A5E3961320C59F500650146DA29FF5A4CD467A98
          2EBF8D36F8B9FE770714396D0F507E605C164220F3BCF29AB24D532774CCDA67
          6D1884ACB92B32591A87F0AC94396A677D235D7E1E423D2EACF65E82F6F8108A
          B7C975243646253CF095E6CE7DE482F53E14F991B265590C28F27F27C6C51DCD
          2B68C9D6BD754EF010FAD471F89494E6E71E981893157B5347272973F2B37E03
          93DAAFA10FBC2FBB0D7C41F3197F3B2CCC72E49AE222CB7C6E715A04EC6E6C76
          3A1C0E3356E82E5AA9F3B81F06340706364A1D7BA1ECBA2FD11EEB506CC77367
          715671ABB45041A7C44EF234A18868F0AC49598EF963F785B2C00D8D8E4C4217
          AF463BB4CEFFDC04210A51DE80CFC594179894F8FC9618590A52CC685CEEC760
          5385F2595E07FABAAD9263023497F0A7503CE76B207CC51C64713A3832BA178A
          7C956C591603CFFB2F78EFCFA1735D5FBF4B170BFCCBF83C0B05472E776BB3D2
          D34C7A7B0B8AFCB6AFB7CF65B7DB1F431F384F761BF802DA8FFCB97F431321CA
          8848D084A5AEA58D5C67C6307E74C5C7C69697E4E570B99F9634E5AE408D98A7
          657A7B4D653EE30365CADCD5D0449767E0993F2B5B9E85D4546F9EC84C4D8DE1
          151992BC5CC8DD8E2606F4993FE2A66C92BB1B9B1C1863C89595B2C18DD0CF4D
          5889F498CDA6D4F4E464331965D04C9A56CB1D5D3D6E03037CC1CBF807944398
          E2C9727B3175EE041910A65752FB2F093A22CDF4FFB0BEAC94F18C4815AA74E0
          A5EC1B1AEE8422E7339273C61D8ED762F9268F709ABAD4AD94F4E08F3463473F
          ACC62CFA8298A828575646BA89CED228A7361901A2BC1F7FF73FB2DBC087B6DB
          88FABD0D451D4147510429F1C6F60E1726EC74847032C691DF24C5C7ADA3E030
          3C0864FB1AAD4DD4428023BA1DDCCFE1993F215B9E85408FD62727C497E47372
          D5D68577A6737717FA95E9BFF66AB4086EA77ED5883E40791C7693221FC31FC6
          666764B8B7C1864647E94B282C1CA517256BF23BF0874EBC981422EECF6B4B8B
          19ADDC7D259023F510A8EFD751DC7EE4EA0AD9A21882CEEE1ED63B38D403459E
          295B96C5C0F3BE0AC59D1B2BCA98D9C74C773ABFF94BF567E0B8C739E88CBF40
          E7CBC3A4C1E1622E13141E1D591D85BFDB2BBB0DBC6CB7F3513C1415196922BB
          1A32ECA3890C29713AD7049F45DD9E7A8D6C1092120BE868CE576667EDE4BA4A
          97177A92EAD1CFED423B2C8FAE2B2B61A2DC774389A5FA54A080E7FD5C6C4CCC
          27D107B81C1D512AE47D3DBD14FC8576F51E4A4A8837156465B179271052E64D
          1D9D4EF43552F00F9BB4308AF7E1E35E89E087C31868E8FF7F8C06EBD7097A25
          8ABB36AE2A67660E2E258D6D1D6C7462E21D0CECC7FAB9CD9705EA7B2306F44D
          18D855FE520ECC4DDC0626F0BC03D27270DEF799C2F1A243FAFC7D5ADAC5EBD0
          877EBCE03E34AA7F029F93F0A16B7245AB935D7F6F417D1E0F0F0F3B674D7191
          89264023E3E3AC6D5F97D3EEB0CF6A59DFFE4E7F8705C3FEB4E4A415393A2338
          6F199B987027D10047E3FBDF95DD064BB40BEDB0DCC36362A860CC899769EB9C
          71F49578E6D5B2E5590825C8C173FE0E9E3797ED5BF210EB19181CC278993C9F
          4E9B32AB15E4641D48A94D4778B4D349BBDB264D08DA0F20232472B4DFBD5808
          49FCCD0FCC66D3E68D15E53EBF9564B9BBADB60E72386FC7BDBEEDC7F65E36A8
          EF6D6161615F5F5F56A2A6D31CD06698B378DE01B9CF88E74DDA7B78455A6A38
          8F732EED0CF777A86F95ECBA8904ED76018A87A322229C2EDAC69B99B190FB2A
          263117E87719782A72CD858FC6A8D840CDF58E76A171ED676A478F1FEFED76BF
          4E01191911CF9B8E9FFFC86BC75ACB18D90545BE52FB7ECA6D7F2FBEDB44C99D
          12E362DD47730D6DED4EDBF44CF3B297D6F8A23BF0255510D4E719872E5CE5A7
          F0509E17D5B8BEA03217F1653EF83F9E77C0E66686B2791ECFFCE3143FC1D7EF
          D2D22EBE5059B5F934D9F5120DFA0AC506F8023EB497FE0C3ECFE139BBF47F83
          B6ED4B4F494EE511E5ACBE955CFBA628BFFDF1B2EB7E8836B9092BA7EB36705A
          A12968976B2F792D7F0FEFD6CF64CBB2103CEF3214B585D9592C894382206D45
          3E8877FC80752CEE710426C9F7A311D6A3A41D3FDA6A9F42719A278AFCD198E8
          A8737958F592215DDFD0E004044809B400F8BAFAFEC91A1D7D6E79617EC02A9E
          604267BC9180673E2A5B9EC5C033BF08C543AB8A0A597454A44FDFA5A55D6C44
          472C915DAF408057BE77DDF9F8A211AE0205BC4BB78787877D755DA9DAD1E3C5
          D6BDEE5DDC1F066A9867BCE3DDC90909191444CC57BAFBFAC9A3E5A01D4C2D2F
          C4F1DA8776A31EC7DFEC5BB69282902FC75BAD2715FBE83E42B388ED750DE457
          FA2004F8B28806E5414DF5E67FC4C5583F51929F2B5B1443A0F35248C5731F90
          2DCF6268FEA0032BD252237C5538DAF6AF0D7555BE47CCDDB6335919E9E1BE86
          2BD58E6868B59F85B6ED925DAF43D4F7C1E8C8C80B57151706F48ADCE170A26F
          0EBB735F478487B1B494E40367B081C636287268F21FE1B96F922DCB6250A2A0
          F0B0B04BD69595F8FCCC3DF5EAF244917331AF1F1C1975278F001F8280FFF6B9
          F504A15298F245172BB9401FC820D0C004EE8988F0F0B32859902FDFD33734C4
          DAF7BBD32E5A51DF49D9F592C97CB8631E0133F634363B6D3333AF54566D3A45
          76BD0E53E727626362CE21E3C94085827D35B4B53B66ED76B27CA634995990D9
          CCCBF29A37819E640BCFFC6C144F561415B098A8289FBE4B17676559069D9E28
          F281F494E4645FCFB86A9B5B5D9336DB6E74C4B55C5A4F10A86F2D262E65BCFC
          02439D6051E4E88C9F45F17879413ED38755F5D4516378748CDC43E8B210F56D
          915D2F99684998DEF235A9842E4C67C0BA9DCDC36B07531494C087F25C3B9C8E
          5EBCDF27A23DEB350FA6070335884D1028720AE137C863474FE737BFAC9C0C9E
          9C91FB9C094CD71103D217500F4F2B5BC50766981BF0ECB7CB966729E6B277B1
          BED4A42477386252C86D5DDDAC02839B27D6A8BA1CC2C7A2BEEFC8AE974CD0A6
          64B97FF7FAF2D20F2490F1142D3A20B9C76606AA6DCD3C183FB626C5C76DE015
          00872774BC49B900B0A01AC535C530706B0C3C27CAE13B10A8895E763736DB6D
          D3D30F05F891ECDFA322233FB1AAC8778359CD85F57AD4F7D6C3FDEDB214391E
          306549E9A3D5694A6282D782CDE5631E1B82702B82A0237231CE110D05DFA0D5
          AEDD6E67B1566BC0C6850FE4EC450BA1B32E8BC572C9FAB2120BC9DDD0D6EE1E
          D83C49A842678EBB1BDD212503D633C35FA03DEFC324E8625F3C5EC8D566475D
          030D6C3F0DD4B4C77A307EEC494E88AF08C41D3DCD8384EC0C4E5FF86EE259B9
          68F1929E922C5BCC83D8D3D4EC98B24D3F0C992F912DCB52A0FD2E47F15B1E6E
          68BB1A9A9CD3333314F5F1F2C3FDED721579398ABDB44D444EE9DE40D6A63B1B
          28A29CEBE6403556585067677666862923005FE8794881B776EE773A9C4E9AFD
          915F6D7841F64A969CE0FD644B14935336B6B7D9BDC3FC613CFF3764CB7328E6
          E364535E81786B2CC53C70BB7AAC2929322D370D27454984E2A1CBF350DF3FCB
          AE934CE8982A313EAEACD087D5694FFF00EB9C33722B0A86A30AD4795F5A72D2
          CA40DBD1A3D0B93BEA1B3164381EA9AC726FA51F408BA53011A82BF2DAE656C7
          C4D4D49378FEE7CA966529D086F4C0BBF0DC4DF393211AA7BBFB061825D0F124
          38102D20B09078ADB26A53E5E1FE76B98AFC4414AF561416307D8E614FE824BF
          B8FE013B2E73F020BAC537A9F7F8339B8DB78C8EBB5343D2E92D65CF221FDE5E
          9389BD1C1E167E0266830167761AC8D98B16A265F26A898FB5E651EC704C405C
          988898B0C262CBDD2AA50173EB5CE2942B50DFDFCAAE932C34E530E6E9B11C85
          A0D447D8DB59DFE89CB5CF925FFEA764D7693904EAD19C6E67EC78BC976FE97F
          4769AC510CF9BAF32A0A2D35F05F033575ED3C9449313626FAA8D2FC39A3C179
          0B74724B4B495CBE3EA1A429FD43C3FBA0C80F6B71BD5C45EEDE2ED8505ECA2C
          5E9C71519C5CCC0229ADE37DC1901C02F5A53DD4FDBC9CFB7943BB1BBB9B9AA9
          3D7740897F743E030EE4BE0245B5B7CF4924BAADE6D320EF0BB2E5391CF391B9
          688B8C5CC9C80F9EC0AA9C2D7755FEDEEEBDB4820CC80016FE02ED78028AD73D
          097D4B2158078647D9BC3FEED0E8186B9E331CFC04DAF29FB2EBB41C30988F64
          A6A6C407DAD1DCE0C8883B1526203B831EFDEFF0ACC832AFBD30279B2505600E
          F540CF413F0FDAF1BB287EBCBEBCD4F4FFED9D099C1C55B5FFABBB67EBEEE9D9
          B7646692D9B7846CA88092888AA0F090E5818882801BA3E813501FE24332C15D
          59157410904DDC155004141EEAB088685692CC3ED9269964F6A567E9995EFEBF
          D353EDEB7F4832555DF756F7749F2F9FF9DC2299AE3A5DB9E7FEEAD63DF71C8A
          0909C58641DC03B5E5DAF392A86FA1A8384A2ABEB3F744BFAB55C8EF8041FF15
          69652875733B0D6A35A1C08A5806DFB71C4D8FA892ADA2A199F8B87BD20D115F
          89FBB93FCCEEF7A37926162B2E8545615E089B9F8CB63D0B817B998159F9E1BC
          EC2C3B15BD38D43FE0B75894A99CCCCC74ADEB9EB19EC0C20C701FA9CCE8DD6B
          EA6B35ED4FF6FB03CACECEAEE08CB058DD21A3EE74A1C89F1547678C8B556235
          C6A67F7824989F1BA41D1DA7847FAB32347B6275DC5B44421ECCF2167AA34BF1
          1DDBE70BBE282B301148D33811D0B3F3459390B73437FDC96977BC57CFFE4232
          9E9E46C831DFE8E8A46D0EBFDBD0D8744994EEAD2EF00FB106CD56A3DB656410
          16F97F25FE711F3DCAEEB7A2795D54E10F918409F925B0FB37D1B6470B946F1F
          627E7D7E7696950640B0093FB760966ED112C8C2421EBC878FA4A6A47C446BAA
          E35006C050C015BD626FDF137C15FC51DCC7C7A2FD7D747C6F6F496181CDC82E
          1F199C2855722C8F7B046D5F1D73BBFFBAA171E3BBA26DCB42D0AE05A7DDBE3A
          A4996A04BAA5283F4F29D6F8701736D653DDF1574FF4BB1A857C532F9E2C8AF5
          9420A485FA72CC5C687D400D523919C66C8DCE6DD5472C77688A3580338EA153
          E41DFDBA057657A0E9A675DD4C576C15198BF53284C702F7B300424EA1D2343B
          EFA73720F8E3839869251787E55338DE3EF31DED9D73735E2F9501BE21DADF25
          5A60ECD896E54A5F5DA131B112C60D7ADB6409CD66BAF61F50F0FF4770EF97C5
          6A81946311ABD1DF0B083915CEFA572C4E040855C85F81909F1E6D5B16225416
          393403C78CDC87C9AD2D3929C9A735F35BD8E4E783F8F7FAF5897E7741218741
          F41E60464F0477E8A99A5E41A2D3508424CDC66336D2F018DF793EB84F40861E
          D1D05AE1E884FB9FE8CC6F3B86DDF4A8D71F8B91EB8B51C809DCD37743C46F83
          90DC0DBB1FA1D49B369BEDF25535D536AB75DE7DE861F558C141B19EC0C20C20
          E49378F0716879C54C0182E8237EDC6B2B892025E45167243159F1EA78502E02
          3453CB961629F9D9D9D136E7FF23B4F50CF7F34DEB1CB0FB0C347F89C5718F58
          64428E877FA52F372BCB410FA5EA58404142B514BDEE723A173C07ED94D9325F
          BAF573F8F7BAE744BFAB45C8CB145A37C1137596C6000875FF5BB0A3A8D55956
          2D86B5F1B0EF7C8612A31D5A5D277A06F7F3DC63D84DC64ED39B93FC9CD81A40
          16AB901F0DEEF16A34DBC27734D0BF0945B3D35A3A414FD2F4EA1DDF175FDBF7
          6D7CDF9BA36D7794EE55F0C1526B14F4D8447027061DFA733233AC9ED9395A1B
          1FC480B61CF7703ADADF47C7F78ED9E86F0AA03AD8DF3F8789D59B166A6137A5
          BD7DBEA1AA42B1A71A2B1A240312F2F149F76BEBAFD9785AB46DD102C5966112
          701DBD5E6FDFB38F1E50693BCCE7D1B773B5C6D96C6B6BC744DEFF9D85C6102D
          42AEEB754BD87E61CA4643EF771F81119BA37D53F5A09665FCBD9E0865B368DF
          B3D7EF9E9AFEC3F1023E686DAEB8B0C066B4388568C2B6637D0CB63F146D7B8C
          40E937936CB60D2BAA2B6D14C0D5B5EF80929C9C144C18138ACEA754C614E009
          BE8AEFFB8D68DB1C0D42413F5AF34FD05BBCA1D1315A367A00FFFB05FCD0D2D1
          F9B87FCF44FBBBE8FCDE312BE40BBC5AA731E5095135B545332FE493FF587FCD
          2DA746DB162D508D0108F70E1C16D3FA385A7A00B9C46AB55CB7BAB6C61ADA53
          4E856B30901CF31C5ADFEA6911F233D0FC456BFE5DB544E90C66E1F9B8B83BDA
          37331262B9432F94DD0822330E1177C55AB42CB179572B358BEA35E9B1501F6E
          FF999F936DA1B71F94B1908A01514C456A4A72685D2BC479F8BE4F47DBE628DD
          271AB85E0D8D1DB42CE4401B7AC81C191F0FEE6BA6D7E818F028A6C03FE7F5FE
          0C7FF551FC5040534F2CE7E53FC1F70EA63AA518A19CC525E4148CFCAB5535D5
          C107D358434DD1BB33D6EB7484A36E65BE1E3FEDB8E70FE2FF57E1787BF81B3D
          7A4B426F508F952C868A044DCFA7A5BDFA44D7D122E4F5743EDA9290644B2267
          0C94952CB564A8EFF8C7DD934A46FAFCF17CD6202A51EA7F0017BE26DA373152
          F09D3F8CE6713C35294949B1B51F5B8390C764220A225E849C401FF91A9A9B97
          E4E751E6A600FE4D2CC94949FE92A202ABBA4FF736FC506AB7FB17CB962909F7
          E8DFBB2892939283DBCA28F82BD43729B08DA2D2D7D6D759C222742FC2FD7A22
          DAB61BFCDE654A8C6EE35A40C8AF42F3502CE6A12054216F85903744DB162360
          8C7E253525E5D41555F3F9D8A9342F696768F2454B4C3421484B4D55DAF6EC0D
          4C4E4DFF16FF5E27DCF1A545C893F0B43CE4723A32663CB3FED9B9396BE809DB
          878BBFD1DEA9D4559407F72DF7A2831C191AA60DECB426BE2BDA372C5262B943
          6B10F28EDCACCC6A3D79C1CD22CE849C7C87C4FA7AF58F6E819F7C21100864A1
          A57A024BF13D67A26D673409CD4C69063E3533138C46A7AD37B405876A04ECE8
          E808582C56FFDAFA5ADB7C16AB91C94040C98DF53A0C1ABE7799B288851CFF1E
          BA52899A45BC0839EEF3FBD03C1B8A651A1E1D53F6F5F52994FF83DE00E38117
          3AEBB540D82D8323A33ECFECEC82F9E5B52684A16A33F7E38744DA1612387A92
          3878A49F2EEE773AECD691B171FA75CAA57E4BB46F96C11B4D372D9685FCB1E3
          BD6A89E5AA4BF124E421D0572AD1A4E03BB5E2982258287FF533B15CE1CD4C5A
          9A9B7E0671BE4C99AF056059929F9744338F90A010053939B41C4741BADF8F87
          08FF452CE474EFEF3C79457DB4CD3C26F4A66B74627CC7FA6B36AE8EB62D46A1
          2A6978883DBBBEA2DC4AE9AB6979CEE574066ACA96595ABBF7F8F06713F8B550
          3E57E351EB21D4A7EBFFC26CE396D5B53596F14937DD58087BE06F380D2D9E2F
          8727FE08EDD717FBABC44520E4279A91BF94999E7E3A0D22B1869A14E14BB0FD
          F668DBC298037C89A676B455B21B63C75369A929A72E5FBAC4D2BDBF97F6D5BE
          8C3FDF8B3E7139FEEE25B41F40DF9888B6CD02BE739912A3423E303C12CCE10D
          9270AF7D47D91DD342BED8A2D64F04AD9DA3CF6FB1D9ACF98EB434DBB87B9226
          C9565A37C70CDDEF0F04BE83FF7F043FB40EF5D2429AAA59C8D58B9F82862A57
          05D50D86BC0AE73B2794EB3B5E58CC420EDB9F74391DE753E055ACC199CE121B
          DA938F8622D05369B90E630755C26B8BB65D12BE6730AEA8BA6C9992A161BFB0
          99840A78806CDCFBD1A3EC8E79215F2CFBC8B54009BCE0070FC30F4857699706
          89366D33A3A5A5357A7C439790AB17A788C133F0D3839F6771317FB46F8868F0
          1D3F82E6A78B54C81FC713DE87EA2BCB636E918B859C41FFA4F4909421EF75F4
          83F168DB23E93BC66C664816F2D846DDB2E9D1BB5B43B79027028B79FB196CFF
          716A4ACAC7B4E6B63613F5D5FA9761FB77A36D0BC3C862110B39056EDE0E218F
          495D50EB73FF0942FEBE68DB126BC4E43F58B459E4427E577252D2B5AB6AAB63
          6E23683C06BB31CCD12C6221FFAAD56ABD656D7D6DCC8D1DC462A97E160D58C8
          8F412C0B796BCF1EDFD4F4CCE3E8CC571EC7F62638E3CDB4A527DAB61E0D0B39
          93082C62218FE957EBBBBABA7D339E59CA14FAF168DB126BB0901F0374E873D0
          FC514FED58B3A09CBDEEA9A913A568FD129AEFC4E2EB3116722611602197835A
          41EC36D8FDE568DB126BC4DC601F0B2C82A2294F9D40C8AF4573CFBA86BA60DA
          CB588192076D9BCFB5BEA88BA630CC42C4B2908F8C4F0453E58225F0C3C347D9
          1DD342AE4E04BE00BBEF88B62DB146EC8CF431043AF43A349B63D1113508F955
          4A0C6E9D8B97EA670CB310B12CE48B7546EEF57A95EDED94F158F908ECFE59B4
          ED893558C88F013A741D9A56AD559BCC448390C7E4FABE67762E986B1B5C08DB
          9F8CB63D0C230BDA1F8CA6BB6A19C60F576C8D1F0B08F927D0DCBFB6BE4EB15A
          634B1AC272F16F80DD2F45DB9E5823B6FEB5620474E8023447CA4B962A3999B1
          55BD488390CFD714AEAC50EC69B1535338CC112909C82BD1B687616411CB99DD
          06474683E56241E6D1FBF863F56D1E11F600F2A625018685FC98A043532FF652
          9526AAD6144B74ECA5BD9493271272CA12F45A6D799992EE58B8ECAC598CB9DD
          C1BADDA03E1EB379314C885816F2C55AC6F450FF80727870707A4363536CAD55
          C4082CE4C72156EB7A2F94DD08CE48958176552F5FF6EFF2B2B140D81335D5A9
          1F8CB63D0C230BF8200D1AFDB1588FBC6F60907EA6307EBC697088E5DD3A3DBD
          0795D1F18945558BDC4C58C88F0384BC3B372BB322D6CA816A10F25234FB2B4A
          8B95EC8C8C689BFB6F6800C153F52C443C76DEF7338C04E083149C321B2A5319
          4B50A9E9FEE191018C1F05C7B0FB9D68FE1A8BBB755ABBF7F8A766667E8DF1E3
          43D1B6251661213F0E10F2E75D4EC79934B38D2534083995BE1B292B5EA2E466
          65E93CBB3CF61EEC5386C7C6BA607775B46D6118D9B434377996E4E7A72CC9CF
          8BB629FF1FB43E3E343AB6077E5871F4DFC56AB47D2040751ADAFC8140601384
          FCD668DB138BB0901F0774EAFB535352AE8EB59CE55AD214C2F640ACADEF93DD
          EEA9A9673634369D1B6D5B18463698080CC2FF724B0A0B8C9F4C2054F77A647C
          621B847CEDD17F8771831EB23B622DDA7EC6E3517675518D2EE5028C7B4F45DB
          9E588485FC38A053DF62B15836AE6BA88BA92A626D3D7B0393D3D3F48AE9D2E3
          FD0E660353980DD8636936B0A3BDD337E7F5FE1076FF57B46D6118D9BCD4BCA9
          27272BB33CD696E6D46059AA5A79CED17F4735B2D11C2A2F295672326367596E
          786C3CF80002CAF556054B1458C88F43288273657595929A123BFBB1777676F9
          3CB373F7A3437FFA78BF83D9C000660379B1321BF0FB03F46A8C0EAF83DD7747
          DB1E86910D7C707356866B5D054431963851BE728C7914AA3E176B6FF30E1EE9
          578E0C0D4D6E686C8A9DD70431060BF97140A7A69AC96FC4DA6BA6ADADED7E70
          2B1C71D3F17E0783484F5E5656F9B2A545D13637C8D4CC0C05ABD0E17B61F70B
          D1B687616483F1E35997D371764DD9F2981A63D57CE5DF831FDE74ACBFC7D831
          5A989B93591C23930082B6AD8E4F4EFE7D43E3C6B747DB965825A63A592C0147
          A4FD17D398D55A0BF372A36D4E10083809391D7E1A8ED87CBCDF83336ECFCE70
          AD2A8F91D900277360120D8C1FF7A5A6A47C6C657565CC6CC8A6A0B12DBB83F9
          CA6F801FDE79ACDF79A97953774E8CEDD6511F3E7859EE04B0909F0008623B04
          B126560471DAE35176CF077DBC1F9DFAB913D8DD9291EE5C4F6F136281DE23FD
          9488620C4FD4B11346CF3012A1DADE168BA52996626CE6BC5E8A55A1C3E3E62B
          0F8E1D4E8C1DCB6363EC989D9B53DEE808A676BE1C363F1E6D7B621516F21340
          91EB29C9C9579F5453151391EB63136EA56BFFC2D9D160F7932EA7E37CDA4612
          0B74EEA3009BA99721E4EBA36D0BC398017CF06A343F595D57A324C548BA532D
          F9CA61F7CF1DF6B44BEB2BCA63421B46C6C7959E03C140B75AD8DC116D7B6295
          98F8C78A5542450456D5562BC949D17F43164AAF08D2D0A93D27B0FB117B5AEA
          471A2A2B626204E157634CA2011FA4F5DC576ACB972BE98ED8D8931D56C2F4B8
          D1DFB0FB2E8C759FC59817136387FA366F221008506EF840B4ED895558C84F40
          28DD69656989929511FD9CC96A56A641CC6C4F98371676DF93929C7CCD493555
          517FFA087B3576251CF1D168DBC33066001FA4C09A415A6BCECB8E8D15A52398
          08600C21314C852FCE1DC7EE1BD0DCBEAEA14EB158A22F0FED7BF6D176DB1731
          E69D196D5B6299E8FF4BC530E8D4E8CB96FEDCACCCBC5808FE50B3BABD8E4E7D
          CA02767FCD66B5DEB4A6BE36EA4FD5A3980574CFCF02B8580A9350B4346F1ACE
          CFC9CEA6ED5CB100BDCD1B384E7AD610183B2E42F3DB58D8768B59B8B28D76E9
          0402DFC2D87173548D897158C817001DFB27C949491F8D85574DBBBB7AFCD31E
          CFCFD0A9AF58C0E6EBD0DC79F28AFA689B1CDA033A0D9F4C87DDFE68DBC33066
          01217FCE614F3BABAEBC2C26C6597AA01E9B706F8690BFE578BF83B18332BE6D
          A9295BA6B89CD12DBA14B6A67FC2E05E86857C41D0B12F46F3EB58A8EFBD7577
          1B3D9D9E700FB96A3309FDA3B11068D34999A4A6A65A3078BC33AA86308CC9C0
          0F375A2C965BD6D6D75A63E135B53A11F839C68FCB4F6033AD218EC742C11735
          26889602B261F358548D8971A2DFBB621CB508C9607141BEAD288A294FC3B68E
          7C149DFAB1056CA67CE64F47BB1C21ED5BDDD6164C60430928BE1C354318260A
          C00F695DF7F95809785393497D1DBEB8F144BFD7D2BCE9707E767661E992E82E
          0950B4FAE8C4442B26010D51356411C042AE0174EC171D696967D45544EF1599
          7B6A8A023FE8F03438E26B27FA5D0C20A7A17915F62A4EBB3D5A262B53D3334A
          6B4F30A3DBB9B0F999A819C23051007E988689F858515E5ECAD2827CE3273480
          171381EDF31381ABE08B8F9CE87731DEFDC5E5709C515D16DDCA8FEA6E97FB60
          EFB551356411C042AE0138E467D1FC209ADBD086464783A540411E3AF6D002F6
          06AB18552E2B51B25CD18BB6E757634CA203517C362D35F5AC86CAF2A8268671
          4F4D6322B0970ED7C3175F3ED1EF62FCB857DDF512B57539CFECACB2B3B39B0E
          3F0C7B7F1E2D3B160B2CE41A40C7A647D37D94BB3C3F3B3AEB4687FA0794C383
          543860E38289DF692680663ADAEB5CB4677574C2BD1B36AF889A110C1345E08B
          8D687E045154208E51B3232C4D722184B17F019BAF47734734B7A00D8E8C066B
          A78352D8DB1B152316112CE41AC193F5CE8C74E78A68A53D25271C1E1B6F8328
          6A0A458F85E207DBDA3A7CA0198EF8D9A819C1305104A2B8144D6FE992424B41
          4EF42A8ACDEF1E197663FC58F0155DA8F263341F3EF6F41EA2AC6E7B606F4554
          0C5864B0906B049DFBEB783ABD295A11A86A1DE167208AE76AF97D08F9AEEC0C
          5743B4F2C487553CBB08363F111523182606802FFE33DD613F399A95D0D4AD67
          5B208C272FF4BB18EBDE81E6E568C6D8EC68EFF4CD79BD0F60EC688C8A018B0C
          16728DA073539EF0160A00C988C2FECADDDD3DBEE919CF4FD1B1AFD268EF5318
          3CCEAB8DD21ED6238343945E91F68DE7F0FA3893C8C0176F44F3ADD575359668
          6D0755EB903F0E5FBC5283BD75685AAB97972A19E9E697700E5B1FBF0CF6FEC2
          FCBBB5F86021D7083A771266E2A30539D9CE9228646ADAD1D1E99D9BF3DE8B8E
          7D9D467BA39A33B963EFFE807B6AEA9F0B65A163987807BE588BA6ADAC78A992
          9B9569FAF5691BE8D6D6B600B819E3C73735D84BAFF17A2B4A8B95EC8C0CD3ED
          1D181E51F6F705AB1D73D9638DB090EBA0A5B9E9C9D494D4F3565455981E81BA
          A31D42EEF5DE8D8EFD452DBF0F67FC3C9ABBA211B04275D3B7B575D0C0B169A1
          E4350C9308B4346FEACC74A55751DD06B3F1CCCE61861BAC77F09FF0C7DF2DF4
          FB183B48BDC7A295279E2A3C8EBB27394856072CE43A0845A0AEAEAD519292CC
          9DE86E6D6DF7A9C91C9A34DA1ACC991C8D8095B0FCEA6F81BD9B4DBD38C3C420
          F0C76FE281FAC63575B556ABD5DC6177CCED56BAF605CB1FAF823FBEA1D1DE00
          E5882FC83537402F2CBFFA7761EB4DA65E7C11C342AE83D0DA51345E39A95999
          9AD0B9BFA6D1D66019C56804ACA811F687E1944BB9F420C304FDF16D68FE118D
          DC0E61F91CEC272A7F1C4E4BF32677515EAED3EC4436139393C1C05EF04ED8DA
          62EAC517312CE43A41071FCACBCECAA13DDA66B279572B35D7A373DFA5E5F743
          496168BB5CA6CBBC80157AA2DEDEDEE1F7F9FC547FFC73A6DE24868951A25949
          91D69B074746FB36346E5CAAF53318E78E14E46417981D0FA4966A9EC4389285
          F1C36BEAC517312CE43A8143FE322D35F562B3D7C95521BF0E9DFB6E8D76068B
          1F98BDCE3536E10EAE71813360EBDFCCBC470C13CBC0271F4C4E4ABAD2EC00D4
          CE7DB47575EA2F10F2776BFD0C84FC507E4EF612B34BB0EEEAEAF17B663D4F6D
          680C2E0D321A6121D74934D6C97D3E1F058FD1E1D510C78775D8EAC713B5A5D0
          C4752E75BF6A2F9EA897F16B7586F93F42712BF595E58A232DCDB4EBAA5BCF1E
          853F7E4CEB6720E4FBF2B3B396959AF8E671766E4E79A3231894F749D8FA8069
          178E0358C875128D75F248851CCE385194979B6ED63A171566D8D1D1496FD769
          2DFF56532ECA308B04F52DD908FCD1B6C4C44A8A6A86450A1EFB8AD6CF60ECD8
          9D9399514F5BE6CC226CDB19A765D5090B790498BD4E1EF6A4AA2B4B9AD9AFC7
          0E0F0E512A489A852F879D074CB928C32C22E0937F73D8D3D6D79998A869CBEE
          36BFBA87FC5B3AEC345DC829B27E7C7272D786C68D2B4DBB689CC0421E0166AF
          938709F98570C627B57E0ECED80A67AC33CB1961A37FCE3BF7CC86C6A6F34CB9
          20C32C323076DC80E63633B3BCA9F1359FC7D8F17DAD9FC1D8F1AFAC0CD7C915
          26A578F6FB03CAB6B6767AE0F806ECBCC5948BC6112CE4110067FC349A1FC219
          15339C717AC643295AE9F03DE8E42F6AFD1C9CF1EF99AEF453CD4842115626F1
          7CD8F87BE917649845486869AEBC64A99293293FCB9B8165B99733D3D3DF41DB
          E5CC202C48F614D8F9BA29178D2358C82300CEB806CDD6AAE5A54AA609B988C3
          0A90BC0B9DFCAF3AECFCA3CBE93CA7A66C99741B0FF41D56064646DD78A2CED3
          BA579561121188E481EC0C578919058DC2DEE65D0CBFFCAD0E1B4D15722A593A
          343A368CF1231F76FA4DB9681CC1421E01F379D71577515E5EAA19816461B3DD
          B7A293FF4B879D3F73A4A55D5A5F592E7D0940AD56F418ECBB5AFA0D6198450C
          FCF21E9BCDD6B8A6AE46FAEBBC19CF2C45ADD3E1FBE19BCF69FD9CD9428E870D
          1F1E3A34157561DE0C0B7984A0A3BFE4723A4EAF5E2E7FB63B3139A574ECDD47
          876BD1D1B769FD1C068C1FA5A6A47C62657565924CFBA6676694DDF36F0C2E81
          7DBF917E4318661103BF3C1FCD93666C439B9A9E515A7B82BEB901BEF992D6CF
          9929E4616F0D74BDFE67FE0F16F20881337EC76AB57E91EA93CBBE5658AEE45A
          74F40E1D36DE959C9C74EDAA9A6AA942AE46ABD3EBB06CD8372EFB7E30CC6206
          7E498BE3C3258505D6C2BC5CA9D78A741260A6900F8F8E297B0E1EA2C32AD8D8
          2DFD8271080B7984C0192F40F3C48AAA0A252D3555EAB546272694EEFDC16D95
          E5E8E87B75D878ABCD6AFDCA9AFA5AA9AFF0D46A455B36346E3C59EA8D609838
          0142F9BACBE978ABEC377A61634725C68E1E1DF69926E4FB0F1D56064747FB31
          7E985F1F3A4E60218F1088246D22EF332305EA109E58F7CE3FB1D28C7754878D
          4D56ABF5E6B592859CAA15F9FCFEDB60DB8D526F04C3C409F0CD4D168BE5663C
          645BAD12CB0C0F8F8D2B7B7A0FD2A1AEDADE660AF9CECE6E9F6776F657B0EFC3
          D22F16A7B0901B009DBD0F225E243B314C58C623AA5E34A3F573182CAE4773C7
          C92BEAA5D91656EBF852D8F62BA9378261E204F8E67A342DB4A3C4E5744ABBCE
          E0C86830221C64C03F27B47ECE2C21F7FBFD54D9910E35178462DE0C0BB9015A
          9A9BFEE048B39F5B5721374BD391A1E160552074745DD7C160F1793477C914F2
          B0DAE375B0AF5DE67D60987801BE998C89F878616E6E5A716181B4EBA8254C75
          8F1D6609F9E4F4B4D2D6B3970EDF0D1BFF22F562710C0BB901E08C5FB35AAD5F
          911DF076A87F8002CA2637346ED4B5691DF65D85E6A13575358A4D52E29A79DB
          063D8180E2E0FD9F0CA31D4C04FE8489C07B654E04FA0606F13330B5A1B149D7
          B4DF2C210F7B639083F16344EAC5E21816720340283F88E6972BABAB94D49464
          69D73978A49F66E54310725D951660DF15681E9599814EAD76B615B6AD937603
          18260E817F7EC562B17C7D4D7DAD45D63A792FC68EFE08C60EB3845C4D247504
          F69957662D0E612137001C91DE59EFA6CE9EE57249BB0EBD1A1B181E3984CEAE
          2B155428B2FEA49A2A252559CE83466BCF1EFFD4F40C05AA5C26ED06304C1C02
          FFDC404D6D799992EEB04BB906C5D660D6BB1F63C7723D9F334BC8D51D2FAFC0
          BED3A55E28CE612137001C91F69D4D9716155A0A24D6FCA688F5E1B1F15674F6
          069DF64917F2EDED1D3EAFD7771784FC8BD26E00C3C421F04FAA833C46C1B2F9
          39D952AE4111EB23E3136F60EC58A5E7736609796B3726023333BFE4887563B0
          901B041DFE089CB04066A9D01E38E3E8F8C46638E35BF47C4EB6900702542231
          5859E98B70C4DBA5DD00868953307E8C16E6E566164B4AF5ACCE78FF86B1E30C
          9D766DC9C9CC582BBB72E2F6364C047CBEDB79EBAA3158C80D820EFF0F3CB9BE
          4DE693ABEA8C2FC319D7EBF91C84FC1C347F5C595DA9A4A6A408B72BACB2D255
          70C447A4DD00868953307EECCBCBCE5A266B0B6BFB9E7D8A7B6AEA09F8E7453A
          ED32A58CA95A629527020661213708C4F2178EB4B44B641626A1148B1393534F
          A1B35FA0D3B633D0FC45564EE748EBA4330C330F04736B76866B8DAC4A68BBBA
          7A7C331E8FEE62461451EF723ACF929979CEE7F75332293AFC38ECFB89B40B25
          002CE406A19CEB4936DB17564BAC64A40694E95E47826D1440F2527D0584DC2E
          5EC8C392C1700D7286890008E60B2E67FA7BAA97974A39FF8EF64EEF9CD77B2F
          FCF33A3D9FC3D8F1505A6ACA152BAA2AA58D6B91965865DE0C0BB941D0E13F87
          E6FBEB1AEA148BA42D24EA53F5A3E8EC1FD369DB4A346FD0537546BAF8EC5191
          D6496718661EF8E8932EA7E3FC9A325D41E59AD9DADA8E89AFFFEBF0CF269D76
          DD82F16C23C635696F1AA73D1E65775730FDFB59B0EF7959D7490458C80D820E
          7F299A5FACAAAD569293E41419DBD181A7EAB9889EAAA9B4D26059F11225374B
          7C3EF8484B24320C330F2DCD39EDF60FCA4A0AA3AE41DF00FFBC53A75DD27364
          B8A7A695F63D7BE9F014D8F7BA948B24082CE40641873F13CDF30D95158A3D4D
          4E15B4ADBBDBFCFE40E05674F64D7A3FDBD2DC34559497675F2A212A36D21289
          0CC3CC83F1E3618C1B9763FC10FE0ADBEBF5D1F6503ABC12FEF9A84EBB6AD0B4
          579696285919727264849567E6F4CE06612137083AFC6A34DB64153FF07ABD70
          C64E3AD4ED8C444BF3A6ED592ED7AA8A52F1C1342CE40C630C99421EB6F47526
          FCF37F75DA45C9E6263109489331092022ADCCC6BC19167283A0C39342F6D236
          8DECCC0CE1E70F2B2AB01E9DFDE508EC7B342D35E5232BAA2A85AF75B190338C
          31E09F0FDA5353AF6CA8122FE46313EEE0D65525C2192F2601FFCC4877BEA56A
          999C40BCB0AA8E54A7615ACA451204167283C011291C7C5A5676A6E1B1313CB5
          066B9197A2B3F74660DF97F164FDCDB5F57516D1C1782CE40C630CF8E75DC9C9
          49D7AEAAA9161E60132694E9F0CFC9086CFB517252D22757D5564B895C3F3C38
          4475247CB04D4E705102C1422E0074F80065769391A655AD2E36BDA1B1C911A1
          6D1F40F3D48AAA0A252D55EC1AFEF8E4A4D2B9773F1DD6C319DB847F79868973
          640AB95A35D1BDA17163448BDCB0EDA3681E91951952B56F1CF6650A3F7982C1
          422E0074F899E2C282D4A2BC5CE1E7EE39D0AB8C4EB8B7A3B3AF89D036CAE8B0
          AFBC64A9929329D65F46272694EEFDC19704E510F2BDC2BF3CC3C43932855CAD
          D1D089B1A32642DB82016FB2960DD562507DB04F6E1ED80480855C002DCD4D13
          457979E9328242D43DE43F83507E3472FB368D14E464679508CE07CF42CE30C6
          9029E4F4B66C626AF2F90D8D4D67457A0E1A3BF23176C8A825B1F7601F2D1D76
          40C86B859F3CC1602117003AFB50616E4E0E66E542CF1B080428A1039AC0CD10
          CA6F466E5FD3730EBBFDACBA72B17B5559C819C61832857C6767B7CF333BFB10
          7CF393919E0363C71FEC6969E7D457884F41AD1683DA02213F59F4B9130D1672
          0140C80FE1A97589E8A756382139231D5E04677C22D2F360B0B8D56AB1FCCF9A
          FA3AABC8783716728631864C21C724C00F22CA3F11661F9527FEEEDAFA5A8BD5
          2A56CBD562502D10F2778AFEEE89060BB9006409F9B8DBAD74CE274C5805677C
          23D2F3C019CF45F3B4E8E22961F6D5C0BE4EA15F9E6112005942EEF3F9956D6D
          C11D679F826FDE6FC03E2A9DFC4FCA059F919E2EF4BBABC5A07E0FFBCE177AE2
          0484855C00B284BC7F785839D077840E0DEDB384335238FD60E992424B418EB8
          C87ADE7EC630C6A0E224F6B4D42B44278499F17828BE860EDF0FDF7CCE807D36
          8BC5325E909BE32811BC7448E959DD53D3BF817D97083D7102C2422E000A0829
          CCCBCD2A161CECA646751ED9D0B8D170B162D8D89AE572D589CCF0C642CE30C6
          80503EA2667613FADE7ADC3DA974EE0B6E0D5D09DFDC65E45C2DCD4DCF3AECF6
          B345C7D8ECEEEEF14DCF787E0AFBAE1279DE4484855C00104977515EAE5374D4
          3AE5211E9F9C7C0942BEC1E8B93060DC9B949474CD6A81C91DC2847C1D9C71AB
          D02FCF300980ACEA678323A3CABE437D749803DF1C3168E3D7AD56EB4D6BEB6B
          853E6CECEEEAF14E7B3C8FB3901B87855C00549864497EBE7D497E9ED0F3EEEC
          ECF27966E70C459D8680335209D40757D7D5284936315ACE654C19C618F0CBA7
          5D4EE7B954AB41247D0383947065167E69380B146CBC12CDC322C70E02E3DB1C
          C6B70760E367847EF9048485DC20E8E494F268B674499152203845EB96DD6DFE
          4020700B3AFA3704D8793A9A97EA2ACA14A7DD2EC4BED9B939E58D8E2E3ABC10
          363E29F4CB334C02D0D2BCE9E5CCF4F477542E2B117ADEFD870E2B83A3A3FB36
          346E2C337A2E8C1D17A079427486378C1D5E8C21BACB33336F8685DC20E8E44B
          D01C2A2F29567204663FF2FA7CCAF6B66009C2ABD1D11F1660276586DB4AAFF0
          5CCE88B2BDBE091F6CDC366FE355B0F111615F9E61120408F92E8C1B0D65C562
          939BA95BBB5E81909F6EF45C183BDE87E6D91555954A5A6A8A301B7777F5CC4D
          CF27BBBA4AE8974F4058C80D824EBE0ACDF6EAB2654A86C032A66151A7EF4347
          FF93003BABD1745025A34C97B86D245B76B751C29AAF8A786BC030890684BC37
          3F3BAB98DEE889A4B57B8F7F6A66E657F0CBCB8C9E4BD68CBCAD67AF7F727A5A
          888D890E0BB941D0C9DF8BE6CF0D55158A5D605112F7D474707B0638051DFD75
          01760A9F9113BBBABA7D339E598E3C65980880908F15E5E566880E94DDDED6E1
          F3FA7C77C02FFFDBE8B930765C8EE631D16BE414553F3139F5B70D8D1BCF10FA
          E51310167283A093D3D3E4CF56D5562BC949E2723A84D51216926C0576AE47D3
          525F51AE38ECE292C25066B731B7FB7538E329C24ECA300902FCD25F52586029
          14587089523B6FD91D2C46783DC68EBB04D8783D9A3BD635D429224B215389D5
          C191D1C3183B96083B6982C2426E1074F29BD0B9BF814E1ED379CC61E785687E
          B7B2BA52494D11B7CED57BA45FE91F1A1E83336689FCFE0C13EFA8899A86CA8A
          9728B959E2DC676ECEABECE8083EFB5F8AB1E35702ECFC5E5292EDFAD5B53542
          93D660DCA05C19011CDA61A747E4B9130D167283A093DF9F9A927CF5CAEA2AA1
          9D7C627252E998AFF56D283D6B989D9F43F37DD14FD561FB55B361E7A8C87BC0
          30F10C7CB21ECD6ED1E94FA7673C946C850EDF0B9F7C41809DBF75D8D32EACAF
          2817AA17616F1D0D27AD497458C80DD2D2BCE9AF2EA7F39DE48C22999C9EA660
          103A7C073AF9AB46CF0767FC6E92CD76C3EA3AB14FD5610F1C6F819D9B85DE04
          868963E093EF41F382E81A08613EB9063EB9DDE8F930C6B5E76466D4888EAC0F
          2B0A7501EC7C4AE8C9130C167283A0931FCECFCE2A141D753AE7F52A3BDA83AF
          C72E4327FF85713B9B9E76DAEDE7D6969709B5336C2FF90761E7AF859E9C61E2
          1808F987D13C2E3ABE66646C3C58221494C0270F1AB491C2D4A78B0BF26D4582
          135E85ADE57F0176DE21F4E409060BB901D0C9E97DD8C4328878BEE0643084BA
          B56B233AF9D78C9E0B0F1CFB73B3324B972F151B57025F54B6B606EDFC0AECFC
          B6F09BC030714AA844E8C92BEA858EC303C323C14032657EED79C6A08D6AF5B3
          654A46BAB8EDB5213009F06132D00C3B3F2BFCE409040BB901D0C9DF8AE675D1
          5BBA42B476EF094CCDCC3C814EFE9F06EDA44C35A3A5458596825C71D5CF42EC
          ECECF27A66E71E16914A96611205F8E59D98897F163372A1254C293D6BDFC080
          67436393E1F7F5B09104F6076BEA6A149BC0AD6721A856837B6AEA39D8FA7EE1
          274F2058C80D804EFE0934F78BDE5F1962EFC13E65786CCC709A45D879269AE7
          45A6670D876A924F4CBAFF0A677C97F093334C9C02BFFC0DFCF122F8A5D07158
          64D5440A744B4B4DBD604595D8EA6C212850766874AC07B656CA387FA2C0426E
          0074F21FE089FAD3AB0456140B276C7B860BB3DD49037636592C965BD6D6D75A
          4446AC8750F7831E82338AAB91CA30714E4BF3A62D5919AEB5152562DD46DD12
          3A007F3454401CE3068D17C3F9D9D959A54B0AA5DC03B5B88B17872918E30252
          2E9200B0901B008EF86A86D3795A95E088F5106165424F4527FF87013BFFE572
          3A4EA6752E191CC10347EFFC030739A357CA451826CE805F0E16E464E7961489
          154908A37278706812426E684F1B84BC0E4D6B65698982070E29F760786C5CD9
          331F98578AB1A357CA45120016F208997F5A55DC85B9B98EE242430FBEC725AC
          28C935E8E43F8ED04E5A141FC460612994B03E4E8445C92E839D07A45C8461E2
          08351ADC23C32FC3DEE4A5C21FE70CD8184CCDBAAAA65A494E16BA8CFF6FC2B6
          D9BE13B6B648B94802C0421E21E8E4E5687AE8B558B6C0AA6747B3A3BDD337E7
          F5461CD5093B3F80E629D17B55C30973C6D361E72BD26E06C3C409F04B7A8DB7
          5FC6F831323EA1F41C309E1512367E3F29C976EDEADA1A29EBE384D7EB55B6CF
          6FB3BD12B63E2AEB3AF10E0B798484045274B194A3E9DA7740199F9C7C6D43E3
          C6D322B4F37B36ABF58635F5B5D29C312C25A4903DEF0C13EFC02FDF86E61F94
          D721DD213600756A668676BCD0E159F0C7E7233D4F4BF3A6BF67389DA7CA5A3A
          0CC115148DC3421E2170C41B2D16CBB7640590853878A49FD6A0235EEF8233BE
          0E677CAB4C67A4BDE45B76B7D2ABBC1BE18CDF937621868913307E9C87E6F72B
          AA2B953481B50F083F1C72AB80442B183B860A72B27344AFE11FCDCECE2E9F67
          76EE01D8DA28F542710C0B7984C0111F484D49B96A6575A59488F510C3A363CA
          9E8387E870293A7A9FDECFB734374D16E5E5394497493C9AEDED1D3EAFD77727
          6CFC92D40B314C1C80F1E31A34CD98082856ABF897653B3BBB218E919717867D
          94FDC52D2BD9553814D03B3139F52C6C3D47EA85E21816F2088140BEE872A6BF
          4B748EF5A3095B7F5E8F8EFEB29ECFC219695F4B6F79C95225273353AA9DBBBB
          7BFCD3339E5FC0C68F48BD10C3C401F0CDAF5A2C96A6750D755296BC7A0E1CA4
          0A8A6F6C68DCB82A42FB6AD1B4552D2B55325DE20ABA1C0B9AA88C8C8DB7C2D6
          06A9178A6358C823A4A579534F6E5666B9E894A74783592ECD76E9F02A88E423
          7A3E0B67A41AE1AFC958873B9ACE7DFBE9A9FA4538E37BA45E8861E200F8E68F
          5253923FB1B2BA4A4A38B8BA3F7B16870E8C1BBE08EC5B8FA6455612A970D4E5
          C3518C1D72A7FE710C0B798440C8470B737332656D3D0B67CBEE367F2010B845
          6F30089C9152BBFE068385824143AA8D7BF1543D3C36DE0E67AC937E43186691
          03DFFC0504F283A2B3BA85C06C5CE9DE1F8C5CAFC3B8D11E817D17A1F9ED4935
          554A4AB2DCB143DD2E4787C99C87223258C823041DDD2F736F76386A61811FA3
          937F46A78DC114B26BEA6B159B8475B8707AE188FDC32386B349314C228089C0
          0B2EA7E33DB29234859508BD04E3C66FF47E1E63C755681E9295633D9CB0A430
          11C501312CE411814E4EFBCD66962D2D52F2B3E5BF0D6AEBD91B989C9ED65D3C
          05767E01CD6D27AFA8976EA3C8420D0C13EFC84ACF1ACED6D636BFDF1FF81AC6
          8D26BD9FC5D8F17934779931768465B05C075BB74ABF601CC2421E01E8E45968
          46CA8A972AB9597283C8084AEE303AE1FE0766BBA7EAB4B3C96AB5DEBCB6BE56
          EE2335C06C5C39305F3A31C54836298649045E6ADEB427372BAB8C2603B25027
          004FC11F2FD4FB598C1D375B2D964D6B2505E38533E3F128BBBA7AE8F0FDB0F5
          39D9D78B4758C823C06C2157D79F754775C2CE6FDA6CB62FADA9AB91935F318C
          B06D720570C601E93785611631B447BB30372747668C8D5A596C0FC68D0ABD9F
          3573121096DDED728C1D8FCBBE5E3CC2421E01660BF9FE4387E190A37BD6EB74
          48D879577272D2B5AB6AC4D63B3E1661C13586D242324C2200DF9C85882717E5
          E54ABBC6E1C1218A08A7E031CAB9EED7699F69421E080428A0970E3F0B3BEF95
          7DBD7884853C02FEBD466E42B20442AD2FACBB4CA899421EB6CEB516CEB84DFA
          4D6198450C7C33505A54A814480C960D2B66B41C3EB95FA77DA6093911E9CE1C
          661E16F20831C311431878B5CE42CE30318819E38791CA62660BF9F6F64E9FD7
          EBE5CC9011C2421E21E8E873C5850549325F8D8550857C37847C854E1B4D13F2
          B041E31438E3EBD26F0AC32C52E0970E3493944C2A2F3B4BDA75E6BC5EAA9E48
          87BA8B19992DE4BBBABABD339ED98761E727CDB85EBCC1421E216604AB84E8DA
          7F4019774FBE0C215FAFE77370C6AFD96CB69BD6D4D54877C6B08A4BEF8233FE
          55FA4D6198458A593136616BCFD7C327EFD269A3A942BEBBBBC7373DE3893837
          7CA2C3421E2110F22E3861A5EC14AD44FB9E7D8A7B6AEA49BDDB48CC74461672
          86D18699C1B2DBDB3A7C5E9FEF76F8E48D3A6DBC1ECD1D66EC2327DAF7EC0DB8
          A7A67F073B2F36E58271060B798440C85FCB72A59F52515A22FD5A6A25A39FA0
          937F4ACFE7E08C1B21E45F3543C8F1A0117CE0006F819D9BA5DF148659A4C02F
          E935DE114A06939D9921F55AEAD8F1207CF21A9D365E87E64EB3845CAD80467B
          DE2F30E58271060B7984A0A33FED723ACEAD295B2EFD5A5B5BDBFDE01BE8E4B7
          E8B4D13467E4603786D1869933F2DDDD3D81E919CFA37A5F59C3469A34DC27AB
          CCEAD174ECDD4F93816737346EE452A611C0421E2166D52387809390D361239C
          F13E9D367E1CCD0366E45A1F774F062BA08106D8D92AF5620CB3883153C8D565
          394AEF7C914E1B2F47F3D8EABA1A254972AE7582E280C626DC2FC24EAE9E1801
          2CE411828EBE495D7F96AA90339E598AE8A4C3F3D0C99FD669E3A5687EB1AAB6
          5A494E921BB81E56F8A008761E917A318659C4C02FC919E7CCC8434133DD89C9
          C9A7E193E7E9B4915E713F6146F5B3793BF9D5BA1158C823041D9DB649FC58F6
          6C37EC95F55BD1C9FFA5D3467A4DF5C715D5954A5A4A8AD4FB716468982AA005
          7098A4378B14C3241A66E5A1885420611FCD8C5F68A8AC50EC69A9D2EF070BB9
          3158C823041DFDBD68FEDC50598E8E2EAFE057D84C77093AF9619D36D276B596
          FA8A72C561975B944CCD3EC7654C194603540619426E912DE4065EAD9F86E6D5
          BA8A32C569B74BBF1FADDD7B7C5333333F879D5748BF581CC2421E21E8E8E568
          7A286A3D3BC325ED3A541EF450FF00E54BA6AA62019D365294DBEEEAE5A54A46
          7ABAD4FB4179D6C7DCEE5721E4EF907A218689035A9A37B98BF2729D4B0BF2A5
          5E27D2FDD9183B288BE42EAA979E91EE947E3FD4E8FA076067A3F48BC5212CE4
          11828E4E112033C505F94945F979D2AEB3F7601F66E563DD10C8AA086CA451A2
          BFBC78A9922339A866171C716676F63138E2D5522FC4307100847CA43037274B
          7642A95D5DDD73339EA05F7E5CCFE7307650828C43E525C54A8EE42D72C4B6B6
          769FCFE7FF36ECBC59FAC5E210167203C0193BD0C9AB29FA5416B47634BF2DA3
          49F7B60C38232DDE7B4B8A0A2D85125FE1F9FD01656B6B1BBD2DF86F38E26DD2
          2EC43071C24BCD9BF6E666672DA78037996C6FEBF07A7DBE3B22480843EFD3A7
          CC08C80BCB40F739D8798FD48BC5292CE40640677FDC9E9AFAA186AA0A69D16E
          3BDA3B7D735EEFBDE8E09F8FE4F3663CF987E5593F1376FEAFB40B314C9C00BF
          DC9295E15A4B496164B279572B3D60DF08BFFC9EDECF9A516A95F0CCCED2AB75
          3A3C1F76FE5EEAC5E214167203A0A353A59EEFAC6BA8B300E1E70F7B52BD0E1D
          FCEE48CE61462AD9C1915165DFA13E3ACC859DC3D22EC4307102FCF2CF2EA7E3
          BDB4062D0B4CC595EDED1D74F851F8E56311D8684A3D89F1C949A5736F3007C5
          1AD8B95DEAC5E21416720340C8CF44F3BCACA8F0B03DE41F4007FF4324E78033
          BE8801E35D32078CFD870E2B83A3A37D1B1A37CA5B6360983882DEE639D2D22E
          ABAF2C973606CF783C183F7AE8F0FD183F9ED3FB798C1D9D980454C9AE273130
          3CA2ECEF0B6EC871C14EB7D48BC5292CE4068033D23BA74159E508C726DCC18C
          4760253AF8AE086D7C282D35E58A1555F232D0B5F5EC0D4CCD4C3FBDA1B1E903
          B2AEC130F104FCF29E94E4E4C6936AAAA4F9E50466BA1DF333DD88D22643C85B
          32D29DEBAB96954ABD1724E283233C1130020BB941D0D9FB20E245328256FA87
          8795037DC124697638E24C24E7A052A656ABF5265985530201CA05DFE60F0402
          B7C2C64D32AEC130F146B0C430FC728DC4824643A3A3C15D2F4A844B5EB0F197
          4EBBFD92BA8A32A93AA106F4FE191381B3655E279E612137484B73D3D38E34FB
          39323ABB9A6465104FAA116F36959D816E6A7A4669ED09962F3D0783C5B3C22F
          C0307148A8A0D1BA867A4542784D9043FD03CAE1C1C119086444195D60E3BD29
          C9C99F3AA9A64A6A7E67B5D4EAF7317EDC20F33AF10C0BB941D0D96FB1582C1B
          29E7BAE880377AAD3EEE9E7C0D427E9A01FBDE87E6D986AA0AC59E2A3ED562FF
          D0303D7050646C361C714CF80518260E815F7E10CD2F65E63237928342B5F116
          AB95C6B63A69BB7220E024E474F8718C1F3F91759D788785DC20A19CC475E565
          8AD3213695E1AEAE6EBF9ACCE12A03F6AD40B3535676B79E030795D18989560C
          160DC24FCE30710AFCF254347FAF2D2F53D2058F1B21E64B834E3E8F19F95911
          DAF869343F84902B1074293686D5923815E3DC3FA45C2401602137083A3BA9E3
          58496181B550F07ECB2DBB836BCF4DE8E05F33601FA5741B951590A7BE16FB31
          6CFC8CF093334C9C6246E6B4373ABABCB373730F469AF614365E82E65732DF1A
          1C191C527A8FF45391A574D8392DE52209000BB9005A9A376DCF4C4F5F55B9AC
          44D839E7E6BCCA8E8E4E3ABC1C1DFC7163F6354D15E5E5D945E7750E4BE4F061
          D8F873A127679838077E3909BF74C8C8B73E1F84DA4AA928BE0CDFFC6E24E780
          909F8EE6259985537A7A0F2AA3E3136D1B1A37D64BB94082C0422E0074F8BB6D
          36DBB56BEA6A8445A04E4E4D2B6D7BF6D2E1DBE1887F37722E5949618646C794
          BD070FD1E132D87840E8C91926CE815F6ECE74A5AFAB2C15370108819938CDC8
          E9F012F8E66F223907C6B53A34AD55CB4B954C494597767676F93CB3738FC2C6
          8F49B94082C0422E8050E0CA8AAA4A252D554CDDEF91B1F1E0D3AA224024F1E4
          FFA77487F3AC9A32B14961D4609A43789A969B679261E2108C1B0FA6A6A45CB9
          B25A7C8E87B03DE4EB307E6C8DD03EAA063540B5247225145DF2F97CCAB6F940
          B7CFC2C67B855F2081602117003A3C25323828721D3A2C1A3C159D7CCEA07D3F
          54B791081D30F0C4EFC393BFEE12890CC304FDF25A34F7C8D81A1A963639CBC8
          6E12D838575C58902423DFFAB87B52E9DC177CD8781B6CFCA7F00B24102CE482
          6869DEB4373B236379798998E444BD47FA49CC8731DB35EC4170C62FA2F9AEC8
          9CF061EBE357C0097F2AE4A40C93408422D76BCA962B2EA743E8B90F62FC3832
          343C8EF1C3D0541AE3DA91FC9CEC82D2A242E1DFFFF0C0A072B07FC0ABCC07BA
          79845F2081602117049CB239C966FBC46A41EBE47B7A0F2A23E3133BE088AB05
          D8F69F687EB3B2BA4A494D11137D3A303212CCB10E96C209FB849C94611208B5
          54A85BC68E1735886C3BC68F3546CE0321DF9A95E15A23A34A5BD7BE035430E5
          5FB0F1ADC24F9E60B0900B024E79319A5F8B4ABC427B2B2726A79E86489E27C0
          B6756836D31AB9CBE914F27DD5FDE39D70C21A21276498040442B923D3957E92
          E880372A2B3C393DFD7B8C1FE71B390FC68E3FA43B1CFF515BBE5CF877DFD6DA
          EEF7F9FD542BFD4BC24F9E60B0900B422DA032505A546829C8CD317CBEDD5D3D
          FE698F87A239AF16605B369A61916BF8DBDA3A7CE047B0EF73424EC83009087C
          F3FB4936DB6744BDC90BB1A3BDD33FE7F5DE1FE91EF230FBEE4B4D49F9B8E880
          3C8C6D34C6D1E145B0F10991E74E4458C80582A7EB3732D29D2B45540B82237A
          E188F7A2935F27C83677515EAE53C49ED5A99919A5B53B985FFD42D8F7A408FB
          18261181507E08CDCF21940A0453D87937EF6AA540594A2675AB41FB3659ADD6
          9B2905B5C8EF1D168C57041B8F883C7722C2422E1074FAEFA1D3DFB0A6AEC670
          DEF5ADADED3EBFDFFF7574F22611B641C8776667B856940B58EB3A3C3844C134
          948D2987F3AB334CE460CCA077EA0744BE2D0BCB5F7E0DFCF3C706EDA319FD8F
          44A769A5FC13C363E3FB37346E14FFCE3E01612117083A3DE534FE13AD27A53B
          8C45A1E2899A9A1BE088770AB2ED09A7DD7EBE882A6DED7BF60526A7A7A998CB
          DB45D8C630890C1EB2F76567642C13B5E365C6334B751AE8F03F307EFCD1C8B9
          306E5C80E609D16F0C78EBAA5858C805824E9F8689F858515E5E8A9157D83E9F
          5FD9D6D64E87C22A02C1B63B9393923EB7AAB6DAD05A97CFEFC7D37E3BA57EFC
          1FD8F62DA13790611210DAF102DFFC8451DF0C8187EC60B01B381D3EFA8A41DB
          825BE44416850ACB3A7725EC7B54C849131C1672C1B434373D93969A76764365
          79C46B4A611DFD6274F4DF8AB00B0E793D9A3BD635D429465EFB8F8E4F28DD07
          7AE9702D6CDB26F6EE314CE2115A27179519322CABDB1AF8E87683B65109D44E
          AA2391E57209F9BE61EBE3A5B0AF57C849131C1672C1A0E37F16CD0FF074ADE0
          293BA27384255BF9003AFA1F04D925A4921139E0D0E8D820A6E405B02D20FE0E
          324C6201DFA46C2B87972D2952F273B20D9F6F74020FDBFB83FA580E1FDD6BD0
          364AB23E21720D7F4FEF2165649CD7C745C2422E1874FC72343D46F213874585
          BF0B8EF85741766DA0A6BEA25C71D8D3223ECF8EF64EDF9CD7CB450E1846202D
          CD9BDA31E3ADA928351E8C1A56CC280F7E3A64F47C183B668B0B0B9245A56955
          C7909FC0B64F093921C3422E03AA3606A7AC8CD429C384FC0C74F6BF89B009CE
          486502771BA964343DE351767707F77E465C518961983703FFBCC766B3358AA8
          A038303CA2ECEF0B665DA43A0DB346CF87F1ACBF20273BBF44409AD6B0B78D97
          C1B65F08B8758CC2422E0538E5ED56ABF5BA48B7A14D4C4E0533BB2902D7A161
          53119A3EDA7E96939911D139C2B69DE5C2AE5179779061120BF8E785687ED750
          59AED8D3227F6346A87EEA858F0AC9C73CBF7535638588A8FAB0878C25B0EFB0
          08FB18167229C029CF40F397EAE5CB948C74FD2951250939859C4E2D5B5AA4E4
          6747B60EC7DBCE18460EF04F5A801EC6ACD752683033E4A1FE0112F349F8A990
          22E22DCD4DCFBB9CCE33693C338A9A03BE0BB6550BB9714C10167209C0296D98
          898FE46767B94A9714E9FE7C58B04A2584BC47A05D119724E46D670C2317CC7C
          374330D7552F37961952AD7C26A472228171E3A7F6B4B40F3554961B7EEDBFBD
          ADC3E7F5F99A31867C56D06D6314167269A0F33F969C9C74D9AA1AFD7B434546
          9D86838162B4302F37B338823DEEBCED8C61E48231E3EB9800DC44E9508D6C11
          3D70F808BDC2EE83900BC93003BB6E4B4AB27D7E756D4D64DB7054C2F2AB738C
          8D6058C82511DAEE555F59AE3874AE794914F20379D95925CB22784BC0DBCE18
          462EA12539A3F5C92508F98D78B0F8D6BA863A437AD13F3CAC1CE83B4263078D
          218322EF5DA2C3422E0975FFE5D0927CFD59DE240AF9AE9CCC8C06DA1AA717DE
          76C63072C19841D960C63166A41AC90CA93E74B743C8EB04D975159A8756D7D5
          2849B6C8DFAE77ED3FA08CBB2777C2AE9304DFBA8487855C222DCD4D7F4C494E
          79DFCAEA4A5D59DE240AF92B99E9E96FA72C4D7A989E995176CF6F871396698E
          619837031F7DC19196F66E233511D48224AD10CC06113641C8CF46F35C435585
          624F4D8DE81C145CB3ADADC30F6EC31872A39CBB97B8B0904B040E70059A47F5
          A65E9428E4CFB91C8EB3ABCBF4459F1E1E18540EF60FF894F96A67E3A6DC3C86
          494030667C11CD77D7D4D55A6CB6C8B23CEF81908F8C8DBF01215F25C8267A20
          D84541781911E6A0704F4DD1AE173A3C1363C8FFCAB97B890B0BB944E00094DA
          6D7069417ED292FC3CCD9F9325E4B0E7D7E90EFBC5B5E565BA3ED7BE676F6072
          7AE6250C0CEF34E3BE314CA2021F7D0B9A7F562D2B55325D9189268D1D636EF7
          ABF0D77708B289F6AB0E1B49D33ABF256E701613F34C8C6933B2EE5FA2C2422E
          19CC829F494D49397B455585E6C76B8942FEB03D2DF5F286CA0ACD0B5D6A6D63
          0A50F9126CB9DDCC7BC73089C6FCD65565AC2027C71969263555C85F81909F2E
          D02E0F2624297A2624E1B4F5ECF54FCDCCBC089BDE2BE7CE25362CE49281037C
          1CCD032BABAB94D4146D89966249C887C7C6953DBD07E9B001B6B49A7AF31826
          01A10A8AF6D4B4B3EB23ACA02843C8A9667A5E56D6324A28A5171F2603DBE627
          035FC4187287BC3B97B8B0904B06E25980E6706951A1A54063C6268942FEA03D
          35F5CA862AED42AE562AEAC5A0602C4B05C3309A809F5E87E68E48D7C92509F9
          6B99E9E9A7E80D942546C627949EF91C14AB309EBD21F1D6252C2CE4260027D8
          01273849AB138C4DB8835B3514F142FE1066E457E8999153A4299EA87F083B3E
          67F67D639844047EBA06CDD6486B804B7AB5FE2BA7DD7E7124D1F4EABEF6D140
          2090C33928E4C0426E0270827B939292AE595DAB2DCB9B8C5CEBAA1D8F40C83F
          A255C8C3AAB09D073B9E8EC6BD639844037E4A99DD46F373B25DA511AC934B12
          F27B5392933F75524D95EEEC6EBBBB7BFCD3339EA730865C24F9D6252C2CE426
          0027F8289A4756D5542BC9C90BFB8144217F32DDE138AFB67CB9A6F775FD43C3
          F4344D4FD0395CED8C61CCA3A5B9E9F7F6D4B4FFA8AF2CD73D464B12F2FFC1C3
          C5ADEB1AEA74BDEBF7F9FCCAB6B6761A436EC018729709B72E216121370138C1
          5A345B6ACA96292EE7C2D5D06409794BF3A63F41C8CFAAD1B88F9CD6B54627DC
          C2124B300CA30D8C19FF8DE6DB6BEB6B2D56ABBE75724942FE2934F7ADA9AF55
          6C3AEC095B263C1963D91673EE5EE2C1426E0270025AE81AA71CE7F9390B9710
          0D2B2E20F49536A568CDCEC868D05A57F88D8E2EDFECDCDCFDB0E1D351BA750C
          939060CCA052C1AF687DF80F4792909F87E6F72BAA2B95B414EDC9ADD4FDE39E
          404071621CF19975FF120D16729380880E16E4E6E496141668FAFD9D9D5DFED9
          39EF3F44D6FE860D934579B90E2D799CD52D2374F869386073B4EE1BC3242210
          4EAAB434A13799142149C84F43F36A5D4599E2B4DB357FAE6BDF01657C72F275
          D8728A59F72E11612137098868476E5666356547D2C2F0E85830D522B80042FA
          94D1EBC3112BD1745594142BD999190BFEBE7B6A9A32BAD1E1E9B8FE2BD1BC77
          0C9388507DF28C74E73ACAF2A60749425E8F66B7DE34ADDBDB3B7C5E6F70D7CB
          7F9976E31210167293A07D9859AEF4532A4AB5EFC3A468CF19CFEC6638E4DB8C
          5E1F8E4855CB1E3CA9A64A49495E38314D5822986238E1A128DE3A8649482852
          3C3929E99A551A77BB849024E4340339A4752240CC79BD5435910E3F8631E421
          33EF5DA2C1426E1210F2BF67BAD24FADD421E48323A3C19284A00E8ED06EE4FA
          70C4C721E09742C8350D0A6AC43A1DDA706D7F146F1DC32424A1876F08B90241
          D7FC3949424E49D647A804726E56A6A6CF8CBBDD4AE7BE60A0DB1A8C21DBCDBD
          7B89050BB949D01A797E4E76AE9E7DA1D3331E9A95D3E1FBE0087F3278FD7E38
          60BED657FBF3412A4393180C22ABDCC0308C21209E2BD1BC51B5BC54C9D4F13A
          BBA7F7A0323A3EF11A7CF73481B6D0C2F8949EC22961DB571D5C28452E2CE426
          0027A842D3595E52ACE4687C2D4584CDC8ABE008DD06AE5F87A655CFF5FB0606
          F13330B5A1B1495FC82CC3304280DFD21AD874716181AD282F57F3E744D72357
          6D21ADF0D344446BAAE9FD7D87690CEB831DDAB6C93011C3426E02A1C2297A5F
          91F51C384879D777C3115618BC7E700FA89EEB875EADE30182FB08C3448996E6
          4DAD78F8AEA357DA5A9124E4BA5FAD77ECDD4F75C8A9E2D97B4CBF7109060FD2
          260027F886CD66BD714D5DADBEA09503BD9450C1F0D60D5CFFFE94E4E4ABF4A4
          570C7B1B40F583C7A373E71826B181EFFEDC9E96FAC1864AED659025093905F7
          1CD013ECA6E6A1F831C68FCF987FE7120B1672138013FC0042DAA8374FB1FA6A
          EA001C525B2AB6E380A7FA175C4EC77BAA976B3FCDF0D858B0F219C887230E46
          E5C6314C8283B1E316ABC5B271AD8ED4A89284FC9D68FE5A5F51AE38EC699A3E
          B3B5B5DDE7F7FBBF81F163A3F9772EB16021370138C1172C16E57BAB6A6B2C49
          36ED937251016710F2968C74E77A3DFB516595526518463B183B2E47F3989E65
          B1037D4794819111A1A58761C7CD946B7D4D5D8DA694B1814040D9B2BB8D0E3F
          87F1E39E28DDBE848185DC04E004ABD06C2721CD7469D76451424EAFE79C76FB
          07EB2ACA343FD5B390334CF409A56AAD2D2F53D21DDA32AAA965438506996132
          F012AE7F7A4DD9724DBF1F9619F26A8C1F0F9B7EE3120C1672138033D21AF76B
          E4042EA743F3E7D4C8F1E90D8D4DDA3F74ECEBDF979A92F2B195D5959A5FED87
          2584298423F647EBDE314C2203DF2D42D3A767C7492F84BC7F78640042AE2D1F
          F4C236D085878A0BF2938A74A48BDDBCAB959AEB307EDC6DFE9D4B2C58C84D80
          D6C8AD56CB6756D7D658F554329A17F2411133F287ED69A9976BAD434E0C8D8E
          05D7DA403697306598E8A06EFBF29514155A0A356EFB3A8C71E360FFC02CFC36
          55900D1F42F3738C1F0AC611CD9F53859CCA97DE69FE9D4B2C58C8250327782B
          9ABFC3096D253A92C110025FAD3F91EE709C5F5BBE5CF3BF779890F38C9C61A2
          484BF3A6218C1F39C51A0B2E85ED38C985EF0E1BBD3EC68F9FA624275F76524D
          95AE7AAA6AB0DBD761435334EE5B22C1422E11AA436EB1585E841364D457965B
          F5D4F12554219F80906BCF22730C3010BC9CE174BE83324469C5333BABECEC0C
          E6A0E1276A868922F0DFF6DCACCC1AAD591927A7A795B69EBD7478167CF77901
          D73F9C979D55486598F5A0CEC8AF870D77997ED3120C16724940C4DF67B128BF
          4B494E49AD295B66D552A8E4684405ADC011BB311054681D084250F5B591B1B1
          A94040698033EE33F70E320C43C07F5FC94C4F7F7BE5326D751A28627C7B7B87
          DFE7F3DF0FBF6D34726D8C63547C7CA6B4A8D0A235A35B081672F3602197003A
          FF27D0DC97EEB05B2A9795EADA72160EBD1E1B1A1DEB8290571BB10703C15861
          5E6E46B1863AE4E178BD3E656757B71FECC0E0F07638E4B46937916198202DCD
          4D2F64A4A7BF47CFF6510A783B32343C8BC352A34B6318CFBC7AD3C4122CE4E6
          C1422E1874FAAFA2B9353BC3A550A4A9C512F92D5633BBFD03427EAA017BE889
          DA43AFC5F273B2757F7E627292522D52E1835FE3E74370CA80FCBBC8304C08F8
          F0932EA7E37CAD5BBF88D9B939CAAC46BE4AFBB8EF35727D4C047665BAD21BF4
          546EC4C33FAD91D3E1C771FD9F44E9D6250C2CE40281C37D0BCD97A93AD0B225
          4B14031A1EA47DCF3E65727AEAE90D8D4DE719B0A9184DAF9ED48A471356D2F4
          6E38E575D26E20C3306F22122127D460B36FC3676F3678FDBB6D36DBB56BEA6A
          34BF5A0CDB477E15AEFF48546E5C02C1422E0874F61BD0DC4EB35EBD4121C763
          5757B76FC633FB081CE1E306ECA2A8F9D76BCB972BE98EC8B7A31F3CD24F8177
          74F81DD8F365B1778F6198E3118990879540BE14FEFA2B83D7BF18CDAF575455
          2869A9DAB69FA96F04E890C6C527F1330C3BC6A2740BE31E167201A0A39F81E6
          C59CAC4C4BB98E2A450B81276ABFBA7D23E25CC5B0ED1C347F5C515509274C31
          640FE57E1F181EA1C35B60D3D7847D51864900D4E42EF5F8A1F26114FD4A35BA
          27F0E3C6CF94FA43391BA6E15F1EF53334A0FCD6E5749E5A53A6BD56C27CA0EC
          F07420A014E05C6E0176F7E9A9454E01773B3BBBFD10F4F0AD3A5E8BC53280F6
          10FE7E2FDAC3F8A1AC53B4578EFE9FB6C9F4F2F29D7E58C80D824E9E84CED98E
          27D5324A816A35FA3E5DC5EBF52ADBDB3BE9F04A74EC470DD8174CE6A0B784EA
          F10813F39B60D7B7857C59868973E08777A0B93ED2CF97152F5172B3B48928A1
          561E7B0C3E7AB508FB5B9A37F5E76767E597EA78DBE8F5F9826F067C7E5F3070
          96FE9F66EA34B6CDCE7903735EAF1F3F56887AF8A0398BF1F40DFCD96F707C07
          EC9F15617FBCC3426E1038E885687E0711579C766DB990B5E09E9A56DAF7ECA5
          C3D3D1995F31601F45D0DFBFB6BE56D19355EE44B098338C76E0834E341398CD
          5A68E98D76B158F09F3FE087C8F98381617E7F60FEFF7DF3FF4F335A2229C9A6
          38D2ECBADFA66DD9DD8653046E867F7E53C477A05CEB99E9E9A76BDD02A78790
          C0CFCECE29D31E0FD53057C6DD93740336F29B3F6DB0901B044EFA5D38E60DAB
          75048268212CB3DA1274E6C306ECBB16CD3DEB1AEA0C45D01F8DBABD850E6F84
          7DDF15F9DD19269E800FD213FED4B2A5454A7EB6FE9D2391D0D6B3D73F3533F3
          B70D8D1BDF2DE83B44147017091E087A6B770F9E69FCDFC3D87293F40BC6012C
          E4064107FF86CD66BB514F44A716D45284C370447D9B37DF6CDF65687E26EAD5
          7A386133F31570B8DD424FCE30710466B4C3795959D924E6664081A9078FF4FB
          70980FDF1C1160FFF310F233AB976B5FA78F8471B75BE9E93D44B141638140A0
          C1C82426916021370884F24A340F8B08260BA7B57B8F0F4FD4CFA0237FC0A07D
          6BD06C2507CC48770AFDEE6191A9B4BFFC97424FCE3071049512C683F407295F
          B9C83763C763C6E351767505A3D62F836FFEC2E8F920E49DB95999557AB3436A
          65CEEB557A0FF72BC36363F4E6B003227E3EEC6E937EA3E204167283C041B3D0
          F1F6A52427A72FC9CFB5EA0948391ED4A977CC07BA5132877B0CDA47D1B1D325
          8505B6429D9999168266E3342B072B61E72EA127679838027E48499DFE4ED9D1
          B4163F31CAB6B60E1FB80BBEF945A3E782908FC376D7529DD9211782C63ACA53
          D13F3CEC87787B020185D6C4EF84CD33A6DCA43881855C0070D2B740CC7F828E
          78526951A192E9720593C144925F9DA0B5E7DEC34728D8A35C448E7338E1E60C
          A7739D9EA2290B31E39955DA7AF6F8E17DCF6D68DC78AEB013334C9C8271E23B
          68FE9BEA8A9398473A3E686577778F6F7AC6F3738C215708B0DD87C98055D464
          607A66866AA6532C905F51023E08F80FF1C7DFE657E991C1422E084A850AF17E
          1C1DF2E2D09FD557942B0E7B9AAEF350F4EACEAE2EBFD7EBFB0B04F24C41B6DD
          6EB55AAE5B5D5B6B452BE4FBF6F41E5446C72746F0F042EBE37D22EF25C3C423
          6A6DF1FFC243FF37E137F62C97CB9295E1C2837FBA12693D8613B1B3B3DBE799
          9DA5C2299F367AAE96E626CF92FCFC9425F979119F8322F13166D0EC3BE09E9A
          A6158649FCD17DF8ABDB780C31060BB960E0AC2BD054A397FE28DD612FAC29D3
          5E039C50A3C169367E1A3AF73F04D9743A9A97F424743811B40F948AA9F87CFE
          FB60E36764DC47868957E08FA4869FC018F149885B058E039475D1E57458D29D
          0E25DD6E37BC5594B6B06D6B6B27EDFCB2885D25B48F1C63477E24592BE9EDDD
          E04870F6EDF3FA7C367CEF2E18F603FCD543B06D42D26D4E2858C8250167BD04
          CDAF6C369B8F9E45D352523DC585F94E97F3D80167E478547F5CDDD2F52D74F0
          AF88B4078EF86738D0BB8B0BF26D24E6910E14C363E34ADFC0801F4FFAB49EB5
          0A7676997C6B19266EC0385187E67CF8E6FB314E9C069FA288D980232D2DE074
          D8AD2E083C05A9DA74CED847272694EEFDBD74F816F8E866A37662FCF8AB3D35
          75437D65B966CDA06D6487070721E2A301CCBE69BCA054B10FC09E97CCBDCBF1
          0F0BB944E0A467A1391B3F9370D40BF114BA92843D3539D9929C9464B5D920A6
          E8E173735E65727A9AB65CD0C72881C32DA2D314C2966C5CEA4138D30570487F
          4DD9721B259B3816F4181F8AACA5041514490AE1A6243501D889BFB2ECC5EF50
          0EE7D7A37D8F19265E502B159E8C9FF5F8390D7EB61E7E468BD201CCD629B39B
          85AA2A6A7908EFDCB75F99989C3A8CCF17C34FFD026CFB3C9ABBB42C174E4DD3
          FAF730CDC043024E59EDBECDB36F79B0909B04A5724573117E4EC1CF52386921
          5A7AC5467F4E6BCD7F47FB13D9FBB1A9880A9CEB6FF6D4B4D4CA6525D6F0801B
          126BDA7F3AE676078A72732D9811D07EF69078D35ED4CDB0F367681F11313830
          0C7362E0AF949BFD5CF8DF472998D666B5FA73B332AD395999C7CD24496FF6FA
          0606E950580951CA4E47A953936CB665549B9C960268224029A943A9582923DB
          C8F8847FC6E3A13F7643C0A97C2AAD7F0F46FB3EC63B2CE409089CF2DD70CADF
          E1413F233525C56FB3DA6CB37373BE39AF97A6E894EB98049BB6CB50FFA06D20
          E7C2195F8CB6DD0C93C8A839213E059184A82BCEE4A4241F66EA36AA48068157
          66BD5E658C84747696A6EC94A7FC0B82AF5F86B1E1518C0DEB8FF32B183B9417
          601BED5BFF2DAE3F15ED7B9628B0902728F4AA1DCDA5F8A132A754A89CAA12FD
          0B3F4FC20187F1F794F9A11A3FEDF8FF23D1B697619879E09BF46EFB3CFCBC17
          C2FA2E082BED2B4DA55930DA9720A4B40FFB7989D7A7718196006853392D01D2
          D8B1073F5B71DDB968DF9F44E4FF0158C81914D44CCD5B0000000049454E44AE
          426082}
        OnMouseMove = Image1MouseMove
      end
    end
    object pnlHeart: TPanel
      Left = 12
      Top = 479
      Width = 461
      Height = 258
      Caption = 'pnlHeart'
      ShowCaption = False
      TabOrder = 0
      object Label10: TLabel
        Left = 20
        Top = 12
        Width = 80
        Height = 21
        Caption = #54801#49900#51613#51613#49345
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 20
        Top = 47
        Width = 66
        Height = 21
        Caption = 'episodes'
      end
      object Label12: TLabel
        Left = 20
        Top = 117
        Width = 49
        Height = 21
        Caption = 'reason'
      end
      object Label13: TLabel
        Left = 20
        Top = 187
        Width = 72
        Height = 21
        Caption = 'sensitivity'
      end
      object Label14: TLabel
        Left = 20
        Top = 222
        Width = 84
        Height = 21
        Caption = 'Nitro taken'
      end
      object Label26: TLabel
        Left = 106
        Top = 52
        Width = 16
        Height = 21
        Caption = #51204
      end
      object Label27: TLabel
        Left = 106
        Top = 79
        Width = 16
        Height = 21
        Caption = #54980
      end
      object Label28: TLabel
        Left = 106
        Top = 149
        Width = 16
        Height = 21
        Caption = #54980
      end
      object Label29: TLabel
        Left = 106
        Top = 122
        Width = 16
        Height = 21
        Caption = #51204
      end
      object cbNitro: TComboBox
        Left = 128
        Top = 219
        Width = 121
        Height = 29
        ItemIndex = 0
        TabOrder = 6
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object cbNitro2: TComboBox
        Left = 255
        Top = 219
        Width = 121
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 7
        Text = #50500#45768#50724
        Items.Strings = (
          #50500#45768#50724
          #50696)
      end
      object edtEpisode: TAdvEdit
        Left = 128
        Top = 44
        Width = 245
        Height = 29
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
        Color = clWindow
        TabOrder = 0
        Text = 'edtEpisode'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtReason: TAdvEdit
        Left = 128
        Top = 114
        Width = 245
        Height = 29
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
        Color = clWindow
        TabOrder = 1
        Text = 'edtReason'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtSensitivity: TAdvEdit
        Left = 128
        Top = 184
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 2
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtEpisode2: TAdvEdit
        Left = 128
        Top = 79
        Width = 245
        Height = 29
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
        Color = clWindow
        TabOrder = 3
        Text = 'edtEpisode2'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtReason2: TAdvEdit
        Left = 128
        Top = 149
        Width = 245
        Height = 29
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
        Color = clWindow
        TabOrder = 4
        Text = 'edtReason2'
        Visible = True
        Version = '3.4.9.0'
      end
      object edtSensitivity2: TAdvEdit
        Left = 255
        Top = 184
        Width = 121
        Height = 29
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 5
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
    end
    object btnSave: TButton
      Left = 676
      Top = -4
      Width = 89
      Height = 39
      Caption = #51200#51109
      TabOrder = 5
      OnClick = btnSaveClick
    end
    object memRemark: TMemo
      Left = 479
      Top = 41
      Width = 576
      Height = 81
      Lines.Strings = (
        'memRemark')
      ScrollBars = ssVertical
      TabOrder = 6
      WantTabs = True
    end
    object dtDate: TJvDateEdit
      Left = 59
      Top = 6
      Width = 182
      Height = 29
      CheckOnExit = True
      ShowNullDate = False
      TabOrder = 7
    end
    object Button12: TButton
      Left = 480
      Top = -4
      Width = 88
      Height = 39
      Caption = #52628#44032
      TabOrder = 8
      OnClick = Button12Click
    end
    object CheckBox1: TCheckBox
      Left = 576
      Top = 8
      Width = 81
      Height = 17
      Caption = #52488#44592#54868
      TabOrder = 9
    end
    object Button13: TButton
      Left = 964
      Top = -4
      Width = 89
      Height = 39
      Caption = #49325#51228
      TabOrder = 10
      OnClick = Button13Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 241
    Height = 823
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 2
    object grdList: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 239
      Height = 821
      Cursor = crDefault
      Align = alClient
      ColCount = 4
      DefaultRowHeight = 32
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = grdListGetAlignment
      OnRowChanging = grdListRowChanging
      OnClickCell = grdListClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        'No.'
        'Date'
        'Week'
        'SeqNo')
      ControlLook.FixedGradientFrom = clBtnFace
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
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
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
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 44
      FixedRowHeight = 32
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -16
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = []
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
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = clBtnFace
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
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
      WordWrap = False
      ExplicitLeft = -4
      ExplicitTop = 0
      ColWidths = (
        44
        114
        43
        55)
      RowHeights = (
        32
        32
        32
        32
        32
        32
        32
        32
        32
        32)
    end
  end
  object ImageList1: TImageList
    Height = 23
    Width = 23
    Left = 806
    Top = 111
    Bitmap = {
      494C010125002700040017001700FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000005C000000E60000000100200000000000A04A
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000001950000019
      5000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000195000001950000019500000000000000000000000
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
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00B1C7FF00B1C7FF0000195000001950000000000000000000000000000000
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
      0000000000000000000000195000D4E3FF00B1C7FF00B1C7FF008EABFF000019
      5000001950000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF000025730000257300003196006B8FFF006B8FFF000055FF00001950000019
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9000055FF00003DB900001950000019500000195000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF00003DB9000031
      9600003196000019500000195000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9004873FF008EABFF00B1C7FF00B1C7FF0000319600002573000025
      7300001950000019500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF008EABFF00B1C7
      FF00B1C7FF00B1C7FF0000257300002573000019500000195000001950000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9004873FF008EABFF00B1C7FF00B1C7FF00B1C7FF00D4E3FF00D4E3
      FF00D4E3FF000019500000195000001950000019500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF008EABFF00B1C7
      FF00B1C7FF00B1C7FF0000257300002573000019500000195000001950000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9004873FF008EABFF00B1C7FF00B1C7FF0000319600002573000025
      7300001950000019500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF00003DB9000031
      9600003196000019500000195000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9000055FF00003DB900001950000019500000195000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF000025730000257300003196006B8FFF006B8FFF000055FF00001950000019
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00B1C7FF00B1C7FF008EABFF000019
      5000001950000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00B1C7FF00B1C7FF0000195000001950000000000000000000000000000000
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
      0000000000000000000000195000001950000019500000000000000000000000
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
      0000000000000000000000000000000000000000000000000000001950000019
      5000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000007777770077777700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F6008B6E4900947550009474
      4F0094744F0094744F0094744F0092724C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFFFFF00CC999900CC999900CC99
      9900CC999900CC99990000000000000000007777770077777700000000000000
      0000000000000000000000000000000000000000000000000000A7917500A58D
      7100A58D7000A58D7000A58D7000A58D7000A58D7000A58D7000A58D7000A58D
      7000AA947600DFD0B900E8DFDE00100FFC00100FFC00100FFC004240F500F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000CC999900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFFFFF00CC999900CC999900CC999900CC999900CC999900CC999900CC99
      9900777777007777770000000000000000000000000000000000000000000000
      00000000000000000000E4D6C000EBDBC400EBDBC400EBDBC400EBDBC400EBDB
      C400EBDBC400EBDBC400EBDBC400EBDBC400F0E2CE00F5EAD900F7ECDC00F7ED
      DD00F7EDDD00F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF000000000000FFFF
      FF00C0C0C000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000CC999900CC999900FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFFFFF00CC999900CC999900CC99
      9900CC999900CC999900CC999900CC9999000000000077777700777777000000
      0000000000000000000000000000C5853F00C5853E00C5853E00C5853E00C585
      3E00C5853E00C5853E00C5853E00C5853E00C5853E00C5853E00C5853E00C585
      3E00C5853E00C5853E00C5853E00C27F3600D5A87700F7EDDD00F7EDDD00F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000CC999900CC999900CC9999000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000CC999900CC99
      9900CC999900CC9999007777770077777700000000000000000000000000FBE9
      CF00FBE9CE00FBE8CE00FBE9CE00FBE8CE00FBE9CE00FBE9CE00FBE8CE00FBE9
      CE00FBE9CE00FBE8CE00D9C9D5000000FF000000FF000000FF000000FF00F6E0
      C100D5A26100F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000CC999900CC99990000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000CC999900CC999900777777007777
      7700777777000000000000000000FAE7CC00FAE7CB00FAE7CA00FAE7CB00FAE7
      CB00FAE7CB00FAE7CB00FAE7CA00FAE7CB00FAE7CB00FAE7CB00F4E1CC00C8B8
      D500C8B8D500C8B9D500C8B9D500F6DFBE00D5A26000F7EDDD00F7EDDD00F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF000000000000000000FF999900FF999900FF99
      9900FF999900FF999900FF999900FF9999000000000000000000FFFFFF00FFFF
      FF0000000000CC9999007777770077777700777777000000000000000000F9E3
      C300F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3
      C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C300F9E3C200F4D9
      B300D5A15E00F6EAD900F6ECDC00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FF99
      9900FF999900FF999900FF999900FF999900FF999900FF999900FF999900FF99
      9900FF999900FF99990000000000FFFFFF00FFFFFF0000000000777777007777
      7700777777000000000000000000F8E1BF00F9E1BE00F8E1BE00F8E1BE00F8E1
      BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1
      BE00F8E1BE00F8E1BE00F8E1BE00CB955300B3702C00D4AC7400F5E9D700F1E3
      D000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000008080000080800000808000000000000080
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      0000FFFF000000000000C0C0C000FFFF0000FFFF00000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000FFFFFF00FFFFFF0000000000FF999900FF999900FF999900FF999900FF99
      9900FF999900FF999900FFFFFF00FFFFFF00FF999900FF999900FF9999000000
      0000FFFFFF00FFFFFF007777770077777700777777000000000000000000F8DF
      BA00F8DFB900F8DFB900F8DFB900F8DEB900F8DEB900F8DEB900F8DFB900F8DF
      B900F8DFB900F8DEB900F8DFB900F8DFB900F8DEB900F8DEB900F8DFB9000303
      02000A0A09004D3F2B00F5E9D600F1E3D0000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000080800000FF
      FF0000FFFF0000FFFF0000FFFF000080000000FF000000FF000000FF000000FF
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000CC999900FF99
      990099666600FFCCCC00FF999900FF999900FF999900FF999900FF999900FF99
      9900FFFFFF0099666600FF999900CC999900FFFFFF00FFFFFF00777777007777
      7700777777000000000000000000F7DAB000F6DAAE00F6DAAE00F6DAAE00F6DA
      AE00F6DAAE00F6DAAF00F6DAAE00F6DAAF00F6DAAF00F6DAAE00F6DAAE00F6DA
      AE00F6DAAF00F6DAAE00F6DAAF00150E0500916734004C3E2B00F5E9D600F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF00000000000080800000FFFF0000FFFF000080800000FFFF0000FFFF000080
      000000FF000000FF00000080000000FF000000FF000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000CC999900CC999900FF999900FFFFFF00FFCCCC009966
      66009966660099666600996666009966660099666600CC999900CC999900CC99
      9900FFFFFF00FFFFFF007777770077777700000000000000000000000000F6D8
      AB00F5D5A600E9BD8300E8BB8000E8BB7F00E8BB8000E8BB8000E8BB7F00E7B9
      7C00E7B87B00F4D3A300F2D09E00F2D09E00F2D09E00F2D09E00F4D4A5001716
      150017171600584F4300F4E7D300F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF00000000000000000000FFFF0000FF
      FF000080800000FFFF0000FFFF000080000000FF000000FF00000080000000FF
      000000FF000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000CC99
      9900CC999900FFCCCC00FF999900FF999900FF999900FF999900FF999900FF99
      9900FF999900A4A0A000FF99990000000000FFFFFF00FFFFFF00777777000000
      0000000000000000000000000000F5D5A600D0B3A600573C6500553A5E00553A
      5E00563A5E00563A5E00563A5E009077620081666000B88F5B00A4723600A472
      3600A4723600AA773A00D3AA730091653300926A3B009A764500DBBE9600F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF0000000000000080000000000000FFFF0000FFFF0000FFFF0000FFFF000080
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF000000000000000000CC999900CC999900CC99
      9900CC999900CC999900CC999900CC999900CC99990000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000F4D1
      9B00BCA2B3000303FF000000FF000000FF002020FF002020FF002020FF00DEDE
      FF00A4A4FB00C5AA8100946F43001F1811008F663700B4906100DABC8D009972
      46007C5D3800B6A58C00E4DBCC00F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF0000008000000080000000FF000000
      00000080800000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF000000000000C0C0C000FFFF
      0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF007777770077777700000000000000
      0000000000000000000000000000F3CF9600BCA0AF000303FF000000FF000000
      FF00FBFBFF00FBFBFF00FBFBFF00DEDEFF00A5A5FB00CEAF7E00090806000404
      040003020000B8915C00F3CE9400120C050005050400B6905C00F5E9D600F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0
      C00099999900000000007777770000000000000000000000000000000000F2CA
      8D00BB9CA8000303FF000000FF000000FF00C5C5FF003D3DFF003D3DFF00DEDE
      FF00F3F3FC00CFAD7800090807005F3E190000000000B78D5600F1C98B001C11
      060096673200413B3300F6EBDB00F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF0000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00C0C0C000C0C0C00000000000777777007777
      7700000000000000000000000000F1C98900BA9BA5000303FF000000FF000000
      FF00FEFEFF00FEFEFF00FEFEFF00DFDFFF00A7A7FC00CFAC7700171615000F0F
      0F000C0C0C00BC976200F1C78700201F1E0009080800B4ADA100F7EDDD00F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF00000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF00FFFF
      FF0000000000000000000000000077777700777777000000000000000000F1C7
      8600BA9AA2000303FF000000FF000000FF003C3CFF003C3CFF003C3CFF003535
      FF002727FB00EAC08100CBAA7800CBAA7800C9A87600E6BD7F00F0C58400D0A8
      7000A07E5300F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF000000800000008000000080000000
      80000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000222222002222220011111100000000000000
      0000000000007777770000000000F0C48000B9989E000303FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FB00F0C27E00EFC37E00EFC3
      7E00F0C37E00EFC37E00EFC37E00EBBC7600D39B5300F7EDDD00F7EDDD00F1E3
      D00000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000077777700222222000000000000000000000000007777770000000000EFC3
      7E00B9979C000303FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FB00EFC27B00EFC27C00EFC27C00EFC27B00EFC27C00EFC27C00EBBB
      7400D39B5300F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222200222222001111
      1100000000000000000000000000EFC27D00E7BB8000D3AE9300D3AE9300D3AE
      9300D3AE9300D3AE9300D3AE9300D3AE9300D3AE9300EFC17A00EFC17A00EFC1
      7A00EFC17A00EFC17A00EFC17A00EABA7300D39B5300F7EDDD00F7EDDD00F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007777770022222200111111000000000000000000EFC8
      8B00EFC68900EFC78900EFC68900EFC78900EFC78900EFC78900EFC78900EFC7
      8900EFC78900EFC78900EFC78900EFC68900EFC78900EFC78900EFC78900EAC0
      8100D39C5500F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      000000000000C0C0C00080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222007777
      7700222222000000000000000000F1D7AE00F1D5AB00F1D6AB00F1D5AB00F1D5
      AB00F1D5AB00F1D5AB00F1D5AB00F1D5AB00F1D6AB00F1D5AB00F1D5AB00F1D5
      AB00F1D5AB00F1D5AB00F1D5AB00EFD2A700D8A55D00F7EDDE00F7EDDE00F4E9
      D800000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      00000000000000000000000000000000000000000000B6B6B60092929200DADA
      DA00B6B6B60092929200DADADA00B6B6B60092929200DADADA00B6B6B6009292
      9200DADADA00B6B6B60092929200DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60092929200B6B6B600B6B6B60092929200B6B6B600B6B6
      B6006E6E6E00B6B6B600B6B6B6006E6E6E00B6B6B600B6B6B6006E6E6E00B6B6
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00A7A7A700A7A7A7007070
      7000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E6008686860086868600E6E6E600929292009292
      9200E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000006E6E6E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFAFAF00A1A1A100A1A1A1009C9C9C009191910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6008686
      860086868600E6E6E6009292920092929200E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60000000000FFB1B100FFB1B100FF6B6B00FFB1B100FFB1
      B100FF6B6B00FFB1B100FFB1B100FF6B6B00FFB1B100FFB1B10000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008080
      8000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BABABA00B8B8B800B4B4B400B1B1B100A9A9A900A3A3
      A300A1A1A10099999900979797008D8D8D000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E600868686006E6E6E00B6B6B6006E6E6E009292
      9200E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000009292920000000000FF6B
      6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1
      B100FF6B6B00FF6B6B0000000000929292000000000000000000000000000000
      0000000000000000000080000000000080000000800080000000800000000000
      8000800000008000000000008000808080008000800080000000800000008000
      8000800000008000000080008000800080008000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00BCBCBC00BEBE
      BE00BABABA00B4B4B400AFAFAF00A5A5A500ACACAC009F9F9F00959595009797
      97008F8F8F007070700000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6006E6E
      6E006E6E6E000E0E0E006E6E6E006E6E6E00E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000006E6E6E0000000000FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B
      6B00FF8E8E00FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00000000009292
      9200000000000000000000000000000000000000000080000000000080008000
      0000800000000000800000008000800000000000800000008000800000008080
      8000800000008000800080008000800000008000800080008000800000008000
      0000800080008000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C8C8CA00B8B8BC00B4B4B800B4B4B600AEAEAE00A8A8
      A800A6A6A600A6A6A6008F8F8F00919191008989890093939300707070000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E6006E6E6E00000000000E0E0E00000000006E6E
      6E00E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      00000000000000000000000000000000000000000000B6B6B60000000000FFB1
      B100FFB1B100FF6B6B00FFB1B100FFB1B100FF6B6B00FFB1B100FFB1B100FF6B
      6B00FFB1B100FFB1B10000000000DADADA000000000000000000000000000000
      0000000000000000FF00000080000000FF000000FF0000008000000080000000
      FF0000008000000080000000FF00C0C0C000FF00FF008000800080008000FF00
      FF008000800080008000FF00FF00FF00FF0080008000FF00FF00000000000000
      0000000000000000000000000000CBCBCB00C9C9C900D5D5E100B6B6D3006A6A
      D00007080400070804008E8E8E009898980096969600A2A2A2009C9C9C008E8E
      8E008A8A8A009494940090909000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6000000
      000000000000007AB9000000000000000000E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000009292920000000000FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B
      6B00FFB1B100FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00000000009292
      92000000000000000000000000000000000000000000000080000000FF000000
      8000000080000000FF000000FF00000080000000FF000000FF0000008000C0C0
      C00080008000FF00FF00FF00FF0080008000FF00FF00FF00FF00800080008000
      8000FF00FF00800080000000000000000000000000000000000000000000CDCD
      CD00D7D7D700BBBBD3006E6ECC002828D000323232002020FA00000000004646
      460074747400888888009A9A9A00989898009494940092929200000000000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E600000000006BC6FF00007AB90000AAFF000000
      0000E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000006E6E6E0000000000FF6B
      6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00FF8E
      8E00FF6B6B00FF6B6B0000000000929292000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00C0C0C000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      00000000000000000000D4D4D400D8D8D800CFCFD1008787CC005F5FDC003333
      E800323232000000DC0000000000000000004B4B4B0063636300707070007E7E
      7E008E8E8E009C9C9C0000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6000000
      00006BC6FF000062960000AAFF0000000000E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60000000000FFB1B100FFB1B100FF6B6B00FFB1B100FFB1
      B100FF6B6B00FFB1B100FFB1B100FF6B6B00FFB1B100FFB1B10000000000DADA
      DA0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C0C0
      C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000DCDCDC00E6E6E600E0E0E000DCDC
      DC00D6D6DA007979D8007E7ED8007878CE00AEAEC700BABAC300DADADA003E3E
      3E00323232009797970070707000636363000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000006BC6FF000062960000AAFF000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000009292920000000000FF6B
      6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1
      B100FF6B6B00FF6B6B0000000000929292000000000000000000000000000000
      0000000000000000FF0000FFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00C0C0C000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      000070707000DCDCDC00DADADA00DADADA00D8D8DC00A3A3D000B2B2D800B8B8
      D200BDBDC800C3C3C5000000000032323200004A730000000000979797008181
      8100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BC6FF000062960000AAFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E6E6E0000000000FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B
      6B00FF8E8E00FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00000000009292
      920000000000000000000000000000000000000000000000FF000000FF0000FF
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C0C0
      C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
      FF00FF00FF00FF00FF0000000000000000000000000000000000000000007070
      7000D8D8D800D4D4D800CECED200D8D8DC00CCCCCC00CACACA00BDBDBD00A7A7
      A70000000000004A7300007AB900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC6FF000062960000AAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B6000000000000000000000000000000
      0000000000000000FF000000FF000000FF0000FFFF0000FFFF000000FF0000FF
      FF0000FFFF0000FFFF000000FF00FFFFFF00FF00FF00FF00FF00FFFFFF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00000000000000
      00000000000000000000000000000000000000000000D6D6D600D4D4D400D2D2
      D200D6D6D600D0D0D000BCBCBC00AAAAAA00A0A0A0008ED4FF00004A7300007A
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BC6FF000062960000AAFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000092929200000000000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E00000000009292
      92000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C0C0
      C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000070707000D4D4D400D5D5D500CECECE00B6B6B600B4B4
      B400B2B2B200000000008ED4FF00004A73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC6FF00004A730000AAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E6E6E00B6B6B6009292
      92006E6E6E00B6B6B600929292006E6E6E00B6B6B600929292006E6E6E00B6B6
      B600929292006E6E6E00B6B6B600929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070707000C6C6C600000000000000000000000000000000000000
      0000004A7300007AB90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60092929200B6B6B600B6B6B60092929200B6B6B600B6B6
      B6006E6E6E00B6B6B600B6B6B6006E6E6E000E0E0E000E0E0E000E0E0E000E0E
      0E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008ED4FF00004A7300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC6FF0000629600007AB9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000092929200DADADA009292
      920092929200DADADA009292920092929200B6B6B6009292920092929200B6B6
      B6000E0E0E00DADADA00DADADA00DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000048B8FF00004A730000AAFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60092929200DADADA00B6B6B60092929200DADADA00B6B6
      B60092929200DADADA00B6B6B600929292000E0E0E00DADADA000E0E0E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B60092929200B6B6
      B600B6B6B60092929200B6B6B600B6B6B6006E6E6E00B6B6B600B6B6B6006E6E
      6E000E0E0E00DADADA0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
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
      0000C0C0C000C0C0C00080808000808080008080800000000000000000000000
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
      000000000000C0C0C000C0C0C000C0C0C0008080800080808000808080008080
      8000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C0008080
      8000C0C0C0008080800080808000808080008080800000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00080808000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800080808000808080000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000008484000084840000848400008484000084
      8400008484000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF0080808000C0C0C000C0C0C0008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000808080008080
      8000C0C0C0008080800080808000808080008080800080808000808080008080
      8000808080000000000080808000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00080808000C0C0C000FFFFFF00FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C0008080
      8000808080008080800080808000808080008080800000000000C0C0C0000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF008080
      800080808000C0C0C00000FF0000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000080808000C0C0C000C0C0C000808080008080
      8000808080000000000080808000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C000C0C0C00080808000C0C0C0008080
      800080808000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF000000
      00008080800080808000C0C0C000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C00080808000808080008080800000000000FFFF
      FF00FFFFFF00FF000000FF000000C0C0C0000000000080808000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080808000C0C0
      C000C0C0C00080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C00080808000FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000
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
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
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
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D000000
      0000000000004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004D4D4D00000000004D4D4D004D4D4D004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D004D4D4D004D4D4D004D4D4D00A6A6
      A6004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00A6A6
      A600D3D3D300D3D3D300A6A6A6004D4D4D00A6A6A60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4D4D00A6A6A600D3D3D300D3D3D300FFFF4D00A6A6A600A6A6
      A6004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00D3D3D300D3D3
      D300D3D3D300D3D3D300A6A6A600D3D3D3004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4D4D00D3D3D300FFFF4D00D3D3D300D3D3D300A6A6A600D3D3
      D3004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00A6A6A600FFFF
      4D00FFFF4D00D3D3D300A6A6A600A6A6A6004E4E4E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004D4D4D00A6A6A600D3D3D300D3D3D300A6A6A6004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D004D4D4D004F4F4F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D00D3D3D3004E4E4E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000BEBEBE00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C8A7
      8F00685B4900B3957E00E0BB9E00000000000000000000000000000000000000
      00000000000000000000E0BA9E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030207000B6A5
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080715F0010101000534A4300D5B39B000000
      000000000000000000000000000000000000000000008D786700C7A891000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6A7BD00202070008D80A60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006060600000000000000000000000000C0C0BF00C0C0BF00C0C0BF00C0C0
      BF00C0C0BF000606060006060600060606000606060006060600000000000000
      000000000000000000000000000000000000000000000000000000000000B299
      86002018100030282000927C6A00E6C4AB000000000000000000000000000000
      0000DCBBA300393C3200D8B8A100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B8D
      B3004048C0003038B00071679100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0BF00C0C0BF0006060600C1C0BE00C0C0BF000000
      0000C0C0BF0000000000000000000000000006060600C0C0BF00C0C0BF000000
      0000C0C0BF000000000006060600000000000000000000000000000000000000
      0000000000000000000000000000EBCBB40070635A002C23290048444100D1B6
      A2000000000000000000E8C9B200E8C9B200544E49007D6F6400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000485AEB003048FF004048D0002020
      7000B39CA4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0BF00C1C0
      BE0006060600C0C0BF0000000000000000000000000000000000000000000000
      0000060606000000000000000000C0C0BF00C0C0BF0000000000060606000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFC4B10047423E0020202000615A5400EBCEB900EACEB800EACEB8007E71
      67003B3A3800DFC4AF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009590DE006976ED003040FF004048D00020207000C6AA9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000606060006060600060606000606060006060600060606000606
      060000000000C0C0BF00C0C0BF00000000000000000006060600060606000606
      0600060606000606060000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2CAB600554A3F003028
      20006F615F00D2BBA600645B540030303000A28F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002C49ED00C0C8F0003040
      FF004048D00040384000C5A69300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2CBB700554A3F00303030003030300040383000483E
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002040F000C0C8F0003040FF004048D00040384000B89A
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606000000000000000000000000000000
      0000060606000000000006060600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8B5
      A400303030004038400048454200EFD5C1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBB8CC002040
      F000C0C8F0003040FF00A098900040384000B696830000000000000000000000
      0000000000000000000000000000000000000000000006060600000000000000
      0000000000000000000000000000060606000000000000000000000000000000
      0000060606000000000000000000060606000000000000000000060606000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8C4B300625E5A00403830003C3A39003C3A39006F61
      5500EFD7C3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000C9B4C7002040F000C0C8F000C0B0B000A098
      900040384000B5937F0000000000000000000000000000000000000000000000
      0000000000000000000006060600000000000000000000000000060606000000
      0000000000000000000000000000000000000000000006060600060606000000
      0000060606000606060006060600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A99B9000404040004040
      400090877F00D8C3B40091827E0040404000887E7500EFD8C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
      000000000000A0989000F0F0F000C0B0B000A098900040384000B38F7A000000
      0000000000000000000000000000000000000000000000000000000000000606
      060000000000060606000000000000000000C0C0BF0000000000000000000000
      0000000000000606060000000000000000000000000000000000060606000000
      0000000000000000000000000000000000000000000000000000E4D0BE00CCBB
      AC007A736C004040400040404000857E7700F1DBC80000000000F0DAC6008578
      6C004040400088837600EFD9C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D004D4D4D004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000A0989000F0F0
      F000C0B0B000A098900040384000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060000000000000000000000
      00000000000000000000C0C0BF00060606000606060006060600060606000606
      0600060606000000000006060600000000000000000000000000000000000000
      00000000000000000000B5A79B007A736D004038300040404000A69691000000
      0000000000000000000000000000F0DAC700CDBCAE005A515700867D76000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4D4D00FFFFFF004D4D4D000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5AB9C004040
      40004B494800C6B5AB0000000000000000000000000000000000000000000000
      000000000000E7D4C400A9A19300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC9BD007A6F7100D1BFB50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
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
      0000000000000000000000FFFF0000FFFF00C2B9C20000000000C0BFC00000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BDBDBD00BCBCBC00BFBFBF00BFBFBF0000000000000000000000
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
      000000000000000000000000000000000000C3C3C30000000000000000000000
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
      0000000000000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000030207000B6A5BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030207000B6A5BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003020
      7000B6A5BB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6A7BD00202070008D80
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A7BD00202070008D80A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A7BD00202070008D80A600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009B8DB3004048C0003038B00071679100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8DB3004048C0003038B0007167910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B8DB3004048C0003038B000716791000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030207000B6A5
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000485A
      EB003048FF004048D00020207000B39CA4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000485AEB003048
      FF004048D00020207000B39CA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000485AEB003048FF004048
      D00020207000B39CA40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6A7BD00202070008D80A600E1C8BE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009590DE006976ED003040FF004048D0002020
      7000C6AA99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009590DE006976ED003040FF004048D00020207000C6AA
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009590DE006976ED003040FF004048D00020207000C6AA99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B8D
      B3004048C0003038B00071679100D0B7B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C49ED00C0C8F0003040FF004048D00040384000C5A69300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C49
      ED00C0C8F0003040FF004048D00040384000C5A6930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002C49ED00C0C8
      F0003040FF004048D00040384000C5A693000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2BEBD00485AEB003048FF004048D0002020
      7000B39CA4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002040F000C0C8F0003040
      FF004048D00040384000B89A8800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002040F000C0C8F0003040FF004048
      D00040384000B89A880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002040F000C0C8F0003040FF004048D0004038
      4000B89A88000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009590DE006976ED003040FF004048D00020207000C6AA9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CBB8CC002040F000C0C8F0003040FF00A098900040384000B696
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBB8CC002040F000C0C8F0003040FF00A098900040384000B69683000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBB8
      CC002040F000C0C8F0003040FF00A098900040384000B6968300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2C2D3002C49ED00C0C8F0003040
      FF004048D00040384000C5A69300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000FF000000FF00000000000000000000C9B4C7002040
      F000C0C8F000C0B0B000A098900040384000B5937F0000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      000000000000FF00FF00FF00FF000000000000000000C9B4C7002040F000C0C8
      F000C0B0B000A098900040384000B5937F000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF000000000000000000000000
      0000FFFF0000FFFF00000000000000000000C9B4C7002040F000C0C8F000C0B0
      B000A098900040384000B5937F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6ADD5002040F000C0C8F0003040FF004048D00040384000B89A
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000000000000000000000000000FF00000000
      000000000000000000000000000000000000A0989000F0F0F000C0B0B000A098
      900040384000B38F7A0000000000000000000000000000000000000000000000
      000000000000FF00FF00000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000A0989000F0F0F000C0B0B000A09890004038
      4000B38F7A000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FFFF000000000000000000000000
      00000000000000000000A0989000F0F0F000C0B0B000A098900040384000B38F
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBB8CC002040
      F000C0C8F0003040FF00A098900040384000B696830000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000A0989000F0F0F000C0B0B000A098900040384000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
      0000A0989000F0F0F000C0B0B000A09890004038400000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000FFFF0000000000000000000000000000000000000000000000000000A098
      9000F0F0F000C0B0B000A0989000403840000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C9B4C7002040F000C0C8F000C0B0B000A098
      900040384000B5937F0000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6BEAC00A0989000F0F0F000C0B0B000A098900040384000B38F7A000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4BBA800A0989000F0F0
      F000C0B0B000A098900040384000000000000000000000000000000000000000
      0000000000000000000000FF000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF0000C2B9
      C20000000000C0BFC00000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00C2B9C2000000
      0000C0BFC000FF00FF00FF00FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000C2B9C20000000000C0BF
      C000FFFF0000FFFF000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
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
      0000000000000000000030207000B6A5BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030207000B6A5BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030207000B6A5BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003020
      7000B6A5BB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6A7BD002020
      70008D80A600E1C8BE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A7BD00202070008D80A600E1C8
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A7BD00202070008D80A600E1C8
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A7BD00202070008D80A600E1C8BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009B8DB3004048C0003038B00071679100D0B7
      B400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8DB3004048C0003038B00071679100D0B7B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8DB3004048C0003038B00071679100D0B7B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B8DB3004048C0003038B00071679100D0B7B40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2BE
      BD00485AEB003048FF004048D00020207000B39CA40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2BEBD00485AEB003048
      FF004048D00020207000B39CA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2BEBD00485AEB003048
      FF004048D00020207000B39CA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2BEBD00485AEB003048FF004048
      D00020207000B39CA40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009590DE006976ED003040FF004048
      D00020207000C6AA990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009590DE006976ED003040FF004048D00020207000C6AA
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009590DE006976ED003040FF004048D00020207000C6AA
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009590DE006976ED003040FF004048D00020207000C6AA99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2C2D3002C49ED00C0C8F0003040FF004048D00040384000C5A693000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2C2D3002C49
      ED00C0C8F0003040FF004048D00040384000C5A6930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2C2D3002C49
      ED00C0C8F0003040FF004048D00040384000C5A6930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2C2D3002C49ED00C0C8
      F0003040FF004048D00040384000C5A693000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6ADD5002040F000C0C8
      F0003040FF004048D00040384000B89A88000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6ADD5002040F000C0C8F0003040FF004048
      D00040384000B89A880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6ADD5002040F000C0C8F0003040FF004048
      D00040384000B89A880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6ADD5002040F000C0C8F0003040FF004048D0004038
      4000B89A88000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBB8CC002040F000C0C8F0003040FF00A09890004038
      4000B69683000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBB8CC002040F000C0C8F0003040FF00A098900040384000B69683000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBB8CC002040F000C0C8F0003040FF00A098900040384000B69683000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBB8
      CC002040F000C0C8F0003040FF00A098900040384000B6968300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9B4
      C7002040F000C0C8F000C0B0B000A098900040384000B5937F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9B4C7002040F000C0C8
      F000C0B0B000A098900040384000B5937F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9B4C7002040F000C0C8
      F000C0B0B000A098900040384000B5937F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9B4C7002040F000C0C8F000C0B0
      B000A098900040384000B5937F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6BEAC00A0989000F0F0F000C0B0
      B000A098900040384000B38F7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6BEAC00A0989000F0F0F000C0B0B000A09890004038
      4000B38F7A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6BEAC00A0989000F0F0F000C0B0B000A09890004038
      4000B38F7A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6BEAC00A0989000F0F0F000C0B0B000A098900040384000B38F
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4BBA800A0989000F0F0F000C0B0B000A0989000403840000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4BB
      A800A0989000F0F0F000C0B0B000A09890004038400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4BB
      A800A0989000F0F0F000C0B0B000A09890004038400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4BBA800A098
      9000F0F0F000C0B0B000A0989000403840000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
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
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030207000B6A5BB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030207000B6A5BB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000030207000B6A5BB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6A7BD00202070008D80A600E1C8BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6A7BD00202070008D80A600E1C8BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6A7
      BD00202070008D80A600E1C8BE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8DB3004048C0003038
      B00071679100D0B7B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8DB3004048C0003038
      B00071679100D0B7B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B8DB3004048C0003038B0007167
      9100D0B7B4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2BEBD00485AEB003048FF004048D00020207000B39CA4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2BEBD00485AEB003048FF004048D00020207000B39CA4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2BEBD00485AEB003048FF004048D00020207000B39CA400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009590DE006976
      ED003040FF004048D00020207000C6AA99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009590DE006976
      ED003040FF004048D00020207000C6AA99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009590DE006976ED003040
      FF004048D00020207000C6AA9900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2C2D3002C49ED00C0C8F0003040FF004048D0004038
      4000C5A693000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2C2D3002C49ED00C0C8F0003040FF004048D0004038
      4000C5A693000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2C2D3002C49ED00C0C8F0003040FF004048D00040384000C5A6
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6AD
      D5002040F000C0C8F0003040FF004048D00040384000B89A8800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6AD
      D5002040F000C0C8F0003040FF004048D00040384000B89A8800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6ADD5002040
      F000C0C8F0003040FF004048D00040384000B89A880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBB8CC002040F000C0C8F0003040
      FF00A098900040384000B6968300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBB8CC002040F000C0C8F0003040
      FF00A098900040384000B6968300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBB8CC002040F000C0C8F0003040FF00A098
      900040384000B696830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9B4C7002040F000C0C8F000C0B0B000A098900040384000B593
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9B4C7002040F000C0C8F000C0B0B000A098900040384000B593
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9B4C7002040F000C0C8F000C0B0B000A098900040384000B5937F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6BEAC00A098
      9000F0F0F000C0B0B000A098900040384000B38F7A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6BEAC00A098
      9000F0F0F000C0B0B000A098900040384000B38F7A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6BEAC00A0989000F0F0
      F000C0B0B000A098900040384000B38F7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4BBA800A0989000F0F0F000C0B0B000A098
      9000403840000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4BBA800A0989000F0F0F000C0B0B000A098
      9000403840000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4BBA800A0989000F0F0F000C0B0B000A09890004038
      4000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000055AD
      FF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055AD
      FF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055AD
      FF0055ADFF0055ADFF0055ADFF0055ADFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000059AFFF0059AFFF0059AFFF0059AFFF0059AF
      FF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AF
      FF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000005CB2
      FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2
      FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2
      FF005CB2FF005CB2FF005CB2FF005CB2FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8B2A5006A60B8004040C0004040C000C2A1A90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000005FB4FF005FB4FF005FB4FF005FB4FF005FB4
      FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4
      FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD94B1006058BB007068D0008078E0006060
      D0004040C000C3A5AE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000063B6
      FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6
      FF0063B6FF0063B6FF0063B6FF0063B6FF000000000037668F005CAAEF002443
      5F000000000063B6FF0063B6FF0063B6FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A38EB7007070
      D0009090E000A098E000A098E0008078E0006060D0004040C000C5A8B4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000066B9FF0066B9FF0039678F0012222F0066B9
      FF00000000000000000066B9FF00000000000000000066B9FF00000000000000
      000066B9FF0039678F002C506F0059A1DF0066B9FF0066B9FF0066B9FF0066B9
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007070D0009090E000B0A8F000B0B8F000C0C8F000B0A8
      F0008078E0006060D0004040C000C7ACB8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000069BB
      FF0069BBFF000C161F0069BBFF0069BBFF0069BBFF0069BBFF0069BBFF0069BB
      FF0069BBFF0069BBFF0069BBFF0069BBFF0069BBFF0069BBFF0013222F0069BB
      FF0069BBFF0069BBFF0069BBFF0069BBFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030207000B39CAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A098E000B0B8
      F000D0D8F000D0D0F000D0C8F000C0C8F000B0A8F0008078E0006060D0004040
      C000C9B0BD000000000000000000000000000000000000000000000000000000
      00000000000000000000800000006DBEFF006DBEFF006DBEFF006DBEFF006DBE
      FF006DBEFF006DBEFF006DBEFF006DBEFF006DBEFF006DBEFF006DBEFF006DBE
      FF006DBEFF006DBEFF00000000006DBEFF006DBEFF006DBEFF006DBEFF006DBE
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4A0B3002020
      70008C7DA100DFC4B90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6D0CF00B0B8F000E0E0F000D0D8F000D0D0F000D0C8
      F000C0C8F000B0A8F0008078E0006060D0004040C000CAB4C200000000000000
      00000000000000000000000000000000000000000000000000008000000070C0
      FF0070C0FF000000000070C0FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0
      FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0FF000000000070C0
      FF0070C0FF0070C0FF0070C0FF0070C0FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009B8CB0004048C0003038B00071679100D2BC
      B900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8D4
      D300B0B8F000E0E0F000D0D8F000D0D0F000D0C8F000C0C8F000B0A8F0008078
      E0006060D0004040C000CCB8C700000000000000000000000000000000000000
      000000000000000000008000000073C2FF0073C2FF000000000073C2FF0073C2
      FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2
      FF0073C2FF0073C2FF000000000073C2FF0073C2FF0073C2FF0073C2FF0073C2
      FF00800000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2BC
      B900485AEB003048FF004048D00020207000B6A4AE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8D4D400B0B8F000E0E0F000D0D8
      F000D0D0F000D0C8F000C0C8F000B0A8F0008078E0006060D0004040C000CCB8
      C8000000000000000000000000000000000000000000000000008000000074C3
      FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3
      FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF000000000074C3
      FF0074C3FF0074C3FF0074C3FF0074C3FF008000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009590DE006976ED003040FF004048
      D00020207000CCB7A80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8D5D500B0B8F000E0E0F000D0D8F000D0D0F000D0C8F000C0C8
      F000B0A8F0008078E0006060D0004040C000CCB9C80000000000000000000000
      000000000000000000008000000076C5FF0076C5FF000000000076C5FF0076C5
      FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5
      FF0076C5FF005893BF002B495F0067ACDF0076C5FF0076C5FF0076C5FF0076C5
      FF00800000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2C2D4002C49EE00C0C8F0003040FF004048D00040384000CCB8AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8D6D600B0B8
      F000E0E0F000D0D8F000D0D0F000D0C8F000C0C8F000B0A8F0008078E0006060
      D0004040C00000000000000000000000000000000000000000008000000079C7
      FF0079C7FF00070B0F0079C7FF0079C7FF0079C7FF0079C7FF0079C7FF0079C7
      FF0079C7FF0079C7FF0079C7FF0079C7FF00000000003C637F0079C7FF003456
      6F000000000079C7FF0079C7FF0079C7FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B0DA002040F000C0C8
      F0003040FF004048D00040384000C1AEA2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8D6D800B0B8F000E0E0F000D0D8F000D0D0
      F000D0C8F000C0C0F000A098E0007078E000625EC20000000000000000000000
      00000000000000000000800000007CC9FF007CC9FF007CC9FF007CC9FF007CC9
      FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9
      FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBBBD0002040F000C0C8F0003040FF00A09890004038
      4000C1AEA3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8D7D800B0B8F000E0E0F000D0D8F000D0D0F000C0B8F000A098E000787E
      DF00BBACCA000000000000000000000000000000000000000000800000007ECB
      FF007ECBFF001F323F007ECBFF007ECBFF007ECBFF007ECBFF007ECBFF007ECB
      FF007ECBFF007ECBFF007ECBFF007ECBFF007ECBFF007ECBFF0017252F007ECB
      FF007ECBFF007ECBFF007ECBFF007ECBFF008000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBBB
      D2002040F000C0C8F000C0B0B000A098900040384000C1AFA400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9D8DA00B0B8F000E0E0
      F000C0B8F000B0A8F0008080E0009B9ADB00E2D1D50000000000000000000000
      000000000000000000008000000081CDFF0081CDFF00507F9F001F323F0081CD
      FF00000000000000000081CDFF00000000000000000081CDFF00000000000000
      000081CDFF00273F4F00588CAF0081CDFF0081CDFF0081CDFF0081CDFF0081CD
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9C9BB00A0989000F0F0F000C0B0
      B000A098900040384000C1B0A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E9D9DB00B0B8F000B0B0F000B9AFEC00D9CBD7000000
      00000000000000000000000000000000000000000000000000008000000084CF
      FF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CF
      FF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CF
      FF0084CFFF0084CFFF0084CFFF0084CFFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9C9BC00A0989000F0F0F000C0B0B000A0989000403840000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000087D1FF0087D1FF0087D1FF0087D1FF0087D1
      FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1
      FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000089D3
      FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3
      FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3
      FF0089D3FF0089D3FF0089D3FF0089D3FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000008CD5FF008CD5FF008CD5FF008CD5FF008CD5
      FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5
      FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000005C000000E60000000100010000000000C80A00000000000000000000
      000000000000000000000000FFFFFF00FFFFFE000000000000000000FFFFFE00
      0000000000000000CFFFFE000000000000000000C7FFFE000000000000000000
      C0FFFE000000000000000000C07FFE000000000000000000C00FFE0000000000
      00000000C003FE000000000000000000C001FE000000000000000000C0003E00
      0000000000000000C0001E000000000000000000C00006000000000000000000
      C0001E000000000000000000C0003E000000000000000000C001FE0000000000
      00000000C003FE000000000000000000C00FFE000000000000000000C07FFE00
      0000000000000000C0FFFE000000000000000000C7FFFE000000000000000000
      CFFFFE000000000000000000FFFFFE000000000000000000FFFFFE0000000000
      00000000FFFFFFF803FFFFF00FFFFFF0800003C0003FC0000FFFFFF080000380
      003FC0000FFFFFF080000300001E00000FFFFFB080000200000E00000FFFFFF0
      80000200000600000FFFFFB080000200000600000FFFE3F08000020000060000
      0F8023B080000200000600000F8000F080000200000600000F88003080000200
      000E00000F8C007080000200001E00000F8A00B080000300007E00000F811FF0
      80000380003E00000F819FB0800003E0001E00000F8DFFF0800003F8000E0000
      0F8EFFB0800003FFF80600000F807FF0800003FFFC0200000F807FB0C00003FF
      FE0200000FFFFFF0FF39FFFFFF0200000FFFFFF0FF11FFFFFF8200000F800070
      FF83FFFFFFC200000FFFFFF0FFC7FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFFFFF0FFFFFFFFFFFE00001E000030FFFFFFFF3FFE00001E000030FFFFFFFF
      0FFE00001E000030FFFFFFFC01FE00001E000030FFFFFFF800FE00001E000030
      F0001FF0001E00001E000030C00007E0000600001E000030800003E000060000
      1E00003080000380000600001E00003080000300000600001E00003080000300
      000E00001E00003080000200003E00001E00003080000200003E00001E000030
      80000300007FFE0FFE000030800003C0003FFE0DFE000030C00007E0003FFE0D
      FE000030FFFFFFFC000FFE0DFE000030FFFFFFFF040FFE0DFE000030FFFFFFFF
      FF0FFE01FE0000F0FFFFFFFFFF1FFE0FFE0000F0FFFFFFFFFFFFFE0FFE0001F0
      FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFCFFF0FFFFFFFFFFFFFFFFFFF07FF0FFFFFFFFFFFF00001FE01FF0FFFFFFFF
      FFFF00001F0003F0F001FFF8003FFFFFFC0001F0F000FFF0003FFFFFFC000070
      F0007FF0003FFFFFFC000070F0003FF0003F000018000070F0001FF0003F0000
      18000010F0000FF0003FFFFFF8000010F001FFF0003FFFFFF8000000F001FFF0
      003FFFFFF8000010F001FFF0003F000018000030F8FF1FF0003F00001F0000F0
      FFFF9FF0003FFFFFFF8001F0FFF75FF0003FFFFFFFE003F0FFF8FFF0003FFFFF
      FFFC01F0FFFFFFF0003F00001FFE00F0FFFFFFFFFFFF00001FFF0070FFFFFFFF
      FFFFFFFFFFFF80F0FFFFFFFFFFFFFFFFFFFFC3F0FFFFFFFFFFFFFFFFFFFFFFF0
      FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFF
      F8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000E0019FFF
      FFFFFFFFF8000000E0011E000007FFFFF8000000E0003EFFFFF7FFFFF8000000
      E0007EFFFEF4000008000000E0007EFFFF75FFFFE8000000E0007EE6D775BE3D
      E8000000E0007EDAD6B5BDDDE8000000E0007EDAD6B5BDFAE8000000E000FEDA
      D6B5BC1AE8000000E001FEE635B5BDDAE8000000E001FEFFF7F595D768000000
      E001FEFFF7F5A63768000000E003FEFFFFF5FFFFE8000000E007FE0000040000
      08000000E00FFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFF
      FFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFF0
      E0001F3FFFFFFFFFFFFFFFF0E0001FFFFFFFFFFFFFFFFFF0E0001FFF7FFFFFFF
      FFFFFFF0E0001FFFFFFFFFFFFFFFFFF0FFFFFE000007E1FDFFFFFFF0FCFFFEFB
      FFF7E1F9FFC007F0FC7FFEF70037E0F1FFC007F0FE1FFEC17157E0C3FFC007F0
      FF07FEC3F657F003FFC007F0FF03FE809837F807FFC007F0FF81FEFFFFF7FC0F
      FFC007F0FFC0FEFFEF57FE0FFFC007F0FFC07EBEF6D7FC07FFC007F0CE603EDD
      F917F803FFC007F0EEF81EEB7BD7C041FFC007F0EEFC1EF7C057C1E1FFC00FF0
      E0FFFEFFFFF7C3F9FFC01FF0EEFFFE000007C7FFFFC03FF0EEFFFFFFFFFFFFFF
      FFFFFFF0C47FFFFFFFFFFFFFFFFFFFF0FFFFFFFFE07FFFFFFFFFFFF0FFFFFFFF
      FFF7FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFC0003F80007F0000F0
      FFFFFFC0003F80007F0000F0FFFFFFC0003F80007F0000F0E0001FC0003F8000
      7F0000F0E0001FFFFFFFFFFFFFFFFFF0E0001FF9FFFFF3FFFFE7FFF0E0001FF8
      FFFFF1FFFFE3FFF0FFFFFFFC3FFFF87FFFF0FFF0FCFFFFFE0FFFFC1FFFF83FF0
      FC3FFFFE07FFFC0FFFF81FF0FE0FFFFF03FFFE07FFFC0FF0FE07FFFF81FFFF03
      FFFE07F0FF03FFFF80FFFF01FFFE03F0FF01FF9CC07F3980FE7301F0FF80FFDD
      F03FBBE07F77C0F0FFC07FDDF83FBBF07F77E0F0FFE03FC1FFFF83FFFF07FFF0
      FFF01FDDFFFFBBFFFF77FFF0FFF81FDDFFFFBBFFFF77FFF0FFFFFF88FFFF11FF
      FE23FFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFF
      FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0
      FFFFFFFFFFFFFFFFFFFFFFF0E0001F80007F80007F0000F0E0001F80007F8000
      7F0000F0E0001F80007F80007F0000F0E0001F80007F80007F0000F0FFFFFFFF
      FFFFFFFFFFFFFFF0FCFFFFF3FFFFF3FFFFE7FFF0FC3FFFF0FFFFF0FFFFE1FFF0
      FE0FFFF83FFFF83FFFF07FF0FE07FFF81FFFF81FFFF03FF0FF03FFFC0FFFFC0F
      FFF81FF0FF01FFFC07FFFC07FFF80FF0FF80FFFE03FFFE03FFFC07F0FFC07FFF
      01FFFF01FFFE03F0FFE03FFF80FFFF80FFFF01F0FFF01FFFC07FFFC07FFF80F0
      FFF81FFFE07FFFE07FFFC0F0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFF
      FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0
      FC01FF80007F80007F0000F0FC01FF80007F80007F0000F0FC01FF80007F8000
      7F0000F0FE01FF80007F80007F0000F0FE01FFFFFFFFFFFFFFFFFFF0FF01FFF3
      FFFFF3FFFFE7FFF0FE00FFF0FFFFF0FFFFE1FFF0FE00FFF83FFFF83FFFF07FF0
      FE00FFF81FFFF81FFFF03FF0FE01FFFC0FFFFC0FFFF81FF0FE03FFFC07FFFC07
      FFF80FF0FF03FFFE03FFFE03FFFC07F0FFC3FFFF01FFFF01FFFE03F0FFE3FFFF
      80FFFF80FFFF01F0FFE3FFFFC07FFFC07FFF80F0FFF7FFFFE07FFFE07FFFC0F0
      FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFFFFF0FFFFFFFFFFFC000007FFFFF0FFFFFFFFFFFC000007FFFFF0FFFFFFFF
      FFFC000007FFFFF0FFFFFFFFFFFC000007FFFFF0E0001FFFFFFC000007FDFFF0
      E0001FF07FFC000007F8FFF0E0001FE03FFC000007F8FFF0E0001FC01FFC0000
      07F87FF0FFFFFFC00FFC000007F81FF0FCFFFFC007FC000007F80FF0FC3FFFC0
      03FC000007F00FF0FE0FFFE001FC000007E00FF0FE07FFF000FC000007E00FF0
      FF03FFF8007C000007E00FF0FF01FFFC007C000007F01FF0FF80FFFE007C0000
      07F00FF0FFC07FFF007C000007F00FF0FFE03FFF807C000007F007F0FFF01FFF
      C1FC000007F007F0FFF81FFFFFFC000007F007F0FFFFFFFFFFFC000007FFFFF0
      FFFFFFFFFFFC000007FFFFF0FFFFFFFFFFFC000007FFFFF00000000000000000
      0000000000000000000000000000}
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'eecp_f'
    Version = '1.4.1.4'
    Left = 240
    Top = 8
  end
end
