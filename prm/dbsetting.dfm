object dbsetting_f: Tdbsetting_f
  Left = 517
  Top = 295
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'DB '#51217#49549#49444#51221
  ClientHeight = 286
  ClientWidth = 271
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 56
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Server'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 11
    Top = 137
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'DB name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 192
    Width = 93
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 91
    Top = 81
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
    Left = 9
    Top = 14
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Database kind'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 165
    Width = 93
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'User'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object edtServerIP: TEdit
    Left = 109
    Top = 50
    Width = 144
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 0
  end
  object edtDbName: TEdit
    Left = 109
    Top = 130
    Width = 144
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 1
    Text = 'som'
  end
  object edtDbPass: TEdit
    Left = 109
    Top = 187
    Width = 144
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
    Text = '2002'
  end
  object btnSave: TButton
    Left = 103
    Top = 240
    Width = 75
    Height = 23
    Caption = 'Login'
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnClose: TButton
    Left = 182
    Top = 238
    Width = 71
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    OnClick = btnCloseClick
  end
  object btnConTest: TButton
    Left = 7
    Top = 239
    Width = 91
    Height = 25
    Caption = 'Connection Test'
    TabOrder = 5
    OnClick = btnConTestClick
  end
  object cbDbprotocol: TComboBox
    Left = 110
    Top = 8
    Width = 145
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 13
    TabOrder = 6
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
    Left = 109
    Top = 160
    Width = 144
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Microsoft IME 2003'
    ParentFont = False
    TabOrder = 7
    Text = 'sa'
  end
end
