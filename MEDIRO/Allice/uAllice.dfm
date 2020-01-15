object allice_f: Tallice_f
  Left = 0
  Top = 0
  Caption = 'allice_f'
  ClientHeight = 470
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdJx2: TAdvStringGrid
    Left = 0
    Top = 193
    Width = 824
    Height = 277
    Cursor = crDefault
    Align = alClient
    ColCount = 26
    DrawingStyle = gdsClassic
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing]
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      #44396#48516
      #47749#52845
      #45800#44032
      '1'#54924#47049
      #51068#49688
      #54943#49688
      #44552#50529
      #44553#50668
      'Modality'
      'user_key'
      'su_gu1'
      'su_gu3'
      'su_soa'
      'su_yagan'
      'iOrder'
      'line'
      #53804#50557#51068#49688
      #54869#51064#53076#46300
      'jin_key'
      'su_key'
      'su_Kor_Name'
      '1/2'
      'Jin_day'
      #51652#47308#49884#44036
      'su_eng_name'
      #50696#50808#53076#46300)
    ColumnSize.Save = True
    ColumnSize.Key = '.\gridset\gridset_jx.ini'
    ColumnSize.Section = 'grdJx2'
    ColumnSize.Location = clIniFile
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
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
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDown.TextChecked = 'Checked'
    FilterDropDown.TextUnChecked = 'Unchecked'
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Larger than'
      'Smaller than'
      'Clear')
    FixedColWidth = 32
    FixedRowHeight = 22
    FixedRowAlways = True
    FixedFont.Charset = ANSI_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -13
    FixedFont.Name = #47569#51008' '#44256#46357
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    Look = glSoft
    Navigation.AlwaysEdit = True
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    ScrollProportional = True
    ScrollSynch = True
    SearchFooter.Color = clBtnFace
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    ShowDesignHelper = False
    SortSettings.DefaultFormat = ssAutomatic
    VAlignment = vtaCenter
    Version = '8.4.4.1'
    ColWidths = (
      32
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      89
      64
      64
      64
      64
      64
      64
      64)
    RowHeights = (
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22)
    object clbJinryoHx: TCheckListBox
      Left = 42
      Top = 28
      Width = 165
      Height = 100
      ItemHeight = 13
      Items.Strings = (
        '')
      TabOrder = 4
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 193
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 152
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Chart'
    end
    object Label2: TLabel
      Left = 288
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Jubsu_ID'
    end
    object Label3: TLabel
      Left = 152
      Top = 69
      Width = 26
      Height = 13
      Caption = 'Team'
    end
    object Label4: TLabel
      Left = 153
      Top = 117
      Width = 31
      Height = 13
      Caption = 'Gubun'
    end
    object lblAge: TLabel
      Left = 312
      Top = 128
      Width = 12
      Height = 13
      Caption = '20'
    end
    object wLabel38: TLabel
      Left = 533
      Top = 35
      Width = 52
      Height = 17
      Caption = #48372#54744#44396#48516
      Color = 15987441
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 429
      Top = 2
      Width = 52
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = #51652#47308#49440#53469
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object EllipsLabel1: TEllipsLabel
      Left = 622
      Top = 2
      Width = 52
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = #45812#45817#51032#49324
      Font.Charset = ANSI_CHARSET
      Font.Color = 3815994
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      Transparent = True
      EllipsType = etNone
      Version = '1.0.0.0'
    end
    object Label6: TLabel
      Left = 153
      Top = 157
      Width = 22
      Height = 13
      Caption = #51060#47492
    end
    object Label7: TLabel
      Left = 279
      Top = 147
      Width = 22
      Height = 13
      Caption = #51452#48124
    end
    object progressbar: TAdvProgressBar
      Left = 1
      Top = 1
      Width = 822
      Height = 3
      Align = alTop
      BorderColor = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
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
      Rounded = False
      ShowBorder = True
      ShowPercentage = False
      ShowPosition = False
      Steps = 20
      Version = '1.3.1.0'
      Visible = False
      ExplicitLeft = 0
      ExplicitTop = 8
      ExplicitWidth = 498
    end
    object Button1: TButton
      Left = 32
      Top = 69
      Width = 75
      Height = 25
      Caption = #51217#49688' '#50629#45936
      TabOrder = 0
      OnClick = Button1Click
    end
    object Memo1: TMemo
      Left = 622
      Top = 65
      Width = 345
      Height = 81
      Lines.Strings = (
        '1. '#52264#53944#48264#54840', '#51217#49688#48264#54840#47484' '#54028#46972#48120#53552#47196' '#48155#50500#50728#45796'.'
        '2. '#50536#47532#49828' '#52376#48169#51221#48372#47484' '#44032#51256#50728#45796'.'
        '3. '#44277#45800', '#54617#49373#46321' '#44160#51652' '#51333#47448' '#54869#51064
        '4. '#47700#46356#47196#50640' '#51217#49688#54620#45796'. - '#51217#49688#50756#47308', '#49688#45225#48372#47448', '#49688#45225#45824#44592
        '5. '#47700#46356#47196#50640' '#52376#48169#51012' '#51200#51109#54620#45796'. jinryo_p, jinryo_s, jinryo_o ')
      TabOrder = 1
    end
    object edtChart: TEdit
      Left = 152
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edtChart'
    end
    object edtJubsuID: TEdit
      Left = 288
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edtJubsuID'
    end
    object edtTeam: TEdit
      Left = 152
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'NHIC'
    end
    object edtGubun: TEdit
      Left = 152
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Button2: TButton
      Left = 32
      Top = 100
      Width = 75
      Height = 25
      Caption = #51652#47308#45347#44592
      TabOrder = 6
      OnClick = Button2Click
    end
    object dMain: TDateTimePicker
      Left = 304
      Top = 88
      Width = 105
      Height = 21
      Date = 43544.000000000000000000
      Time = 0.677963958340114900
      TabOrder = 7
    end
    object lstGroupTemp: TListBox
      Left = 432
      Top = 61
      Width = 161
      Height = 153
      ItemHeight = 13
      TabOrder = 8
    end
    object cbJong: TComboBox
      Left = 591
      Top = 30
      Width = 129
      Height = 25
      Color = clWhite
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 1
      ParentFont = False
      TabOrder = 9
      TabStop = False
      Text = #44148#44053#48372#54744
      Items.Strings = (
        ''
        #44148#44053#48372#54744
        #48372#54840'1'#51333
        #48372#54840'2'#51333
        #51068#48152
        #48372#54840'4'#51333
        #48372#54840'8'#51333
        #49328#51116
        #51088#48372
        #52264#49345#50948'1'#51333
        #52264#49345#50948'2'#51333
        #52264#49345#50948'2'#51333#51109#50528#51064)
    end
    object Button3: TButton
      Left = 32
      Top = 131
      Width = 75
      Height = 25
      Caption = 'Save Jinryo_s'
      TabOrder = 10
      OnClick = Button3Click
    end
    object pnlRIS: TAdvPanel
      Left = 622
      Top = 152
      Width = 182
      Height = 138
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      UseDockManager = True
      Visible = False
      Version = '2.5.7.9'
      CanMove = True
      CanSize = True
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 0
      Caption.Text = 'RIS Save'
      Caption.Visible = True
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object memRis: TMemo
        Left = 0
        Top = 18
        Width = 182
        Height = 120
        Align = alClient
        Lines.Strings = (
          'memRis')
        TabOrder = 0
      end
      object chkAsXML: TCheckBox
        Left = 80
        Top = 8
        Width = 87
        Height = 17
        Caption = 'Use XML Format'
        TabOrder = 1
      end
    end
    object cbDoc: TColumnComboBox
      AlignWithMargins = True
      Left = 676
      Top = -1
      Width = 129
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
        end>
      ComboItems = <>
      EditColumn = -1
      EditHeight = 19
      EmptyText = #45812#45817#51032
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = False
      ButtonWidth = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      GridLines = False
      ItemIndex = -1
      LookupColumn = 0
      LabelCaption = ''
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      SortColumn = 0
      TabOrder = 12
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 487
      Top = -1
      Width = 129
      Height = 21
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
      EditHeight = 15
      EmptyText = #51652#47308#49892
      EmptyTextFocused = True
      EmptyTextStyle = []
      DropWidth = 0
      DropHeight = 200
      Enabled = False
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
      TabOrder = 13
    end
    object Button4: TButton
      Left = 32
      Top = 162
      Width = 75
      Height = 25
      Caption = 'Send ChartNo'
      TabOrder = 14
      OnClick = Button4Click
    end
    object edtname: TEdit
      Left = 152
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 15
      Text = 'edtname'
    end
    object edtJumin: TEdit
      Left = 280
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 16
      Text = 'edtJumin'
    end
    object memChart: TMemo
      Left = 330
      Top = 115
      Width = 71
      Height = 46
      Lines.Strings = (
        'memChart')
      TabOrder = 17
    end
    object Button5: TButton
      Left = 32
      Top = 12
      Width = 75
      Height = 23
      Caption = #51217#49688' '
      TabOrder = 18
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 32
      Top = 41
      Width = 75
      Height = 25
      Caption = #51217#49688' '#49325#51228
      TabOrder = 19
      OnClick = Button6Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 424
    Top = 32
  end
end
