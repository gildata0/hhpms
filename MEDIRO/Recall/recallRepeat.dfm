object recallRepeat_f: TrecallRepeat_f
  Left = 652
  Top = 207
  BorderStyle = bsDialog
  Caption = 'recallRepeat_f'
  ClientHeight = 390
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 18
    Width = 44
    Height = 13
    Caption = #44592#51456#51068#51088
  end
  object Label6: TLabel
    Left = 127
    Top = 48
    Width = 11
    Height = 13
    Caption = #49884
  end
  object Label7: TLabel
    Left = 193
    Top = 48
    Width = 11
    Height = 13
    Caption = #48516
  end
  object Label2: TLabel
    Left = 46
    Top = 48
    Width = 22
    Height = 13
    Caption = #49884#44036
  end
  object Label3: TLabel
    Left = 21
    Top = 78
    Width = 44
    Height = 13
    Caption = #51333#47308#51068#51088
  end
  object Label4: TLabel
    Left = 216
    Top = 108
    Width = 44
    Height = 13
    Caption = #47532#53084#51068#51088
  end
  object DateTimePicker1: TDateTimePicker
    Left = 81
    Top = 13
    Width = 125
    Height = 21
    Date = 42139.319379895830000000
    Time = 42139.319379895830000000
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 81
    Top = 73
    Width = 125
    Height = 21
    Date = 42139.319379895830000000
    Time = 42139.319379895830000000
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 3
  end
  object btnApply: TButton
    Left = 180
    Top = 350
    Width = 75
    Height = 25
    Caption = #51201#50857
    ModalResult = 1
    TabOrder = 4
  end
  object btnCancel: TButton
    Left = 285
    Top = 350
    Width = 75
    Height = 25
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object ListBox1: TListBox
    Left = 215
    Top = 125
    Width = 146
    Height = 206
    ImeName = 'Microsoft Office IME 2007'
    ItemHeight = 13
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 20
    Top = 120
    Width = 191
    Height = 211
    Caption = #48152#48373#51452#44592
    Items.Strings = (
      #50504#54632
      #47588'                 '#51068
      #47588'                 '#51452
      #47588'                 '#50900
      #47588'                 '#45380)
    TabOrder = 7
    OnClick = RadioGroup1Click
  end
  object edtDay: TEdit
    Left = 65
    Top = 180
    Width = 41
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 8
    Text = 'edtDay'
  end
  object edtWeek: TEdit
    Left = 65
    Top = 215
    Width = 41
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 9
    Text = 'edtWeek'
  end
  object edtMonth: TEdit
    Left = 65
    Top = 255
    Width = 41
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 10
    Text = 'edtMonth'
  end
  object edtYear: TEdit
    Left = 65
    Top = 295
    Width = 41
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 11
    Text = 'edtYear'
  end
  object cbTime: TComboBox
    Left = 81
    Top = 44
    Width = 40
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ImeName = 'Microsoft Office IME 2007'
    ItemIndex = 10
    ParentFont = False
    TabOrder = 1
    Text = '10'
    Items.Strings = (
      '00'
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23')
  end
  object cbMin: TComboBox
    Left = 148
    Top = 45
    Width = 41
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ImeName = 'Microsoft Office IME 2007'
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = '00'
    Items.Strings = (
      '00'
      '05'
      '10'
      '15'
      '20'
      '25'
      '30'
      '35'
      '40'
      '45'
      '50'
      '55')
  end
end
