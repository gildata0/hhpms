object referHospPatList_f: TreferHospPatList_f
  Left = 0
  Top = 0
  Caption = 'referHospPatList_f'
  ClientHeight = 340
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 299
    Width = 1280
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object btnClose: TButton
      Left = 694
      Top = 6
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.INI'
    SaveKey = 'referHospPatList_f'
    Version = '1.4.1.4'
    Left = 64
    Top = 57
  end
end
