object editAdd_f: TeditAdd_f
  Left = 442
  Top = 198
  Width = 543
  Height = 333
  ActiveControl = edtAdd2
  BorderIcons = [biSystemMenu]
  Caption = 'editAdd_f'
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
    Width = 527
    Height = 41
    Align = alTop
    TabOrder = 0
    object lblChart: TLabel
      Left = 10
      Top = 15
      Width = 35
      Height = 13
      Caption = 'lblChart'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 527
    Height = 213
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 7
      Width = 200
      Height = 13
      AutoSize = False
      Caption = #54788#51116' '#51452#49548
    end
    object Label2: TLabel
      Left = 10
      Top = 146
      Width = 200
      Height = 13
      AutoSize = False
      Caption = #48148#44992' '#51452#49548
    end
    object Label3: TLabel
      Left = 10
      Top = 77
      Width = 236
      Height = 13
      AutoSize = False
      Caption = #51060#51204' '#44592#47197#46108' '#51452#49548
    end
    object edtAdd1: TEdit
      Left = 10
      Top = 46
      Width = 501
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      Text = 'edtAdd1'
    end
    object edtPost1: TEdit
      Left = 10
      Top = 23
      Width = 91
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = 'edtPost1'
    end
    object edtPost2: TEdit
      Left = 10
      Top = 162
      Width = 91
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
      Text = 'edtPost2'
    end
    object edtAdd2: TEdit
      Left = 10
      Top = 186
      Width = 501
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
      Text = 'edtAdd2'
    end
    object edtBadd2: TEdit
      Left = 10
      Top = 121
      Width = 501
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
      Text = 'edtBadd2'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 254
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 336
      Top = 9
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 436
      Top = 9
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object edtBadd1: TEdit
    Left = 10
    Top = 136
    Width = 501
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 3
    Text = 'edtBadd1'
  end
end
