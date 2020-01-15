object snapCapture_f: TsnapCapture_f
  Left = 146
  Top = 180
  Caption = 'DirectShow Video Capture Demo  - www.ImageEn.com'
  ClientHeight = 324
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 326
    Top = 0
    Width = 2
    Height = 324
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 680
    ExplicitHeight = 347
    object SpeedButton2: TSpeedButton
      Left = 15
      Top = 215
      Width = 129
      Height = 44
      AllowAllUp = True
      GroupIndex = 2
      Caption = 'Capture to JPEG Stream'
      Enabled = False
      OnClick = SpeedButton2Click
    end
    object Label2: TLabel
      Left = 15
      Top = 265
      Width = 43
      Height = 13
      Caption = 'FileName'
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 8
      Width = 354
      Height = 201
      Caption = ' Source '
      TabOrder = 0
      object Label5: TLabel
        Left = 3
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Formats'
      end
      object Label8: TLabel
        Left = 3
        Top = 94
        Width = 62
        Height = 13
        Caption = 'Video Source'
      end
      object Button1: TButton
        Left = 3
        Top = 135
        Width = 98
        Height = 25
        Caption = 'Video Dialog'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 203
        Top = 135
        Width = 98
        Height = 25
        Caption = 'Format Dialog'
        TabOrder = 1
        OnClick = Button2Click
      end
      object ListBox1: TListBox
        Left = 75
        Top = 21
        Width = 265
        Height = 63
        ItemHeight = 13
        TabOrder = 2
      end
      object ComboBox2: TComboBox
        Left = 75
        Top = 91
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 3
        OnChange = ComboBox2Change
      end
      object Button3: TButton
        Left = 102
        Top = 135
        Width = 98
        Height = 25
        Caption = 'Video Input Source'
        TabOrder = 4
        OnClick = Button3Click
      end
      object Edit4: TEdit
        Left = 32
        Top = 176
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'Edit4'
      end
    end
    object Edit1: TEdit
      Left = 64
      Top = 265
      Width = 107
      Height = 21
      TabOrder = 1
      Text = 'c:\test.dat'
    end
    object Button4: TButton
      Left = 177
      Top = 265
      Width = 75
      Height = 25
      Caption = 'Convert to AVI'
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 326
    Height = 324
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitWidth = 308
    ExplicitHeight = 389
    object ImageEnView1: TImageEnView
      Left = 1
      Top = 65
      Width = 324
      Height = 258
      Background = clBtnFace
      Ctl3D = False
      ParentCtl3D = False
      LegacyBitmap = False
      MouseInteract = [miMoveLayers, miResizeLayers]
      OnDShowNewFrame = ImageEnView1DShowNewFrame
      MouseWheelParams.Action = iemwZoom
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 314
      ExplicitHeight = 389
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 324
      Height = 64
      Align = alTop
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 1
      ExplicitWidth = 312
      DesignSize = (
        324
        64)
      object Label1: TLabel
        Left = 6
        Top = 10
        Width = 55
        Height = 13
        Caption = 'Video Input'
      end
      object ComboBox1: TComboBox
        Left = 67
        Top = 7
        Width = 219
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object Edit2: TEdit
        Left = 285
        Top = 7
        Width = 22
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object btnShot: TAdvGlowButton
        Left = 67
        Top = 31
        Width = 62
        Height = 28
        Anchors = [akRight]
        Caption = #52524#50689
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btnShotClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btnAcc: TAdvGlowButton
        Left = 132
        Top = 31
        Width = 62
        Height = 28
        Anchors = [akRight]
        Caption = #51201#50857
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnAccClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btnCls: TAdvGlowButton
        Left = 197
        Top = 31
        Width = 62
        Height = 28
        Anchors = [akRight]
        Caption = #45803#44592
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnClsClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
end
