object phoneRec_f: TphoneRec_f
  Left = 364
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'phoneRec_f'
  ClientHeight = 380
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
    Left = 9
    Top = 216
    Width = 368
    Height = 115
    Color = 16245712
    Ctl3D = True
    ImeMode = imSHanguel
    ImeName = 'Microsoft Office IME 2007'
    Lines.Strings = (
      'memTelRec')
    ParentCtl3D = False
    TabOrder = 2
  end
  object pnlTelNoRegi: TPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 103
    Align = alTop
    Caption = 'pnlTelNoRegi'
    TabOrder = 1
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
      Version = '1.3.0.1'
    end
    object lblTrcode: TLabel
      Left = 100
      Top = 7
      Width = 48
      Height = 13
      AutoSize = False
      Caption = 'lblTrcode'
      Transparent = False
      Visible = False
    end
    object Label1: TLabel
      Left = 11
      Top = 3
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
    object spSkinLabel2: TLabel
      Left = 10
      Top = 50
      Width = 24
      Height = 13
      AutoSize = False
      Caption = #49457#47749
      Transparent = False
    end
    object spSkinLabel3: TLabel
      Left = 10
      Top = 75
      Width = 48
      Height = 13
      AutoSize = False
      Caption = #52264#53944#48264#54840
      Transparent = False
    end
    object spSkinLabel4: TLabel
      Left = 10
      Top = 24
      Width = 48
      Height = 13
      AutoSize = False
      Caption = #51204#54868#48264#54840
      Transparent = False
    end
    object edtName: TEdit
      Left = 90
      Top = 50
      Width = 121
      Height = 21
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'edtName'
      OnKeyPress = edtNameKeyPress
    end
    object edtChart: TEdit
      Left = 90
      Top = 75
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtChart'
    end
    object edtTel: TEdit
      Left = 250
      Top = 74
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Text = 'edtTel'
      Visible = False
    end
    object cbtel: TComboBox
      Left = 91
      Top = 22
      Width = 120
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
      Text = 'cbtel'
    end
    object spSkinButton4: TButton
      Left = 214
      Top = 51
      Width = 35
      Height = 19
      Caption = #52286#44592
      TabOrder = 3
      Visible = False
    end
    object spSkinButton5: TButton
      Left = 213
      Top = 24
      Width = 35
      Height = 19
      Caption = #52286#44592
      TabOrder = 4
      Visible = False
    end
  end
  object spSkinPanel2: TPanel
    Left = 0
    Top = 103
    Width = 387
    Height = 57
    Align = alTop
    Caption = 'spSkinPanel2'
    TabOrder = 0
    object lblTelDate: TLabel
      Left = 296
      Top = 185
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
    object Label2: TLabel
      Left = 9
      Top = 4
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
    object lblTransferID: TLabel
      Left = 220
      Top = 25
      Width = 60
      Height = 13
      Caption = 'lblTransferID'
      Transparent = False
      Visible = False
    end
    object lblreceverID: TLabel
      Left = 180
      Top = 75
      Width = 57
      Height = 13
      Caption = 'lblreceverID'
      Transparent = False
      Visible = False
    end
    object lblWorkID: TLabel
      Left = 290
      Top = 75
      Width = 47
      Height = 13
      Caption = 'lblWorkID'
      Transparent = False
      Visible = False
    end
    object spSkinLabel1: TLabel
      Left = 10
      Top = 26
      Width = 36
      Height = 13
      AutoSize = False
      Caption = #53685#54868#51088
      Transparent = False
    end
    object spSkinLabel5: TLabel
      Left = 10
      Top = 51
      Width = 48
      Height = 13
      AutoSize = False
      Caption = #45572#44396#50640#44172
      Transparent = False
      Visible = False
    end
    object edtReceiver: TEdit
      Left = 305
      Top = 41
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      Text = 'edtReceiver'
      Visible = False
    end
    object edtTransfer: TEdit
      Left = 305
      Top = 16
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtTransfer'
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
      Visible = False
      OnChange = cbReceiverChange
    end
    object btnMemSend: TButton
      Left = 214
      Top = 52
      Width = 67
      Height = 21
      Caption = #47700#47784#51204#45804
      TabOrder = 2
      Visible = False
      OnClick = btnMemSendClick
    end
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 160
    Width = 387
    Height = 54
    Align = alTop
    Caption = 'spSkinPanel1'
    TabOrder = 3
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
    object spSkinLabel7: TLabel
      Left = 10
      Top = 28
      Width = 24
      Height = 13
      AutoSize = False
      Caption = #48516#47448
      Transparent = False
    end
    object spSkinLabel6: TLabel
      Left = 10
      Top = 62
      Width = 36
      Height = 13
      AutoSize = False
      Caption = #51473#50836#46020
      Transparent = False
    end
    object cbSubject: TComboBox
      Left = 90
      Top = 27
      Width = 126
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = #44048#49324#51064#49324
      Items.Strings = (
        #50696#50557#54869#51064
        #50696#50557#48120#45236#50896#54869#51064
        #50696#50557#48120#45236#50896#47532#53084
        'F/U Recall'
        #54644#54588#53084
        #50508#46988#47532#53084
        #49548#44060#44048#49324
        #49440#47932#44048#49324
        #50696#50557#49324#51204#50672#46973
        #51652#47308#48708#49688#45225)
    end
    object rgCheck: TRadioGroup
      Left = 91
      Top = 53
      Width = 286
      Height = 33
      Columns = 4
      Items.Strings = (
        #54869#51064#51204#54868
        #44596#44553
        #51473#50836
        #48372#53685)
      TabOrder = 2
    end
    object spSkinButton2: TButton
      Left = 314
      Top = 28
      Width = 35
      Height = 19
      Caption = #52628#44032
      TabOrder = 1
      Visible = False
    end
  end
  object spSkinPanel3: TPanel
    Left = 0
    Top = 337
    Width = 387
    Height = 43
    Align = alBottom
    Caption = 'spSkinPanel3'
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
    object spSkinButton1: TButton
      Left = 186
      Top = 8
      Width = 61
      Height = 25
      Caption = #50696#50557#46321#47197
      TabOrder = 2
      OnClick = spSkinButton1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 335
    Top = 15
  end
end
