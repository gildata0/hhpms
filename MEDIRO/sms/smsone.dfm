object smsone_f: Tsmsone_f
  Left = 287
  Top = 165
  Caption = 'smsone_f'
  ClientHeight = 634
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #46027#50880
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnlMMS: TAdvPanel
    Left = 181
    Top = 0
    Width = 236
    Height = 634
    Align = alLeft
    Font.Charset = ANSI_CHARSET
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
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -12
    Caption.Font.Name = #46027#50880
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
    object Image1: TImage
      Left = 10
      Top = 348
      Width = 171
      Height = 91
      Proportional = True
    end
    object Image2: TImage
      Left = 10
      Top = 443
      Width = 171
      Height = 91
      Proportional = True
    end
    object Image3: TImage
      Left = 10
      Top = 538
      Width = 171
      Height = 91
      Proportional = True
    end
    object AdvPanel3: TAdvPanel
      Left = 1
      Top = 1
      Width = 234
      Height = 21
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.7.9'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clBtnText
      Caption.Font.Height = 15
      Caption.Font.Name = 'Arial'
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
      object Label7: TLabel
        Left = 5
        Top = 4
        Width = 22
        Height = 14
        Caption = #51228#47785
        Transparent = True
      end
      object edtSubject: TEdit
        Left = 35
        Top = -1
        Width = 198
        Height = 22
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'edtSubject'
      end
    end
    object memMMsContent: TMemo
      Left = 1
      Top = 22
      Width = 234
      Height = 294
      Align = alTop
      BorderStyle = bsNone
      Color = 16773866
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = #46027#50880
      Font.Style = [fsBold]
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 1000
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
      OnChange = memContentChange
    end
    object Button2: TButton
      Left = 170
      Top = 350
      Width = 26
      Height = 21
      Caption = 'X'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 171
      Top = 445
      Width = 26
      Height = 21
      Caption = 'X'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 171
      Top = 540
      Width = 26
      Height = 21
      Caption = 'X'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button6: TButton
      Left = 10
      Top = 320
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 5
      OnClick = Button6Click
    end
  end
  object pgSMS: TPageControl
    Left = 439
    Top = 23
    Width = 713
    Height = 500
    ActivePage = TabSheet1
    TabOrder = 2
    OnChange = pgSMSChange
    object TabSheet1: TTabSheet
      Caption = #48372#45244#47532#49828#53944
      object pnlChoiceMenu: TPanel
        Left = 0
        Top = 0
        Width = 705
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object btnChoice: TButton
          Left = 5
          Top = 7
          Width = 107
          Height = 24
          Caption = #49440#53469' '#44032#51256#50724#44592
          TabOrder = 0
          OnClick = btnChoiceClick
        end
        object btnDSend: TButton
          Left = 118
          Top = 7
          Width = 100
          Height = 25
          Caption = #47784#46160' '#51648#44552' '#48372#45236#44592
          TabOrder = 1
          OnClick = btnDSendClick
        end
        object btnDel: TButton
          Left = 224
          Top = 7
          Width = 64
          Height = 25
          Caption = #47784#46160' '#49325#51228
          TabOrder = 2
          OnClick = btnDelClick
        end
      end
      object grdSMS: TAdvStringGrid
        Left = 14
        Top = 38
        Width = 496
        Height = 231
        Cursor = crDefault
        ColCount = 15
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = 14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          ''
          #49457#47749
          #52264#53944#48264#54840
          #54648#46300#54256
          #51204#54868#48264#54840
          #47700#51068
          #45236#50857
          #46321#47197#51068
          #50696#51221#51068
          #50696#51221#49884
          #51452#49548
          #53685#49688
          #44536#47353
          #49569#49888#50668#48512
          #53076#46300)
        ColumnSize.Save = True
        ColumnSize.Key = '.\db.ini'
        ColumnSize.Section = 'smsSendList'
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
          64
          84
          94
          115
          86
          64
          64
          64
          64
          64
          64
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
    end
    object TabSheet2: TTabSheet
      Caption = #51060#47784#54000#53080
      ImageIndex = 1
      object pnlBody: TPanel
        Left = 3
        Top = 13
        Width = 662
        Height = 321
        Caption = 'pnlBody'
        TabOrder = 0
        object PnldataStorage: TPanel
          Left = 301
          Top = 1
          Width = 427
          Height = 319
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'PnldataStorage'
          Color = 14073523
          ParentBackground = False
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 0
            Top = 38
            Height = 281
            Beveled = True
            MinSize = 3
            ExplicitLeft = 131
            ExplicitTop = 0
            ExplicitHeight = 384
          end
          object SbSms: TScrollBox
            Left = 9
            Top = 56
            Width = 243
            Height = 278
            Color = clWhite
            Ctl3D = False
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clBtnText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnResize = SbSmsResize
            object FlowPanel1: TFlowPanel
              Left = 28
              Top = 28
              Width = 193
              Height = 209
              BevelOuter = bvNone
              Caption = 'FlowPanel1'
              Color = 16774387
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
            end
          end
          object spSkinPanel2: TPanel
            Left = 0
            Top = 0
            Width = 427
            Height = 38
            Align = alTop
            Caption = 'spSkinPanel2'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            object lblContent: TLabel
              Left = 523
              Top = 9
              Width = 80
              Height = 13
              Caption = 'lblContent'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              Visible = False
            end
            object btnSch: TButton
              Left = 131
              Top = 5
              Width = 51
              Height = 27
              Caption = #52286#44592
              TabOrder = 0
              OnClick = btnSchClick
            end
            object btnAdd: TButton
              Left = 185
              Top = 5
              Width = 72
              Height = 27
              Caption = #47928#51088#52628#44032
              TabOrder = 2
              OnClick = btnAddClick
            end
            object edtSMSsch: TAdvEdit
              Left = 6
              Top = 6
              Width = 121
              Height = 26
              DefaultHandling = True
              EmptyTextStyle = []
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              Lookup.Font.Charset = DEFAULT_CHARSET
              Lookup.Font.Color = clWindowText
              Lookup.Font.Height = -11
              Lookup.Font.Name = 'Arial'
              Lookup.Font.Style = []
              Lookup.Separator = ';'
              AutoSize = False
              Color = clWindow
              Ctl3D = False
              ImeName = 'Microsoft Office IME 2007'
              ParentCtl3D = False
              TabOrder = 1
              Text = 'edtSearch'
              Visible = True
              Version = '3.4.9.0'
            end
            object EdtContNo: TEdit
              Left = 258
              Top = 5
              Width = 96
              Height = 19
              BorderStyle = bsNone
              Ctl3D = False
              ImeName = 'Microsoft Office IME 2007'
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
              Text = 'EdtContNo'
              Visible = False
            end
          end
        end
        object AdvPanel4: TAdvPanel
          Left = 1
          Top = 1
          Width = 300
          Height = 319
          Align = alLeft
          TabOrder = 1
          UseDockManager = True
          Version = '2.5.7.9'
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = ANSI_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -12
          Caption.Font.Name = #46027#50880
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
          object TVSms: TTreeView
            Left = 1
            Top = 39
            Width = 298
            Height = 279
            Align = alClient
            Color = 15391444
            Ctl3D = False
            DragMode = dmAutomatic
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = []
            Indent = 19
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = TreePopUP
            ReadOnly = True
            TabOrder = 0
            OnClick = TVSmsClick
            OnDragDrop = TVSmsDragDrop
            OnDragOver = TVSmsDragOver
            OnMouseDown = TVSmsMouseDown
          end
          object AdvPanel5: TAdvPanel
            Left = 1
            Top = 1
            Width = 298
            Height = 38
            Align = alTop
            TabOrder = 1
            UseDockManager = True
            Version = '2.5.7.9'
            Caption.Color = clHighlight
            Caption.ColorTo = clNone
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clWindowText
            Caption.Font.Height = -12
            Caption.Font.Name = #46027#50880
            Caption.Font.Style = []
            Caption.Indent = 0
            DoubleBuffered = True
            StatusBar.Font.Charset = DEFAULT_CHARSET
            StatusBar.Font.Color = clWindowText
            StatusBar.Font.Height = -11
            StatusBar.Font.Name = 'Tahoma'
            StatusBar.Font.Style = []
            Text = ''
            FullHeight = 38
            object spSkinButton13: TButton
              Left = 4
              Top = 5
              Width = 38
              Height = 27
              Caption = #52629#49548
              TabOrder = 0
              OnClick = spSkinButton13Click
            end
            object spSkinButton14: TButton
              Left = 43
              Top = 5
              Width = 37
              Height = 27
              Caption = #51204#52404
              TabOrder = 1
              OnClick = spSkinButton14Click
            end
            object spSkinButton15: TButton
              Left = 81
              Top = 5
              Width = 37
              Height = 27
              Caption = #9650
              TabOrder = 2
              OnClick = spSkinButton15Click
            end
            object spSkinButton16: TButton
              Left = 119
              Top = 5
              Width = 37
              Height = 27
              Caption = #9660
              TabOrder = 3
              OnClick = spSkinButton16Click
            end
            object btnGroupSave: TButton
              Left = 201
              Top = 5
              Width = 92
              Height = 27
              Caption = #51200#51109
              TabOrder = 4
              OnClick = btnGroupSaveClick
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #44536#47548#47928#51088
      ImageIndex = 2
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 156
        Height = 472
        Align = alLeft
        Indent = 19
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = TreeView1Click
      end
      object AdvPanel1: TAdvPanel
        Left = 156
        Top = 0
        Width = 549
        Height = 472
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.5.7.9'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBtnText
        Caption.Font.Height = 15
        Caption.Font.Name = 'Arial'
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
        object tl: TThumbnailList
          Left = 1
          Top = 1
          Width = 547
          Height = 374
          Align = alClient
          Columns = 2
          ScrollStyle = ssNormal
          ScrollColor = clBlack
          ScrollWidth = 16
          ShowSelection = False
          TabOrder = 0
          Thumbnails = <>
          ThumbnailSize = 200
          OnClick = tlClick
          Version = '1.1.0.4'
        end
        object AdvPanel2: TAdvPanel
          Left = 1
          Top = 375
          Width = 547
          Height = 96
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          UseDockManager = True
          Version = '2.5.7.9'
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clBtnText
          Caption.Font.Height = 15
          Caption.Font.Name = 'Arial'
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
          object AdvEdit1: TAdvEdit
            Left = 10
            Top = 9
            Width = 381
            Height = 22
            DefaultHandling = True
            EmptyTextStyle = []
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            ImeName = 'Microsoft Office IME 2007'
            ReadOnly = True
            TabOrder = 0
            Text = 'AdvEdit1'
            Visible = False
            Version = '3.4.9.0'
          end
          object AdvEdit2: TAdvEdit
            Left = 10
            Top = 34
            Width = 381
            Height = 22
            DefaultHandling = True
            EmptyTextStyle = []
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            ImeName = 'Microsoft Office IME 2007'
            ReadOnly = True
            TabOrder = 1
            Text = 'AdvEdit1'
            Visible = False
            Version = '3.4.9.0'
          end
          object AdvEdit3: TAdvEdit
            Left = 10
            Top = 59
            Width = 381
            Height = 22
            DefaultHandling = True
            EmptyTextStyle = []
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'MS Sans Serif'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            ImeName = 'Microsoft Office IME 2007'
            ReadOnly = True
            TabOrder = 2
            Text = 'AdvEdit1'
            Visible = False
            Version = '3.4.9.0'
          end
        end
      end
    end
  end
  object spSkinPanel1: TPanel
    Left = 0
    Top = 0
    Width = 181
    Height = 634
    Align = alLeft
    Caption = 'spSkinPanel1'
    ShowCaption = False
    TabOrder = 0
    object lblSendno: TLabel
      Left = 14
      Top = 292
      Width = 64
      Height = 12
      Caption = #48372#45236#45716' '#48264#54840
      Transparent = True
    end
    object Label1: TLabel
      Left = 49
      Top = 405
      Width = 12
      Height = 12
      Caption = #49884
      Transparent = True
    end
    object Label2: TLabel
      Left = 102
      Top = 405
      Width = 12
      Height = 12
      Caption = #48516
      Transparent = True
    end
    object Label3: TLabel
      Left = 26
      Top = 311
      Width = 52
      Height = 12
      Caption = #48155#45716' '#48264#54840
      Transparent = True
    end
    object Label4: TLabel
      Left = 10
      Top = 8
      Width = 64
      Height = 12
      Caption = #51204#49569' '#47700#49884#51648
      Transparent = True
    end
    object LblMemcontentSize: TLabel
      Left = 106
      Top = 8
      Width = 26
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LblMemcontentSize'
      Color = 16773866
      ParentColor = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 139
      Top = 8
      Width = 12
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '90'
      Color = 16773866
      ParentColor = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 26
      Top = 330
      Width = 52
      Height = 12
      Caption = #48155#45716' '#49324#46988
      Transparent = True
    end
    object lblRest: TLabel
      Left = 106
      Top = 521
      Width = 9
      Height = 15
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Label8: TLabel
      Left = 11
      Top = 523
      Width = 24
      Height = 12
      Caption = #51092#50529
      Transparent = False
    end
    object lblChart: TLabel
      Left = 70
      Top = 564
      Width = 4
      Height = 12
      Color = 4227072
      ParentColor = False
      Transparent = False
    end
    object Label9: TLabel
      Left = 15
      Top = 565
      Width = 48
      Height = 12
      Caption = #52264#53944#48264#54840
      Transparent = False
    end
    object btnSend: TButton
      Left = 11
      Top = 424
      Width = 75
      Height = 25
      Caption = #44060#48324#51204#49569
      TabOrder = 0
      OnClick = btnSendClick
    end
    object edtSendNo: TEdit
      Left = 80
      Top = 288
      Width = 91
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
      Text = 'edtSendNo'
      OnExit = edtSendNoExit
      OnKeyPress = edtSendNoKeyPress
    end
    object cbYeyak: TCheckBox
      Left = 11
      Top = 365
      Width = 97
      Height = 17
      Caption = #50696#50557#51204#49569
      TabOrder = 2
    end
    object yeyakDayEdit: TDateTimePicker
      Left = 11
      Top = 381
      Width = 91
      Height = 20
      Date = 37989.000000000000000000
      Time = 0.432708865700988100
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      TabOrder = 3
      OnChange = yeyakDayEditChange
    end
    object edtRecvNo: TEdit
      Left = 80
      Top = 308
      Width = 91
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
      Text = 'edtRecvNo'
      OnExit = edtRecvNoExit
      OnKeyPress = edtRecvNoKeyPress
    end
    object Button1: TButton
      Left = 91
      Top = 424
      Width = 75
      Height = 25
      Caption = #45803#44592
      TabOrder = 7
      OnClick = Button1Click
    end
    object edtName: TEdit
      Left = 80
      Top = 328
      Width = 91
      Height = 20
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
      Text = 'edtName'
      OnExit = edtRecvNoExit
    end
    object edtDay: TEdit
      Left = 125
      Top = 365
      Width = 121
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 9
      Text = 'edtDay'
      Visible = False
    end
    object edtTime: TEdit
      Left = 125
      Top = 390
      Width = 121
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 11
      Text = 'edtTime'
      Visible = False
    end
    object edtMin: TEdit
      Left = 130
      Top = 445
      Width = 121
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 12
      Text = 'edtMin'
      Visible = False
    end
    object edtMonth: TEdit
      Left = 130
      Top = 465
      Width = 121
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 13
      Text = 'edtMonth'
      Visible = False
    end
    object Button5: TButton
      Left = 11
      Top = 490
      Width = 75
      Height = 25
      Caption = #47196#44536#51064
      TabOrder = 14
      OnClick = Button5Click
    end
    object spSkinButton1: TButton
      Left = 147
      Top = 23
      Width = 28
      Height = 25
      Caption = '>>'
      TabOrder = 10
      OnClick = spSkinButton1Click
    end
    object pgKind: TPageControl
      Left = 5
      Top = 50
      Width = 166
      Height = 236
      ActivePage = TabSheet4
      TabOrder = 15
      OnChange = pgKindChange
      object TabSheet4: TTabSheet
        Caption = 'SMS'
        object memContent: TMemo
          Left = 4
          Top = 5
          Width = 154
          Height = 224
          BorderStyle = bsNone
          Color = 16773866
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = #46027#50880
          Font.Style = [fsBold]
          ImeMode = imSHanguel
          ImeName = 'Microsoft Office IME 2007'
          MaxLength = 1000
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnChange = memContentChange
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'MMS'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Memo1: TMemo
          Left = 9
          Top = 1
          Width = 144
          Height = 213
          ImeName = 'Microsoft Office IME 2007'
          Lines.Strings = (
            'MMS'#51204#49569#50504#45236
            '1. 1000'#51088' '#47928#51088
            '  '#50689#47928#44592#51456' 2000'#48148#51060#53944', '
            #54620#44544' 1000'#51088#44620#51648' '#54620#48264#50640' '
            #51204#49569#54624' '#49688' '#51080#49845#45768#45796'.'
            '2. '#44536#47548#47928#51088
            '  1000'#51088' '#47928#51088#47484' '#54252#54632#54616#50668' '
            #54620#48264#50640' '#49464#51109#51032' '#44536#47548#54028#51068
            #51012' '#51204#49569#54624' '#49688' '#51080#49845#45768#45796'.'
            #44536#47548#47928#51088#50640#49436' '#49440#53469#54616#50668' '
            #51204#49569#54624' '#49688' '#51080#49845#45768#45796'.'
            #51060#50857#50836#44552
            '1000'#51088' '#47928#51088' 1'#53685' 90'#50896
            #44536#47548#47928#51088' 1'#53685' 250'#50896)
          TabOrder = 0
        end
      end
    end
    object CmMinute: TComboBox
      Left = 65
      Top = 402
      Width = 36
      Height = 20
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 6
      Text = 'CmMinute'
      OnChange = yeyakDayEditChange
    end
    object CMTime: TComboBox
      Left = 12
      Top = 402
      Width = 36
      Height = 20
      Ctl3D = False
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentCtl3D = False
      TabOrder = 4
      Text = 'CMTime'
      OnChange = yeyakDayEditChange
    end
  end
  object pnlContentsSave: TAdvPanel
    Left = 153
    Top = 252
    Width = 264
    Height = 374
    BevelOuter = bvNone
    Color = clWhite
    DragKind = dkDock
    TabOrder = 3
    UseDockManager = True
    Visible = False
    Version = '2.5.7.9'
    CanMove = True
    CanSize = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -12
    Caption.Font.Name = #46027#50880
    Caption.Font.Style = []
    Caption.Indent = 0
    Caption.Visible = True
    DoubleBuffered = False
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 221
    object pnlSmsCont: TPanel
      Left = 0
      Top = 18
      Width = 264
      Height = 292
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DesignSize = (
        264
        292)
      object Image4: TImage
        Left = 0
        Top = 0
        Width = 264
        Height = 292
        Align = alClient
        AutoSize = True
        Center = True
        Picture.Data = {
          07544269746D6170F22D0100424DF22D0100000000003600000028000000A300
          00009D0000000100180000000000BC2D0100120B0000120B0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEBC6B8EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EFC5B8EBC5B9E9C6B9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEDC4BBEBC6B8FFF0EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF1EBFFF1
          EAEBC6B8EDC4BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C7B8FCF0EAFFF0EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFEFECFFF1EBFEF1E9ECC6BAFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FEF0EAFEF0EAFFF2EAFFF5EDFFF5EFFFF6EFFFF5EEFFF5F1FDF4F0FEF5F1FEF5
          F1FEF5F1FEF5F1FEF5F1FFF6F2FFF6F2FFF6F2FFF6F2FFF6F2FFF6F2FFF6F2FF
          F7F3FFF7F3FFF7F3FEF7F4FEF7F4FFF8F5FFF8F5FFF8F5FFF9F4FFF9F4FFFAF5
          FFF9F4FFF9F4FFFAF5FFF9F4FFF9F4FFF9F4FFF9F4FFF9F4FFF9F4FFFAF5FEF9
          F6FEF9F6FEF9F6FEF9F6FEF9F6FFFAF7FFFAF7FFFAF7FFFAF9FFFAF9FFFAF9FF
          FAF9FFFAF9FFFBFAFFFBF8FFFBF8FFFBFAFFFBFAFFFBFAFFFCFBFFFCFBFFFCFB
          FFFCFBFFFCFBFEFCFBFEFCFBFEFCFBFFFDFCFFFDFCFFFDFCFFFDFCFFFDFCFFFD
          FCFFFDFCFFFDFCFFFDFCFFFEFDFFFEFDFFFEFDFFFEFDFFFEFEFFFEFEFFFEFEFF
          FEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFE
          FFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFDFDFFFDFDFFFD
          FCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFCFFFDFCFFFCFBFFFCFBFFFCFBFF
          FCFBFFFCFBFFFBFAFFFBFAFFFBFAFFFBF8FFFBF8FFFBF8FFFBF8FFF6F2FFF6F2
          FEF5F1FEF5F1FEF5F1FEF5F1FEF5F1FDF4F0FFF5F1FFF5EEFFF6EFFFF5EFFFF5
          EDFFF2EAFEF0EAFEF0EAFFF1EBFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFDF2EAFEF2E8FFF2E6F8E8DBF6E6D5F7E6D3FAE6
          D4F9E6D1F9E7D0F9E7D0F8E6CFF7E5CEF7E5CEF6E4CDF5E3CCF5E3CCF6E3C8F6
          E3C8F5E2C7F5E2C7F4E1C6F3E0C5F3E0C5F2DFC4F4E0C1F4E0C1F3DFC0F2DEBF
          F2DEBFF1DEBDF0DDBCF0DDBCF1DEBDF0DDBCF0DDBCF1DEBDF0DDBCF1DEBDF0DD
          BCF1DEBDF0DDBCF0DDBCF2DCB8F2DCB8F1DBB7F0DAB6F0DAB6EFD9B5EED8B4EE
          D8B4EFD9B0EFD9B0EED8AFEED8AFEDD7AEECD6ADECD6ADECD6ADEED5A9EDD4A8
          EDD4A8ECD3A7EBD2A6EBD2A6EAD1A5EAD1A5ECD2A3ECD2A3EBD1A2EBD1A2EAD0
          A1EAD0A1E9CFA0E9CFA0E8D09CE8D09CE8D09CE8D09CE7CF9BE7CF9BE7CF9BE7
          CF9BE8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE8CD9A
          E8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE8CD9AE6CE9AE6CE9AE7CF9BE7CF9BE7CF
          9BE7CF9BE8D09CE8D09CE9CFA0E9CFA0E9CFA0EAD0A1EAD0A1EBD1A2EBD1A2EB
          D1A2EAD2A4EAD2A4EBD3A5EBD3A5ECD4A6EDD5A7EDD5A7EDD5A7ECD6ADECD6AD
          ECD6ADEDD7AEF5E3CCF5E3CCF6E4CDF7E5CEF7E5CEF8E6CFF9E7D0F9E7D0F9E6
          D1FAE6D4F7E6D3F6E6D5F8E8DBFFF2E6FEF2E8FDF2EAFFF1EBFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAF5E8E1FFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFCEFE7FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAF7EAE3FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFBEEE6FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFDF0E8FFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FCEFE7FDF0E8FFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFEF1E9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAF8EC
          E4FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFEF1E9FFF2EAFFF2EAFEF1E9FFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFA
          EDE5FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5
          B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9FFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAEDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9FEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAEDC5
          B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAEDC5B9FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5
          B9FFF2EAFFF2EAFFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FF
          F2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAEDC5B9
          EDC5B9FFF2EAEDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9FFF2EAEDC5B9EDC5
          B9EDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FF
          F2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FF
          F2EAFFF2EAFFF2EAEDC5B9EDC5B9EDC5B9FFF2EAFFF2EAFFF2EAEDC5B9FFF2EA
          FFF2EAFFF2EAFFF2EAEDC5B9EDC5B9FFF2EAEDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9FFF2EAEDC5B9EDC5B9EDC5B9FFF2EAEDC5B9EDC5B9FFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAEDC5B9
          FFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAEDC5B9EDC5B9FFF2EAEDC5
          B9EDC5B9EDC5B9EDC5B9FFF2EAEDC5B9EDC5B9EDC5B9FFF2EAEDC5B9EDC5B9ED
          C5B9FFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAED
          C5B9EDC5B9EDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          EDC5B9FFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAEDC5B9FFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2
          EAEDC5B9EDC5B9FFF2EAEDC5B9EDC5B9EDC5B9FFF2EAEDC5B9EDC5B9EDC5B9FF
          F2EAEDC5B9EDC5B9EDC5B9EDC5B9FFF2EAEDC5B9FEF1E9FFF1EBFEF0EAFEF1E9
          FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFF
          F2EAFFF2EAFFF2EAEDC5B9FFF2EAEDC5B9FFF2EAEDC5B9FFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          EDC5B9EDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9EDC5
          B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9
          FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FF
          F0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAEDC5B9EDC5B9FFF2EAEDC5B9FFF2EA
          FFF2EAEDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5
          B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAEDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAEDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9FEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAEDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9FFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0
          EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EB
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBED
          C5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2EAFFF1EBFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFEF1E9FF
          F1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC5B9FFF0E9FFF2
          EAFFF1EBFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EA
          FFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2
          EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFFF2EAFF
          F2EAFFF2EAFFF2EAFEF1E9FFF1EBFEF0EAFEF1E9FFF1EBEDC5B9FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFEBC3B7FFF1EBFEF2E8FEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFE
          F0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EA
          FEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0
          EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFE
          F0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EA
          FEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0
          EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFE
          F0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EA
          FEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0
          EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFE
          F0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EA
          FEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0
          EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFE
          F0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFEF0EAFFF1EBFFF1EAFFF1EBFCF0EA
          EDC5B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC5BCEFC5B9FFF0EAFFF0E9FF
          F0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9
          FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0
          E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FF
          F0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9
          FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0
          E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FF
          F0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9
          FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0
          E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FF
          F0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9
          FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0
          E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FF
          F0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9FFF0E9
          FFF2EAFFF1E8FBF1EAEDC5B9ECC4B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEEC7B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5
          B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9ED
          C5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9EDC5B9
          EDC5B9EDC5B9EDC5B9EDC5B9E9C5BBEBC5B9EDC4BBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
        ExplicitLeft = 38
        ExplicitWidth = 289
        ExplicitHeight = 289
      end
      object memSmsContentsSave: TMemo
        Left = 16
        Top = 58
        Width = 232
        Height = 211
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderStyle = bsNone
        Color = 16775410
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        Lines.Strings = (
          'memSmsContentsSave')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object pnlSaveButton: TPanel
      Left = 0
      Top = 310
      Width = 264
      Height = 64
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnlSaveButton'
      Color = clWhite
      ShowCaption = False
      TabOrder = 1
      DesignSize = (
        264
        64)
      object Label10: TLabel
        Left = 10
        Top = 9
        Width = 24
        Height = 12
        Caption = #51228#47785
      end
      object Label11: TLabel
        Left = 10
        Top = 38
        Width = 24
        Height = 12
        Caption = #48264#54840
        Visible = False
      end
      object btnSave: TButton
        Left = 103
        Top = 31
        Width = 70
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #51200#51109
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object btnCls: TButton
        Left = 179
        Top = 31
        Width = 70
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #45803#44592
        TabOrder = 1
        OnClick = btnClsClick
      end
      object EdtContname: TEdit
        Left = 40
        Top = 6
        Width = 210
        Height = 19
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Ctl3D = False
        Enabled = False
        ImeName = 'Microsoft Office IME 2007'
        ParentCtl3D = False
        TabOrder = 2
        Text = 'EdtContname'
      end
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\db.ini'
    SaveKey = 'smsone_f'
    Version = '1.4.1.4'
    Left = 390
    Top = 15
  end
  object OD: TOpenPictureDialog
    Left = 395
    Top = 115
  end
  object TreePopUP: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = TreePopUPPopup
    Left = 539
    Top = 146
    object N32: TMenuItem
      Tag = 1
      Caption = #54637#47785#52628#44032
      OnClick = N32Click
    end
    object N33: TMenuItem
      Tag = 2
      Caption = #50500#47000#54637#47785#52628#44032
      OnClick = N32Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuDenete: TMenuItem
      Caption = #49325#51228
      OnClick = mnuDeneteClick
    end
  end
end
