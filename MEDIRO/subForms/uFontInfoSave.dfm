object fontInfoSave_f: TfontInfoSave_f
  Left = 0
  Top = 0
  Caption = 'fontInfoSave_f'
  ClientHeight = 376
  ClientWidth = 424
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
  object AdvPanel2: TPanel
    Left = 0
    Top = 335
    Width = 424
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
    TabOrder = 0
    DesignSize = (
      424
      41)
    object btnOk: TButton
      Left = 263
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
      Left = 340
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 1
      TabStop = False
      WordWrap = True
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 335
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 130
      Width = 211
      Height = 121
      Align = alTop
      Caption = #48376#47928
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 56
        Width = 33
        Height = 13
        Caption = #44544#50472#52404
      end
      object Label2: TLabel
        Left = 24
        Top = 83
        Width = 44
        Height = 13
        Caption = #44544#50472#53356#44592
      end
      object Label3: TLabel
        Left = 24
        Top = 29
        Width = 22
        Height = 13
        Caption = #45458#51060
      end
      object FontName: TComboBox
        Left = 75
        Top = 53
        Width = 110
        Height = 21
        Style = csDropDownList
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
      end
      object FontSize: TComboBox
        Left = 75
        Top = 80
        Width = 110
        Height = 21
        Style = csDropDownList
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
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
      object edtRowHeight: TAdvEdit
        Left = 75
        Top = 26
        Width = 110
        Height = 21
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 2
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 211
      Height = 121
      Align = alTop
      Caption = #51228#47785
      TabOrder = 1
      object Label4: TLabel
        Left = 24
        Top = 56
        Width = 33
        Height = 13
        Caption = #44544#50472#52404
      end
      object Label5: TLabel
        Left = 24
        Top = 83
        Width = 44
        Height = 13
        Caption = #44544#50472#53356#44592
      end
      object Label6: TLabel
        Left = 24
        Top = 29
        Width = 22
        Height = 13
        Caption = #45458#51060
      end
      object FixedFontName: TComboBox
        Left = 75
        Top = 53
        Width = 110
        Height = 21
        Style = csDropDownList
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
      end
      object FixedFontSize: TComboBox
        Left = 75
        Top = 80
        Width = 110
        Height = 21
        Style = csDropDownList
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
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
      object edtFixedRowHeight: TAdvEdit
        Left = 75
        Top = 26
        Width = 110
        Height = 21
        DefaultHandling = True
        EditAlign = eaRight
        EditType = etNumeric
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
        Color = clWindow
        TabOrder = 2
        Text = '0'
        Visible = True
        Version = '3.4.9.0'
      end
    end
  end
  object clbColumnCheck: TCheckListBox
    Left = 217
    Top = 0
    Width = 207
    Height = 335
    Align = alClient
    ItemHeight = 13
    Items.Strings = (
      '')
    TabOrder = 2
    Visible = False
  end
end
