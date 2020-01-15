object InputTeakJung_f: TInputTeakJung_f
  Left = 0
  Top = 0
  Caption = 'InputTeakJung_f'
  ClientHeight = 498
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 353
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object AdvSplitter1: TAdvSplitter
      Left = 472
      Top = 1
      Height = 351
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitLeft = 232
      ExplicitTop = 48
      ExplicitHeight = 100
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 478
      Top = 4
      Width = 278
      Height = 345
      Align = alClient
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 276
        Height = 343
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = #47749#49464#49436#45800#50948
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 268
            Height = 33
            Align = alTop
            Caption = 'Panel5'
            ShowCaption = False
            TabOrder = 0
            object edtCodeMyungse: TEdit
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 261
              Height = 25
              Align = alLeft
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              Text = 'edtCodeMyungse'
            end
          end
          object memTJungSayuMyungse: TMemo
            AlignWithMargins = True
            Left = 3
            Top = 36
            Width = 262
            Height = 272
            Align = alClient
            Lines.Strings = (
              'memTJungSayuMyungse')
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
        object 줄번호단위: TTabSheet
          Caption = #51460#48264#54840#45800#50948
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 268
            Height = 89
            Align = alTop
            Caption = 'Panel5'
            Ctl3D = True
            ParentCtl3D = False
            ShowCaption = False
            TabOrder = 0
            object Label1: TLabel
              Left = 144
              Top = 14
              Width = 52
              Height = 17
              Caption = #49688#44032#53076#46300
              Visible = False
            end
            object Label2: TLabel
              Left = 3
              Top = 41
              Width = 52
              Height = 17
              Caption = #44396#48516#53076#46300
            end
            object Label3: TLabel
              Left = 3
              Top = 68
              Width = 70
              Height = 17
              Caption = #44396#52404#51201' '#49324#50976
            end
            object Label4: TLabel
              Left = 3
              Top = 14
              Width = 52
              Height = 17
              Caption = #49324#50976#53076#46300
              Visible = False
            end
            object edtSugaCode: TEdit
              AlignWithMargins = True
              Left = 202
              Top = 10
              Width = 77
              Height = 25
              TabOrder = 0
              Text = 'edtSugaCode'
              Visible = False
            end
            object edtCode: TEdit
              AlignWithMargins = True
              Left = 61
              Top = 37
              Width = 180
              Height = 25
              TabOrder = 1
              Text = 'edtCode'
            end
            object edtSayuCode: TEdit
              AlignWithMargins = True
              Left = 61
              Top = 6
              Width = 77
              Height = 25
              TabOrder = 2
              Text = 'edtSayuCode'
              Visible = False
            end
          end
          object memTJungSayuJul: TMemo
            AlignWithMargins = True
            Left = 3
            Top = 92
            Width = 262
            Height = 216
            Align = alClient
            Lines.Strings = (
              'memTJungSayuJul')
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
      end
    end
    object Panel3: TAdvPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 465
      Height = 345
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Constraints.MinWidth = 250
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -13
      Caption.Font.Name = #47569#51008' '#44256#46357
      Caption.Font.Style = []
      Caption.Indent = 0
      DoubleBuffered = False
      Position.Key = '.\db.ini'
      Position.Section = 'inputTjungPanelWidth'
      Position.Location = clInifile
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 169
      object memNeyuk: TMemo
        AlignWithMargins = True
        Left = 4
        Top = 35
        Width = 457
        Height = 27
        Align = alTop
        Lines.Strings = (
          'memNeyuk')
        TabOrder = 0
      end
      object cbTjungNeyuk: TColumnComboBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 457
        Height = 25
        Color = clWindow
        Version = '1.6.0.0'
        Visible = True
        Align = alTop
        Columns = <>
        ComboItems = <>
        EditColumn = -1
        EditHeight = 19
        EmptyText = ''
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
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        SortColumn = 0
        TabOrder = 2
        OnChange = cbTjungNeyukChange
      end
      object memNeyukExample: TRichEdit
        AlignWithMargins = True
        Left = 4
        Top = 68
        Width = 457
        Height = 273
        Align = alClient
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Lines.Strings = (
          'memNeyukExample')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        Zoom = 100
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 353
    Width = 760
    Height = 56
    Align = alTop
    Caption = 'Panel2'
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 1
    object lblSuKey: TLabel
      Left = 528
      Top = 6
      Width = 50
      Height = 17
      Caption = 'lblSuKey'
      Visible = False
    end
    object lblJubsuID: TLabel
      Left = 528
      Top = 32
      Width = 62
      Height = 17
      Caption = 'lblJubsuID'
      Visible = False
    end
    object lblJinSkey: TLabel
      Left = 624
      Top = 6
      Width = 57
      Height = 17
      Caption = 'lblJinSkey'
      Visible = False
    end
    object lblJinDay: TLabel
      Left = 624
      Top = 29
      Width = 52
      Height = 17
      Caption = 'lblJinDay'
      Visible = False
    end
    object lblDocID: TLabel
      Left = 687
      Top = 6
      Width = 50
      Height = 17
      Caption = 'lblDocID'
      Visible = False
    end
    object lblTjungID: TLabel
      Left = 687
      Top = 29
      Width = 61
      Height = 17
      Caption = 'lblTjungID'
      Visible = False
    end
    object lblChart: TLabel
      Left = 435
      Top = -2
      Width = 46
      Height = 17
      Caption = 'lblChart'
      Visible = False
    end
    object lblJulNo: TLabel
      Left = 340
      Top = -2
      Width = 48
      Height = 17
      Caption = 'lblJulNo'
      Visible = False
    end
    object btnMod: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 0
      OnClick = btnModClick
    end
    object btnAdd: TButton
      Left = 97
      Top = 17
      Width = 75
      Height = 25
      Caption = #52628#44032
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnClear: TButton
      Left = 178
      Top = 17
      Width = 75
      Height = 25
      Caption = #52488#44592#54868
      TabOrder = 2
      OnClick = btnClearClick
    end
    object btnDelete: TButton
      Left = 259
      Top = 17
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 3
      OnClick = btnDeleteClick
    end
    object Button5: TButton
      Left = 340
      Top = 17
      Width = 75
      Height = 25
      Caption = #50696#50557#50612
      TabOrder = 4
      Visible = False
    end
    object btnClose: TButton
      Left = 421
      Top = 17
      Width = 75
      Height = 25
      Caption = #51333#47308
      TabOrder = 5
      OnClick = btnCloseClick
    end
  end
  object grdNeyuk: TAdvStringGrid
    Left = 0
    Top = 409
    Width = 760
    Height = 89
    Cursor = crDefault
    Align = alClient
    ColCount = 10
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    HoverRowCells = [hcNormal, hcSelected]
    OnClickCell = grdNeyukClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #48156#49373#45800#50948
      #52376#48169#53076#46300
      #51460#48264#54840
      #44396#48516#53076#46300
      #45236#50669
      #51089#49457#51068
      #49324#50857#51088'ID'
      'TJungID'
      'Jin_sKey')
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
      'Clear')
    FixedColWidth = 22
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
    ShowSelection = False
    ShowDesignHelper = False
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.4.4.1'
    ExplicitLeft = 48
    ExplicitTop = 382
    ExplicitWidth = 758
    ColWidths = (
      22
      65
      56
      42
      64
      288
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
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'InputTeakJung_f'
    Version = '1.4.1.4'
    Left = 308
    Top = 137
  end
end
