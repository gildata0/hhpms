object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 344
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 40
    Width = 635
    Height = 207
    Align = alClient
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 0
    Top = 0
    Width = 635
    Height = 40
    Align = alTop
    Lines.Strings = (
      '1. OrderInf_temp'#50640' '#44032#51256#50728#45796'.'
      '2. OrderInf_temp'#50640' '#51080#45716' '#44163#51012' OrderInf'#47196' '#44032#51256#50724#44256' OrderInf_temp'#50640' '#51080#45716#44163#51012' '#51648#50868#45796'.')
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 247
    Width = 635
    Height = 97
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 2
    object Label1: TLabel
      Left = 112
      Top = 46
      Width = 71
      Height = 13
      Caption = 'Pickup Interval'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 254
      Top = 46
      Width = 62
      Height = 13
      Caption = 'Pickup Count'
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 24
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object edtInterval: TAdvEdit
      Left = 189
      Top = 46
      Width = 50
      Height = 21
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etNumeric
      EmptyText = '0'
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Persistence.Enable = True
      Persistence.Key = '.\db.ini'
      Persistence.Section = 'BitToMediroInterval'
      Color = clWindow
      TabOrder = 0
      Text = '0'
      Visible = True
      Version = '3.4.6.3'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 402
      Top = 21
      Width = 97
      Height = 21
      Date = 43512.661251921290000000
      Time = 43512.661251921290000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 525
      Top = 21
      Width = 100
      Height = 21
      Date = 43512.661251921290000000
      Time = 43512.661251921290000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 525
      Top = 48
      Width = 100
      Height = 41
      Caption = 'Pick terms Data'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 402
      Top = 48
      Width = 98
      Height = 41
      Caption = 'Pick Today fata'
      TabOrder = 4
      OnClick = Button2Click
    end
    object edtPickCount: TAdvEdit
      Left = 322
      Top = 46
      Width = 50
      Height = 21
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etNumeric
      EmptyText = '0'
      EmptyTextStyle = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Persistence.Enable = True
      Persistence.Key = '.\db.ini'
      Persistence.Section = 'BitToMediroPickCount'
      Color = clWindow
      TabOrder = 5
      Text = '200'
      Visible = True
      Version = '3.4.6.3'
    end
    object btnStop: TButton
      Left = 24
      Top = 38
      Width = 71
      Height = 32
      Caption = 'Stop'
      TabOrder = 6
      OnClick = btnStopClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 232
    Top = 72
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 376
    Top = 72
  end
  object Timer3: TTimer
    OnTimer = Timer3Timer
    Left = 480
    Top = 72
  end
end
