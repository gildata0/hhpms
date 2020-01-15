object ktcid_f: Tktcid_f
  Left = 426
  Top = 168
  Caption = 'ktcid_f'
  ClientHeight = 258
  ClientWidth = 169
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 15
    Top = 85
    Width = 145
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object memRcvInfo: TMemo
    Left = 25
    Top = 135
    Width = 121
    Height = 61
    ImeName = 'Microsoft Office IME 2007'
    Lines.Strings = (
      'memRcvInfo')
    TabOrder = 0
  end
  object ctrlKTOpenAPI: TKTPCBizX
    Left = 25
    Top = 17
    Width = 32
    Height = 32
    OnEventConnect = ctrlKTOpenAPIEventConnect
    OnEventCID = ctrlKTOpenAPIEventCID
    OnEventSMS = ctrlKTOpenAPIEventSMS
    OnEventCTC = ctrlKTOpenAPIEventCTC
    OnEventLogin = ctrlKTOpenAPIEventLogin
    OnEventCON = ctrlKTOpenAPIEventCON
    OnEventAddinCall = ctrlKTOpenAPIEventAddinCall
    ControlData = {00090000D8130000D8130000}
  end
end
