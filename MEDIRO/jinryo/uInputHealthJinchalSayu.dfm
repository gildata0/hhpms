object InputHealthJinchalSayu_f: TInputHealthJinchalSayu_f
  Left = 0
  Top = 0
  Caption = 'InputHealthJinchalSayu_f'
  ClientHeight = 350
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object memNeyukExample: TRichEdit
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 434
    Height = 145
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Lines.Strings = (
      'JT018 * '#44592#51116#54805#49885' : X(1)/X(1)/X(1)/X(1)/X(1)/X(1)/X(200)/X(1)/X(200)|'
      ''
      #44397#48124#44148#44053#48372#54744#48277#50640' '#46384#47480' '#44148#44053#44160#51652' '#49892#49884' '#45817#51068' '#48324#46020#51032' '#51652#52272#47308#47484' '#49328#51221#54616#45716' '
      #44221#50864' '#54644#45817' '#49324#50976#53076#46300#47484' '#47784#46160' '#44592#51116
      '('#51652#52272#47308' '#49328#51221' '#49324#50976#53076#46300#44032' F '#46608#45716' G'#51064' '#44221#50864#45716' '#44396#52404#51201#51064' '#49324#50976#47484' '#54632#44760' '#44592#51116')'
      #8251' '#44396#52404#51201' '#49324#50976#45716' '#54217#47928'(Fee Text)'#51004#47196' '#44592#51116'('#50689#47928' 200'#51088', '#54620#44544' 100'#51088')')
    ParentFont = False
    TabOrder = 0
    Zoom = 100
  end
  object Memo1: TMemo
    Left = 448
    Top = 8
    Width = 273
    Height = 145
    Lines.Strings = (
      '<'#51652#52272#47308' '#49328#51221' '#49324#50976#53076#46300'>'
      'A :  '#50896#50808#52376#48169#51204' '#48156#44553'|'
      'B : '#50896#45236#51649#51217#51312#51228'('#44221#44396','#50808#50857#51228','#51452#49324#51228' '#46321')'
      'C :  '#51060#54617#50836#48277'  D:  '#52376#52824' '#48143' '#49688#49696'     E:  '#44160#49324
      'F :  '#12300#44148#44053#48372#54744' '#54665#50948' '#44553#50668','#48708#44553#50668' '#47785#47197#54364' '#48143' '#44553#50668' '
      #49345#45824#44032#52824#51216#49688#12301' '
      #51228'1'#54200' '#51228'3'#48512' '#54665#50948' '#48708#44553#50668' '#47785#47197#50640' '#46384#46972' '#49328#51221' '#44032#45733
      #54620' '#51652#47308#54665#50948
      'G:  A'#48512#53552' F'#44620#51648#50640' '#54644#45817#54616#51648' '#50506#45716' '#49324#50976)
    TabOrder = 1
  end
  object AdvStringGrid1: TAdvStringGrid
    Left = 8
    Top = 159
    Width = 713
    Height = 146
    Cursor = crDefault
    ColCount = 11
    DrawingStyle = gdsClassic
    RowCount = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    HoverRowCells = [hcNormal, hcSelected]
    OnGetEditorType = AdvStringGrid1GetEditorType
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      #49324#50857#51088#53076#46300
      #52397#44396#53076#46300
      #54620#44544#47749#52845
      'A'
      'B'
      'C'
      'D'
      'E'
      'F'
      'G'
      'F'#49324#50976' '#45236#50857)
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
    FixedColWidth = 70
    FixedRowHeight = 22
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
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
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.4.4.1'
    ColWidths = (
      70
      72
      166
      28
      27
      26
      28
      24
      24
      25
      214)
  end
  object btnMod: TButton
    Left = 565
    Top = 310
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 3
    OnClick = btnModClick
  end
  object btnAdd: TButton
    Left = 646
    Top = 311
    Width = 75
    Height = 25
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 4
    OnClick = btnAddClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 306
    Width = 551
    Height = 36
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 5
    Visible = False
    object lblSuKey: TLabel
      Left = 16
      Top = 14
      Width = 46
      Height = 15
      Caption = 'lblSuKey'
      Visible = False
    end
    object lblJubsuID: TLabel
      Left = 200
      Top = 16
      Width = 55
      Height = 15
      Caption = 'lblJubsuID'
      Visible = False
    end
    object lblJinSkey: TLabel
      Left = 112
      Top = 14
      Width = 52
      Height = 15
      Caption = 'lblJinSkey'
      Visible = False
    end
    object lblJinDay: TLabel
      Left = 296
      Top = 13
      Width = 48
      Height = 15
      Caption = 'lblJinDay'
      Visible = False
    end
    object lblDocID: TLabel
      Left = 387
      Top = 14
      Width = 47
      Height = 15
      Caption = 'lblDocID'
      Visible = False
    end
    object lblTjungID: TLabel
      Left = 476
      Top = 11
      Width = 55
      Height = 15
      Caption = 'lblTjungID'
      Visible = False
    end
    object lblJulNo: TLabel
      Left = 72
      Top = 8
      Width = 43
      Height = 15
      Caption = 'lblJulNo'
      Visible = False
    end
  end
end
