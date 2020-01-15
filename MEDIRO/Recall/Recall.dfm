object recall_f: Trecall_f
  Left = 281
  Top = 223
  BorderIcons = [biSystemMenu]
  Caption = 'recall_f'
  ClientHeight = 567
  ClientWidth = 1105
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 542
    Width = 1105
    Height = 25
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 341
      Height = 15
      Caption = '* '#47532#53084#54869#51064#52376#47532#45716' '#54644#45817' '#47532#53084#50640#49436' '#47560#50864#49828' '#50724#47480#51901#48260#53948' '#53364#47533#54980' '#51652#54665' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 1105
    Height = 35
    Align = alTop
    TabOrder = 1
    object lblanotherid: TLabel
      Left = 719
      Top = 11
      Width = 54
      Height = 13
      Caption = 'lblanotherid'
      Transparent = False
      Visible = False
    end
    object wLabel88: TLabel
      Left = 546
      Top = 7
      Width = 48
      Height = 12
      Caption = #47532#53084#53076#46300
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object EdtRcCode: TEdit
      Left = 599
      Top = 9
      Width = 104
      Height = 17
      BorderStyle = bsNone
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
    object cbSMS: TCheckBox
      Left = 405
      Top = 7
      Width = 131
      Height = 21
      TabStop = False
      Caption = ' SMS '#51088#46041#51204#49569#49324#50857
      TabOrder = 6
    end
    object BtnDel: TButton
      Left = 278
      Top = 7
      Width = 55
      Height = 20
      Hint = #49325#51228
      Caption = #49325#51228
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnDelClick
    end
    object BtnSave: TButton
      Left = 147
      Top = 7
      Width = 55
      Height = 20
      Hint = #51200#51109
      Caption = #51200#51109
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSaveClick
    end
    object BtnNew: TButton
      Left = 16
      Top = 7
      Width = 55
      Height = 20
      Hint = #49888#44508
      Caption = #49352#47196
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnNewClick
    end
    object btnMod: TButton
      Left = 83
      Top = 7
      Width = 55
      Height = 20
      Hint = #49888#44508
      Caption = #49688#51221
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnModClick
    end
    object btnCancel: TButton
      Left = 209
      Top = 7
      Width = 55
      Height = 20
      Hint = #52712#49548
      Caption = #52712#49548
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnCancelClick
    end
  end
  object pnlRecall: TPanel
    Left = 0
    Top = 35
    Width = 1105
    Height = 192
    Align = alTop
    Caption = #45812#45817#51032
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 717
      Top = 50
      Width = 13
      Height = 17
      Caption = #49884
      Transparent = False
      Visible = False
    end
    object Label7: TLabel
      Left = 778
      Top = 50
      Width = 13
      Height = 17
      Caption = #48516
      Transparent = False
      Visible = False
    end
    object progressbar: TAdvProgressBar
      Left = 67
      Top = 58
      Width = 105
      Height = 3
      BorderColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Level0Color = clWhite
      Level0ColorTo = 14811105
      Level1ColorTo = 13303807
      Level2Color = 5483007
      Level2ColorTo = 11064319
      Level3ColorTo = 13290239
      Level1Perc = 70
      Level2Perc = 90
      Position = 50
      ShowBorder = True
      ShowPercentage = False
      ShowPosition = False
      Steps = 20
      Version = '1.3.1.0'
      Visible = False
    end
    object btnRecallTerm: TSpeedButton
      Tag = 30
      Left = 364
      Top = 26
      Width = 20
      Height = 20
      Hint = '(1'#44060#50900')30'#51068' '#54980
      Caption = '1M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object SpeedButton2: TSpeedButton
      Tag = 90
      Left = 412
      Top = 26
      Width = 20
      Height = 20
      Hint = '(3'#44060#50900')90'#51068' '#54980
      Caption = '3M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object SpeedButton3: TSpeedButton
      Tag = 180
      Left = 456
      Top = 26
      Width = 20
      Height = 20
      Hint = '6'#44060#50900'(180'#51068' '#54980')'
      Caption = '6M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object lblcPhone: TLabel
      Left = 797
      Top = 63
      Width = 58
      Height = 17
      Caption = 'lblcPhone'
      Transparent = False
      Visible = False
    end
    object SpeedButton4: TSpeedButton
      Tag = 60
      Left = 388
      Top = 26
      Width = 20
      Height = 20
      Hint = '(2'#44060#50900')60'#51068' '#54980
      Caption = '2M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object SpeedButton5: TSpeedButton
      Tag = 365
      Left = 507
      Top = 26
      Width = 20
      Height = 20
      Hint = '(1'#45380')365'#51068' '#54980
      Caption = '1Y'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object SpeedButton6: TSpeedButton
      Tag = 270
      Left = 481
      Top = 26
      Width = 20
      Height = 20
      Hint = '9'#44060#50900'(270'#51068' '#54980')'
      Caption = '9M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object SpeedButton7: TSpeedButton
      Tag = 730
      Left = 532
      Top = 26
      Width = 20
      Height = 20
      Hint = '(2'#45380')730'#51068' '#54980
      Caption = '2Y'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object SpeedButton8: TSpeedButton
      Tag = 120
      Left = 434
      Top = 26
      Width = 20
      Height = 20
      Hint = '(3'#44060#50900')90'#51068' '#54980
      Caption = '4M'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRecallTermClick
    end
    object wLabel80: TLabel
      Left = 14
      Top = 38
      Width = 24
      Height = 12
      Caption = #49457#47749
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel81: TLabel
      Left = 14
      Top = 10
      Width = 48
      Height = 12
      Caption = #52264#53944#48264#54840
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel82: TLabel
      Left = 187
      Top = 48
      Width = 48
      Height = 12
      Caption = #51116#51652#45236#50857
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel83: TLabel
      Left = 187
      Top = 27
      Width = 48
      Height = 12
      Caption = #51116#51652#51068#51088
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel86: TLabel
      Left = 647
      Top = 10
      Width = 48
      Height = 12
      Caption = #45236#50896#51068#51088
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel87: TLabel
      Left = 634
      Top = 50
      Width = 24
      Height = 12
      Caption = #49884#44036
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wLabel89: TLabel
      Left = 311
      Top = 150
      Width = 36
      Height = 12
      Caption = #45812#45817#51088
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object wLabel90: TLabel
      Left = 14
      Top = 66
      Width = 36
      Height = 12
      Caption = #55092#45824#54256
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel91: TLabel
      Left = 537
      Top = 52
      Width = 24
      Height = 12
      Caption = #47700#47784
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel2: TLabel
      Left = 187
      Top = 6
      Width = 72
      Height = 12
      Caption = #51116#51652#44592#51456#51068#51088
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object wLabel5: TLabel
      Left = 143
      Top = 174
      Width = 204
      Height = 12
      Caption = #44592#44036#48324' '#48152#48373' '#49444#51221#51012' '#54616#49892' '#49688' '#51080#49845#45768#45796'.'
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 14
      Top = 96
      Width = 36
      Height = 12
      Caption = #51652#47308#49892
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 14
      Top = 127
      Width = 36
      Height = 12
      Caption = #45812#45817#51032
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object EdtRecallName: TEdit
      Left = 70
      Top = 39
      Width = 104
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 1
      OnKeyPress = EdtRecallNameKeyPress
    end
    object memRecallRemark: TMemo
      Left = 265
      Top = 77
      Width = 255
      Height = 67
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 1000
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object EdtRecallTel: TEdit
      Left = 70
      Top = 67
      Width = 104
      Height = 17
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 4
      OnChange = EdtRecallTelChange
      OnKeyPress = EdtRecallChartKeyPress
    end
    object EdtRecallChart: TEdit
      Left = 70
      Top = 11
      Width = 104
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EdtRecallChartKeyPress
    end
    object memRecallBigo: TMemo
      Left = 537
      Top = 78
      Width = 252
      Height = 67
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 1000
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object edtDamdang: TComboBox
      Left = 353
      Top = 147
      Width = 101
      Height = 25
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 10
      Text = 'edtDamdang'
      Visible = False
    end
    object btnRepeat: TButton
      Left = 14
      Top = 161
      Width = 111
      Height = 25
      Caption = #51116#51652#48152#48373#49444#51221
      TabOrder = 13
      OnClick = btnRepeatClick
    end
    object ListBox1: TListBox
      Left = 697
      Top = 110
      Width = 56
      Height = 76
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 17
      TabOrder = 14
      Visible = False
    end
    object cbTime: TComboBox
      Left = 666
      Top = 50
      Width = 45
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 8
      Visible = False
      Items.Strings = (
        '00'
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
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
        '23')
    end
    object cbMin: TComboBox
      Left = 733
      Top = 50
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 9
      Visible = False
      Items.Strings = (
        '00'
        '05'
        '10'
        '15'
        '20'
        '25'
        '30'
        '35'
        '40'
        '45'
        '50'
        '55')
    end
    object cbKind: TComboBox
      Left = 265
      Top = 48
      Width = 252
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 11
      Text = #51217#49688
      OnChange = cbKindChange
      OnClick = cbKindClick
      Items.Strings = (
        #48372#52384' '#47532#53084
        #51076#54540#46976#53944'('#50756#47308#54980') '#47532#53084
        #51076#54540#46976#53944'(1'#52264#49688#49696#54980'-'#54616#50501') '#47532#53084
        #51076#54540#46976#53944'(1'#52264#49688#49696#54980'-'#49345#50501') '#47532#53084
        #48120#48177' '#47532#53084
        #49892#47088#53944' '#47532#53084
        #52824#51452'('#49688#49696#54980' '#49345#53468') '#47532#53084
        #52824#51452' '#47532#53084
        '1'#44060#50900' R/C'
        '2'#44060#50900' R/C'
        '3'#44060#50900' R/C'
        '6'#44060#50900' R/C')
    end
    object deRecall: TDateTimePicker
      Left = 265
      Top = 27
      Width = 93
      Height = 22
      Date = 37989.000000000000000000
      Time = 0.592513344920007500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ParentFont = False
      TabOrder = 6
      OnKeyPress = EdtRecallChartKeyPress
    end
    object DeCheckDay: TDateTimePicker
      Left = 714
      Top = 6
      Width = 93
      Height = 22
      Date = 37989.000000000000000000
      Time = 0.592516956021427200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ParentFont = False
      TabOrder = 7
    end
    object dtStart: TDateTimePicker
      Left = 265
      Top = -1
      Width = 93
      Height = 22
      Date = 37989.000000000000000000
      Time = 0.592519837962754500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ParentFont = False
      TabOrder = 12
      OnKeyPress = EdtRecallChartKeyPress
    end
    object CbCheck: TCheckBox
      Left = 566
      Top = 6
      Width = 75
      Height = 21
      TabStop = False
      Caption = #45236#50896#54869#51064
      TabOrder = 5
      OnClick = CbCheckClick
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 70
      Top = 90
      Width = 138
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = True
      BevelInner = bvNone
      BevelOuter = bvNone
      Columns = <
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end>
      ComboItems = <>
      EditColumn = -1
      EditHeight = 19
      EmptyText = #51652#47308#49892
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = True
      ButtonWidth = 17
      GridLines = False
      ItemIndex = -1
      LookupColumn = 0
      LabelCaption = ''
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ParentShowHint = False
      ShowHint = False
      SortColumn = 0
      TabOrder = 15
      OnSelect = cbTreatRoomSelect
    end
    object cbDoc: TColumnComboBox
      AlignWithMargins = True
      Left = 70
      Top = 121
      Width = 138
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = True
      BevelInner = bvNone
      BevelOuter = bvNone
      Columns = <
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        item
          Color = clWindow
          ColumnType = ctText
          Width = 100
          Alignment = taLeftJustify
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end>
      ComboItems = <>
      EditColumn = -1
      EditHeight = 19
      EmptyText = #45812#45817#51032
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = True
      ButtonWidth = 17
      GridLines = False
      ItemIndex = -1
      LookupColumn = 0
      LabelCaption = ''
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ParentShowHint = False
      ShowHint = False
      SortColumn = 0
      TabOrder = 16
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 276
    Width = 1105
    Height = 266
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 3
    object grdRecall: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 1103
      Height = 264
      Cursor = crDefault
      Align = alClient
      ColCount = 18
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      RowCount = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssBoth
      TabOrder = 0
      OnMouseDown = GrdRecallMouseDown
      HoverRowCells = [hcNormal, hcSelected]
      OnRowChanging = grdRecallRowChanging
      OnClickCell = grdRecallClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51116#51652#51068#51088
        #51652#47308#49892
        #45812#45817#51032
        #48337#47197#48264#54840
        #49457#47749
        #50672#46973#52376
        #51116#51652#45236#50857
        #54869#51064
        #47700#47784
        ''
        ''
        ''
        'Kind'
        ''
        'SMS'#51204#49569#49440#53469
        'TeamCode'
        'Doc_Code')
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\recall_data.ini'
      ColumnSize.Section = 'recallData'
      ColumnSize.Location = clIniFile
      ControlLook.FixedGradientHoverFrom = 16710648
      ControlLook.FixedGradientHoverTo = 16446189
      ControlLook.FixedGradientHoverMirrorFrom = 16049367
      ControlLook.FixedGradientHoverMirrorTo = 15258305
      ControlLook.FixedGradientDownFrom = 15853789
      ControlLook.FixedGradientDownTo = 15852760
      ControlLook.FixedGradientDownMirrorFrom = 15522767
      ControlLook.FixedGradientDownMirrorTo = 15588559
      ControlLook.FixedGradientDownBorder = 14007466
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Clear')
      FixedColWidth = 23
      FixedRowHeight = 22
      FixedRowAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clBlack
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
      MouseActions.SelectOnRightClick = True
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = clBtnFace
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = clHighlight
      SelectionTextColor = clHighlightText
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Show = True
      SortSettings.IndexShow = True
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '8.4.4.1'
      ColWidths = (
        23
        94
        86
        87
        93
        108
        83
        60
        37
        42
        64
        23
        13
        31
        64
        23
        64
        64)
      RowHeights = (
        22
        21)
      object pnlMemo: TAdvPanel
        Left = 140
        Top = 82
        Width = 437
        Height = 167
        BevelOuter = bvNone
        Color = 16645114
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UseDockManager = True
        Visible = False
        Version = '2.5.7.9'
        BorderColor = clTeal
        BorderWidth = 2
        CanMove = True
        Caption.Color = clTeal
        Caption.ColorTo = clTeal
        Caption.CloseButton = True
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -13
        Caption.Font.Name = #46027#50880
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        Caption.Text = #47532#53084#45236#50857' '#49688#51221
        Caption.Visible = True
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 16643051
        DoubleBuffered = True
        Position.Section = 'callmemopanel'
        Position.Location = clInifile
        ShadowColor = clBlack
        ShadowOffset = 0
        StatusBar.BorderColor = 13542013
        StatusBar.BorderStyle = bsSingle
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = 7485192
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        StatusBar.Color = 16575452
        StatusBar.ColorTo = 16571329
        StatusBar.GradientDirection = gdVertical
        Text = ''
        FullHeight = 200
        object Memo1: TMemo
          Left = 5
          Top = 24
          Width = 420
          Height = 67
          ImeMode = imSHanguel
          ImeName = 'Microsoft Office IME 2007'
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 221
          Top = 109
          Width = 71
          Height = 24
          AntiAlias = aaNone
          Caption = #51200#51109
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = AdvGlowButton1Click
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
        object AdvGlowButton6: TAdvGlowButton
          Left = 300
          Top = 109
          Width = 71
          Height = 24
          AntiAlias = aaNone
          Caption = #45803#44592
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = AdvGlowButton6Click
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
        object edtCode: TEdit
          Left = 8
          Top = 144
          Width = 73
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 3
          Visible = False
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 227
    Width = 1105
    Height = 49
    Align = alTop
    Caption = 'Panel4'
    ShowCaption = False
    TabOrder = 4
    object wLabel1: TLabel
      Left = 168
      Top = 17
      Width = 24
      Height = 12
      Caption = #44592#44036
      Color = 16770805
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      Visible = False
    end
    object Label15: TLabel
      Left = 285
      Top = 17
      Width = 7
      Height = 13
      Caption = '~'
    end
    object rbTerm: TRadioButton
      Left = 84
      Top = 13
      Width = 76
      Height = 17
      Caption = #44592#44036#44160#49353
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = rbTermClick
    end
    object rbChart: TRadioButton
      Left = 9
      Top = 13
      Width = 69
      Height = 17
      Caption = #54872#51088#44160#49353
      Checked = True
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = rbChartClick
    end
    object EdtSch2: TAdvEdit
      Left = 396
      Top = 13
      Width = 110
      Height = 23
      DefaultHandling = True
      EmptyText = #44160#49353#53412#50892#46300#47484' '#51077#47141#54616#49464#50836'.'
      EmptyTextStyle = []
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
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #49352#44404#47548
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 2
      Text = 'EdtSch2'
      Visible = True
      Version = '3.4.9.0'
    end
    object dpRecall2: TDateTimePicker
      Left = 298
      Top = 13
      Width = 86
      Height = 22
      Date = 37912.000000000000000000
      Time = 0.592510810187377500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ParentFont = False
      TabOrder = 3
    end
    object dpRecall1: TDateTimePicker
      Left = 198
      Top = 13
      Width = 86
      Height = 22
      Date = 37912.000000000000000000
      Time = 0.592508287038072000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ParentFont = False
      TabOrder = 4
    end
    object cbMinewon: TCheckBox
      Left = 506
      Top = 14
      Width = 60
      Height = 18
      Hint = #44592#44036#49345#44288' '#50630#51060' '#48120#45236#50896' '#51204#52404
      TabStop = False
      Caption = #48120#45236#50896
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object btnSMS: TButton
      Left = 646
      Top = 12
      Width = 70
      Height = 20
      Hint = #44160#49353
      Caption = 'SMS'#51204#49569
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnSMSClick
    end
    object BtnRecallSch: TButton
      Left = 566
      Top = 12
      Width = 75
      Height = 20
      Hint = #44160#49353
      Caption = #44160#49353#49884#51089
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BtnRecallSchClick
    end
    object BtnPrt: TButton
      Left = 723
      Top = 12
      Width = 55
      Height = 20
      Hint = #51064#49604
      Caption = #51064#49604
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BtnPrtClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 562
    Top = 375
    object N3: TMenuItem
      Caption = #47532#53084' '#54869#51064#52376#47532
      OnClick = N3Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #47532#53084' '#45236#50857#49688#51221
      OnClick = N4Click
    end
    object N6: TMenuItem
      Caption = #47532#53084' '#49325#51228
      Visible = False
      OnClick = N6Click
    end
  end
end
