object wait2_f: Twait2_f
  Left = 569
  Top = 358
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'wait2_f'
  ClientHeight = 78
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #46027#50880
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 12
    Top = 10
    Width = 152
    Height = 12
    Caption = #51088#47308#47484' '#48520#47084#50724#45716' '#51473#51077#45768#45796'...'
  end
  object Label2: TLabel
    Left = 12
    Top = 27
    Width = 116
    Height = 12
    Caption = #51104#49884#47564' '#44592#45796#47532#49901#49884#50724'.'
  end
  object pgLoading: TAdvProgressBar
    Left = 12
    Top = 49
    Width = 321
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Level0ColorTo = 14811105
    Level1ColorTo = 13303807
    Level2Color = 5483007
    Level2ColorTo = 11064319
    Level3ColorTo = 13290239
    Level1Perc = 70
    Level2Perc = 90
    Position = 0
    ShowBorder = True
    Steps = 1
    Version = '1.2.0.2'
  end
end
