object HxJiinryo_p_f: THxJiinryo_p_f
  Left = 0
  Top = 0
  Caption = 'HxJiinryo_p_f'
  ClientHeight = 263
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlNewon: TAdvPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 222
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.7.9'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -13
    Caption.Font.Name = #47569#51008' '#44256#46357
    Caption.Font.Style = [fsBold]
    Caption.Indent = 0
    Caption.Text = #45236#50896#51221#48372
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object grdSunapReprint: TAdvStringGrid
      Left = 0
      Top = 18
      Width = 800
      Height = 204
      Cursor = crDefault
      Align = alClient
      ColCount = 41
      DefaultRowHeight = 28
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving, goRowSelect, goFixedColClick, goFixedRowClick]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnDblClickCell = grdSunapReprintDblClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        #49688#45225#44552#50529
        #49457#47749
        #52264#53944
        #49457#48324
        #45208#51060
        #49884#44036
        #52488#51116#51652
        #48372#54744#51088#44201
        #51652#47308#49892
        #45812#45817#51032
        #49688#45225#44552#50529
        #52852#46300
        #54788#44552
        #44228#51340
        #48120#49688#44552
        #52509#44552#50529
        #52397#44396#44552#50529
        #44553#50668#48376#51064#48512#45812
        #48708#44553#50668#48376#51064#48512#45812
        'Jinryo_pid'
        'jubsu_id'
        'sanjung'
        'health'
        'choje'
        'jong'
        'treatroom'
        'tong2'
        'tongreceipt'
        'hyunreceipt'
        'D/C'
        'teakRye'
        #51652#47308#44396#48516'(jin_gu)'
        #48120#49688#49688#45225#53076#46300'(misu_pid)'
        #49688#45225#51068#51088
        #51077#50896#44396#48516
        'doc_code'
        #52376#48169#51068#47144
        #52376#48169#51068#49688
        #51452#49345#48337
        #48372#54840#51652#47308#54869#51064#48264#54840)
      ColumnSize.Save = True
      ColumnSize.Key = '.\gridset\gridSet_sunapReprint.ini'
      ColumnSize.Section = 'HxJinryo_P_grdSunapReprint'
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
      FixedColWidth = 90
      FixedRowHeight = 28
      FixedRowAlways = True
      FixedFont.Charset = ANSI_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -13
      FixedFont.Name = #47569#51008' '#44256#46357
      FixedFont.Style = [fsBold]
      FloatFormat = '%.0n'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
      MouseActions.SelectOnRightClick = True
      MouseActions.SizeFixedCol = True
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
      SortSettings.Show = True
      VAlignment = vtaCenter
      Version = '8.4.4.1'
      WordWrap = False
      ColWidths = (
        90
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
        70
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
        64
        64
        89
        64
        64
        64
        64
        64
        64
        64
        64)
      object clbSunapFinish: TCheckListBox
        Left = 42
        Top = 44
        Width = 165
        Height = 100
        ItemHeight = 17
        Items.Strings = (
          '')
        TabOrder = 4
        Visible = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 222
    Width = 800
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      800
      41)
    object btnPrint: TButton
      Left = 600
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49440#53469' '#51064#49604
      TabOrder = 0
      OnClick = btnPrintClick
    end
    object btnClose: TButton
      Left = 704
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #52712#49548
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'HxJiinryo_p_f'
    Version = '1.4.1.4'
    Left = 304
    Top = 114
  end
end
