object CID_f: TCID_f
  Left = 607
  Top = 85
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CID_f'
  ClientHeight = 631
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrdTelRec: TAdvStringGrid
    Left = 0
    Top = 481
    Width = 459
    Height = 150
    Cursor = crDefault
    Align = alClient
    ColCount = 6
    DrawingStyle = gdsClassic
    RowCount = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnClickCell = GrdTelRecClickCell
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      ''
      #49884#44036
      #51204#54868#48264#54840
      #49457#47749
      #52264#53944#48264#54840
      #44396#48516)
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
      44
      83
      51
      64
      154)
    RowHeights = (
      22
      22
      22
      22
      22)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 311
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 5
    object lblvarKind: TLabel
      Left = 175
      Top = 5
      Width = 46
      Height = 13
      Caption = 'lblvarKind'
      Visible = False
    end
    object lblTime: TLabel
      Left = 186
      Top = 156
      Width = 111
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblTelDate: TLabel
      Left = 311
      Top = 5
      Width = 80
      Height = 13
      Caption = 'lblTelDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblStatus: TLabel
      Left = 11
      Top = 7
      Width = 205
      Height = 16
      AutoSize = False
      Caption = 'lblStatus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblnumber: TLabel
      Left = 1
      Top = 1
      Width = 457
      Height = 51
      Align = alTop
      Alignment = taCenter
      Caption = '016-6565-9632'
      Font.Charset = ANSI_CHARSET
      Font.Color = 10485760
      Font.Height = -36
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 288
    end
    object lblName: TLabel
      Left = 200
      Top = 60
      Width = 90
      Height = 29
      AutoSize = False
      Caption = #44053#54861#44600#46041
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblJuso: TLabel
      Left = 200
      Top = 130
      Width = 146
      Height = 36
      AutoSize = False
      Caption = #44221#44592#46020' '#49688#50896#49884' '#54036#45804#44396' '#46020#50896#46041' 454-55'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lblgender: TLabel
      Left = 290
      Top = 70
      Width = 72
      Height = 29
      AutoSize = False
      Caption = '('#45224'/35)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = #46027#50880
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblChart: TLabel
      Left = 200
      Top = 105
      Width = 146
      Height = 16
      AutoSize = False
      Caption = '1234567890123'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Pic: TImage
      Left = 10
      Top = 48
      Width = 151
      Height = 128
      Cursor = crHandPoint
      Proportional = True
      Stretch = True
    end
    object btnInfo: TButton
      Left = 9
      Top = 256
      Width = 82
      Height = 25
      Caption = #54872#51088#51221#48372#48372#44592
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnInfoClick
    end
    object spSkinButton2: TButton
      Left = 217
      Top = 257
      Width = 88
      Height = 25
      Caption = #51088#49464#55176#44592#47197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = spSkinButton2Click
    end
    object spSkinButton1: TButton
      Left = 401
      Top = 257
      Width = 75
      Height = 25
      Caption = #50696#50557#46321#47197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = spSkinButton1Click
    end
    object memTelRec: TMemo
      Left = 9
      Top = 184
      Width = 427
      Height = 67
      BorderStyle = bsNone
      Color = 15126203
      Ctl3D = False
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'memTelRec')
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object LblTelnumber: TEdit
      Left = 217
      Top = 202
      Width = 61
      Height = 19
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 4
      Text = 'LblTelnumber'
      Visible = False
    end
    object Button3: TButton
      Left = 8
      Top = 285
      Width = 428
      Height = 25
      Caption = #47928#51088#47700#49884#51648#47196'  '#50557#46020' '#48372#45236#44592
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 324
      Top = 158
      Width = 35
      Height = 25
      Hint = #51204#54868#51333#47308
      Caption = #9742
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 340
      Top = 40
      Width = 91
      Height = 25
      Caption = 'say number'
      TabOrder = 7
      Visible = False
      OnClick = Button1Click
    end
    object btnTelMem: TButton
      Left = 97
      Top = 256
      Width = 114
      Height = 25
      Caption = #53685#54868' '#47700#47784' '#51200#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnTelMemClick
    end
    object btnSave2: TButton
      Left = 311
      Top = 257
      Width = 104
      Height = 25
      Caption = #51204#54868#48264#54840#51200#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnSave2Click
    end
  end
  object pnlSave: TPanel
    Left = 0
    Top = 311
    Width = 459
    Height = 170
    Align = alTop
    TabOrder = 2
    Visible = False
    object pnlTelNoRegi: TPanel
      Left = 0
      Top = 45
      Width = 311
      Height = 86
      TabOrder = 0
      object spSkinLabel4: TLabel
        Left = 10
        Top = 5
        Width = 80
        Height = 20
        AutoSize = False
        Caption = #51204#54868#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object spSkinLabel3: TLabel
        Left = 10
        Top = 56
        Width = 80
        Height = 20
        AutoSize = False
        Caption = #52320#53944
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object spSkinLabel2: TLabel
        Left = 10
        Top = 31
        Width = 80
        Height = 20
        AutoSize = False
        Caption = #49457#47749
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object edtChart: TEdit
        Left = 90
        Top = 56
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 0
        Text = 'edtChart'
      end
      object edtTel: TEdit
        Left = 90
        Top = 5
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2003'
        TabOrder = 1
        Text = 'edtTel'
      end
      object edtName: TEdit
        Left = 90
        Top = 31
        Width = 121
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'edtName'
        OnKeyPress = edtNameKeyPress
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 457
      Height = 40
      Align = alTop
      TabOrder = 1
      object lblCap: TLabel
        Left = 10
        Top = 10
        Width = 80
        Height = 20
        AutoSize = False
        Caption = #51204#54868#48264#54840' '#46321#47197
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object progressbar: TAdvProgressBar
        Left = 10
        Top = 37
        Width = 116
        Height = 3
        BorderColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Level0Color = clWhite
        Level0ColorTo = 14811105
        Level1ColorTo = 13303807
        Level2Color = 5483007
        Level2ColorTo = 11064319
        Level3ColorTo = 13290239
        Level1Perc = 70
        Level2Perc = 90
        Position = 50
        ShowBorder = True
        ShowPercentage = False
        ShowPosition = False
        Steps = 20
        Version = '1.3.1.0'
      end
      object lblTrcode: TLabel
        Left = 155
        Top = 10
        Width = 96
        Height = 13
        AutoSize = False
        Caption = 'lblTrcode'
        Visible = False
      end
    end
    object btnRefresh: TButton
      Left = 89
      Top = 135
      Width = 55
      Height = 25
      Caption = #52712#49548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnRefreshClick
    end
    object btnSave: TButton
      Left = 154
      Top = 135
      Width = 55
      Height = 25
      Caption = #48264#54840#51200#51109
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnSaveClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 17
    Top = 73
  end
end
