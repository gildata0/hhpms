object dbsetting_f: Tdbsetting_f
  Left = 521
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'DB '#51217#49549#49444#51221
  ClientHeight = 317
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 38
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #49436#48260' '#51452#49548
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 137
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'DB '#51060#47492
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 6
    Top = 192
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #54056#49828#50892#46300
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 61
    Top = 58
    Width = 165
    Height = 36
    AutoSize = False
    Caption = #50500#51060#54588' '#51452#49548' ('#50696': 192.168.0.50)  '#13#10#46608#45716' '#13#10#52980#54504#53552#51060#47492#51012' '#51077#47141#54616#49464#50836'.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 6
    Top = 16
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'DB '#51333#47448
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 6
    Top = 165
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #49324#50857#51088#47749
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 6
    Top = 224
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #51060#48120#51648#49436#48260'IP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 6
    Top = 254
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #54028#51068#49436#48260'IP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 6
    Top = 103
    Width = 70
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'PORT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 33
    Width = 226
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 11
    Text = 'mssql'
    OnCloseUp = ComboBox1CloseUp
    Items.Strings = (
      'mssql'
      'mysql-5'
      'Oracle'
      'Interbase'
      'MS-ACCESS'
      'Firebird')
  end
  object edtServerIP: TEdit
    Left = 79
    Top = 32
    Width = 207
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 1
  end
  object edtDbName: TEdit
    Left = 79
    Top = 130
    Width = 225
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 3
    Text = 'som'
  end
  object edtDbPass: TEdit
    Left = 79
    Top = 187
    Width = 225
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 5
    Text = '2002'
  end
  object btnSave: TButton
    Left = 98
    Top = 283
    Width = 75
    Height = 25
    Caption = #51200' '#51109
    TabOrder = 8
    OnClick = btnSaveClick
  end
  object btnClose: TButton
    Left = 182
    Top = 283
    Width = 75
    Height = 25
    Caption = #45803' '#44592
    TabOrder = 9
    OnClick = btnCloseClick
  end
  object btnConTest: TButton
    Left = 11
    Top = 284
    Width = 75
    Height = 25
    Caption = #50672#44208#53580#49828#53944
    TabOrder = 10
    OnClick = btnConTestClick
  end
  object cbDbprotocol: TComboBox
    Left = 80
    Top = 8
    Width = 226
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    Text = 'mssql'
    Items.Strings = (
      'mssql'
      'mysql-5'
      'Oracle'
      'Interbase'
      'MS-ACCESS'
      'Firebird')
  end
  object edtName: TEdit
    Left = 79
    Top = 160
    Width = 225
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 4
    Text = 'sa'
  end
  object edtimgserver: TEdit
    Left = 79
    Top = 217
    Width = 225
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 6
    Text = 'edtimgserver'
  end
  object edtDocuServer: TEdit
    Left = 79
    Top = 247
    Width = 225
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 7
    Text = 'edtDocuServer'
  end
  object edtPort: TEdit
    Left = 79
    Top = 98
    Width = 225
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 2
    Text = '0'
  end
end
