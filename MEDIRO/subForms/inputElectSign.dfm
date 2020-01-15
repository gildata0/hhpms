object inputElectSign_f: TinputElectSign_f
  Left = 222
  Top = 128
  BorderStyle = bsDialog
  Caption = 'inputElectSign_f'
  ClientHeight = 269
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'AdvPanel1'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 154
      Height = 16
      Caption = #49436#47749#51012' '#51077#47141#54616#49901#49884#50724'.'
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -16
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object AdvPanel2: TPanel
    Left = 0
    Top = 228
    Width = 442
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'AdvPanel2'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      442
      41)
    object btnOk: TButton
      Left = 281
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #54869#51064
      ModalResult = 1
      TabOrder = 0
      TabStop = False
      WordWrap = True
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 358
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 1
      TabStop = False
      WordWrap = True
      OnClick = btnCancelClick
    end
    object btnRetry: TButton
      Left = 204
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #51116#49884#46020
      TabOrder = 2
      TabStop = False
      WordWrap = True
      OnClick = btnRetryClick
    end
    object btnSet: TButton
      Left = 9
      Top = 8
      Width = 34
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49444#51221
      TabOrder = 3
      TabStop = False
      WordWrap = True
      OnClick = btnSetClick
    end
  end
  object AdvPanel3: TPanel
    Left = 0
    Top = 41
    Width = 442
    Height = 187
    Align = alClient
    BevelOuter = bvNone
    Caption = 'AdvPanel3'
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    ShowCaption = False
    TabOrder = 3
    object KisvanMS31: TKisvanMS3
      Left = 0
      Top = 0
      Width = 442
      Height = 187
      Align = alClient
      TabOrder = 0
      OnSignEnd = KisvanMS31SignEnd
      ExplicitLeft = 10
      ExplicitTop = 12
      ExplicitWidth = 428
      ExplicitHeight = 169
      ControlData = {00000100AF2D00005413000000000000}
    end
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = clGray
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.BottomIndent = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = clSilver
    Settings.Caption.ColorTo = clNone
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clBlack
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clHighlight
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = clBtnFace
    Settings.ColorTo = clNone
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clBlack
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clBlack
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = clSilver
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psTerminal
    Left = 407
    Top = 8
  end
end
