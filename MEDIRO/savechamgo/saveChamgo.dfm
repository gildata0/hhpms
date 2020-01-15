object saveChamgo_f: TsaveChamgo_f
  Left = 299
  Top = 84
  BorderIcons = [biSystemMenu]
  Caption = 'saveChamgo_f'
  ClientHeight = 689
  ClientWidth = 1216
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TAdvPanel
    Left = 0
    Top = 41
    Width = 1216
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.7.6'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    FullHeight = 57
    object lblChart: TLabel
      Left = 160
      Top = 13
      Width = 101
      Height = 13
      AutoSize = False
      Caption = 'lblChart'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lblName: TLabel
      Left = 280
      Top = 13
      Width = 76
      Height = 13
      AutoSize = False
      Caption = 'lblName'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Label4: TLabel
      Left = 6
      Top = 15
      Width = 31
      Height = 13
      AutoSize = False
      Caption = #51068#51088
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lblSeq: TLabel
      Left = 595
      Top = 10
      Width = 29
      Height = 13
      Caption = 'lblSeq'
      Visible = False
    end
    object dtChamgo: TDateTimePicker
      Left = 36
      Top = 11
      Width = 91
      Height = 21
      Date = 39154.831661238400000000
      Time = 39154.831661238400000000
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      OnChange = dtChamgoChange
    end
    object rgSelect: TRadioGroup
      Left = 362
      Top = 6
      Width = 331
      Height = 27
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'chart'
        'memo Cc'
        'memo Tx')
      TabOrder = 1
    end
  end
  object pnlMain: TAdvPanel
    Left = 0
    Top = 80
    Width = 1146
    Height = 581
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    OnResize = pnlMainResize
    Version = '2.5.7.6'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    FullHeight = 308
    object GroupBox2: TGroupBox
      Left = -430
      Top = -5
      Width = 413
      Height = 94
      Caption = 'CheckList'
      TabOrder = 1
      object cb13: TCheckBox
        Left = 5
        Top = 23
        Width = 91
        Height = 17
        Caption = #51200#54792#50517
        TabOrder = 0
      end
      object cb14: TCheckBox
        Left = 6
        Top = 46
        Width = 66
        Height = 17
        Caption = #44256#54792#50517
        TabOrder = 1
      end
      object CB15: TCheckBox
        Left = 76
        Top = 23
        Width = 68
        Height = 17
        Caption = #49900#51109#51656#54872
        TabOrder = 2
      end
      object cb16: TCheckBox
        Left = 76
        Top = 46
        Width = 69
        Height = 17
        Caption = #52636#54792#49457
        TabOrder = 3
      end
      object cb17: TCheckBox
        Left = 147
        Top = 23
        Width = 62
        Height = 17
        Caption = #44208#54645
        TabOrder = 4
      end
      object cb18: TCheckBox
        Left = 147
        Top = 47
        Width = 66
        Height = 17
        Caption = #50557#48512#51089#50857
        TabOrder = 5
      end
      object cb19: TCheckBox
        Left = 218
        Top = 23
        Width = 70
        Height = 17
        Caption = #45817#45544
        TabOrder = 6
      end
      object cb20: TCheckBox
        Left = 218
        Top = 47
        Width = 69
        Height = 17
        Caption = #49373#47532','#51076#49888
        TabOrder = 7
      end
      object cb21: TCheckBox
        Left = 290
        Top = 23
        Width = 91
        Height = 17
        Caption = #44036#50684
        TabOrder = 8
      end
      object cb22: TCheckBox
        Left = 290
        Top = 46
        Width = 91
        Height = 17
        Caption = #49888#51109#51656#54872
        TabOrder = 9
      end
      object cb23: TCheckBox
        Left = 5
        Top = 70
        Width = 91
        Height = 17
        Caption = #44592#53440#51656#54872
        TabOrder = 10
      end
    end
    object spSkinGroupBox1: TGroupBox
      Left = -421
      Top = -5
      Width = 411
      Height = 103
      Caption = 'Chief Complaint'
      TabOrder = 0
      object cb2: TCheckBox
        Left = 5
        Top = 39
        Width = 50
        Height = 17
        Caption = #52649#52824
        TabOrder = 0
      end
      object cb3: TCheckBox
        Left = 5
        Top = 56
        Width = 50
        Height = 17
        Caption = #48156#52824
        TabOrder = 1
      end
      object cb4: TCheckBox
        Left = 5
        Top = 72
        Width = 50
        Height = 17
        Caption = #51032#52824
        TabOrder = 2
      end
      object cb5: TCheckBox
        Left = 75
        Top = 19
        Width = 80
        Height = 17
        Caption = #51079#47800
        TabOrder = 3
      end
      object cb6: TCheckBox
        Left = 75
        Top = 40
        Width = 80
        Height = 17
        Caption = #51221#44592#51216#44160
        TabOrder = 4
      end
      object cb7: TCheckBox
        Left = 75
        Top = 57
        Width = 80
        Height = 17
        Caption = #44284#48124#49457' '#52824#50500
        TabOrder = 5
      end
      object cb8: TCheckBox
        Left = 75
        Top = 73
        Width = 80
        Height = 17
        Caption = #44396#44053#53685#51613
        TabOrder = 6
      end
      object cb9: TCheckBox
        Left = 190
        Top = 20
        Width = 91
        Height = 17
        Caption = #50808#49345
        TabOrder = 7
      end
      object cb10: TCheckBox
        Left = 190
        Top = 36
        Width = 91
        Height = 17
        Caption = #52824#50500#54924#48373
        TabOrder = 8
      end
      object cb11: TCheckBox
        Left = 190
        Top = 53
        Width = 91
        Height = 17
        Caption = #44368#51221#52824#47308
        TabOrder = 9
      end
      object cb1: TCheckBox
        Left = 5
        Top = 23
        Width = 50
        Height = 17
        Caption = #52824#53685
        TabOrder = 10
      end
      object cb12: TCheckBox
        Left = 190
        Top = 70
        Width = 91
        Height = 17
        Caption = #44396#44053#44160#51652
        TabOrder = 11
      end
    end
    object grdCC: TAdvStringGrid
      Left = 54
      Top = 230
      Width = 1051
      Height = 176
      Cursor = crDefault
      ColCount = 6
      DrawingStyle = gdsClassic
      RowCount = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = 7485192
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
      ParentFont = False
      PopupMenu = PopupMenu2
      ScrollBars = ssBoth
      TabOrder = 2
      GridLineColor = 15527152
      GridFixedLineColor = 13947601
      HoverRowCells = [hcNormal, hcSelected]
      OnClickCell = grdCCClickCell
      OnDblClickCell = grdCCDblClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 16575452
      ActiveCellColorTo = 16571329
      ColumnHeaders.Strings = (
        ''
        #51068#51088
        'Portion'
        #45236#50669
        'ID')
      ControlLook.FixedGradientMirrorFrom = 16049884
      ControlLook.FixedGradientMirrorTo = 16247261
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
      FixedColWidth = 24
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
      Look = glWin7
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
      SearchFooter.Color = 16645370
      SearchFooter.ColorTo = 16247261
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.HeaderColor = 16579058
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '8.4.1.0'
      ColWidths = (
        24
        105
        130
        180
        64
        260)
      RowHeights = (
        22
        22)
    end
    object tcCCdate: TTabControl
      Left = 0
      Top = 557
      Width = 1146
      Height = 24
      Align = alBottom
      TabOrder = 3
      OnChange = tcCCdateChange
    end
    object AdvPanel2: TAdvPanel
      Left = 0
      Top = 0
      Width = 1146
      Height = 226
      Align = alTop
      BevelOuter = bvNone
      Color = 16645114
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UseDockManager = True
      Version = '2.5.7.6'
      BorderColor = 16765615
      Caption.Color = 16575452
      Caption.ColorTo = 16571329
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBlack
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.ShadeLight = 255
      CollapsColor = clNone
      CollapsDelay = 0
      ColorTo = 16643051
      DoubleBuffered = True
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
      object Label7: TLabel
        Left = 990
        Top = 30
        Width = 91
        Height = 65
        Alignment = taCenter
        AutoSize = False
        Caption = #51077#47141#54624' '#45236#50857#51032#13#10#54256#53944#49549#49457#51012' '#13#10#49688#51221#54616#50668' '#13#10#51200#51109#54624' '#49688' '#13#10#51080#49845#45768#45796'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlPen: TPanel
        Left = 856
        Top = 40
        Width = 50
        Height = 71
        Caption = 'pnlPen'
        TabOrder = 0
        Visible = False
      end
      object pnlBpInfo: TAdvPanel
        Left = 640
        Top = -7
        Width = 227
        Height = 177
        BevelOuter = bvNone
        Color = 16645114
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.5.7.6'
        BorderColor = 16765615
        Caption.Color = 16575452
        Caption.ColorTo = 16571329
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        Caption.Text = '<FONT color="#000080">'#9632' '#54792#50517' '#45817#45544'</FONT>'
        Caption.TopIndent = 3
        Caption.Visible = True
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 16643051
        DoubleBuffered = True
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
        object Label1: TLabel
          Left = 15
          Top = 47
          Width = 31
          Height = 13
          AutoSize = False
          Caption = #54792#50517
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object Label2: TLabel
          Left = 15
          Top = 87
          Width = 31
          Height = 13
          AutoSize = False
          Caption = #45817#45544
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object Label5: TLabel
          Left = 166
          Top = 45
          Width = 29
          Height = 15
          AutoSize = False
          Caption = #13212'Hg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 104
          Top = 85
          Width = 54
          Height = 15
          AutoSize = False
          Caption = #13198'/100'#13206
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 101
          Top = 45
          Width = 16
          Height = 15
          AutoSize = False
          Caption = '/'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #46027#50880
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object edtBp1: TSpinEdit
          Left = 45
          Top = 36
          Width = 58
          Height = 33
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 0
        end
        object edtBp2: TSpinEdit
          Left = 107
          Top = 36
          Width = 58
          Height = 33
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
        end
        object edtDm: TSpinEdit
          Left = 45
          Top = 76
          Width = 58
          Height = 33
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 2
          Value = 0
        end
      end
      object AdvPanel3: TAdvPanel
        Left = 0
        Top = 0
        Width = 446
        Height = 226
        Align = alLeft
        BevelOuter = bvNone
        Color = 16645114
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UseDockManager = True
        Version = '2.5.7.6'
        BorderColor = 16765615
        Caption.Color = 16575452
        Caption.ColorTo = 16571329
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        Caption.Text = '<FONT color="#000080">'#9632' '#45236#50857' '#51077#47141'</FONT>'
        Caption.TopIndent = 3
        Caption.Visible = True
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 16643051
        DoubleBuffered = True
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
        object pnlEditTool: TAdvPanel
          Left = 0
          Top = 18
          Width = 446
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          Color = 16645114
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UseDockManager = True
          Version = '2.5.7.6'
          BorderColor = 16765615
          Caption.Color = 16575452
          Caption.ColorTo = 16571329
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clBlack
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 2
          Caption.ShadeLight = 255
          CollapsColor = clNone
          CollapsDelay = 0
          ColorTo = 16643051
          DoubleBuffered = True
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
          FullHeight = 27
          object ItalBtn: TSpeedButton
            Left = 30
            Top = 2
            Width = 23
            Height = 22
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0000000
              00000000000000000000000000000000000000000000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C000000000000000000000
              0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C00000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0000000000000
              000000000000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            OnClick = ItalBtnClick
          end
          object BoldBtn: TSpeedButton
            Left = 6
            Top = 2
            Width = 23
            Height = 22
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C00000000000000000000000000000000000000000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C00000000000000000000000000000000000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000000000000000000000000000C0C0C0C0C0C0C0000000
              00000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C00000000000000000000000000000000000000000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            OnClick = BoldBtnClick
          end
          object UnderBtn: TSpeedButton
            Left = 54
            Top = 2
            Width = 23
            Height = 22
            AllowAllUp = True
            GroupIndex = 3
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C00000000000000000C0C0C0C0C0C0C000C0C0C0C00000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C000C0C0C0C00000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C00000000000000000C0C0C0C0C0C0C000C0C0C0C00000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C000C0C0C0C00000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C00000000000000000C0C0C0C0C0C0C000C0C0C0C00000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C000C0C0C0C00000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0000000000000000000000000C0C0C0C0C0C0C000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            OnClick = UnderBtnClick
          end
          object ColorBtn: TSpeedButton
            Left = 210
            Top = 2
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C00000000000008080000080800000808000008080000080
              80000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0008080000080800000FFFFC0C0C0C00000FFFFC0C0C0C00000FF
              FFC0C0C0C00000FFFFC00000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000008080C0C0C0C00000FFFF00C0C0C00000FFFF00C0C0C000FF0000808000
              008080000000C0C0C00000FFFF00C0C0C000000000C0C0C0C0C0C0C0C0000080
              80C0C0C0C00000FFFF0000008000000080C0C0C0C00000FFFFFFFF0000FFFF00
              0000FF0000FF800000C0C0C0C00000FFFF00C0C0C000000000C0008080000080
              800000FFFF000000FF000000FF000000FF00000080C0C0C0C00000FFFF00C0C0
              C000FF0000FFFF00000000FFFFC0C0C0C00000FFFFC0000000C00080800000FF
              FFC0C0C0C00000FFFFC00000FF000000FF00C0C0C00000FFFF00C0C0C00000FF
              FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C000000000C0008080C0C0C0
              C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF000000
              0000000000000000000000000000C0C0C00000808000000000000080800000FF
              FF0000800000008000000080000000FFFFC0C0C0C00000FFFFC0C0C0C0000000
              00FFFFFFFFFFFF000000000000C0C0C0C000000000C0C0C0C000008080C0C0C0
              C00000FF000000FF0000008000C0C0C0C00000FFFF00C0C0C00000FFFF000000
              00000000000000000000FF00000000000000C0C0C0C0C0C0C0000080800000FF
              FF0000FF000000FF0000C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
              FF00C0C0C000008080C0C0C0C000FF00000000000000C0C0C0C0008080C0C0C0
              C00000FFFF00C0C0C00000FFFF0080008080800080008000808000FFFFC0C0C0
              C0000080800000000000C0C0C0C0C0C0C0008080800000000000008080FFFFFF
              FF00C0C0C00000FFFF00FF00FFFFFF00FF00FF00FFFF800080C0C0C0C00000FF
              FF0000000000C0C0C0C0C0C0C000C0C0C0C00000000000000000008080000080
              8000FFFFFFC0C0C0C00000FFFFFFFF00FF00FF00FFC0C0C0C00000FFFF000080
              8000000000C0C0C0C0C0C0C0C000C0C0C0C000000000000000C0C0C0C0C00080
              80FFFFFFFFFFFFFFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C0000000
              00C0C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0000000C0C0C0C0C0C0C0
              C0000080800000808000FFFFFFFFFFFFFF00FFFFFFFF0080800000000000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C00080800000808000008080000080800000808000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            OnClick = ColorBtnClick
          end
          object FontBtn: TSpeedButton
            Left = 231
            Top = 2
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333FFF33FFFFF33333300033000
              00333337773377777333333330333300033333337FF33777F333333330733300
              0333333377FFF777F33333333700000073333333777777773333333333033000
              3333333337FF777F333333333307300033333333377F777F3333333333703007
              33333333377F7773333333333330000333333333337777F33333333333300003
              33333333337777F3333333333337007333333333337777333333333333330033
              3333333333377333333333333333033333333333333733333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = FontBtnClick
          end
          object LeftBtn: TSpeedButton
            Left = 511
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Set selected item left aligned'
            AllowAllUp = True
            GroupIndex = 4
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
          object CenterBtn: TSpeedButton
            Left = 535
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Set selected item center alignment'
            AllowAllUp = True
            GroupIndex = 5
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
              0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C00000000000000000000000000000000000000000000000
              000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
              0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
          object RightBtn: TSpeedButton
            Left = 559
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Set selected item right alignment'
            AllowAllUp = True
            GroupIndex = 6
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0
              C0C0C0C0C000C0C0C0C0C0C0C000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C000C0C0
              C0C0000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0000000000000000000000000000000000000
              0000000000000000000000000000C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
              C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
          object FontName: TComboBox
            Left = 257
            Top = 3
            Width = 110
            Height = 21
            Style = csDropDownList
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            OnChange = FontNameChange
          end
          object FontSize: TComboBox
            Left = 371
            Top = 3
            Width = 44
            Height = 21
            Style = csDropDownList
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            OnChange = FontSizeChange
            Items.Strings = (
              '8'
              '10'
              '12'
              '14'
              '16'
              '18'
              '20'
              '22'
              '24'
              '26'
              '28'
              '30'
              '36'
              '48'
              '72')
          end
          object pnlCol1: TPanel
            Left = 102
            Top = 2
            Width = 23
            Height = 22
            Color = clRed
            ParentBackground = False
            TabOrder = 2
            OnClick = pnlCol6Click
          end
          object pnlcol2: TPanel
            Left = 123
            Top = 2
            Width = 23
            Height = 22
            Color = clBlue
            ParentBackground = False
            TabOrder = 3
            OnClick = pnlCol6Click
          end
          object pnlcol3: TPanel
            Left = 144
            Top = 2
            Width = 23
            Height = 22
            Color = clGreen
            ParentBackground = False
            TabOrder = 4
            OnClick = pnlCol6Click
          end
          object pnlcol4: TPanel
            Left = 165
            Top = 2
            Width = 23
            Height = 22
            Color = clYellow
            ParentBackground = False
            TabOrder = 5
            OnClick = pnlCol6Click
          end
          object pnlcol5: TPanel
            Left = 186
            Top = 2
            Width = 23
            Height = 22
            Color = 12615935
            ParentBackground = False
            TabOrder = 6
            OnClick = pnlCol6Click
          end
          object pnlCol6: TPanel
            Left = 79
            Top = 2
            Width = 23
            Height = 22
            Color = clBlack
            ParentBackground = False
            TabOrder = 7
            OnClick = pnlCol6Click
          end
        end
        object rEdit: TRichEdit
          Left = 0
          Top = 45
          Width = 446
          Height = 181
          Align = alClient
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 3
          Zoom = 100
          OnSelectionChange = rEditSelectionChange
        end
        object spSkinButton2: TButton
          Left = 101
          Top = 1
          Width = 90
          Height = 16
          Caption = #49345#50857#44396' '#49324#50857
          TabOrder = 1
          TabStop = False
          OnClick = spSkinButton2Click
        end
        object spSkinButton12: TButton
          Left = 196
          Top = 1
          Width = 90
          Height = 16
          Caption = #52824#49885' '#49324#50857
          TabOrder = 2
          TabStop = False
          OnClick = spSkinButton12Click
        end
      end
      object pnlCommon: TAdvPanel
        Left = 446
        Top = 0
        Width = 700
        Height = 226
        Align = alClient
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
        Version = '2.5.7.6'
        BorderColor = 16765615
        Caption.Color = 16575452
        Caption.ColorTo = 16571329
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        Caption.Text = '<FONT color="#000080">'#9632' '#49345#50857#44396'</FONT>'
        Caption.TopIndent = 3
        Caption.Visible = True
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 16643051
        DoubleBuffered = True
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
        object lbUseWord: TListBox
          Left = 512
          Top = 48
          Width = 204
          Height = 151
          Color = 15263976
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7485192
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'Microsoft IME 2003'
          ItemHeight = 20
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          Visible = False
          OnDblClick = lbUseWordDblClick
        end
        object btnAdd: TButton
          Left = 265
          Top = 2
          Width = 154
          Height = 16
          Caption = #49352#47196#50868' '#49345#50857#44396' '#52628#44032
          TabOrder = 1
          Visible = False
          OnClick = btnAddClick
        end
        object btnApply: TButton
          Left = 101
          Top = 2
          Width = 161
          Height = 16
          Caption = #51077#47141' '#45236#50857#51012' '#49345#50857#44396#47196' '#52628#44032
          TabOrder = 2
          Visible = False
          OnClick = btnApplyClick
        end
        object lbCharttagList: TListBox
          Left = 579
          Top = 110
          Width = 121
          Height = 116
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 13
          Items.Strings = (
            ''
            #49345#45812
            #49345#45812#50756#47308
            #51652#45800#51456#48708
            #51652#45800
            #51652#45800#50756#47308
            '1'#52264#44368#51221
            '2'#52264#44368#51221
            #51204#52404#44368#51221
            #48512#48516#44368#51221
            #45800#49692#44368#51221
            #51116#44368#51221
            #45800#49692#44368#51221#50756#47308
            '1'#52264#44368#51221#50756#47308
            '1'#52264#44368#51221#51333#47308
            #46356#48376#46377
            'Check Stop ')
          TabOrder = 3
          Visible = False
        end
        object edtChartTag: TEdit
          Left = 579
          Top = 205
          Width = 121
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 4
          Text = 'edtChartTag'
          Visible = False
        end
        object edtCharttagOrder: TEdit
          Left = 579
          Top = 205
          Width = 121
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 5
          Text = 'edtChartTagOrder'
          Visible = False
        end
        object pnlSulsikTree: TPanel
          Left = 107
          Top = 24
          Width = 297
          Height = 193
          Caption = 'pnlSulsikTree'
          TabOrder = 6
          Visible = False
          object pgTXProgress: TPageControl
            Left = 24
            Top = 99
            Width = 233
            Height = 94
            ActivePage = TabSheet1
            MultiLine = True
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = 'TabSheet1'
            end
            object TabSheet2: TTabSheet
              Caption = 'TabSheet2'
              ImageIndex = 1
            end
          end
          object pnlChildUse: TPanel
            Left = 1
            Top = 1
            Width = 295
            Height = 33
            Align = alTop
            Caption = 'pnlChildUse'
            TabOrder = 1
            object cbChildUse: TCheckBox
              Left = 1
              Top = 5
              Width = 104
              Height = 17
              Caption = #47784#46304' '#49696#49885' '#49324#50857
              TabOrder = 0
            end
          end
          object Tree0: TTreeView
            Left = 30
            Top = 31
            Width = 223
            Height = 62
            BorderStyle = bsNone
            DragMode = dmAutomatic
            Indent = 19
            ReadOnly = True
            RightClickSelect = True
            TabOrder = 2
            Visible = False
          end
        end
      end
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1216
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16645114
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.7.6'
    BorderColor = 16765615
    Caption.Color = 16575452
    Caption.ColorTo = 16571329
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 16643051
    DoubleBuffered = True
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
    FullHeight = 57
    object AdvGlowButton1: TAdvGlowButton
      Left = 9
      Top = 3
      Width = 100
      Height = 32
      Caption = #54172' '#51077#47141
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      Visible = False
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
    object AdvGlowButton2: TAdvGlowButton
      Tag = 1
      Left = 119
      Top = 3
      Width = 100
      Height = 32
      Caption = #54172' '#49688#51221
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      Visible = False
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
    object AdvGlowButton3: TAdvGlowButton
      Tag = 1
      Left = 524
      Top = 3
      Width = 100
      Height = 32
      Caption = #51200#51109
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = AdvGlowButton3Click
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
    object cbClose: TCheckBox
      Left = 630
      Top = 12
      Width = 97
      Height = 17
      Caption = #51200#51109' '#54980' '#45803#44592
      TabOrder = 3
      OnClick = cbCloseClick
    end
    object btnIns: TAdvGlowButton
      Tag = 1
      Left = 304
      Top = 3
      Width = 100
      Height = 32
      Caption = #52628#44032
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btnInsClick
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
      Tag = 1
      Left = 413
      Top = 3
      Width = 100
      Height = 32
      Caption = #52712#49548
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
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
    object AdvGlowButton4: TAdvGlowButton
      Tag = 1
      Left = 733
      Top = 4
      Width = 100
      Height = 32
      Caption = #45803#44592
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = AdvGlowButton4Click
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
  object PopupMenu1: TPopupMenu
    Left = 430
    Top = 60
    object N1: TMenuItem
      Caption = #49325#51228
      OnClick = N1Click
    end
  end
  object ImageList4: TImageList
    Height = 23
    Width = 23
    Left = 465
    Top = 58
    Bitmap = {
      494C0101250027001C0017001700FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000005C000000E60000000100200000000000A04A
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001950000019
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000001950000019500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00B1C7FF00B1C7FF0000195000001950000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00B1C7FF00B1C7FF008EABFF000019
      5000001950000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF000025730000257300003196006B8FFF006B8FFF000055FF00001950000019
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9000055FF00003DB900001950000019500000195000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF00003DB9000031
      9600003196000019500000195000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9004873FF008EABFF00B1C7FF00B1C7FF0000319600002573000025
      7300001950000019500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF008EABFF00B1C7
      FF00B1C7FF00B1C7FF0000257300002573000019500000195000001950000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9004873FF008EABFF00B1C7FF00B1C7FF00B1C7FF00D4E3FF00D4E3
      FF00D4E3FF000019500000195000001950000019500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF008EABFF00B1C7
      FF00B1C7FF00B1C7FF0000257300002573000019500000195000001950000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9004873FF008EABFF00B1C7FF00B1C7FF0000319600002573000025
      7300001950000019500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00002573000025730000319600003DB900003DB9004873FF00003DB9000031
      9600003196000019500000195000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00002573000025730000319600003D
      B900003DB9000055FF00003DB900001950000019500000195000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF000025730000257300003196006B8FFF006B8FFF000055FF00001950000019
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000D4E3FF00B1C7FF00B1C7FF008EABFF000019
      5000001950000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000195000D4E3
      FF00B1C7FF00B1C7FF0000195000001950000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000195000001950000019500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001950000019
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007777770077777700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F6008B6E4900947550009474
      4F0094744F0094744F0094744F0092724C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFFFFF00CC999900CC999900CC99
      9900CC999900CC99990000000000000000007777770077777700000000000000
      0000000000000000000000000000000000000000000000000000A7917500A58D
      7100A58D7000A58D7000A58D7000A58D7000A58D7000A58D7000A58D7000A58D
      7000AA947600DFD0B900E8DFDE00100FFC00100FFC00100FFC004240F500F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000CC999900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFFFFF00CC999900CC999900CC999900CC999900CC999900CC999900CC99
      9900777777007777770000000000000000000000000000000000000000000000
      00000000000000000000E4D6C000EBDBC400EBDBC400EBDBC400EBDBC400EBDB
      C400EBDBC400EBDBC400EBDBC400EBDBC400F0E2CE00F5EAD900F7ECDC00F7ED
      DD00F7EDDD00F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF000000000000FFFF
      FF00C0C0C000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000CC999900CC999900FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFFFFF00CC999900CC999900CC99
      9900CC999900CC999900CC999900CC9999000000000077777700777777000000
      0000000000000000000000000000C5853F00C5853E00C5853E00C5853E00C585
      3E00C5853E00C5853E00C5853E00C5853E00C5853E00C5853E00C5853E00C585
      3E00C5853E00C5853E00C5853E00C27F3600D5A87700F7EDDD00F7EDDD00F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000CC999900CC999900CC9999000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000CC999900CC99
      9900CC999900CC9999007777770077777700000000000000000000000000FBE9
      CF00FBE9CE00FBE8CE00FBE9CE00FBE8CE00FBE9CE00FBE9CE00FBE8CE00FBE9
      CE00FBE9CE00FBE8CE00D9C9D5000000FF000000FF000000FF000000FF00F6E0
      C100D5A26100F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000CC999900CC99990000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000CC999900CC999900777777007777
      7700777777000000000000000000FAE7CC00FAE7CB00FAE7CA00FAE7CB00FAE7
      CB00FAE7CB00FAE7CB00FAE7CA00FAE7CB00FAE7CB00FAE7CB00F4E1CC00C8B8
      D500C8B8D500C8B9D500C8B9D500F6DFBE00D5A26000F7EDDD00F7EDDD00F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF000000000000000000FF999900FF999900FF99
      9900FF999900FF999900FF999900FF9999000000000000000000FFFFFF00FFFF
      FF0000000000CC9999007777770077777700777777000000000000000000F9E3
      C300F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3
      C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C200F9E3C300F9E3C200F4D9
      B300D5A15E00F6EAD900F6ECDC00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000080000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FF99
      9900FF999900FF999900FF999900FF999900FF999900FF999900FF999900FF99
      9900FF999900FF99990000000000FFFFFF00FFFFFF0000000000777777007777
      7700777777000000000000000000F8E1BF00F9E1BE00F8E1BE00F8E1BE00F8E1
      BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1BE00F8E1
      BE00F8E1BE00F8E1BE00F8E1BE00CB955300B3702C00D4AC7400F5E9D700F1E3
      D000000000000000000000000000000000000000000000008000000080000000
      8000000080000000800000008000008080000080800000808000000000000080
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      0000FFFF000000000000C0C0C000FFFF0000FFFF00000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000FFFFFF00FFFFFF0000000000FF999900FF999900FF999900FF999900FF99
      9900FF999900FF999900FFFFFF00FFFFFF00FF999900FF999900FF9999000000
      0000FFFFFF00FFFFFF007777770077777700777777000000000000000000F8DF
      BA00F8DFB900F8DFB900F8DFB900F8DEB900F8DEB900F8DEB900F8DFB900F8DF
      B900F8DFB900F8DEB900F8DFB900F8DFB900F8DEB900F8DEB900F8DFB9000303
      02000A0A09004D3F2B00F5E9D600F1E3D0000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000080800000FF
      FF0000FFFF0000FFFF0000FFFF000080000000FF000000FF000000FF000000FF
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000CC999900FF99
      990099666600FFCCCC00FF999900FF999900FF999900FF999900FF999900FF99
      9900FFFFFF0099666600FF999900CC999900FFFFFF00FFFFFF00777777007777
      7700777777000000000000000000F7DAB000F6DAAE00F6DAAE00F6DAAE00F6DA
      AE00F6DAAE00F6DAAF00F6DAAE00F6DAAF00F6DAAF00F6DAAE00F6DAAE00F6DA
      AE00F6DAAF00F6DAAE00F6DAAF00150E0500916734004C3E2B00F5E9D600F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF00000000000080800000FFFF0000FFFF000080800000FFFF0000FFFF000080
      000000FF000000FF00000080000000FF000000FF000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000CC999900CC999900FF999900FFFFFF00FFCCCC009966
      66009966660099666600996666009966660099666600CC999900CC999900CC99
      9900FFFFFF00FFFFFF007777770077777700000000000000000000000000F6D8
      AB00F5D5A600E9BD8300E8BB8000E8BB7F00E8BB8000E8BB8000E8BB7F00E7B9
      7C00E7B87B00F4D3A300F2D09E00F2D09E00F2D09E00F2D09E00F4D4A5001716
      150017171600584F4300F4E7D300F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF00000000000000000000FFFF0000FF
      FF000080800000FFFF0000FFFF000080000000FF000000FF00000080000000FF
      000000FF000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF0000000000CC99
      9900CC999900FFCCCC00FF999900FF999900FF999900FF999900FF999900FF99
      9900FF999900A4A0A000FF99990000000000FFFFFF00FFFFFF00777777000000
      0000000000000000000000000000F5D5A600D0B3A600573C6500553A5E00553A
      5E00563A5E00563A5E00563A5E009077620081666000B88F5B00A4723600A472
      3600A4723600AA773A00D3AA730091653300926A3B009A764500DBBE9600F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF0000000000000080000000000000FFFF0000FFFF0000FFFF0000FFFF000080
      000000FF000000FF000000FF000000FF00000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF000000000000000000CC999900CC999900CC99
      9900CC999900CC999900CC999900CC999900CC99990000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000F4D1
      9B00BCA2B3000303FF000000FF000000FF002020FF002020FF002020FF00DEDE
      FF00A4A4FB00C5AA8100946F43001F1811008F663700B4906100DABC8D009972
      46007C5D3800B6A58C00E4DBCC00F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF0000008000000080000000FF000000
      00000080800000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF000000000000C0C0C000FFFF
      0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF007777770077777700000000000000
      0000000000000000000000000000F3CF9600BCA0AF000303FF000000FF000000
      FF00FBFBFF00FBFBFF00FBFBFF00DEDEFF00A5A5FB00CEAF7E00090806000404
      040003020000B8915C00F3CE9400120C050005050400B6905C00F5E9D600F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0
      C00099999900000000007777770000000000000000000000000000000000F2CA
      8D00BB9CA8000303FF000000FF000000FF00C5C5FF003D3DFF003D3DFF00DEDE
      FF00F3F3FC00CFAD7800090807005F3E190000000000B78D5600F1C98B001C11
      060096673200413B3300F6EBDB00F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF0000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00C0C0C000C0C0C00000000000777777007777
      7700000000000000000000000000F1C98900BA9BA5000303FF000000FF000000
      FF00FEFEFF00FEFEFF00FEFEFF00DFDFFF00A7A7FC00CFAC7700171615000F0F
      0F000C0C0C00BC976200F1C78700201F1E0009080800B4ADA100F7EDDD00F1E3
      D0000000000000000000000000000000000000000000000080000000FF000000
      FF00000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF00FFFF
      FF0000000000000000000000000077777700777777000000000000000000F1C7
      8600BA9AA2000303FF000000FF000000FF003C3CFF003C3CFF003C3CFF003535
      FF002727FB00EAC08100CBAA7800CBAA7800C9A87600E6BD7F00F0C58400D0A8
      7000A07E5300F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      000000000000000080000000FF000000FF000000800000008000000080000000
      80000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000222222002222220011111100000000000000
      0000000000007777770000000000F0C48000B9989E000303FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FB00F0C27E00EFC37E00EFC3
      7E00F0C37E00EFC37E00EFC37E00EBBC7600D39B5300F7EDDD00F7EDDD00F1E3
      D00000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000077777700222222000000000000000000000000007777770000000000EFC3
      7E00B9979C000303FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FB00EFC27B00EFC27C00EFC27C00EFC27B00EFC27C00EFC27C00EBBB
      7400D39B5300F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222200222222001111
      1100000000000000000000000000EFC27D00E7BB8000D3AE9300D3AE9300D3AE
      9300D3AE9300D3AE9300D3AE9300D3AE9300D3AE9300EFC17A00EFC17A00EFC1
      7A00EFC17A00EFC17A00EFC17A00EABA7300D39B5300F7EDDD00F7EDDD00F1E3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007777770022222200111111000000000000000000EFC8
      8B00EFC68900EFC78900EFC68900EFC78900EFC78900EFC78900EFC78900EFC7
      8900EFC78900EFC78900EFC78900EFC68900EFC78900EFC78900EFC78900EAC0
      8100D39C5500F7EDDD00F7EDDD00F1E3D0000000000000000000000000000000
      000000000000C0C0C00080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222007777
      7700222222000000000000000000F1D7AE00F1D5AB00F1D6AB00F1D5AB00F1D5
      AB00F1D5AB00F1D5AB00F1D5AB00F1D5AB00F1D6AB00F1D5AB00F1D5AB00F1D5
      AB00F1D5AB00F1D5AB00F1D5AB00EFD2A700D8A55D00F7EDDE00F7EDDE00F4E9
      D800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      00000000000000000000000000000000000000000000B6B6B60092929200DADA
      DA00B6B6B60092929200DADADA00B6B6B60092929200DADADA00B6B6B6009292
      9200DADADA00B6B6B60092929200DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60092929200B6B6B600B6B6B60092929200B6B6B600B6B6
      B6006E6E6E00B6B6B600B6B6B6006E6E6E00B6B6B600B6B6B6006E6E6E00B6B6
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00A7A7A700A7A7A7007070
      7000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E6008686860086868600E6E6E600929292009292
      9200E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000006E6E6E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFAFAF00A1A1A100A1A1A1009C9C9C009191910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6008686
      860086868600E6E6E6009292920092929200E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60000000000FFB1B100FFB1B100FF6B6B00FFB1B100FFB1
      B100FF6B6B00FFB1B100FFB1B100FF6B6B00FFB1B100FFB1B10000000000DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008080
      8000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BABABA00B8B8B800B4B4B400B1B1B100A9A9A900A3A3
      A300A1A1A10099999900979797008D8D8D000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E600868686006E6E6E00B6B6B6006E6E6E009292
      9200E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000009292920000000000FF6B
      6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1
      B100FF6B6B00FF6B6B0000000000929292000000000000000000000000000000
      0000000000000000000080000000000080000000800080000000800000000000
      8000800000008000000000008000808080008000800080000000800000008000
      8000800000008000000080008000800080008000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00BCBCBC00BEBE
      BE00BABABA00B4B4B400AFAFAF00A5A5A500ACACAC009F9F9F00959595009797
      97008F8F8F007070700000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6006E6E
      6E006E6E6E000E0E0E006E6E6E006E6E6E00E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000006E6E6E0000000000FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B
      6B00FF8E8E00FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00000000009292
      9200000000000000000000000000000000000000000080000000000080008000
      0000800000000000800000008000800000000000800000008000800000008080
      8000800000008000800080008000800000008000800080008000800000008000
      0000800080008000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C8C8CA00B8B8BC00B4B4B800B4B4B600AEAEAE00A8A8
      A800A6A6A600A6A6A6008F8F8F00919191008989890093939300707070000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E6006E6E6E00000000000E0E0E00000000006E6E
      6E00E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      00000000000000000000000000000000000000000000B6B6B60000000000FFB1
      B100FFB1B100FF6B6B00FFB1B100FFB1B100FF6B6B00FFB1B100FFB1B100FF6B
      6B00FFB1B100FFB1B10000000000DADADA000000000000000000000000000000
      0000000000000000FF00000080000000FF000000FF0000008000000080000000
      FF0000008000000080000000FF00C0C0C000FF00FF008000800080008000FF00
      FF008000800080008000FF00FF00FF00FF0080008000FF00FF00000000000000
      0000000000000000000000000000CBCBCB00C9C9C900D5D5E100B6B6D3006A6A
      D00007080400070804008E8E8E009898980096969600A2A2A2009C9C9C008E8E
      8E008A8A8A009494940090909000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6000000
      000000000000007AB9000000000000000000E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000009292920000000000FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B
      6B00FFB1B100FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00000000009292
      92000000000000000000000000000000000000000000000080000000FF000000
      8000000080000000FF000000FF00000080000000FF000000FF0000008000C0C0
      C00080008000FF00FF00FF00FF0080008000FF00FF00FF00FF00800080008000
      8000FF00FF00800080000000000000000000000000000000000000000000CDCD
      CD00D7D7D700BBBBD3006E6ECC002828D000323232002020FA00000000004646
      460074747400888888009A9A9A00989898009494940092929200000000000000
      000000000000000000000000000000000000E6E6E600E6E6E60056565600E6E6
      E6007A7A7A007A7A7A00E6E6E600000000006BC6FF00007AB90000AAFF000000
      0000E6E6E6009E9E9E009E9E9E00E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000006E6E6E0000000000FF6B
      6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00FF8E
      8E00FF6B6B00FF6B6B0000000000929292000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00C0C0C000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      00000000000000000000D4D4D400D8D8D800CFCFD1008787CC005F5FDC003333
      E800323232000000DC0000000000000000004B4B4B0063636300707070007E7E
      7E008E8E8E009C9C9C0000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E60056565600E6E6E6007A7A7A007A7A7A00E6E6E6000000
      00006BC6FF000062960000AAFF0000000000E6E6E6009E9E9E009E9E9E00E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60000000000FFB1B100FFB1B100FF6B6B00FFB1B100FFB1
      B100FF6B6B00FFB1B100FFB1B100FF6B6B00FFB1B100FFB1B10000000000DADA
      DA0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C0C0
      C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000DCDCDC00E6E6E600E0E0E000DCDC
      DC00D6D6DA007979D8007E7ED8007878CE00AEAEC700BABAC300DADADA003E3E
      3E00323232009797970070707000636363000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000006BC6FF000062960000AAFF000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      000000000000000000000000000000000000000000009292920000000000FF6B
      6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1B100FF6B6B00FF6B6B00FFB1
      B100FF6B6B00FF6B6B0000000000929292000000000000000000000000000000
      0000000000000000FF0000FFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00C0C0C000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      000070707000DCDCDC00DADADA00DADADA00D8D8DC00A3A3D000B2B2D800B8B8
      D200BDBDC800C3C3C5000000000032323200004A730000000000979797008181
      8100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BC6FF000062960000AAFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E6E6E0000000000FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B
      6B00FF8E8E00FF6B6B00FF6B6B00FF8E8E00FF6B6B00FF6B6B00000000009292
      920000000000000000000000000000000000000000000000FF000000FF0000FF
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C0C0
      C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
      FF00FF00FF00FF00FF0000000000000000000000000000000000000000007070
      7000D8D8D800D4D4D800CECED200D8D8DC00CCCCCC00CACACA00BDBDBD00A7A7
      A70000000000004A7300007AB900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC6FF000062960000AAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B6000000000000000000000000000000
      0000000000000000FF000000FF000000FF0000FFFF0000FFFF000000FF0000FF
      FF0000FFFF0000FFFF000000FF00FFFFFF00FF00FF00FF00FF00FFFFFF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00000000000000
      00000000000000000000000000000000000000000000D6D6D600D4D4D400D2D2
      D200D6D6D600D0D0D000BCBCBC00AAAAAA00A0A0A0008ED4FF00004A7300007A
      B900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BC6FF000062960000AAFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000092929200000000000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E00000000009292
      92000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00C0C0
      C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000070707000D4D4D400D5D5D500CECECE00B6B6B600B4B4
      B400B2B2B200000000008ED4FF00004A73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC6FF00004A730000AAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E6E6E00B6B6B6009292
      92006E6E6E00B6B6B600929292006E6E6E00B6B6B600929292006E6E6E00B6B6
      B600929292006E6E6E00B6B6B600929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070707000C6C6C600000000000000000000000000000000000000
      0000004A7300007AB90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60092929200B6B6B600B6B6B60092929200B6B6B600B6B6
      B6006E6E6E00B6B6B600B6B6B6006E6E6E000E0E0E000E0E0E000E0E0E000E0E
      0E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008ED4FF00004A7300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BC6FF0000629600007AB9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000092929200DADADA009292
      920092929200DADADA009292920092929200B6B6B6009292920092929200B6B6
      B6000E0E0E00DADADA00DADADA00DADADA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000048B8FF00004A730000AAFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B60092929200DADADA00B6B6B60092929200DADADA00B6B6
      B60092929200DADADA00B6B6B600929292000E0E0E00DADADA000E0E0E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B60092929200B6B6
      B600B6B6B60092929200B6B6B600B6B6B6006E6E6E00B6B6B600B6B6B6006E6E
      6E000E0E0E00DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C00080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C0008080800080808000808080008080
      8000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C0008080
      8000C0C0C0008080800080808000808080008080800000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00080808000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800080808000808080000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000008484000084840000848400008484000084
      8400008484000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF0080808000C0C0C000C0C0C0008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0008080
      8000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000808080008080
      8000C0C0C0008080800080808000808080008080800080808000808080008080
      8000808080000000000080808000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C00080808000C0C0C000FFFFFF00FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C0008080
      8000808080008080800080808000808080008080800000000000C0C0C0000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF008080
      800080808000C0C0C00000FF0000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000080808000C0C0C000C0C0C000808080008080
      8000808080000000000080808000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00C0C0C000C0C0C00080808000C0C0C0008080
      800080808000C0C0C000C0C0C000C0C0C0000000000000000000FFFFFF000000
      00008080800080808000C0C0C000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C00080808000808080008080800000000000FFFF
      FF00FFFFFF00FF000000FF000000C0C0C0000000000080808000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080808000C0C0
      C000C0C0C00080808000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C00080808000FFFF
      FF00FFFFFF00FFFFFF00FF000000FFFFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D000000
      0000000000004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004D4D4D00000000004D4D4D004D4D4D004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D004D4D4D004D4D4D004D4D4D00A6A6
      A6004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00A6A6
      A600D3D3D300D3D3D300A6A6A6004D4D4D00A6A6A60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4D4D00A6A6A600D3D3D300D3D3D300FFFF4D00A6A6A600A6A6
      A6004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00D3D3D300D3D3
      D300D3D3D300D3D3D300A6A6A600D3D3D3004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4D4D00D3D3D300FFFF4D00D3D3D300D3D3D300A6A6A600D3D3
      D3004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D00A6A6A600FFFF
      4D00FFFF4D00D3D3D300A6A6A600A6A6A6004E4E4E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004D4D4D00A6A6A600D3D3D300D3D3D300A6A6A6004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D004D4D4D004F4F4F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004D4D4D00D3D3D3004E4E4E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000004D4D
      4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000BEBEBE00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8A7
      8F00685B4900B3957E00E0BB9E00000000000000000000000000000000000000
      00000000000000000000E0BA9E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030207000B6A5
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080715F0010101000534A4300D5B39B000000
      000000000000000000000000000000000000000000008D786700C7A891000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6A7BD00202070008D80A60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006060600000000000000000000000000C0C0BF00C0C0BF00C0C0BF00C0C0
      BF00C0C0BF000606060006060600060606000606060006060600000000000000
      000000000000000000000000000000000000000000000000000000000000B299
      86002018100030282000927C6A00E6C4AB000000000000000000000000000000
      0000DCBBA300393C3200D8B8A100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B8D
      B3004048C0003038B00071679100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0BF00C0C0BF0006060600C1C0BE00C0C0BF000000
      0000C0C0BF0000000000000000000000000006060600C0C0BF00C0C0BF000000
      0000C0C0BF000000000006060600000000000000000000000000000000000000
      0000000000000000000000000000EBCBB40070635A002C23290048444100D1B6
      A2000000000000000000E8C9B200E8C9B200544E49007D6F6400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000485AEB003048FF004048D0002020
      7000B39CA4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0BF00C1C0
      BE0006060600C0C0BF0000000000000000000000000000000000000000000000
      0000060606000000000000000000C0C0BF00C0C0BF0000000000060606000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFC4B10047423E0020202000615A5400EBCEB900EACEB800EACEB8007E71
      67003B3A3800DFC4AF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009590DE006976ED003040FF004048D00020207000C6AA9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000606060006060600060606000606060006060600060606000606
      060000000000C0C0BF00C0C0BF00000000000000000006060600060606000606
      0600060606000606060000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2CAB600554A3F003028
      20006F615F00D2BBA600645B540030303000A28F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002C49ED00C0C8F0003040
      FF004048D00040384000C5A69300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2CBB700554A3F00303030003030300040383000483E
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002040F000C0C8F0003040FF004048D00040384000B89A
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606000000000000000000000000000000
      0000060606000000000006060600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8B5
      A400303030004038400048454200EFD5C1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBB8CC002040
      F000C0C8F0003040FF00A098900040384000B696830000000000000000000000
      0000000000000000000000000000000000000000000006060600000000000000
      0000000000000000000000000000060606000000000000000000000000000000
      0000060606000000000000000000060606000000000000000000060606000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8C4B300625E5A00403830003C3A39003C3A39006F61
      5500EFD7C3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000C9B4C7002040F000C0C8F000C0B0B000A098
      900040384000B5937F0000000000000000000000000000000000000000000000
      0000000000000000000006060600000000000000000000000000060606000000
      0000000000000000000000000000000000000000000006060600060606000000
      0000060606000606060006060600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A99B9000404040004040
      400090877F00D8C3B40091827E0040404000887E7500EFD8C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
      000000000000A0989000F0F0F000C0B0B000A098900040384000B38F7A000000
      0000000000000000000000000000000000000000000000000000000000000606
      060000000000060606000000000000000000C0C0BF0000000000000000000000
      0000000000000606060000000000000000000000000000000000060606000000
      0000000000000000000000000000000000000000000000000000E4D0BE00CCBB
      AC007A736C004040400040404000857E7700F1DBC80000000000F0DAC6008578
      6C004040400088837600EFD9C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D004D4D4D004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000A0989000F0F0
      F000C0B0B000A098900040384000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060000000000000000000000
      00000000000000000000C0C0BF00060606000606060006060600060606000606
      0600060606000000000006060600000000000000000000000000000000000000
      00000000000000000000B5A79B007A736D004038300040404000A69691000000
      0000000000000000000000000000F0DAC700CDBCAE005A515700867D76000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004D4D4D00FFFFFF004D4D4D000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5AB9C004040
      40004B494800C6B5AB0000000000000000000000000000000000000000000000
      000000000000E7D4C400A9A19300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC9BD007A6F7100D1BFB50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C2B9C20000000000C0BFC00000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BDBDBD00BCBCBC00BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000030207000B6A5BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030207000B6A5BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003020
      7000B6A5BB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6A7BD00202070008D80
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A7BD00202070008D80A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A7BD00202070008D80A600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009B8DB3004048C0003038B00071679100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8DB3004048C0003038B0007167910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B8DB3004048C0003038B000716791000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030207000B6A5
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000485A
      EB003048FF004048D00020207000B39CA4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000485AEB003048
      FF004048D00020207000B39CA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000485AEB003048FF004048
      D00020207000B39CA40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6A7BD00202070008D80A600E1C8BE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009590DE006976ED003040FF004048D0002020
      7000C6AA99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009590DE006976ED003040FF004048D00020207000C6AA
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009590DE006976ED003040FF004048D00020207000C6AA99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B8D
      B3004048C0003038B00071679100D0B7B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C49ED00C0C8F0003040FF004048D00040384000C5A69300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C49
      ED00C0C8F0003040FF004048D00040384000C5A6930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002C49ED00C0C8
      F0003040FF004048D00040384000C5A693000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2BEBD00485AEB003048FF004048D0002020
      7000B39CA4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002040F000C0C8F0003040
      FF004048D00040384000B89A8800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002040F000C0C8F0003040FF004048
      D00040384000B89A880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002040F000C0C8F0003040FF004048D0004038
      4000B89A88000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009590DE006976ED003040FF004048D00020207000C6AA9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CBB8CC002040F000C0C8F0003040FF00A098900040384000B696
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBB8CC002040F000C0C8F0003040FF00A098900040384000B69683000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBB8
      CC002040F000C0C8F0003040FF00A098900040384000B6968300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2C2D3002C49ED00C0C8F0003040
      FF004048D00040384000C5A69300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF00000000
      0000000000000000000000FF000000FF00000000000000000000C9B4C7002040
      F000C0C8F000C0B0B000A098900040384000B5937F0000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      000000000000FF00FF00FF00FF000000000000000000C9B4C7002040F000C0C8
      F000C0B0B000A098900040384000B5937F000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF000000000000000000000000
      0000FFFF0000FFFF00000000000000000000C9B4C7002040F000C0C8F000C0B0
      B000A098900040384000B5937F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6ADD5002040F000C0C8F0003040FF004048D00040384000B89A
      8800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000000000000000000000000000FF00000000
      000000000000000000000000000000000000A0989000F0F0F000C0B0B000A098
      900040384000B38F7A0000000000000000000000000000000000000000000000
      000000000000FF00FF00000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000A0989000F0F0F000C0B0B000A09890004038
      4000B38F7A000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FFFF000000000000000000000000
      00000000000000000000A0989000F0F0F000C0B0B000A098900040384000B38F
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBB8CC002040
      F000C0C8F0003040FF00A098900040384000B696830000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000A0989000F0F0F000C0B0B000A098900040384000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
      0000A0989000F0F0F000C0B0B000A09890004038400000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000FFFF0000000000000000000000000000000000000000000000000000A098
      9000F0F0F000C0B0B000A0989000403840000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C9B4C7002040F000C0C8F000C0B0B000A098
      900040384000B5937F0000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6BEAC00A0989000F0F0F000C0B0B000A098900040384000B38F7A000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4BBA800A0989000F0F0
      F000C0B0B000A098900040384000000000000000000000000000000000000000
      0000000000000000000000FF000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF0000C2B9
      C20000000000C0BFC00000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00C2B9C2000000
      0000C0BFC000FF00FF00FF00FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000C2B9C20000000000C0BF
      C000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030207000B6A5BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030207000B6A5BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030207000B6A5BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003020
      7000B6A5BB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6A7BD002020
      70008D80A600E1C8BE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A7BD00202070008D80A600E1C8
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6A7BD00202070008D80A600E1C8
      BE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6A7BD00202070008D80A600E1C8BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009B8DB3004048C0003038B00071679100D0B7
      B400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8DB3004048C0003038B00071679100D0B7B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B8DB3004048C0003038B00071679100D0B7B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B8DB3004048C0003038B00071679100D0B7B40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2BE
      BD00485AEB003048FF004048D00020207000B39CA40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2BEBD00485AEB003048
      FF004048D00020207000B39CA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2BEBD00485AEB003048
      FF004048D00020207000B39CA400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2BEBD00485AEB003048FF004048
      D00020207000B39CA40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009590DE006976ED003040FF004048
      D00020207000C6AA990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009590DE006976ED003040FF004048D00020207000C6AA
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009590DE006976ED003040FF004048D00020207000C6AA
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009590DE006976ED003040FF004048D00020207000C6AA99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2C2D3002C49ED00C0C8F0003040FF004048D00040384000C5A693000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2C2D3002C49
      ED00C0C8F0003040FF004048D00040384000C5A6930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2C2D3002C49
      ED00C0C8F0003040FF004048D00040384000C5A6930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2C2D3002C49ED00C0C8
      F0003040FF004048D00040384000C5A693000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6ADD5002040F000C0C8
      F0003040FF004048D00040384000B89A88000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6ADD5002040F000C0C8F0003040FF004048
      D00040384000B89A880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6ADD5002040F000C0C8F0003040FF004048
      D00040384000B89A880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6ADD5002040F000C0C8F0003040FF004048D0004038
      4000B89A88000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBB8CC002040F000C0C8F0003040FF00A09890004038
      4000B69683000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBB8CC002040F000C0C8F0003040FF00A098900040384000B69683000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBB8CC002040F000C0C8F0003040FF00A098900040384000B69683000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBB8
      CC002040F000C0C8F0003040FF00A098900040384000B6968300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9B4
      C7002040F000C0C8F000C0B0B000A098900040384000B5937F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9B4C7002040F000C0C8
      F000C0B0B000A098900040384000B5937F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9B4C7002040F000C0C8
      F000C0B0B000A098900040384000B5937F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9B4C7002040F000C0C8F000C0B0
      B000A098900040384000B5937F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6BEAC00A0989000F0F0F000C0B0
      B000A098900040384000B38F7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6BEAC00A0989000F0F0F000C0B0B000A09890004038
      4000B38F7A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6BEAC00A0989000F0F0F000C0B0B000A09890004038
      4000B38F7A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6BEAC00A0989000F0F0F000C0B0B000A098900040384000B38F
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4BBA800A0989000F0F0F000C0B0B000A0989000403840000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4BB
      A800A0989000F0F0F000C0B0B000A09890004038400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4BB
      A800A0989000F0F0F000C0B0B000A09890004038400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4BBA800A098
      9000F0F0F000C0B0B000A0989000403840000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030207000B6A5BB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030207000B6A5BB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000030207000B6A5BB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6A7BD00202070008D80A600E1C8BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6A7BD00202070008D80A600E1C8BE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6A7
      BD00202070008D80A600E1C8BE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8DB3004048C0003038
      B00071679100D0B7B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8DB3004048C0003038
      B00071679100D0B7B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B8DB3004048C0003038B0007167
      9100D0B7B4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2BEBD00485AEB003048FF004048D00020207000B39CA4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2BEBD00485AEB003048FF004048D00020207000B39CA4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2BEBD00485AEB003048FF004048D00020207000B39CA400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009590DE006976
      ED003040FF004048D00020207000C6AA99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009590DE006976
      ED003040FF004048D00020207000C6AA99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009590DE006976ED003040
      FF004048D00020207000C6AA9900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2C2D3002C49ED00C0C8F0003040FF004048D0004038
      4000C5A693000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2C2D3002C49ED00C0C8F0003040FF004048D0004038
      4000C5A693000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2C2D3002C49ED00C0C8F0003040FF004048D00040384000C5A6
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6AD
      D5002040F000C0C8F0003040FF004048D00040384000B89A8800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6AD
      D5002040F000C0C8F0003040FF004048D00040384000B89A8800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6ADD5002040
      F000C0C8F0003040FF004048D00040384000B89A880000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBB8CC002040F000C0C8F0003040
      FF00A098900040384000B6968300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBB8CC002040F000C0C8F0003040
      FF00A098900040384000B6968300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBB8CC002040F000C0C8F0003040FF00A098
      900040384000B696830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9B4C7002040F000C0C8F000C0B0B000A098900040384000B593
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9B4C7002040F000C0C8F000C0B0B000A098900040384000B593
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9B4C7002040F000C0C8F000C0B0B000A098900040384000B5937F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6BEAC00A098
      9000F0F0F000C0B0B000A098900040384000B38F7A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6BEAC00A098
      9000F0F0F000C0B0B000A098900040384000B38F7A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6BEAC00A0989000F0F0
      F000C0B0B000A098900040384000B38F7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4BBA800A0989000F0F0F000C0B0B000A098
      9000403840000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4BBA800A0989000F0F0F000C0B0B000A098
      9000403840000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4BBA800A0989000F0F0F000C0B0B000A09890004038
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000055AD
      FF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055AD
      FF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055ADFF0055AD
      FF0055ADFF0055ADFF0055ADFF0055ADFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000059AFFF0059AFFF0059AFFF0059AFFF0059AF
      FF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AF
      FF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AFFF0059AF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000005CB2
      FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2
      FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2FF005CB2
      FF005CB2FF005CB2FF005CB2FF005CB2FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8B2A5006A60B8004040C0004040C000C2A1A90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000005FB4FF005FB4FF005FB4FF005FB4FF005FB4
      FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4
      FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4FF005FB4
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD94B1006058BB007068D0008078E0006060
      D0004040C000C3A5AE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000063B6
      FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6FF0063B6
      FF0063B6FF0063B6FF0063B6FF0063B6FF000000000037668F005CAAEF002443
      5F000000000063B6FF0063B6FF0063B6FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A38EB7007070
      D0009090E000A098E000A098E0008078E0006060D0004040C000C5A8B4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000066B9FF0066B9FF0039678F0012222F0066B9
      FF00000000000000000066B9FF00000000000000000066B9FF00000000000000
      000066B9FF0039678F002C506F0059A1DF0066B9FF0066B9FF0066B9FF0066B9
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007070D0009090E000B0A8F000B0B8F000C0C8F000B0A8
      F0008078E0006060D0004040C000C7ACB8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000069BB
      FF0069BBFF000C161F0069BBFF0069BBFF0069BBFF0069BBFF0069BBFF0069BB
      FF0069BBFF0069BBFF0069BBFF0069BBFF0069BBFF0069BBFF0013222F0069BB
      FF0069BBFF0069BBFF0069BBFF0069BBFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030207000B39CAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A098E000B0B8
      F000D0D8F000D0D0F000D0C8F000C0C8F000B0A8F0008078E0006060D0004040
      C000C9B0BD000000000000000000000000000000000000000000000000000000
      00000000000000000000800000006DBEFF006DBEFF006DBEFF006DBEFF006DBE
      FF006DBEFF006DBEFF006DBEFF006DBEFF006DBEFF006DBEFF006DBEFF006DBE
      FF006DBEFF006DBEFF00000000006DBEFF006DBEFF006DBEFF006DBEFF006DBE
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4A0B3002020
      70008C7DA100DFC4B90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6D0CF00B0B8F000E0E0F000D0D8F000D0D0F000D0C8
      F000C0C8F000B0A8F0008078E0006060D0004040C000CAB4C200000000000000
      00000000000000000000000000000000000000000000000000008000000070C0
      FF0070C0FF000000000070C0FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0
      FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0FF0070C0FF000000000070C0
      FF0070C0FF0070C0FF0070C0FF0070C0FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009B8CB0004048C0003038B00071679100D2BC
      B900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8D4
      D300B0B8F000E0E0F000D0D8F000D0D0F000D0C8F000C0C8F000B0A8F0008078
      E0006060D0004040C000CCB8C700000000000000000000000000000000000000
      000000000000000000008000000073C2FF0073C2FF000000000073C2FF0073C2
      FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2FF0073C2
      FF0073C2FF0073C2FF000000000073C2FF0073C2FF0073C2FF0073C2FF0073C2
      FF00800000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2BC
      B900485AEB003048FF004048D00020207000B6A4AE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8D4D400B0B8F000E0E0F000D0D8
      F000D0D0F000D0C8F000C0C8F000B0A8F0008078E0006060D0004040C000CCB8
      C8000000000000000000000000000000000000000000000000008000000074C3
      FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3
      FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF0074C3FF000000000074C3
      FF0074C3FF0074C3FF0074C3FF0074C3FF008000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009590DE006976ED003040FF004048
      D00020207000CCB7A80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8D5D500B0B8F000E0E0F000D0D8F000D0D0F000D0C8F000C0C8
      F000B0A8F0008078E0006060D0004040C000CCB9C80000000000000000000000
      000000000000000000008000000076C5FF0076C5FF000000000076C5FF0076C5
      FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5FF0076C5
      FF0076C5FF005893BF002B495F0067ACDF0076C5FF0076C5FF0076C5FF0076C5
      FF00800000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2C2D4002C49EE00C0C8F0003040FF004048D00040384000CCB8AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8D6D600B0B8
      F000E0E0F000D0D8F000D0D0F000D0C8F000C0C8F000B0A8F0008078E0006060
      D0004040C00000000000000000000000000000000000000000008000000079C7
      FF0079C7FF00070B0F0079C7FF0079C7FF0079C7FF0079C7FF0079C7FF0079C7
      FF0079C7FF0079C7FF0079C7FF0079C7FF00000000003C637F0079C7FF003456
      6F000000000079C7FF0079C7FF0079C7FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B0DA002040F000C0C8
      F0003040FF004048D00040384000C1AEA2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8D6D800B0B8F000E0E0F000D0D8F000D0D0
      F000D0C8F000C0C0F000A098E0007078E000625EC20000000000000000000000
      00000000000000000000800000007CC9FF007CC9FF007CC9FF007CC9FF007CC9
      FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9
      FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9FF007CC9
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBBBD0002040F000C0C8F0003040FF00A09890004038
      4000C1AEA3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8D7D800B0B8F000E0E0F000D0D8F000D0D0F000C0B8F000A098E000787E
      DF00BBACCA000000000000000000000000000000000000000000800000007ECB
      FF007ECBFF001F323F007ECBFF007ECBFF007ECBFF007ECBFF007ECBFF007ECB
      FF007ECBFF007ECBFF007ECBFF007ECBFF007ECBFF007ECBFF0017252F007ECB
      FF007ECBFF007ECBFF007ECBFF007ECBFF008000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBBB
      D2002040F000C0C8F000C0B0B000A098900040384000C1AFA400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9D8DA00B0B8F000E0E0
      F000C0B8F000B0A8F0008080E0009B9ADB00E2D1D50000000000000000000000
      000000000000000000008000000081CDFF0081CDFF00507F9F001F323F0081CD
      FF00000000000000000081CDFF00000000000000000081CDFF00000000000000
      000081CDFF00273F4F00588CAF0081CDFF0081CDFF0081CDFF0081CDFF0081CD
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9C9BB00A0989000F0F0F000C0B0
      B000A098900040384000C1B0A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E9D9DB00B0B8F000B0B0F000B9AFEC00D9CBD7000000
      00000000000000000000000000000000000000000000000000008000000084CF
      FF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CF
      FF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CFFF0084CF
      FF0084CFFF0084CFFF0084CFFF0084CFFF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9C9BC00A0989000F0F0F000C0B0B000A0989000403840000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000087D1FF0087D1FF0087D1FF0087D1FF0087D1
      FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1
      FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1FF0087D1
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008000000089D3
      FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3
      FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3FF0089D3
      FF0089D3FF0089D3FF0089D3FF0089D3FF008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000008CD5FF008CD5FF008CD5FF008CD5FF008CD5
      FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5
      FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5FF008CD5
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000005C000000E60000000100010000000000C80A00000000000000000000
      000000000000000000000000FFFFFF00FFFFFE000000000000000000FFFFFE00
      0000000000000000CFFFFE000000000000000000C7FFFE000000000000000000
      C0FFFE000000000000000000C07FFE000000000000000000C00FFE0000000000
      00000000C003FE000000000000000000C001FE000000000000000000C0003E00
      0000000000000000C0001E000000000000000000C00006000000000000000000
      C0001E000000000000000000C0003E000000000000000000C001FE0000000000
      00000000C003FE000000000000000000C00FFE000000000000000000C07FFE00
      0000000000000000C0FFFE000000000000000000C7FFFE000000000000000000
      CFFFFE000000000000000000FFFFFE000000000000000000FFFFFE0000000000
      00000000FFFFFFF803FFFFF00FFFFFF0800003C0003FC0000FFFFFF080000380
      003FC0000FFFFFF080000300001E00000FFFFFB080000200000E00000FFFFFF0
      80000200000600000FFFFFB080000200000600000FFFE3F08000020000060000
      0F8023B080000200000600000F8000F080000200000600000F88003080000200
      000E00000F8C007080000200001E00000F8A00B080000300007E00000F811FF0
      80000380003E00000F819FB0800003E0001E00000F8DFFF0800003F8000E0000
      0F8EFFB0800003FFF80600000F807FF0800003FFFC0200000F807FB0C00003FF
      FE0200000FFFFFF0FF39FFFFFF0200000FFFFFF0FF11FFFFFF8200000F800070
      FF83FFFFFFC200000FFFFFF0FFC7FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFFFFF0FFFFFFFFFFFE00001E000030FFFFFFFF3FFE00001E000030FFFFFFFF
      0FFE00001E000030FFFFFFFC01FE00001E000030FFFFFFF800FE00001E000030
      F0001FF0001E00001E000030C00007E0000600001E000030800003E000060000
      1E00003080000380000600001E00003080000300000600001E00003080000300
      000E00001E00003080000200003E00001E00003080000200003E00001E000030
      80000300007FFE0FFE000030800003C0003FFE0DFE000030C00007E0003FFE0D
      FE000030FFFFFFFC000FFE0DFE000030FFFFFFFF040FFE0DFE000030FFFFFFFF
      FF0FFE01FE0000F0FFFFFFFFFF1FFE0FFE0000F0FFFFFFFFFFFFFE0FFE0001F0
      FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFCFFF0FFFFFFFFFFFFFFFFFFF07FF0FFFFFFFFFFFF00001FE01FF0FFFFFFFF
      FFFF00001F0003F0F001FFF8003FFFFFFC0001F0F000FFF0003FFFFFFC000070
      F0007FF0003FFFFFFC000070F0003FF0003F000018000070F0001FF0003F0000
      18000010F0000FF0003FFFFFF8000010F001FFF0003FFFFFF8000000F001FFF0
      003FFFFFF8000010F001FFF0003F000018000030F8FF1FF0003F00001F0000F0
      FFFF9FF0003FFFFFFF8001F0FFF75FF0003FFFFFFFE003F0FFF8FFF0003FFFFF
      FFFC01F0FFFFFFF0003F00001FFE00F0FFFFFFFFFFFF00001FFF0070FFFFFFFF
      FFFFFFFFFFFF80F0FFFFFFFFFFFFFFFFFFFFC3F0FFFFFFFFFFFFFFFFFFFFFFF0
      FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFF
      F8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000E0019FFF
      FFFFFFFFF8000000E0011E000007FFFFF8000000E0003EFFFFF7FFFFF8000000
      E0007EFFFEF4000008000000E0007EFFFF75FFFFE8000000E0007EE6D775BE3D
      E8000000E0007EDAD6B5BDDDE8000000E0007EDAD6B5BDFAE8000000E000FEDA
      D6B5BC1AE8000000E001FEE635B5BDDAE8000000E001FEFFF7F595D768000000
      E001FEFFF7F5A63768000000E003FEFFFFF5FFFFE8000000E007FE0000040000
      08000000E00FFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFF
      FFFFFFFFF8000000FFFFFFFFFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFF0
      E0001F3FFFFFFFFFFFFFFFF0E0001FFFFFFFFFFFFFFFFFF0E0001FFF7FFFFFFF
      FFFFFFF0E0001FFFFFFFFFFFFFFFFFF0FFFFFE000007E1FDFFFFFFF0FCFFFEFB
      FFF7E1F9FFC007F0FC7FFEF70037E0F1FFC007F0FE1FFEC17157E0C3FFC007F0
      FF07FEC3F657F003FFC007F0FF03FE809837F807FFC007F0FF81FEFFFFF7FC0F
      FFC007F0FFC0FEFFEF57FE0FFFC007F0FFC07EBEF6D7FC07FFC007F0CE603EDD
      F917F803FFC007F0EEF81EEB7BD7C041FFC007F0EEFC1EF7C057C1E1FFC00FF0
      E0FFFEFFFFF7C3F9FFC01FF0EEFFFE000007C7FFFFC03FF0EEFFFFFFFFFFFFFF
      FFFFFFF0C47FFFFFFFFFFFFFFFFFFFF0FFFFFFFFE07FFFFFFFFFFFF0FFFFFFFF
      FFF7FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFC0003F80007F0000F0
      FFFFFFC0003F80007F0000F0FFFFFFC0003F80007F0000F0E0001FC0003F8000
      7F0000F0E0001FFFFFFFFFFFFFFFFFF0E0001FF9FFFFF3FFFFE7FFF0E0001FF8
      FFFFF1FFFFE3FFF0FFFFFFFC3FFFF87FFFF0FFF0FCFFFFFE0FFFFC1FFFF83FF0
      FC3FFFFE07FFFC0FFFF81FF0FE0FFFFF03FFFE07FFFC0FF0FE07FFFF81FFFF03
      FFFE07F0FF03FFFF80FFFF01FFFE03F0FF01FF9CC07F3980FE7301F0FF80FFDD
      F03FBBE07F77C0F0FFC07FDDF83FBBF07F77E0F0FFE03FC1FFFF83FFFF07FFF0
      FFF01FDDFFFFBBFFFF77FFF0FFF81FDDFFFFBBFFFF77FFF0FFFFFF88FFFF11FF
      FE23FFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFF
      FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0
      FFFFFFFFFFFFFFFFFFFFFFF0E0001F80007F80007F0000F0E0001F80007F8000
      7F0000F0E0001F80007F80007F0000F0E0001F80007F80007F0000F0FFFFFFFF
      FFFFFFFFFFFFFFF0FCFFFFF3FFFFF3FFFFE7FFF0FC3FFFF0FFFFF0FFFFE1FFF0
      FE0FFFF83FFFF83FFFF07FF0FE07FFF81FFFF81FFFF03FF0FF03FFFC0FFFFC0F
      FFF81FF0FF01FFFC07FFFC07FFF80FF0FF80FFFE03FFFE03FFFC07F0FFC07FFF
      01FFFF01FFFE03F0FFE03FFF80FFFF80FFFF01F0FFF01FFFC07FFFC07FFF80F0
      FFF81FFFE07FFFE07FFFC0F0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFF
      FFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0
      FC01FF80007F80007F0000F0FC01FF80007F80007F0000F0FC01FF80007F8000
      7F0000F0FE01FF80007F80007F0000F0FE01FFFFFFFFFFFFFFFFFFF0FF01FFF3
      FFFFF3FFFFE7FFF0FE00FFF0FFFFF0FFFFE1FFF0FE00FFF83FFFF83FFFF07FF0
      FE00FFF81FFFF81FFFF03FF0FE01FFFC0FFFFC0FFFF81FF0FE03FFFC07FFFC07
      FFF80FF0FF03FFFE03FFFE03FFFC07F0FFC3FFFF01FFFF01FFFE03F0FFE3FFFF
      80FFFF80FFFF01F0FFE3FFFFC07FFFC07FFF80F0FFF7FFFFE07FFFE07FFFC0F0
      FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFF
      FFFFFFF0FFFFFFFFFFFC000007FFFFF0FFFFFFFFFFFC000007FFFFF0FFFFFFFF
      FFFC000007FFFFF0FFFFFFFFFFFC000007FFFFF0E0001FFFFFFC000007FDFFF0
      E0001FF07FFC000007F8FFF0E0001FE03FFC000007F8FFF0E0001FC01FFC0000
      07F87FF0FFFFFFC00FFC000007F81FF0FCFFFFC007FC000007F80FF0FC3FFFC0
      03FC000007F00FF0FE0FFFE001FC000007E00FF0FE07FFF000FC000007E00FF0
      FF03FFF8007C000007E00FF0FF01FFFC007C000007F01FF0FF80FFFE007C0000
      07F00FF0FFC07FFF007C000007F00FF0FFE03FFF807C000007F007F0FFF01FFF
      C1FC000007F007F0FFF81FFFFFFC000007F007F0FFFFFFFFFFFC000007FFFFF0
      FFFFFFFFFFFC000007FFFFF0FFFFFFFFFFFC000007FFFFF00000000000000000
      0000000000000000000000000000}
  end
  object PopupMenu2: TPopupMenu
    Left = 115
    Top = 516
    object N2: TMenuItem
      Caption = #49325#51228
      OnClick = N2Click
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 773
    Top = 148
  end
  object ColorDialog1: TColorDialog
    Left = 736
    Top = 148
  end
end
