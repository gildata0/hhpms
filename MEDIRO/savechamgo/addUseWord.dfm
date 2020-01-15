object addUseWord_f: TaddUseWord_f
  Left = 408
  Top = 328
  BorderIcons = [biSystemMenu]
  Caption = 'addUseWord_f'
  ClientHeight = 156
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 15
    Width = 251
    Height = 21
    AutoSize = False
    Caption = #52628#44032' '#54624' '#49345#50857#44396#47484' '#51077#47141#54616#49901#49884#50724'.'
  end
  object memUseWord: TMemo
    Left = 20
    Top = 50
    Width = 411
    Height = 51
    ImeName = 'Microsoft IME 2003'
    Lines.Strings = (
      'memUseWord')
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 260
    Top = 120
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 356
    Top = 120
    Width = 75
    Height = 25
    Caption = #45803#44592
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnAdd: TButton
    Left = 165
    Top = 120
    Width = 75
    Height = 25
    Caption = #52628#44032
    TabOrder = 3
    OnClick = btnAddClick
  end
end
