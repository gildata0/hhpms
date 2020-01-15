object promiseJohoi_f: TpromiseJohoi_f
  Left = 238
  Top = 165
  BorderIcons = [biSystemMenu]
  Caption = #50696#50557#54872#51088#51312#54924
  ClientHeight = 488
  ClientWidth = 834
  Color = 15328982
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #46027#50880
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object grdPromise: TAdvStringGrid
    Left = 0
    Top = 166
    Width = 834
    Height = 274
    Cursor = crDefault
    Align = alClient
    ColCount = 13
    DefaultRowHeight = 21
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect]
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssBoth
    ShowHint = True
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = grdPromiseGetCellColor
    OnGridHint = grdPromiseGridHint
    OnClickCell = grdPromiseClickCell
    OnDblClickCell = grdPromiseDblClickCell
    OfficeHint.Title = #45824#44592#51221#48372
    OfficeHint.Notes.Strings = (
      #45824#44592#49884#44036' '#53364#47533#54616#47732' '#45824#44592#49884#44036' '#50504#48372#51076'.'
      #51217#49688#49884#44036' '#53364#47533#54616#47732' '#51217#49688#49884#44036' '#50504#48372#51076'.'
      #49457#47749' '#53364#47533#54616#47732' '#45824#44592#49884#44036', '#51217#49688#49884#44036' '#48372#51076'.'
      #54872#51088#47484' '#49440#53469#54620' '#54980', '#47560#50864#49828' '#50724#47480#51901' '#48260#53948' '#53364#47533#54616#47732' '
      #50696#50557#51004#47196' '#50734#44592#44144#45208', '#45824#44592' '#51221#48372#47484' '#48148#44992#49688' '#51080#51020'.')
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #49457#47749
      #52320#53944
      #50696#50557#51068
      #49884#44036
      #51652#47308#49892
      #45812#45817#51032
      #51204#54868
      #45236#50857
      '')
    ControlLook.FixedGradientHoverFrom = 13619409
    ControlLook.FixedGradientHoverTo = 12502728
    ControlLook.FixedGradientHoverMirrorFrom = 12502728
    ControlLook.FixedGradientHoverMirrorTo = 11254975
    ControlLook.FixedGradientHoverBorder = 12033927
    ControlLook.FixedGradientDownFrom = 8816520
    ControlLook.FixedGradientDownTo = 7568510
    ControlLook.FixedGradientDownMirrorFrom = 7568510
    ControlLook.FixedGradientDownMirrorTo = 6452086
    ControlLook.FixedGradientDownBorder = 14991773
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
      'Clear')
    FixedColWidth = 20
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
    MouseActions.WheelAction = waScroll
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
    ScrollSynch = True
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
    SortSettings.FixedCols = True
    Version = '8.4.4.1'
    ColWidths = (
      20
      134
      80
      64
      45
      115
      75
      140
      64
      64
      88
      64
      64)
    RowHeights = (
      22
      21)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 166
    Align = alTop
    Caption = 'Panel1'
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object spSkinLabel9: TLabel
      Left = 445
      Top = 102
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #54588#48372#54744#51088
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel8: TLabel
      Left = 445
      Top = 75
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #51204#54868#48264#54840
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel7: TLabel
      Left = 445
      Top = 48
      Width = 39
      Height = 17
      Alignment = taCenter
      Caption = #51652#47308#49892
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel6: TLabel
      Left = 225
      Top = 75
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #50696#50557#49884#44036
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel5: TLabel
      Left = 225
      Top = 48
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #52320#53944#48264#54840
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel4: TLabel
      Left = 15
      Top = 102
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #50696#50557#45236#50857
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel3: TLabel
      Left = 15
      Top = 75
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #50696#50557#51068#51088
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel2: TLabel
      Left = 15
      Top = 48
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #54872#51088#49457#47749
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel10: TLabel
      Left = 15
      Top = 129
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #47700#47784#45236#50857
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object spSkinLabel1: TLabel
      Left = 15
      Top = 20
      Width = 52
      Height = 17
      Alignment = taCenter
      Caption = #50696#50557#51068#51088
      Color = 15848116
      ParentColor = False
      Transparent = False
      Layout = tlCenter
    end
    object imgPic: TImage
      Left = 672
      Top = 48
      Width = 137
      Height = 97
    end
    object Label3: TLabel
      Left = 225
      Top = 25
      Width = 9
      Height = 17
      Caption = '~'
    end
    object grdFind: TAdvStringGrid
      Left = 684
      Top = 97
      Width = 832
      Height = 164
      Cursor = crDefault
      ColCount = 13
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
      ScrollBars = ssBoth
      TabOrder = 10
      Visible = False
      GridLineColor = 15527152
      GridFixedLineColor = 13947601
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 16575452
      ActiveCellColorTo = 16571329
      ColumnHeaders.Strings = (
        ''
        #52264#53944
        #49457#47749
        #49457#48324
        '   '#51452#48124#48264#54840
        #45208#51060
        #51452#49548
        #51665#51204#54868
        #55092#45824#54256
        #54588#48372#54744#51088
        #52572#51333#45236#50896#51068
        #48372#54840#51088'F'
        #48372#54840#51088'M')
      ColumnSize.Save = True
      ColumnSize.Key = '..\db.ini'
      ColumnSize.Section = 'findgogek'
      ColumnSize.Location = clIniFile
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
        'Clear')
      FixedColWidth = 25
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
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Show = True
      SortSettings.Direction = sdDescending
      SortSettings.HeaderColor = 16579058
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '8.4.4.1'
      ColWidths = (
        25
        66
        54
        33
        103
        34
        193
        83
        107
        58
        72
        64
        64)
      RowHeights = (
        22
        21
        21
        21
        21
        21
        21
        21
        21
        21)
    end
    object btnSch: TButton
      Left = 736
      Top = 10
      Width = 73
      Height = 32
      Caption = #51312#54924
      TabOrder = 0
      OnClick = btnSchClick
    end
    object EdtTime: TEdit
      Left = 313
      Top = 75
      Width = 125
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 1
      Text = 'EdtTime'
    end
    object EdtTel: TEdit
      Left = 533
      Top = 75
      Width = 121
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 2
      Text = 'EdtTel'
    end
    object EdtTeam: TEdit
      Left = 533
      Top = 48
      Width = 121
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 3
      Text = 'EdtTeam'
    end
    object EdtRemark: TEdit
      Left = 103
      Top = 102
      Width = 335
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 4
      Text = 'EdtRemark'
    end
    object EdtPibo: TEdit
      Left = 533
      Top = 102
      Width = 121
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 5
      Text = 'EdtPibo'
    end
    object EdtName: TEdit
      Left = 103
      Top = 48
      Width = 112
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 6
      Text = 'EdtName'
    end
    object edtmemo: TEdit
      Left = 103
      Top = 129
      Width = 552
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ParentFont = False
      TabOrder = 7
      Text = 'edtmemo'
    end
    object EdtDay: TEdit
      Left = 103
      Top = 75
      Width = 112
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 8
      Text = 'EdtDay'
    end
    object EdtChart: TEdit
      Left = 313
      Top = 48
      Width = 125
      Height = 21
      BorderStyle = bsNone
      Color = 15847857
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 9
      Text = 'EdtChart'
    end
    object SelCombo: TComboBox
      Left = 332
      Top = 17
      Width = 110
      Height = 25
      Color = 15383692
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544')'
      ParentCtl3D = False
      TabOrder = 12
      Text = 'SelCombo'
      OnChange = SelComboChange
      Items.Strings = (
        #49457#47749
        #52320#53944#48264#54840
        #51204#54868#48264#54840
        'H/P'
        #50696#50557#45236#50857
        #51652#47308#49892
        #50696#50557#47700#47784)
    end
    object wDateEdit1: TDateTimePicker
      Left = 103
      Top = 17
      Width = 112
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      Date = 37495.000000000000000000
      Time = 0.724141666702053000
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 13
    end
    object wDateEdit2: TDateTimePicker
      Left = 240
      Top = 17
      Width = 86
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      Date = 37495.000000000000000000
      Time = 0.724141666702053000
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 14
    end
    object cbTreatRoom: TColumnComboBox
      AlignWithMargins = True
      Left = 448
      Top = 16
      Width = 138
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = False
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
      OnChange = cbTreatRoomChange
      OnSelect = cbTreatRoomSelect
    end
    object EdtSch: TEdit
      Left = 448
      Top = 17
      Width = 138
      Height = 22
      BorderStyle = bsNone
      Color = 15383692
      Ctl3D = False
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      TabOrder = 11
      Text = 'EdtSch'
      OnKeyPress = EdtSchKeyPress
    end
    object cbDoc: TColumnComboBox
      AlignWithMargins = True
      Left = 592
      Top = 16
      Width = 129
      Height = 25
      ParentCustomHint = False
      Color = clWhite
      Version = '1.6.0.0'
      Visible = False
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
  object Panel2: TPanel
    Left = 0
    Top = 440
    Width = 834
    Height = 48
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 44
      Top = 22
      Width = 298
      Height = 12
      Caption = #9632' '#45432#46976' '#49353' '#51020#50689#51008' '#50696#50557#51012' '#48320#44221' '#54616#49888' '#48516#46308#51032' '#47749#45800#51077#45768#45796'.'
      Color = clYellow
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 45
      Top = 5
      Width = 230
      Height = 12
      Caption = #9632' '#54028#46976' '#49353' '#51020#50689#51008' '#52712#49548#54620' '#48516#46308#51032' '#47749#45800#51060#47728','
      Color = clBlue
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clSilver
      Font.Height = -12
      Font.Name = #46027#50880
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object ClsBtn: TButton
      Left = 705
      Top = 10
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 0
      OnClick = ClsBtnClick
    end
    object spSkinButton1: TButton
      Left = 535
      Top = 10
      Width = 75
      Height = 25
      Caption = #50641#49472#51200#51109
      TabOrder = 1
      OnClick = spSkinButton1Click
    end
    object HwanjaBtn: TButton
      Left = 620
      Top = 10
      Width = 75
      Height = 25
      Caption = #51064#49604
      TabOrder = 2
      OnClick = HwanjaBtnClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 670
    Top = 280
    object N1: TMenuItem
      Caption = #48320#44221
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #52712#49548
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #49325#51228
      OnClick = N3Click
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdPromise
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportCellFormats = False
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 196
    Top = 227
  end
  object SaveDialog1: TSaveDialog
    Left = 106
    Top = 222
  end
end
