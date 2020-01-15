object sendSMS_f: TsendSMS_f
  Left = 328
  Top = 306
  BorderIcons = [biSystemMenu]
  Caption = 'sendSMS_f'
  ClientHeight = 202
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 334
    Height = 13
    Caption = 'SMS '#51204#49569#51089#50629#51012' '#54616#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49901#49884#50724'.'
  end
  object Label2: TLabel
    Left = 11
    Top = 80
    Width = 82
    Height = 13
    Caption = #51204#52404' '#51652#54665#49345#54889
  end
  object Label3: TLabel
    Left = 10
    Top = 30
    Width = 82
    Height = 13
    Caption = #54788#51116' '#51652#54665#49345#54889
  end
  object lblStat: TLabel
    Left = 11
    Top = 140
    Width = 37
    Height = 13
    Caption = 'lblStat'
  end
  object ProgressBar1: TProgressBar
    Left = 10
    Top = 105
    Width = 427
    Height = 17
    TabOrder = 0
  end
  object Button1: TButton
    Left = 126
    Top = 170
    Width = 75
    Height = 25
    Caption = #52712#49548
    TabOrder = 1
  end
  object Button2: TButton
    Left = 216
    Top = 170
    Width = 135
    Height = 25
    Caption = #51204#49569' '#44208#44284' '#51312#54924
    TabOrder = 2
  end
  object ProgressBar2: TProgressBar
    Left = 10
    Top = 50
    Width = 427
    Height = 17
    TabOrder = 3
  end
  object Button3: TButton
    Left = 361
    Top = 170
    Width = 75
    Height = 25
    Caption = #45803#44592
    TabOrder = 4
    OnClick = Button3Click
  end
  object SMSCALLMSG1: TSMSCALLMSG
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 140
    Top = 80
  end
end
