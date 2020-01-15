object mapSend_f: TmapSend_f
  Left = 397
  Top = 144
  BorderIcons = [biSystemMenu]
  Caption = 'mapSend_f'
  ClientHeight = 721
  ClientWidth = 363
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 680
    Align = alClient
    TabOrder = 0
    object imgMap: TImage
      Left = 19
      Top = 57
      Width = 320
      Height = 240
    end
    object Label2: TLabel
      Left = 99
      Top = 596
      Width = 64
      Height = 12
      Alignment = taRightJustify
      Caption = #48372#45236#45716' '#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 41
      Top = 34
      Width = 24
      Height = 12
      Alignment = taRightJustify
      Caption = #51228#47785
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 9
      Width = 56
      Height = 12
      Alignment = taRightJustify
      Caption = #48155#45716' '#48264#54840' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object LblMemcontentSize: TLabel
      Left = 233
      Top = 555
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = 'LblMemcontentSize'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 555
      Width = 29
      Height = 13
      Caption = '/1000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 555
      Width = 160
      Height = 26
      Caption = #48337#50896#50557#46020#54028#51068' size 320x240'#13#10#51228#51089#54596#50836#49884' '#44288#47532#51088#50640#44172' '#47928#51032#50836#47581
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object memContent: TMemo
      Left = 7
      Top = 303
      Width = 350
      Height = 253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft IME 2003'
      Lines.Strings = (
        '+ddd+'#45784', '#50504#45397#54616#49901#45768#44620'?'
        '+aaa+'#50724#49884#45716' '#44600#51077#45768#45796'.')
      MaxLength = 1000
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = memContentChange
    end
    object edtSubject: TEdit
      Left = 70
      Top = 30
      Width = 176
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtSubject'
    end
    object edtRcvNo: TEdit
      Left = 167
      Top = 591
      Width = 176
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Text = 'edtRcvNo'
      OnExit = edtRcvNoExit
    end
    object edtSendNo: TEdit
      Left = 70
      Top = 5
      Width = 176
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
      Text = 'edtSendNo'
      OnExit = edtSendNoExit
    end
    object btnSend: TButton
      Left = 7
      Top = 614
      Width = 334
      Height = 40
      Caption = #50557#46020'  '#51204#49569
      TabOrder = 4
      OnClick = btnSendClick
    end
    object regMap: TButton
      Left = 263
      Top = 6
      Width = 70
      Height = 43
      Caption = #50557#46020'  '#46321#47197
      TabOrder = 5
      OnClick = regMapClick
    end
    object Button2: TButton
      Left = 8
      Top = 589
      Width = 70
      Height = 24
      Caption = #45236#50857#51200#51109
      TabOrder = 6
      OnClick = Button2Click
    end
    object cbUseURL: TCheckBox
      Left = 235
      Top = 568
      Width = 97
      Height = 17
      Caption = 'URL'#49324#50857
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = cbUseURLClick
    end
    object pnlUrl: TPanel
      Left = 70
      Top = 120
      Width = 233
      Height = 97
      Caption = 'URL'#51452#49548' '#49324#50857#51473#51077#45768#45796'.'
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 680
    Width = 363
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lblCount: TLabel
      Left = 78
      Top = 13
      Width = 56
      Height = 13
      Caption = 'lblCount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblExt: TLabel
      Left = 195
      Top = 28
      Width = 25
      Height = 13
      Caption = 'lblExt'
      Visible = False
    end
    object Label1: TLabel
      Left = 235
      Top = 28
      Width = 136
      Height = 13
      AutoSize = False
      Caption = 'Label1'
      Visible = False
    end
    object btnRestMoney: TButton
      Left = 8
      Top = 2
      Width = 64
      Height = 35
      Caption = #45224#51008' '#51092#50529
      TabOrder = 0
      OnClick = btnRestMoneyClick
    end
    object Button1: TButton
      Left = 185
      Top = 5
      Width = 181
      Height = 25
      Caption = #51060#48120#51648#48320#54872'Test'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Top = 70
  end
  object od: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'jpg|*.jpg|bmp|*.bmp'
    Left = 275
    Top = 100
  end
end
