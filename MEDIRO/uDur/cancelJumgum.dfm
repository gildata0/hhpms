object cancelJumgum_f: TcancelJumgum_f
  Left = 506
  Top = 196
  BorderStyle = bsDialog
  Caption = #51216#44160#52712#49548
  ClientHeight = 286
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 41
    Top = 17
    Width = 66
    Height = 13
    Caption = #52376#48169#51312#51228#44396#48516
  end
  object Label2: TLabel
    Left = 28
    Top = 45
    Width = 77
    Height = 13
    Caption = #49688#51652#51088#51452#48124#48264#54840
  end
  object Label11: TLabel
    Left = 4
    Top = 72
    Width = 104
    Height = 13
    Caption = #52376#48169#51068#51088'(yyyymmdd)'
  end
  object Label3: TLabel
    Left = 4
    Top = 102
    Width = 99
    Height = 13
    Caption = #52376#48169#51204#48156#54665#44592#44288#44592#54840
  end
  object Label4: TLabel
    Left = 28
    Top = 132
    Width = 77
    Height = 13
    Caption = #52376#48169#51204#44368#48512#48264#54840
  end
  object Label5: TLabel
    Left = 40
    Top = 161
    Width = 66
    Height = 13
    Caption = #52712#49548#49324#50976#53076#46300
  end
  object Label6: TLabel
    Left = 64
    Top = 190
    Width = 44
    Height = 13
    Caption = #52712#49548#49324#50976
  end
  object Label7: TLabel
    Left = 39
    Top = 222
    Width = 66
    Height = 13
    Caption = #51312#51228#44592#44288#44592#54840
    Visible = False
  end
  object cMprscType: TComboBox
    Left = 127
    Top = 13
    Width = 82
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    Items.Strings = (
      #52376#48169
      #51312#51228)
  end
  object cJumin1: TEdit
    Left = 127
    Top = 41
    Width = 78
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
  end
  object cJumin2: TEdit
    Left = 211
    Top = 41
    Width = 78
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 2
  end
  object cPrscDd: TEdit
    Left = 127
    Top = 70
    Width = 210
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 3
  end
  object cPrscAdmSym: TEdit
    Left = 127
    Top = 99
    Width = 210
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 4
  end
  object cGrantNo: TEdit
    Left = 127
    Top = 128
    Width = 210
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 5
  end
  object cReasonCd: TComboBox
    Left = 127
    Top = 157
    Width = 209
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 6
    Items.Strings = (
      'M1='#51452#48124#46321#47197#48264#54840' '#52265#50724#51077#47141
      'M2='#52376#48169#51204' '#48156#54665#44592#44288' '#44592#54840' '#52265#50724#51077#47141
      'M3='#52376#48169#51204' '#44368#48512#48264#54840' '#52265#50724#51077#47141
      'M4='#51032#49324#47732#54728#48264#54840' '#52265#50724#51077#47141
      'M5='#52376#48169' '#46608#45716' '#51312#51228#51068#51088' '#52265#50724#51077#47141
      'M8='#50557#54408' '#52265#50724#51077#47141
      'MT='#44592#53440' '#52265#50724#51077#47141' '#46608#45716' '#49324#50976#44032' 2'#44032#51648' '#51060#49345#51064' '#44221#50864' Text'#47196' '#51077#47141
      'V=DUR '#54045#50629' '#45236#50857' '#52280#44256' '#52376#48169#51204#51012' '#52712#49548#54620' '#44221#50864)
  end
  object cReasonMsg: TEdit
    Left = 127
    Top = 186
    Width = 210
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 7
  end
  object BtnCheckCancel: TButton
    Left = 132
    Top = 252
    Width = 75
    Height = 23
    Caption = #51216#44160#52712#49548
    TabOrder = 8
    OnClick = BtnCheckCancelClick
  end
  object Button1: TButton
    Left = 220
    Top = 252
    Width = 75
    Height = 23
    Caption = #52712#49548
    TabOrder = 9
    OnClick = Button1Click
  end
  object cMakerCd: TEdit
    Left = 127
    Top = 218
    Width = 210
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 10
    Visible = False
  end
end
