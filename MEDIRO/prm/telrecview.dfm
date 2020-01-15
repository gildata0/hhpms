object telrecview_f: Ttelrecview_f
  Left = 368
  Top = 245
  BorderIcons = [biSystemMenu]
  Caption = 'telrecview_f'
  ClientHeight = 210
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spSkinPanel2: TPanel
    Left = 0
    Top = 169
    Width = 456
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      456
      41)
    object btnCls: TButton
      Left = 371
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btnClsClick
    end
  end
  object memMemo: TMemo
    Left = 0
    Top = 0
    Width = 456
    Height = 169
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeMode = imSHanguel
    ImeName = 'Microsoft Office IME 2007'
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
