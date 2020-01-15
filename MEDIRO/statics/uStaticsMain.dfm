object StatisticsMain_f: TStatisticsMain_f
  Left = 0
  Top = 0
  Caption = 'StatisticsMain_f'
  ClientHeight = 435
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 435
    Align = alLeft
    Caption = 'Panel2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    ShowCaption = False
    TabOrder = 0
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 42
      Width = 217
      Height = 32
      Align = alTop
      Caption = #54801#47141#48337#50896' '#51652#47308#54788#54889
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 217
      Height = 32
      Align = alTop
      Caption = #44592#44036#48324' '#45236#50896' '#54788#54889
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 80
      Width = 217
      Height = 32
      Align = alTop
      Caption = #44592#44036#48324' '#49688#45225' '#54788#54889
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 4
      Top = 118
      Width = 217
      Height = 32
      Align = alTop
      Caption = #54872#51088#48324' ABC'#48516#49437
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 4
      Top = 156
      Width = 217
      Height = 32
      Align = alTop
      Caption = #54801#47141#48337#50896#48324' ABC'#48516#49437
      TabOrder = 4
      Visible = False
    end
    object Button6: TButton
      AlignWithMargins = True
      Left = 4
      Top = 194
      Width = 217
      Height = 32
      Align = alTop
      Caption = #44592#44036#48324' '#52376#48169' '#53685#44228
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 4
      Top = 232
      Width = 217
      Height = 32
      Align = alTop
      Caption = #44592#44036' '#50689#49345#51032#47280' '#53685#44228
      TabOrder = 6
      OnClick = Button7Click
      ExplicitLeft = 8
      ExplicitTop = 270
    end
  end
  object MainMenu1: TMainMenu
    Left = 237
    Top = 102
    object stylemenu: TMenuItem
      Caption = 'stylemenu'
      Visible = False
    end
    object N27: TMenuItem
      Caption = #44221#50689#53685#44228
      object N127: TMenuItem
        Caption = #45236#50896#46041#44592#48324' '#45236#50896' '#54788#54889
        Enabled = False
      end
      object N128: TMenuItem
        Caption = #54801#47141#48337#50896' '#51032#47280#54788#54889
        Enabled = False
      end
      object N129: TMenuItem
        Caption = #44592#44036#48324' '#45236#50896' '#54788#54889
        Enabled = False
      end
      object N130: TMenuItem
        Caption = #44592#44036#48324' '#49688#45225' '#54788#54889
        Enabled = False
      end
      object N131: TMenuItem
        Caption = #44592#44036#48324' '#49888#54872' '#45236#50896' '#54788#54889
        Enabled = False
      end
      object N133: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object N132: TMenuItem
        Caption = #44592#44036#48324' '#52376#48169' '#53685#44228
        Enabled = False
      end
      object N134: TMenuItem
        Caption = #44592#44036#48324' '#49345#48337' '#53685#44228
        Enabled = False
      end
      object N135: TMenuItem
        Caption = #44592#44036#48324' '#50896#50808#52376#48169' '#53685#44228
        Enabled = False
      end
      object N136: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object N137: TMenuItem
        Caption = #44592#44036#48324' '#44553#50668'/'#48708#44553#50668' '#54788#54889
        Enabled = False
      end
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\formsize.ini'
    SaveKey = 'main'
    Version = '1.4.1.4'
    Left = 352
    Top = 136
  end
end
