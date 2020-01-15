object Chamgo_f: TChamgo_f
  Left = 291
  Top = 280
  BorderIcons = [biSystemMenu]
  Caption = 'Voice of Customer'
  ClientHeight = 341
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #46027#50880
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Memo1: TMemo
    Left = 0
    Top = 151
    Width = 372
    Height = 149
    Hint = ' '
    Align = alClient
    Ctl3D = False
    ImeMode = imSHanguel
    ImeName = 'Microsoft Office IME 2007'
    ParentCtl3D = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object plbottom: TPanel
    Left = 0
    Top = 300
    Width = 372
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Shape1: TShape
      Left = 288
      Top = 5
      Width = 1
      Height = 33
    end
    object Shape2: TShape
      Left = 184
      Top = 5
      Width = 1
      Height = 33
    end
    object Shape3: TShape
      Left = 87
      Top = 5
      Width = 1
      Height = 33
    end
    object BtnConfirm: TButton
      Left = 216
      Top = 8
      Width = 65
      Height = 25
      Caption = #51200#51109
      TabOrder = 0
      OnClick = BtnConfirmClick
    end
    object spSkinButton1: TButton
      Left = 5
      Top = 8
      Width = 77
      Height = 25
      Caption = #51068#51088#48324' '#48372#44592
      TabOrder = 1
      OnClick = spSkinButton1Click
    end
    object spSkinButton2: TButton
      Left = 155
      Top = 8
      Width = 65
      Height = 25
      Caption = #49688#45225#45824#44592
      TabOrder = 2
      Visible = False
      OnClick = spSkinButton2Click
    end
    object spSkinButton3: TButton
      Left = 95
      Top = 8
      Width = 54
      Height = 25
      Caption = #49325#51228
      TabOrder = 3
      OnClick = spSkinButton3Click
    end
    object spSkinButton4: TButton
      Left = 295
      Top = 8
      Width = 65
      Height = 25
      Caption = #45803#44592
      TabOrder = 4
      OnClick = spSkinButton4Click
    end
  end
  object pltop: TPanel
    Left = 0
    Top = 0
    Width = 372
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 10
      Width = 48
      Height = 12
      AutoSize = False
      Caption = #51077#47141#51068#51088
    end
    object dtToday: TDateTimePicker
      Left = 62
      Top = 5
      Width = 109
      Height = 21
      Date = 39234.000000000000000000
      Time = 0.987363993001054000
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 0
      OnChange = dtTodayChange
    end
  end
  object plgird: TPanel
    Left = 0
    Top = 30
    Width = 372
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object grdWhisper: TAdvStringGrid
      Left = 0
      Top = 5
      Width = 372
      Height = 106
      Cursor = crDefault
      ColCount = 3
      DrawingStyle = gdsClassic
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnClickCell = grdWhisperClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ColumnHeaders.Strings = (
        ''
        #51068#51088
        #45236#50857)
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
      FixedColWidth = 32
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
        32
        98
        201)
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
  end
end
