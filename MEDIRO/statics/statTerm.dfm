object statTerm_f: TstatTerm_f
  Left = 187
  Top = 267
  Caption = 'statTerm_f'
  ClientHeight = 565
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter1: TAdvSplitter
    Left = 481
    Top = 57
    Height = 508
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 488
    ExplicitTop = 160
    ExplicitHeight = 100
  end
  object grdMain: TAdvStringGrid
    Left = 0
    Top = 57
    Width = 481
    Height = 508
    Cursor = crDefault
    Align = alLeft
    ColCount = 7
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
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
    FixedRowHeight = 22
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
    Version = '8.4.4.1'
    ExplicitLeft = 1
  end
  object Memo1: TMemo
    Left = 5
    Top = 325
    Width = 176
    Height = 96
    ImeName = 'Microsoft Office IME 2007'
    Lines.Strings = (
      ' (1)'#49888#54872','#44396#54872' '#45236#50896' count'
      ' (2)'#50836#51068#48324', '#49457#48324' count'
      ' (3)'#45236#50896#44221#47196#48324
      ' (4)'#51032#49324#48324
      ' (5)'#44592#44036#48324
      ' (6)'#51652#47308#44284#47785#48324
      '')
    TabOrder = 0
    Visible = False
  end
  object AdvPageControl1: TAdvPageControl
    Left = 484
    Top = 57
    Width = 584
    Height = 508
    ActivePage = AdvTabSheet1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Align = alClient
    DoubleBuffered = True
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.1.7'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 3
    OnChange = AdvPageControl1Change
    object AdvTabSheet1: TAdvTabSheet
      Caption = #49888#54872'/'#44396#54872
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Chart1: TChart
        Left = 0
        Top = 0
        Width = 576
        Height = 480
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #49888#54872'/'#44396#54872)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = #49457#48324
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Chart2: TChart
        Left = 0
        Top = 0
        Width = 576
        Height = 480
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #49457#48324' '#54872#51088#48708#50984)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries1: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = #45236#50896#44221#47196
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Chart3: TChart
        Left = 0
        Top = 0
        Width = 576
        Height = 480
        Title.Text.Strings = (
          #45236#50896#44221#47196#48324' '#54872#51088' '#49688)
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries2: TBarSeries
          ColorEachPoint = True
          Marks.Callout.Length = 8
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
    end
    object AdvTabSheet4: TAdvTabSheet
      Caption = #51032#49324#48324
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Chart4: TChart
        Left = 0
        Top = 0
        Width = 576
        Height = 480
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #51032#49324#48324' '#54872#51088#49688)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries3: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object AdvTabSheet5: TAdvTabSheet
      Caption = #50836#51068#48324
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Chart5: TChart
        Left = 0
        Top = 0
        Width = 576
        Height = 480
        Title.Text.Strings = (
          #50836#51068#48324' '#54872#51088' '#49688)
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object BarSeries1: TBarSeries
          ColorEachPoint = True
          Marks.Callout.Length = 8
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
    end
    object AdvTabSheet6: TAdvTabSheet
      Caption = #45208#51060#45824' '#48324
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object Chart6: TChart
        Left = 0
        Top = 0
        Width = 576
        Height = 480
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          #45208#51060#45824' '#48324' '#54872#51088#49688)
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries4: TPieSeries
          SeriesColor = clRed
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
    end
    object AdvTabSheet7: TAdvTabSheet
      Caption = #51648#50669' '#48324
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object AdvStringGrid1: TAdvStringGrid
        Left = 192
        Top = 48
        Width = 138
        Height = 250
        Cursor = crDefault
        ColCount = 1
        DrawingStyle = gdsClassic
        FixedCols = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        Visible = False
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          #51452#49548)
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
        FixedColWidth = 215
        FixedRowHeight = 22
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
        SortSettings.DefaultFormat = ssAutomatic
        Version = '8.4.4.1'
        ColWidths = (
          215)
      end
      object WebGMaps1: TWebGMaps
        Left = 0
        Top = 42
        Width = 576
        Height = 438
        Align = alClient
        APIVersion = '3.34'
        Clusters = <>
        Markers = <>
        Polylines = <>
        Polygons = <>
        Directions = <>
        MapOptions.DefaultLatitude = 48.859040000000000000
        MapOptions.DefaultLongitude = 2.294297000000000000
        Routing.PolylineOptions.Icons = <>
        StreetViewOptions.DefaultLatitude = 48.859040000000000000
        StreetViewOptions.DefaultLongitude = 2.294297000000000000
        MapPersist.Location = mplInifile
        MapPersist.Key = 'WebGMaps'
        MapPersist.Section = 'MapBounds'
        PolygonLabel.Font.Charset = DEFAULT_CHARSET
        PolygonLabel.Font.Color = clBlack
        PolygonLabel.Font.Height = -16
        PolygonLabel.Font.Name = 'Arial'
        PolygonLabel.Font.Style = []
        TabOrder = 1
        Version = '3.1.1.0'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 576
        Height = 42
        Align = alTop
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        object Label9: TLabel
          Left = 2
          Top = 9
          Width = 55
          Height = 13
          Caption = #48120#54869#51064#51452#49548
        end
        object Label6: TLabel
          Left = 63
          Top = 9
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label10: TLabel
          Left = 108
          Top = 9
          Width = 44
          Height = 13
          Caption = #54869#51064#51452#49548
        end
        object Label5: TLabel
          Left = 158
          Top = 9
          Width = 6
          Height = 13
          Caption = '0'
        end
        object ProgressBar1: TProgressBar
          Left = 1
          Top = 31
          Width = 574
          Height = 10
          Align = alBottom
          TabOrder = 0
        end
        object Button2: TButton
          Left = 225
          Top = 5
          Width = 128
          Height = 25
          Caption = #51648#50669#48324#44160#49353' '#49884#51089
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button1: TButton
          Left = 373
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 2
          Visible = False
          OnClick = Button1Click
        end
      end
    end
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 0
    Width = 1068
    Height = 57
    Align = alTop
    Caption = 'spSkinPanel1'
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      1068
      57)
    object Label3: TLabel
      Left = 157
      Top = 34
      Width = 11
      Height = 15
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 3
      Top = 34
      Width = 60
      Height = 15
      Caption = #51312#54924#44592#44036
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 3
      Top = 9
      Width = 60
      Height = 15
      Caption = #51312#54924#45380#46020
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 270
      Top = 9
      Width = 15
      Height = 15
      Caption = #54016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 188
      Top = 9
      Width = 15
      Height = 15
      Caption = #50900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 374
      Top = 9
      Width = 30
      Height = 15
      Caption = #45812#45817
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #46027#50880
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 968
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Label11'
      Visible = False
    end
    object btnSch: TAdvGlowButton
      Left = 507
      Top = 4
      Width = 133
      Height = 37
      Caption = #44160#49353
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnSchClick
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
    object btnXls: TAdvGlowButton
      Left = 1175
      Top = 56
      Width = 91
      Height = 24
      AntiAlias = aaNone
      Caption = #51064#49604
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      Visible = False
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 646
      Top = 4
      Width = 71
      Height = 37
      AntiAlias = aaNone
      Caption = 'Excel'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object dt1: TDateTimePicker
      Left = 66
      Top = 32
      Width = 87
      Height = 20
      Date = 38657.000000000000000000
      Time = 0.552258391202485700
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 4
    end
    object dt2: TDateTimePicker
      Left = 173
      Top = 32
      Width = 87
      Height = 20
      Date = 38657.000000000000000000
      Time = 0.552351516198541500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = 'Microsoft IME 2003'
      ParentFont = False
      TabOrder = 5
    end
    object edtYY: TEdit
      Left = 753
      Top = 4
      Width = 41
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
      Text = 'edtYY'
      Visible = False
    end
    object edtMM: TEdit
      Left = 1176
      Top = 44
      Width = 57
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 10
      Visible = False
    end
    object cbTeamName: TComboBox
      Left = 289
      Top = 6
      Width = 78
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 2
      Text = #51204#52404
      Items.Strings = (
        #51204#52404)
    end
    object cbYear: TComboBox
      Left = 68
      Top = 6
      Width = 65
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        '')
    end
    object cbMonth: TComboBox
      Left = 135
      Top = 6
      Width = 47
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 7
      OnChange = cbMonthChange
      Items.Strings = (
        '')
    end
    object cbHyg: TComboBox
      Left = 406
      Top = 6
      Width = 78
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #46027#50880
      Font.Style = []
      ImeName = 'Microsoft Office IME 2007'
      ParentFont = False
      TabOrder = 9
      Text = #51204#52404
      Items.Strings = (
        #51204#52404)
    end
    object cbNew: TCheckBox
      Left = 269
      Top = 34
      Width = 193
      Height = 17
      Anchors = [akLeft, akTop, akBottom]
      Caption = #51312#54924#44592#44036' '#45236' '#49888#54872#47564' '#51312#54924
      TabOrder = 11
    end
    object Button3: TButton
      Left = 800
      Top = 2
      Width = 145
      Height = 25
      Caption = 'Latitude Longitude'
      TabOrder = 12
      Visible = False
      OnClick = Button3Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 698
    Top = 154
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = grdMain
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.14'
    Left = 427
    Top = 92
  end
  object WebGMapsGeocoding1: TWebGMapsGeocoding
    Version = '1.0.5.0'
    Left = 565
    Top = 161
  end
end
