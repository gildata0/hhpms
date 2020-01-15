object PassInput_f: TPassInput_f
  Left = 291
  Top = 286
  BorderIcons = [biSystemMenu]
  Caption = 'PassInput_f'
  ClientHeight = 100
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 14
    Width = 71
    Height = 13
    AutoSize = False
    Caption = 'Password'
  end
  object Label2: TLabel
    Left = 95
    Top = 35
    Width = 94
    Height = 13
    Caption = '12:B to A; 78 A to B'
  end
  object edtPass: TEdit
    Left = 95
    Top = 9
    Width = 121
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    PasswordChar = '*'
    TabOrder = 0
    Text = 'edtPass'
    OnKeyPress = edtPassKeyPress
  end
  object cbSave: TCheckBox
    Left = 227
    Top = 11
    Width = 54
    Height = 17
    Caption = #51200#51109
    TabOrder = 1
    Visible = False
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 53
    Width = 287
    Height = 47
    Align = alBottom
    Caption = 'spSkinPanel1'
    TabOrder = 2
    object spSkinButton1: TButton
      Left = 65
      Top = 10
      Width = 75
      Height = 25
      Caption = #54869#51064
      ModalResult = 1
      TabOrder = 0
    end
    object spSkinButton2: TButton
      Left = 170
      Top = 10
      Width = 75
      Height = 25
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 1
    end
  end
end
