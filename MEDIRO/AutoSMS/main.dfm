object main_f: Tmain_f
  Left = 163
  Top = 169
  Caption = 'main_f'
  ClientHeight = 431
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPageControl1: TAdvPageControl
    Left = 30
    Top = 75
    Width = 1031
    Height = 341
    ActivePage = AdvTabSheet2
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    DoubleBuffered = True
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.1.7'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    OnChange = AdvPageControl1Change
    object AdvTabSheet1: TAdvTabSheet
      Caption = #49373#51068
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object grdBirth: TAdvStringGrid
        Left = 14
        Top = 39
        Width = 729
        Height = 112
        Cursor = crDefault
        ColCount = 9
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 15387318
        ColumnHeaders.Strings = (
          ''
          #51204#49569
          #49373#51068
          #52264#53944
          #49457#47749
          #51204#54868
          #45208#51060
          #49457#48324
          'noSMS')
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clBtnFace
        ControlLook.FixedGradientHoverFrom = 13619409
        ControlLook.FixedGradientHoverTo = 12502728
        ControlLook.FixedGradientHoverMirrorFrom = 12502728
        ControlLook.FixedGradientHoverMirrorTo = 11254975
        ControlLook.FixedGradientDownFrom = 8816520
        ControlLook.FixedGradientDownTo = 7568510
        ControlLook.FixedGradientDownMirrorFrom = 7568510
        ControlLook.FixedGradientDownMirrorTo = 6452086
        ControlLook.FixedGradientDownBorder = 14007466
        ControlLook.CheckAlwaysActive = True
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
        FixedColWidth = 50
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
        SearchFooter.ColorTo = 15790320
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
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '8.4.4.1'
        ColWidths = (
          50
          32
          84
          64
          85
          140
          46
          40
          50)
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = #50696#50557
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object GrdPromise: TAdvStringGrid
        Left = 21
        Top = 22
        Width = 1164
        Height = 216
        Cursor = crDefault
        ColCount = 13
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = GrdPromiseGetCellColor
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #51204#49569#44208#44284
          #51068#51088
          #49884#44036
          #52264#53944
          #49457#47749
          #51204#54868
          #50696#50557#45236#50669
          #48512#47784
          #51204#49569#50696#51221
          'PID'
          #51204#49569#50696#50557#51068
          #51204#49569#50696#50557#49884#44036)
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
        FixedColWidth = 50
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
        ScrollProportional = True
        ScrollSynch = True
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
        ShowSelection = False
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Column = 8
        SortSettings.Show = True
        Version = '8.4.4.1'
        ColWidths = (
          50
          63
          79
          56
          97
          64
          100
          192
          64
          64
          64
          82
          102)
        object ListBox1: TListBox
          Left = 355
          Top = 60
          Width = 306
          Height = 91
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 13
          TabOrder = 2
          Visible = False
        end
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = #51648#44033' '#48120#45236#50896
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object grdMinewon: TAdvStringGrid
        Left = 0
        Top = 20
        Width = 1009
        Height = 216
        Cursor = crDefault
        ColCount = 11
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #51204#49569
          #51068#51088
          #49884#44036
          #52264#53944
          #49457#47749
          #51204#54868
          #45236#50669
          ''
          ''
          'PID')
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
        FixedColWidth = 50
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
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Column = 8
        SortSettings.Show = True
        Version = '8.4.4.1'
        ColWidths = (
          50
          39
          119
          56
          115
          64
          100
          81
          64
          64
          64)
      end
    end
    object AdvTabSheet4: TAdvTabSheet
      Caption = #44288#47532
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object grdMain: TAdvStringGrid
        Left = 7
        Top = 57
        Width = 964
        Height = 156
        Cursor = crDefault
        ColCount = 20
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #51204#49569
          #49457#47749
          #52264#53944
          #48516#47448
          #49884#51089#51068
          #52572#51333#51204#49569#51068
          #51452#44592'1'
          #54943#49688'1'
          #51452#44592'2'
          #54943#49688'2'
          #51452#44592'3'
          #54943#49688'3'
          #52509#51204#49569
          #51204#49569#45236#50857
          #51204#49569#48264#54840
          #52280#44256#49324#54637
          #44288#47532#51473#51648
          #44288#47532#51473#51648#51068#51088
          'ID')
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
        FixedColWidth = 50
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
        ColWidths = (
          50
          42
          38
          66
          38
          47
          73
          39
          41
          41
          47
          42
          41
          47
          88
          64
          64
          64
          64
          64)
      end
    end
    object AdvTabSheet5: TAdvTabSheet
      Caption = #49888#54872
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object grdNew: TAdvStringGrid
        Left = 29
        Top = 59
        Width = 729
        Height = 197
        Cursor = crDefault
        ColCount = 9
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 15387318
        ColumnHeaders.Strings = (
          ''
          #51204#49569
          #52572#52488#46321#47197#51068
          #52264#53944
          #49457#47749
          #51204#54868
          #45208#51060
          #49457#48324
          'noSMS')
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clBtnFace
        ControlLook.FixedGradientHoverFrom = 13619409
        ControlLook.FixedGradientHoverTo = 12502728
        ControlLook.FixedGradientHoverMirrorFrom = 12502728
        ControlLook.FixedGradientHoverMirrorTo = 11254975
        ControlLook.FixedGradientDownFrom = 8816520
        ControlLook.FixedGradientDownTo = 7568510
        ControlLook.FixedGradientDownMirrorFrom = 7568510
        ControlLook.FixedGradientDownMirrorTo = 6452086
        ControlLook.FixedGradientDownBorder = 14007466
        ControlLook.CheckAlwaysActive = True
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
        FixedColWidth = 50
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
        SearchFooter.ColorTo = 15790320
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
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '8.4.4.1'
        ColWidths = (
          50
          32
          84
          64
          85
          140
          46
          40
          50)
      end
    end
    object AdvTabSheet6: TAdvTabSheet
      Caption = #47532#53084
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object grdRecall: TAdvStringGrid
        Left = -11
        Top = 22
        Width = 1164
        Height = 216
        Cursor = crDefault
        ColCount = 13
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = GrdPromiseGetCellColor
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #51204#49569#44208#44284
          #51068#51088
          #49884#44036
          #52264#53944
          #49457#47749
          #51204#54868
          #47532#53084#45236#50669
          #48512#47784
          #51204#49569#50696#51221
          'PID'
          #51204#49569#50696#50557#51068
          #51204#49569#50696#50557#49884#44036)
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
        FixedColWidth = 50
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
        ScrollProportional = True
        ScrollSynch = True
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
        ShowSelection = False
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Column = 8
        SortSettings.Show = True
        Version = '8.4.4.1'
        ColWidths = (
          50
          63
          79
          56
          97
          64
          100
          192
          64
          64
          64
          82
          102)
        object ListBox2: TListBox
          Left = 355
          Top = 60
          Width = 306
          Height = 91
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 13
          TabOrder = 2
          Visible = False
        end
      end
    end
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 55
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #46027#50880
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
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
    object lblCnt: TLabel
      Left = 435
      Top = 33
      Width = 32
      Height = 12
      Caption = 'lblCnt'
    end
    object lblTime: TLabel
      Left = 435
      Top = 6
      Width = 66
      Height = 19
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -17
      Font.Name = 'System'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 616
      Top = 5
      Width = 64
      Height = 12
      Caption = #48372#45236#45716' '#48264#54840
    end
    object Label2: TLabel
      Left = 717
      Top = 2
      Width = 48
      Height = 12
      Caption = #49569#49888#48264#54840
      Visible = False
    end
    object Label3: TLabel
      Left = 379
      Top = 9
      Width = 48
      Height = 12
      Caption = #54788#51116#49884#44036
    end
    object Label4: TLabel
      Left = 378
      Top = 33
      Width = 52
      Height = 12
      Caption = #51204#49569' '#44148#49688
    end
    object Label5: TLabel
      Left = 9
      Top = 9
      Width = 48
      Height = 12
      Caption = #54788#51116#51068#51088
    end
    object btnBirth: TButton
      Left = 698
      Top = 25
      Width = 75
      Height = 25
      Caption = #49373#51068#44160#49353
      TabOrder = 0
      Visible = False
      OnClick = btnBirthClick
    end
    object btnPromise: TButton
      Left = 779
      Top = 25
      Width = 75
      Height = 25
      Caption = #50696#50557#44160#49353
      TabOrder = 1
      Visible = False
      OnClick = btnPromiseClick
    end
    object btnMinewon: TButton
      Left = 859
      Top = 25
      Width = 75
      Height = 25
      Caption = #48120#45236#50896#44160#49353
      TabOrder = 2
      Visible = False
      OnClick = btnMinewonClick
    end
    object btnManage: TButton
      Left = 937
      Top = 25
      Width = 75
      Height = 25
      Caption = #44288#47532#44160#49353
      TabOrder = 3
      Visible = False
      OnClick = btnManageClick
    end
    object btnNewPatient: TButton
      Left = 1016
      Top = 25
      Width = 75
      Height = 25
      Caption = #49888#54872#44160#49353
      TabOrder = 4
      Visible = False
      OnClick = btnNewPatientClick
    end
    object DtDate: TDateTimePicker
      Left = 63
      Top = 5
      Width = 186
      Height = 20
      Date = 41777.000000000000000000
      Time = 0.655205567127268300
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 33
      Width = 167
      Height = 17
      Caption = #53485' '#51204#54872#49884' '#45936#51060#53552' '#44032#51256#50724#44592
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object btnPromiseTest: TButton
      Left = 495
      Top = 25
      Width = 198
      Height = 25
      Caption = #44160#49353#46108' '#48120#51204#49569' '#54872#51088' '#51593#49884' '#51116#51204#49569
      TabOrder = 7
      OnClick = Button6Click
    end
    object CheckBox2: TCheckBox
      Left = 177
      Top = 33
      Width = 149
      Height = 17
      Hint = #53580#49828#53944#49884' '#54644#51228#54616#50668' '#13#10#45796#47480#45216' '#45936#51060#53552' '#44160#49353#50640' '#54876#50857
      Caption = #50724#45720#47196' '#51088#46041' '#51204#54872
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 8
      OnClick = CheckBox2Click
    end
    object cbExclusive: TCheckBox
      Left = 255
      Top = 6
      Width = 97
      Height = 17
      Caption = #51473#48373#48264#54840#51228#44144
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
  end
  object MainMenu1: TMainMenu
    Left = 975
    Top = 50
    object N1: TMenuItem
      Caption = #49444#51221
      OnClick = N1Click
    end
    object mnuVersion: TMenuItem
      Caption = 'Ver'
    end
    object LOGIN1: TMenuItem
      Caption = 'LOGIN'
      OnClick = LOGIN1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 285
    Top = 70
  end
  object timerBirth: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = timerBirthTimer
    Left = 495
    Top = 75
  end
  object timerPromise: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = timerPromiseTimer
    Left = 539
    Top = 74
  end
  object timerMinewon: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = timerMinewonTimer
    Left = 589
    Top = 74
  end
  object timerManage: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = timerManageTimer
    Left = 639
    Top = 74
  end
  object timerNew: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = timerNewTimer
    Left = 684
    Top = 74
  end
  object SMSCALLMSG1: TSMSCALLMSG
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 945
    Top = 50
  end
  object PopupMenu1: TPopupMenu
    Left = 460
    Top = 75
    object Open1: TMenuItem
      Caption = 'Open'
      OnClick = Open1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Close1: TMenuItem
      Caption = 'Close'
      OnClick = Close1Click
    end
  end
  object tmrSql: TTimer
    Interval = 30000
    OnTimer = tmrSqlTimer
    Left = 792
    Top = 72
  end
  object AdvAlertWindow1: TAdvAlertWindow
    AlertMessages = <>
    AlwaysOnTop = False
    AutoHide = False
    AutoSize = False
    AutoDelete = False
    BorderColor = 9841920
    BtnHoverColor = 14483455
    BtnHoverColorTo = 6013175
    BtnDownColor = 557032
    BtnDownColorTo = 8182519
    CaptionColor = 14059353
    CaptionColorTo = 9841920
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GradientDirection = gdVertical
    HintNextBtn = 'Next'
    HintPrevBtn = 'Previous'
    HintCloseBtn = 'Close'
    HintDeleteBtn = 'Delete'
    HintPopupBtn = 'Popup'
    Hover = False
    MarginX = 4
    MarginY = 1
    PopupLeft = 0
    PopupTop = 0
    PopupWidth = 300
    PopupHeight = 100
    PositionFormat = '%d of %d'
    WindowColor = 16440004
    WindowColorTo = 16105376
    ShowScrollers = False
    ShowDelete = True
    ShowPopup = False
    AlphaEnd = 180
    AlphaStart = 0
    DisplayTime = 5000
    FadeStep = 2
    WindowPosition = wpLeftBottom
    Version = '2.0.0.1'
    Left = 375
    Top = 70
  end
  object timerRecall: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = timerRecallTimer
    Left = 865
    Top = 80
  end
  object TrayIcon1: TTrayIcon
    Icon.Data = {
      000001000200101000000000000068050000260000002020000000000000A808
      00008E0500002800000010000000200000000100080000000000400100000000
      0000000000000001000000000000FFFFFF002828280030303000383838004040
      4000202020004848480050505000101010001818180058585800606060008080
      FF009090FF0000000000FF303000FF403800FF484000FF585000FF605800FF70
      680060FF600070707000888888009090900020FF2000A8FFA80038FF3800D0FF
      D00048FF480070FF700090FF9000C0FFC0005858FF00A0A0FF00FF282000FF80
      700060FFFF0068686800808080007878780030FF300040FF400058FF580068FF
      680088FF880050FF500078FF780098FF980020FFFF00A8FFFF0038FFFF00D0FF
      FF0048FFFF0070FFFF0090FFFF00C0FFFF007070FF00B0B0FF006868FF00A8A8
      FF00B8B8FF0030FFFF0040FFFF0058FFFF0068FFFF0088FFFF0050FFFF0078FF
      FF0098FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF01FF05131211100F2308FF0EFFFFFFFF
      01010114131211100F080808FFFFFFFF02FF0124141312111009FF08FFFFFFFF
      020202010101050505090909FFFFFFFF03FF021F1E151D1B1905FF09FFFFFFFF
      0303031A2D2C2B2A29050505FFFFFFFF04FF031C302F152E1B01FF05FFFFFFFF
      06040400201F1E151D010101FFFFFFFF06FF0404040303020202FF01FFFFFFFF
      070706373625353331020202FFFFFFFF0AFF07324241403F3E03FF02FFFFFFFF
      0B0A0A344544254333030303FFFFFFFF16FF0B00383736253504FF03FFFFFFFF
      2716260B0A0A070706060404FFFFFFFF17FF283A220D0C392106FF04FFFFFFFF
      1818173D3C220D0C3B070606FFFFD00BFFFFC003FFFFD00BFFFFC003FFFFD00B
      FFFFC003FFFFD00BFFFFC003FFFFD00BFFFFC003FFFFD00BFFFFC003FFFFD00B
      FFFFC003FFFFD00BFFFFC003FFFF280000002000000040000000010008000000
      00008004000000000000000000000001000000000000C0C0C000FFFFFF004848
      4800404040003030300038383800505050002828280058585800606060006868
      680020202000000000001010100018181800707070007878780068FF680078FF
      780088FF880050FF500060FF600090FF9000A0FFA000A8FFA800B8FFB800FF70
      680048FF4800C0FFC00038FF3800D0FFD00020FF200028FF280040FF400098FF
      980058FF5800B0FFB000E0FFE00070FF700080FF8000C8FFC800E8FFE80068FF
      FF0078FFFF0088FFFF0050FFFF0060FFFF0090FFFF00A0FFFF00A8FFFF00B8FF
      FF00FF504800FF585000FF605800FF68600048FFFF00C0FFFF00FF383000FF40
      3800FF484000FF787000FFC0B00000FF000010FF100030FF3000D8FFD80038FF
      FF00D0FFFF003030FF005858FF007878FF008080FF008888FF009090FF009898
      FF00A0A0FF00A8A8FF00B0B0FF00B8B8FF00FF282800FF303000FF383800FF80
      780020FFFF0028FFFF0040FFFF0098FFFF0058FFFF00B0FFFF00E0FFFF0070FF
      FF0080FFFF00C8FFFF00E8FFFF00FF181800FF202000FF302800FF404000FF48
      4800FF88800018FF180000FFFF0010FFFF0030FFFF00D8FFFF004848FF006868
      FF004040FF006060FF007070FF00F0FFF000F8FFF800F8FFFF00FF807000FF88
      7800FF282000FF505000FF585800FF606000FF908800FF908000FFA09000FF98
      9000FFB0A000FF988800FFA8A00018FFFF00F0FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0404FFFF070771
      1A363534333B3A39504F5F5E0D0CFFFF0C0CFFFFFFFFFFFFFF0404FFFF070772
      3C1A363534333B3A39604F5F0D0DFFFF0C0CFFFFFFFFFFFFFF05040404040477
      523C1A7675746261513960730D0D0D0D0C0CFFFFFFFFFFFFFF05050504040479
      78523C36353433626151504F0E0D0D0D0D0CFFFFFFFFFFFFFF0505FFFF04047B
      7A63521A363534333B3A51500E0EFFFF0D0DFFFFFFFFFFFFFF0305FFFF05043D
      7D7C633C1A363534333B3A390E0EFFFF0D0DFFFFFFFFFFFFFF03030505050505
      04040404070707070B0B0B0B0B0E0E0E0E0DFFFFFFFFFFFFFF03030303050505
      050404040407070707070B0B0B0B0E0E0E0EFFFFFFFFFFFFFF0203FFFF030519
      1822131211151421401F3F3E0B0BFFFF0E0EFFFFFFFFFFFFFF0202FFFF03031C
      241716131211231B1D201F3F0B0BFFFF0B0EFFFFFFFFFFFFFF02020203030328
      19181716272615141B1D206407070B0B0B0BFFFFFFFFFFFFFF0202020202031E
      1C191822131211151421401F0707070B0B0BFFFFFFFFFFFFFF0606FFFF020225
      1E1C241716131211231B1D200707FFFF0B0BFFFFFFFFFFFFFF0606FFFF020229
      412819181716272615141B1D0407FFFF070BFFFFFFFFFFFFFF0606060602026E
      251E1C191822131211151421040407070707FFFFFFFFFFFFFF0806060606026F
      29251E1C241716131211231B040404040707FFFFFFFFFFFFFF0808FFFF060601
      6F29412819181716272615140504FFFF0407FFFFFFFFFFFFFF0808FFFF060606
      0602020202030303030305050505FFFF0404FFFFFFFFFFFFFF09080808080606
      060602020202020303030305050505040404FFFFFFFFFFFFFF09090808080832
      31562C2B2A2E2D5567536665050505050504FFFFFFFFFFFFFF0909FFFF080838
      58302F2C2B2A5737425453660303FFFF0505FFFFFFFFFFFFFF0909FFFF09085C
      3231302F5B5A2E2D3742547E0303FFFF0505FFFFFFFFFFFFFF0A0A0909090943
      383231562C2B2A2E2D556753030303030505FFFFFFFFFFFFFF0A0A0A09090959
      433858302F2C2B2A57374254020303030303FFFFFFFFFFFFFF0A0AFFFF09095D
      685C3231302F5B5A2E2D37420202FFFF0303FFFFFFFFFFFFFF0F0AFFFF0A0A7F
      5943383231562C2B2A2E2D550202FFFF0303FFFFFFFFFFFFFF0F0F0A0A0A0A70
      5D59433858302F2C2B2A5737060202020203FFFFFFFFFFFFFF0F0F0F0F0A0A01
      705D685C3231302F5B5A2E2D060602020202FFFFFFFFFFFFFF100FFFFF0F0A0A
      0A0A090909090908080808060606FFFF0202FFFFFFFFFFFFFF1010FFFF0F0F0A
      0A0A0A0A09090909080808080606FFFF0602FFFFFFFFFFFFFF1010100F0F0F4E
      4D4C4B4A494847466A456944080806060606FFFFFFFFFFFFFF10101010100F4E
      4D4C4B4A494847466D6C456B080808060606FFFFFFFFE60000CFE60000CFE000
      000FE000000FE60000CFE60000CFE000000FE000000FE60000CFE60000CFE000
      000FE000000FE60000CFE60000CFE000000FE000000FE60000CFE60000CFE000
      000FE000000FE60000CFE60000CFE000000FE000000FE60000CFE60000CFE000
      000FE000000FE60000CFE60000CFE000000FE000000F}
    PopupMenu = PopupMenu1
    OnDblClick = TrayIcon1DblClick
    Left = 744
    Top = 64
  end
end
