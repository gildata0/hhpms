object inputBlock_f: TinputBlock_f
  Left = 405
  Top = 262
  BorderIcons = [biSystemMenu]
  Caption = 'inputBlock_f'
  ClientHeight = 160
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 104
    Width = 433
    Height = 56
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      433
      56)
    object lblAppointNo: TLabel
      Left = 16
      Top = 5
      Width = 60
      Height = 17
      AutoSize = False
      Caption = #50696#50557#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EllipsLabel2: TLabel
      Left = 9
      Top = 20
      Width = 42
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45236#50857
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EllipsLabel1: TLabel
      Left = 78
      Top = 5
      Width = 60
      Height = 17
      AutoSize = False
      Caption = #50696#50557#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object btnSave: TAdvGlowButton
      Left = 258
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #51200#51109
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnSaveClick
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
    object btnCancel: TAdvGlowButton
      Left = 342
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCancelClick
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 104
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      Left = 162
      Top = 68
      Width = 44
      Height = 13
      Caption = 'Font Size'
      Transparent = True
    end
    object Label4: TLabel
      Left = 350
      Top = 60
      Width = 32
      Height = 13
      Caption = 'Label4'
      Visible = False
    end
    object Label3: TLabel
      Left = 310
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object Label2: TLabel
      Left = 225
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Label2'
      Visible = False
    end
    object Label1: TLabel
      Left = 135
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object EllipsLabel3: TLabel
      Left = 339
      Top = 79
      Width = 42
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = #54364#49884#49353
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object pnlColor: TPanel
      Left = 105
      Top = 60
      Width = 36
      Height = 30
      Color = 65408
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
    end
    object FontSize: TComboBox
      Left = 211
      Top = 65
      Width = 44
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 7
      TabOrder = 1
      Text = '15'
      Items.Strings = (
        '8'
        '9'
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
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '30'
        '36'
        '48'
        '72')
    end
    object edtpass: TAdvEdit
      Left = 62
      Top = 9
      Width = 44
      Height = 21
      DefaultHandling = True
      EmptyTextStyle = []
      Flat = True
      FlatLineColor = 10329501
      FocusColor = 16381427
      SoftBorder = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvNone
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
      Text = 'edtpass'
      Visible = False
      OnChange = edtpassChange
      Version = '3.4.9.0'
    end
    object edtLock: TEdit
      Left = 25
      Top = 29
      Width = 391
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 3
      Text = 'edtLock'
    end
    object cbEdit: TAdvOfficeCheckBox
      Left = 12
      Top = 10
      Width = 49
      Height = 20
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      Alignment = taLeftJustify
      Caption = #51104#44552
      ReturnIsTab = False
      State = cbChecked
      Version = '1.5.0.9'
    end
    object cbBold: TCheckBox
      Left = 264
      Top = 67
      Width = 62
      Height = 17
      Caption = 'Bold'
      TabOrder = 5
    end
    object Button1: TButton
      Left = 30
      Top = 62
      Width = 70
      Height = 25
      Caption = #48176#44221#49353' '#51648#51221
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 381
    Top = 6
  end
end
