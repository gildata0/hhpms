object telrec_f: Ttelrec_f
  Left = 419
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'telrec_f'
  ClientHeight = 501
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTime: TLabel
    Left = 95
    Top = 75
    Width = 205
    Height = 24
    Alignment = taRightJustify
    AutoSize = False
    Caption = '00:00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -21
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object memTelRec: TMemo
    Left = 0
    Top = 303
    Width = 387
    Height = 147
    Align = alClient
    Color = 16245712
    Ctl3D = True
    ImeMode = imSHanguel
    ImeName = 'Microsoft Office IME 2007'
    Lines.Strings = (
      'memTelRec')
    ParentCtl3D = False
    TabOrder = 0
  end
  object pnlTelNoRegi: TPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 101
    Align = alTop
    Caption = 'pnlTelNoRegi'
    TabOrder = 1
    object spSkinLabel4: TLabel
      Left = 10
      Top = 24
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #51204#54868#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object lblTrcode: TLabel
      Left = 100
      Top = 7
      Width = 48
      Height = 13
      AutoSize = False
      Caption = 'lblTrcode'
      Visible = False
    end
    object spSkinLabel3: TLabel
      Left = 10
      Top = 75
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object spSkinLabel2: TLabel
      Left = 10
      Top = 50
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #49457#47749
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object progressbar: TAdvProgressBar
      Left = 91
      Top = 71
      Width = 114
      Height = 3
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
      ShowBorder = True
      ShowPercentage = False
      ShowPosition = False
      Steps = 20
      Version = '1.2.1.1'
    end
    object Label1: TLabel
      Left = 11
      Top = 3
      Width = 48
      Height = 17
      AutoSize = False
      Caption = 'From'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #46027#50880
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnSchTelNo: TButton
      Left = 213
      Top = 24
      Width = 35
      Height = 19
      Caption = #52286#44592
      TabOrder = 0
      OnClick = btnSchTelNoClick
    end
    object edtTel: TEdit
      Left = 90
      Top = 24
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtTel'
    end
    object edtName: TEdit
      Left = 90
      Top = 50
      Width = 121
      Height = 21
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
      Text = 'edtName'
    end
    object edtChart: TEdit
      Left = 90
      Top = 75
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
      Text = 'edtChart'
    end
    object btnSchName: TButton
      Left = 214
      Top = 51
      Width = 35
      Height = 19
      Caption = #52286#44592
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 101
    Width = 387
    Height = 96
    Align = alTop
    TabOrder = 2
    object spSkinLabel5: TLabel
      Left = 10
      Top = 51
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #45572#44396#50640#44172
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object spSkinLabel1: TLabel
      Left = 10
      Top = 26
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #48155#51008#49324#46988
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object lblWorkID: TLabel
      Left = 290
      Top = 75
      Width = 47
      Height = 13
      Caption = 'lblWorkID'
      Visible = False
    end
    object lblTransferID: TLabel
      Left = 220
      Top = 25
      Width = 60
      Height = 13
      Caption = 'lblTransferID'
      Visible = False
    end
    object lblTelDate: TLabel
      Left = 296
      Top = 98
      Width = 80
      Height = 13
      Caption = 'lblTelDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblreceverID: TLabel
      Left = 180
      Top = 75
      Width = 57
      Height = 13
      Caption = 'lblreceverID'
      Visible = False
    end
    object Label2: TLabel
      Left = 9
      Top = 4
      Width = 48
      Height = 17
      AutoSize = False
      Caption = 'To'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #46027#50880
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnMemSend: TButton
      Left = 214
      Top = 52
      Width = 67
      Height = 21
      Caption = #47700#47784#51204#45804
      TabOrder = 0
    end
    object edtTransfer: TEdit
      Left = 265
      Top = 16
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtTransfer'
      Visible = False
    end
    object edtReceiver: TEdit
      Left = 265
      Top = 41
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Text = 'edtReceiver'
      Visible = False
    end
    object cbTransfer: TComboBox
      Left = 90
      Top = 26
      Width = 124
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      Text = 'cbTransfer'
      OnChange = cbTransferChange
    end
    object cbReceiver: TComboBox
      Left = 90
      Top = 51
      Width = 124
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
      Text = 'cbReceiver'
      OnChange = cbReceiverChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 197
    Width = 387
    Height = 106
    Align = alTop
    TabOrder = 3
    object spSkinLabel7: TLabel
      Left = 10
      Top = 28
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #48516#47448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object spSkinLabel6: TLabel
      Left = 10
      Top = 62
      Width = 50
      Height = 19
      AutoSize = False
      Caption = #51473#50836#46020
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 93
      Height = 17
      AutoSize = False
      Caption = #51204#45804#49324#54637
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #46027#50880
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cbSubject: TComboBox
      Left = 90
      Top = 27
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 0
      Text = #51652#47308#47928#51032
      Items.Strings = (
        #51652#47308#47928#51032
        #50557#49549#47928#51032
        #50896#51109#45784#53685#54868
        #44048#49324#51204#54868)
    end
    object spSkinButton2: TButton
      Left = 214
      Top = 28
      Width = 35
      Height = 19
      Caption = #52628#44032
      TabOrder = 1
    end
    object rgCheck: TRadioGroup
      Left = 91
      Top = 53
      Width = 286
      Height = 33
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        #54869#51064#51204#54868
        #44596#44553
        #51473#50836
        #48372#53685)
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 450
    Width = 387
    Height = 51
    Align = alBottom
    TabOrder = 4
    object btnRefresh: TButton
      Left = 319
      Top = 8
      Width = 55
      Height = 25
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btnRefreshClick
    end
    object btnTelMem: TButton
      Left = 255
      Top = 8
      Width = 55
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
      OnClick = btnTelMemClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 335
    Top = 15
  end
end
