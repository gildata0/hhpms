object ChairName2_f: TChairName2_f
  Left = 463
  Top = 180
  BorderIcons = [biSystemMenu]
  Caption = #50696#50557#44396#44036#47749#49444#51221'(ChairName_f)'
  ClientHeight = 282
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 282
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object plbottom: TPanel
      Left = 0
      Top = 224
      Width = 301
      Height = 58
      Align = alBottom
      TabOrder = 0
      object Label2: TLabel
        Left = 34
        Top = 28
        Width = 36
        Height = 12
        Caption = 'Label2'
        Visible = False
      end
      object btnAdd: TButton
        Left = 16
        Top = 14
        Width = 66
        Height = 25
        Caption = #52628#44032
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnPost: TButton
        Left = 86
        Top = 14
        Width = 66
        Height = 25
        Caption = #51200#51109
        TabOrder = 1
        OnClick = btnPostClick
      end
      object btnDelete: TButton
        Left = 155
        Top = 14
        Width = 66
        Height = 25
        Caption = #49325#51228
        TabOrder = 2
        OnClick = btnDeleteClick
      end
      object btnClose: TButton
        Left = 222
        Top = 14
        Width = 66
        Height = 25
        Caption = #45803#44592
        TabOrder = 3
        OnClick = btnCloseClick
      end
    end
    object plgrid: TPanel
      Left = 0
      Top = 0
      Width = 301
      Height = 224
      Align = alClient
      TabOrder = 1
      object Grdmain: TAdvStringGrid
        Left = 1
        Top = 1
        Width = 299
        Height = 222
        Cursor = crDefault
        Align = alClient
        ColCount = 3
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7485192
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowMoving, goEditing]
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssBoth
        ShowHint = False
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OfficeHint.Title = #45824#44592#51221#48372
        OfficeHint.Notes.Strings = (
          #45824#44592#49884#44036' '#53364#47533#54616#47732' '#45824#44592#49884#44036' '#50504#48372#51076'.'
          #51217#49688#49884#44036' '#53364#47533#54616#47732' '#51217#49688#49884#44036' '#50504#48372#51076'.'
          #49457#47749' '#53364#47533#54616#47732' '#45824#44592#49884#44036', '#51217#49688#49884#44036' '#48372#51076'.'
          #54872#51088#47484' '#49440#53469#54620' '#54980', '#47560#50864#49828' '#50724#47480#51901' '#48260#53948' '#53364#47533#54616#47732' '
          #50557#49549#51004#47196' '#50734#44592#44144#45208', '#45824#44592' '#51221#48372#47484' '#48148#44992#49688' '#51080#51020'.')
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #52404#50612#48264#54840
          #52404#50612#47749#52845)
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
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
        FixedFont.Color = 7434609
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glStandard
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
        Version = '8.4.1.0'
        ColWidths = (
          20
          64
          192)
        RowHeights = (
          22
          21)
      end
    end
  end
end
