object regiSchedule_f: TregiSchedule_f
  Left = 225
  Top = 118
  BorderIcons = [biSystemMenu]
  Caption = 'regiSchedule_f'
  ClientHeight = 604
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrdWork2: TAdvStringGrid
    Left = 0
    Top = 334
    Width = 1108
    Height = 270
    Cursor = crDefault
    Align = alClient
    ColCount = 16
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowMoving, goRowSelect]
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 0
    OnMouseDown = GrdWork2MouseDown
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = GrdWork2GetCellColor
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #50629#47924#49884#51089#51068
      #46321#47197#51088
      #50629#47924#48512#49436
      #50629#47924#48516#47448
      #46321#47197#51068
      #50629#47924#51228#47785
      #50629#47924#45236#50669
      #51652#54665#49345#53468
      #50629#47924#52280#50668#51088
      #50629#47924#51333#47308#51068
      #52376#47532#44208#44284
      'processCode'
      #50629#47924#53076#46300
      #49324#50896'ID'
      'dispDay')
    ControlLook.FixedGradientFrom = clBtnFace
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
    FixedColWidth = 22
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
    SizeWhileTyping.Height = True
    SizeWithForm = True
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.Show = True
    SortSettings.IndexShow = True
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
    Version = '8.4.4.1'
    ColWidths = (
      22
      76
      64
      60
      65
      74
      175
      182
      85
      86
      64
      64
      64
      64
      64
      64)
    RowHeights = (
      22
      22)
  end
  object Panel1: TPanel
    Left = 0
    Top = 298
    Width = 1108
    Height = 36
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Label4: TLabel
      Left = 167
      Top = 10
      Width = 7
      Height = 13
      Caption = '~'
      Color = clSilver
      ParentColor = False
      Transparent = True
    end
    object spSkinLabel2: TLabel
      Left = 9
      Top = 6
      Width = 60
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#49884#51089#51068
    end
    object spSkinLabel3: TLabel
      Left = 264
      Top = 6
      Width = 36
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #46321#47197#51088
    end
    object spSkinLabel9: TLabel
      Left = 439
      Top = 6
      Width = 36
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #52280#50668#51088
    end
    object spSkinButton4: TButton
      Left = 640
      Top = 7
      Width = 45
      Height = 23
      Caption = #44160#49353
      TabOrder = 0
    end
    object spSkinDateEdit3: TDateTimePicker
      Left = 81
      Top = 5
      Width = 84
      Height = 22
      Date = 41334.000000000000000000
      Time = 0.687643113422382200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 1
    end
    object spSkinDateEdit4: TDateTimePicker
      Left = 176
      Top = 5
      Width = 84
      Height = 22
      Date = 37869.000000000000000000
      Time = 0.687646898149978400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 2
    end
    object spSkinComboBox5: TComboBox
      Left = 313
      Top = 5
      Width = 119
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      Text = 'cbSawon'
      OnChange = cbSawonChange
    end
    object spSkinEdit1: TEdit
      Left = 493
      Top = 7
      Width = 119
      Height = 22
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnKeyPress = EdtNameKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 37
    Align = alTop
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 2
    object wLabel6: TLabel
      Left = 279
      Top = 6
      Width = 60
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #49324#50896#50500#51060#46356
      Visible = False
    end
    object wLabel1: TLabel
      Left = 579
      Top = 6
      Width = 48
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#53076#46300
      Visible = False
    end
    object EdtId: TEdit
      Left = 352
      Top = 6
      Width = 121
      Height = 19
      BevelInner = bvNone
      BorderStyle = bsNone
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 0
      Text = 'EdtId'
      Visible = False
      OnKeyPress = EdtIdKeyPress
    end
    object EdtName: TEdit
      Left = 477
      Top = 6
      Width = 69
      Height = 19
      BevelInner = bvNone
      BorderStyle = bsNone
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 1
      Text = 'EdtName'
      Visible = False
      OnKeyPress = EdtNameKeyPress
    end
    object EdtCode: TEdit
      Left = 657
      Top = 7
      Width = 100
      Height = 16
      BevelInner = bvNone
      BorderStyle = bsNone
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = 'EdtCode'
      Visible = False
    end
    object BtnPrt2: TButton
      Left = 155
      Top = 7
      Width = 45
      Height = 23
      Caption = #51064#49604
      TabOrder = 3
      OnClick = BtnPrt2Click
    end
    object BtnIns: TButton
      Left = 10
      Top = 7
      Width = 45
      Height = 23
      Caption = #52628#44032
      TabOrder = 4
      OnClick = BtnInsClick
    end
    object BtnDel: TButton
      Left = 107
      Top = 7
      Width = 45
      Height = 23
      Caption = #49325#51228
      TabOrder = 5
      OnClick = BtnDelClick
    end
    object btnSave: TButton
      Left = 61
      Top = 8
      Width = 45
      Height = 23
      Caption = #51200#51109
      TabOrder = 6
      OnClick = BtnSaveClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 37
    Width = 1108
    Height = 261
    Align = alTop
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 3
    object Label5: TLabel
      Left = 242
      Top = 81
      Width = 11
      Height = 13
      Caption = #49884
      Color = clSilver
      ParentColor = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 306
      Top = 81
      Width = 11
      Height = 13
      Caption = #48516
      Color = clSilver
      ParentColor = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 242
      Top = 102
      Width = 11
      Height = 13
      Caption = #49884
      Color = clSilver
      ParentColor = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 307
      Top = 100
      Width = 11
      Height = 13
      Caption = #48516
      Color = clSilver
      ParentColor = False
      Transparent = True
    end
    object wLabel9: TLabel
      Left = 9
      Top = 11
      Width = 36
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #46321#47197#51088
    end
    object spSkinLabel1: TLabel
      Left = 9
      Top = 32
      Width = 48
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#48516#47448
    end
    object spSkinLabel4: TLabel
      Left = 9
      Top = 53
      Width = 48
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#48512#49436
    end
    object spSkinLabel5: TLabel
      Left = 9
      Top = 144
      Width = 48
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #46321#47197#51068#49884
    end
    object spSkinLabel6: TLabel
      Left = 9
      Top = 78
      Width = 60
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#49884#51089#51068
    end
    object spSkinLabel7: TLabel
      Left = 9
      Top = 99
      Width = 60
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#51333#47308#51068
    end
    object spSkinLabel8: TLabel
      Left = 9
      Top = 120
      Width = 60
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#52280#50668#51088
    end
    object spSkinLabel10: TLabel
      Left = 9
      Top = 169
      Width = 48
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #54364#49884#51333#47308
    end
    object Label6: TLabel
      Left = 348
      Top = 17
      Width = 60
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = #50629#47924#51228#47785
    end
    object spSkinButton1: TButton
      Left = 200
      Top = 11
      Width = 26
      Height = 19
      Caption = 'E'
      TabOrder = 0
      OnClick = spSkinButton1Click
    end
    object spSkinButton2: TButton
      Left = 200
      Top = 32
      Width = 26
      Height = 19
      Caption = 'E'
      TabOrder = 1
      OnClick = spSkinButton2Click
    end
    object spSkinButton3: TButton
      Left = 200
      Top = 53
      Width = 26
      Height = 19
      Caption = 'E'
      TabOrder = 2
      OnClick = spSkinButton3Click
    end
    object spSkinButton5: TButton
      Left = 270
      Top = 169
      Width = 45
      Height = 23
      Caption = #50641#49472
      TabOrder = 3
      OnClick = spSkinButton5Click
    end
    object rgProcess: TRadioGroup
      Left = 9
      Top = 196
      Width = 306
      Height = 56
      Caption = #51652#54665' '#49345#53468
      Columns = 5
      ItemIndex = 0
      Items.Strings = (
        #44228#54925
        #51652#54665
        #50756#47308
        #54252#44592
        #51648#50672)
      TabOrder = 4
    end
    object spSkinGroupBox1: TGroupBox
      Left = 340
      Top = 166
      Width = 426
      Height = 89
      Caption = #50629#47924#52376#47532' '#44208#44284
      TabOrder = 6
      object memResult: TMemo
        Left = 2
        Top = 15
        Width = 422
        Height = 72
        Align = alClient
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memResult')
        TabOrder = 0
      end
    end
    object spSkinGroupBox2: TGroupBox
      Left = 340
      Top = 39
      Width = 426
      Height = 121
      Caption = #50629#47924#45236#50669
      TabOrder = 7
      object memWork: TMemo
        Left = 2
        Top = 15
        Width = 422
        Height = 104
        Align = alClient
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'memWork')
        TabOrder = 0
      end
    end
    object DeDate: TDateTimePicker
      Left = 78
      Top = 77
      Width = 119
      Height = 22
      Date = 37869.000000000000000000
      Time = 0.687629745370941200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 8
    end
    object deEndday: TDateTimePicker
      Left = 78
      Top = 98
      Width = 119
      Height = 22
      Date = 37869.000000000000000000
      Time = 0.687632812499941800
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 9
    end
    object deRegDay: TDateTimePicker
      Left = 78
      Top = 143
      Width = 119
      Height = 22
      Date = 37869.000000000000000000
      Time = 0.687636249997012800
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 10
    end
    object deDispDay: TDateTimePicker
      Left = 78
      Top = 168
      Width = 119
      Height = 22
      Date = 41275.000000000000000000
      Time = 0.687639675932587100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 11
    end
    object CmTime: TComboBox
      Left = 199
      Top = 77
      Width = 40
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 12
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
    object CmMinute: TComboBox
      Left = 258
      Top = 77
      Width = 46
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 13
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
    object cbSect: TComboBox
      Left = 78
      Top = 32
      Width = 119
      Height = 22
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Text = #50557#49549
      Items.Strings = (
        #50557#49549
        #47532#53084
        #54644#54588#53084
        #46433#53328#53084
        #51204#54868
        #44396#47588
        #49345#45812
        #54872#51088#44288#47532
        #44144#47000#52376
        #48120#49688#44552#49688#45225)
    end
    object cbSawon: TComboBox
      Left = 78
      Top = 10
      Width = 119
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 15
      OnChange = cbSawonChange
    end
    object cbWorkArea: TComboBox
      Left = 78
      Top = 53
      Width = 119
      Height = 22
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 16
    end
    object cmEndtime: TComboBox
      Left = 199
      Top = 98
      Width = 40
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 17
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
    object cmEndMin: TComboBox
      Left = 258
      Top = 98
      Width = 46
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 18
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
    object edtRefer: TEdit
      Left = 78
      Top = 119
      Width = 119
      Height = 22
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
      Text = 'edtRefer'
      OnKeyPress = EdtNameKeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 802
      Top = 107
      Width = 426
      Height = 53
      Caption = #48152#48373
      Columns = 6
      Items.Strings = (
        #50630#51020
        #47588#51068
        #47588#51452
        '2'#51452#47560#45796
        #47588#50900
        #47588#45380)
      TabOrder = 5
      Visible = False
    end
    object edtTitle: TEdit
      Left = 414
      Top = 11
      Width = 350
      Height = 22
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 50
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
      Text = 'edtTitle'
      OnKeyPress = EdtNameKeyPress
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = GrdWork2
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 641
    Top = 96
  end
  object SaveDialog1: TSaveDialog
    Left = 601
    Top = 96
  end
end
