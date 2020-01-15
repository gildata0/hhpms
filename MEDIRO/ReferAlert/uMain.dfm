object main_f: Tmain_f
  Left = 0
  Top = 0
  Caption = 'main_f'
  ClientHeight = 273
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object SMSCALLMSG1: TSMSCALLMSG
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 163
    Top = 21
  end
end
